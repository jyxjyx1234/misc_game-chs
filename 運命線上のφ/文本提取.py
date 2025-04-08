import os
import json
import re
from Lib import *
import logging

logging.basicConfig(level=logging.WARNING, format='', filename = 'log.txt', encoding='utf-8')

folderpath='dump\\'
os.makedirs('gt_input',exist_ok=True)
filenames=os.listdir(folderpath)
namelist=[]

def filter(text):
    if len(text)<1:
        return False
    if re.match(r'[a-zA-Z0-9_\.:/\\ -]*$',text) or text.startswith('_') or text.startswith('#') or text.startswith('('):
        return False
    return True

if __name__ == "__main__":
    # namedict = open_json("namedict.json")
    # # truenamedict={}
    # namedict.update(open_json("nametransdict.json"))
    count = 0
    namedict = {}
    for filename in filenames:
        out = OriJsonOutput()
        file=open(folderpath+filename,'r',encoding='utf8')
        for line in file:
            m = re.match(r"\[(.*?)\]<(\d+),(\d+),(\d+)>(.*)", line)
            if m:
                type = m.group(1)
                msg = m.group(5)
                if type == "name":
                    msg = msg.split("・")[0]
                    out.dic["name"] = msg
                elif type == "showname":
                    namedict[msg] = msg
                elif type == "msg":
                    if filter(msg):
                        out.dic["message"] = msg
                        out.dic["ori"] = msg
                        out.append_dict()
                    else:
                        logging.warning(f"not filter: {msg}")
                elif type == "unk" and filter(msg):
                    logging.warning(f"unk: {msg}")
            else:
                continue
        # name = ""
        # for line in file:
        #     line=re.sub('<[0-9,]*?>','',line)
        #     line=line.replace('\n','')
        #     if filter(line):
        #         # if line.startswith('「'):
        #         #     if "「" not in name and "。" not in name:
        #         #         out.outlist.pop()
        #         #         out.dic["name"] = name
        #         #         namedict[name] = name
        #         # if line in namedict:
        #         #     out.dic["name"] = line.split("・")[0]
        #         #     # tn = line.split("・")[0]
        #         #     # truenamedict[tn] = tn
        #         # else:
        #         #     out.dic["message"] = line
        #         #     out.dic["ori"] = line
        #         #     out.append_dict(quchong=True)
        #         # name = line
        #     else:
        #         out.append_dict(quchong=True)

        out.save_json('gt_input\\'+filename+'.json')
        count += out.textcount
    print(count)
    # save_json("nametransdict.json",truenamedict) 
    # save_json("namedict.json",namedict) 
    # print(names)  