from Lib import *
import csv

packages = ["scenario1", "scenario2"]
namedict = {}
alltextcount = 0
for package in packages:
    files = os.listdir(package)
    files = [package + "/" + file for file in files if file.endswith(".mjres")]
    for file in files:
        out = OriJsonOutput()
        with open(file, "r", encoding="utf8") as f:
            reader = csv.reader(f.readlines()[1:])
            for row in reader:
                text = row[1].replace("\n", "")
                if "】" in text:
                    name, text = text.split("】", 1)
                    name = name[1:]
                    out.add_name(name)
                out.add_text(text)
                out.append_dict()
            out.save_json(os.path.join("gt_input", file.replace(".mjres", ".json")))
            namedict.update(out.get_names())
            alltextcount += out.textcount

# save_json("namedict.json", namedict)
print(alltextcount)
            