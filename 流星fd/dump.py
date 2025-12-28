from ksReader import *

oriPath = "scenario"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

info = StatusInfo()

for file in os.listdir(oriPath):
    if file.endswith(".ks"):
        ksfile = KsFile(os.path.join(oriPath, file))
        res = ksfile.dump()
        info.update(res)
        res.save_json(os.path.join(outPath, file + ".json"))

info.output(0)