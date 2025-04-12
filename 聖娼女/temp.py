from Lib import *

n1 = open_json("namedict.json")
n2 = open_json("namedict_.json")

for name in n1:
    if not name in n2:
        n2[name] = n1[name]

save_json("namedict.json", n2)