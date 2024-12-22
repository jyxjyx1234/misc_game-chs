import os
import json
import re
from Lib import *

nameset = set()
chenghaodict = []
namedict = {
"ふゆり":"冬璃",
"あきそら":"秋穹",
"きいゆ":"木柚",
"ふうの":"风乃",
"とと":"豆豆",
"こはね":"心羽",
"ゆきな":"雪奈",
"みずみ":"美澄",
"うさぎ":"兔",
"つきよ":"月夜",
"ひなほ":"雏穗",
"さーしゃ":"纱夏",
"ほのわ":"萌羽",
"ふぃあ":"菲亚",
"しらすな":"白纱奈",
"ちぐさ":"千草",
"おおか":"樱樱花",
"みけ":"美结",
"たんぽぽ":"蒲公英",
"しい":"椎",
"ちこ":"千子",
"しあ":"夏亚",
"あき":"秋",
"しらす":"白纱",
"うう":"兔兔",
"こん":"混沌",
"しらぎり":"白桐",
"ゆいひ":"由希",
"こんとん":"混沌",
}
def splitmessage(text:str):
    l = text.split("\n",1)
    dic = {}
    if len(l) == 2 and len(l[0])!=0 and len(l[1])!=0 and (l[1][0] == "「" or l[1][0] == "（" or l[1][0] == "『"):
        dic['name'] = l[0]
        dic['message'] = l[1]
        nameset.add(dic['name'])
    else:
        dic['message'] = text
    if dic["message"] == "":
        return False
    if re.sub("[0-9a-zA-Z\.\[\]]","",dic["message"]) == "":
        return False
    return dic

def readmapdata(ori_path,savepath):
    data = open_json(ori_path)
    out = []
    for event in data['events']:
        for page in event['pages']:
            for content in page['list']:
                if content["codeStr"] == "Message" or content["codeStr"] == "CommonEvent":
                    if "stringArgs" not in content:
                        continue
                    for i in range(len(content["stringArgs"])):
                        text = content["stringArgs"][i]
                        if text != "" and not re.match('[+-]',text):
                            out.append(splitmessage(text))
            for content in page['list']:
                if content["codeStr"] == "SetString":
                    if "stringArgs" not in content:
                        continue
                    for i in range(len(content["stringArgs"])):
                        text = content["stringArgs"][i]
                        if text != "" and not re.search('[+-\.\[]',text) and "png" not in text and "ogg" not in text:
                            out.append(splitmessage(text))
            for content in page['list']:
                if content["codeStr"] == "Database":
                    if "stringArgs" not in content:
                        continue
                    for i in range(len(content["stringArgs"])):
                        text = content["stringArgs"][i]
                        if not text.startswith("　・"):
                            continue
                        text = text[2:]
                        if text != "" and not re.search('[+-\.\[]',text):
                            chenghaodict.append(splitmessage(text))
    if len(out)!=0:
        out = [i for i in out if i]
        save_json(savepath,out)

def readeventdata(ori_path,savepath):
    data = open_json(ori_path)
    out = []
    for command in data['commands']:
        if command['codeStr'] == "Message" or command["codeStr"] == "CommonEvent":
            if "stringArgs" not in command:
                continue
            for i in range(len(command["stringArgs"])):
                text = command["stringArgs"][i]
                if text != "" and not re.match('[+-]',text) and re.sub("\\\\cself\[[0-9]*\]","",text)!="":
                    out.append(splitmessage(text))
    for command in data['commands']:                
        if command['codeStr'] == "SetString":
            if "stringArgs" not in command:
                continue
            for i in range(len(command["stringArgs"])):
                text = command["stringArgs"][i]
                if text != "" and not re.search('[+-\.\[]',text):
                    out.append(splitmessage(text))
    if len(out)!=0:
        out = [i for i in out if i]
        save_json(savepath,out)

def readdatabasedata(ori_path,savepath):
    data = open_json(ori_path)
    out = []
    for t in data['types']:
        for dd in t['data']:
            for d in dd['data']:
                #if '説明文' not in d['name'] and "アイテム名" not in d['name']:
                #    continue
                if "value" not in d:
                    continue
                if type(d['value']) == type(1):
                    continue
                if len(d['value']) <= 2:
                    continue
                if not re.search("mp3|png|ogg|mid|BGM|↑",d['value']):
                    out.append({'message':d['value']})
    
    out = [i for i in out if i]
    save_json(savepath,out)

if __name__ == "__main__":
    map_path = "ori\dump\mps\\"
    map_out_path = "orijsons\mps\\"
    os.makedirs(map_out_path,exist_ok=True)
    maps = os.listdir(map_path)
    for m in maps:
        readmapdata(map_path + m, map_out_path +m)

    event_path = "ori\dump\common\\"
    event_out_path = "orijsons\common\\"
    os.makedirs(event_out_path,exist_ok=True)
    events = os.listdir(event_path)
    for m in events:
        readeventdata(event_path + m, event_out_path +m)
    
    readdatabasedata("ori\dump\db\DataBase.json","orijsons\\DataBase_all.json")
    save_json("orijsons\chenghao.json",chenghaodict)
    save_json('names.json',list(nameset))