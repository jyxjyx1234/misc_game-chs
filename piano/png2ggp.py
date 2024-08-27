from Lib import *
from GGP_FILE import *
import os

ori_path = "GGD\\"
transed_path = "GGD_transed\\"
out_path = "release\\GGD1\\"
os.makedirs(out_path,exist_ok=True)

files = os.listdir(ori_path)
for f in files:
    ggp = GGP_FILE()
    ggp.load_from_path(ori_path + f)
    ggp.load_from_png(transed_path + f + ".png")
    ggp.decrypt()
    ggp.saveggp(out_path + f)