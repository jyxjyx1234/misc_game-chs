from Lib import *
from HanziReplacer import *

class TransTextFormat():
    def __init__(self,format:str) -> None:
        self._compile(format)
    
    def _compile(self,format):
        l = len(format)
        i = 0
        splitlist = []
        while i < l:
            match format[i]:
                case "%" if format[i:i+2] in ["%n","%m"]:
                    splitlist.append(format[i:i+2])
                    i += 2
                case "/":
                    splitlist.append(format[i+1:i+2])
                    i += 2
                case "^":
                    splitlist.append(format[i:i+2])
                    i += 2
                case "|":
                    splitlist.append(format[i:i+2])
                    i += 2
                case "&":
                    splitlist.append(format[i:i+2])
                    i += 2
                case _:
                    splitlist.append(format[i])
                    i += 1
        self.commands = splitlist
        
    def gen_text(self,name,message):
        outstr = ""
        if self.commands.count("%m") != 1:
            raise RuntimeError()
        messageposition =self.commands.index("%m")
        for i in range(len(self.commands)):
            c = self.commands[i]
            if len(c) == 1:
                outstr += c
            elif len(c) == 2:
                if c == "%n" and name:
                    outstr += name
                if c == "%m" and message:
                    outstr += message
                if c[0] == "^":
                    if name:
                        outstr += c[1]
                if c[0] == "|" or c[0] == "&":
                    s = c[1]
                    if not name and c[0] == "&":
                        continue
                    if i < messageposition:
                        if message and message[0] == s:
                            continue
                    if i > messageposition:
                        if message and message[-1] == s:
                            continue
                    outstr += s
        return outstr

class GalTranslTrans():
    def __init__(self, data:dict, nametransdict:dict = None) -> None:
        self.name = data.get("name",None)
        self.jp = data.get("pre_jp",None)
        self.zh = data.get("post_zh_preview",None)
        
        if nametransdict:
            self.name = nametransdict.get(self.name,self.name)
    
    def format(self,format:TransTextFormat):
        self.zh_f = format.gen_text(self.name,self.zh)
    
    def show_trans(self) -> str:
        return self.zh_f
    
    def show_ori(self) -> str:
        return self.jp

class GalTranslCache():
    def __init__(self) -> None:
        self.format = "%m"
    
    def set_format(self,format:str):
        '''
            format 格式：
            %n：人名
            %m：文本
            %n 和 %m 只出现一次
            ^后的符号：在人名为None时不添加
            |后的符号：当相邻的文本中没有这个符号时添加
            &后的符号：当相邻的文本中没有这个符号、且人名不为None时添加
            /:转义字符
        '''
        self.format = TransTextFormat(format)
    
    def read_from_json(self,path,namedict = None):
        jsondata = open_json(path)
        self.trans:list[GalTranslTrans]=[]
        for t in jsondata:
            self.trans.append(GalTranslTrans(t,namedict))
    
    def replace_ori(self,orilist):
        '''
        用于需要从其他地方替换原文时使用
        '''
        print(f'TransCache中：{len(self.trans)}\n原文件中：{len(orilist)}\n')
        for i in range(len(self.trans)):
            self.trans[i].jp = orilist[i]
    
    def hanzireplace(self,orifontpath,fontpath,fontname):
        h = HanziReplacer()
        all_str_list = []
        for t in self.trans:
            all_str_list.append(t.jp)
            all_str_list.append(t.name if t.name else "")
            all_str_list.append(t.zh)
        h.ReadTransAndGetHanzidict([all_str_list])
        for t in self.trans:
            self.zh = h.hanzitihuan(self.zh)
            self.name = h.hanzitihuan(self.name)
        h.ChangeFont(orifontpath,fontpath,fontname)
    
    def save_trans_data(self,path,ori_encoding,trans_encoding,conv_quanjiao = False):
        out = b''
        for t in self.trans:
            t.format(self.format)
            ori = t.show_ori()
            if type(ori) == type(''):
                ori = ori.encode(encoding = ori_encoding)
            trans = t.show_trans()
            if conv_quanjiao:
                trans = replace_halfwidth_with_fullwidth(trans)
            if trans_encoding == "gbk":
                trans = replace_symbol_for_gbk(trans)
            try:
                trans = trans.encode(encoding = trans_encoding)
            except UnicodeEncodeError:
                print(trans)
                exit()
            out += ori
            out += b'='
            out += trans
            out += b'\x0a'
        save_file_b(path, out)
    
    def save_repalce_dict(self,namedict = None) ->dict:
        out = {}
        for t in self.trans:
            t.format(self.format)
            out[t.show_ori()] = t.show_trans()
        if namedict:
            out.update(namedict)
        return out