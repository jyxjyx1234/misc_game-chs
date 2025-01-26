from Lib import *
from SPT_FILE import *

class SPT_cast_file:
    def __init__(self, path) -> None:
        self.path = path
        data = open_file_b(path)
        headlen = 0xa0
        self.unk1len = from_bytes(data[0x68:0x6c])
        self.text_start = from_bytes(data[0x70:0x74]) + headlen
        self.commandsdata = BytesReader(data[0xa0 + self.unk1len: self.text_start])
        self.texts = SPT_Text_Reader(data[self.text_start:])
    
    def read_names_command(self):
        self.commands = []
        start = 0xcf4
        self.commandsdata.p = start
        end = 0x1104
        while self.commandsdata.p < end:
            command = SPT_Command()
            command.op = self.commandsdata.read(1)
            if command.op == b"\x00":
                continue
            if command.op.hex() in opdict:
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
            self.commands.append(command)
    
    def dump_names_dict(self):
        names = {}
        for command in self.commands:
            if command.op.hex() == "0b" and command.datas[0].content == 0xc7:
                name = self.texts.read_text(command.datas[1].content - self.text_start + 0xa0 + self.unk1len)
            if command.op.hex() == "0b" and command.datas[0].content == 0x47:
                names[command.datas[1].content] = name.decode("utf-8")
        save_json("name_idx.json", names)

if __name__ == "__main__":
    spt = SPT_cast_file("cast.spt")
    spt.read_names_command()
    spt.dump_names_dict()