from Lib import *
from SPT_OP import opdict
import os

funcnames = set()

class SPT_Command:
    def __init__(self):
        self.op = None
        self.datas = []

class SPT_Command_data:
    def __init__(self):
        self.type = None
        self.content = None

class SPT_Text_Reader(BytesReader):
    def read_text(self, offset):
        text = b""
        self.p = offset
        while True:
            char = self.read(1)
            if char == b"\x00":
                break
            text += char
        return text

class SPT_FILE:
    def __init__(self, path) -> None:
        self.path = path
        data = open_file_b(path)
        headlen = 0xa0
        self.unk1len = from_bytes(data[0x68:0x6c])
        self.text_start = from_bytes(data[0x70:0x74]) + headlen
        self.commandsdata = BytesReader(data[0xa0 + self.unk1len: self.text_start])
        self.texts = SPT_Text_Reader(data[self.text_start:])
        self.split_command()

    def split_command(self):
        self.commands = []
        while not self.commandsdata.is_end():
            command = SPT_Command()
            command.op = self.commandsdata.read(1)
            if command.op == b"\x00":
                continue
            if command.op.hex() in opdict:
                # print(command.op.hex(), end=" ")
                for i in opdict[command.op.hex()]:
                    data = SPT_Command_data()
                    data.type = i
                    if i == "b":
                        data.content = self.commandsdata.readU8()
                        # print(data.content, end=" ")
                    elif i == "i":
                        data.content = self.commandsdata.readU32()
                        # print(data.content, end=" ")
                    command.datas.append(data)
            else:
                print(f"{self.path}: Unknown op {command.op.hex()} at {self.commandsdata.p + 0xa0 + self.unk1len - 1:x}: {self.commandsdata.data[self.commandsdata.p - 1:self.commandsdata.p + 10].hex()}")
                exit()
            # print()
            self.commands.append(command)
    
    def dump_text(self, outpath):
        out = OriJsonOutput()
        namebuffer = ""
        name_idx = open_json("name_idx.json")
        for command in self.commands:
            if command.op == b"\xa7" and command.datas[0].content in [0x1e, 0x1f]:
                name = out.dic["message"]
                out.dic = {}
                out.dic["name"] = name
            if command.op == b"\xf8":
                funcname = self.texts.read_text(command.datas[1].content - self.text_start + 0xa0 + self.unk1len).decode("utf-8")
                if funcname.startswith("SetVoice"):
                    out.dic["name"] = namebuffer
                # else:
                #     if funcname not in funcnames:
                #         print(funcname)
                #         funcnames.add(funcname)
                
            if command.op == b"\x13":
                idx = command.datas[0].content
                namebuffer = name_idx.get(str(idx), "")
            if command.op == b"\x0b":
                if command.datas[0].content == 0xc7:
                    offset = command.datas[1].content
                    text = self.texts.read_text(offset - self.text_start + 0xa0 + self.unk1len)
                    try:
                        out.add_text(text.decode("utf-8"), isappend=False)
                    except:
                        print(f"{self.path}: Error at {offset:x}")
                        exit()
                if command.datas[0].content == 0x47:
                    out.append_dict()
        out.save_json(outpath)
        return out.textcount, out.get_names()
                    
def get_all_files(directory):
        file_list = []
        for root, dirs, files in os.walk(directory):
            for file in files:
                file_list.append(os.path.join(root, file))
        return file_list



if __name__ == "__main__":
    scrPath = "script"
    outPath = "gt_input"
    all_files = get_all_files(scrPath)
    namedict = {}
    all_text_counts = 0
    for file in all_files:
        f = SPT_FILE(file)
        os.makedirs(os.path.join(outPath, os.path.dirname(file)), exist_ok=True)
        count, name = f.dump_text(os.path.join(outPath, file.replace(".spt", ".json")))
        all_text_counts += count
        namedict.update(name)
    save_json("namedict.json", namedict)
    print(f"Total text count: {all_text_counts}")