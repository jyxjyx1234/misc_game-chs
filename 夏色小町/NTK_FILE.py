from Lib import *
# from dec import *

class NTKFile:
    def __init__(self, path):
        self.path = path
        self.data = BytesReader(open_file_b(path))
        self.magic = self.data.read(4)
        self.size = self.data.readU32()
        self.havecTEX = False
        self.havecFNM = False
        self.havecCOD = False
        while not self.data.is_end():
            name = self.data.read(4).decode()
            if name == "cTEX":
                self.havecTEX = True
                self.process_cTEX()
            elif name == "cFNM":
                self.havecFNM = True
                self.process_cFNM()
            elif name == "cCOD":
                self.havecCOD = True
                self.process_cCOD()
    
    def process_cTEX(self):
        self.cTEX_length = self.data.readU32()
        self.cTEX_headlen = self.data.readU32()
        if self.cTEX_headlen != 0x10:
            raise ValueError("cTEX head length is not 0x10")
        self.cTEX_key = self.data.readU32()
        self.cTEX_content = self.data.read(self.cTEX_length - self.cTEX_headlen)
    
    def process_cFNM(self):
        self.cFNM_length = self.data.readU32()
        self.cFNM_headlen = self.data.readU32()
        if self.cFNM_headlen != 0x10:
            raise ValueError("cFNM head length is not 0x10")
        self.cFNM_key = self.data.readU32()
        self.cFNM_content = self.data.read(self.cFNM_length - self.cFNM_headlen)

    def process_cCOD(self):
        self.cCOD_length = self.data.readU32()
        self.cCOD_headlen = self.data.readU32()
        if self.cCOD_headlen != 0x1c:
            raise ValueError("cCOD head length is not 0x10")
        self.cCOD_part1_len = self.data.readU32() - self.cCOD_headlen
        self.cCOD_key = self.data.readU32()
        self.cCOD_unk = self.data.readU32()
        self.cCOD_part2_count = self.data.readU32()
        self.cCODp1 = BytesReader(self.data.read(self.cCOD_part1_len))
        if self.cCOD_part2_count * 4 + self.cCOD_part1_len + self.cCOD_headlen != self.cCOD_length:
            raise ValueError(f"cCOD does not match length: {self.path}")
        self.cCOD_part2 = []
        for i in range(self.cCOD_part2_count):
            self.cCOD_part2.append(self.data.readU32())
        self.commands = []
        while not self.cCODp1.is_end():
            res = {}
            res["pos"] = self.cCODp1.tell()
            res["op"] = self.cCODp1.readU16()
            res["len"] = self.cCODp1.readU16()
            if res["len"]%4:
                raise ValueError("cCOD command length is not a multiple of 4")
            res[f"args"] = []
            for j in range(res["len"]//4 - 1):
                res[f"args"].append(self.cCODp1.readU32())
            self.commands.append(res)

    def read_string_from_cTEX(self, offset, encoding='932'):
        # if self.cTEX_content[offset - 1] != 0:
        #     print(self.path, hex(offset), self.cTEX_content[offset - 1])
            # raise Warning("cTEX offset does not start with null byte")
        end = offset
        while self.cTEX_content[end:end+2] != b"\x00\x00":
            end += 1
        res = self.cTEX_content[offset:end]
        # res = res.replace(b"\x00", "[00]".encode(encoding))
        res = res.replace(b"\x00", "".encode(encoding))
        res = res.replace(b"\xff\x31", "友也".encode(encoding))
        res = res.replace(b"\xff\x30", "中田".encode(encoding))
        return res.decode(encoding)
    
    def read_string_from_cFNM(self, offset, encoding='932'):
        if self.cFNM_content[offset - 1] != 0:
            raise ValueError("cFNM offset does not start with null byte")
        end = offset
        while self.cFNM_content[end] != 0:
            end += 1
        return self.cFNM_content[offset:end].decode(encoding)

    def dump2txt(self, outpath, encoding='932'):
        with open(outpath, 'w', encoding='utf-8') as f:
            for cmd in self.commands:
                if cmd["pos"] in self.cCOD_part2:
                    f.write(f"[flag]\n")
                f.write(f"@{cmd['pos']:08x}|#{cmd['op']:02x}|")
                for i, arg in enumerate(cmd["args"]):
                    if arg == -1:
                        f.write(f"int({arg})|")
                    elif cmd["op"] in [0x3b]:
                        f.write(f"str2({self.read_string_from_cFNM(arg, encoding)})|")
                    elif cmd["op"] in [0x03] and i == 1:
                        f.write(f"str2({self.read_string_from_cFNM(arg, encoding)})|")
                    elif cmd["op"] in [0x05, 0x06] and i == 0:
                        f.write(f"str2({self.read_string_from_cFNM(arg, encoding)})|")
                    elif cmd["op"] in [0x01] and i == 1:
                        f.write(f"str1({self.read_string_from_cTEX(arg, encoding)})|")
                    elif cmd["op"] in [0x02] and i in [1, 2]:
                        f.write(f"str1({self.read_string_from_cTEX(arg, encoding)})|")
                    elif cmd["op"] in [0x09] and i in [2, 4, 6]:
                        f.write(f"str1({self.read_string_from_cTEX(arg, encoding)})|")
                    elif cmd["op"] in [0x02] and i in [3]:
                        f.write(f"str2({self.read_string_from_cFNM(arg, encoding)})|")
                    elif cmd["op"] in [0x2f] and i in [0]:
                        f.write(f"str1({self.read_string_from_cTEX(arg, encoding)})|")
                    elif cmd["op"] in [0x0a] and i in [0]:
                        if arg < 0:
                            truearg = (arg + 0x1000000)
                            f.write(f"str2({self.read_string_from_cFNM(arg+0x1000000, encoding)})|")
                        else:
                            f.write(f"int({arg})|")
                    else:
                        f.write(f"int({arg})|")
                f.write("\n")
    
    def dump2json(self):
        out = OriJsonOutput()
        for cmd in self.commands:
            pos = cmd["pos"]
            op = cmd["op"]
            for i, arg in enumerate(cmd["args"]):
                if arg == -1:
                    continue
                if cmd["op"] in [0x01] and i in [1]:
                    out.add_text(self.read_string_from_cTEX(arg))
                    out.dic["pos"] = pos + i * 4 + 4
                    out.append_dict()
                elif cmd["op"] in [0x02] and i in [1]:
                    out.add_name(self.read_string_from_cTEX(arg))
                    out.dic["npos"] = pos + i * 4 + 4
                elif cmd["op"] in [0x02] and i in [2]:
                    out.add_text("「" + self.read_string_from_cTEX(arg))
                    out.dic["pos"] = pos + i * 4 + 4
                    out.append_dict()
                elif cmd["op"] in [0x09] and i in [2, 4, 6]:
                    out.add_text(self.read_string_from_cTEX(arg))
                    out.dic["pos"] = pos + i * 4 + 4
                    out.append_dict()
                elif cmd["op"] in [0x2f] and i in [0]:
                    out.add_text(self.read_string_from_cTEX(arg))
                    out.dic["pos"] = pos + i * 4 + 4
                    out.dic["sp"] = True
                    out.append_dict()
        return out
    
    @staticmethod
    def preprocess_text(text, encoding):
        textb = b""
        if text.startswith("ｇｂｋ"):
            encoding = '936'
            text = text[3:]
            text = text.replace("・", "·")
        for char in text:
            b = char.encode(encoding)
            if len(b) == 1:
                textb += b"\x00" + b
            else:
                textb += b
        textb += b"\x00\x00"
        return textb
    
    def trans(self, transdata, namedict, encoding='936'):
        transbuffer = {}
        for data in transdata:
            if "name" in data:
                name = namedict[data["name"]]
                nameb = self.preprocess_text(name, encoding)
                nameoffset = data["npos"]
                self.cCODp1.seek(nameoffset)
                if nameb in transbuffer:
                    self.cCODp1.write(to_bytes(transbuffer[nameb], 4))
                else:
                    self.cCODp1.write(to_bytes(len(self.cTEX_content), 4))
                    transbuffer[nameb] = len(self.cTEX_content)
                    self.cTEX_content += nameb
            message = data["message"]
            message = replace_halfwidth_with_fullwidth(message)
            if encoding == "932":
                message = message.replace("......", "……").replace(".....", "……").replace("....", "……").replace("...", "…").replace("..", "…").replace(".", "。")
            else:
                message = replace_symbol_for_gbk(message)
            if "name" in data and message.startswith("「"):
                message = message[1:]
            messageb = self.preprocess_text(message, encoding)
            messageoffset = data["pos"]
            self.cCODp1.seek(messageoffset)
            if messageb in transbuffer:
                self.cCODp1.write(to_bytes(transbuffer[messageb], 4))
            else:
                self.cCODp1.write(to_bytes(len(self.cTEX_content), 4))
                transbuffer[messageb] = len(self.cTEX_content)
                self.cTEX_content += messageb
        if not len(self.cTEX_content) % 4 == 0:
            self.cTEX_content += b"\x00\x00"
    
    def save(self, outpath):
        res = []
        res.append(self.magic)
        res.append(to_bytes(self.size, 4))
        newsize = 8
        if self.havecTEX:
            res.append(b"cTEX")
            self.cTEX_length = len(self.cTEX_content) + self.cTEX_headlen
            newsize += self.cTEX_length
            res.append(to_bytes(self.cTEX_length, 4))
            res.append(to_bytes(self.cTEX_headlen, 4))
            res.append(to_bytes(self.cTEX_key, 4))
            res.append(self.cTEX_content)
        if self.havecFNM:
            res.append(b"cFNM")
            self.cFNM_length = len(self.cFNM_content) + self.cFNM_headlen
            newsize += self.cFNM_length
            res.append(to_bytes(self.cFNM_length, 4))
            res.append(to_bytes(self.cFNM_headlen, 4))
            res.append(to_bytes(self.cFNM_key, 4))
            res.append(self.cFNM_content)
        if self.havecCOD:
            res.append(b"cCOD")
            self.cCOD_part2_count = len(self.cCOD_part2)
            self.cCOD_part1_len = len(self.cCODp1.getvalue())
            self.cCOD_length = self.cCOD_part1_len + self.cCOD_headlen + self.cCOD_part2_count * 4
            newsize += self.cCOD_length
            res.append(to_bytes(self.cCOD_length, 4))
            res.append(to_bytes(self.cCOD_headlen, 4))
            res.append(to_bytes(self.cCOD_part1_len + self.cCOD_headlen, 4))
            res.append(to_bytes(self.cCOD_key, 4))
            res.append(to_bytes(self.cCOD_unk, 4))
            res.append(to_bytes(self.cCOD_part2_count, 4))
            res.append(self.cCODp1.getvalue())
            for part2 in self.cCOD_part2:
                res.append(to_bytes(part2, 4))
        res[1] = to_bytes(newsize, 4)
        with open(outpath, 'wb') as f:
            for item in res:
                f.write(item)

if __name__ == "__main__":
    oriPath = "script_d"
    outPath = "script_txt"
    outPath2 = "gt_input"
    os.makedirs(outPath, exist_ok=True)
    os.makedirs(outPath2, exist_ok=True)
    info = StatusInfo()
    for file in os.listdir(oriPath):
        ntk_file = NTKFile(os.path.join(oriPath, file))
        ntk_file.dump2txt(os.path.join(outPath, f"{file}.txt"), encoding='936')
        json_output = ntk_file.dump2json()
        json_output.save_json(os.path.join(outPath2, f"{file}.json"))
        info.update(json_output)
    info.output(0)

