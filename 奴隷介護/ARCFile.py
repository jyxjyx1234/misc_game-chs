from Lib import *
from lzss import *


def xor(data, key):
    return bytes([b ^ key[i % len(key)] for i, b in enumerate(data)])

namesize = 0x14

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
            entry["name"] = xor(self.dataReader.read(namesize), self.name_key)
            entry["size"] = from_bytes(xor(self.dataReader.read(0x4), self.size_key))
            entry["offset"] = from_bytes(xor(self.dataReader.read(0x4), self.offset_key))
            self.entries.append(entry)

    def guessKey(self, oriFileForGuess):
        data = open_file_b(oriFileForGuess)
        data = BytesReader(data)
        numFiles = data.readU32()
        data.read(namesize - 1)
        self.name_key = data.read(1)
        true_first_offset = numFiles * (namesize + 8) + 4
        true_first_offset = to_bytes(true_first_offset, 4)
        first_size = data.read(0x4)
        first_offset = data.read(0x4)
        data.read(namesize)
        sec_size = data.read(0x4)
        sec_offset = data.read(0x4)
        self.offset_key = xor(first_offset, true_first_offset)
        true_sec_offset = xor(sec_offset, self.offset_key)
        true_first_size = to_bytes(from_bytes(true_sec_offset) - from_bytes(true_first_offset), 4)
        self.size_key = xor(first_size, true_first_size)
        print(f"Guessed keys: name_key={self.name_key}, size_key={self.size_key}, offset_key={self.offset_key}")
    
    def unpack(self, outPath):
        os.makedirs(outPath, exist_ok=True)
        for entry in self.entries:
            name = entry["name"].strip(b"\x00").decode("932")
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
        offset = 4 + (namesize + 8) * self.numFiles
        for fileName in files:
            entry = {}
            entry["name"] = fileName.encode("932")
            entry["name"] += b"\x00" * (namesize - len(entry["name"]))
            entry["data"] = open_file_b(os.path.join(oriPath, fileName))
            entry["data"] = LZSS_compress(entry["data"])
            # print(entry["data"])
            entry["size"] = len(entry["data"])
            entry["offset"] = offset
            offset += entry["size"]
            self.entries.append(entry)
        if os.path.dirname(outPath):
            os.makedirs(os.path.dirname(outPath), exist_ok=True)
        with open(outPath, "wb") as f:
            f.write(to_bytes(self.numFiles, 4))
            for entry in self.entries:
                f.write(xor(entry["name"], self.name_key))
                f.write(xor(to_bytes(entry["size"], 4), self.size_key))
                f.write(xor(to_bytes(entry["offset"], 4), self.offset_key))
            for entry in self.entries:
                f.write(entry["data"])

# if __name__ == "__main__":
#     mode = "pack"
#     arcFile = ARCFile()
#     if mode == "unpack":
#         arcFile.guessKey("DATA.ARC")
#         arcFile.readFromPath("DATA.ARC")
#         arcFile.unpack("DATA")
#     elif mode == "pack":
#         arcFile.guessKey("MES.ARC")
#         arcFile.pack("release\\MES", "release\\MES.CHS")
#         arcFile = ARCFile()
#         arcFile.guessKey("DATA.ARC")
#         arcFile.pack("release\\DATA", "release\\DATA.CHS")


if __name__ == "__main__":
    import sys

    print("usage: python ARCFile.py pack <原始封包> <输入文件夹> <输出封包>")
    print("usage: python ARCFile.py unpack <封包文件> <输出文件夹>")

    if len(sys.argv) < 4:
        print("Error: Not enough arguments.")
        sys.exit(1)

    mode = sys.argv[1]
    ori_arc = sys.argv[2]
    arcFile = ARCFile()

    if mode == "pack":
        ori_path = sys.argv[3]
        out_path = sys.argv[4]
        arcFile.guessKey(ori_arc)
        arcFile.pack(ori_path, out_path)
    elif mode == "unpack":
        arcFile.guessKey(ori_arc)
        arcFile.readFromPath(ori_arc)
        out_path = sys.argv[3]
        arcFile.unpack(out_path)

