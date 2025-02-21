from Lib import *
from HanziReplacer import *

oriPath = "scr_unpack_dec\\"
transDataPath = "trans\\"
transOutPath = "scr_unpack_dec_trans\\"
os.makedirs(transOutPath, exist_ok=True)

allTransDatas = []
for i in os.listdir(transDataPath):
    with open(transDataPath + i, "r", encoding="utf16") as f:
        data = f.readlines()
        for j in data:
            if j.startswith(";"):
                allTransDatas.append(j)
h = HanziReplacer()
h.ReadTransAndGetHanzidict([allTransDatas])
h.gen_replace("release\\chs.dat", enc=b"ItsukaFuruYuki")

for i in os.listdir(oriPath):
    with open(oriPath + i, "r", encoding="utf8") as f:
        data = f.read()

    if not os.path.exists(transDataPath + i): #暂未翻译的文件的处理
        with open(transOutPath + i, "w", encoding="utf8") as out:
            out.write(data)
        continue

    transList = []
    with open(transDataPath + i, "r", encoding="utf16") as f2:
        data2 = f2.readlines()
        for j in data2:
            if j.startswith(";"):
                transList.append(j[13:-1])

    errorFlag = False

    def replace_trans(matched):
        try:
            trans = transList.pop(0)
        except:
            print(f"not enough trans:{i}")
            errorFlag = True
            return matched.group(0)
        trans = h.hanzitihuan(trans)
        return f"strt({trans})"
    
    data = re.sub(r"strt\(.*?\)", replace_trans, data)

    if len(transList) != 0:
        print(i)

    with open(transOutPath + i, "w", encoding="utf8") as out:
        out.write(data)

    if errorFlag:
        exit()