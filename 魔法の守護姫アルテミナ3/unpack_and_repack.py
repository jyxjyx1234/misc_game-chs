import os
from Lib import *

key=[141, 176, 139, 174, 147, 183, 147, 178, 145, 189, 146, 187, 155, 173, 142, 173]

def repack(oripath,outpath):
    key=[141, 176, 139, 174, 147, 183, 147, 178, 145, 189, 146, 187, 155, 173, 142, 173]
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    f=MEDFile("md_scr.med",key)
