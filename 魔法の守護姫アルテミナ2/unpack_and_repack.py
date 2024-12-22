import os
from Lib import *

key=[184, 155, 142, 145, 146, 155, 183, 141, 191, 144, 145, 142, 145, 152, 153, 139]

def repack(oripath,outpath):
    key=[184, 155, 142, 145, 146, 155, 183, 141, 191, 144, 145, 142, 145, 152, 153, 139]
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    f=MEDFile("md_scr.med",key)
