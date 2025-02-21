from Lib import *
import shutil

errorlist = open('errorlist.txt', 'w', encoding='utf-8')
notTransFileList = open('notTransFileList.txt', 'w', encoding='utf-8')

oriPath = "ori_txt\\"
transPath = "trans_old\\"
outPath = "ori_txt_包含之前的译文\\"
os.makedirs(outPath, exist_ok=True)

def findTextStartIndex(text):
    texts = text.split("★")
    idx = len(texts[0]) + len(texts[1]) + len(texts[2]) + 3
    return idx

for file in os.listdir(oriPath):
    ori = open(oriPath + file, 'r', encoding='utf-8').readlines()
    try:
        ori_transf = open(transPath + file, 'r', encoding='utf-16').readlines()
    except:
        with open(outPath + file, 'w', encoding='utf-8') as f:
            f.write(''.join(ori))
        notTransFileList.write(file + "\n")
        continue
    transPairs = []
    for i in range(len(ori_transf)):
        if ori_transf[i].startswith(";"):
            transt = ori_transf[i][ori_transf[i].find("]") + 1 : -1]
            orit = ori_transf[i-1][ori_transf[i-1].find("]") + 1 : -1]
            transPairs.append((orit, transt))

    new = open(outPath + file, 'w', encoding='utf-8')

    for i in range(len(ori)):
        if ori[i].startswith("★"):
            textStartIdx = findTextStartIndex(ori[i])
            orit = ori[i-1][textStartIdx:-1]
            for pair in transPairs:
                if pair[0] == orit:
                    new.write(ori[i][:textStartIdx] + pair[1] + "\n")
                    transPairs.remove(pair)
                    break
            else:
                errorlist.write(file + ori[i][:textStartIdx] + orit + "\n")
                new.write(ori[i])
        else:
            new.write(ori[i])
    new.close()
        
