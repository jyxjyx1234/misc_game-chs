from Lib import *
import re

class BytesReader:
    def __init__(self, data) -> None:
        self.data = data
        self.p = 0

    def read(self, i : int = 1) -> bytes:
        res = self.data[self.p : self.p + i]
        self.p += i
        return res
    
    def readU32(self):
        res = self.read(4)
        res = from_bytes(res)
        return res
    
    
    def readU8(self):
        res = self.read(1)
        res = from_bytes(res)
        return res
    
class ADCCodeReader(BytesReader):
    def __init__(self, data, out) -> None:
        super().__init__(data)
        self.opDict = open_json("opDict.json")
        self.out = out

    def readStr(self):
        text = self.read()
        while text[-1] != 0:
            text += self.read()
        return text[:-1]
    
    def readU8(self):
        res = from_bytes(self.read())
        if self.read() != b"\x00":
            raise RuntimeError
        return res
    
    def readU16(self):
        res = from_bytes(self.read(2))
        if self.read() != b"\x00":
            raise RuntimeError
        return res
    
    def readU32_0(self):
        res = self.read(4)
        if self.read() != b"\x00":
            raise RuntimeError
        res = from_bytes(res)
        return res

    def readOP(self, end = "\n"):
        self.out.write(f"@{self.p}||")
        op1 = self.read(1).hex().lower()
        if op1 == "8e":
            self.p -= 1
            self.out.write(f"?{self.read(4).hex()}\n")
            self.read()
            return

        if self.read() != b"\x00":
            print(self.p)
            raise RuntimeError
        
        self.out.write(f"#{op1}")
        try:
            paraList_ = self.opDict[op1].split(",")
        except:
            print(self.p)
            raise RuntimeError
        paraList = []

        for p in paraList_:
            if "[" in p:
                t, count = p.split("[")
                count = int(count[:-1])
                for i in range(count):
                    paraList.append(t)
            else:
                paraList.append(p)

        for p in paraList:
            if p == "":
                pass
            elif p == "u8":
                value = self.readU8()
                self.out.write(f"||u8({value})")
            elif p == "u16":
                value = self.readU16()
                self.out.write(f"||u16({value})")
            elif p == "u32":
                value = self.readU32()
                self.out.write(f"||u32({value})")
            elif p == "b":
                value = self.read()
                self.out.write(f"||b({value.hex()})")
            elif p == "str":
                value = self.readStr()
                text = value.decode("932")
                self.out.write(f"||str({text})")
            elif p == "strb":
                value = self.readStr()
                self.out.write(f"||strb({value.hex()})")
            elif p == "com":
                self.out.write("||com{")
                self.readOP(end = "}")
            else:
                print(f"{op1}")
                raise(RuntimeError)
        
        self.out.write(end)

class ADCCommand:
    def __init__(self, text) -> None:
        self.contents = text.split("||")
        self.getLen()

    def getContentLen(self, i):
        if i[0] == "#":
            return 2
        if i[0] == "@":
            return 0
        if i[0] == "?":
            return (len(i) - 1)//2 + 1
        if re.search(r"u8\(.*?\)", i):
            return 2
        if re.search(r"u16\(.*?\)", i):
            return 3
        if re.search(r"u32\(.*?\)", i):
            return 4
        if re.match(r"b\(.*?\)", i):
            return 1
        if re.search(r"strb\(.*?\)", i):
            if (len(i) - 6)%2 != 0:
                print(len(i))
                print(i)
            return (len(i) - 6)//2 + 1
        if re.search(r"str\(.*?\)", i):
            return len(i[4:-1].encode("932")) + 1
        raise RuntimeError
        return 0
    
    def getLen(self):
        totalLen = 0
        for i in self.contents:
            totalLen += self.getContentLen(i)
        self.totalLen = totalLen
    
    def updateLen(self, offset):
        ori = int(self.contents[0][1:])#原本的位置
        new = offset
        return ori, new

class ADCFileComplier:
    def __init__(self, path) -> None:
        self.txt = open(path, "r", encoding = "utf8").readlines()

    def getNewOffset(self):
        self.newOffsetDict = {}
        offset = 0
        for t in self.txt:
            l = ADCCommand(t.strip())
            ori, new = l.updateLen(offset)
            offset = new + l.totalLen
            self.newOffsetDict[ori] = new

    def genCodeData(self):
        self.getNewOffset()
        codeData = []
        totalLen = 0
        for l in self.txt:
            l = l.strip()
            if l == "":
                continue
            paraList = l.split("||")
            for p in paraList:
                if re.match("@", p):
                    continue
                elif re.match("#", p):
                    opCode = to_bytes(int(p[1:3], 16), 1) + b"\x00"
                    codeData.append(opCode)
                    totalLen += 2
                elif re.match("\?", p):
                    content = p[1:]
                    codeData.append(int(content, 16).to_bytes(len(content)//2, "big") + b"\x00")
                    if len(content)%2:
                        print(content)
                    totalLen += len(content)//2 + 1
                elif re.match(r"u8\((.*?)\)", p):
                    m = re.match(r"u8\((.*?)\)", p).group(1)
                    m = int(m)
                    m = to_bytes(m, 1)
                    codeData.append(m + b"\x00")
                    totalLen += 2
                elif re.match(r"u16\((.*?)\)", p):
                    m = re.match(r"u16\((.*?)\)", p).group(1)
                    m = int(m)
                    m = to_bytes(m, 2)
                    codeData.append(m + b"\x00")
                    totalLen += 3
                elif re.match(r"u32\((.*?)\)", p):
                    m = re.match(r"u32\((.*?)\)", p).group(1)
                    m = int(m)
                    m = self.newOffsetDict[m]
                    m = to_bytes(m, 4)
                    codeData.append(m)
                    totalLen += 4
                elif re.match(r"b\((.*?)\)", p):
                    text = re.match(r"b\((.*?)\)", p).group(1)
                    textB = int(text, 16).to_bytes(1, "big")
                    codeData.append(textB)
                    totalLen += 1
                elif re.match(r"str\((.*?)\)", p):
                    text = re.match(r"str\((.*?)\)", p).group(1)
                    textB = text.encode("932")
                    l = len(textB)
                    codeData.append(textB + b"\x00")
                    totalLen += l + 1
                elif re.match(r"strb\((.*?)\)", p):
                    text = re.match(r"strb\((.*?)\)", p).group(1)
                    l = len(text)//2
                    if len(text)%2:
                        print(text)
                    textB = int(text, 16).to_bytes(l, "big")
                    codeData.append(textB + b"\x00")
                    totalLen += l + 1
                else:
                    raise RuntimeError
                
        self.codeData = b"".join(codeData)

if __name__ == "__main__":
    compilier = ADCFileComplier("SNR_D\OP.txt")
    compilier.genCodeData()
    #save_file_b("OP.ADC", compilier.codeData)