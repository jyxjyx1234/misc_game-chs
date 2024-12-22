from Lib import *

def read_until_null(data, offset):
    string = b""
    while data[offset] != 0:
        string += data[offset:offset+1]
        offset += 1
    return string

class BGI_textdumper():
    def __init__(self, path) -> None:
        self.path = path
        self.file = BytesReader(open_file_b(path))
        self.filedata = open_file_b(path)

    def dump(self, outpath):
        out = open(outpath, "w", encoding="utf-8")
        self.header1 = self.file.read(0x1c)
        self.header2len = self.file.readU32()
        self.header2 = self.file.read(self.header2len - 4)
        self.headerALLlen = self.file.p
        first_offset = 999999999
        while self.file.p < first_offset:
            op = self.file.readU32()
            if op == 3:
                offset = self.file.readU32()
                data = read_until_null(self.filedata, offset + self.headerALLlen)
                text = data.decode("shift-jis")
                length = len(data)
                if first_offset == 999999999:
                    first_offset = offset + self.headerALLlen
                out.write(f"<{self.file.p - 4 - self.headerALLlen},{offset},{length}>{text}\n")

if __name__ == "__main__":
    f = BGI_textdumper("01_001")
    f.dump("01_001.txt")
            

