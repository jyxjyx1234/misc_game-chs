from Lib import *

ori_path = "PMX\\"
files = os.listdir(ori_path)
os.makedirs("gt_input", exist_ok=True)
allTextCount = 0
namedict = {}

for file in files:
    f = open(ori_path + file, "r", encoding="932").read()
    out = OriJsonOutput()
    matches = re.finditer(r"(?<=PutText 0,,).*", f)
    for match in matches:
        text = match.group(0) 
        text = re.sub(r"\\i\(.*?\)", "", text)
        if "]" in text:
            name, text = text.split("]")
            name = name[1:]
            name = name.replace("\u3000", "")
            text = text.replace("\\n", "")
            out.add_name(name)
            out.add_text(text)
            out.append_dict()
        else:
            text = text.replace("\\n", "")
            out.add_text(text)
            out.append_dict()
    out.save_json("gt_input\\" + file + ".json")
    allTextCount += out.textcount
    namedict.update(out.get_names())

print(allTextCount)
#save_json("namedict.json", namedict)