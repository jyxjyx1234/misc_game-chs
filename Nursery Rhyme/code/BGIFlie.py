from Lib import *
from BGIOP import opdict

class BGIFlie:
    def __init__(self, path, encode="932"):
        self.opdict = opdict
        self.path = path
        self.data = BytesReader(open_file_b(path))
        self.ops = []
        self.encode = encode
        self.first_text_offset = 999999

    def read_op(self):
        res = {}
        op = self.data.readU16()
        res["op"] = op
        res["pos"] = self.data.tell() - 2
        res["data"] = []
        if op not in self.opdict:
            errorlog = [self.path] + self.ops[-3:] + [f"0x{op:02x}: '',"]
            nextcode = []
            for i in range(0x80):
                nextcode.append(hex(self.data.readU8())[2:].zfill(2))
            errorlog.append(" ".join(nextcode))
            save_json("error_op.json", errorlog)
            raise Exception("Unknown operation: 0x{:04x} at position 0x{:08x}".format(op, self.data.tell()-2 - 0x80))
        commands = self.opdict[op]
        for cmd in commands:
            _ = {}
            _["type"] = cmd
            match cmd:
                case "i":
                    _["value"] = self.data.readU32()
                case "j":
                    _["value"] = self.data.readU32()
                case "w":
                    _["value"] = self.data.readU16()
                case "s":
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                case "t":
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                case "n":
                    _["value"] = self.data.read_utill_zero().decode(self.encode)
                case "p":
                    offset = self.data.readU32()
                    self.first_text_offset = min(self.first_text_offset, offset)
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
        while self.data.tell() < self.first_text_offset and self.data.tell() < self.data.length:
            if self.first_text_offset != 999999 and self.data.try_read(self.first_text_offset - self.data.tell()) == b"\x00" * (self.first_text_offset - self.data.tell()):
                break
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
                f.write(f"@{op['pos']:x}||#{op['op']:04x}||")
                for cmd in op['data']:
                    match cmd["type"]:
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
        for op in self.ops:
            for cmd in op['data']:
                if cmd['type'] == 't':
                    cmd['value'] = textlist.pop(0)
                if cmd['type'] == 'n':
                    cmd['value'] = namedict[cmd['value']]
                if cmd['type'] == 'p':
                    cmd['value'] = textlist.pop(0)
                if cmd['type'] == 'L':
                    for i in range(len(cmd['value'])):
                        cmd['value'][i] = textlist.pop(0)

    def get_offset_changes(self, encoding):
        pos = 0
        self.offset_dict = {}
        for op in self.ops:
            self.offset_dict[op['pos']] = pos
            pos += 2
            for cmd in op['data']:
                match cmd['type']:
                    case "i":
                        pos += 4
                    case "j":
                        pos += 4
                    case "w":
                        pos += 2
                    case "s":
                        pos += len(cmd['value'].encode(encoding)) + 1
                    case "t":
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
        self.first_text_offset = pos

    def update_pos(self):
        for op in self.ops:
            op['pos'] = self.offset_dict[op['pos']]
            for cmd in op['data']:
                if cmd['type'] == 'j':
                    cmd['value'] = self.offset_dict[cmd['value']]

    def rebuild(self, outpath, encoding):
        res = []
        text_list = []
        text_list_offset = self.first_text_offset
        for op in self.ops:
            res.append(to_bytes(op['op'], 2))
            for cmd in op['data']:
                match cmd['type']:
                    case "i":
                        res.append(to_bytes(cmd['value'], 4))
                    case "j":
                        res.append(to_bytes(cmd['value'], 4))
                    case "w":
                        res.append(to_bytes(cmd['value'], 2))
                    case "s":
                        res.append(cmd['value'].encode(encoding) + b"\x00")
                    case "t":
                        res.append(cmd['value'].encode(encoding) + b"\x00")
                    case "n":
                        res.append(cmd['value'].encode(encoding) + b"\x00")
                    case "p":
                        res.append(to_bytes(text_list_offset, 4))
                        text_list.append(cmd['value'].encode(encoding) + b"\x00")
                        text_list_offset += len(cmd['value'].encode(encoding)) + 1
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
            for item in text_list:
                f.write(item)
        
if __name__ == "__main__":
    outpath = "dump"
    os.makedirs(outpath, exist_ok=True)
    maybejump = set()
    for file in os.listdir("scr"):
        bgi = BGIFlie(os.path.join("scr", file))
        bgi.parse()
        bgi.to_txt(os.path.join(outpath, file + ".txt"))
        jumpops = bgi.check_jump()
        # maybejump = maybejump.union(jumpops)
    # print("Maybe jump ops:", [f"0x{i:04x}" for i in maybejump])





