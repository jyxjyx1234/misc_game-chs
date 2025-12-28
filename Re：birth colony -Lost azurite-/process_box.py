from PIL import Image, ImageDraw, ImageFont
import textwrap

ori = Image.new("RGB", (1280, 720), (0, 0, 0))

text = "本补丁由jyxjyx1234制作\n免费发布于御爱同萌（www.ai2.moe）\n和个人博客（jyxjyx1234.github.io）\n禁止网赚盘（如飞猫云）、付费网站、付费群等\n任何形式的收费转载。"
draw = ImageDraw.Draw(ori)
font = ImageFont.truetype("C:\\Users\\jyxjy\\OneDrive\\終ノ空\\release\\SourceHanSansCN-Medium.ttf", 42)

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

ori.save("chs\\jyxjyx1234.png")
