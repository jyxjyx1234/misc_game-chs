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

    flag = False
    for l in textlist:
        if "【" in l and "】" not in l:
            name_ = l[1:]
            flag = True
            fenhang = 2
            continue
        elif flag:
            try:
                name,message = l.split("】",2)
            except:
                name_ += l
                fenhang += 1
                continue
            name = name_ + name
            dic["name"] = name
            dic["message"] = message
            dic["fenhang"] = fenhang
            flag = False
        elif "】" in l:
            name,message = l.split("】",2)
            name = name[1:]
            dic["name"] = name
            dic["message"] = message
        else:
            dic["message"] = l

        outlist.append(dic)
        dic={}
    
    save_json(out_filep,outlist)
