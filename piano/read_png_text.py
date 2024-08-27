from Lib import *
from PIL import Image
from bdocr_api import ocr
import time

def crop_image(input_path, output_path, left, top, right, bottom):
    img = Image.open(input_path)
    cropped_img = img.crop((left, top, right, bottom))
    cropped_img.save(output_path, "PNG")

ori_path = "GGD_conved\\"
temp_path = "temp\\"
os.makedirs(temp_path,exist_ok=True)
pngs = os.listdir(ori_path)

out = []

for p in pngs:
    dic = {}
    crop_image(ori_path + p, temp_path + "1_" + p, 0, 0, 600, 48)
    dic['message'] = ocr(temp_path + "1_" + p)
    print(dic['message'])
    out.append(dic)
    time.sleep(0.5)

    dic = {}
    crop_image(ori_path + p, temp_path + "2_" + p, 0, 48 * 3, 600, 48 * 4)
    dic['message'] = ocr(temp_path + "2_" + p)
    print(dic['message'])
    out.append(dic)
    time.sleep(0.5)
    
    dic = {}
    crop_image(ori_path + p, temp_path + "3_" + p, 0, 48 * 6, 600, 48 * 7)
    dic['message'] = ocr(temp_path + "3_" + p)
    print(dic['message'])
    out.append(dic)
    time.sleep(0.5)

save_json("opt_text.json",out)
    