from Lib import *

opdict = {
    "01":[],
    "02":[],
    "03":[],
    "04":[],
    "05":[],
    "11":["str"],
    "13":[],
    "14":[],
    "22":[],
    "23":[],
    "24":[],
    "25":[],
    "26":[],
    "28":[],
    "2a":[],
    "2b":[],
    "2e":[],
    "2f":[],
    "34":[],
    "38":[],
    "3b":[],
    "50":[],
    "81":["u16"],
    "b0":[],
    "b2":[],
    "bb":["u8"],
    "bc":[],
    "bf":[],
    "c0":[],
    "c2":[],
    "c3":[],
    "c4":[],
    "c8":[],
    "c9":[],
    "cb":[],
    "e1":[],
    "e2":["u8"],
    "e3":["u16"],
    "e4":["u32"],
    "e5":["str"],
    "e6":["u16"],
    "e7":["u16"],
    "e8":["u16"]
}

def decode_text(text):
    try:
        res = ""
        i = 0
        while i < len(text):
            if (text[i] >= 0x81 and text[i] <= 0x9f) or (text[i] >= 0xe0 and text[i] <= 0xef):
                res += text[i:i+2].decode("932")
                i += 2
                continue
            elif text[i] == 0x0a:
                res += f"[n]"
                i += 1
                continue
            elif text[i] == 0xf0:
                unk = hex(text[i+1])[2:]
                res += f"[{unk}]"
                i += 2
                continue
            else:
                res += text[i:i+1].decode("932")
                i += 1
                continue
        return res
    except:
        raise RuntimeError

class MES_Reader(BytesReader):
    def readStr(self):
        res = b""
        while True:
            c = self.read(1)
            if c == b"\x00":
                break
            res += c
        return decode_text(res)
    
    def readU16(self):
        res = self.read(2)
        res = from_bytes(res)
        return res
    
    def readBarket(self):
        length = self.readU32()
        if length < 5:
            return length
        end = self.p + length - 5
        res = []
        while self.p < end:
            res.append(self.readOp())
        return "\n".join(res)
    
    def readOp(self):
        op = self.read(1)
        if op.hex() in opdict:
            res = f"@{self.p}|#{op.hex()}"
            for i in opdict[op.hex()]:
                if i == "u8":
                    res += f"|u8({self.readU8()})"
                elif i == "u16":
                    res += f"|u16({self.readU16()})"
                elif i == "u32":
                    res += f"|u32({self.readU32()})"
                elif i == "str":
                    res += f"|str({self.readStr()})"
            return res
        else:
            print(f"Error: Unknown op {op.hex()} at {hex(self.p)}")
            exit()