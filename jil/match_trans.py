from Lib import *

transPath = "gt_output\\"
orilist = []
translist = []
for f in os.listdir(transPath):
    transdata = open_json(transPath + f)
    for t in transdata:
        orilist.append(t["ori"])
        translist.append(t["message"])

extraJsonPath = "extra_json\\"
extraTransPath = "extra_trans\\"
extraTransPath2 = "extra_trans2\\"

os.makedirs(extraTransPath, exist_ok=True)
os.makedirs(extraTransPath2, exist_ok=True)

for f in os.listdir(extraJsonPath):
    data = open_json(extraJsonPath + f)
    orilist_ = []
    for d in data:
        orilist_.append(d["ori"])
    for i in range(0, len(orilist) - len(orilist_)):
        if orilist[i:i+len(orilist_)] == orilist_:
            for j in range(0, len(orilist_)):
                data[j]["message"] = translist[i+j]
            save_json(extraTransPath + f, data)
            break
    else:
        for i in range(0, len(orilist) - 5):
            if orilist[i:i+5] == orilist_[:5]:
                for j in range(0, len(orilist_)):
                    data[j]["message"] = translist[i+j]
                save_json(extraTransPath2 + f, data)
                break
        else:
            print("Not found: ", f)