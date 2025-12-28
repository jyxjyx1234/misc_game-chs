if __name__ == "__main__":
    from Lib import *
else:
    from .Lib import *
import struct

ss_opdict = {
    0x01: ("i", "CD_NL"),
    0x02: ("ti", "CD_PUSH"),
    0x03: ("t", "CD_POP"),
    0x04: ('t', "CD_COPY"),
    0x05: ("", "CD_PROPERTY"),
    0x06: ("", "CD_COPY_ELM"),
    0x07: ("ii", "CD_DEC_PROP"),
    0x08: ("", "CD_ELM_POINT"),
    0x09: ("", "CD_ARG"),
    0x10: ("i", "CD_GOTO"),
    0x11: ('i', "CD_GOTO_TRUE"),
    0x12: ("i", "CD_GOTO_FALSE"),
    0x13: ("is", "CD_GOSUB"),
    0x14: ("is", "CD_GOSUBSTR"),
    0x15: ("r", "CD_RETURN"),
    0x16: ("", "CD_EOF"),
    0x20: ("iii", "CD_ASSIGN"),
    0x21: ("ic", "CD_OPERATE_1"),
    0x22: ("iic", "CD_OPERATE_2"),
    0x30: ("l","CD_COMMAND"),
    0x31: ("i", "CD_TEXT"),
    0x32: ("", "CD_NAME"),
    0x33: ("", "CD_SEL_BLOCK_START"),
    0x34: ("", "CD_SEL_BLOCK_END"),
}

type_dict = {
    -1: "TYPE_LIST",
    0: "TYPE_VOID",
    0x0a: "TYPE_INT",
    0x14: "TYPE_STRING",
}

operater_dict = {
    0x00: "OP_NONE",
    0x01: "OP_PLUS",
    0x02: "OP_MINUS",
    0x03: "OP_MULTIPLE",
    0x04: "OP_DIVIDE",
    0x05: "OP_AMARI",
    0x10: "OP_EQUAL",
    0x11: "OP_NOT_EQUAL",
    0x12: "OP_GREATER",
    0x13: "OP_GREATER_EQUAL",
    0x14: "OP_LESS",
    0x15: "OP_LESS_EQUAL",
    0x20: "OP_LOGICAL_AND",
    0x21: "OP_LOGICAL_OR",
    0x30: "OP_TILDE",
    0x31: "OP_AND",
    0x32: "OP_OR",
    0x33: "OP_HAT",
    0x34: "OP_SL",
    0x35: "OP_SR",
    0x36: "OP_SR3",
}

def Decrypt(string,l,k):
    key = 28807
    localKey = key * k % 65536
    newString = b''
    for n in range(0,l):
        newString += struct.pack('H',localKey^struct.unpack('H',string[n*2:n*2+2])[0])
    return newString


class SS_Header:
    def __init__(self,f:BytesReader):
        f.seek(0)
        self.length = f.readU32()
        if self.length != 0x84:
            raise Exception("SS Header length error! Unknown SS file format.")
        self.headerList = []
        for _ in range(32):
            self.headerList.append(f.readU32())
        self.cmdOffset = self.headerList[0]
        self.cmdLength = self.headerList[1]
        self.strIndexOffset=self.headerList[2]
        self.strCount=self.headerList[3]
        self.strOffset=self.headerList[4]

    def to_bytes(self) -> bytes:
        res = []
        res.append(to_bytes(self.length, 4))
        self.headerList[0] = self.cmdOffset
        self.headerList[2] = self.strIndexOffset
        self.headerList[3] = self.strCount
        self.headerList[4] = self.strOffset
        self.headerList[5] = self.strCount

        for item in self.headerList:
            res.append(to_bytes(item, 4))
        return b''.join(res)
    
