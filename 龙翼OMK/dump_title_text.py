from Lib import *

f = open("最终版翻译.txt","r",encoding="utf8")
res = {}
while True:
    title = f.readline()
    if not title:
        break
    title = title.strip()
    if not title:
        break
    text = f.readline().strip()
    res[title.replace("tx", "tx_").replace("title", "title_")] = text
save_json("title.json",res)
