from Lib import *

for f in os.listdir("arc"):
    data = open_file_b("arc\\" + f)
    save_file_b("arc\\" + f, data, b"\x55")

    