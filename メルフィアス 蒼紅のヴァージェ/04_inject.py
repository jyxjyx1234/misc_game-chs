from Lib import *

transDataPath = "trans"
oriDataPath = "data"
outputPath = "release\\www\\data_chs"
os.makedirs(outputPath, exist_ok=True)
for f in os.listdir(transDataPath):
    transData = open_json(os.path.join(transDataPath, f))
    oriData = open_json(os.path.join(oriDataPath, f))

    for data in transData:
        if "path" not in data:
            continue
        text = data["ori"]
        path = data["path"][1:]
        pathstr = ""
        for p in path:
            if type(p) == str:
                pathstr += f"['{p}']"
            else:
                pathstr += f"[{p}]"
        exec(f"oriData{pathstr} = text")
    
    save_json_no_indent(os.path.join(outputPath, f), oriData)