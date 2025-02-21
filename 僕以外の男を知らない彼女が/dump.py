from Lib import *

ori = "TXT\\"
out = "gt_input\\"
os.makedirs(out, exist_ok=True)

class OriJsonOutput(OriJsonOutput):
    def add_text(self, text):
        # self.dic["line"] = self.dic.get("line",0) + 1
        self.dic['ori'] = self.dic.get("ori","") + text + "_r"
        self.dic['message'] = self.preProcess(self.dic.get("message","") + text)

namedict = {}
textCount = 0
for file in os.listdir(ori):
    f = open(ori + file, "r", encoding="932").readlines()
    out = OriJsonOutput()
    for line in f:
        if re.match(r"[;$]", line):
            continue
        elif line.startswith("【"):
            name = line[1:-2]
            out.add_name(name)
        elif line == "\n":
            out.append_dict()
        else:
            out.add_text(line[:-1])
    namedict.update(out.get_names())
    textCount += out.textcount
    out.save_json("gt_input\\" + file + ".json")

save_json("namedict.json", namedict)
print("textCount:", textCount)