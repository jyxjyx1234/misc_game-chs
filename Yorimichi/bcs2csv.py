from Lib import *
import csv
from HanziReplacer import HanziReplacer

def preprocess(text):
    text = re.sub(r"＜(.*?)＝(.*?)＞", r"\1", text)
    text = text.replace("\n", "")
    return text

class BCS_FILE:
    def __init__(self, path):
        self.data = BytesReader(open_file_b(path))
        self.magic = self.data.read(4)
        self.size1 = self.data.readU32()
        self.entry_count = self.data.readU32()
        self.unk_len = self.data.readU32()
        self.arg_count = self.data.readU32()
        self.size2 = self.data.readU32()

        self.entries = []
        for i in range(self.entry_count):
            self.entries.append(BCS_ENTRY(self.data.readU32(), self.data.readU32()))
        self.args = []
        for i in range(self.arg_count):
            self.args.append(BCS_ARG(self.data.readU32(), self.data.readU32()))
        self.unk = self.data.read(self.unk_len)
        self.texts = BytesReader(self.data.read(self.size2))
        for arg in self.args:
            arg.read_str(self.texts)
        self.gen_lines()
    
    def gen_lines(self):
        out = []
        for entry in self.entries:
            entry_data = []
            for i in range(entry.length):
                entry_data.append(self.args[entry.idx + i].value)
            out.append(entry_data)
        self.lines = out

    def dump(self, out: OriJsonOutput):
        for i, line in enumerate(self.lines):
            if len(line) < 16 or i == 0:
                continue
            if line[1].startswith("$menu_item"):
                cmds = line[1].split(",")
                out.add_text(preprocess(cmds[1]))
                out.dic["pos"] = f"{i} 1 menu"
                out.append_dict()
            if line[8]:
                out.add_name(line[8])
                out.dic["name_pos"] = f"{i} 8 name"
            if line[15]:
                out.add_text(preprocess(line[15]))
                out.dic["pos"] = f"{i} 15 text"
                out.append_dict()

    def trans(self, transdata, namedict, h: HanziReplacer):
        for trans in transdata:
            if "name_pos" in trans:
                l, idx, type = trans["name_pos"].split()
                idx = int(idx)
                l = int(l)
                self.lines[l][idx] = h.hanzitihuan(namedict[self.lines[l][idx]])
            l, idx, type = trans["pos"].split()
            idx = int(idx)
            l = int(l)
            transtext = replace_halfwidth_with_fullwidth(trans["message"])
            transtext = h.hanzitihuan(transtext)
            if type == "menu":
                ori = self.lines[l][idx].split(",")
                ori[1] = transtext
                self.lines[l][idx] = ",".join(ori)
            else:
                self.lines[l][idx] = transtext

    def to_csv(self, path):
        res = []
        for line in self.lines:
            l = []
            for arg in line:
                if '"' in arg:
                    arg = arg.replace('"', '""')
                if "," in arg:
                    arg = "\"" + arg + "\""
                l.append(arg)
            res.append(",".join(l))
        res = "\n".join(res)
        with open(path, "w", encoding="932") as f:
            f.write(res)


class BCS_ENTRY:
    def __init__(self, length, idx):
        self.length = length
        self.idx = idx
    
class BCS_ARG:
    def __init__(self, op, offset):
        if op == 3:
            self.type = "str"
            self.value = offset
        elif op == 1:
            self.type = "int"
            self.value = str(offset)
        elif op == 0x416100:
            self.type = "null"
            self.value = ""
        else:
            print("Unknown op: %s" % hex(op))
            self.type = "unknown"
            self.value = "unknown"
    
    def read_str(self, data:BytesReader):
        if self.type == "str":
            data.seek(self.value)
            self.value = data.read_utill_zero().decode("932")
            

if __name__ == "__main__":
    os.makedirs("scr_csv", exist_ok=True)
    for file in os.listdir("scr_dec"):
        bcs = BCS_FILE("scr_dec/" + file)
        bcs.to_csv("scr_csv/" + file.replace(".bcs", ".csv"))