from Lib import *
import os, re

ori_folder = "triline_text_ori/"
out_path = "json_ori/"

filelist = os.listdir(ori_folder)

'''
需要拼接文本时可能用到的代码
namelist = ["想瑠「", "瑠那「", "健太「", "想瑠『", "瑠那『", "健太『","レコーダー『"]
textendflaglist = ["。", "…", "！","＠","＃"]

def ifduihua(text:str):
    for i in namelist:
        try:
            if text.index(i) == 0:
                return i[-1]
        except ValueError:
            pass
    return None
'''

nameset = {'霧葉', '？瑠那',  '碧乃', 'アシュリー', '瑠那', 'Ｊ．Ｋ', 'アシュリ−', '母親', '想瑠', 'ジョニー',  '想瑠＆霧葉', '？想瑠', '子供', 'デップ', 'ホットドッグ', 'ジョニー＆デップ', 'アシュリー＆霧葉'}

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

    #不需要拼接文本时
    
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
    
    save_json(out_filep,outlist)

    '''
    # 拼接文本
    i = 0
    while i in range(len(textlist)):
        hangshu = 1
        idx, t = textlist[i]
        outtext = t
        if ifduihua(t):  # 对话
            flag1 = ifduihua(t)
            flag2 = "」" if flag1 == "「" else "』"
            name = t[0:2]
            while t[-1] != flag2:
                hangshu += 1
                i += 1
                idx, t = textlist[i]
                outtext = outtext + t
            outtext = re.sub("／.*?≫","",outtext)
            outtext = re.sub("≪","",outtext)
            dic["name"] = name
            dic["message"] = outtext[outtext.index(flag1):]
            dic["hangshu"] = hangshu
            if hangshu > 3:
                print(outtext)
            outlist.append(dic)
            dic = {}

        else:  # 旁白
            while t[-1] not in textendflaglist:
                hangshu += 1
                i += 1
                idx, t = textlist[i]
                if ifduihua(t):
                    i -= 1
                    hangshu -= 1
                    break
                outtext = outtext + t
            outtext = re.sub("／.*?≫","",outtext)
            outtext = re.sub("≪","",outtext)
            dic["message"] = outtext
            dic["hangshu"] = hangshu
            if hangshu > 3:
                print(outtext)
            outlist.append(dic)
            dic = {}
        
        i += 1
    '''

print(nameset)
