from Lib import *
import os

folder = "D:\CHS\misc_game-chs\尽くして愛DOLL\\release\data\system\\"
files = os.listdir(folder)
for i in files:
    if i[-3:] != "tjs":
        continue
    data = open_file_b(folder + i)
    try:
        data = data.decode("cp932").encode("utf16")
        save_file_b(folder + i, data)
    except:
        pass
