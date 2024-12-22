from Lib import *
from GGP_FILE import *
import os

ori_path = "GGD\\"
out_path = "GGD_conved\\"
os.makedirs(out_path,exist_ok=True)

files = os.listdir(ori_path)
for f in files:
    ggp = GGP_FILE()
    ggp.load_from_path(ori_path + f)
    ggp.decrypt()
    ggp.savepng(out_path + f + ".png")