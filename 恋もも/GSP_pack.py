from Lib import *

class GSP_file():
    def __init__(self, path):
        self.data = open_file_b(path)

    def pack(self, oripath, outpath):
        data = BytesReader(self.data)
        self.magic = data.read(4)
        outheader = self.magic
        outdata = b""
        while data.p < 0x4b44:
            offset = data.readU32()
            filesize = data.readU32()
            name = data.read(0x38)
            new_data = open_file_b(oripath + name.split(b"\x00")[0].decode("932"))
            n_filesize = len(new_data)
            n_offset = len(outdata) + 0x4b44
            outheader += to_bytes(n_offset, 4) + to_bytes(n_filesize, 4) + name
            outdata += new_data
        save_file_b(outpath, outheader + outdata)

if __name__ == "__main__":
    gsp = GSP_file("data.gsp")
    gsp.pack('release\gsp_trans_e\\', "release\data.gsp")
