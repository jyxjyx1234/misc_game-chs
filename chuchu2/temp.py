from Lib import *

namedict = open_json('namedict.json')

trans_dict = {}
with open('项目GPT字典.txt', 'r', encoding='utf-8') as file:
    for line in file:
        key, value = line.strip().split('\t')[:2]
        trans_dict[key] = value

for i in namedict:
    if i in trans_dict:
        namedict[i] = trans_dict[i]
    if "＆" in i:
        names = i.split("＆")
        for _ in range(len(names)):
            names[_] = trans_dict.get(names[_], names[_])
        namedict[i] = "＆".join(names)
save_json('namedict.json', namedict)