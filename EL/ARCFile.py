from Lib import *
from lzss import *
def xor(data, key):
    return bytes([b ^ key[i % len(key)] for i, b in enumerate(data)])

class ARCFile:
    def __init__(self):
        pass

    def readFromPath(self, path):
        self.path = path
        self.data = open_file_b(path)
        self.dataReader = BytesReader(self.data)
        self.numFiles = self.dataReader.readU32()
        self.entries = []
        for i in range(self.numFiles):
            entry = {}
            entry["name"] = xor(self.dataReader.read(0x14), b"\x03")
            entry["size"] = from_bytes(xor(self.dataReader.read(0x4), b"\x55\x67\x65\x33"))
            entry["offset"] = from_bytes(xor(self.dataReader.read(0x4), b"\x11\x08\x82\x68"))
            self.entries.append(entry)
    
    def unpack(self, outPath):
        os.makedirs(outPath, exist_ok=True)
        for entry in self.entries:
            name = entry["name"].strip(b"\x00").decode("utf-8")
            size = entry["size"]
            offset = entry["offset"]
            self.dataReader.seek(offset)
            data = self.dataReader.read(size)
            data = LZSS_decompress(data)
            save_file_b(os.path.join(outPath, name), data)

    def pack(self, oriPath, outPath):
        self.entries = []
        files = os.listdir(oriPath)
        self.numFiles = len(files)
        offset = 4 + 0x1c * self.numFiles
        for fileName in files:
            entry = {}
            entry["name"] = fileName.encode("utf-8")
            entry["name"] += b"\x00" * (0x14 - len(entry["name"]))
            entry["data"] = open_file_b(os.path.join(oriPath, fileName))
            entry["data"] = LZSS_compress(entry["data"])
            # print(entry["data"])
            entry["size"] = len(entry["data"])
            entry["offset"] = offset
            offset += entry["size"]
            self.entries.append(entry)
        os.makedirs(os.path.dirname(outPath), exist_ok=True)
        with open(outPath, "wb") as f:
            f.write(to_bytes(self.numFiles, 4))
            for entry in self.entries:
                f.write(xor(entry["name"], b"\x03"))
                f.write(xor(to_bytes(entry["size"], 4), b"\x55\x67\x65\x33"))
                f.write(xor(to_bytes(entry["offset"], 4), b"\x11\x08\x82\x68"))
            for entry in self.entries:
                f.write(entry["data"])

if __name__ == "__main__":
    mode = "pack"
    arcFile = ARCFile()
    if mode == "unpack":
        arcFile.readFromPath("MES.ARC")
        arcFile.unpack("MES_TEST")
    elif mode == "pack":
        arcFile.pack("release\\MES", "release\\MISC\\MES.CHS")