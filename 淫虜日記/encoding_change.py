from Lib import *
import os

folder = "src\\"
files = os.listdir(folder)
for i in files:
    if i[-3:] == ".ks" or i[-3:] == "tjs" or i[-3:] == "src":
        data = open_file_b(folder + i)
        data = data.decode("cp932").encode("utf16")
        save_file_b(folder + i, data)
    if i[-3:] == "txt":
        try:
            data = open_file_b(folder + i)
            data = data.decode("cp932").encode("936")
            save_file_b(folder + i, data)
        except:
            print(f"Error processing file: {i}")