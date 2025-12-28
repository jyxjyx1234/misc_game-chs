from Lib import *

class PAC_FILE_UNPACKER:
    def __init__(self, path):
        self.path = path
        self.data = BytesReader(open_file_b(path))
        self.read_entries()

    def read_entry(self):
        filename = self.data.read(0x30)
        filename = filename.split(b'\x00')[0].decode("932")
        offset1 = self.data.readU32()
        offset2 = self.data.readU32()
        size = self.data.readU32()
        unk = self.data.readU32()
        return filename, offset1, offset2, size, unk
    
    def read_entries(self):
        _, _, _, num_entries, _ = self.read_entry()
        self.filedata_begin = num_entries * 0x40
        self.entries = []
        for i in range(num_entries - 1):
            entry = self.read_entry()
            self.entries.append(entry)
    
    def unpack(self, outpath):
        for filename, offset1, offset2, size, unk in self.entries:
            if filename.endswith(".txt"):
                path = os.path.join(outpath, filename)
                os.makedirs(os.path.dirname(path), exist_ok=True)
                with open(path, "wb") as f:
                    self.data.seek(offset1 + self.filedata_begin)
                    data = self.data.read(size)
                    f.write(data)

if __name__ == "__main__":
    f1 = PAC_FILE_UNPACKER("data.pak")
    f1.unpack("data")
    f2 = PAC_FILE_UNPACKER("update.pak")
    f2.unpack("update")
