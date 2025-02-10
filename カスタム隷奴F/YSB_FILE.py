from Lib import *

class YSB_FILE:
    def __init__(self, path):
        data = BytesReader(open_file_b(path))
        self.magic = data.read(4)
        self.unk1 = data.read(4)
        self.offset1 = data.readU32()
        self.offset2 = data.readU32()
        self.offset3 = data.readU32()
        self.offset4 = data.readU32()
        self.data = BytesReader(data.getvalue()[self.offset1:])
        self.commandsData = BytesReader(data.getvalue()[self.offset1:self.offset2])
        self.appends = []
        self.appends_offset = self.data.length
        self.appends_dict = {}
    
    def dump_texts(self, output_path):
        out = OriJsonOutput()
        self.commandsData.seek(0)
        res = []
        namelist = open_json("namelist.json")
        while not self.commandsData.is_end():
            op = self.commandsData.readU32()
            if op == 0x080000:
                command_offset = self.commandsData.tell() + self.offset1
                offset = self.commandsData.readU32()
                text = self.data.read_text_from_offset(offset).decode("932")
                if text == "":
                    continue
                elif text.endswith(".ysc"):
                    continue
                elif text in namelist:
                    out.add_name(text)
                    out.dic["name_offset"] = command_offset
                else:
                    out.add_text(text)
                    out.dic["text_offset"] = command_offset
                    out.append_dict()
                # elif text.startswith("「"):
                #     out.add_name(out.dic["message"])
                #     out.dic["name_offset"] = out.dic["text_offset"]
                #     out.dic["message"] = ""
                #     out.add_text(text)
                #     out.dic["text_offset"] = command_offset
                #     out.append_dict()
                # else:
                #     out.append_dict()
                #     out.add_text(text)
                #     out.dic["text_offset"] = command_offset
        # save_json("namedict.json", out.get_names())
        out.save_json(output_path, 30)
        print(f"text counts: {out.textcount}")

    def append_trans(self, command_offset, text):
        self.data.seek(command_offset - self.offset1)
        text = text.encode("932")
        text += b"\x00"
        while len(text) % 4 != 0:
            text += b"\x00"
        if text in self.appends_dict:
            self.data.write(to_bytes(self.appends_dict[text], 4))
        else:
            self.appends.append(text)
            self.appends_dict[text] = self.appends_offset
            self.data.write(to_bytes(self.appends_offset, 4))
            self.appends_offset += len(text)
    
    def save(self, output_path):
        with open(output_path, "wb") as f:
            f.write(self.magic)
            f.write(self.unk1)
            f.write(to_bytes(self.offset1, 4))
            f.write(to_bytes(self.offset2, 4))
            f.write(to_bytes(self.offset3, 4))
            f.write(to_bytes(self.offset4, 4))
            f.write(self.data.getvalue())
            for i in self.appends:
                f.write(i)

if __name__ == "__main__":
    ysb = YSB_FILE("script.ysb")
    ysb.dump_texts("gt_input\\script")
