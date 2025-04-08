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
    m = re.match(r"\[(.*?)\]<([0-9]*),([0-9]*),([0-9]*)>(.*)", line)
    return m.group(1), int(m.group(2)), int(m.group(3)), int(m.group(4)), m.group(5)


ori_filenames=listdir('dump\\','txt')

namelist=open('namedict_.json','r',encoding='utf8')
namelist=json.load(namelist)

alltext = []
for filename in ori_filenames:
    file=open('dump\\'+filename,'r',encoding='utf8').readlines()
    alltext += file

notfound = {}
notfound_trans = open_json("notfound_trans.json")

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder("gt_output\\", [namelist, alltext, notfound_trans])
# h.hanzidict["・"] = "·"
# h.source_chars += "・"
# h.target_chars += "·"
os.makedirs("release\\trans", exist_ok=True)
h.gen_replace("release\\trans\\data2.bin", enc=b"unmei")
save_json("temp.json",h.hanzidict)



os.makedirs('dec_trans',exist_ok=True)
os.makedirs('release\\trans',exist_ok=True)

transdict = {}
for filename in ori_filenames:
    print(filename)
    file=open('dump\\'+filename,'r',encoding='utf8').readlines()
    # outfile=open('dec_trans\\'+filename,'w',encoding='utf8')
    try:
        yiwen = open_json("transl_cache\\" + filename + ".json")
    except:
        # print("yiwen not found")
        yiwen = []
    for trans in yiwen:
        transdict[trans["pre_jp"].replace("\n", "\\n")] = trans["post_zh_preview"]
    orifile = open_file_b("scr\\" + filename.replace(".txt", ""))
    orifilelen = len(orifile)
    texts = b""
    if len(file) == 0:
        continue
    _, _, firstoffset, _, _ = readlineinfo(file[0])

    orifileHeaderLen = from_bytes(orifile[0x1c:0x20]) + 0x1c
    orifile = orifile[:orifileHeaderLen + firstoffset]
    orifile = list(orifile)
    dic = {}
    for line in file:
        if line.replace("\n","") == "":
            continue
        type, commandoffset, ori_offset, orilen, content=readlineinfo(line)
        # if orilen == 0:
        #     continue
        content=content.replace('\n','')
        if filter(content):
            if type == "ruby1" or type == "ruby2":
                # content = " "
                pass
            elif content in namelist:
                content = namelist[content]
                content = content
            elif "・" in content and content.split("・")[0] in namelist and content.split("・")[1] in "ＡＢＣＤＥＦＧＨＩＪＫＬＭＮＯＰＱＲＳＴＵＶＷＸＹＺ":
                content = namelist[content.split("・")[0]] + "・" + content.split("・")[1]
            else:
                try:
                    trans = transdict[content]
                except:
                    try:
                        trans = notfound_trans[content]
                    except:
                        notfound[content] = content
                        trans = content
                
                # trans = trans.replace("・", "·").replace("♪", "")
                content = re.sub(r"<r(.*?)>", "", trans)

        if content.startswith("u8_"):
            print(content)
            content = content[3:]
            content = content.encode("utf-8")
        else:
            content = h.hanzitihuan(content).encode("932")

        if ori_offset not in dic:
            dic[ori_offset] = list(to_bytes(firstoffset + len(texts), 4))
            texts += content + b"\x00"

        orifile[orifileHeaderLen + commandoffset:orifileHeaderLen + commandoffset + 4] = dic[ori_offset]

    orifile = bytes(orifile) + texts
    if len(orifile) > orifilelen:
        print(f"Warning: file {filename} length is longer than original")
    save_file_b("release\\trans\\" + filename.replace(".txt", ""), orifile, enc = b"unmei")#

save_json("notfound.json", notfound)


'''
trans_filenames=listdir('dec_trans\\','txt')

for filename in trans_filenames:
    os.system('cd dec_trans&&ScriptEncoder.exe '+ filename)
    os.system('move>nul 2>nul dec_trans\\'+filename+'.new '+'release\\')
    os.system('del release\\'+filename.replace('.txt',''))
    os.system('ren release\\'+filename+'.new '+filename.replace('.txt',''))
'''