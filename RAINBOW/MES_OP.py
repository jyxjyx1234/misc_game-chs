from Lib import *
import logging

opdict = {
    "01":[],
    "02":[],
    "03":[],
    "04":[],
    "05":[],
    "11":["str"],
    "12":[],
    "13":[],
    "14":[],
    "16":[],
    "19":[],
    "1f":[],
    "22":[],
    "23":[],
    "24":[],
    "25":[],
    "26":[],
    "28":[],
    "29":[],
    "2a":[],
    "2b":[],
    "2e":[],
    "2f":[],
    "31":[],
    "32":[],
    "33":[],
    "34":[],
    "37":[],
    "38":[],
    "3b":[],
    "3c":[],
    "45":[],
    "46":[],
    "47":[],
    "49":[],
    "50":[],
    "5a":[],
    "70":[],
    "61":[],
    "53":[],
    "81":["u16"],
    "b0":[],
    "b1":[],
    "b2":[],
    "b7":["u16"],
    "b8":[],
    "b9":[],
    "ba":[],
    "bb":[],
    "bc":[],
    "be":[],
    "bf":[],
    "c0":[],
    "c1":[],
    "c2":[],
    "c3":[],
    "c4":[],
    "c5":[],
    "c7":[],
    "c8":[],
    "c9":[],
    "cb":[],
    "cc":[],
    "cd":[],
    "d3":["u8"],
    "d5":[],
    "e1":[],
    "e2":["u8"],
    "e3":["u16"],
    "e4":["u32"],
    "e5":["str"],
    "e6":["u16"],
    "e7":["u16"],
    "e8":["u16"],
    
    "36":[],
    "5c":[],
    "5d":[],
    "66":[],
    "42":[],
    "69":[],
    "3a":[],
    "57":[],
    "39":[],
    "41":[],
    "76":[],
    "1c":[],
    "73":[],
    "15":[],
    "3d":[],
    "1a":[],
    "5e":[],
    "1b":[],
    "3e":[],
    "67":[],
    "18":[],
    "2d":[],
    "6f":[],
    "6a":[],
    "5f":[],
    "52":[],
    "bd":[],

    "59":[],
    "1d":[],
    "2c":[],
    "27":[],
    "4e":[],
    "40":[],
    "b6":[],
    "77":[],
    "4f":[],
    "60":[],
    "44":[],
    "3f":[],
    "35":[],
    "d4":[],
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

UNK_OPs = set()

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
            res = f"@{self.p - 1}|#{op.hex()}"
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
            logging.warning(f"Unknown op {op.hex()} at {hex(self.p)}")
            UNK_OPs.add(op.hex())
            # exit()
            res = f"@{self.p - 1}|#UNKOP_{op.hex()}"
            return res
