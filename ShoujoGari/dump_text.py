import json
import re
import os
from Lib import *

ori_folder='scenario1\\'
out_folder='ori_json\\'

ori_files=os.listdir(ori_folder)
ori_files=[i for i in ori_files if re.match(r'.*mjil',i)]

text_fliter=re.compile(r'.*?text.*?%\{L[0-9]*\} ; "【(.*?)】(.*?)"|.*?text.*?%\{L[0-9]*\} ; "([^【]*?)"|.*?ldstr.*?"([^a-zA-Z^\ ^\[^\]]{3,}?)"')


for file in ori_files:
    out=[]
    f=open(ori_folder+file,'rb').read().decode(encoding='utf8')
    reslut=text_fliter.findall(f)
    for i in reslut:
        dic={}
        if i[0]!='':
            dic['name']=i[0]
            dic['message']=i[1]
        if i[2]!='':
            dic['message']=i[2]
        if i[3]!='':
            dic['message']=i[3]
        out.append(dic)
    save_json(out_folder+file.replace('.mjil','.json'),out)
