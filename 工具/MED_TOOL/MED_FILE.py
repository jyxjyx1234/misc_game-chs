import os
import json
import re
from Lib import *

def split_text(text:str, lines:int)->list:
    linewidth = 24
    out = []
    text = text.replace("\n", "")
    if lines * linewidth < len(text):
        linewidth = len(text) // lines + (len(text) % lines != 0)
    for i in range(lines):
        out.append(text[i * linewidth:i * linewidth + linewidth])
        if out[-1] == "":
            out[-1] = "\u3000"
    return out

def find_loops(key: list):
    def is_loop(len_of_loop, key):
        for i in range(5):
            for _ in range(len_of_loop):
                if (_ + len_of_loop * i) < len(key) and key[_] != key[_ + len_of_loop * i]:
                    return False
        return True
    for i in range(3, len(key)- 2):
        if is_loop(i, key):
            return key[:i]
    raise Exception("Can't get key!")

class MEDCommand():
    def __init__(self):
        pass

    def read_from_bytesReader(self,reader:BytesReader):
        if reader.p == reader.length - 4:
            self.length = reader.readU8()
            self.op = reader.readU8()
            self.content = reader.read(1)
            return
        self.length = reader.readU8()
        if self.length == 0:
            self.op = reader.readU8()
            return
        self.op = reader.readU8()
        self.content = reader.read(self.length-1)
        self.idx = reader.readU16()

class DXLibScrFile(object):
    def __init__(self,data:bytes,key:list=[0],nameset=set(), filename = "") -> None:
        self.data=data[16:]
        self.length=len(self.data)
        self.key=key
        self.key_length=len(key)
        self.head1=data[:4]# 文件大小
        self.head2=data[4:8] # 文本开始位置(需要再加上文件头的0x10)
        self.head3=data[8:10] # 文本数量
        self.head3_=data[10:12] # 文本数量
        self.head4=data[12:16]
        self.commandsData = BytesReader(self.data[:from_bytes(self.head2)])
        self.giving_nameset=nameset
        self.filename = filename

    def head(self)->bytes:
        self.head1=len(self.data).to_bytes(4,'little')
        return self.head1+self.head2+self.head3 + self.head3_ +self.head4
    
    def _get_str_list(self):
        #获取文本列表
        self.str_start=int.from_bytes(self.head2,byteorder='little')
        self.app_len = int.from_bytes(self.head3_,byteorder='little')
        # if self.app_len != 0:
        #     print(self.filename, self.app_len)
        self.app_data = self.data[self.str_start:self.str_start + self.app_len * 2]
        strs=self.data[self.str_start + self.app_len * 2:].split(b'\x00')
        self.str_list=strs
        self.str_num=len(strs)

    def dump_str_list(self,path:str)->None:
        self._get_str_list()
        out=open(path,'w',encoding='utf-8')
        idx = 0
        for i in self.str_list:
            out.write(f"{idx : 0x}:{i.decode(encoding='sjis', errors = "ignore")}\n")
            idx+=1
        out.close()

    def split_command(self):
        self.commands = []
        if self.commandsData.data == b"\x00":
            return
        while self.commandsData.p < self.commandsData.length:
            c = MEDCommand()
            c.read_from_bytesReader(self.commandsData)
            self.commands.append(c)
    
    def dump_str(self,path:str)->None:
        self._get_str_list()
        self.split_command()
        out = OriJsonOutput()
        for c in self.commands:
            if c.op == 0x01:
                textp = from_bytes(c.content)
                text = self.str_list[textp].decode("932")
                out.add_text(text)
            if c.op == 0x0d:
                textp = from_bytes(c.content)
                text = self.str_list[textp].decode("932")
                out.add_name(text)
            if c.op == 0x04:
                out.append_dict()
        out.append_dict()
        out.save_json(path)
        return out.get_names(), out.textcount

    def trans(self,transdata, namedict):
        self._get_str_list()
        self.split_command()
        lineBuffer = []
        new_str_list = self.str_list.copy()
        for c in self.commands:
            if c.op == 0x01:
                textp = from_bytes(c.content)
                if len(lineBuffer) == 0:
                    try:
                        t = transdata.pop(0)
                    except:
                        print(new_str_list[textp].decode("932"))
                        exit(0)
                    transtext = t["message"]
                    lineBuffer = split_text(transtext, t["hangshu"])
                new_str_list[textp] = lineBuffer.pop(0).encode("932")
            if c.op == 0x0d:
                textp = from_bytes(c.content)
                name = self.str_list[textp].decode("932")
                transName = namedict[name]
                new_str_list[textp] = transName.encode("932")
        self.data = self.data[:self.str_start] + self.app_data + b'\x00'.join(new_str_list)

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

    def unpack(self, output):
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
            self.key = find_loops(f_key)
            print(f'key:{self.key}')
            name_list = self.unpack(output)
        return name_list

    def repack(self,path,outpath='md_scr.med.chs'):
        name_list = self.name_list
        entry_length = self.entry_length
        header = b'MDE0' + int.to_bytes(entry_length, 2, "little")
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