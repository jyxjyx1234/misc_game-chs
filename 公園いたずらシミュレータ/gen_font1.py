from Lib import *
from PIL import ImageFont, ImageDraw, Image, ImageFilter
import threading
from concurrent.futures import ThreadPoolExecutor
from functools import partial

text = open("charset.txt", "r", encoding="utf8").read()
# text = "烟"

def square_256(x, i = 1):
    if i == 1:
        return x * x // 256
    else:
        x = x * x // 256
        return square_256(x, i - 1)

def gen_font(font_name, outpath, outname, img_size, ori_x, ori_y, font_color, shadow_shift_x, shadow_shift_y, out_stroke_width, in_stroke_width, in_stroke_color, fontsize):
    font = ImageFont.truetype(font_name, fontsize)
    os.makedirs(outpath, exist_ok=True)
    length = len(text)

    def process_char(char, font, img_size, ori_x, ori_y, font_color, out_stroke_width, in_stroke_width, in_stroke_color, shadow_shift_x, shadow_shift_y, outpath, outname):
        if len(char.encode("utf-8")) == 1:
            return
        img = Image.new("RGBA", img_size, (0, 0, 0, 0))
        draw = ImageDraw.Draw(img)
        draw.text((ori_x, ori_y), char, fill=font_color, font=font, stroke_width=out_stroke_width, stroke_fill=font_color)
        draw.text((ori_x, ori_y), char, fill=font_color, font=font, stroke_width=in_stroke_width, stroke_fill=in_stroke_color)
        shadow = Image.new("LA", img_size, (0, 0))
        draw = ImageDraw.Draw(shadow)
        draw.text((ori_x, ori_y), char, fill=(0, 255), font=font, stroke_width=out_stroke_width, stroke_fill=(0, 255))
        shadow = shadow.filter(ImageFilter.BLUR)
        shadow_data = shadow.load()
        for y in range(img_size[1]):
            for x in range(img_size[0]):
                l, a = shadow_data[x, y]
                l = square_256(l, 3)
                shadow.putpixel((x, y), (l, a))
        shifted_shadow = Image.new("LA", img_size, (0, 0))
        shifted_shadow.paste(shadow, (shadow_shift_x, shadow_shift_y))
        shadow = shifted_shadow
        shadow = shadow.convert("RGBA")
        img = Image.alpha_composite(shadow, img)
        idx = ord(char)
        img.save(f"{outpath}\\{outname}#{idx}.png")
    
    chars_to_process = [char for char in text if len(char.encode("utf-8")) > 1]
    process_length = len(chars_to_process)
    
    process_func = partial(
        process_char, 
        font=font, 
        img_size=img_size, 
        ori_x=ori_x, 
        ori_y=ori_y, 
        font_color=font_color,
        out_stroke_width=out_stroke_width, 
        in_stroke_width=in_stroke_width, 
        in_stroke_color=in_stroke_color,
        shadow_shift_x=shadow_shift_x, 
        shadow_shift_y=shadow_shift_y,
        outpath=outpath, 
        outname=outname
    )

    def process_and_count(char):
        result = process_func(char)
        return result
    
    max_workers = min(32, os.cpu_count() + 4)  # Reasonable default
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        list(executor.map(process_and_count, chars_to_process))

gen_font(font_name = "攸望黑体-细（简繁）.ttf",
        outpath = "release\\newfont_1",
        outname = "font1",
        img_size = (38, 46),
        ori_x = 2,
        ori_y = 3,
        font_color = (255, 255, 255, 255),
        shadow_shift_x = 2,
        shadow_shift_y = 2,
        out_stroke_width = 4,
        in_stroke_width = 2,
        in_stroke_color = (0, 66, 128, 255),
        fontsize = 30)


gen_font(font_name = "攸望黑体-中（简繁）.ttf",
        outpath = "release\\newfont_3",
        outname = "font3",
        img_size = (35, 43),
        ori_x = 6,
        ori_y = 4,
        font_color = (255, 255, 255, 255),
        shadow_shift_x = -2,
        shadow_shift_y = -2,
        out_stroke_width = 4,
        in_stroke_width = 2,
        in_stroke_color = (60, 2, 0, 255),
        fontsize = 24)


gen_font(font_name = "攸望宋体-细（简繁）.ttf",
        outpath = "release\\newfont_4",
        outname = "font4",
        img_size = (33, 42),
        ori_x = 2,
        ori_y = -1,
        font_color = (255, 255, 255, 255),
        shadow_shift_x = 0,
        shadow_shift_y = 0,
        out_stroke_width = 2.5,
        in_stroke_width = 2.5,
        in_stroke_color = (0, 0, 0, 255),
        fontsize = 28)