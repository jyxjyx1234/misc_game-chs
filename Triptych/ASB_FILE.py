from Lib import *
from HanziReplacer import *
from opdict import opdict

class ASB_ARG:
    def __init__(self, type, data):
        self.type = type
        self.data = data
    
    def __len__(self):
        if self.type == "i" or self.type == "j":
            return 4
        elif self.type == "s" or self.type == "t" or self.type == "n" or self.type == "x":
            return len(self.data.encode("932")) + 1
        elif self.type == "b":
            return 1
        elif self.type == "o":
            return sum([len(x.encode("932")) + 1 for x in self.data])
        elif self.type == "noname":
            return 0
        else:
            raise Exception(f"Unknown type: {self.type}")
    
    def to_bytes(self, offsetdict:dict):
        if self.type == "i":
            return self.data.to_bytes(4, "little")
        elif self.type == "j":
            # print(hex(self.data))
            # print(hex(offsetdict[self.data]))
            return offsetdict[self.data].to_bytes(4, "little")
        elif self.type == "s" or self.type == "t" or self.type == "n" or self.type == "x":
            return self.data.encode("932") + b"\x00"
        elif self.type == "b":
            return self.data.to_bytes(1, "little")
        elif self.type == "o":
            res = b""
            for i in self.data:
                res += i.encode("932") + b"\x00"
            return res
        elif self.type == "noname":
            return b""
        else:
            raise Exception(f"Unknown type: {self.type}")

class ASB_COMMAND:
    def __init__(self, data, offset, op):
        self.op = op
        self.data = data
        self.offset = offset
        self.length = len(data)
        self.split_command()

    def split_command(self):
        self.contents :list[ASB_ARG]= []
        data = BytesReader(self.data)
        if hex(self.op)[2:].zfill(2) not in opdict:
            raise Exception(f"Unknown op: {hex(self.op)}")
        opstr = opdict[hex(self.op)[2:].zfill(2)]
        for arg in opstr:
            if arg == "?":
                if not data.is_end():
                    self.contents.append(ASB_ARG("s", data.read_utill_zero().decode("932")))
            elif arg == "I":
                if not data.is_end():
                    self.contents.append(ASB_ARG("i", data.readU32()))
            elif arg == "n":
                if not data.is_end():
                    self.contents.append(ASB_ARG("n", data.read_utill_zero().decode("932")))
                else:
                    self.contents.append(ASB_ARG("noname", ""))
            elif data.is_end():
                raise Exception(f"Command too short: {hex(self.op)}")
            
            if arg == "i":
                self.contents.append(ASB_ARG("i", data.readU32()))
            elif arg == "j":
                self.contents.append(ASB_ARG("j", data.readU32()))
            elif arg == "s":
                self.contents.append(ASB_ARG("s", data.read_utill_zero().decode("932")))
            elif arg == "t":
                self.contents.append(ASB_ARG("t", data.read_utill_zero().decode("932")))
            elif arg == "x":
                self.contents.append(ASB_ARG("x", data.read_utill_zero().decode("932")))
            elif arg == "b":
                self.contents.append(ASB_ARG("b", data.readU8()))
            elif arg == "o":
                opt = data.read(data.length - data.tell())
                opt = opt[:-1]
                opt = opt.split(b"\x00")
                opt = [x.decode("932") for x in opt]
                self.contents.append(ASB_ARG("o", opt))
        if not data.is_end():
            raise Exception(f"Command too long: {hex(self.op)}")
    
    def get_text(self):
        res = []
        for content in self.contents:
            if content.type == "i":
                res.append(f"u32({content.data:X})")
            elif content.type == "j":
                res.append(f"u32j({content.data:X})")
            elif content.type == "s":
                res.append(f"str({content.data})")
            elif content.type == "t" or content.type == "x":
                res.append(f"strt({content.data})")
            elif content.type == "n":
                res.append(f"strn({content.data})")
            elif content.type == "b":
                res.append(f"b({content.data[0]:X})")
            elif content.type == "o":
                for i in content.data:
                    res.append(f"strt({i})")
        res = "|".join(res)
        return f"@{self.offset:X}|#{self.op:02X}|{res}"
    
    def __len__(self):
        l = 8
        for content in self.contents:
            l += len(content)
        return l
    
    def to_bytes(self, offsetdict:dict):
        res = b""
        res += self.op.to_bytes(4, "little")
        res += len(self).to_bytes(4, "little") if self.op else b"\xff\xff\xff\xff"
        for content in self.contents:
            res += content.to_bytes(offsetdict)
        return res

