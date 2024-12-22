import json, os, re
import subprocess

def open_file_b(path)->bytes:
    return open(path,'rb').read()

def from_bytes(b:bytes)->int:
    return int.from_bytes(b, byteorder='little', signed=False)

def listdir(path):
    res = os.listdir(path)
    res = [".".join(i.split(".")[:-1]) for i in res]
    return res


def save_file_b(path,data)->None:
    with open(path,'wb') as f:
        f.write(data)

def save_json(path:str,data)->None:
    with open(path,'w',encoding='utf8') as f:
        json.dump(data,f,ensure_ascii=False,indent=4)

def open_json(path:str):
    f = open(path,'r',encoding='utf8')
    return json.load(f)

def to_bytes(num:int,length:int)->bytes:
    return num.to_bytes(length,byteorder='little')

def replace_symbol_for_gbk(text):
    text = text.replace("〜","～")
    text = text.replace("♪", "")
    text = text.replace("♡", "")
    text = text.replace("・", "·").replace("･･･", "…")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    return text

def replace_halfwidth_with_fullwidth(string):
    # 将半角符号替换为全角符号
    halfwidth_chars = ",?!~0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM "
    fullwidth_chars = "，？！～０１２３４５６７８９ｑｗｅｒｔｙｕｉｏｐａｓｄｆｇｈｊｋｌｚｘｃｖｂｎｍＱＷＥＲＴＹＵＩＯＰＡＳＤＦＧＨＪＫＬＺＸＣＶＢＮＭ\u3000"
    mapping = str.maketrans(halfwidth_chars, fullwidth_chars)
    return string.translate(mapping)

def processQuote(text):
    singleFlag = False
    doubleFlag = False
    newText = ""
    for i in text:
        if i == "'":
            if singleFlag:
                newText += "」"
                singleFlag = False
            else:
                newText += "「"
                singleFlag = True
        elif i == "\"":
            if doubleFlag:
                newText += "」"
                doubleFlag = False
            else:
                newText += "「"
                doubleFlag = True
        else:
            newText += i
    if doubleFlag or singleFlag:
        print(text)
        raise RuntimeError
    return newText
        


def copyfontinfo(ori_font,info_provider,outpath):
    ori = subprocess.check_output(('otfccdump.exe', '-n', '0', '--hex-cmap', '--no-bom', ori_font)).decode('utf8',errors='ignore')
    ori = json.loads(ori)
    infoprov = subprocess.check_output(('otfccdump.exe', '-n', '0', '--hex-cmap', '--no-bom', info_provider)).decode('utf8',errors='ignore')
    infoprov = json.loads(infoprov)

    ori['name'] = infoprov['name']
    for i in ori['OS_2']:
        if type(ori['OS_2'][i]) !=type(1):
            ori['OS_2'][i] = infoprov['OS_2'][i]

    subprocess.run(['otfccbuild.exe', '-O3', '-o', outpath], input=json.dumps(ori), encoding='utf-8')
    
class OriJsonOutput():
    def __init__(self) -> None:
        self.savefilter = lambda x: True
        self.textcount = 0
        self.preProcess = lambda x: x
        self.messageset = set()
        self.outlist = []
        self.dic = {}
    
    def save_json(self, path, split = 0):
        if not split:
            save_json(path, self.outlist)
        else:
            l = len(self.outlist) // split
            for i in range(split):
                outlist = self.outlist[i*l : i*l + l] if i+1 != split else self.outlist[i*l : ]
                save_json(f'{i+1}_{path}', outlist)
    
    def append_dict(self, quchong = False):
        if "message" not in self.dic or not self.savefilter(self.dic):
            return
        
        self.dic["message"] = self.preProcess(self.dic["message"])
        if "name" in self.dic:
            self.dic["name"] = self.preProcess(self.dic["name"])

        if quchong:
            if self.dic['message'] in self.messageset:
                self.dic = {}
                return

        self.outlist.append(self.dic)
        self.textcount += len(self.dic['message'])
        self.messageset.add(self.dic['message'])
        self.dic = {}
    
    def get_names(self):
        namedict = {}
        for i in self.outlist:
            if 'name' in i:
                namedict[i['name']] = i['name']
        return namedict
    
class BytesReader:
    def __init__(self, data) -> None:
        self.data = data
        self.p = 0

    def read(self, i : int = 1) -> bytes:
        self.data[self.p]
        res = self.data[self.p : self.p + i]
        self.p += i
        return res
    
    def readU32(self):
        res = self.read(4)
        res = from_bytes(res)
        return res
    
    def readU8(self):
        res = self.read(1)
        res = from_bytes(res)
        return res