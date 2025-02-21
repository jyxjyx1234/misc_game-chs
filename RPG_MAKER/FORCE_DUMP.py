#递归解析json文件中所有值，提取出其中的文本
#先将.\www\data复制一份副本到同目录下，其中一个命名为.data_back
#提取出的文本放入提取文本.json和待翻译文本.json，第二个只保留文本并去重，用于翻译；第一个保留路径，用于写回。

import json
import os
import re

res=[]
tres=[]
filenames=os.listdir('data')
outpath='提取文本.json'
outfile=open(outpath,'w',encoding='utf8')
toutpath='待翻译文本.json'
toutfile=open(toutpath,'w',encoding='utf8')
textlist=[]#用于去重


Filelist = []
filelist =[]
for home, dirs, files in os.walk('data'):
    for filename in files:
        Filelist.append(filename)
for i in Filelist:
    i=i.split('.')
    i=i[0]
    filelist.append(i)

'''
输出格式：
[
{
"dir":路径
"message":值
}
]
'''

'''
dir格式：上一层为列表：.[序号，上一层为字典：.{键值，文件（变量）名：.(
如
a={
    "code": 402,
    "indent": 0,
    "parameters": [
        0,
        "誘う♡"
    ]
}
中，"誘う♡"的路径为：'.(a.{parameters.[1'
'''

def jiexi(dir):#返回dir路径所指示的内容
    dir=dir.split('.')
    res=''
    for i in dir:
        if i=='':
            continue
        elif i[0]=='{':
            res=res+'["'+i[1:]+'"]'
        elif i[0]=='[':
            res=res+'['+i[1:]+']'
        elif i[0]=='(':
            f=i[1:]
    return eval(f+res)

def shaixuan(text):#返回bool值，判断是否是所要的文本
    if text=='':#不要空值
        return False
    if type(text)!=type(""):#只要文本
        return False
    if re.match('[a-zA-Z]',text[0]):#首位是字母的一般都是资源文件之类的
        return False
    if re.search('[._!$]',text):#有这些特殊字符的一般都是资源文件之类的
        return False
    try:
        int(text)#部分数值以文本形式传递，予以排除
        return False
    except ValueError:
        pass
    if text in filelist:#去除文件名
        return False
    return True

def diguijiexi(dir):
    content=jiexi(dir)
    if type(content)==type({}):
        for i in content:
            diguijiexi(dir=dir+'.{'+i)
    elif type(content)==type([]):
        for i in range(len(content)):
            diguijiexi(dir=dir+'.['+str(i))
    else:
        if shaixuan(content):
            if "variables" not in dir:#排除变量名
                outdic={}
                outdic['dir']=dir
                outdic['message']=content
                res.append(outdic)

                if content not in textlist:
                    toutdic={}
                    toutdic['message']=content
                    tres.append(toutdic)
                    textlist.append(content)
        return

for filename in filenames:
    file=open('data\\'+filename,'r',encoding='utf8')
    exec(filename[:-5]+'=json.load(file)')
    diguijiexi('.('+filename[:-5])

json.dump(res,outfile,ensure_ascii=False,indent=4)
json.dump(tres,toutfile,ensure_ascii=False,indent=4)