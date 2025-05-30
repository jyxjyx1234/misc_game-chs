from Lib import *

def enc(path, outpath, key):
    data = open_file_b(path)
    save_file_b(outpath, data, key)

if __name__ == "__main__":
    enc("nscript.dat", "nscript.dat.dec", b"\x84")