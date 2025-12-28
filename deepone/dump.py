from Lib import *

pattern = re.compile(r"<line:(?P<type>.*?)>(?P<msg>.*?)<endline>", re.DOTALL)

text1 = "output4.txt"
text1_ = "output.txt"
text2 = "sptext.txt"

class OriJsonOutput(OriJsonOutput):
    def __init__(self) -> None:
        self.savefilter = lambda x: True
        self.textcount = 0
        self.preProcess = lambda x: x
        self.messageset = {}
        self.outlist = []
        self.append_namedict = {}
        self.dic = {}
    def add_text(self, text):
        self.dic['ori'] = self.dic.get("message","") + text
        self.dic['message'] = self.preProcess(self.dic['ori'])
    def append_dict(self, quchong = False, remove_name = True):
        # if "@" in self.dic["message"]:
            # print(self.dic["message"])
        if "message" not in self.dic or not self.savefilter(self.dic):
            self.dic = {}
            return
        
        self.last_text_delete = False
        
        if self.dic['message'] == "":
            self.dic = {}
            self.last_text_delete = True
            return
        
        
        if "name" in self.dic:
            if self.dic["name"] == "":
                del self.dic["name"]

        if quchong:
            if self.dic['ori'] in self.messageset:
                idx = self.messageset[self.dic['ori']]
                if "name" not in self.outlist[idx] and "name" in self.dic:
                    self.outlist[idx]["name"] = self.dic.get("name", "")
                self.dic = {}
                self.last_text_delete = True
                return

        self.outlist.append(self.dic)
        self.textcount += len(self.dic['message'])
        self.messageset[self.dic['ori']] = len(self.outlist) - 1
        if 'name' in self.dic:
            if not remove_name:
                self.dic = {'name':self.dic['name']}
            else:
                self.dic = {}
        else:
            self.dic = {}

    def add_name_to_last(self, name):
        if not self.last_text_delete:
            self.outlist[-1]["name"] = name

    
    def get_names(self):
        namedict = {}
        for i in self.outlist:
            if 'name' in i:
                namedict[i['name']] = i['name']
        namedict.update(self.append_namedict)
        return namedict

out = OriJsonOutput()


# f1 = open(text1, "r", encoding="utf-8").read()
# #<line:<line:6620178>沙耶<endline>
# #6188991>わかっていた。一花が俺に心配をかけないよう、無理に明るくいてくれているのは。<endline>
# f1 = re.sub(r"(<line:)(<line:[^<]*?>)([^<]*?)(<endline>\n?<line:[^<]*?>[^<]*?<endline>)\n?([^<]*?>)([^<]*?)(<endline>)", r"\1\5\6\7\n\2\3\4", f1, flags=re.DOTALL)
# f1 = re.sub(r"(<line:)(<line:[^<]*?>)([^<]*?)(<endline>)\n?([^<]*?>)([^<]*?)(<endline>)", r"\1\5\6\7\n\2\3\4", f1, flags=re.DOTALL)
# f1 = re.sub(r"(<line:[^<]*?>)([^<]*?)(<line:[^<]*?>)([^<]*?)(<endline>)\n?(<endline>)", r"\1\2\6\n\3\4\5", f1, flags=re.DOTALL)
# f1 = re.sub(r"(<line:[^<]*?>)(<line:[^<]*?>)([^<]*?)(<endline>)([^<]*?)(<endline>)", r"\1\5\4\n\2\3\6", f1, flags=re.DOTALL)
# f1 = re.sub(r"(<line:[^<]*?>)([^<]*?)(<line:)(<endline>)([^<]*?>)([^<]*?)(<endline>)", r"\1\2\4\n\3\5\6\7", f1, flags=re.DOTALL)
# with open("output4.txt", "w", encoding="utf-8") as f:
#     f.write(f1)


f1 = open(text1, "r", encoding="utf-8").read() + open(text1_, "r", encoding="utf-8").read()
f2 = open(text2, "r", encoding="utf-8").read()
f3 = open("output_rp.txt", "r", encoding="utf-8").read()

m1 = pattern.finditer(f1)
m2 = pattern.finditer(f2)
m3 = pattern.finditer(f3)

typeset = {}
rubyset = {}


def preprocess(text):
    text = text.replace("\n", "")
    text = text.replace("@n", "\n")
    text = re.sub("@[smfwvtkoep][0-9a-zA-Z_]*", "", text)
    text = re.sub("^@c", "", text)
    if re.search("@r([^@]*?)@([^・@]*?)@", text):
        rubyset[re.search("@r(.*?)@(.*?)@", text).group(1)] = re.search("@r(.*?)@(.*?)@", text).group(2)
    text = re.sub("@r(.*?)@(.*?)@", r"\1", text)
    # text = re.sub("@!(.*?)@!@", r"\1", text)
    text = re.sub("@I[0-9A-Za-z]*(.*?)@I@", r"\1", text)
    return text

tip_dict = {}

out.preProcess = preprocess
for m in m1:
    if m.group("type") in ["6188991", "6620311", "6620137", "6620692", "6619508", "6613952"]:
        text = m.group("msg")
        out.add_text(text)
        text = text.replace("\n", "")
        out.append_dict(quchong=True)
    elif m.group("type") in ["6189181"]:
        text = m.group("msg")
        text = text.replace("\n", "")
        out.add_text(text)
        out.append_dict(quchong=True)
    elif m.group("type") in ["6620352", "6620178"]:
        name = m.group("msg")
        out.append_namedict[name] = name
        out.add_name_to_last(name)
    else:
        typeset[m.group("type")] = m.group("msg")

for m in m2:
    if m.group("type") in ["6503626"]:
        tip = f"@!{m.group('msg')}@!@"
        tip_dict[tip] = tip
    if m.group("type") in ["6909992", "6079903", "6081372", "6854925", "5840073", "6908710", "6499150", "5919787", "6925953", "6502207", "6503626", "6499420", "6868576", "6868142", "6082001", "6503480"]:
        text = m.group("msg")
        out.add_text(text)
        out.append_dict(quchong=True)
    elif m.group("type") in []:
        text = m.group("msg")
        out.add_text(text)
        out.append_dict(quchong=True)
    elif m.group("type") in ["6080949", "5920289"]:
        name = m.group("msg")
        out.append_namedict[name] = name
        out.add_name_to_last(name)
    else:
        typeset[m.group("type")] = m.group("msg")

rp_dict = {}
for m in m3:
    if m.group("type") in ["5896024", "6869907"]:
        rp_dict[m.group("msg")] = m.group("msg")
    

os.makedirs("gt_input", exist_ok=True)
out.save_json("gt_input/output.json")
save_json("types.json", typeset)
save_json("rubyset.json", rubyset)
# save_json("rp_dict.json", rp_dict)
print(out.textcount)
# save_json("tip_dict.json", tip_dict)
# save_json("namedict.json", out.get_names())
ori_namedic = open_json("namedict.json")
for name in out.get_names():
    if name not in ori_namedic:
        ori_namedic[name] = out.get_names()[name]
save_json("namedict.json", ori_namedic)