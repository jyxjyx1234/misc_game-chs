from Lib import *
import os, re

ori_folder = "triline_text_ori\\"
out_path = "json_ori\\"
os.makedirs(out_path,exist_ok=True)
os.makedirs("json_trans\\",exist_ok=True)

filelist = os.listdir(ori_folder)


for filename in filelist:
    textlist:list[str] = []
    outlist = []
    dic = {}

    ori_filep = ori_folder + filename
    out_filep = out_path + filename.replace(".ori.txt", ".json")

    ori_file = open(ori_filep, "r", encoding="utf8").readlines()
    # 预读取
    for i in range(len(ori_file)):
        if len(ori_file[i]) > 4 and ori_file[i][0:4] == "ORI=":
            textlist.append(ori_file[i][4:-1])

    #需要拼接文本可能需要进一步修改代码
    #这里是用【人名】，实际可能需要改动

    for l in textlist:
        if "】" in l:
            name,message = l.split("】",2)
            name = name[1:]
            dic["name"] = name
            dic["message"] = message
        else:
            dic["message"] = l

        outlist.append(dic)
        dic={}
    
    save_json(out_filep,outlist)

'''
#人名没有特殊标识时，可以认为「『前是人名。这样会提取到很多不是人名的，可以先提取一次，然后创建一个人名表：
nameset = set()#这一行放在代码最前面

...

    for l in textlist:
        if "「" in l:
            name,message = l.split("「",1)
            message = "「" + message
            if len(name) >10 :
                dic["message"] = l
            else:
                dic["name"] = name
                dic["message"] = message
                nameset.add(name)
        elif "『" in l:
            name,message = l.split("『",1)
            message = "『" + message
            if len(name) >10 :
                dic["message"] = l
            else:
                dic["name"] = name
                dic["message"] = message
                nameset.add(name)
        else:
            dic["message"] = l

        outlist.append(dic)
        dic={}

print(nameset)#这一行放在代码最后
    

#然后再对nameset手动筛选，将以上代码改为：
nameset = {'霧葉', ...}#这一行放在代码最前面

...

    for l in textlist:
        if "「" in l:
            name,message = l.split("「",1)
            message = "「" + message
            if name not in nameset:
                dic["message"] = l
            else:
                dic["name"] = name
                dic["message"] = message
        elif "『" in l:
            name,message = l.split("『",1)
            message = "『" + message
            if name not in nameset:
                dic["message"] = l
            else:
                dic["name"] = name
                dic["message"] = message
        else:
            dic["message"] = l

        outlist.append(dic)
        dic={}
'''