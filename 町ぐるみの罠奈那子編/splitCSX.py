from Lib import *

class CSXFile():
    def __init__(self, filename):
        self.filename = filename
        self.filedata = BytesReader(open_file_b(filename))
        self.head = self.filedata.read(0x40 - 8)
        self.filesize = self.filedata.readU32()
        self.head2 = self.filedata.read(4)
    
    def readPart(self):
        res = {}
        res["name"] = self.filedata.read(8).decode()
        res["size"] = self.filedata.readU32()
        res["unk"] = self.filedata.readU32()
        res["data"] = self.filedata.read(res["size"])
        return res
    
f = CSXFile("script.csx")
i = 0
os.makedirs("parts", exist_ok=True)
while f.filedata.tell() < f.filesize:
    part = f.readPart()
    save_file_b(f"parts/{i:04d}_{part['name']}.bin", part["data"])
    i += 1
