import json
import re
from 提取 import Line
import os
from Lib import *

ori_path = "scenario\\"
trans_path = "译文\\"
out_path = "patch\\"
os.makedirs(out_path, exist_ok=True)

filelist = os.listdir(trans_path)

for file in filelist:
    filename = file.replace(".json", "")

    trans_file = open(trans_path + file, "r", encoding="utf8")
    trans_file = json.load(trans_file)

    ori_file = open(ori_path + filename + ".ks", "r", encoding="shiftjis")

    out_file = open(out_path + filename + ".ks", "w", encoding="utf16")

    transdict = {}
    for dic in trans_file:
        transdict[dic["pre_jp"]] = dic["post_zh_preview"]

    i = 0
    for l in ori_file:
        if file == "sc001.json" and i == 7:
            out_file.write(
                """
本补丁为AI翻译补丁，使用Claude-3-5-sonnet进行翻译,
由ALyCE\jyxjyx1234制作，
免费发布于2dfan\github，
如果从 网赚盘（如飞猫云） or 付费 下载到本补丁，请顺手点个举报。
如果存在字体显示问题，可在设置中更改合适的字体,如Microsoft Yahei UI、Adobe黑体等。
"""
            )
        i += 1
        l = Line(l)
        out_file.write(l.trans(transdict))
    out_file.close()

copyfontinfo("msyh.ttc","GenJyuuGothicX-Bold.ttf","patch/GenJyuuGothicX-Bold.ttf",changename=True)
os.system("arc_conv --pack xp3 patch patch.xp3")
os.system("move patch.xp3 release/")
