from Lib import *
from PIL import Image, ImageDraw, ImageFont, ImageFilter


def get_box_middle(font: ImageFont.FreeTypeFont, text, box):
    x1, y1, x2, y2 = box
    bbox = font.getbbox(text)
    text_width = int(bbox[2] - bbox[0])
    text_height = int(bbox[3] - bbox[1])
    text_x = x1 + (x2 - x1 - text_width) // 2
    text_y = y1 + (y2 - y1 - text_height) // 2
    return text_x, text_y

def save_bmp_with_mask(img:Image.Image, path:str):
    if not img.mode == "RGBA":
        raise ValueError("Image mode must be RGBA to save with mask.")
    img_mask = img.getchannel("A")
    img = img.convert("RGB")
    bmp_path = path.replace(".png", ".bmp").replace(".jpg", ".bmp")
    bmp_mask_path = bmp_path.replace(".bmp", "_.bmp")
    img.save(bmp_path)
    img_mask.save(bmp_mask_path)

def max_color(img, box, not_include=[(0,0,0,0)], min_alpha = 255):
    x1, y1, x2, y2 = box
    color_count = {}
    for x in range(x1, x2):
        for y in range(y1, y2):
            color = img.getpixel((x, y))
            if color in not_include or color[3] < min_alpha:
                continue
            if color in color_count:
                color_count[color] += 1
            else:
                color_count[color] = 1
    if not color_count:
        raise ValueError("No colors found in the specified box excluding the given colors.")
    max_color = max(color_count, key=color_count.get)
    return max_color
    

def read_siglus_boxcut(path):
    if not path.endswith(".txt"):
        path = path.replace(".png", ".txt").replace(".bmp", ".txt")
    with open(path, "r", encoding="932") as f:
        lines = f.readlines()
    res = []
    for line in lines:
        if line.startswith("#BOXCUT"):
            _, x1, y1, x2, y2 = line.strip().split()
            x1 = int(x1)
            y1 = int(y1)
            x2 = int(x2)
            y2 = int(y2)
            if x1 == 0 and y1 == 0 and x2 == 0 and y2 == 0:
                continue
            res.append((x1, y1, x2, y2))
    return res
