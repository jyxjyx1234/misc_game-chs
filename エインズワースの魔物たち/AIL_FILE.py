from Lib import *
from HanziReplacer import *

log = open("log.txt", "w", encoding="utf-8")

def split_text(text, line):
    res = []
    linewidth = 25
    if line == 1:
        return [text]
    for i in range(line):
        res.append(text[i * linewidth: i * linewidth + linewidth])
        if res[-1] == "":
            res[-1] = "\u3000"
    res[-1] = res[-1] + text[line * linewidth + linewidth:]
    return res


class AILCommand:
    def __init__(self, data, start):
        self.data = data
        data = BytesReader(data)
        self.type = ""
        self.contents = []
        self.content_offsets = []
        while not data.is_end():
            op = data.read(2)
            if op == b"\x00\x6e":
                self.type += "o"
                self.content_offsets.append(data.p + start)
                self.contents.append(data.readU16())
            elif op == b"\x00\xd7":
                self.type += "o"
                self.content_offsets.append(data.p + start)
                self.contents.append(data.readU16())
            elif op == b"\x00\x01":
                self.type += "m"
                self.content_offsets.append(data.p + start)
                self.contents.append(data.readU16())
            elif op == b"\x00\x00" and "m" in self.type:
                self.type += "m"
                self.type = "n" + self.type[1:]
                self.content_offsets.append(data.p + start)
                self.contents.append(data.readU16())
            elif op == b"\x00\x00" and "m" not in self.type:
                self.type += "o"
                self.content_offsets.append(data.p + start)
                self.contents.append(data.readU16())
            else:
                break

class AILEntry:
    def __init__(self, data):
        self.data = data
        self.entries = []
        data = BytesReader(data)
        while not data.is_end():
            idx = data.readU16()
            offset = data.readU16()
            self.entries.append((idx, offset))
        # print(self.entries)
    
    def read_commands(self, commands_data) -> list[AILCommand]:
        commands = []
        for i in range(len(self.entries)):
            idx, offset = self.entries[i]
            next_offset = self.entries[i + 1][1] if i + 1 < len(self.entries) else len(commands_data)
            command = AILCommand(commands_data[offset:next_offset], offset)
            commands.append(command)
        return commands

