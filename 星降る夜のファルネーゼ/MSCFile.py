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
    
class MSCCodeReader(BytesReader):
    def __init__(self, data, out, table1L, table2L) -> None:
        super().__init__(data)
        self.opDict = open_json("opDict.json")
        self.out = out

    def readStr(self):
        length = self.readU32()
        text = self.read(length)
        return text
    
    def readVal(self):
        mode = self.readU8()
        value = self.readU32()
        return mode, value

    def readOP(self, table1L, table2L):
        if self.p in table1L:
            idx = ",".join(table1L[self.p])
            self.out.write(f"@table1:{idx}\n")
        if self.p in table2L:
            idx = ",".join(table2L[self.p])
            self.out.write(f"@table2:{idx}\n")
        op1 = self.read(1).hex().upper()
        op2 = self.read(1).hex().upper()
        self.out.write(f"#{op1}{op2}")
        paraList_ = self.opDict[op1][op2].split(", ")
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
            elif p == "val":
                mode, value = self.readVal()
                self.out.write(f"||val({mode},{value})")
            elif p == "u8":
                value = self.readU8()
                self.out.write(f"||u8({value})")
            elif p == "u32":
                value = self.readU32()
                self.out.write(f"||u32({value})")
            elif p == "str":
                value = self.readStr()
                text = value.decode("932")
                self.out.write(f"||str({text})")
            else:
                print(f"{op1}{op2}")
                raise(RuntimeError)
        
        self.out.write(f"\n")

class MSCFile(BytesReader):
    def __init__(self, data, outPath) -> None:
        super().__init__(data)
        self._readHead()
        self.outPath = outPath
        self.out = open(outPath, "w", encoding="utf8")
    
    def _readTable(self):
        self.read()#\x00
        idx = self.readU32()
        offset = self.readU32()
        return idx, offset
    
    def _readHead(self):
        self.head0 = self.read(2)
        self.headSize = self.readU32()
        
        self.table1Size = self.readU32()
        self.table1List = {}
        for i in range(self.table1Size // 9):
            idx, offset = self._readTable()
            if offset in self.table1List:
                self.table1List[offset].append(f"{idx}")
            else:
                self.table1List[offset] = [f"{idx}"]
        
        self.table2Size = self.readU32()
        self.table2List = {}
        for i in range(self.table2Size // 9):
            idx, offset = self._readTable()
            if offset in self.table2List:
                self.table2List[offset].append(f"{idx}")
            else:
                self.table2List[offset] = [f"{idx}"]
        
        self.codeData = self.data[self.headSize : ]
    
    def readCodeData(self):
        codeData = MSCCodeReader(self.codeData, self.out, self.table1List, self.table2List)
        while True:
            codeData.readOP(self.table1List, self.table2List)
            if codeData.p == len(self.codeData):
                break

class MSCFileComplier:
    def __init__(self, path) -> None:
        self.txt = open(path, "r", encoding = "utf8").readlines()
        self.table1 = []
        self.table2 = []

    def genHead(self):
        head0 = b"\x00\x00"
        table1Size = to_bytes(len(self.table1) * 9, 4)
        table2Size = to_bytes(len(self.table2) * 9, 4)
        table1 = b"".join(self.table1)
        table2 = b"".join(self.table2)
        headsize = to_bytes(6 + 4 + 4 + len(table1) + len(table2), 4)
        self.head = head0 + headsize + table1Size + table1 + table2Size + table2

    def genCodeData(self):
        codeData = []
        totalLen = 0
        for l in self.txt:
            l = l.strip()
            if l == "":
                continue
            if l[0] == "@":
                m = re.match(r"@table([0-9]):(.*)", l)
                t = int(m.group(1))
                idxs = m.group(2).split(",")
                offset = to_bytes(totalLen, 4)
                for idx in idxs:
                    idx = to_bytes(int(idx), 4)
                    if t == 1:
                        self.table1.append(b"\x00" + idx + offset)
                    elif t == 2:
                        self.table2.append(b"\x00" + idx + offset)
                continue

            paraList = l.split("||")
            for p in paraList:
                if re.match("#", p):
                    opCode = to_bytes(int(p[1:3], 16), 1) + to_bytes(int(p[3:5], 16), 1)
                    codeData.append(opCode)
                    totalLen += 2
                elif re.match(r"u8\((.*?)\)", p):
                    m = re.match(r"u8\((.*?)\)", p).group(1)
                    m = int(m)
                    m = to_bytes(m, 1)
                    codeData.append(m)
                    totalLen += 1
                elif re.match(r"u32\((.*?)\)", p):
                    m = re.match(r"u32\((.*?)\)", p).group(1)
                    m = int(m)
                    m = to_bytes(m, 4)
                    codeData.append(m)
                    totalLen += 4
                elif re.match(r"val\((.*?),(.*?)\)", p):
                    mode = re.match(r"val\((.*?),(.*?)\)", p).group(1)
                    u32 = re.match(r"val\((.*?),(.*?)\)", p).group(2)
                    val = to_bytes(int(mode), 1) + to_bytes(int(u32), 4)
                    codeData.append(val)
                    totalLen += 5
                elif re.match(r"str\((.*?)\)", p):
                    text = re.match(r"str\((.*?)\)", p).group(1)
                    textB = text.encode("932")
                    l = len(textB)
                    res = to_bytes(l, 4) + textB
                    codeData.append(res)
                    totalLen += 4 + l
                else:
                    raise RuntimeError
                
        self.codeData = b"".join(codeData)
    
    def compile(self):
        self.genCodeData()
        self.genHead()
        return self.head + self.codeData


if __name__ == "__main__":
    mscf = MSCFileComplier("oriTXT\ma01_001.txt")
    save_file_b("ma01_001.msc", mscf.compile())