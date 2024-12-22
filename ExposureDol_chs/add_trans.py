
import json

ori_yiwen=json.load(open('译文.json','r',encoding='utf8'))
new_yiwen=json.load(open('yiwen_add.json','r',encoding='utf8'))

replacement_dict={}
for dic in new_yiwen:
    replacement_dict[dic["pre_jp"]]=dic["pre_zh"]

for i in range(len(ori_yiwen)):
    if ori_yiwen[i]["pre_zh"]=="Failed translation":
        ori_yiwen[i]["pre_zh"]=replacement_dict[ori_yiwen[i]["pre_jp"]]

json.dump(ori_yiwen,open('译文.json','w',encoding='utf8'),ensure_ascii=False,indent=4)