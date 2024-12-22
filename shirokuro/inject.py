from Lib import *

trans_path = "gt_output"
ori_path = "scr"
out_path = "release/trans"
os.makedirs(out_path, exist_ok=True)
files = os.listdir(ori_path)
namedict = open_json("namedict.json")
sel_mode = False
sel_buffer = []

for filename in files:
    filepath = os.path.join(ori_path, filename)
    transfilepath = os.path.join(trans_path, filename+".json")
    try:
        transjson = open_json(transfilepath)
    except:
        transjson = []
    outfilepath = os.path.join(out_path, filename.replace(".bytes", ".lua"))
    outfile = open(outfilepath, "w", encoding="utf16")
    lines = open(filepath, "r", encoding="utf8").readlines()
    i = 0
    for line in lines:
        # outfile.write(line)
        # continue
        i += 1
        line = line.strip()
        if line.startswith("-"):#comment
            if i < 6:
                outfile.write(line+"\n")
            continue
        if re.match('setname\("(.*?)"', line):
            line = re.sub('setname\("(.*?)"',lambda x:'setname("' + namedict[x.group(1)] + '"', line)
        if re.match('text[rl]?\("(.*?)"\)', line):
            transtext = transjson.pop(0)["message"]
            transtext = replace_halfwidth_with_fullwidth(transtext)
            line = re.sub('(text[rl]?\(")(.*?)"\)', lambda x: x.group(1) + transtext + '")',line)
        if sel_mode and re.search('item\[[0-9]\]="(.*?)"', line):
            transtext = transjson.pop(0)["message"]
            transtext = replace_halfwidth_with_fullwidth(transtext)
            sel_buffer.append(transtext)
        if re.match(r"item={}", line):
            sel_mode = True
        if re.search(r"sel\(|selEx\(", line):
            line = line.replace('selEx("B"', 'selEx("W"')
            outfile.write("cls1()\nnoname()\ntext(\"")
            idx = 1
            if len(sel_buffer) < 4:
                for sel in sel_buffer:
                    outfile.write(f"选项{idx}：{sel}\\n")
                    idx += 1
            else:
                for sel in sel_buffer:
                    outfile.write(f"选项{idx}：{sel}")
                    if idx % 2 == 0:
                        outfile.write("\\n")
                    else:
                        outfile.write("    ")
                    idx += 1
            outfile.write("\")\n")
            sel_buffer = []
            sel_mode = False
        outfile.write(line+"\n")
    if len(transjson) > 0:
        print("Warning: %s has more translation than original" % filename)
    outfile.close()
   