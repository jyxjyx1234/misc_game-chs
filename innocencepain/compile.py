from fuck_grp import *

oripath = "event_transed\\"
files = os.listdir(oripath)
outpath = "event_d_c\\"
os.makedirs(outpath, exist_ok=True)

newcharlist = open_file_b("charlist.txt")
char2offset = {}
for i in range(0, len(newcharlist), 2):
    offset2char[i//2] = newcharlist[i:i+2].decode("932")
    if newcharlist[i:i+2].decode("932") not in char2offset:
        char2offset[newcharlist[i:i+2].decode("932")] = i//2

for f in files:
    ori = oripath + f
    print(f)
    out = GRP_Complier(ori).complie(char2offset)
    save_file_b(outpath + f.replace(".txt",""), out)
