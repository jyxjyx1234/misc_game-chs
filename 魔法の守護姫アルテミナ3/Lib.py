import os
import json
import re
from HanziReplacer import *

def open_file_b(path)->bytes:
    return open(path,'rb').read()

def from_bytes(b:bytes)->int:
    return int.from_bytes(b, byteorder='little', signed=False)

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

class DXLibScrFile(object):
    def __init__(self,data:bytes,key:list=[0],nameset=set()) -> None:
        self.data=data[16:]
        self.length=len(self.data)
        self.key=key
        self.key_length=len(key)
        self.head1=data[:4]
        self.head2=data[4:8]
        self.head3=data[8:16]
        self.giving_nameset=nameset

    def head(self)->bytes:
        #self.head1=len(self.data).to_bytes(4,'little')
        return self.head1+self.head2+self.head3
    
    def _get_str_list(self):
        #以bytes形式存储，以保证兼容性
        self.str_start=int.from_bytes(self.head2,byteorder='little')
        strs_=self.data[self.str_start:].split(b'\x00')
        strs=[]
        for s in strs_:
            strs.append([s,''])
        self.str_list=strs
        self.str_num=len(strs)

    def _classify_str(self):
        for i in range(self.str_num):
            if self.str_list[i][0]==b'':
                continue

            try:
                str_=self.str_list[i][0].decode(encoding='sjis')
            except:
                self.str_list[i][1]='ukn'
                continue

            if re.match('[a-zA-Z0-9/#;\*:-@\{\}-]',str_):
                self.str_list[i][1]='ukn'
            else:
                self.str_list[i][1]='message'
            if self.giving_nameset:#当给定了人名表时，通过人名表判断，以确定完全提取人名
                if str_ in self.giving_nameset:
                    self.str_list[i][1]='name'
            else:#否则，通过「（前为人名。用这个方法可以生成人名表（DXLibScrFile.namelist）
                if str_[0]=='「' or str_[0]=='（' or str_[0]=='『':
                    j=i-1
                    while True:
                        if self.str_list[j][1]=='message':
                            if len(self.str_list[j][0])<=8:
                                self.str_list[j][1]='name'
                            break
                        j-=1

    def dump_str(self,path:str)->None:
        self._get_str_list()
        self._classify_str()
        out=[]
        dic={}
        self.nameset=set()
        for i in self.str_list:
            if i[1]=='message':
                dic['message']=i[0].decode(encoding='sjis')
                out.append(dic.copy())
                dic={}
            if i[1]=='name':
                dic['name']=i[0].decode(encoding='sjis')
                self.nameset.add(dic['name'])
        save_json(path=path,data=out[1:]+out[0:1])

    def trans(self,transdict:dict,hanzireplacer:HanziReplacer):
        self._get_str_list()
        self._classify_str()
        for i in range(self.str_num):
            if self.str_list[i][1]=='message':
                ori_str=self.str_list[i][0].decode(encoding='sjis')
                self.str_list[i][0]=hanzireplacer.hanzitihuan(transdict.get(ori_str,ori_str)).encode(encoding='sjis')
        new_str_data=b'\x00'.join([i[0] for i in self.str_list])
        self.data=self.data[0:self.str_start]+new_str_data

    def trans_gbk(self,transdict:dict):
        self._get_str_list()
        self._classify_str()
        for i in range(self.str_num):
            if self.str_list[i][1]=='message':
                ori_str=self.str_list[i][0].decode(encoding='sjis')
                try:
                    self.str_list[i][0]=transdict.get(ori_str,ori_str).replace('・','·').encode(encoding='gbk')
                except:
                    print(transdict.get(ori_str,ori_str))
        new_str_data=b'\x00'.join([i[0] for i in self.str_list])
        self.data=self.data[0:self.str_start]+new_str_data

    def decrypt(self) -> None:
        _data=[]
        for i in range(self.length):
            sec=self.data[i]
            k=self.key[i%self.key_length]
            ori=sec-k
            if ori < 0:
                ori += 256
            _data.append(ori)
        self.data=bytes(_data)

    def encrypt(self) -> None:
        _data=[]
        for i in range(self.length):
            ori=self.data[i]
            k=self.key[i%self.key_length]
            sec=ori+k
            if sec >= 256:
                sec -= 256
            _data.append(sec)
        self.data=bytes(_data)

    def write_to_file(self,path:str) -> None:
        out_file=open(path,'wb')
        out_file.write(self.head()+self.data)
    
    def byte(self) -> bytes:
        return self.head()+self.data

class MEDFile(object):
    def __init__(self,path:str,key:list=[0]) -> None:#init时会自动解包
        self.path=path
        self.data = open_file_b(path)
        self.entry_length = from_bytes(self.data[4:6])
        self.entry_count = from_bytes(self.data[6:8])
        self.key=key
        self.name_list=self.unpack(path.replace('.med','\\'))

    def unpack(self,output):
        name_list = []
        if not os.path.exists(output):
            os.mkdir(output)
        for i in range(self.entry_count):
            entry = self.data[16+i*self.entry_length:16+(i+1)*self.entry_length]
            offset = from_bytes(entry[-4:])
            length = from_bytes(entry[-8:-4])
            unk = from_bytes(entry[-12:-8])
            name = ''
            for i in entry:
                if not i:
                    break
                else:
                    name+=chr(i)
            file_name = f'{name}_{unk}'

            _file_data = self.data[offset:offset+length]
            _file_data = DXLibScrFile(_file_data,self.key)
            _file_data.decrypt()
            _file_data.write_to_file(f'{output}/{file_name}')
            name_list.append(file_name)
        
        if len(self.key)==1:
            l=os.listdir(output)
            for i in l:
                if i[:5]=='_VIEW':
                    _view=open(output+i,'rb').read()
            sec=_view[16:40]
            ori=b'\x00\x23\x52\x55\x4C\x45\x5F\x56\x49\x45\x57\x45\x52\x00\x3A\x56\x49\x45\x57\x5F\x30\x00\x7B\x00'
            f_key=[]
            for i in range(24):
                k=sec[i]-ori[i]
                if k < 0:
                    k+=256
                f_key.append(k)
            print(f_key)
            
        return name_list

    def repack(self,path,outpath='md_scr.med.chs'):
        name_list = self.name_list
        entry_length = 0x17
        header = b'MDE0\x17\x00'
        header += to_bytes(len(name_list), 2) + b'\x00' * 8
        entry_all = []
        file_data = []
        offset = 0x10 + len(name_list)*entry_length
        
        for f in name_list:
            _p = len(f)-1
            while f[_p] != '_':
                _p-=1
            name = f[:_p].encode() 
            name += b'\x00'*(entry_length-len(name)-12)
            unk = int(f[_p+1:])
            unk = to_bytes(unk, 4)
            _file_data = open_file_b(f'{path}/{f}')
            _file_data = DXLibScrFile(_file_data,self.key)
            _file_data.encrypt()
            _file_data=_file_data.byte()
            entry = name + unk + to_bytes(len(_file_data), 4) + to_bytes(offset, 4)
            entry_all.append(entry)
            file_data.append(_file_data)
            offset += len(_file_data)
        
        save_file_b(outpath, header + b''.join(entry_all) + b''.join(file_data))