from Lib import *
from KR_PROCESS import *

oriPath = "scenario"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

textCount = 0
namedict = {}

script_flag = False

for file in os.listdir(oriPath):
    lines = open(os.path.join(oriPath, file), "r", encoding="utf-16").readlines()
    out = OriJsonOutput()
    out.preProcess = remove_nested_brackets_print
    for i, line in enumerate(lines):
        line = line.strip()
        if line == "":
            continue
        if line == "@iscript":
            out.append_dict()
            script_flag = True
            continue
        if line == "@endscript":
            script_flag = False
            continue
        if script_flag:
            continue
        if re.match(r"[\*#;$@/●]", line):
            out.append_dict()
            continue
        if line.startswith("[") and not line.startswith("[名")  and not line.startswith("[年"):
            out.append_dict()
            name = line[1:-1]
            if not re.match(r"[0-9a-zA-Z\\/]", name):
                if " " in name:
                    name = name.split(" ")[0]
                if name not in ["思考", "地の文"]:
                    out.add_name(name)
                continue
        if remove_nested_brackets(line) == "":
            continue
        line = process_ruby(line)
        line = replace_name(line)
        text = remove_nested_brackets(line)
        out.add_text(line)
        out.dic["pos"] = out.dic.get("pos", []) + [i]
        if text.endswith("。") or text.endswith("？") or text.endswith("！") or text.endswith("：") or text.endswith("》") or text.endswith("）") or line.endswith("]") or "：" in text or "・" in text:
            out.append_dict(remove_name=False)
    out.save_json(os.path.join(outPath, file + ".json"))
    textCount += out.textcount
    namedict.update(out.get_names())
print(f"Total text count: {textCount}")
save_json("namedict.json", namedict)