from Lib import *
from PIL import ImageFont, ImageDraw, Image, ImageFilter
import threading
from concurrent.futures import ThreadPoolExecutor
from functools import partial

text = open("charset.txt", "r", encoding="utf8").read()
# text = "禁"

def square_256(x, i = 1):
    if i == 1:
        return x * x // 256
    else:
        while i > 0:
            x = x * x / 256
            i -= 1
        return int(x)

def gen_font(font_name, outpath, outname, img_size, ori_x, ori_y, font_color, shadow_shift_x, shadow_shift_y, shadow_level, out_stroke_width, out_stroke_color, in_stroke_width, in_stroke_color, fontsize):
    font = ImageFont.truetype(font_name, fontsize)
    os.makedirs(outpath, exist_ok=True)
    length = len(text)

    def process_char(char, font, img_size, ori_x, ori_y, font_color, out_stroke_width, out_stroke_color, in_stroke_width, in_stroke_color, shadow_shift_x, shadow_shift_y, shadow_level, outpath, outname):
        if len(char.encode("utf-8")) == 1:
            return
        color_char = Image.new("RGBA", img_size, (0, 0, 0, 0))
        draw = ImageDraw.Draw(color_char)
        draw.text((ori_x, ori_y), char, fill=(0, 0, 0, 255), font=font)
        color_char_data = color_char.load()
        for y in range(img_size[1]):
            for x in range(img_size[0]):
                r, g, b, a = color_char_data[x, y]
                if a > 0:
                    r, g, b = font_color(y)
                    color_char.putpixel((x, y), (r, g, b, a))
        img = Image.new("RGBA", img_size, (0, 0, 0, 0))
        draw = ImageDraw.Draw(img)
        draw.text((ori_x, ori_y), char, fill=(0, 0, 0, 0), font=font, stroke_width=out_stroke_width, stroke_fill=out_stroke_color)
        draw.text((ori_x, ori_y), char, fill=(0, 0, 0, 0), font=font, stroke_width=in_stroke_width, stroke_fill=in_stroke_color)
        img = Image.alpha_composite(color_char, img)
        shadow = Image.new("LA", img_size, (0, 0))
        draw = ImageDraw.Draw(shadow)
        draw.text((ori_x, ori_y), char, fill=(0, 255), font=font, stroke_width=out_stroke_width, stroke_fill=(0, 255))
        shadow = shadow.filter(ImageFilter.BLUR)
        shifted_shadow = Image.new("LA", img_size, (0, 0))
        shifted_shadow.paste(shadow, (shadow_shift_x, shadow_shift_y))
        shadow = shifted_shadow
        shadow_data = shadow.load()
        img_data = img.load()
        for y in range(img_size[1]):
            for x in range(img_size[0]):
                l, a = shadow_data[x, y]
                a_img = img_data[x, y][3]
                if a_img > 180:
                    a = 0
                else:
                    l = square_256(l, shadow_level)
                shadow.putpixel((x, y), (l, a))
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
        out_stroke_color = out_stroke_color,
        in_stroke_width=in_stroke_width, 
        in_stroke_color=in_stroke_color,
        shadow_shift_x=shadow_shift_x, 
        shadow_shift_y=shadow_shift_y,
        shadow_level=shadow_level,
        outpath=outpath, 
        outname=outname
    )

    def process_and_count(char):
        result = process_func(char)
        return result
    
    max_workers = min(32, os.cpu_count() + 4)  # Reasonable default
    with ThreadPoolExecutor(max_workers=max_workers) as executor:
        list(executor.map(process_and_count, chars_to_process))

def font_color(y):
    r = 0.004636 * y * y + 2.157294 * y + 184.718875
    g = 0.008821 * y * y + 4.681845 * y + 103.704139
    b = 0.012109 * y * y + 6.047594 * y + 58.892805
    return (int(r), int(g), int(b))

gen_font(font_name = "攸望黑体-粗（简繁）.ttf",
        outpath = "release\\newfont_2",
        outname = "font2",
        img_size = (39, 45),
        ori_x = 2,
        ori_y = 3,
        font_color = font_color,
        shadow_shift_x = 2,
        shadow_shift_y = 2,
        shadow_level = 3,
        out_stroke_width = 4,
        out_stroke_color = (255, 255, 255, 255),
        in_stroke_width = 1.5,
        in_stroke_color = (60, 2, 0, 255),
        fontsize = 30)


def font_color2(y):
    r = 0.123138 * y * y + -1.175250 * y + 156.710110
    g = 0
    b = 0.092949 * y * y  + -0.903376 * y + 118.172393
    return (int(r), int(g), int(b))


gen_font(font_name = "攸望圆体-中（简繁）.ttf",
        outpath = "release\\newfont_5",
        outname = "font5",
        img_size = (38, 47),
        ori_x = 4,
        ori_y = 2,
        font_color = font_color2,
        shadow_shift_x = 0,
        shadow_shift_y = 3,
        shadow_level = 0,
        out_stroke_width = 3.4,
        out_stroke_color = (77, 0, 31, 255),
        in_stroke_width = 2,
        in_stroke_color = (255, 255, 255, 255),
        fontsize = 30)
