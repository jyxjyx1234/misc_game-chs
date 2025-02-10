from Lib import *
from PIL import Image, ImageFont, ImageDraw

img = Image.open("ori_img//tx_0102.png")
draw = ImageDraw.Draw(img)
draw.rectangle([(3, 9), (292, 65)], fill=(255, 255, 255, 255))
img.save("tx_plain.png")