from Lib import *
from TBLSTR_ARC import *
from HanziReplacer import *


class SCR_COMMAND:
    def __init__(self, offset, data):
        self.data = data
        self.offset = offset


class SCR_FILE:
    def __init__(self, data):
        self.data = BytesReader(data)
        self.read_command()

    def read_command(self):
        command = []
        while not self.data.is_end():
            cmd = self.data.read(4)
            if cmd == b"\x13\x0C\x00\x00":
                command.append(SCR_COMMAND(self.data.tell(), self.data.readU32()))
                command.append(SCR_COMMAND(self.data.tell(), self.data.readU32()))
            elif re.match(rb"\x0A\x08[\x01-\x04]\x00", cmd):
                command.append(SCR_COMMAND(self.data.tell(), self.data.readU32()))
        self.commands = command
    
    def dump_text(self, arc:TBLSTR_ARC, out: OriJsonOutput):
        for command in self.commands:
            if command.data == 0xffffffff:
                continue
            string = arc.string_bank[command.data]
            offset = command.offset
            text = string.data.split(b"\x00")[0]
            text = dec(text, 0xff)
            text = text.decode("932")
            text = text.replace("\n", "")
            type = string.unk
            match type:
                case 0:
                    out.add_text(text)
                    out.dic["msg_offset"] = offset
                    out.dic["msg_type"] = type
                    out.append_dict()
                case 2:
                    out.add_name(text)
                    out.dic["name_offset"] = offset
                case 3:
                    out.add_text(text)
                    out.dic["msg_offset"] = offset
                    out.dic["msg_type"] = type
                    out.append_dict()
    
    def trans(self, arc:TBLSTR_ARC, transdata, namedict, h: HanziReplacer):
        msg_offset = transdata["msg_offset"]
        msg = transdata["message"]
        msg = replace_halfwidth_with_fullwidth(msg)
        msg = h.hanzitihuan(msg)
        msg_type = transdata["msg_type"]
        new_offset = arc.append_trans(msg, msg_type)
        self.data.seek(msg_offset)
        self.data.write(to_bytes(new_offset, 4))
        if "name" in transdata:
            name = transdata["name"]
            name_offset = transdata["name_offset"]
            name = namedict[name]
            name = h.hanzitihuan(name)
            new_offset = arc.append_trans(name, 2)
            self.data.seek(name_offset)
            self.data.write(to_bytes(new_offset, 4))

    def save(self, path):
        save_file_b(path, self.data.getvalue())
            

if __name__ == "__main__":
    arc = TBLSTR_ARC()
    arc.read_from_path("TBLSTR.arc")
    files = os.listdir("scr")
    namedict = {}
    alltextcount = 0
    for file in files:
        data = open_file_b(f"scr/{file}")
        scr = SCR_FILE(data)
        out = OriJsonOutput()
        scr.dump_text(arc, out)
        out.save_json("gt_input\\" + file + ".json")
        namedict.update(out.get_names())
        alltextcount += out.textcount
    # save_json("namedict.json", namedict)
    print(alltextcount)