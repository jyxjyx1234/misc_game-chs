from Lib import *
from PIL import Image, ImageFont, ImageDraw

trans = open_json("opt_text_t.json")
transdata = []
_ = []
for i in trans:
    id = i['index']
    if id%3 == 1 and id != 1:
        transdata.append(_.copy())
        _ = []
    _.append(i['pre_zh'])  
transdata.append(_.copy())

ori_png_p = "GGD_conved\\"
out_png_p = "GGD_transed\\"
os.makedirs(out_png_p,exist_ok=True)

files = os.listdir(ori_png_p)

for i in range(len(files)):
    imgpath = ori_png_p + files[i]
    img = Image.open(imgpath)
    trans = transdata[i]
    font = ImageFont.truetype("WenQuanYi.ttf", 26)
    textcolor = (255, 255, 255)
    textcolor2 = (0, 0, 0)
    draw = ImageDraw.Draw(img)

    idx = 0
    for text in trans:
        for _ in range(3):
            if _ == 1:
                continue
            top = idx * 48 * 3 + _ * 48
            mobantop = 3 * 48 * 3 + _ * 48

            source_area = (0, mobantop, 600, mobantop + 48)
            target_position = (0, top)
            cropped_area = img.crop(source_area)
            img.paste(cropped_area, target_position)
            
            text_width, _ = font.getsize(text)

            draw_x = (600 - text_width)//2

            draw_position1 = (draw_x - 1, top + 8 + 1)
            draw_position2 = (draw_x - 1, top + 8 - 1)
            draw_position3 = (draw_x + 1, top + 8 + 1)
            draw_position4 = (draw_x + 1, top + 8 - 1)
            draw_position = (draw_x, top + 8)
            draw.text(draw_position1, text, font = font, fill = textcolor2)
            draw.text(draw_position2, text, font = font, fill = textcolor2)
            draw.text(draw_position3, text, font = font, fill = textcolor2)
            draw.text(draw_position4, text, font = font, fill = textcolor2)
            draw.text(draw_position, text, font = font, fill = textcolor)
        idx += 1

    img.save(out_png_p + files[i])


