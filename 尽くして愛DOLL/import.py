from SNR_FILE import *
import os

ori_path = "scenario\\"
trans_path = "transl_cache\\"
out_path = "release\\patch\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(trans_path)
namedict = open_json("namedict.json")

for file in fileslist:
    f = KS_FILE(ori_path + file.replace(".json",''))
    try:
        transf = open_json(trans_path + file)
    except:
        transf = []
    transdict = {}
    for i in transf:
        transdict[i['pre_jp']] = replace_halfwidth_with_fullwidth(i['pre_zh'])
    f.trans(namedict,transdict)
    f.save(out_path + file.replace(".json",''))

f = open(out_path + "scene01.ks", "r", encoding='utf16').readlines()
fw = open(out_path + "scene01.ks", "w", encoding='utf16')
for i in range(len(f)):
    fw.write(f[i])
    if i == 21:
        fw.write('''
　本补丁为AI翻译补丁，使用Claude-3-5-sonnet进行翻译，由ALyCE\jyxjyx1234制作，免费发布于2dfan\github。如果从 网赚盘（如飞猫云） or 付费下载到本补丁，请顺手点个举报。
[p2]

''')
fw.close()

os.system("arc_pack xp3 release/patch release/patch.xp3")
os.system("arc_pack xp3 release/data release/data.xp3")