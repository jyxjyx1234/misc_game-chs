import os
import json
import re
from Lib import *

folderpath='dump\\'
os.makedirs('gt_input',exist_ok=True)
filenames=os.listdir(folderpath)
namelist=[]

def filter(text):
    if len(text)<1:
        return False
    if re.match('[a-zA-Z0-9_ ]',text[0]):
        return False
    return True

if __name__ == "__main__":
    namedict = open_json("namedict.json")
    # namedict={}
    count = 0
    for filename in filenames:
        out = OriJsonOutput()
        file=open(folderpath+filename,'r',encoding='utf8')
        name = ""
        nameflag = False
        for line in file:
            line=re.sub('<[0-9,]*?>','',line)
            line=line.replace('\n','')
            if filter(line):
                # if nameflag:
                #     if "」" not in line and "。" not in line and len(line) < 8:
                #         namedict[line] = line
                #     nameflag = False
                out.dic["message"] = line
                out.append_dict()
            # if line.endswith('」'):
            #     nameflag = True
        out.save_json('gt_input\\'+filename+'.json')
        count += out.textcount
    print(count)
    # save_json("namedict.json",namedict) 
    #print(names)  