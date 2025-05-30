from Lib import *
import struct

class DAT_ENTRY:
    def __init__(self):
        pass

    def read_entry(self, data):
        entry = DAT_ENTRY()
        entry.offset = data.readU32()
        entry.size = data.readU32()
        entry.name = data.read(0x20 - 8).strip(b"\x00").decode("932")
        return entry
    
    def read_file(self, data):
        data.seek(self.offset)
        return data.read(self.size)
    
    def __bytes__(self):
        return (struct.pack("<II", self.offset, self.size) + self.name.encode("932")).ljust(0x20, b"\x00")

class DAT_FILE:
    def __init__(self, path):
        self.data = BytesReader(open_file_b(path))
        self.num_files = self.data.readU32()
        self.unk = self.data.read(0x0c)
        self.entries = []
        for i in range(self.num_files):
            self.entries.append(DAT_ENTRY().read_entry(self.data))

    def unpack(self, outpath):
        os.makedirs(outpath, exist_ok=True)
        for entry in self.entries:
            data = entry.read_file(self.data)
            save_file_b(os.path.join(outpath, entry.name), data)

    def pack(self, oripath, outpath):
        entries = []
        datas = []
        offset = 0x10 + self.num_files * 0x20
        for entry in self.entries:
            data = open_file_b(os.path.join(oripath, entry.name))
            entry.size = len(data)
            entry.offset = offset
            datas.append(data)
            offset += entry.size
            entries.append(bytes(entry))
        new_data = b"".join(entries) + b"".join(datas)
        new_data = bytearray(new_data)
        for i in range(len(new_data)):
            new_data[i] ^= 0x81
        new_data = to_bytes(self.num_files, 4) + self.unk + bytes(new_data)
        save_file_b(outpath, new_data)
            
if __name__ == "__main__":
    dat = DAT_FILE("scr.dat.dec")
    dat.unpack("scr")