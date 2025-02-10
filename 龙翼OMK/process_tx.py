from Lib import *
from PIL import Image, ImageFont, ImageDraw

#参数
fontname = "萝莉体.TTC"
size = 18
text_color = "#28357a" #文字颜色
stroke_color = "#aeb3ce" #描边颜色
stroke_width_white = 1 #描边宽度
stroke_width_out = 1 #描边宽度
line_height = 22 #行高
linewidth = 16 #自动换行字符数

imglist = open_json("title.json")
outdir = f"release_{fontname}"
os.makedirs(outdir, exist_ok=True)

def split_line(text):
    linewidth = 16
    lines = []
    i = 0
    while i < len(text):
        lines.append(text[i:i+linewidth])
        i += linewidth
        if text[i:i+1] in ["，", "。", "、"]:
            lines[-1] += text[i]
            i += 1
    if len(lines[-1]) == 1:
        lines[-2] += lines[-1]
        lines.pop()
    return lines

for filename in imglist:
    if not filename.startswith("tx_"):
        continue
    img = Image.open("tx_plain.png")
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype(fontname, size)
    texts = split_line(imglist[filename].replace("...", "……").replace("…………", "……"))
    if texts[-1][-1] not in ["…", "！", "？", "。"]:
        texts[-1] += "。"
    x, y = 6, 11
    for text in texts:
        draw.text((x, y), text, font=font, stroke_width= stroke_width_white + stroke_width_out, fill=text_color, stroke_fill=stroke_color)
        draw.text((x, y), text, font=font, stroke_width= stroke_width_white, fill=text_color, stroke_fill="white")
        y += line_height

    img.save(f"{outdir}\\{filename}.png")
