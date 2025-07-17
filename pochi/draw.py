from Lib import *
import os
from PIL import Image, ImageDraw, ImageFont


transdata = open_json("text.json")
font1 = ImageFont.truetype("D:\\onedrive\\OneDrive - pku.edu.cn\\OneDrive\\桌面\\20250627\\ALyCE_Humming.ttf", 28)

def cal_pos(draw: ImageDraw, text: str, font: ImageFont, x: int):
    text_width = draw.textlength(text, font=font)
    return x - text_width // 2

def gen_plain_img1(img):
    x, y = img.size
    p1 = img.getpixel((25, 15))
    p2 = img.getpixel((x // 3 + 25, 15))
    p3 = img.getpixel((x // 3 * 2 + 25, 15))
    img_fill1 = Image.new("RGBA", (563, 37), p1)
    img.paste(img_fill1, (27, 16))
    img_fill2 = Image.new("RGBA", (563, 37), p2)
    img.paste(img_fill2, (x // 3 + 27, 16))
    img_fill3 = Image.new("RGBA", (563, 37), p3)
    img.paste(img_fill3, (x // 3 * 2 + 27, 16))
    return img

def gen_plain_img2(img):
    p1 = img.getpixel((25, 15))
    img_fill1 = Image.new("RGBA", (563, 37), p1)
    img.paste(img_fill1, (27, 16))
    return img

for fn in transdata:
    text = transdata[fn]
    img1 = Image.open(f"img\\{fn}.png")
    img2 = Image.open(f"img\\{fn}b.png")
    x1, y1 = img1.size
    img1 = gen_plain_img1(img1)
    img2 = gen_plain_img2(img2)
    draw1 = ImageDraw.Draw(img1)
    draw2 = ImageDraw.Draw(img2)

    y = 18
    x = cal_pos(draw1, text, font1, 308)

    draw1.text((x, y), text, font=font1, fill=(255, 255, 255))
    draw2.text((x, y), text, font=font1, fill=(255, 255, 255))
    x = x + x1 // 3
    draw1.text((x, y), text, font=font1, fill=(255, 255, 255))
    # draw2.text((x, y), text, font=font1, fill=(255, 255, 255))
    x = x + x1 // 3
    draw1.text((x, y), text, font=font1, fill=(255, 255, 255))
    # draw2.text((x, y), text, font=font1, fill=(255, 255, 255), stroke_fill=(0xfd, 0x00, 0xff), stroke_width=1)
    img1.save(f"release\\data\\{fn}.png")
    img2.save(f"release\\data\\{fn}b.png")
