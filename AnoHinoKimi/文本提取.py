import os
import json
import re
from Lib import *

folderpath='dec\\'
os.makedirs('gt_input',exist_ok=True)
filenames=os.listdir(folderpath)
namelist=[]

def filter(text):
    if len(text)<1:
        return False
    if re.match('[a-zA-Z0-9_ ]',text[0]):
        return False
    return True

namedict_ = open_json("namedict.json")
namedict={}
count = 0
for filename in filenames:
    out = OriJsonOutput()
    file=open(folderpath+filename,'r',encoding='utf8')
    name = ""

    for line in file:
        line=re.sub('<[0-9,]*?>','',line)
        line=line.replace('\n','')
        if re.match(r"PrintMessage (.+)",line):
            name = re.match(r"PrintMessage (.+)",line).group(1)
            namedict[name] = name
            namedict.update(namedict_)
        elif re.match(r"PrintMessage",line):
            name = ""
            
        if filter(line):
            if line in namedict:
                out.dic["name"] = line
            else:
                out.dic["message"] = line
                out.append_dict()
    out.save_json('gt_input\\'+filename+'.json')
    count += out.textcount
print(count)
save_json("namedict.json",namedict) 
#print(names)  