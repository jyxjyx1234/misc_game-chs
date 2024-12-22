from SNR_FILE import *

oripath = "TRANSED\\"
files = os.listdir(oripath)
outpath = "release\\trans\\"
os.makedirs(outpath, exist_ok=True)

for f in files:
    ori = oripath + f
    print(f)
    out = SNR_COMPILER(ori).complie()
    save_file_b(outpath + f, out)
