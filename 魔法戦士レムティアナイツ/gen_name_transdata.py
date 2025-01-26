from Lib import *
from HanziReplacer import *

def gen_name_transdata(h:HanziReplacer = HanziReplacer(), k = None):
    names = open("namedict.txt", "r", encoding="utf-8").read().strip("\n").split("\n")
    num_of_names = len(names) + 1
    offsets = b"\x00\x00\x00\x00"
    namebytes = b"\x00"
    for n in names:
        n = n.split("=")[1]
        n = h.hanzitihuan(n)
        n = n.encode("932")
        offsets += to_bytes(len(namebytes), 4)
        namebytes += n + b"\x00"
    out = to_bytes(num_of_names, 4) + offsets + namebytes
    if k:
        out = bytes([out[i] ^ k[i % len(k)] for i in range(len(out))])
    save_file_b("release\\data3.bin", out)

if __name__ == "__main__":
    gen_name_transdata()