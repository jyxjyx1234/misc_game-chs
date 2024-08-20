from readoritext import *
from HanziReplacer import *

chenghaos = open_json("transl_cache\chenghao.json")
chenghaodict = {}
for d in chenghaos:
    chenghaodict[d['pre_jp']]=d['post_zh_preview']

def read_all_trans(trans_path):
    trans_datas = []
    for f in os.listdir(trans_path):
        f = open_json(trans_path + f)
        trans_datas = trans_datas + f
    return trans_datas + chenghaos

def fenhang(text_ls):
    flag = True
    res = []
    for l in text_ls:
        if len(l) >32:
            res.append(l[:30])
            res.append(l[30:])
            flag = False
        else:
            res.append(l)
    if flag:
        return res
    return fenhang(res)

def gen_text(dic:dict,h:HanziReplacer = None):
    ori_t = dic['pre_jp']
    if 'name' in dic and dic['name']!="":
        name = dic['name']
        name_ = re.sub("\\\\space\[[0-9]*?\]","",name)
        name__ = namedict.get(name_, name_)
        name = name.replace(name_,name__)
        msg = dic['post_zh_preview']
        res = f'{name}\n{msg}'
    else:
        res = dic['post_zh_preview']
        if ori_t[0] == '\n' and res[0] != '\n':
            res = '\n' + res
    #res = replace_halfwidth_with_fullwidth(res)
    res = res.replace("「「", "「").replace("」」", "」").replace("「（", "（").replace("）」", "）").replace("\n\n", "\n")
    if h:
        res = h.hanzitihuan(res)
    res_fenhang = res.split('\n')
    res_fenhanged = fenhang(res_fenhang)
    res = "\n".join(res_fenhanged)
    return res
        
def gen_hanzireplacer(trans_path):
    alltexts = set()
    trans_datas = read_all_trans(trans_path)
    for dic in trans_datas:
        alltexts.add(dic['pre_jp'])
        alltexts.add(dic['post_zh_preview'])
    h = HanziReplacer()
    h.ReadTransAndGetHanzidict([alltexts])
    h.ChangeFont("WenQuanYi.ttf","release\patch\SistersFBFONT.ttf","SistersFBFONT")
    return h

def gen_transdict(trans_datas ,h:HanziReplacer = None):
    transdict = {}
    for dic in trans_datas:
        raw = []
        if dic['name'] != "":
            ori = dic['name'] + '\n' + dic['pre_jp']
        else:
            ori = dic['pre_jp']
        transtext = gen_text(dic,h)
        transdict[ori.replace("\n","")] = transtext
    return transdict

def transmapdata(ori_path,out_path,transdict):
    data = open_json(ori_path)
    for event in data['events']:
        for page in event['pages']:
            for content in page['list']:
                if content["codeStr"] == "Message":
                    if "stringArgs" not in content:
                        continue
                    for i in range(len(content["stringArgs"])):
                        t = content["stringArgs"][i]
                        if re.search("self",t):
                            continue
                        if t.replace("\n","") in transdict:
                            t = removeyinhao(transdict[t.replace("\n","")])
                        else:
                            print(t)
                        content["stringArgs"][i] = t
                if content["codeStr"] == "CommonEvent" or content["codeStr"] == "SetString":
                    if "stringArgs" not in content:
                        continue
                    for i in range(len(content["stringArgs"])):
                        t = content["stringArgs"][i]
                        if re.search("self",t):
                            continue
                        if re.search("\[",t):
                            continue
                        if t.replace("\n","") in transdict:
                            t = removeyinhao(transdict[t.replace("\n","")])
                        content["stringArgs"][i] = t
            for content in page['list']:
                if content["codeStr"] == "Database" and "stringArgs" in content:
                    for i in range(len(content["stringArgs"])):
                        t = content["stringArgs"][i]
                        if t.startswith("　・"):
                            t = t[2:]
                            if t in chenghaodict:
                                content["stringArgs"][i] ="　・" + chenghaodict[t]
    save_json(out_path,data)

def transdatabase(ori_path,out_path,transdict):
    data = open_json(ori_path)
    for t in data['types']:
        for dd in t['data']:
            for d in dd['data']:
                if "value" not in d:
                    continue
                if type(d['value']) == type(1):
                    continue
                if len(d['value']) <= 2:
                    continue
                if re.search("mp3|png|ogg|mid|BGM|↑",d['value']):
                    continue
                d['value'] = transdict[d['value'].replace("\n","")]
    save_json(out_path,data)

def removeyinhao(t):
    matches = re.findall("「(.*)」",t)
    if matches and len(matches) > 2:
        return re.sub("[「」]","",t)
    if not matches:
        return t
    for m in matches:
        if len(m) <= 2:
            return re.sub("[「」]","",t)
    return t

def transeventdata(ori_path,out_path,transdict):
    data = open_json(ori_path)
    for command in data['commands']:
        if command['codeStr'] == "Message" or command["codeStr"] == "CommonEvent":
            if "stringArgs" not in command:
                continue
            
            for i in range(len(command["stringArgs"])):
                t = command["stringArgs"][i]
                if re.search("self",t):
                    continue
                if re.search("\[",t):
                    continue
                if t.replace("\n","") in transdict:
                    t = removeyinhao(transdict[t.replace("\n","")])
                command["stringArgs"][i] = t
        if command['codeStr'] == "SetString":
            if "stringArgs" not in command:
                continue
            for i in range(len(command["stringArgs"])):
                t = command["stringArgs"][i]
                if re.search('\[\]\+<',t) or len(t) <= 3 or "png" in t or "mp3" in t or "ogg" in t:
                    continue
                if t.replace("\n","") in transdict:
                    t = removeyinhao(transdict[t.replace("\n","")])
                command["stringArgs"][i] = t
    save_json(out_path,data)

def main():
    map_ori_path = "ori\dump\mps\\"
    map_out_path = "transed\dump\mps\\"
    event_ori_path = "ori\dump\common\\"
    event_out_path = "transed\dump\common\\"
    transfile_path = 'transl_cache\\'

    os.makedirs(map_out_path,exist_ok=True)
    maps = os.listdir(map_ori_path)
    os.makedirs(event_out_path,exist_ok=True)
    events = os.listdir(event_ori_path)
    
    #h = gen_hanzireplacer(transfile_path)
    h = None

    for m in maps:
        try:
            transf = open_json(transfile_path + m)
        except:
            transf = []
        transdict = gen_transdict(transf, h)
        transmapdata(map_ori_path + m, map_out_path + m, transdict)

    for m in events:
        try:
            transf = open_json(transfile_path + m)
        except:
            transf = []
        transdict = gen_transdict(transf, h)
        transeventdata(event_ori_path + m, event_out_path + m, transdict)

    #transdatabase("ori\dump\db\DataBase.json","transed\dump\db\DataBase.json",gen_transdict(open_json(transfile_path + "DataBase.json"), h))
    transdatabase("ori\dump\db\DataBase.json","transed\dump\db\DataBase.json",gen_transdict(open_json(transfile_path + "DataBase_all.json"), h))

main()