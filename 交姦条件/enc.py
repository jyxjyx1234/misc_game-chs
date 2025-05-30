from Lib import *

def enc(path, outpath, key):
    data = open_file_b(path)
    save_file_b(outpath, data, key)

if __name__ == "__main__":
    data = open_file_b("scr.dat")
    head = data[:0x10]
    data = data[0x10:]
    data = bytearray(data)
    for i in range(len(data)) :
        data[i] ^= 0x81
    data = head + bytes(data)
    save_file_b("scr.dat.dec", data)
    