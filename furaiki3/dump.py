from Lib import *

oriPath = "script.txt"
outPath = "gt_input"
os.makedirs(outPath, exist_ok=True)

info = StatusInfo()

isForceName = False
if isForceName:
    namedict = open_json("namedict.json")

datas = open(oriPath, "r", encoding="utf-8").readlines()
out = OriJsonOutput()
curentname = ""
curentname_set = set()
for i, line in enumerate(datas):
    if 'CallMember "WitchWizard::OutMsg"' in line:
        _ = 0
        tar = 0
        while _ < 7:
            if "Operate.Add" in datas[i - tar]:
                _ -= 2
            _ += 1
            tar += 1
        nameline = datas[i - tar]
        msgline = datas[i - tar + 1]
        try:
            if 'Load String ""' not in nameline:
                name = re.search(r'Load String "(.*?)"', nameline).group(1)
                out.add_name(name)
            msg = re.search(r'Load String "(.*?)"', msgline).group(1)
            out.add_text(msg)
            out.append_dict()
        except:
            print(nameline.strip())
            print(msgline.strip())
            raise ValueError(f"Error parsing line {i}: {line.strip()}")
    elif 'CallMember "WitchWizard::AddMenuItem"' in line:
        menuline = datas[i - 2]
        menutext = re.search(r'Load String "(.*?)"', menuline).group(1)
        if menutext:
            # print(f"Adding menu item: {menutext}")
            out.add_text(menutext)
            out.append_dict()
    # elif 'CallMember "WitchWizard::SetCurrentDescription"' in line:
    #     descline = datas[i - 1]
    #     try:
    #         desc = re.search(r'Load String "(.*?)"', descline).group(1)
    #         if desc:
    #             out.add_text(desc)
    #             out.append_dict()
    #     except:
    #         print(descline.strip())
    #         raise ValueError(f"Error parsing line {i}: {line.strip()}")
    elif 'CallMember "WitchWizard::SetCurrentScriptName"' in line:
        if curentname not in curentname_set:
            out.save_json(outPath + f"/{curentname}.json")
            curentname_set.add(curentname)
        else:
            while True:
                curentname += "_"
                if curentname not in curentname_set:
                    out.save_json(outPath + f"/{curentname}.json")
                    curentname_set.add(curentname)
                    break
        info.update(out)
        curentnameline = datas[i - 1]
        try:
            curentname = re.search(r'Load String "(.*?)"', curentnameline).group(1)
        except:
            raise ValueError(f"Error parsing line {i}: {line.strip()}")
        out = OriJsonOutput()
out.save_json(outPath + f"/{curentname}.json")

info.update(out)
info.output(0)