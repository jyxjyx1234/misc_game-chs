from Lib import *
from SCD_FILE_reader import *

namelist = ["ちさと",
"未来",
"まこと",
"あゆみ",
"まゆみ",
"あゆみ まゆみ",
"高坂",
"蘇我博士",
"？"]

def process_symbol_for_GBK(text, encoding):
    if encoding != "936":
        return text
    text = text.replace("・", "·").replace("♪", "")
    return text

class SCD_FILE_pack:
    def __init__(self, file_path, key):
        self.key = key
        data = open(file_path, 'rb').read()
        self.magic = data[:4]
        self.filenum = from_bytes(data[4:8])
        self.contentStart = from_bytes(data[8:12])
        self.unk = data[12:16]
        self.entrysdata = BytesReader(xor(data[16:self.contentStart], self.key))
        self.filesdata = SCD_Reader(xor(data[self.contentStart:], self.key))
        self.readEntry()

    def readEntry(self):
        entrys = []
        for i in range(self.filenum):
            filename = self.entrysdata.read(12)
            filename = filename.strip(b'\x00').decode('932')
            offset = self.entrysdata.readU32()
            if len(entrys) > 0:
                entrys[-1]["size"] = offset - entrys[-1]["offset"]
            entrys.append({"filename": filename, "offset": offset})
        entrys[-1]["size"] = len(self.filesdata.data) - entrys[-1]["offset"]
        self.entrys = entrys
        # print(self.entrys)
    
    def unpack(self, output_dir):
        os.makedirs(output_dir, exist_ok=True)
        for entry in self.entrys:
            self.filesdata.p = entry["offset"]
            filename = entry["filename"]
            outfile = open(os.path.join(output_dir, filename) + ".txt", 'w', encoding='utf-8')
            # outfile.write(f"name:{filename}\noffset:{self.filesdata.p}\n")
            out = OriJsonOutput()
            while self.filesdata.p < entry["size"] + entry["offset"]:
                text = self.filesdata.readOP()
                outfile.write(text + '\n')
                if re.search(r"#1200\|u16\(([0-9])\)", text):
                    out.add_name(namelist[int(re.search(r"#1200\|u16\(([0-9])\)", text).group(1))])
                if re.search(r"strt\(.*?\)", text):
                    out.add_text(re.search(r"strt\((.*?)\)", text).group(1))
                    out.append_dict()
            outfile.close()
            os.makedirs("ori_txt", exist_ok=True)
            out.save_double_line("ori_txt\\" + filename + ".txt")

    def pre_compile(self, input_dir, encoding):
        contents = []
        offset = 0
        self.offsetdict = {}
        for entry in self.entrys:
            data = open(os.path.join(input_dir, entry["filename"]) + ".txt", 'r', encoding="utf8").readlines()
            data = [Line(i, encoding=encoding) for i in data]
            for line in data:
                self.offsetdict[line.offset] = offset
                offset += len(line)

    def pack(self, input_dir, output_file, encoding):
        self.pre_compile(input_dir, encoding)
        header = self.magic + to_bytes(len(self.entrys), 4) + to_bytes(self.contentStart, 4) + self.unk
        entrys = []
        contents = []
        offset = 0
        for entry in self.entrys:
            filename = entry["filename"].encode('932') + b'\x00' * (12 - len(entry["filename"]))
            entrys.append(filename + to_bytes(self.offsetdict[entry["offset"]], 4))
            data = open(os.path.join(input_dir, entry["filename"]) + ".txt", 'r', encoding="utf8").readlines()
            data = [Line(i, encoding) for i in data]
            contents += [i.compile(self.offsetdict) for i in data]
        data = xor(b''.join(entrys) + b''.join(contents), self.key)
        save_file_b(output_file, header + data)

class Args:
    def __init__(self, data:str, encoding):
        self.encoding = encoding
        if re.match(r"u8\(.*\)", data):
            self.type = "u8"
            self.data = int(data[3:-1])
        elif re.match(r"u16\(.*\)", data):
            self.type = "u16"
            self.data = int(data[4:-1])
        elif re.match(r"u32\(.*\)", data):
            self.type = "u32"
            self.data = int(data[4:-1])
        elif re.match(r"str\(.*\)", data):
            self.type = "str"
            self.data = data[4:-1]
        elif re.match(r"strt\(.*\)", data):
            self.type = "strt"
            self.data = data[5:-1]
        else:
            raise Exception(f"Error: {data}")

    def compile(self, offsetdict):
        if self.type == "u8":
            return to_bytes(self.data, 1)
        elif self.type == "u16":
            return to_bytes(self.data, 2)
        elif self.type == "u32":
            new_offset = offsetdict[self.data]
            return int.to_bytes(new_offset, 4, "little", signed = False)
        elif self.type == "str" or self.type == "strt":
            if self.type == "strt":
                text = process_symbol_for_GBK(self.data, self.encoding).encode(encoding=self.encoding) + b"\x00"
            else:
                text = self.data.encode(encoding="932") + b"\x00"
            text = text.replace(b"\\n", b"\x0a")
            length = len(text)
            return to_bytes(length, 2) + text
    
    def __len__(self):
        if self.type == "u8":
            return 1
        elif self.type == "u16":
            return 2
        elif self.type == "u32":
            return 4
        elif self.type == "str" or self.type == "strt":
            if self.type == "strt":
                text = process_symbol_for_GBK(self.data, self.encoding).encode(encoding=self.encoding) + b"\x00"
            else:
                text = self.data.encode(encoding="932") + b"\x00"
            text = text.replace(b"\\n", b"\x0a")
            length = len(text)
            return length + 2
        
    def __str__(self):
        return f"|{self.type}({self.data})"

class Line:
    def __init__(self, data:str, encoding):
        if data == "":
            return
        self.data = data.strip("\n")
        contents = self.data.split("|")
        self.offset = int(contents[0][1:])
        self.op = contents[1][1:]
        self.args = [Args(i, encoding) for i in contents[2:]]
        self.encoding = encoding

    def compile(self, offsetdict):
        res = b""
        res += bytes.fromhex(self.op)
                
        for arg in self.args:
            res += arg.compile(offsetdict)
        return res
    
    def __len__(self):
        return 2 + sum([len(i) for i in self.args])
    
    def __str__(self):
        return f"@{self.offset}|#{self.op}{''.join([str(i) for i in self.args])}"


if __name__ == "__main__":
    mode = "pack"
    if mode == "unpack":
        scd = SCD_FILE_pack("scr.scd", b"\xa5")
        scd.unpack("scr_unpack_dec")
    if mode == "pack":
        scd = SCD_FILE_pack("scr.scd", b"\xa5")
        scd.pack("scr_unpack_dec_trans\\", "release\\scr.chs", "932")