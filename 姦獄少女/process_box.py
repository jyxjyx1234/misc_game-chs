from PIL import Image, ImageDraw, ImageFont
import textwrap

ori = Image.new("RGB", (800, 600), (0, 0, 0))

text = "本补丁由jyxjyx1234制作\n免费发布于御爱同萌（www.ai2.moe）\n和个人博客（jyxjyx1234.github.io）\n禁止任何形式的收费转载\n如果从 网赚盘（如飞猫云）、\n付费网站、付费群 等下载到本补丁\n请顺手点个举报。"
draw = ImageDraw.Draw(ori)
font = ImageFont.truetype("msyh.ttc", 42)

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

ori.save("release\\patch\\jyxjyx1234.png")
