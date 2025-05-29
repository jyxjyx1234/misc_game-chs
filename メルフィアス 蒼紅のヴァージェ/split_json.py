from Lib import *
orifile = "split\\CommonEvents_2.json"
ori = open_json(orifile)[1699:]
out = orifile.replace(".json", "") + "\\"
os.makedirs(out, exist_ok=True)
idx = 0
for i in range(0, len(ori), 300):
    res = []
    for j in range(i, min(i + 300, len(ori))):
        res.append(ori[j])
    save_json(out + str(idx) + ".json", res)
    idx += 1
res = ori[i:]
save_json(out + str(idx) + ".json", res)
