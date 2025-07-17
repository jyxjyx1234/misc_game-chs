from Lib import *
import os
from PIL import Image, ImageDraw, ImageFont


transdata = open_json("res.json")
os.makedirs("gyu_png_trans", exist_ok=True)
# os.makedirs("gyu_trans", exist_ok=True)
font1 = ImageFont.truetype("ALyCE_Humming.ttf", 22)

def cal_pos(draw: ImageDraw, text: str, font: ImageFont, x: int):
    text_width = draw.textlength(text, font=font)
    return x - text_width // 2

for fn in transdata:
    text = transdata[fn]
    img = Image.open("选项_背景2.png")
    img2 = Image.open("选项_背景1.png")
    draw = ImageDraw.Draw(img)
    draw2 = ImageDraw.Draw(img2)

    y = 6
    x = cal_pos(draw, text, font1, 161)

    draw.text((x, y), text, font=font1, fill=(255, 255, 255))
    draw2.text((x, y), text, font=font1, fill=(255, 255, 255))
    x = x + 320
    draw.text((x, y), text, font=font1, fill=(255, 255, 255))
    draw2.text((x, y), text, font=font1, fill=(255, 255, 255))
    x = x + 320
    draw.text((x, y), text, font=font1, fill=(255, 255, 255), stroke_fill=(0xfd, 0x00, 0xff), stroke_width=1)
    draw2.text((x, y), text, font=font1, fill=(255, 255, 255), stroke_fill=(0xfd, 0x00, 0xff), stroke_width=1)
    img.save(os.path.join("gyu_png_trans", fn))
    fn2 = fn.split(".")[0].split("_")[-1]
    fn2 = int(fn2) - 1
    fn2 = f"02_{fn2:03d}.png"
    img2.save(os.path.join("gyu_png_trans", fn2))

for file in os.listdir("gyu_png_trans"):
    if file.endswith(".png"):
        os.system(f"python GYU_FILE.py 2gyu {os.path.join("gyu_ori", file.replace('.png', '.gyu'))} {os.path.join("gyu_png_trans", file)} {os.path.join("release", "trans", file.replace('.png', '.gyu'))}")
# os.system("pack.bat")