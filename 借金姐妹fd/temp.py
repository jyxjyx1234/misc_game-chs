from Lib import *

ori = open_file_b("output.txt")
texts = ori.split(b"\x0a\x00")
trans = open_file_b("翻译结果.txt")
trans = trans[2:].split(b"\x0d\x00\x0a\x00")

out = []
for i in texts:
    out.append(i + b":\x00:\x00:\x00" + trans.pop(0))
save_file_b("trans.dat", b"\xff\xfe" + b"\x0a\x00".join(out))