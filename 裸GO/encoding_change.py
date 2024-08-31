from Lib import *
import os

folder = "snr\\"
files = os.listdir(folder)
for i in files:
    if i[-3:] == "snr":
        data = open_file_b(folder + i)
        try:
            data = data.decode("cp932").encode("utf16")
            save_file_b(folder + i, data)
        except:
            pass
