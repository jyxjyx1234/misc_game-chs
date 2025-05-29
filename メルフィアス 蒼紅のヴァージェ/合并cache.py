from Lib import *


orifilepath = "transl_cache\\CommonEvents_2.json"
orifile = open_json(orifilepath)
idx = orifile[-1]["index"] + 1

for i in range(100):
    try:
        data = open_json(orifilepath.replace(".json", "") + "-}" + str(i) + ".json")
    except:
        break
    for d in data:
        d["index"] = idx
        idx += 1
        orifile.append(d)

save_json(orifilepath, orifile)