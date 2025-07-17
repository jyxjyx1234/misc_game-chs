from Lib import *

oriPath = "dump"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

namedict = {}
textCount = 0

pattern = re.compile(r'CPL\((?P<name>.*?)\)|CP\((?P<text>.*?)\)|SEP\((?P<sel>.*?)\)|ST\((?P<text2>.*?)\)|&(?P<ptr>.*?)&', re.DOTALL)
#CPL\((.*?)\)|CP\((.*?)\)"|SEP\((.*?)\)

file = "script.txt"
lines = open(os.path.join(oriPath, file), "r", encoding="932").read()
out = OriJsonOutput()
last_ptr_name = "script"
for match in pattern.finditer(lines):
    if match.group("name"):
        name = match.group("name")
        name = name.split(",")[-1]
        if name != "\u3000":
            out.add_name(name)
    elif match.group("sel"):
        sel = match.group("sel")
        sel = sel.split(",")
        num_of_sel = int(sel[0])
        for i in range(num_of_sel):
            out.add_text(sel[i + 1])
            out.append_dict()
    elif match.group("text"):
        text = match.group("text")
        text = text.replace("\n", "")
        out.add_text(text)
        out.append_dict()
    elif match.group("text2"):
        text = match.group("text2")
        text = text.replace("\n", "")
        out.add_text(text)
        out.append_dict()
    # elif match.group("ptr"):
    #     out.save_json(os.path.join(outPath, last_ptr_name + ".json"))
    #     namedict.update(out.get_names())
    #     textCount += out.textcount
    #     last_ptr_name = match.group("ptr")
    #     out = OriJsonOutput()

out.save_json(os.path.join(outPath, last_ptr_name + ".json"))        
namedict.update(out.get_names())
textCount += out.textcount

# save_json("namedict.json", namedict)
print("text count:", textCount)