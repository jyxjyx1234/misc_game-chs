from Lib import *

res = {}


for file in os.listdir("gt_output"):
    transdatas = open_json(f"gt_output/{file}")
    for transdata in transdatas:
        ori = transdata["ori"]
        trans = transdata["message"]
        head_args = []
        trans = re.sub(r"(?<![@a-zA-Z0-9\.,?!~ _:()―+%.-])[a-zA-Z0-9\.,?!~ _:()―+%.-]+", lambda m: replace_halfwidth_with_fullwidth(m.group(0)), trans)
        if re.search(r"[a-zA-Z0-9]+", trans):
            print(trans)
        while re.match(r"@[smfvtkoepc][0-9a-zA-Z_]*", ori.strip("　")):
            h = re.match(r"@[smfvtkoepc][0-9a-zA-Z_]*", ori.strip("　")).group(0)
            ori = ori[len(h):]
            head_args.append(h)
        trans = "".join(head_args) + trans
        trans = trans.replace("\n", "@n").replace("\\n", "@n")
        res[transdata["ori"]] = trans

res.update(open_json("namedict.json"))
res.update(open_json("tip_dict.json"))
tipdic = open_json("tip_dict.json")
res2 = {}
for i in open_json("tip_dict.json"):
    i_ = re.sub(r"@!([^@]*)@!@", r"\1", i)
    _ = re.sub(r"@!([^@]*)@!@", r"\1", tipdic[i])
    res[i_] = _
    res2[_] = i_

out = []
for _ in res:
    if _ == res[_]:
        continue
    out.append(f"{_}[=]{res[_]}[n]".encode("utf8"))
out2 = []
for _ in res2:
    if _ == res2[_]:
        continue
    out2.append(f"{_}[=]{res2[_]}[n]".encode("utf8"))

res3 = {}
rpdict = open_json("rp_dict.json")
for i in rpdict:
    res3[i] = rpdict[i]
out3 = []
for _ in res3:
    if _ == res3[_]:
        continue
    out3.append(f"{_}[=]{res3[_]}[n]".encode("utf8"))


os.makedirs("release/trans/", exist_ok=True)
save_file_b("release/trans/data1.bin", b"".join(out))
save_file_b("release/trans/data2.bin", b"".join(out2))
save_file_b("release/trans/data3.bin", b"".join(out3))
os.system("pack.bat")