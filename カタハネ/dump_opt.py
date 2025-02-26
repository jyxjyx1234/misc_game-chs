from Lib import *

files = os.listdir("scenario")
files = [file for file in files if file.endswith(".mjil")]
for file in files:
    f = open("scenario" + "/" + file, "r", encoding="utf8").readlines()
    i = 0
    out = OriJsonOutput()
    while i < (len(f)):
        if re.search(r"call *\$\$select@MENU \(([0-9])\)", f[i]):
            select_num = int(re.search(r"call *\$\$select@MENU \(([0-9])\)", f[i]).group(1))
            select = []
            for _ in range(select_num):
                opt_text = re.search(r'ldstr *"(.*?)"', f[i - _ - 1]).group(1)
                print(opt_text)
                out.add_text(opt_text)
                out.dic["pos"] = i - _ - 1
                out.append_dict()
        i += 1
    if out.outlist != []:
        out.save_json("gt_input\\" + file.replace(".mjil", "_opt.json"))