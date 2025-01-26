from Lib import *

data = open_file_b("script\\cast.spt")
out = open("temp_cast.txt", "w")
d = " ".join([data[j:j+1].hex() for j in range(0, len(data))])
out.write(f"{d}\n")