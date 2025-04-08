from Lib import *

ori = "release\\patch\\動画モード.ks"
ori = open(ori, "r", encoding="utf16").readlines()
with open("release\\patch2\\動画モード.ks", "w", encoding="utf16") as f:
    flag = False
    for line in ori:
        if re.match(r'\[if exp="sf\..*?== 1"', line):
            flag = True
            line = "; " + line
        if flag and re.match(r'\[endif\]', line):
            line = "; " + line
            flag = False
        f.write(line)