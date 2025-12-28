from Lib import *
from SCR_OP import SCR_OP, OBJECT_INFO

class SCR_COMPILER:
    def __init__(self, encoding="932"):
        self.encoding = encoding

    def read_fromtxt(self, filepath):
        self.path = filepath
        self.data = open(self.path, "r", encoding="utf-8").readlines()
        self.contents = []
        self.funclist = {}
        self.funclist_len = 0
        for line in self.data:
            if line.strip() == "":
                continue
            self.contents.append(self.read_line(line))
    
    def read_fromjson(self, filepath):
        self.contents = []
        self.funclist = {}
        self.funclist_len = 0
        self.contents = open_json(filepath)
        for d in self.contents:
            if d.get("op") == "func":
                funcname = d["content"]
                self.funclist_len += len(funcname.encode(self.encoding)) + 1 + 4

    def read_line(self, line):
        res = {}
        line = line.strip("\n")
        if line.startswith("func "):
            res["op"] = "func"
            res["content"] = line[5:].strip()
            self.funclist_len += len(res["content"].encode(self.encoding)) + 1 + 4
        else:
            line_contents = line.split("||")
            op = line_contents.pop(0)
            op = op.strip("#")
            res["op"] = op
            res["content"] = []
            for content in line_contents:
                if content == "":
                    continue
                c = {}
                c["type"] = content[:1]
                content = content[3:]
                if c["type"] in ["c", "w", "i"]:
                    c["content"] = int(content)
                elif c["type"] == "t":
                    c["content"] = content
                elif c["type"] == "o":
                    objs = content.split("//")
                    c["content"] = []
                    for obj in objs:
                        if obj == "":
                            continue
                        o = {}
                        o["type"] = obj[0]
                        obj = obj[4:]
                        if o["type"] == "b":
                            o["content"] = obj
                        elif o["type"] == "t":
                            o["content"] = obj
                        elif o["type"] == "c":
                            o["content"] = int(obj)
                        c["content"].append(o)
                res["content"].append(c)
        return res
    
    def make_obj(self, obj_items):
        res = []
        for obj_item in obj_items:
            if obj_item["type"] == "b":
                res.append(bytes.fromhex(obj_item["content"]))
            elif obj_item["type"] == "t":
                res.append(b"\x30" + obj_item["content"].encode(self.encoding) + b"\x00")
            elif obj_item["type"] == "c":
                res.append(b"\x30" + to_bytes(obj_item["content"], 2))
        res = b"".join(res)
        length = to_bytes(len(res), 4)
        return length + res
 
    def make_line(self, line_content):
        res = []
        if line_content["op"] == "str":
            return line_content["content"][0]["content"].encode(self.encoding) + b"\x00"
        elif line_content["op"] == "func":
            raise ValueError("Cannot compile function line")
        else:
            op = line_content["op"]
            res.append(to_bytes(int(op, 16), 2))
            for content in line_content["content"]:
                if content["type"] == "t":
                    res.append(content["content"].encode(self.encoding) + b"\x00")
                elif content["type"] == "i":
                    res.append(to_bytes(content["content"], 4))
                elif content["type"] == "c":
                    res.append(to_bytes(content["content"], 1))
                elif content["type"] == "w":
                    res.append(to_bytes(content["content"], 2))
                elif content["type"] == "o":
                    res.append(self.make_obj(content["content"]))
        res = b"".join(res)
        return res

    def compile(self):
        res = []
        offset = self.funclist_len + 4 + 1
        for line in self.contents:
            if line["op"] == "func":
                self.funclist[line["content"]] = offset
            else:
                linedata = self.make_line(line)
                res.append(linedata)
                offset += len(linedata)
        out = b"BSF1"
        for func_name, func_offset in self.funclist.items():
            out += func_name.encode(self.encoding) + b"\x00"
            out += to_bytes(func_offset, 4)
        out += b"\x00"
        out += b"".join(res)
        return out

