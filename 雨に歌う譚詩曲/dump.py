from Lib import *

oriPath = "dump"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

namedict = {}
textCount = 0

pattern = re.compile(r'#(?P<name>.*?)\n|&[0-9]*"(?P<text>.*?)"|\n39\((?P<sel>.*?)\)', re.DOTALL)

files = os.listdir(oriPath)
for file in files:
    lines = open(os.path.join(oriPath, file), "r", encoding="932").read()
    out = OriJsonOutput()
    for match in pattern.finditer(lines):
        if match.group("name"):
            name = match.group("name")
            if "=" in name:
                name = name.split("=")[0]
            if name != "\u3000":
                out.add_name(name)
        elif match.group("sel"):
            sel = match.group("sel")
            sel = sel.split(",")
            num_of_sel = int(sel[-1])
            for i in range(num_of_sel):
                out.add_text(sel[i + 1])
                out.append_dict()
        else:
            text = match.group("text")
            text = text.replace("\n", "")
            out.add_text(text)
            out.append_dict()
    out.save_json(os.path.join(outPath, file.replace(".txt", ".json")))
    namedict.update(out.get_names())
    textCount += out.textcount

# save_json("namedict.json", namedict)
print("text count:", textCount)