from Lib import *
import struct
import lzma
import 

class AssetPack:
    def __init__(self) -> None:
        pass

    def readFile(self, data):
        self.data = BytesReader(data)
        self.head = self.data.read(30)
        self.length = int.from_bytes(self.data.read(8), "big")
        self.compressed_block_len = int.from_bytes(self.data.read(4), "big")
        self.ori_block_len = int.from_bytes(self.data.read(4), "big")
        self.ArchiveFlags = int.from_bytes(self.data.read(4), "big")
        dec_data = lzma.decompress(self.data.data[0x40:])
        save_file_b("test", dec_data)

if __name__ == "__main__":
    data = open_file_b("assets\\00306.assets")
    asset = AssetPack()
    asset.readFile(data)
