from Lib import *

out = ""
replacedata = open_json("replace.json")
for i in replacedata:
    out += replacedata[i]
    out += i
out = out.encode('utf8')
save_file_b("data.bin", out)