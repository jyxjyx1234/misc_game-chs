from Lib import *

path = "transl_cache"

combine_len = 10
processed = []

for file in os.listdir(path):
    if m := re.match(r"(.*.json)_([0-9]*).json$"):
        fn = m.group(1)
        if fn in processed:
            continue
        processed.append(fn)
        combined = []
        i = 0
        while True:
            partfile = f"{fn}_{i}.json"
            fullpath = os.path.join(path, partfile)
            if not os.path.exists(fullpath):
                break
            partdata = open_json(fullpath)
            if i != 0:
                partdata = partdata[combine_len * 2:]
            combined.extend(partdata)
            i += 1
        save_json(os.path.join("gt_output", f"{fn}"), combined)

            
        
        
