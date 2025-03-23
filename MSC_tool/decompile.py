from Lib import *
import re, os
from MSCFile import *

oriPath = "Scenario//"
oriTXTPath = "oriTXT//"
os.makedirs(oriTXTPath, exist_ok=True)
files = os.listdir(oriPath)


for f in files:
    print(f)
    oriFilePath = oriPath + f
    oriFile = open_file_b(oriFilePath)
    oriFile = list(oriFile)
    # oriFile = [i ^ 0x77 for i in oriFile]
    oriFile = bytes(oriFile)
    mscf = MSCFile(oriFile, outPath = oriTXTPath + f.replace(".msc", ".txt"))
    mscf.readCodeData()