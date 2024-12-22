from Lib import *
import re

files = ["brs000000","brs000100","brs000900","brs009013",]

def preProcess(text):
    text = text.replace("$N", "\n")
    text = re.sub(r"&RA(.*?)&RS.*?&RT", lambda x: x.group(1), text)
    return text

for f in files:
    out = OriJsonOutput()
    lines = open("scene\\" + f + ".bso.dec", "r", encoding="sjis").readlines()
    for l in lines:
        if re.search(r'(?<=\(a3:send-string ")(.*?)(?=")', l):
            msg = re.search(r'(?<=\(a3:send-string ").*?(?=")', l).group(0)
            out.dic["message"] = preProcess(msg)
            out.append_dict(False)
        if re.search(r'(?<=\(a3:call-user-func 4100 .... ")(.*?)(?=")', l):
            msg = re.search(r'(?<=\(a3:call-user-func 4100 .... ")(.*?)(?=")', l).group(0)
            out.dic["message"] = preProcess(msg)
            out.append_dict(False)
    out.save_json("gt_input\\" + f + ".json")

