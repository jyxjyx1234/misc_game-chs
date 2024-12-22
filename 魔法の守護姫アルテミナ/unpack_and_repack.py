import os
from Lib import *

key=[159,142,140,155,147,151,146,159,161,156,159,151,141,139,149,151]

def repack(oripath,outpath):
    f=MEDFile("md_scr.med",key)
    f.repack(oripath,outpath)

if __name__=='__main__':
    f=MEDFile("md_scr.med",key)