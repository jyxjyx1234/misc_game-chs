from Lib import *
from io import BytesIO
from op import opdict

charlist = open_file_b("char.bin")
offset2char = {}
char2offset = {}
for i in range(0, len(charlist), 2):
    offset2char[i//2] = charlist[i:i+2].decode("932")
    if charlist[i:i+2].decode("932") not in char2offset:
        char2offset[charlist[i:i+2].decode("932")] = i//2
def get_char(offset):
    res =  offset2char[offset]
    return res

def encode_str(str, char2offsetdict):
    out = b""
    buffur = ""
    for char in str:
        if buffur:
            char = buffur + char
            buffur = ""
        if len(char.encode("932")) == 1:
            buffur = char
            continue
        if char not in char2offsetdict:
            raise RuntimeError(f"char {char} not found")
        offset = char2offsetdict[char]
        b1 = offset // 0x100
        b2 = offset % 0x100
        if b1 == 0:
            out += to_bytes(offset, 1)
        else:
            out += to_bytes(0x100 - b1, 1) + to_bytes(b2, 1)
    return out
    
class GRP_Decoder(BytesReader):
    def readbytes(self):
        char = self.read()
        char = from_bytes(char)
        return char
    
    def read_char(self):
        char_1 = self.readbytes()
        if char_1 < 0xf8:
            return get_char(char_1)
        
        char_2 = self.readbytes()
        offset = (0x100 - char_1) * 0x100 + char_2
        res = get_char(offset)
        return res
    
    def read_str(self):
        out = ""
        while True:
            char = self.read_char()
            out += char
            if char.startswith("/") and char != "/S":
                break
        return out
    
    def readOP(self):
        op = self.read()
        if op == b"\x00":
            return ""
        try:
            func = opdict[op]
        except:
            return f"unknownOP(0x{op.hex()})\n"
        result = f"@{self.p - 1}|#{op.hex()}"
        try:
            for f in func:
                match f:
                    case "u8":
                        res = from_bytes(self.read())
                        restext = f"u8({res})"
                    case "u16":
                        res = from_bytes(self.read(2))
                        restext = f"u16({res})"
                    case "u32":
                        res = from_bytes(self.read(4))
                        restext = f"u32({res})"
                    case "str":
                        res = self.read_str()
                        restext = f"str({res})"
                result += f"|{restext}"
        except:
            result += "|ERROR"
        return result
    
    def decode(self):
        out = ""
        while True:
            op = self.readOP()
            out += op + "\n"
            if self.p >= len(self.data):
                break
        return out
    
class GRP_Complier():
    def __init__(self, path):
        lines = open(path, "r", encoding="932").readlines()
        self.header = bytes.fromhex(lines[0].strip())
        self.lines = lines[1:]

    def precomplie_line(self, line, char2offset=char2offset):
        line = line.strip()
        commands = line.split("|")
        if len(commands) == 1:
            return None, None
        orioffset = int(commands[0][1:])
        commands = commands[1:]
        alllen = 0
        for c in commands:
            if c.startswith("#"):
                alllen += 1
            elif re.match("u8\(\d+\)", c):
                alllen += 1
            elif re.match("u16\(\d+\)", c):
                alllen += 2
            elif re.match("str\(.*\)",c):
                text = encode_str(c[4:-1], char2offset)
                alllen += len(text)
        return alllen, orioffset

    
    def complie_line(self, line, char2offset=char2offset):
        line = line.strip()
        commands = line.split("|")
        if len(commands) == 1:
            return b""
        orioffset = int(commands[0][1:])
        newoffset = self.offsetdict[orioffset]
        commands = commands[1:]
        out = b""
        for c in commands:
            if c.startswith("#"):
                if c == "#01":#u16
                    orijmp = commands[1][4:-1]
                    orijmp = int.from_bytes(to_bytes(int(commands[1][4:-1]), 2), byteorder='little', signed=True)
                    orijmp = orioffset + 3 + orijmp
                    newjmp = self.offsetdict[orijmp] - newoffset - 3#带符号
                    newjmp = newjmp.to_bytes(2, byteorder='little', signed=True)
                    newjmp = from_bytes(newjmp)
                    commands[1] = f"u16({newjmp})"
                if c == "#08":#u16 u16
                    orijmp = orioffset + 5 + int(commands[2][4:-1])
                    newjmp = self.offsetdict[orijmp] - newoffset - 5
                    commands[2] = f"u16({newjmp})"
                if c == "#07":#u8 u8 u16
                    orijmp = orioffset + 5 + int(commands[3][4:-1])
                    newjmp = self.offsetdict[orijmp] - newoffset - 5
                    commands[3] = f"u16({newjmp})"
                out += (bytes.fromhex(c[1:]))
            elif re.match("u8\(\d+\)", c):
                out += (to_bytes(int(c[3:-1]), 1))
            elif re.match("u16\(\d+\)", c):
                out += (to_bytes(int(c[4:-1]), 2))
            elif re.match("str\(.*\)",c):
                out += (encode_str(c[4:-1], char2offset))
        return out
    
    def precomplie(self, char2offset=char2offset):
        self.offsetdict = {}
        alllen = 0
        for line in self.lines:
            linelen, orioffset = self.precomplie_line(line, char2offset)
            if orioffset != None:
                self.offsetdict[orioffset] = alllen
                alllen += linelen
    
    def complie(self, char2offset=char2offset):
        self.precomplie(char2offset=char2offset)
        out = []
        out.append(self.header)
        for line in self.lines:
            res = self.complie_line(line, char2offset)
            out.append(res)
        return b"".join(out)

if __name__ == "__main__":
    files = os.listdir("event")
    os.makedirs("Event_d/", exist_ok=True)
    for f in files:
        out = open(f"Event_d/{f}.txt", "w", encoding="932")
        data = open_file_b(f"Event\{f}")
        out.write(data[0:3].hex()+"\n")
        data = data[3:]
        data = GRP_Decoder(data)
        out.write(data.decode())
        out.close()