class SS_StrList:
    def __init__(self, f:BytesReader, header:SS_Header):
        self.strings = []
        f.seek(header.strIndexOffset)
        for _ in range(header.strCount):
            str_offset = f.readU32()
            str_length = f.readU32()
            current_pos = f.tell()
            f.seek(header.strOffset + str_offset * 2)
            string_data = f.read(str_length * 2)
            string_data = Decrypt(string_data, str_length, _)
            string_data = string_data.decode('utf-16le')
            self.strings.append(string_data)
            f.seek(current_pos)
    
    def get_string(self, index):
        return self.strings[index]
    
    def to_bytes(self) -> bytes:
        str_data = []
        str_index_data = []
        current_offset = 0
        for i, string in enumerate(self.strings):
            encoded_str = string.encode('utf-16le')
            str_length = len(encoded_str) // 2
            str_data.append(Decrypt(encoded_str, str_length, i))
            str_index_data.append(to_bytes(current_offset, 4))
            str_index_data.append(to_bytes(str_length, 4))
            current_offset += str_length
        return b''.join(str_index_data), b''.join(str_data)


class SS_CodeData:
    def __init__(self, f:BytesReader, header:SS_Header, strlist: SS_StrList, path = ""):
        f.seek(header.cmdOffset)
        self.start_pos = f.tell()
        self.path = path
        self.strlist = strlist
        self.data = BytesReader(f.read(header.cmdLength))
        self.opcodes = []
        back_list = []
        self.current_elm = None
        while self.data.tell() < header.cmdLength:
            try:
                self.read_op()
            except RuntimeError as e:
                i = 0
                while True:
                    i += 1
                    last_op = self.opcodes.pop()
                    if last_op["opname"] == "CD_COMMAND" and last_op["args"][0] < 0x10000:
                        break
                    if i > 8:
                        raise e
                if last_op["pos"] not in back_list:
                    self.data.seek(last_op["pos"])
                    back_list.append(self.data.tell())
                    self.read_op(is_back=True)
                else:
                    raise e
    
    def read_op(self, is_back = False):
        res = {}
        res["pos"] = self.data.tell()
        op = self.data.readU8()
        cmdinfo, opname = ss_opdict.get(op, (None, None))
        res["opname"] = opname
        if cmdinfo is None:
            pos = self.data.tell() - 1 + self.start_pos
            errorlog = [self.path] + self.opcodes[-10:] + [f"error_pos: {pos:x}"] + [f"0x{op:02x}: '',"]
            nextcode = []
            for i in range(0x80):
                nextcode.append(hex(self.data.readU8())[2:].zfill(2))
            errorlog.append(" ".join(nextcode))
            save_json("error_op.json", errorlog)
            print(f"解析CD_COMMAND出现问题，正在回溯并尝试另外的模式…… current_elm: {self.current_elm}, file: {self.path} line: {len(self.opcodes)} （此信息仅供调试用，不会影响正常解析结果）")
            raise RuntimeError("Unknown operation: 0x{:04x} at position 0x{:08x}".format(op, self.data.tell()-1 - 0x80))
        res["args"] = []
        for argtype in cmdinfo:
            match argtype:
                case 'i':
                    i = self.data.readU32()
                    if len(res["args"]) >= 1 and res["args"][-1] == "TYPE_STRING":
                        res["args"].append((self.strlist.get_string(i), i))
                    else:
                        res["args"].append(i)
                case 't':
                    t = self.data.readU32()
                    type_name = type_dict.get(t, f"TYPE_UNKNOWN_{t}")
                    res["args"].append(type_name)
                case 'c':
                    o = self.data.readU8()
                    operater = operater_dict[o]
                    res["args"].append(operater)
                case "s":
                    num = self.data.readU32()
                    res["args"].append(num)
                    for _ in range(num):
                        t = self.data.readU32()
                        res["args"].append(type_dict.get(t, f"TYPE_UNKNOWN_{t}"))
                case 'l':
                    start = self.data.tell() + self.start_pos
                    list_id = self.data.readU32()
                    arg_count = self.data.readU32()
                    args = []
                    for _ in range(arg_count):
                        arg_t = self.data.readU32()
                        args.append(type_dict.get(arg_t, f"TYPE_UNKNOWN_{arg_t}"))
                        if arg_t == -1:
                            arg_l_count = self.data.readU32()
                            args.append(arg_l_count)
                            for __ in range(arg_l_count):
                                t = self.data.readU32()
                                args.append(type_dict.get(t, f"TYPE_UNKNOWN_{t}"))
                    name_count = self.data.readU32()
                    names = []
                    if name_count > 0x10:
                        raise RuntimeError
                    for _ in range(name_count):
                        names.append(self.data.readU32())
                    ret_type = self.data.readU32()
                    ret_type = type_dict.get(ret_type, f"TYPE_UNKNOWN_{ret_type}")
                    args = [list_id, arg_count] + args + [name_count] + names + [ret_type]
                    if self.current_elm in [12, 18, 76]:
                        if not is_back:
                            args.append(self.data.readU32())
                    else:
                        if is_back:
                            args.append(self.data.readU32())
                    res["args"] += args
                case 'r':
                    r_type = self.data.readU32()
                    res["args"].append(r_type)
                    if r_type == 1:
                        t = self.data.readU32()
                        t = type_dict.get(t, f"TYPE_UNKNOWN_{t}")
                        res["args"].append(t)
                case _:
                    raise Exception("Unknown argument type: {}".format(argtype))
        
        if self.current_elm == "GET_ELM_POINT" and opname == "CD_PUSH":
            self.current_elm = res["args"][1]
        elif opname == "CD_PROPERTY":
            self.current_elm = f"{self.current_elm}_CD_PROPERTY"
        elif opname == "CD_ELM_POINT":
            self.current_elm = "GET_ELM_POINT"

        self.opcodes.append(res)

    def save_opcodes(self, path):
        with open(path, "w", encoding="utf-8") as f:
            for opcode in self.opcodes:
                pos = opcode["pos"]
                opname = opcode["opname"]
                f.write(f"@{pos:x}||")
                f.write(f"#{opname}||")
                for arg in opcode["args"]:
                    if isinstance(arg, tuple):
                        f.write(f'"{arg[0]}"[0x{arg[1]:x}]||')
                    else:
                        f.write(f"{arg}||")
                f.write("\n")