class SCR_FILE:
    def __init__(self, filepath):
        self.path = filepath
        self.data = BytesReader(open_file_b(self.path))
        self.magic = self.data.read(0x4)
        self.funclist = []
        self.op_list = []
        self.opdict = SCR_OP
        self.object_info = OBJECT_INFO
        while self.read_func():
            pass
        # print(len(self.funclist), "functions found")
        while self.read_op():
            pass

    def read_func(self):
        func = {}
        func["name"] = self.data.read_utill_zero().decode("932")
        if func["name"] == "":
            return False
        func["offset"] = self.data.readU32()
        self.funclist.append(func.copy())
        return True
    
    def write_obj_b(self, res, f):
        if b"\x82" in res and b"\x30" in res:
            print("Warning: Binary object contains 0x82 byte, which may indicate special encoding.")
            print(res.hex())
        f.write(f"b:::{res.hex()}//")  

    def dump_totxt(self, outpath):
        try:
            os.makedirs(os.path.dirname(outpath), exist_ok=True)
        except:
            pass
        f = open(outpath, "w", encoding="utf-8")
        for op in self.op_list:
            for i in self.is_offset_in_func(op["offset"]):
                f.write(f"func {self.funclist[i]["name"]}\n")
            if op["op"] == "str":
                f.write(f"#str||t::{op['data']}||\n")
                continue
            else:
                f.write(f"#{op['op']:02x}||")
                for data in op["data"]:
                    if data["type"] != "o":
                        f.write(f"{data['type']}::")
                        c = data["content"]
                        if isinstance(c, bytes):
                            c = c.hex()
                        f.write(f"{c}")
                    elif op["op"] not in self.object_info:
                        f.write(f"o::")
                        c = data["content"]
                        self.write_obj_b(c, f)
                    else:
                        obj_type = self.object_info[op["op"]]
                        f.write(f"o::")
                        obj = BytesReader(data["content"])
                        for t in obj_type:
                            if obj.is_end():
                                break
                            f.write(f"{t}:::")
                            if t == "t" and obj.read(1) == b"\x30":
                                f.write(obj.read_utill_zero().decode("932"))
                                f.write("//")
                            elif t == "w" and obj.read(1) == b"\x30":
                                f.write(str(obj.readU16()))
                                f.write("//")
                            elif t == "c" and obj.read(1) == b"\x30":
                                cop = obj.readU16()
                                f.write(str(cop))
                                f.write("//")
                                if cop == 5:
                                    if not obj.read(1) == b"\x30":
                                        raise ValueError("Expected 0x30 after cop 5")
                                    f.write(f"t:::{obj.read_utill_zero().decode('932')}//")
                                elif cop == 100:
                                    while not obj.is_end():
                                        if not obj.read(1) == b"\x30":
                                            raise ValueError("Expected 0x30 after cop 5")
                                        f.write(f"t:::{obj.read_utill_zero().decode('932')}//")
                                elif cop == 323:
                                    while not obj.is_end():
                                        if not obj.read(1) == b"\x30":
                                            raise ValueError("Expected 0x30 after cop 5")
                                        f.write(f"t:::{obj.read_utill_zero().decode('932')}//")
                                else:
                                    res = obj.read()
                                    self.write_obj_b(res, f)
                            else:
                                raise ValueError(f"Unknown object type {t} in op {op['op']:02x}")
                        if not obj.is_end():
                            res = obj.read()
                            self.write_obj_b(res, f)  
                    f.write("||")    
            f.write("\n")
    
    def dump_tojson(self, outpath):
        self.dump_totxt("temp.txt")
        com = SCR_COMPILER("932")
        com.read_fromtxt("temp.txt")
        save_json(outpath, com.contents)
    
    def is_offset_in_func(self, offset):
        res = []
        for i, func in enumerate(self.funclist):
            if func["offset"] == offset:
                res.append(i)
        return res
    
    def read_obj(self):
        length = self.data.readU32()
        content = self.data.read(length)
        return content
    
    def read_op(self):
        res = {}
        if self.data.is_end():
            return False
        res["offset"] = self.data.tell()
        res["op"] = self.data.readU16()
        if res["op"] > 0x80:
            self.data.seek(res["offset"])
            res["op"] = "str"
            res["data"] = self.data.read_utill_zero().decode("932")
            self.op_list.append(res)
            return True
        res["data"] = []
        if res["op"] in self.opdict:
            for i in self.opdict[res["op"]]:
                c = {}
                c["type"] = i
                if c["type"] == "o":
                    c["content"] = self.read_obj()
                elif c["type"] == "t":
                    c["content"] = self.data.read_utill_zero().decode("932")
                elif c["type"] == "i":
                    c["content"] = self.data.readU32()
                elif c["type"] == "c":
                    c["content"] = self.data.readU8()
                elif c["type"] == "w":
                    c["content"] = self.data.readU16()
                res["data"].append(c)
        else:
            print(f"0x{res['op']:02x}: \"o\",")
            raise ValueError(f"Unknown op code {res['op']:02x} at offset 0x{res['offset']:08x}")
        self.op_list.append(res)
        return True
    


    
if __name__ == "__main__":
    mode = "compile"  # or "compile"
    if mode == "decompile":
        for file in os.listdir("script"):
            scr = SCR_FILE(os.path.join("script", file))
            scr.dump(os.path.join("script_dump", file + ".txt"))
    elif mode == "compile":
        os.makedirs("script_recompile", exist_ok=True)
        for file in os.listdir("script_dump"):
            scr_compiler = SCR_COMPILER(os.path.join("script_dump", file))
            compiled_data = scr_compiler.compile()
            output_path = os.path.join("script_recompile", file.replace(".txt", ""))
            save_file_b(output_path, compiled_data)