from Lib import *
import os, re

ori_json_folder = "json_ori/"
trans_folder = "json_trans/"
ori_triline_folder = "triline_text_ori/"
out_triline_folder = "triline_text_trans/"

filelist = os.listdir(trans_folder)

for filename in filelist:
    filename = filename[:-5]
    ori_json = open_json(ori_json_folder + filename + ".json")
    tran_json = open_json(trans_folder + filename + ".json")
    ori_triline = open(ori_triline_folder + filename + ".ori.txt", 'r',encoding='utf8').readlines()
    out_triline = open(out_triline_folder + filename + ".tra.txt","w",encoding="utf8")

    p = 0
    for i in range(len(tran_json)):
        name = tran_json[i]['name']
        trans = name + tran_json[i]['post_zh_preview']
        hangshu = ori_json[i]['hangshu']
        while hangshu != 0:
            l = ori_triline[p]
            if l[:4]=="TR1=":
                ori_triline[p]="TR1="+trans+'\n'
            if l[:4]=='TR2=':
                print(trans)
                ori_triline[p]="TR2="+trans+'\n'
                hangshu = hangshu - 1
                trans = "　"
            p+=1
    
    for l in ori_triline:
        out_triline.write(l)
    out_triline.close()
