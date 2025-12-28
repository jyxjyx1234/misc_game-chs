from Lib import *
from PIL import Image, ImageDraw, ImageFont

font = ImageFont.truetype("C:\\Windows\\fonts\\simhei.ttf", size = 19)
chars = open_json("allchar.json")
font2 = ImageFont.truetype("C:\\Windows\\fonts\\msgothic.ttc", size = 19)
chars = open_json("allchar.json")

charlist = []
datalist = []
datalist2 = []

for showchar, orichar in chars.items():
    img = Image.new("L", (0x14, 0x18), (0))
    draw = ImageDraw.Draw(img)
    if showchar != "♪":
        draw.text((0, 2), showchar, (255), font, stroke_fill=(255), stroke_width=(1)) ##FFFFFF
    else:
        draw.text((0, 2), showchar, (255), font2, stroke_fill=(255), stroke_width=(1)) ##FFFFFF
    img = img.transpose(Image.FLIP_TOP_BOTTOM)
    datalist.append(img.tobytes())
    
    img = Image.new("RGB", (0x14, 0x18), (0, 0, 0))
    draw = ImageDraw.Draw(img)
    if showchar != "♪":
        draw.text((0, 2), showchar, (255, 255, 255), font, stroke_fill=(0,0,0), stroke_width=(1)) ##FFFFFF
    else:
        draw.text((0, 2), showchar, (255, 255, 255), font2, stroke_fill=(0, 0, 0), stroke_width=(1)) ##FFFFFF
    img = img.transpose(Image.FLIP_TOP_BOTTOM)
    datalist2.append(img.tobytes())
    charlist.append(orichar)

charlist = "".join(charlist).encode("932")
datalist = b"".join(datalist)
datalist2 = b"".join(datalist2)
save_file_b("release\\misc\\fontmsk.bin", datalist)
save_file_b("release\\misc\\font.bin", datalist2)
save_file_b("release\\misc\\charlist.bin", charlist)