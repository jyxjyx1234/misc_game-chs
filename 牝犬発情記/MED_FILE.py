import os
import json
import re
from HanziReplacer import *
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
    def __init__(self,data:bytes,key:list=[0],nameset=set(), textp_add = 0) -> None:
        self.data=data[16:]
        self.length=len(self.data)
        self.key=key
        self.key_length=len(key)
        self.head1=data[:4]# 文件大小
        self.head2=data[4:8] # 文本开始位置(需要再加上文件头的0x10)
        self.head3=data[8:10] # 文本数量
        self.head4=data[10:12] # 特殊数量
        # self.textp_add = bool(from_bytes(self.head4))
        self.textp_add = textp_add
        self.head5=data[12:16]
        self.commandsData = BytesReader(self.data[:from_bytes(self.head2)])
        self.giving_nameset=nameset
        self._get_str_list()

    def head(self)->bytes:
        #self.head1=len(self.data).to_bytes(4,'little')
        return self.head1+self.head2+self.head3+self.head4+self.head5
    
    def _get_str_list(self):
        #获取文本列表
        self.str_start=int.from_bytes(self.head2,byteorder='little')
        strs=self.data[self.str_start:].split(b'\x00')
        self.str_list=strs
        self.str_num=len(strs)

    def dump_str_list(self,path:str)->None:
        out=open(path,'w',encoding='utf-8')
        idx = 0
        for i in self.str_list:
            out.write(f"{idx : 0x}:{i.decode(encoding='sjis', errors = "ignore")}\n")
            idx+=1
        out.close()

    def split_command(self):
        self.commands = []
        while self.commandsData.p < self.commandsData.length:
            c = MEDCommand()
            c.read_from_bytesReader(self.commandsData)
            self.commands.append(c)
    
    def dump_str(self,path:str)->None:
        self.split_command()
        out = OriJsonOutput()
        for c in self.commands:
            if c.op == 0x01:
                textp = from_bytes(c.content)
                text = self.str_list[textp + self.textp_add].decode("932")
                out.add_text(text)
            # if c.op == 0x02:
            #     textp = from_bytes(c.content)
            #     text = self.str_list[textp].decode("932")
            #     out.add_text(text)
            #     out.append_dict()
            if c.op == 0x0d:
                textp = from_bytes(c.content)
                text = self.str_list[textp + self.textp_add].decode("932")
                out.add_name(text)
            if c.op == 0x04:
                out.append_dict()
        out.save_json(path)
        return out.get_names(), out.textcount

    def trans(self,transdata, namedict, hanzireplacer:HanziReplacer):
        self.split_command()
        lineBuffer = []
        new_str_list = self.str_list.copy()
        for c in self.commands:
            if c.op == 0x01:
                if len(lineBuffer) == 0:
                    t = transdata.pop(0)
                    transtext = t["message"]
                    transtext = hanzireplacer.hanzitihuan(transtext)
                    lineBuffer = split_text(transtext, t["hangshu"])
                textp = from_bytes(c.content)
                new_str_list[textp + self.textp_add] = lineBuffer.pop(0).encode("932")
            if c.op == 0x0d:
                textp = from_bytes(c.content)
                name = self.str_list[textp + self.textp_add].decode("932")
                transName = namedict[name]
                transName = hanzireplacer.hanzitihuan(transName)
                #transName = replace_fullwidth_with_halfwidth(transName)
                new_str_list[textp + self.textp_add] = transName.encode("932")
                
        self.data = self.data[:self.str_start] + b'\x00'.join(new_str_list)

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
            name = []
            for i in entry:
                if not i:
                    break
                else:
                    name.append(i)
            name = bytes(name).decode('shift-jis')
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
        entry_length = self.entry_length
        header = b'MDE0' + to_bytes(entry_length, 2)
        header += to_bytes(len(name_list), 2) + b'\x00' * 8
        entry_all = []
        file_data = []
        offset = 0x10 + len(name_list)*entry_length
        
        for f in name_list:
            _p = len(f)-1
            while f[_p] != '_':
                _p-=1
            name = f[:_p].encode("932") 
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