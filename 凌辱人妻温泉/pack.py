from Lib import *

oriPath = "release/script"
outPath = "release/GR.CHS"

outf = open(outPath, "wb")
outf.write(b"\x56\x41\x46\x53\x48\x20\x20\x20\x20\x20\x20\x20\x47\x52\x2E\x30")
outf.write(b"\x00" * (0x8000 - 0x10))

pos = 0x8000
for i in range(1475):
    outf.seek(0x10 + i * 4)
    outf.write(to_bytes(pos, 4))
    outf.seek(pos)
    filename = f"GR#{i:05d}"
    filedata = open_file_b(os.path.join(oriPath, filename))
    outf.write(filedata)
    pos = outf.tell()
outf.seek(0x10 + 1475 * 4)
outf.write(to_bytes(pos, 4))
