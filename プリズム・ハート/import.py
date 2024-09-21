from Lib import *
import os
from HanziReplacer import *
import random

oriPath = "ori_adv\\"
txtOriPath = "oriTXT\\"
txtTransPath = "transTXT\\"
jsonTransPath = "gt_output\\"
outPath = "release\\patch\\"
os.makedirs(outPath,exist_ok=True)

namedict = open_json("namedict.json")

fileNames = os.listdir(oriPath)

allTrans = []

testidx = 0

cutCount = 0

def dengchang(trans:bytes,ori_length:int)->bytes:
    '''
    用于维持文本长度不变。
    '''
    ori_trans = trans
        
    if len(trans)>ori_length:#第一步处理：去除末尾标点
        text=trans.decode(encoding='932')
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！' or text[-1]=='?' or text[-1]=='!':
            text=text[:-1]
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！' or text[-1]=='?' or text[-1]=='!':
            text=text[:-1]
        if text[-1]=='。' or text[-1]=='？' or text[-1]=='！' or text[-1]=='?' or text[-1]=='!':
            text=text[:-1]
        trans=text.encode(encoding='932')
    
    if len(trans)>ori_length:#第二步处理：去除一些无意义重复
        text=trans.decode(encoding='932')
        text=text.replace('啊啊啊','啊啊').replace("···","…").replace("...","…").replace("･･･","…").replace('……','…').replace('——','—')
        text=text.replace('啊啊啊','啊啊').replace("...","…").replace("···","…").replace("･･･","…").replace('……','…').replace('——','—')
        text=text.replace('啊啊啊','啊啊').replace('……','…').replace('——','—').replace('　','').replace(' ','')
        text=text.replace('啊啊啊','啊啊').replace('……','…').replace('——','—').replace('　','').replace(' ','')
        trans=text.encode(encoding='932')

    
    while len(trans)>ori_length:#第四步处理：暴力截断
        global cutCount
        cutCount += 1
        text=trans.decode(encoding='932')
        text = text[:-1]
        trans = text.encode("932")

    while len(trans)<ori_length:
        trans+=b'\x20'
    return trans

def replaceByteText(data, start, end, trans):
    data[start] = trans
    i = start + 1
    while i != end:
        data[i] = b""
        i += 1

def preProcess(text):
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    return text

for fileName in fileNames:
    try:
        transFile = open_json(jsonTransPath + fileName.replace(".adv",".json"))
    except:
        transFile = []
    oriTxtFile = open(txtOriPath + fileName.replace(".adv",".txt"),"r",encoding="utf8")
    transTxtFile = open(txtTransPath + fileName.replace(".adv",".txt"),"w",encoding="utf8")

    translist = []
    for i in transFile:
        msg = i["message"]
        if "name" in i:
            name = i["name"]
            name = namedict[name]
            msg = f"【{name}】{msg}"
        translist.append(msg)

    allTrans.append(translist.copy())
    for l in oriTxtFile:
        if l[:2] == "$$":
            idx = l.find("::") + 2
            out = l[:idx] + translist.pop(0) + "\n"
            #out = l[:idx] + "中文测试" * random.randint(2,4) + f"{testidx}\n"
            #testidx+=1
        else:
            out = l
        transTxtFile.write(out)

h = HanziReplacer()
h.ReadTransAndGetHanzidict(allTrans + [["中文测试"]])
#h.ChangeFont("WenQuanYi.ttf","release/patch/PrismHeartFont.ttf","PrismHeartFont")

for fileName in fileNames:
    transTxtFile = open(txtTransPath + fileName.replace(".adv",".txt"),"r",encoding="utf8").readlines()
    oriADVFile = open_file_b(oriPath + fileName)
    oriLen = len(oriADVFile)
    OFFSET = from_bytes(oriADVFile[0x14:0x18])
    oriADVFile, oriADVFileHead = oriADVFile[OFFSET:], oriADVFile[:OFFSET]
    oriADVFile = list(oriADVFile)
    oriADVFile = [to_bytes(i, 1) for i in oriADVFile]
    outADVFilePath = outPath + fileName

    jumplist = {}
    for l in transTxtFile:
        if l[:2] == "!!":
            idx = l.find("::")
            start, end = l[2:idx].split("-")
            jumpto = l[idx + 2 : -1]
            jumplist[start] = (int(jumpto),int(jumpto))#原地址，新地址

    for l in transTxtFile:
        if l[:2] == "$$":
            idx = l.find("::")
            start, end = l[2:idx].split("-")
            start = int(start)
            end = int(end)
            msg = l[idx + 2 : -1]
            msg = h.hanzitihuan(msg)
            msg = preProcess(msg)
            msg = msg.encode("932")
            msg = dengchang(msg, end - start)
            '''
            delta_len = len(msg) - (end - start)
            for j in jumplist:
                if jumplist[j][0] > start:
                    jumplist[j] = (jumplist[j][0], jumplist[j][1] + delta_len)
            '''
            replaceByteText(oriADVFile, start, end, msg)
    
    '''
    for j in jumplist:
        start = int(j)
        end = start + 4
        newJumpto = to_bytes(jumplist[j][1], 4)
        replaceByteText(oriADVFile, start, end, newJumpto)
    '''
    
    outADVFile = oriADVFileHead + b"".join(oriADVFile)
    if len(outADVFile) != oriLen:
        print(fileName)
    save_file_b(outADVFilePath, outADVFile)

print(cutCount)