class ASB_FILE:
    def __init__(self, path):
        self.path = path
        self.data = BytesReader(open_file_b(path))
        self.commands : list[ASB_COMMAND] = []
        while not self.data.is_end():
            command = self.read_command()
            self.commands.append(command)
        
    def read_command(self):
        offset = self.data.tell()
        op = self.data.readU32()
        length = self.data.readU32()
        return ASB_COMMAND(self.data.read(length - 8), offset, op)
    
    def dump(self, path):
        with open(path, "w", encoding="utf-8") as f:
            for command in self.commands:
                f.write(command.get_text() + "\n")
    
    def dump_text(self, output: OriJsonOutput):
        for command in self.commands:
            for arg in command.contents:
                if arg.type == "t" or arg.type == "x":
                    output.add_text(arg.data)
                    output.append_dict(remove_name=False)
                if arg.type == "n":
                    output.add_name(arg.data)
                if arg.type == "noname":
                    output.remove_name()
                if arg.type == "o":
                    for i in arg.data:
                        output.add_text(i)
                        output.append_dict(remove_name=False)

    def trans(self, namedict:dict, transdata:list[dict], h: HanziReplacer):
        for command in self.commands:
            for arg in command.contents:
                if arg.type == "n":
                    arg.data = h.hanzitihuan(namedict[arg.data])
                if arg.type == "t":
                    trans = transdata.pop(0)["message"]
                    trans = h.hanzitihuan(trans)
                    arg.data = trans
                if arg.type == "x":
                    trans = transdata.pop(0)["message"]
                if arg.type == "o":
                    for i in range(len(arg.data)):
                        trans = transdata.pop(0)["message"]
                        trans = h.hanzitihuan(trans)
                        arg.data[i] = trans
    
    def preCompile(self):
        self.offsetdict = {}
        offset = 0
        for command in self.commands:
            self.offsetdict[command.offset] = offset
            offset += len(command)
        # save_json(f"temp\\{os.path.basename(self.path)}.json", self.offsetdict)
    
    def compile(self, path, enc = None):
        self.preCompile()
        res = []
        for command in self.commands:
            res.append(command.to_bytes(self.offsetdict))
        res = b"".join(res)
        save_file_b(path, res, enc = enc)

if __name__ == "__main__":
    enc = b"Triptych"
    mode = "t"
    oriPath = "script\\"
    if mode == "d":
        outPath = "gt_input\\"
        txt_outPath = "script_txt\\"
        os.makedirs(txt_outPath, exist_ok=True)
        os.makedirs(outPath, exist_ok=True)
        files = os.listdir(oriPath)
        namedict = {}
        textcount = 0
        for file in files:
            asb = ASB_FILE(oriPath + file)
            out = OriJsonOutput()
            asb.dump("script_txt\\" + file + ".txt")
            asb.dump_text(out)
            out.save_json(outPath + file + ".json")
            namedict.update(out.get_names())
            textcount += out.textcount
        # save_json("namedict.json", namedict)
        print(f"Total text count: {textcount}")
    elif mode == "t":
        transPath = "gt_output\\"
        outPath = "release\\patch\\"
        os.makedirs(outPath, exist_ok=True)
        namedict = open_json("namedict.json")
        h = HanziReplacer()
        h.ReadTransAndGetHanzidictFromFolder(transPath, [namedict])
        h.gen_replace("release\\data1.bin", enc)
        files = os.listdir(oriPath)
        for file in files:
            print(file)
            try:
                transdata = open_json(transPath + file + ".json")
            except:
                continue
            asb = ASB_FILE(oriPath + file)
            asb.trans(namedict, transdata, h)
            asb.compile(outPath + file, enc)#
