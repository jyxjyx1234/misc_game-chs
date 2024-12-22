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
        ori_json = open_json("ori_jsons\\" + file)
    except:
        print("1")
        f.save(out_path + file.replace(".json",''))
        continue

    translist = []
    for i in range(len(transf)):
        trans = remove_double_yinhao(replace_halfwidth_with_fullwidth(transf[i]['post_zh_preview']))
        hangshu = ori_json[i]['hangshu']
        translist.append(trans)
        while hangshu > 1:
            translist.append("")
            hangshu -= 1
    
    for l in f.lines:
        if l.type == "msg":
            l.text = l.text.replace(l.msg, translist.pop(0))
    f.save(out_path + file.replace(".json",''))


f = open(out_path + "scenario.ks", "r", encoding='utf16').readlines()
fw = open(out_path + "scenario.ks", "w", encoding='utf16')
for i in range(len(f)):
    fw.write(f[i])
    if i == 94:
        fw.write('''
　本补丁为AI翻译补丁，使用Claude-3-haiku进行翻译，由ALyCE\jyxjyx1234制作，免费发布于2dfan\github。如果从 网赚盘（如飞猫云） or 付费下载到本补丁，请顺手点个举报。
[cpg]

''')
fw.close()

os.system("arc_pack xp3 release/patch release/patch.xp3")
os.system("arc_pack xp3 release/data release/data.xp3")