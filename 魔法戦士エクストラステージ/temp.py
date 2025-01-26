from Lib import *

data = open_file_b("md_scr\E01_0")
out = open("temp.txt", "w")
d = " ".join([data[j:j+1].hex() for j in range(0, len(data))])
out.write(f"{d}\n")