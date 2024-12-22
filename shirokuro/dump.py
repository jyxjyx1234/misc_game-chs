from Lib import *

ori_path = "scr"
out_path = "gt_input"
os.makedirs(out_path, exist_ok=True)
files = os.listdir(ori_path)
namedict = {}
allcount = 0
for filename in files:
    filepath = os.path.join(ori_path, filename)
    lines = open(filepath, "r", encoding="utf8").readlines()
    out = OriJsonOutput()
    out.preProcess = lambda x: x.replace("\\n", " ")
    for line in lines:
        line = line.strip()
        if line.startswith("-"):#comment
            continue
        if re.match('setname\("(.*?)"', line):
            out.add_name(re.match('setname\("(.*?)"', line).group(1))
        if re.match("noname", line):
            out.remove_name()
        if re.match('text[rl]?\("(.*?)"\)', line):
            out.add_text(re.match('text[rl]?\("(.*?)"\)', line).group(1))
            out.append_dict()
        if re.search('item\[[0-9]\]="(.*?)"', line):
            out.remove_name()
            out.add_text(re.search('item\[[0-9]\]="(.*?)"', line).group(1))
            out.append_dict()
    out.save_json(os.path.join(out_path, filename+".json"))
    namedict.update(out.get_names())
    allcount += out.textcount
save_json("namedict.json", namedict)
print(allcount)