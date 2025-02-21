from PIL import Image, ImageDraw, ImageFont
import textwrap

ori = Image.open("frame3.png")

addw = 100
left = ori.crop((0, 0, 600, 300))
rigth = ori.crop((600, 0, 850, 300))
mid = ori.crop((400, 0, 400 + addw, 300))

new = Image.new("RGBA", (850 + addw, 300), (255, 255, 255, 0))
new.paste(left, (0, 0))
new.paste(mid, (600, 0))
new.paste(rigth, (600 + addw, 0))
new.save("release\\data\\image\\frame3.png")


ori = Image.new("RGB", (1920, 1080), (0, 0, 0))

text = "本补丁由jyxjyx1234制作\n免费发布于御爱同萌（www.ai2.moe）\n和个人博客（jyxjyx1234.github.io）\n禁止任何形式的收费转载\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁\n请顺手点个举报。"
draw = ImageDraw.Draw(ori)
font = ImageFont.truetype("WenQuanYi.ttf", 64)

# Get text dimensions
lines = text.split('\n')
line_heights = [draw.textbbox((0, 0), line, font=font)[3] - draw.textbbox((0, 0), line, font=font)[1] for line in lines]
total_height = sum(line_heights) + 30 * (len(lines) - 1)

# Calculate starting y position for vertical centering
y = (ori.height - total_height) // 2

# Draw each line centered
for line in lines:
    text_width = draw.textbbox((0, 0), line, font=font)[2]
    x = (ori.width - text_width) // 2
    draw.text((x, y), line, font=font, fill=(255, 255, 255))
    y += draw.textbbox((0, 0), line, font=font)[3] - draw.textbbox((0, 0), line, font=font)[1] + 30

ori.save("release\\data\\bgimage\\caution.jpg")
