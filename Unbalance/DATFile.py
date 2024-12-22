from Lib import *

class DATFile:
    def __init__(self) -> None:
        pass

    def readFileList(self, oriPath):
        data = open_file_b(oriPath)
        data = BytesReader(data)
        self.fileCount = data.readU32()
        self.fileStart = data.readU32()
        self.fileNames = []
        for i in range(self.fileCount):
            fileName = data.read(0x10)
            offset = data.readU32()
            length = data.readU32()
            fileName = fileName.replace(b"\x00",b"").decode("932")
            self.fileNames.append(fileName)
    
    def pack(self, oriPath, outPath):
        head = []
        head.append(to_bytes(self.fileCount,4))
        head.append(to_bytes(self.fileStart,4))
        entrys = []
        files = []

        offset = 0
        for i in self.fileNames:
            data = open_file_b(oriPath + i)
            length = len(data)
            files.append(data)
            entry = i.encode("932")
            while len(entry) < 0x10:
                entry += b"\x00"
            entry += to_bytes(offset, 4)
            entry += to_bytes(length, 4)
            offset += length
            entrys.append(entry)
        head = head + entrys
        head = b"".join(head)
        head = head + b"\x00" * (self.fileStart - len(head))
        files = b"".join(files)
        save_file_b(outPath, head + files)

if __name__ == "__main__":
    f = DATFile()
    f.readFileList("SCW.PAK")
    f.pack("release\SCW\\", "release\\SCW.CHS")
    #f.pack("SCW\\", "release\\SCW.CHS")
