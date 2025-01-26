import os
from Lib import *
from MED_FILE import *

key=[167, 145, 171, 140, 145, 140, 141, 171, 149, 151, 140, 191, 151]

def repack(oripath,outpath):
    key=[167, 145, 171, 140, 145, 140, 141, 171, 149, 151, 140, 191, 151]
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    # f=MEDFile("md_scr.med")
    f=MEDFile("md_scr.med", key)
