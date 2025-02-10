from Lib import *
from PIL import Image, ImageDraw, ImageFont

fontname = "萝莉体.TTC"
size = 22
stroke_width_white = 1 #描边宽度
stroke_width_out = 2 #描边宽度

oriFilesPath = "name\\"
oriFiles = os.listdir(oriFilesPath)
outFilesPath = "release\\patch\\"

nametrans = open_json("namedict.json")
namecolor = open_json("name_color.json")

for file in oriFiles:
    img = Image.new("RGBA", (134, 29), (255, 255, 255, 0))
    text_ = file[5:-4]
    text = nametrans[text_]
    color = "#" + namecolor[text_][2:]
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype(fontname, size)
    x, y = (134 - font.getlength(text)) // 2, 0
    draw.text((x, y), text, font=font, stroke_width= stroke_width_white + stroke_width_out, fill=color, stroke_fill="black")
    draw.text((x, y), text, font=font, stroke_width= stroke_width_white, fill="white", stroke_fill=color)
    img.save(f"{outFilesPath}\\{file}")
