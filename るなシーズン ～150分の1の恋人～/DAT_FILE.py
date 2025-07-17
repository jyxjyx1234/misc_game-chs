from Lib import *

def xor(data, key):
    res = []
    for i in range(len(data)):
        res.append(data[i] ^ key[i % len(key)])
    return bytes(res)

class DAT_FILE:
    def __init__(self, data):
        self.data = BytesReader(data)
        self.ptr_datas = BytesReader(self.data.read(0x14c080))
        self.contents = BytesReader(xor(self.data.read(), b"ADVSYS"))
        self.ptrs = []
        while True:
            ptr = {}
            name = self.ptr_datas.read(0x84)
            name = name[:name.find(b"\x00")]
            if not name:
                break
            ptr["name"] = name.decode("932")
            ptr["offset"] = self.ptr_datas.readU32()
            self.ptrs.append(ptr)
    
    def save_contents(self, filename):
        try:
            os.makedirs(os.path.dirname(filename), exist_ok=True)
        except OSError:
            pass
        save_file_b(filename, self.contents.getvalue())

    def updata_ptrs(self):
        contents = self.contents.getvalue()
        for ptr in self.ptrs:
            name = b'&' + ptr["name"].encode("932") + b'&'
            ptr["offset"] = contents.find(name)
            if ptr["offset"] == -1:
                raise ValueError(f"Name '{ptr['name']}' not found in contents.")
    
    def rebuild(self, outPath, new_content = None):
        if new_content:
            self.contents = BytesReader(new_content)
        # self.updata_ptrs()
        contents = self.contents.getvalue()
        with open(outPath, "wb") as f:
            f.write(b"\x00" * (0x14c080))
            f.seek(0)
            for ptr in self.ptrs:
                f.write(ptr["name"].encode("932") + b'\x00' * (0x84 - len(ptr["name"].encode("932"))))
                name = b'&' + ptr["name"].encode("932") + b'&'
                offset = contents.find(name)
                f.write(offset.to_bytes(4, 'little'))
            f.seek(0x14c080)
            f.write(xor(self.contents.getvalue(), b"ADVSYS"))


if __name__ == "__main__":
    f = DAT_FILE(open_file_b("script.dat"))
    f.save_contents("dump\\script_.txt")
    # f = DAT_FILE(open_file_b("scriptd.dat"))
    # f.save_contents("scriptd.txt")