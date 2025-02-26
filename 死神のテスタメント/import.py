import os,json
from Lib import *
from HanziReplacer import *

ori_text_path='TXT\\'
trans_text_path='transl_cache\\'
out_text_path='release\\trans\\'
os.makedirs(out_text_path, exist_ok=True)
filelist=os.listdir(trans_text_path)

hanzireplacer=HanziReplacer()
transdict={}
class txtfile(object):
    def __init__(self,data) -> None:
        self.data=data
        self.content=data.split(b'\x0d\x0a')
        self.decode()
        
    def decode(self):
        self.lines=[]
        for l in self.content:
            self.lines.append(line(l))
            
    
    def trans(self,transdict:dict,hanzireplacer:HanziReplacer):
        self.content=[]
        l=line.create_empty_msg()
        for new_l in self.lines:
            if new_l.type=='msg':
                l.add(new_l)
            else:
                if l.content!=b'':
                    l.trans(transdict,hanzireplacer)
                    self.content.append(l.to_bytes())
                    l=line.create_empty_msg()
                self.content.append(new_l.to_bytes())
        if l.content!=b'':
            l.trans(transdict,hanzireplacer)
            self.content.append(l.content)
            

    def save(self,path):
        self.data=b'\x0d\x0a'.join(self.content)
        save_file_b(path,self.data)

class line(object):
    def __init__(self,b:bytes) -> None:
            self.content=b
            self.text=''
            self.classify()
            self.get_plain_text()
            
    
    def classify(self):
        try:
            texts=self.content.decode(encoding='sjis')
        except:
            self.type='bytes'
            return
        if texts=='':
            self.type='n'
        elif texts[0]=='【':
            self.type='name'
            self.text=texts
        elif re.match(r'[;$]',texts):
            self.type='other'
        else:
            self.type='msg'
            self.text=texts
    
    def trans(self,transdict:dict,hanzireplacer:HanziReplacer):
        if self.type=='msg':
            try:
                trans=transdict[self.text]
                self.content=hanzireplacer.hanzitihuan(trans).encode(encoding='sjis')
            except KeyError:
                global errorlist
                errorlist.append(self.text)

    def to_bytes(self):
        return self.content
       
    
    def get_plain_text(self):
        zhuyin=re.compile(r'_t!(.*?),(.*?),(.*?),(.*?)/')
        if self.type=='msg':
            self.content=re.sub(zhuyin,'',self.content.decode(encoding='sjis')).encode(encoding='sjis')
    
    def add(self,another_line):
        if self.type==another_line.type:
            self.content=self.content+another_line.content
            texts=self.content.decode(encoding='sjis')
            self.text=texts
        else:
            raise TypeError()
    
    def create_empty_msg():
        _=line(b'')
        _.type='msg'
        return _
    


print('reading trans……')
for f in filelist:
    f=open_json(trans_text_path+f)
    for dic in f:
        if '|' in dic['pre_jp'] and len(dic['pre_jp'].split('|'))==2:
            transdict[dic['pre_jp'].split('|')[0]]=dic["post_zh_preview"].split('|')[0]
            transdict[dic['pre_jp'].split('|')[1]]=dic["post_zh_preview"].split('|')[1]
        transdict[dic['pre_jp']]=dic["post_zh_preview"]

hanzireplacer.ReadTransAndGetHanzidict(replacement_dicts=[transdict])

enc_key = b"SBRioshiina"
os.makedirs("release", exist_ok = True)
hanzireplacer.gen_replace("release\\trans\\data2.bin", enc = enc_key)

i=0
l=len(filelist)
print('replacing text……')
for f in filelist:
    i+=1
    print(f'{i}\{l}',end='\r')
    f=f.replace('.json','')
    ori_f=open_file_b(ori_text_path+f+'.txt')
    ori_f=txtfile(ori_f)
    ori_f.trans(transdict,hanzireplacer)
    ori_f.save(out_text_path+f+'.txt')
    
    ori_f = open_file_b(out_text_path+f+'.txt')
    save_file_b(out_text_path+f+'.txt', ori_f, enc = enc_key)