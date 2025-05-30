import os
from Lib import *
from MED_FILE import *

key=[155, 146, 207, 205, 171, 203, 201, 169, 188, 199, 175, 206, 158, 186, 140, 199]

def repack(oripath,outpath):
    key=[155, 146, 207, 205, 171, 203, 201, 169, 188, 199, 175, 206, 158, 186, 140, 199]
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    # f=MEDFile("md_scr.med")
    f=MEDFile("md_scr.med", key)
