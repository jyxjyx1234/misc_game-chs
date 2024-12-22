from Lib import *

ori_file_list = ['output0.txt','output1.txt','output2.txt','output3.txt',]

out = []
quchong = []

def readline(text:str,n:int)->dict:
    dic = {}
    if "「" in text:
        i = text.index("「")
        dic["name"] = text[:i]
        dic["message"] = text[i+1:-1]
    else:
        dic["message"] = text
    dic["n"] = n
    return dic

all_len = 0

for file in ori_file_list:
    f = open(file,'r',encoding='sjis').readlines()
    f = [t.replace('\n','') for t in f]
    i = 0
    while i < len(f):
        n = 1
        text = f[i][1:]
        _ = i + 1
        while (_ < len(f)) and (f[_] == "" or f[_][0] != "="):
            text = text + "\r" + f[_]
            _ += 1

        while (_ < len(f)) and (f[_] != "") and (f[_][1:] == text[-(len(f[_])-1):]) and (len(f[_][1:])!= len(text)):
            n += 1
            _ += 1
        
        if text not in quchong:
            quchong.append(text)
            dic = readline(text ,n)
            out.append(dic)
            all_len += len(dic["message"])
        i = _

save_json("ori.json",out)
print(all_len)