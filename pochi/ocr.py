from bdocr_api import *
from PIL import Image
import os
from time import sleep

def updata_res(fn, name):
    try:
        res = open_json("res.json")
    except:
        res = {}
    res[fn] = name
    save_json("res.json", res)

for imgname in os.listdir("gyu_dump"):
    idx = imgname.split(".")[0].split("_")[-1]
    idx = int(idx)
    if idx % 2:
        continue
    try:
        if imgname in open_json("res.json"):
            continue
    except FileNotFoundError:
        pass
    img = Image.open(os.path.join("gyu_dump", imgname))
    nameimg = img.crop((58, 9, 58 + 232, 9 + 23))
    nameimg.save("temp.png")
    name = ocr("temp.png")
    sleep(0.5)
    updata_res(imgname, name)
    print(f"Processed {imgname}: name={name}")