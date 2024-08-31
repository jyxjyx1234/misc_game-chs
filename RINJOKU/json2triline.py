from Lib import *
import os, re

ori_json_folder = "json_ori\\"
trans_folder = "json_trans\\"
ori_triline_folder = "triline_text_ori\\"
out_triline_folder = "triline_text_trans\\"
os.makedirs(out_triline_folder,exist_ok=True)

filelist = os.listdir(trans_folder)
dialogSymboldict = {"（":"）","「":"」","『":"』"}
namedict = open_json('namedict.json')

for filename in filelist:
    filename = filename[:-5]
    ori_json = open_json(ori_json_folder + filename + ".json")
    tran_json = open_json(trans_folder + filename + ".json")
    ori_triline = open(ori_triline_folder + filename + ".ori.txt", 'r',encoding='utf8').readlines()
    out_triline = open(out_triline_folder + filename + ".tra.txt","w",encoding="utf8")

    p = 0
    for i in range(len(tran_json)):
        name = tran_json[i]['name']
        trans = tran_json[i]['post_zh_preview']
        #这里调节人名格式
        while True:
            l = ori_triline[p]
            if l[:4]=="TR1=":
                if name != "":
                    dialogSymbol = l[4:].replace(name, "")[0]
                    name = namedict[name]
                    trans = f"{name}{dialogSymbol}{trans}{dialogSymboldict[dialogSymbol]}"
                    trans = trans.replace("「「","「").replace("「『","「").replace("『「","『")
                ori_triline[p]="TR1="+trans+'\n'
            if l[:4]=='TR2=':
                ori_triline[p]="TR2="+trans+'\n'
                p+=1
                break
            p+=1

    for l in ori_triline:
        out_triline.write(l)
    out_triline.close()