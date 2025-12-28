from LIB.Lib import *
res = []
s = set()
with open("sokubaku_kaisou.dbs.out.txt", "r", encoding="utf-16-le") as f:
    for line in f.readlines():
        line = line.strip()
        if "_" in line:
            continue
        if "－" in line:
            continue
        if line in s:
            continue
        s.add(line)
        res.append({"message":line.replace("♪", ""), "ori": line.replace("♪", "")})

save_json("gt_input\\sokubaku_kaisou.dbs.out.json", res)