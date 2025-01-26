import os
from Lib import *
from MED_FILE import *

key=[178, 191, 180, 187, 179, 179, 173, 181, 206, 174, 187]

def repack(oripath,outpath):
    key=[178, 191, 180, 187, 179, 179, 173, 181, 206, 174, 187]
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    f=MEDFile("md_scr.med", key)
