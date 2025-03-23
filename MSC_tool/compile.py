from Lib import *
from MSCFile import *
import os

transTXTPath = "transTXT\\"
outPath = "release\\Scenario\\"
os.makedirs(outPath, exist_ok=True)
files = os.listdir(transTXTPath)

for f in files:
    mscf = MSCFileComplier(transTXTPath + f)
    data = list(mscf.compile())
    # data = [i ^ 0x77 for i in data]
    data = bytes(data)
    save_file_b(outPath + f.replace(".txt", ".msc"), data)
