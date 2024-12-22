from Lib import *
import os

folder = "D:\\CHS\misc_game-chs\皇女凌俗放送\\release\\patch\\"
files = os.listdir(folder)
for i in files:
    if i[-3:] == ".ks" or i[-3:] == "tjs":
        data = open_file_b(folder + i)
        data = data.decode("cp932").encode("utf16")
        save_file_b(folder + i, data)
        
