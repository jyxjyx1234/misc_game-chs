from Lib import *

oriPath = "release\\A98SYS\\"
outPath = "release\\A98SYS.CHS"
oriPack = "A98SYS.pak"


oriPath2 = "release\\A98FAST\\"
outPath2 = "release\\A98FAST.CHS"
oriPack2 = "A98FAST.pak"

def pack(oriPath, outPath, oriPack):
    oridata = open_file_b(oriPack)
    oridata = BytesReader(oridata)

    out = []
    files = []

    filenum = oridata.readU16()
    out.append(to_bytes(filenum, 2))

    offset = 2 + filenum * 0x10

    for i in range(filenum - 1):
        filename = oridata.read(0x08)
        exname = oridata.read(0x04)
        _ = oridata.readU32()
        f = filename.strip(b"\x00").decode("932").strip(" ")
        e = exname.strip(b"\x00").decode("932").strip(" ")
        if e:
            f += "." + e
        data = open_file_b(oriPath + f)
        files.append(data)
        out.append(filename)
        out.append(exname)
        out.append(to_bytes(offset, 4))
        offset += len(data)
    out.append(oridata.read(0x0c))
    out.append(to_bytes(offset, 4))

    out = b"".join(out) + b"".join(files)
    save_file_b(outPath, out)

pack(oriPath, outPath, oriPack)
pack(oriPath2, outPath2, oriPack2)
