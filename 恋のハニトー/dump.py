from TOBFile import *

oriPath = "ori\\"
outOriJsonPath = "gt_input\\"
os.makedirs(outOriJsonPath, exist_ok = True)

fileNames = os.listdir(oriPath)
namedict = {}

for fileName in fileNames:
    try:
        f = TOBFile(path = oriPath + fileName)
    except:
        print(fileName)
        continue
    
    nd = f.dump(outOriJsonPath + fileName.replace(".tob", ".json"))
    namedict.update(nd)

#save_json("namedict.json", namedict)