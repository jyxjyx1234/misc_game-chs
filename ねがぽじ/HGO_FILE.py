from Lib import *
from opdict import *
from cov_int import *



class HGO_FILE:
    def __init__(self, path):
        data = open_file_b(path)
        self.data = BytesReader(data)
        self.path = path
        self.jmp_set = set()
    
    def decomplie(self, outputPath):
        os.makedirs(os.path.dirname(outputPath), exist_ok=True)
        self.output = open(outputPath, "w", encoding="utf-8")
        self.read_funcs()
        self.read_ops()
        self.output.close()
    
    def read_funcs(self):
        self.funcs = []
        self.funcs_count = self.data.readU32()
        for i in range(self.funcs_count):
            func_name = self.data.read(0x1c).strip(b'\x00').decode('932')
            func_unk1 = self.data.readU32()
            func_offset = self.data.readU32()
            self.funcs.append((func_name, func_unk1, func_offset))
            self.output.write(f"{func_name}|{func_unk1}|{func_offset}\n")
        self.data = BytesReader(self.data.getvalue()[self.data.tell():])
        self.length = len(self.data.getvalue())
    
    def read_ops(self):
        length = len(self.data.getvalue())
        while self.data.tell() < length:
            self._read_op()
            self.output.write("\n")
    
    def _read_op(self):
        op = self.data.read(2).hex()
        self.output.write(f"@{self.data.tell() - 2}|#{op}")
        if op in opdict:
            comands = opdict[op]
            for idx, comand in enumerate(comands):
                self.read_command(comand)
        else:
            # return
            raise Exception(f"{self.path} Unknown op: {op} pos: {self.data.tell() + self.funcs_count * 0x24 + 4 :x}")
    
    def read_command(self, comand):
        if comand == "S":
            _ = self.data.tell()
            text = self.data.read_utill_zero()
            if text[:2].hex() in opdict:
                self.data.seek(_)
                return
            text = text.decode('932')
            self.output.write(f"|strt({text})")
        elif comand == "s":
            _ = self.output.tell()
            if self.data.read(2).hex() in opdict:
                self.data.seek(self.data.tell()-2)
                return
            self.data.seek(self.data.tell()-2)
            text = self.data.read_utill_zero().decode('932')
            self.output.write(f"|str({text})")
        elif comand == "i":
            i = self.data.readU32()
            self.output.write(f"|u32({cal_from_int(i)})")
        elif comand == "I":
            i = self.data.readU32()
            i = cal_from_int(i)
            self.jmp_set.add(i)
            self.output.write(f"|u32j({i})")
        elif comand == "b":
            i = self.data.readU8()
            self.output.write(f"|u8({i})")
        elif comand == "w":
            i = self.data.readU16()
            self.output.write(f"|u16({i})")
        elif comand == "W":
            i = self.data.readU16()
            self.output.write(f"|u16j({i})")
        elif comand == "L":
            while True:
                text = self.data.read_utill_zero().decode('932')
                self.output.write(f"|str({text})")
                if text == "SYSTEMOFDOWN":
                    break
        elif comand == "l":
            while True:
                if self.data.read(2).hex() in opdict:
                    self.data.seek(self.data.tell()-2)
                    break
                self.data.seek(self.data.tell()-2)
                text = self.data.read_utill_zero().decode('932')
                self.output.write(f"|str({text})")
                if text == "SYSTEMOFDOWN":
                    break
        elif comand == "c":
            self.output.write("\n")
            self._read_op()
        else:
            raise Exception(f"Unknown comand: {comand} pos: {self.data.tell() + self.funcs_count * 0x24 + 4:x}")


if __name__ == "__main__":
    oripath = "HGO\\"
    outpath = "HGO_dump\\"
    # oripath = "release\\A98SYS\\"
    # outpath = "HGO_test\\"
    files = os.listdir(oripath)
    for file in files:
        if file.endswith(".HGO"):
            hgo = HGO_FILE(oripath + file)
            hgo.decomplie(outpath + f"{file}.txt")