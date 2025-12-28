from LIB.Lib import *
from PIL import Image, ImageDraw, ImageFont, ImageFilter

def get_pos(idx):
    x = 0
    y = idx * 1080
    return x, y, x + 1920, y + 1080
def get_pos2(idx):
    x = 1920 * (idx // 14)
    y = (idx % 14) * 1080
    return x, y, x + 1920, y + 1080
def clear_text_area(img, idx):
    draw = ImageDraw.Draw(img)
    x1, y1, x2, y2 = get_pos(idx)
    draw.rectangle((x1, y1, x2, y2), fill=(0, 0, 0, 0))
    return img
def draw_text(imgdraw: ImageDraw, img:Image.Image, text, idx,text_color = (0,0,0), shadow_color=(255, 255, 255), shadow_alpha=220):
    if img.size[0] != 1920:
        x1, y1, x2, y2 = get_pos2(idx)
    else:
        x1, y1, x2, y2 = get_pos(idx)
    imgdraw.rectangle((x1, y1, x2, y2), fill=(0, 0, 0, 0))
    text_lines = text.split("\n")
    line_height = 90
    total_text_height = len(text_lines) * line_height
    start_y = y1 + (y2 - y1 - total_text_height) // 2
    shadow_r, shadow_g, shadow_b = shadow_color
    text_r, text_g, text_b = text_color
    for i, line in enumerate(text_lines):
        text_width = imgdraw.textlength(line, font=font)
        text_width = int(text_width)
        text_x = x1 + (x2 - x1 - text_width) // 2
        text_y = start_y + i * line_height
        bg = Image.new("RGBA", (text_width + 100, line_height+30), (shadow_r,shadow_g,shadow_b,0))
        bgdraw = ImageDraw.Draw(bg)
        mask= Image.new("L", (text_width + 100, line_height+30), 0)
        mask_draw = ImageDraw.Draw(mask)

        stroke_width = 5
        mask_draw.text((30, 15), line, font=font, fill=(255), stroke_width=stroke_width, stroke_fill=(255))
        glow = mask.filter(ImageFilter.MaxFilter(5))
        glow = glow.filter(ImageFilter.GaussianBlur(8))
        white = Image.new("RGBA", (text_width + 100, line_height+30), (shadow_r,shadow_g,shadow_b, shadow_alpha))
        bg = Image.composite(white, bg, glow)
        # bg.show()
        bgdraw = ImageDraw.Draw(bg)
        bgdraw.text((30, 15), line, font=font, fill=(text_r, text_g, text_b, 255), stroke_width=2, stroke_fill=(shadow_r, shadow_g, shadow_b, 255*(bool(shadow_alpha))))
        img.paste(bg, (text_x - 30, text_y - 15), bg)

img = Image.open("g00_text\\ef_avan_text00.png")
font = ImageFont.truetype("NotoSerifCJKsc-Medium.otf", 48)
textdata = open_json("avan_text.json")
for item in textdata:
    idx = item["idx"]
    if "message" not in item:
        continue
    message = item["message"]
    img = clear_text_area(img, idx)
    imgdraw = ImageDraw.Draw(img)
    draw_text(imgdraw, img, message, idx, shadow_color=(255, 255, 255))
img_mask = img.getchannel("A")
img = img.convert("RGB")
img.save("g00new/ef_avan_text00.bmp")
img_mask.save("g00new/ef_avan_text00_.bmp")

img = Image.open("g00_text\\ef_story_text00.png")
font = ImageFont.truetype("NotoSerifCJKsc-Medium.otf", 48)
textdata = open_json("avan2_text.json")

color1 = (49,15,3) # 0-16
color2 = (43,31,23) # 20-21
white_list = [17, 18, 22, 23, 24]
no_list = [19, 25, 26, 27]
color2_list = [20, 21]
for item in textdata:
    idx = item["idx"]
    if "message" not in item:
        continue
    message = item["message"]
    img = clear_text_area(img, idx)
    imgdraw = ImageDraw.Draw(img)
    shadow_alpha = 200
    if idx in white_list:
        shadow_color = (255, 255, 255)
        shadow_alpha = 220
        text_color = (0, 0, 0)
    elif idx in no_list:
        shadow_color = (0, 0, 0)
        text_color = (255, 255, 255)
        shadow_alpha = 0
    elif idx in color2_list:
        shadow_color = color2
        text_color = (255, 255, 255)
    else:
        shadow_color = color1
        text_color = (255, 255, 255)
    print(message)
    draw_text(imgdraw, img, message, idx, text_color=text_color,shadow_color=shadow_color, shadow_alpha=shadow_alpha)
    
# img_ = Image.new("RGBA", (1920*2, 1080 * 14), (0, 0, 0, 0))
# _ = img.crop((0, 0, 1920, 1080 * 14))
# img_.paste(_, (0, 0))
# _ = img.crop((0, 1080*14, 1920, 1080 * 28))
# img_.paste(_, (1920, 0))
img.save("g00new/ef_story_text00.png")
img_mask = img.getchannel("A")
img = img.convert("RGB")
img.save("g00new/ef_story_text00.bmp")
img_mask.save("g00new/ef_story_text00_.bmp")

# box_cut = open("g00new/ef_story_text00.txt", "r", encoding="utf8")
# new = []
# for line in box_cut:
#     if line.strip() == "":
#         continue
#     if line.startswith(";"):
#         continue
#     _, i0, i1, i2, i3 = line.strip().split(" ")
#     if int(i1)>=1080*14:
#         i0 = str(1920)
#         i1 = str(int(i1)-1080*14)
#         i2 = str(int(i2)+1920)
#         i3 = str(int(i3)-1080*14)
#     new.append(f"{_} {i0} {i1} {i2} {i3}\n")
# with open("g00new/ef_story_text00.txt", "w", encoding="932") as f:
#     f.writelines(new)