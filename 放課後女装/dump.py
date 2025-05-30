from Lib import *

oriPath = "MSD_DUMP\\"
outPath = "gt_input\\"

os.makedirs(outPath, exist_ok=True)
info = StatusInfo()

pattern = re.compile(rb"(?<=\x03)[\x81-\xfe][\x20-\xfe]+?(?=\x00)")

for file in os.listdir(oriPath):
    out = OriJsonOutput()
    data = open_file_b(oriPath + file)
    matches = pattern.finditer(data)
    for match in matches:
        text = match.group()
        try:
            text = text.decode("932")
        except:
            print("Decode Error: ", text)
            continue
        out.add_text(text)
        out.append_dict()
    out.save_json(outPath + file + ".json")
    info.update(out)
info.output(1)