class SS_File:
    def __init__(self, path):
        self.path = path
        self.data = BytesReader(open_file_b(path))
        self.header = SS_Header(self.data)
        self.str_list : SS_StrList = SS_StrList(self.data, self.header)
        self.data.seek(self.header.cmdOffset)
        self.other_data = self.data.read()

    def parse_code_data(self):
        self.code_data = SS_CodeData(self.data, self.header, self.str_list, self.path)

    def replace_string(self, index, new_string):
        self.str_list.strings[index] = new_string

    def rebuild(self):
        ori_cmd_offset = self.header.cmdOffset
        str_index_data, str_data = self.str_list.to_bytes()
        self.header.strCount = len(self.str_list.strings)
        self.header.strOffset = self.header.length + len(str_index_data)
        self.header.cmdOffset = self.header.length + len(str_index_data) + len(str_data)
        delta = self.header.cmdOffset - ori_cmd_offset

        for i in range(len(self.header.headerList)):
            if i <= 5:
                continue
            if i % 2 == 0:
                self.header.headerList[i] += delta

        new_file_data = []
        new_file_data.append(self.header.to_bytes())
        new_file_data.append(str_index_data)
        new_file_data.append(str_data)
        new_file_data.append(self.other_data)
        return b''.join(new_file_data)
    
    def save_str_list(self, path):
        #for debug use
        res = {}
        for idx, string in enumerate(self.str_list.strings):
            res[f"0x{idx:x}"] = string
        save_json(path, res)


if __name__ == "__main__":
    ss = SS_File("unpacked_scene\\__00test_コマンドサンプル.ss")
    ss.parse_code_data()
    ss.save_str_list("ss_strings.json")
    ss.code_data.save_opcodes("ss_opcodes.txt")

    