from Lib import *
import csv

packages = ["scenario", "update"]
namedict = open_json("namedict.json")
alltextcount = 0
for package in packages:
    files = os.listdir(package)
    files = [package + "/" + file for file in files if file.endswith(".mjres")]
    for file in files:
        mjil_file = open(file.replace("mjres", "mjil"), "r", encoding="utf8").readlines()
        text_app_list = {}
        temp = ""
        flag = False
        for line in mjil_file:
            if re.search(r'%{L[0-9]*}', line):
                if not flag:
                    temp = re.search(r'%{(L[0-9]*)}', line).group(1)
                else:
                    text_app_list[temp] = text_app_list.get(temp, []) + [re.search(r'%{(L[0-9]*)}', line).group(1)]
                    flag = False
            if "$3198fd01" in line:
                flag = True
            
        out = OriJsonOutput()
        with open(file, "r", encoding="utf8") as f:
            reader = csv.reader(f.readlines()[1:])
            buffer = []
            for row in reader:
                text = row[1].replace("\n", "")
                if text == " ":
                    continue
                if "「" in text:
                    name, text = text.split("「", 1)
                    if name in namedict:
                        text = "「" + text
                        out.add_name(name)
                    else:
                        text = name + "「" + text
                out.add_text(text)
                if not out.dic.get("name", "") or out.dic["message"].endswith("」"):
                    if row[0] not in text_app_list and row[0] not in buffer:
                        out.append_dict()
                    elif row[0] in text_app_list:
                        buffer = text_app_list[row[0]][:-1]
            out.save_json(os.path.join("gt_input", file.replace(".mjres", ".json").replace("scenario/", "").replace("update/", "")))
            namedict.update(out.get_names())
            alltextcount += out.textcount

# save_json("namedict.json", namedict)
print(alltextcount)
            