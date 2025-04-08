from Lib import *
from MES_OP import *
import logging

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s', filename='log.txt', filemode='w')

def encode_str(text:str, encoding = "932"):
    if "[" not in text:
        return text.encode(encoding) + b"\x00"
    res = b""
    i = 0
    while i < len(text):
        if text[i] != "[":
            res += text[i].encode(encoding)
            i += 1
            continue
        else:
            if text[i + 2] != "]" and text[i + 3] != "]":
                res += text[i].encode(encoding)
                i += 1
                continue
            if text[i+1] == "n":
                res += b"\x0a"
                i += 3
                continue
            else:
                res += b"\xf0" + int(text[i+1:i+3], 16).to_bytes(1, "little")
                i += 4
                continue
    return res + b"\x00"

class MES_FILE:
    def __init__(self, data):
        self.data = MES_Reader(data)
        self.head = self.data.read(0x14)
        self.filelen = self.data.readU32()
        self.headerlen = self.data.readU32()
        self.unk = self.data.read(self.headerlen - 0x1c)
        self.data = MES_Reader(data[self.headerlen:])

    def decomplie(self, outpath):
        res = []
        res.append(self.head.hex())
        res.append(hex(self.filelen)[2:])
        res.append(hex(self.headerlen)[2:])
        res.append(self.unk.hex())
        try:
            while self.data.p < self.filelen - self.headerlen:
                res.append(self.data.readOp())
        except Exception as e:
            logging.error(f"Error: {hex(self.data.p)}")
            pass
        with open(outpath, "w", encoding = "utf-8") as f:
            f.write("\n".join(res))

class Args:
    def __init__(self, data:str, encoding = "932"):
        self.encode = encoding
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
        else:
            raise Exception(f"Error: {data}")
        

    def compile(self):
        if self.type == "u8":
            return to_bytes(self.data, 1)
        elif self.type == "u16":
            return to_bytes(self.data, 2)
        elif self.type == "u32":
            return int.to_bytes(self.data, 4, "little", signed = True)
        elif self.type == "str":
            return encode_str(self.data, self.encode)
    
    def __len__(self):
        if self.type == "u8":
            return 1
        elif self.type == "u16":
            return 2
        elif self.type == "u32":
            return 4
        elif self.type == "str":
            return len(encode_str(self.data, self.encode))
        
    def __str__(self):
        return f"|{self.type}({self.data})"

class Line:
    def __init__(self, data:str, file, encoding = "932"):
        self.encoding = encoding
        self.filename = file
        if data == "":
            return
        self.data = data.strip("\n")
        contents = self.data.split("|")
        self.offset = int(contents[0][1:])
        self.op = contents[1][1:]
        self.args = [Args(i, self.encoding) for i in contents[2:]]
        
    def compile(self, offsetdict, lastline):
        res = b""
        res += to_bytes(int(self.op, 16), 1)
        if self.op == "e4":
            if self.args[0].data > 65535:
                pass
            elif self.args[0].data < 0:
                pass
            else:
                if lastline.op == "28":
                    target = self.args[0].data
                else:
                    target = self.offset + self.args[0].data
                try:
                    newtarget = offsetdict[target]
                    newoffset = offsetdict[self.offset]
                    if lastline.op == "28":
                        self.args[0].data = newtarget
                    else:
                        self.args[0].data = newtarget - newoffset
                except:
                    try:
                        target = self.args[0].data
                        newtarget = offsetdict[target]
                        self.args[0].data = newtarget
                    except:
                        logging.warning(f"{self.filename} lastline: {lastline.op}  {self.data}")
                
        for arg in self.args:
            res += arg.compile()
        return res
    
    def __len__(self):
        return 1 + sum([len(i) for i in self.args])
    
    def __str__(self):
        return f"@{self.offset}|#{self.op}{''.join([str(i) for i in self.args])}"
    
class MES_Compiler:
    def __init__(self, header, lines):
        self.header = header
        #bytes.fromhex(header[0]) + to_bytes(int(header[1], 16), 4) + to_bytes(int(header[2], 16), 4) + bytes.fromhex(header[3])
        self.lines = lines
        
    def precompile(self):
        self.offsetdict = {}
        offset = 0
        for line in self.lines:
            # if line.offset != offset:
                # logging.warning(f"warning: {line.offset} != {offset}")
            self.offsetdict[line.offset] = offset
            offset += len(line)
        self.header[1] = hex(offset)[2:]

    def compile(self, outpath):
        self.precompile()
        res = b""
        res += bytes.fromhex(self.header[0])
        res += int.to_bytes(int(self.header[1], 16), 4, "little", signed = True)
        res += int.to_bytes(int(self.header[2], 16), 4, "little", signed = True)
        res += bytes.fromhex(self.header[3])
        for i, line in enumerate(self.lines):
            res += line.compile(self.offsetdict, self.lines[i-1])
        with open(outpath, "wb") as f: 
            f.write(res)


def isNameFlag(line:Line):
    if line.op == "e3" and line.args[0].data == 300:
        return True
    return False

def isTextFlag(line:Line):
    if line.op == "e3" and line.args[0].data == 400:
        return True
    return False

def getName(line:Line):
    if line.op == "11":
        return line.args[0].data
    elif line.op == "e8" and line.args[0].data == 41:
        return "主人公"
    else:
        return False
    
def getText(line:Line):
    if line.op == "11":
        text = line.args[0].data
        text = re.sub(r"\[.*?\]", "", text)
        return text
    else:
        return False
    
def split_text(text:str, length:int):
    res = []
    while len(text) > length:
        res.append(text[:length])
        text = text[length:]
    res.append(text)
    return res

if __name__ == "__main__":
    files = os.listdir("release\\SCRIPTS")
    os.makedirs("dec__", exist_ok = True)
    for file in files:
        if file[-4:].lower() != ".mes" and file[-4:].lower() != ".mec":
            continue
        logging.info(file)
        data = open(f"release\\SCRIPTS\\{file}", "rb").read()
        mes = MES_FILE(data)
        mes.decomplie(f"dec__\\{file}.txt")
    for op in UNK_OPs:
        logging.warning(f'"{op}":[],')