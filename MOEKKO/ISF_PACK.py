from Lib import *
from Encrypt import *

oriPath = "ISF1_out\\"
outPath = "release\\ISF1"

files = os.listdir(oriPath)
files.sort()

magic = b"SM2MPX10"
num_files = len(files)
headerlen = 0x20 + 0x14 * len(files)
unk1 = b"\x49\x53\x46\x31\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00"
filestart = headerlen + 4
entrys = []
datas = []
for file in files:
    entry = b""
    entry += file.upper().encode("932") + b"\x00" * (0x0c - len(file.upper().encode("932")))
    entry += to_bytes(filestart, 4)
    data = open_file_b(oriPath + file)
    data = EncryptData(data)
    entry += to_bytes(len(data), 4)
    entrys.append(entry)
    datas.append(data)
    filestart += os.path.getsize(oriPath + file)

with open(outPath, "wb") as f:
    f.write(magic)
    f.write(to_bytes(num_files, 4))
    f.write(to_bytes(headerlen, 4))
    f.write(unk1)
    for entry in entrys:
        f.write(entry)
    f.write(b"\x00" * 4)
    for data in datas:
        f.write(data)