from GSC_FILE import *
from Lib import *
import os, re
import sys

def help():
    print("Usage: python dump.py <input> <output>")
    print("Example: python dump.py C:\\gsc_files_path C:\\output_txts_path")
    sys.exit(1)
    
try:
    oriPath = sys.argv[1]
    outPath = sys.argv[2]
    os.makedirs(outPath, exist_ok=True)
except:
    help()
oriFiles = os.listdir(oriPath)

for f in oriFiles:
    if "gsc" in f:
        print(f)
        oriFilePath = os.path.join(oriPath, f.replace(".gsc", ""))
        gscf = GscFile(oriFilePath, 0)
        gscf.ReinitAll()
        gscf.FileName = os.path.join(outPath, f.replace(".gsc", ""))
        gscf.DecompileGscToTxt()

