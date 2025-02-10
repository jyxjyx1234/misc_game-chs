from Lib import *
from PIL import Image, ImageFont, ImageDraw

#参数
fontname = "萝莉体.TTC"
size = 18
text_color = "#28357a" #文字颜色
stroke_color = "#aeb3ce" #描边颜色
stroke_width_white = 1 #描边宽度
stroke_width_out = 1 #描边宽度

imglist = open_json("title.json")

outdir = f"release_{fontname}"
os.makedirs(outdir, exist_ok=True)

for filename in imglist:
    if not filename.startswith("title_"):
        continue
    img = Image.new("RGBA", (347, 24), color = (255, 255, 255, 0))
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype(fontname, size)
    text = imglist[filename].replace("...", "…")
    
    x, y = (347 - font.getlength(text)) // 2, 0
    draw.text((x, y), text, font=font, stroke_width= stroke_width_white + stroke_width_out, fill=text_color, stroke_fill=stroke_color)
    draw.text((x, y), text, font=font, stroke_width= stroke_width_white, fill=text_color, stroke_fill="white")
    img.save(f"{outdir}\\{filename}.png")
