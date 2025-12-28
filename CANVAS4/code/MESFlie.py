from Lib import *
from MESOP import opdict

tempset = set()

class MESFlie:
    def __init__(self, path, encode="932"):
        self.opdict = opdict
        self.path = path
        self.data = BytesReader(open_file_b(path))
        self.magic = self.data.read(0x10)
        self.unk1 = self.data.readU32()
        self.file_size = self.data.readU32()
        self.unk3 = self.data.readU32()
        self.unk4 = self.data.readU32()
        self.ops = []
        self.encode = encode

    def read_op(self):
        res = {}
        op = self.data.readU8()
        res["op"] = op
        res["pos"] = self.data.tell() - 1
        res["data"] = []
        if op not in self.opdict:
            errorlog = [self.path] + self.ops[-3:] + [f"0x{op:02x}: '',"]
            nextcode = []
            for i in range(0x80):
                nextcode.append(hex(self.data.readU8())[2:].zfill(2))
            errorlog.append(" ".join(nextcode))
            save_json("error_op.json", errorlog)
            raise Exception("Unknown operation: 0x{:04x} at position 0x{:08x}".format(op, self.data.tell()-1 - 0x80))
        commands = self.opdict[op]
        for cmd in commands:
            _ = {}
            _["type"] = cmd
            match cmd:
                case "i":
                    _["value"] = self.data.readU32(signed=True)
                case "j":
                    _["value"] = self.data.readU32()
                case "w":
                    _["value"] = self.data.readU16()
                case "c":
                    _["value"] = self.data.readU8()
                case "s":
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                case "t":
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                case "n":
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                case "p":
                    offset = self.data.readU32()
                    o = self.data.tell()
                    self.data.seek(offset)
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                    self.data.seek(o)
                case "l":
                    length = self.data.readU32()
                    _["value"] = []
                    for x in range(length):
                        _["value"].append(self.data.readU32())
                case "L":
                    length = self.data.readU32()
                    _["value"] = []
                    for x in range(length):
                        _["value"].append(self.data.read_utill_zero().decode(self.encode))
            res["data"].append(_)
        self.ops.append(res)

    def parse(self):
        while self.data.tell() < self.data.length:
            self.read_op()

    def check_jump(self):
        poslist = []
        res = set()
        for op in self.ops:
            poslist.append(op['pos'])
        for op in self.ops:
            opcode = op['op']
            for cmd in op['data']:
                if cmd['type'] == 'i':
                    if cmd['value'] in poslist and cmd["value"] > 0x100 and cmd["value"] not in [0x3e8, 0x12c]:
                        res.add(opcode)
        return res
                        
    def to_txt(self, outpath):
        with open(outpath, "w", encoding="utf-8") as f:
            for op in self.ops:
                f.write(f"@{op['pos']:x}||#{op['op']:02x}||")
                for cmd in op['data']:
                    match cmd["type"]:
                        case "c":
                            f.write(f"c::{cmd['value']:x}||")
                        case "i":
                            f.write(f"i::{cmd['value']:x}||")
                        case "j":
                            f.write(f"j::{cmd['value']:x}||")
                        case "w":
                            f.write(f"w::{cmd['value']:x}||")
                        case "s":
                            f.write(f"s::{cmd['value']}||")
                        case "t":
                            f.write(f"t::{cmd['value']}||")
                        case "n":
                            f.write(f"n::{cmd['value']}||")
                        case "p":
                            f.write(f"p::{cmd['value']}||")
                        case "l":
                            f.write(f"l::{len(cmd['value'])}||")
                            for item in cmd['value']:
                                f.write(f"j::{item:x}||")
                        case "L":
                            f.write(f"l::{len(cmd['value'])}||")
                            for item in cmd['value']:
                                f.write(f"t::{item}||")
                f.write("\n")

    def trans(self, textlist, namedict):
        for transdata in textlist:
            if "name_idx" in transdata:
                name_idx = transdata["name_idx"]
                name = transdata["name"]
                name = namedict[name]
                self.ops[name_idx]["data"][0]["value"] = name
            if "text_idx" in transdata:
                text_idx = transdata["text_idx"][0]
                text = transdata["message"]
                self.ops[text_idx]["data"][0]["value"] = text
                for extra in transdata["text_idx"][1:]:
                    self.ops[extra] = ""

    def get_offset_changes(self, encoding):
        pos = 20
        self.offset_dict = {}
        for op in self.ops:
            if op == "":
                continue
            self.offset_dict[op['pos']] = pos
            pos += 1
            for cmd in op['data']:
                match cmd['type']:
                    case "c":
                        pos += 1
                    case "i":
                        pos += 4
                    case "j":
                        pos += 4
                    case "w":
                        pos += 2
                    case "s":
                        if encoding == "936":
                            cmd['value'] = cmd['value'].replace("\u30fb", "·")
                        
                        else:
                            if cmd["value"] == "アクロウム・エチュード　～Ｃａｎｖａｓ４～":
                                pos += len("アクロウム・エチュード　～Ｃａｎｖａｓ４～ Gemini-2.5-pro 机翻by Steins;Gate & jyxjyx1234".replace("\u30fb", "·").encode("936")) + 1
                                continue
                        pos += len(cmd['value'].encode(encoding)) + 1
                    case "t":
                        if encoding == "936":
                            cmd['value'] = cmd['value'].replace("\u30fb", "·")
                        pos += len(cmd['value'].encode(encoding)) + 1
                    case "n":
                        pos += len(cmd['value'].encode(encoding)) + 1
                    case "p":
                        pos += 4
                    case "l":
                        pos += 4 + 4 * len(cmd['value'])
                    case "L":
                        total_len = 4
                        for item in cmd['value']:
                            total_len += len(item.encode(encoding)) + 1
                        pos += total_len

    def update_pos(self):
        for idx, op in enumerate(self.ops):
            if op == "":
                continue
            ori_start_pos = op['pos']
            op['pos'] = self.offset_dict[op['pos']]
            new_start_pos = op['pos']
            for cmd in op['data']:
                if cmd['type'] == 'i':
                    pre_op = self.ops[idx - 1]["op"]
                    if pre_op not in [0x03, 0x04]:
                        tempset.add(pre_op)
                        continue
                    ori = cmd['value']
                    if ori < 0:
                        continue
                    ori_jump_pos = ori_start_pos + ori
                    try:
                        new_jump_pos = self.offset_dict[ori_jump_pos]
                    except:
                        print(f"Warning: cannot find jump position 0x{ori_jump_pos:x} in file {self.path} at op index {idx}")
                        exit()
                    new_jump = new_jump_pos - new_start_pos
                    cmd['value'] = new_jump
                    # cmd['value'] = self.offset_dict[cmd['value']]

    def rebuild(self, outpath, encoding):
        res = []
        res.append(self.magic)
        res.append(to_bytes(self.unk1, 4))
        # Placeholder for file size
        res.append(b"\x00\x00\x00\x00")
        res.append(to_bytes(self.unk3, 4))
        res.append(to_bytes(self.unk4, 4))
        for op in self.ops:
            if op == "":
                continue
            res.append(to_bytes(op['op'], 1))
            for cmd in op['data']:
                match cmd['type']:
                    case "c":
                        res.append(to_bytes(cmd['value'], 1))
                    case "i":
                        res.append(to_bytes(cmd['value'], 4, signed=True))
                    case "j":
                        res.append(to_bytes(cmd['value'], 4))
                    case "w":
                        res.append(to_bytes(cmd['value'], 2))
                    case "s":
                        if encoding == "936":
                            cmd['value'] = cmd['value'].replace("\u30fb", "·")
                        else:
                            if cmd["value"] == "アクロウム・エチュード　～Ｃａｎｖａｓ４～":
                                res.append("アクロウム・エチュード　～Ｃａｎｖａｓ４～ Gemini-2.5-pro 机翻by Steins;Gate & jyxjyx1234".replace("\u30fb", "·").encode("936") + b"\x00")
                                continue
                        res.append(cmd['value'].encode(encoding) + b"\x00")
                    case "t":
                        if encoding == "936":
                            cmd['value'] = cmd['value'].replace("\u30fb", "·")
                        res.append(cmd['value'].encode(encoding) + b"\x00")
                    case "n":
                        res.append(cmd['value'].encode(encoding) + b"\x00")
                    case "l":
                        res.append(to_bytes(len(cmd['value']), 4))
                        for item in cmd['value']:
                            res.append(to_bytes(item, 4))
                    case "L":
                        res.append(to_bytes(len(cmd['value']), 4))
                        for item in cmd['value']:
                            res.append(item.encode(encoding) + b"\x00")
        with open(outpath, "wb") as f:
            for item in res:
                f.write(item)
            size = f.tell()
            f.seek(0x14)
            f.write(to_bytes(size, 4))

        
if __name__ == "__main__":
    outpath = "dump"
    os.makedirs(outpath, exist_ok=True)
    maybejump = set()
    start_file = "_EFFECT.MES".lower()
    start_file = None
    for file in os.listdir("mes"):
        if start_file and file.lower() != start_file:
            continue
        start_file = None
        bgi = MESFlie(os.path.join("mes", file))
        bgi.parse()
        bgi.to_txt(os.path.join(outpath, file + ".txt"))
        jumpops = bgi.check_jump()
        # maybejump = maybejump.union(jumpops)
    # print("Maybe jump ops:", [f"0x{i:04x}" for i in maybejump])




