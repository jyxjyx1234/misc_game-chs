from SNR_FILE import *
import os

ori_path = "snr\\"
trans_path = "transl_cache\\"
out_path = "release\\additional\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(ori_path)
namedict = open_json("namedict.json")

for file in fileslist:
    f = SNR_FILE(ori_path + file)
    try:
        transf = open_json(trans_path + file + ".json")
    except:
        transf = []
    transdict = {}
    for i in transf:
        transdict[i['pre_jp']] = i['pre_zh']
    f.trans(namedict,transdict)
    f.save(out_path + file)

f = open(out_path + "0001.snr", "r", encoding='utf16').readlines()
fw = open(out_path + "0001.snr", "w", encoding='utf16')
for i in range(len(f)):
    fw.write(f[i])
    if i == 44:
        fw.write('''
　本补丁为AI翻译补丁，使用Claude-3-5-sonnet进行翻译，由ALyCE\jyxjyx1234制作，免费发布于2dfan\github。如果从 网赚盘（如飞猫云） or 付费 下载到本补丁，请顺手点个举报。
''')
fw.close()

os.system("arc_pack xp3 release/additional release/additional.xp3")