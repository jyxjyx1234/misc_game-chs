from KSFile import *
import os

ori_path = "scenario\\"
trans_path = "gt_output\\"
out_path = "release\\data\\scenario\\"
os.makedirs(out_path,exist_ok=True)

fileslist = os.listdir(trans_path)
namedict = open_json("namedict.json")

for file in fileslist:
    f = KS_FILE(ori_path + file.replace(".json",''))
    try:
        transf = open_json(trans_path + file)
    except:
        transf = []
    f.trans(namedict, transf)
    f.save(out_path + file.replace(".json",''))


f = open(out_path + "01.ks", "r", encoding='utf8').readlines()
fw = open(out_path + "01.ks", "w", encoding='utf8')
for i in range(len(f)):
   fw.write(f[i])
   if i == 45:

       fw.write('''
#
本补丁由ALyCE / jyxjyx1234制作，使用gpt-4o进行翻译，免费发布，首发2dfan、jyxjyx1234的博客（jyxjyx1234.github.io），禁止任何形式的收费转载。本人制作以及参与制作的所有补丁禁止转载至“鲲Galgame”补丁站。[p]
请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。[p]
如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。[p]
''')
fw.close()