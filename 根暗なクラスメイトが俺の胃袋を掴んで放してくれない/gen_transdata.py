from Lib import *

os.makedirs("release", exist_ok=True)
data = open_json("gt_output\\text.json") + open_json("gt_output\\sptext.json")
# data = open_json("transl_cache\\text.json")

res = {}
for i in data:
    ori = i["ori"]
    # ori = i["pre_jp"]
    msg = i["message"]
    # msg = i["pre_zh"]
    ori_ = re.sub(r"@r(.*?)@(.*?)@", r"\1", ori)
    if re.search(r"^@[@a-z0-9]*", ori_):
        msg = re.search(r"^@[@a-z0-9]*", ori_).group(0) + msg
    if re.search(r"@[@a-z0-9]*$", ori_):
        msg = msg + re.search(r"@[@a-z0-9]*$", ori_).group(0)
    msg = re.sub(r"\\n", "@n", msg)
    msg = re.sub(r"\n", "@n", msg)
    res[ori] = msg

with open("release\\Nekura_CHS.dat", "w", encoding="utf8") as f:
    for i in res:
        trans = res[i]
        i = i.replace("〜", "\uff5e")
        f.write(f"{i}[=]{trans}[n]")

    namedict = open_json("namedict.json")
    for n in namedict:
        name = n
        transname = namedict[n]
        f.write(f"{name}[=]{transname}[n]")

data = open_file_b("release\\Nekura_CHS.dat")
save_file_b("release\\Nekura_CHS.dat", data, enc = b"Nekura")