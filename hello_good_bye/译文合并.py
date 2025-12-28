import os
import re
import json
from HanziReplacer import *
from 文本提取 import filter

def listdir(path,type):
    files=os.listdir(path)
    ret=[]
    for file in files:
        if '.' not in file:
            if type=='':
                ret.append(file)
            continue

        filetype=file.split('.')
        filetype=filetype[-1]
        if filetype==type:
            ret.append(file)
    return ret

def readlineinfo(line):
    m = re.match(r"<([0-9]*),([0-9]*),([0-9]*)>(.*)", line)
    return int(m.group(1)), int(m.group(2)), int(m.group(3)), m.group(4)


ori_filenames=listdir('dump\\','txt')

namelist=open('namedict.json','r',encoding='utf8')
namelist=json.load(namelist)
    
h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\")
h.hanzidict["・"] = "·"
h.source_chars += "・"
h.target_chars += "·"
os.makedirs("release\\trans", exist_ok=True)
h.gen_replace("release\\trans\\data2.bin")


notfound = {}

os.makedirs('dec_trans',exist_ok=True)
for filename in ori_filenames:
    print(filename)
    file=open('dump\\'+filename,'r',encoding='utf8').readlines()
    outfile=open('dec_trans\\'+filename,'w',encoding='utf8')
    try:
        yiwen = open_json("transl_cache\\" + filename.replace(".txt", "") + ".json")
    except:
        print("yiwen not found")
        continue
    transdict = {}
    for trans in yiwen:
        transdict[trans["pre_jp"].replace("\n", "\\n")] = trans["post_zh_preview"]
    orifile = open_file_b("scr\\" + filename.replace(".txt", ""))
    texts = b""
    _, firstoffset, _, _ = readlineinfo(file[0])

    orifileHeaderLen = from_bytes(orifile[0x1c:0x20]) + 0x1c
    orifile = orifile[:orifileHeaderLen + firstoffset]
    orifile = list(orifile)
    dic = {}
    for line in file:
        if line.replace("\n","") == "":
            continue
        commandoffset, ori_offset, orilen, content=readlineinfo(line)
        if orilen == 0:
            continue
        content=content.replace('\n','')
        if filter(content):
            if content in namelist:
                # content = h.hanzitihuan(namelist[content])
                content = content
            else:
                try:
                    trans = transdict[content]
                except:
                    if "Ｈｅｌｌｏ，ｇｏｏｄ－ｂｙｅ" not in content and "#" not in content:
                        notfound[content] = content
                    trans = content
                
                trans = trans.replace("・", "·").replace("♪", "")
                try:
                    trans.encode("936")
                except:
                    print(f"Warning: {trans} can't encode")
                content = h.hanzitihuan(trans)
                content = re.sub(r"<ruby(.*?)>", "", content)

        if ori_offset not in dic:
            dic[ori_offset] = list(to_bytes(firstoffset + len(texts), 4))
            texts += content.encode("932") + b"\x00"
        orifile[orifileHeaderLen + commandoffset:orifileHeaderLen + commandoffset + 4] = dic[ori_offset]

    orifile = bytes(orifile) + texts
    save_file_b("release\\trans\\" + filename.replace(".txt", ""), orifile)

save_json("notfound.json", notfound)


'''
trans_filenames=listdir('dec_trans\\','txt')

for filename in trans_filenames:
    os.system('cd dec_trans&&ScriptEncoder.exe '+ filename)
    os.system('move>nul 2>nul dec_trans\\'+filename+'.new '+'release\\')
    os.system('del release\\'+filename.replace('.txt',''))
    os.system('ren release\\'+filename+'.new '+filename.replace('.txt',''))
'''