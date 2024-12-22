from Lib import *
import re

files = ["brs000000","brs000100","brs000900","brs009013",]

def preProcess(text):
    text = text.replace("\n", "$N")
    text = text.replace("\u301c", "～").replace("\u266a", "").replace("\u30fb", "·").replace("\u2212", "—").replace("\u2212", "—")
    return text


for f in files:
    orilines = open("scene\\" + f + ".bso.dec", "r", encoding="sjis").readlines()
    out = open("RELEASE\scene\\" + f + ".bso.dec", "w", encoding="gbk")
    trans = open_json("gt_output\\" + f + ".json")
    new = []
    for l in orilines:
        if re.search(r'(?<=\(a3:send-string ")(.*?)(?=")', l):
            l = re.sub(r'(?<=\(a3:send-string ").*?(?=")', preProcess(trans.pop(0)["message"]), l)
        if re.search(r'(?<=\(a3:call-user-func 4100 .... ")(.*?)(?=")', l):
            l = re.sub(r'(?<=\(a3:call-user-func 4100 .... ")(.*?)(?=")', preProcess(trans.pop(0)["message"]), l)
        out.write(l)
