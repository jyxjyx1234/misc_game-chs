import json, os, re, io
import subprocess

def open_file_b(path)->bytes:
    return open(path,'rb').read()

def from_bytes(b:bytes)->int:
    return int.from_bytes(b, byteorder='little', signed=False)

def listdir(path):
    res = os.listdir(path)
    res = [".".join(i.split(".")[:-1]) for i in res]
    return res


def save_file_b(path, data, enc = None)->None:
    if enc:
        data = bytearray(data)
        for i in range(len(data)):
            data[i] ^= enc[i % len(enc)]
        data = bytes(data)
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
    text = text.replace("・", "·").replace("･･･", "…").replace("⋯", "…")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    text = text.replace("「「", "「")
    text = text.replace("」」", "」")
    return text

def replace_halfwidth_with_fullwidth(string):
    # 将半角符号替换为全角符号
    halfwidth_chars = ",?!~0123456789qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM _:()-/%="
    fullwidth_chars = "，？！～０１２３４５６７８９ｑｗｅｒｔｙｕｉｏｐａｓｄｆｇｈｊｋｌｚｘｃｖｂｎｍＱＷＥＲＴＹＵＩＯＰＡＳＤＦＧＨＪＫＬＺＸＣＶＢＮＭ\u3000＿：（）—／％＝"
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
    
    def add_text(self, text):
        self.dic["line"] = self.dic.get("line",0) + 1
        self.dic['ori'] = self.dic.get("message","") + text
        self.dic['message'] = self.preProcess(self.dic['ori'])
    
    def add_name(self, name):
        self.dic['name'] = self.preProcess(name)
    
    def remove_name(self):
        try:
            del self.dic['name']
        except:
            pass
    
    def save_json(self, path, split = 0):
        if len(self.outlist) == 0:
            return
        if not split:
            save_json(path, self.outlist)
        else:
            l = len(self.outlist) // split
            for i in range(split):
                outlist = self.outlist[i*l : i*l + l] if i+1 != split else self.outlist[i*l : ]
                save_json(f'{path}_{i+1}.json', outlist)
    
    def append_dict(self, quchong = False, remove_name = True):
        if "message" not in self.dic or not self.savefilter(self.dic):
            self.dic = {}
            return
        
        if self.dic['message'] == "":
            self.dic = {}
            return
        
        if "name" in self.dic:
            if self.dic["name"] == "":
                del self.dic["name"]

        if quchong:
            if self.dic['ori'] in self.messageset:
                self.dic = {}
                return

        self.outlist.append(self.dic)
        self.textcount += len(self.dic['message'])
        self.messageset.add(self.dic['ori'])
        if 'name' in self.dic:
            if not remove_name:
                self.dic = {'name':self.dic['name']}
            else:
                self.dic = {}
        else:
            self.dic = {}
    
    def get_names(self):
        namedict = {}
        for i in self.outlist:
            if 'name' in i:
                namedict[i['name']] = i['name']
        return namedict
    
class BytesReader(io.BytesIO):
    def __init__(self, data):
        super().__init__(data)
        self.length = len(data)

    def readU32(self):
        if self.tell() + 4 > self.length:
            raise EOFError
        res = self.read(4)
        res = from_bytes(res)
        return res
    
    def readU8(self):
        res = self.read(1)
        res = from_bytes(res)
        return res
    
    def readU16(self):
        res = self.read(2)
        res = from_bytes(res)
        return res
    
    def is_end(self):
        if self.tell() >= self.length:
            return True
    
    def read_utill_zero(self):
        out = b""
        while True:
            c = self.read(1)
            if c == b"\x00":
                break
            if self.is_end():
                break
            out += c
        return out
    
    def read_text_from_offset(self, offset):
        ori_p = self.tell()
        self.seek(offset)
        res = self.read_utill_zero()
        self.seek(ori_p)
        return res