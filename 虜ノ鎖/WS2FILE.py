from Lib import *
import struct

class WS2FileDumper:
    def __init__(self, data):
        self.methodsDict = {
            "c": self.read_c,
            "w": self.read_w,
            "f": self.read_i,
            "i": self.read_i,
            "I": self.read_i,
            "7": self.read_7,
            "T": self.read_T,
            "t": self.read_t,
            "O": self.read_O,
        }
        self.data = BytesReader(data)
        self.oplist = open_json("oplist.json")

    def read_c(self):
        return self.data.readU8()
    def read_w(self):
        return self.data.readU16()
    def read_f(self):
        data = self.data.read(4)
        if len(data) < 4:
            raise ValueError(f"Invalid float data: {data}")
        # data = data.hex()
        # return data
        return struct.unpack('<f', data)[0]
    def read_i(self):
        return self.data.readU32()
    def read_7(self, method):
        length = self.data.readU8()
        res = []
        for _ in range(length):
            res.append(method())
        return res
    def read_t(self):
        return self.data.read_utill_zero().decode("932")
    def read_T(self):
        return self.data.read_utill_zero().decode("932")
    def read_O(self):
        length = self.data.readU8()
        return length

    def read_OP(self):
        res = f"@{self.data.tell()}|"
        op = self.data.readU8()
        res += f"#{op:02X}|"
        op = f"{op:02X}".lower()
        if op not in self.oplist:
            print(f"Unknown opcode {op} at {self.data.tell():08X}")
            # method_name = ""
            raise RuntimeError
        else:
            method_name = self.oplist[op]
        i = 0
        while i < len(method_name):
            m = method_name[i]
            i += 1
            if m != "7" and m != "O":
                method = self.methodsDict[m]
                res += f"{m}::{method()}|"
            elif m == "O":
                length = self.read_O()
                res += f"c::{length}|"
                method_name = method_name[:i] + "wTcwct" * length + method_name[i:]
            else:
                m = method_name[i]
                i += 1
                method = self.methodsDict[m]
                lists = self.read_7(method)
                res += f"list::{len(lists)}|"
                for content in lists:
                    res += f"{m}::{content}|"
                
        return res

    def dump(self, output_file):
        with open(output_file, "w", encoding="utf-8") as f:
            while not self.data.is_end():
                f.write(self.read_OP() + "\n")

class WS2FileCompiler:
    def __init__(self, path, encoding):
        self.path = path
        self.encoding = encoding
        with open(path, "r", encoding="utf-8") as f:
            self.lines = f.readlines()
        self.commands = []
        for line in self.lines:
            if line.startswith("//"):
                continue
            line_content = {}
            line = line.strip()
            if line == "":
                continue
            contents = line.split("|")[:-1]
            line_content["ori_offset"] = int(contents[0][1:])
            line_content["op"] = contents[1][1:]
            contents = contents[2:]
            args = []
            for c in contents:
                arg = {}
                t, v = c.split("::")
                arg["type"] = t
                arg["value"] = v
                args.append(arg)
            line_content["args"] = args
            self.commands.append(line_content)
    
    def preCompile(self):
        # 计算新的offset
        self.offsetdict = {}
        offset = 0
        for c in self.commands:
            ori_offset = c["ori_offset"]
            new_offset = offset
            self.offsetdict[ori_offset] = new_offset
            offset += 1
            for arg in c["args"]:
                match arg["type"]:
                    case "list":
                        offset += 1
                    case "O":
                        offset += 1
                    case "c":
                        offset += 1
                    case "w":
                        offset += 2
                    case "f":
                        offset += 4
                    case "i":
                        offset += 4
                    case "I":
                        offset += 4
                    case "t":
                        v = arg["value"]
                        if self.encoding == "936":
                            v = replace_symbol_for_gbk(v)
                        offset += len(v.encode(self.encoding)) + 1
                    case "T":
                        v = arg["value"]
                        if self.encoding == "936":
                            v = replace_symbol_for_gbk(v)
                        offset += len(v.encode(self.encoding)) + 1
                    case _:
                        raise ValueError(f"Unknown type {arg['type']} in command {c}")
    
    def compile(self, outpath):
        with open(outpath, "wb") as f:
            for c in self.commands:
                f.write(bytes.fromhex(c["op"]))
                for arg in c["args"]:
                    match arg["type"]:
                        case "c":
                            f.write(to_bytes(int(arg["value"]), 1))
                        case "w":
                            f.write(to_bytes(int(arg["value"]), 2))
                        case "f":
                            f.write(to_bytes(int(arg["value"]), 4))
                        case "i":
                            f.write(to_bytes(int(arg["value"]), 4))
                        case "I":
                            new_value = self.offsetdict[int(arg["value"])]
                            f.write(to_bytes(new_value, 4))
                        case "t" | "T":
                            v = arg["value"]
                            if self.encoding == "936":
                                v = replace_symbol_for_gbk(v)
                            f.write(v.encode(self.encoding) + b'\x00')
                        case "O":
                            f.write(to_bytes(int(arg["value"]), 1))
                        case "list":
                            f.write(to_bytes(int(arg["value"]), 1))
                        case _:
                            raise ValueError(f"Unknown type {arg['type']} in command {c}")
