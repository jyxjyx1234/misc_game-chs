from Lib import *

def dec(data, key):
    data = bytearray(data)
    data = bytes([x ^ key for x in data])
    return bytes(data)

class TBLSTR_String:
    def __init__(self, size, data, unk):
        self.size = size
        self.data = data
        self.unk = unk

class TBLSTR_ARC:
    def __init__(self):
        pass

    def read_from_path(self, path):
        data = open_file_b(path)
        self.read_from_bytes(data)
        self.endp = len(data)
    
    def read_from_bytes(self, data):
        data = BytesReader(data)
        self.size = data.readU32()
        self.string_bank = {}
        while not data.is_end():
            offset = data.tell()
            unk = data.readU32()
            size = data.readU32()
            string_data = data.read(size)
            self.string_bank[offset] = TBLSTR_String(size, string_data, unk)
    
    def append_trans(self, text, type):
        text = text.encode("932")
        text = dec(text, 0xff)
        text += b"\x00"
        text += b"\x00" * (4 - len(text) % 4) if len(text) % 4 != 0 else b""
        self.string_bank[self.endp] = TBLSTR_String(len(text), text, type)
        res = self.endp
        self.endp += len(text) + 8
        return res
    
    def write_to_file(self, path):
        strings = []
        for offset, string in self.string_bank.items():
            data = to_bytes(string.unk, 4) + to_bytes(string.size, 4) + string.data
            strings.append(data)
        data = b"".join(strings)
        data = to_bytes(len(data) + 4, 4) + data
        save_file_b(path, data)
        

if __name__ == "__main__":
    arc = TBLSTR_ARC()
    arc.read_from_path("TBLSTR.arc")
    with open("TBLSTR.txt", "w", encoding="utf8") as f:
        for offset, string in arc.string_bank.items():
            text = string.data.split(b"\x00")[0]
            text = dec(text, 0xff)
            text = text.decode("932")
            f.write(f"@{offset:08X}[{string.unk}]::{text}\n")
        