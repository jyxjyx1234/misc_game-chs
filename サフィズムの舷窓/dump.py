from GSC_FILE_NEW import *
from Lib import *
import os, re

oriPath = "GSC\\"
oriFiles = os.listdir(oriPath)
outpath = "gt_input\\"
os.makedirs(outpath, exist_ok=True)

for i in oriFiles:
    f = GSC_FILE(oriPath+i)
    out = OriJsonOutput()
    out.preProcess = lambda x: re.sub(r'\^[0-9a-zA-Z]*', '', x)
    f.dump_text(out)
    out.save_json(outpath+i+".json")