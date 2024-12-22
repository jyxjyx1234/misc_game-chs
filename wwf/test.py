import zlib
from Lib import *

def enc(oripath, outpath):
    data = open_file_b(oripath)
    data = zlib.compress(data)
    data = bytes([x ^ 0x21 for x in data])
    save_file_b(outpath, data)

def change_codepage(oripath, outpath, oricp, outcp):
    data = open_file_b(oripath)
    data = data.decode(oricp).encode(outcp)
    save_file_b(outpath, data)

# files = os.listdir("PMX")
# for file in files:
#     change_codepage(f"PMX\\{file}", f"release\\PMX\\{file}", "shift-jis", "gbk")
#     enc(f"release\\PMX\\{file}", f"release\\PMX\\{file}")

data = open_file_b("Global.Pmx")
data = bytes([x ^ 0x21 for x in data])
data = zlib.decompress(data)
save_file_b("release\\PMX\\Global.Pmx", data)