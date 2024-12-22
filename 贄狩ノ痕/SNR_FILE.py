from Lib import *
from SNR_OP import op_table

class SNR_FILE(BytesReader):
    def decompile(self, outpath):
        self.outpath = outpath
        out = []
        header = self.read(0xc)
        out.append(f"header: {header.hex()}\n")
        while self.p < len(self.data):
            try:
                out.append(self.readOP())
            except Exception as e:
                with open(outpath, 'w', encoding="932") as f:
                    f.write('\n'.join(out))
                print(e)
                print(f"Error at {self.outpath}:{self.p}")
                exit()
        with open(outpath, 'w', encoding="932") as f:
            f.write('\n'.join(out))
    
    def readStr(self):
        length = self.readU32()
        text = self.read(length).decode("932")
        return text
    
    def readOP(self):
        res = f"@{self.p}"
        OP = self.read(4).hex()
        try:
            commands = op_table[OP]
            res += f"|%{OP}"
        except:
            res += f"|UNKNWON:{OP}"
            if OP[2:] != "000000":
                print(f"Error at {self.outpath}:{res}")
                raise RuntimeError
            return res
        for command in commands:
            try:
                match command:
                    case "u32":
                        res += f"|u32({self.readU32()})"
                    case "u32j":
                        res += f"|u32j({self.readU32()})"
                    case "str":
                        res += f"|str({self.readStr()})"
                    case "strt":
                        res += f"|strt({self.readStr()})"
                    case "strn":
                        res += f"|strn({self.readStr()})"
                    case "str2":
                        length1 = self.readU32()
                        length2 = self.readU32()
                        length3 = self.readU32()
                        length4 = self.readU32()
                        text1 = self.read(length1).decode("932")
                        text2 = self.read(length2).decode("932")
                        text3 = self.read(length3).decode("932")
                        text4 = self.read(length4).decode("932")
                        res += f"|str2({text1})({text2})({text3})({text4})"
                    case "opt":
                        optlen = self.readU32()
                        res += f"|u32({optlen})"
                        for i in range(optlen):
                            res += f"|u32({self.readU32()})"
                            res += f"|strt({self.readStr()})"
                        res += f"|u32({self.readU32()})"
                        res += f"|u32({self.readU32()})"
                        res += f"|u32({self.readU32()})"
                        res += f"|u32({self.readU32()})"
                        for i in range(optlen):
                            res += f"|u32j({self.readU32()})"
                    case _:
                        raise RuntimeError
            except:
                print(f"Error at {self.outpath}:{res}")
                raise RuntimeError
        return res

class SNR_COMPILER:
    def __init__(self, path):
        lines = open(path, "r", encoding="932").readlines()
        self.header = bytes.fromhex(lines[0][7:].strip())
        self.lines = lines[1:]

    def precomplie_line(self, line):
        line = line.strip()
        commands = line.split("|")
        if len(commands) == 1:
            return None, None
        orioffset = int(commands[0][1:])
        commands = commands[1:]
        alllen = 0
        for c in commands:
            if c.startswith("%"):
                alllen += 4
            elif re.match("u32[^2\(]?\(\d+?\)", c):
                alllen += 4
            elif re.match("str[^2\(]?\(.*?\)",c):
                text = re.match("str.?\((.*?)\)",c).group(1)
                alllen += len(text.encode("932")) + 4
            elif re.match("str2\((.*?)\)\((.*?)\)\((.*?)\)\((.*?)\)",c):
                m = re.match("str2\((.*?)\)\((.*?)\)\((.*?)\)\((.*?)\)",c)
                text1 = m.group(1).encode("932")
                text2 = m.group(2).encode("932")
                text3 = m.group(3).encode("932")
                text4 = m.group(4).encode("932")
                alllen += len(text1) + len(text2) + len(text3) + len(text4) + 16
            elif re.match("opt\(\d+\)", c):
                alllen += 4

        return alllen, orioffset

    
    def complie_line(self, line):
        line = line.strip()
        commands = line.split("|")
        if len(commands) == 1:
            return b""
        orioffset = int(commands[0][1:])
        newoffset = self.offsetdict[orioffset]
        commands = commands[1:]
        out = b""
        for c in commands:
            if c.startswith("%"):
                out += bytes.fromhex(c[1:])
            elif re.match("u32\(\d+?\)", c):
                n = int(re.match("u32\((\d+?)\)",c).group(1))
                out += to_bytes(n, 4)
            elif re.match("u32j\(\d+?\)", c):
                n = int(re.match("u32j\((\d+?)\)",c).group(1))
                n = self.offsetdict[n]
                out += to_bytes(n, 4)
            elif re.match("str[^2\(]?\(.*?\)",c):
                text = re.match("str.?\((.*?)\)",c).group(1).encode("932")
                length = len(text)
                out += to_bytes(length, 4) + text
            elif re.match("str2\((.*?)\)\((.*?)\)\((.*?)\)\((.*?)\)",c):
                m = re.match("str2\((.*?)\)\((.*?)\)\((.*?)\)\((.*?)\)",c)
                text1 = m.group(1).encode("932")
                text2 = m.group(2).encode("932")
                text3 = m.group(3).encode("932")
                text4 = m.group(4).encode("932")
                out += to_bytes(len(text1), 4) + to_bytes(len(text2), 4) + to_bytes(len(text3), 4) + to_bytes(len(text4), 4)
                out += text1 + text2 + text3 + text4
        return out
    
    def precomplie(self):
        self.offsetdict = {}
        alllen = 12
        for line in self.lines:
            linelen, orioffset = self.precomplie_line(line)
            if orioffset != None:
                self.offsetdict[orioffset] = alllen
                alllen += linelen
    
    def complie(self):
        self.precomplie()
        out = []
        out.append(self.header)
        for line in self.lines:
            res = self.complie_line(line)
            out.append(res)
        return b"".join(out)

if __name__ == "__main__":
    files = os.listdir("DEC")
    for f in files:
        snr = SNR_FILE(open_file_b("DEC/"+f))
        snr.decompile(f"DECOMPILED/{f}")