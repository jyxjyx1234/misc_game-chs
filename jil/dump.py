from Lib import *

pattern = re.compile(rb'(?<=\x00)[\x01-\xff]+?(?=\x00[\x61\x65\x8e\x49\x62\x59\x30\x7f][\x00-\x10])')

oriPath = "SCR\\"
outPath = "gt_input\\"

os.makedirs(outPath, exist_ok=True)
allTextCount = 0
for file in os.listdir(oriPath):
    data = open_file_b(os.path.join(oriPath, file))
    out = OriJsonOutput()
    matches = pattern.finditer(data)
    for match in matches:
        if len(match.group()) < 2:
            continue
        out.add_text(match.group().decode('932'))
        out.dic["start"] = match.start()
        out.append_dict()
    out.save_json(os.path.join(outPath, file + ".json"))
    allTextCount += out.textcount


print("All text count: ", allTextCount)

oriPath = "extra_scr\\"
outPath = "extra_json\\"

os.makedirs(outPath, exist_ok=True)
allTextCount = 0
for file in os.listdir(oriPath):
    data = open_file_b(os.path.join(oriPath, file))
    out = OriJsonOutput()
    matches = pattern.finditer(data)
    for match in matches:
        if len(match.group()) < 2:
            continue
        out.add_text(match.group().decode('932'))
        out.dic["start"] = match.start()
        out.append_dict()
    out.save_json(os.path.join(outPath, file + ".json"))
    allTextCount += out.textcount
