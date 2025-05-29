from Lib import *
from KR_PROCESS import *

oriPath = "scr\\"
outPath = "gt_input\\"
os.makedirs(outPath, exist_ok=True)

info = StatusInfo()

for file in os.listdir(oriPath):
    lines = open(os.path.join(oriPath, file), "r", encoding="utf_16").readlines()
    out = OriJsonOutput()
    out.preProcess = remove_nested_brackets_print
    scr_flag = False
    for i, line in enumerate(lines):
        line = line.strip("\n").strip("\r").strip("\t").strip()
        if line == "[iscript]":
            scr_flag = True
        if line == "[endscript]":
            scr_flag = False
        if scr_flag:
            continue
        if line == "":
            out.append_dict()
            continue
        
        if re.search(r'\[seladd text="(.*?)"', line):
            out.append_dict()
            opt = re.search(r'\[seladd text="(.*?)"', line).group(1)
            out.add_text(opt)
            out.dic["optpos"] = i
            out.append_dict()

        if remove_nested_brackets(line) == "":
            out.append_dict()
            continue
        
        if re.match(r"[\*#;$@/]", line):
            out.append_dict()
            continue

        if re.match(r"【(.*?)】$", line):
            m = re.match(r"【(.*?)】$", line)
            if "/" in m.group(1):
                name = m.group(1).split("/")[1]
            else:
                name = m.group(1)
            out.add_name(name)
            out.dic["namepos"] = i
            # out.append_dict()
            continue

        if re.match(r"【(.*?)】(.*?)", line):
            m = re.match(r"【(.*?)】(.*?)", line)
            if "/" in m.group(1):
                name = m.group(1).split("/")[1]
            else:
                name = m.group(1)
            message = m.group(2)
            out.add_name(name)
            out.add_text(message)
            out.dic["namepos"] = i
            out.dic["msgpos"] = out.dic.get("msgpos", []) + [i]
            # out.append_dict()
            continue
        
        out.add_text(line)
        out.dic["msgpos"] = out.dic.get("msgpos", []) + [i]
        # out.append_dict()
    out.save_json(os.path.join(outPath, file + ".json"))
    info.update(out)

info.output(isSaveName=True)
