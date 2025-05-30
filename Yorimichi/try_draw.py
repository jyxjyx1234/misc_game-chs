from PIL import Image, ImageDraw
from Lib import *

data = open_file_b("output.bin")
os.makedirs("img", exist_ok=True)
# for i in range(0, len(data) - 0x240 + 1):
#     imgdata = data[i:i+0x240]
#     img = Image.frombytes("L", (0x18, 0x18), imgdata)
#     img.save(f"img\\{i}.png")
i = 0
imgdata = data[i:i+0x240]
img = Image.frombytes("L", (24, 24), imgdata)
img.save(f"img\\{i}.png")