class AILFile:
    def __init__(self, filepath):
        self.filename = filepath
        data = open_file_b(filepath)
        self.unk1 = data[:4]
        self.p1_len = from_bytes(data[4:6])
        self.p2_len = from_bytes(data[6:8])
        self.p3_len = from_bytes(data[8:10])
        self.p4_len = from_bytes(data[10:12])
        self.p1 = AILEntry(data[12: 12 + self.p1_len])
        self.p2_data = data[12 + self.p1_len: 12 + self.p1_len + self.p2_len]
        self.p2 = self.p1.read_commands(self.p2_data)
        self.p3 = BytesReader(data[12 + self.p1_len + self.p2_len: 12 + self.p1_len + self.p2_len + self.p3_len])
        self.p4 = data[12 + self.p1_len + self.p2_len + self.p3_len: 12 + self.p1_len + self.p2_len + self.p3_len + self.p4_len]
        m = re.finditer(rb"[\x01-\xff]+\x00", self.p3.data)
        self.all_text_offset = [i.start() for i in m]
        self.not_found_text_offset = self.all_text_offset.copy()

    def read_text_from_offset(self, offset):
        try:
            self.not_found_text_offset.remove(offset)
        except:
            pass
        return self.p3.read_text_from_offset(offset).decode("932")
    
    def dump_text(self) -> OriJsonOutput:
        log.write(f"Dumping {self.filename}\n")
        out = OriJsonOutput()
        def preProcess(text):
            text = re.sub(r"\[[^\[]*?\]", "", text)
            text = re.sub(r"#[0-9]+", "", text)
            text = re.sub(r"\?[A-Za-z]+", "", text)
            return text
        out.preProcess = preProcess
        
        for i in self.p2:
            for t in range(len(i.type)):
                if i.type[t] == "n":
                    out.add_name(self.read_text_from_offset(i.contents[t]))
                    out.dic["name_offset"] = [i.content_offsets[t]]
                elif i.type[t] == "m":
                    out.add_text(self.read_text_from_offset(i.contents[t]))
                    out.dic["message_offsets"] = out.dic.get("message_offsets", []) + [i.content_offsets[t]]
                elif i.type[t] == "o":
                    out.add_text(self.read_text_from_offset(i.contents[t]))
                    out.dic["message_offsets"] = out.dic.get("message_offsets", []) + [i.content_offsets[t]]
                    out.append_dict()
            out.append_dict()
        while self.not_found_text_offset:
            offset = self.not_found_text_offset[0]
            offsetb = to_bytes(offset, 2)
            matches = re.findall(rb"\x00[\x00\x01\xff\x6e]" + re.escape(offsetb), self.p2_data)
            t = self.read_text_from_offset(offset)
            if len(matches) == 1:
                match = re.search(rb"\x00[\x00\x01\xff\x6e]" + re.escape(offsetb), self.p2_data)
                out.add_text(t)
                out.dic["message_offsets"] = [match.start() + 2]
                out.append_dict()
            else:
                log.write(f"Text at {offset:x} not found: {t}\n")
        log.write(f"\n\n")
        return out
    
    def trans(self, transdata, h :HanziReplacer, namedict):
        added = set()
        new_text = []
        offest = len(self.p3.data)
        for i in transdata:
            if "name" in i:
                name_offset = i["name_offset"][0]
                if name_offset not in added:
                    added.add(name_offset)
                    name = i["name"]
                    name = namedict[name]
                    name = h.hanzitihuan(name)
                    name = name.encode("932")
                    new_text.append(name)
                    self.p2_data = self.p2_data[:name_offset] + to_bytes(offest, 2) + self.p2_data[name_offset + 2:]
                    offest += len(name) + 2
            transtext = i["message"]
            transtext = replace_halfwidth_with_fullwidth(transtext)
            transtext = h.hanzitihuan(transtext)
            translines = split_text(transtext, i["line"])
            for l in range(i["line"]):
                text_offset = i["message_offsets"][l]
                text = translines[l]
                text = text.encode("932")
                new_text.append(text)
                self.p2_data = self.p2_data[:text_offset] + to_bytes(offest, 2) + self.p2_data[text_offset + 2:]
                offest += len(text) + 2
        self.p3.data = self.p3.data + b"\x00\x00".join(new_text) + b"\x00\x00"
    
    def save(self, outpath):
        res = []
        res.append(self.unk1)
        res.append(to_bytes(len(self.p1.data), 2))
        res.append(to_bytes(len(self.p2_data), 2))
        res.append(to_bytes(len(self.p3.data), 2))
        res.append(to_bytes(len(self.p4), 2))
        res.append(self.p1.data)
        res.append(self.p2_data)
        res.append(self.p3.data)
        res.append(self.p4)
        res = b"".join(res)
        save_file_b(outpath, res)


if __name__ == "__main__":
    oripath = "sall"
    outpath = "gt_input"
    transpath = "gt_output"
    trans_scr_path = "release\\sall"
    os.makedirs(outpath, exist_ok=True)
    os.makedirs(trans_scr_path, exist_ok=True)
    files = os.listdir(oripath)

    mode = "i"

    if mode == "d":
        namedict = {}
        all_textcount = 0
        for f in files:
            ail = AILFile(os.path.join(oripath, f))
            out = ail.dump_text()
            out.save_json(os.path.join(outpath, f + ".json"))
            namedict.update(out.get_names())
            all_textcount += out.textcount
        # save_json("namedict.json", namedict)
        print(f"Total text count: {all_textcount}")

    elif mode == "i":
        namedict = open_json("namedict.json")
        h = HanziReplacer()
        h.ReadTransAndGetHanzidictFromFolder(transpath, [namedict])
        h.gen_replace("release\\data2.bin", enc = b"ALyCE")
        for f in files:
            ail = AILFile(os.path.join(oripath, f))
            try:
                transdata = open_json(os.path.join(transpath, f + ".json"))
            except:
                continue
            ail.trans(transdata, h, namedict)
            ail.save(os.path.join(trans_scr_path, f))

