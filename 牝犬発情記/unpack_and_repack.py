import os
from Lib import *
from MED_FILE import *

key=[155, 141, 156, 148, 140, 147]

def repack(oripath,outpath):
    key=[155, 141, 156, 148, 140, 147]
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    # f=MEDFile("md_scr.med")
    f=MEDFile("md_scr.med", key)
