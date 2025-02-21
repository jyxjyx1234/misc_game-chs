from Lib import *
from SCD_OP import opdict

class SCD_Reader(BytesReader):
    def readU16(self):
        return from_bytes(self.read(2))
    
    def readStr(self):
        length = self.readU16()
        text = self.read(length).strip(b'\x00')
        if b"\x00" in text:
            raise Exception(f"String contains 00 at {self.p - length : #x}")
        text = text.decode('932')
        text = text.replace('\n', '\\n').replace('\r', '\\n')
        return text
    
    def readOP(self):
        op = self.read(2).hex()
        if op in opdict:
            commands = opdict[op]
        else:
            raise Exception(f"Unknown OP {op} at {self.p - 2 : #x}")
        out = f"@{self.p - 2}|#{op}"
        for command in commands:
            if command == 'd':
                content = self.readU32()
                out += f"|u32({content})"
            elif command == 'w':
                content = self.readU16()
                out += f"|u16({content})"
            elif command == 'b':
                content = self.readU8()
                out += f"|u8({content})"
            elif command == 's':
                content = self.readStr()
                out += f"|str({content})"
            elif command == 't':
                content = self.readStr()
                out += f"|strt({content})"
        return out

if __name__ == "__main__":
    oriPath = "scr_unpack\\"
    outPath = "scr_unpack_dec\\"
    os.makedirs(outPath, exist_ok=True)
    files = os.listdir(oriPath)
    idx = 0
    for file in files:
        idx += 1
        print(file + f"  {idx}/{len(files)}")
        outfile = outPath + file + ".txt"
        outfile = open(outfile, 'w', encoding='utf-8')
        data = open(oriPath + file, 'rb').read()
        reader = SCD_Reader(data)
        l = len(data)
        while reader.p < l - 2:
            text = reader.readOP()
            outfile.write(text + '\n')
        # if reader.p == l - 2 and reader.readU16() == 0:
        #     outfile.write(f"@{reader.p}|0000")
        # else:
        #     raise Exception("End of file not 0000")
        outfile.close()
