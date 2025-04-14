from Lib import *

class GSD_GLOBAL_DAT:
    def __init__(self, data):
        if type(data) == str:
            self.data = open_file_b(data)
        elif type(data) == bytes:
            self.data = data
        self.readname()
    
    def readname(self):
        data = BytesReader(self.data)
        self.not_care = data.read(0x7112)
        # self.not_care = data.read(0xa115)
        self.namecount = data.readU32()
        self.names = []
        for i in range(self.namecount):
            name = data.read(260).split(b'\x00')[0].decode("932")
            self.names.append(name)

    def get_name(self, idx):
        return self.names[idx]
    
    def change_names(self, namedict):
        for i in range(self.namecount):
            if self.names[i] in namedict:
                self.names[i] = namedict[self.names[i]]

    def save(self, path):
        out = self.not_care + to_bytes(self.namecount, 4)
        for name in self.names:
            nameline = name.encode("932") + b"\x00"
            out += nameline + b"\xcc" * (260 - len(nameline))
        save_file_b(path, out)

    def gen_namedict(self):
        namedict = {}
        for i in self.names:
            namedict[i] = i
        save_json("namedict.json", namedict)

if __name__ == "__main__":
    gsd = GSD_GLOBAL_DAT("gsp_d\\GLOBAL.DAT")
    gsd.gen_namedict()