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
        offsetList = []
        lengthList = []
        while self.file.p < first_offset:
            op = self.file.readU32()
            if op == 3:
                offset = self.file.readU32()
                if (first_offset != 999999999 and offset + self.headerALLlen < first_offset) or offset == 0:
                    self.file.p -= 4
                    continue
                data = read_until_null(self.filedata, offset + self.headerALLlen)
                text = data.decode("932")
                length = len(data)
                if first_offset == 999999999 and offset > len(self.file.data) // 4:
                    first_offset = offset + self.headerALLlen
                    # print(f"first_offset: {hex(first_offset)}")
                if length == 0:
                    continue
                text = text.replace("\n", "\\n")
                offsetList.append(offset)
                lengthList.append((offset, length))
                out.write(f"<{self.file.p - 4 - self.headerALLlen},{offset},{length}>{text}\n")
        offsetList.append(len(self.file.data) - self.headerALLlen)
        for o, l in lengthList:
            if o + l + 1 not in offsetList:
                print(f"Warning: {self.path} {o + l + 1} not in offsetList")

if __name__ == "__main__":
    oriPath = "scr\\"
    outPath = "dump\\"
    os.makedirs(outPath, exist_ok=True)
    for f in os.listdir(oriPath):
        # print(f)
        bgif = BGI_textdumper(oriPath + f)
        bgif.dump(outPath + f + ".txt")
            

