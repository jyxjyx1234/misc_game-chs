from Lib import *
ori = open_file_b("PROSNR.DAT0")
info = ori[0x93502:]
info = list(info)
filenum = len(info) // 0x10
out = []
for idx in range(filenum):
    filename = info[idx * 0x10 : idx * 0x10 + 0x10 - 4]
    while filename[-1] == 0:
        filename.pop()
    filename = bytes(filename).decode("932")
    data = open_file_b("release\PROSNR\\" + filename)
    out.append(data)
    length = to_bytes(len(data), 4)
    info[idx * 0x10 + 0x10 - 4 : idx * 0x10 + 0x10] = list(length)

out = b"".join(out)

result = ori[:10] + to_bytes(len(out) + 0x10, 6) + out + bytes(info)
save_file_b("release\CHSSNR.dat", result)