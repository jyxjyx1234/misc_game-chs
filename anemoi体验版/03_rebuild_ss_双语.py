import os

isfake = False

os.system("python 03_rebuild_ss.py makeCN_JP_pack" + ("fake" if isfake else ""))
os.system("python 03_rebuild_ss.py pack" + ("fake" if isfake else ""))