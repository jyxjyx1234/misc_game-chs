from Lib import *

oripath = "SBY"
outpath = "gt_input"
info =  StatusInfo()
os.makedirs(outpath, exist_ok=True)

def preProcess(text):
    text = re.sub(r"\$K#E#C$", "", text)
    text = re.sub(r"\$3#R$", "", text)
    text = re.sub(r"^#C\$[a-zA-Z0-9]", "", text)
    text = re.sub(r"#C;", "", text)
    text = re.sub(r"#R$", "", text)
    text = re.sub(r"\$K#W#C$", "", text)
    text = re.sub(r"\$K$", "", text)
    text = re.sub(r"\$N$", "", text)
    text = re.sub(r"#R", "", text)
    text = re.sub(r"^　\$L", "", text)
    return text

opt_output = OriJsonOutput()
for f in os.listdir(oripath):
    out = OriJsonOutput()
    data = open_file_b(os.path.join(oripath, f))
    matches = re.finditer(rb'(?<=\x57)([\x05-\xfe])*?(?=\x00)', data)
    for m in matches:
        text = m.group(0).decode("932")
        text = preProcess(text)
        if text.endswith("]"):
            text = text[1:-1]
            out.add_name(text)
            out.dic["name_ori"] = m.group(0).hex()
        else:
            out.add_text(text)
            out.dic["ori"] = m.group(0).hex()
            out.append_dict()
    opt_matches = re.finditer(rb'(?<=\x03)([\x05-\xfe])+?(?=\x00)', data)
    for m in opt_matches:
        text = m.group(0).decode("932")
        opt_output.add_text(text)
        opt_output.dic["ori"] = m.group(0).hex()
        opt_output.append_dict()

    info.update(out)
    out.save_json(os.path.join(outpath, f + ".json"))
info.update(opt_output)
info.output(False)
opt_output.save_json(os.path.join(outpath, "opt.json"))
