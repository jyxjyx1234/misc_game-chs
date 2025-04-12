from Lib import *

path = "D:\\CHS\\misc_game-chs\\聖娼女\\release\\g00\\"

for file in os.listdir(path):
    if "_moji_AN48_" in file:
        print(file)
        data = open_file_b(path + file)
        save_file_b(path + file.replace("_moji_AN48_", "_moji_SE48_"), data)