from Lib import *
from PIL import ImageDraw, ImageFont, Image

tips_dict = open_json("tips_dict copy.json")
tips_font = ImageFont.truetype("C:/Windows/Fonts/msyh.ttc", 18)
tips_base_pos = (17, 2)
hack_dict = open_json("hack_dict.json")
hack_font = ImageFont.truetype("C:/Windows/Fonts/msyh.ttc", 15)
hack_base_pos = (17, 14)
os.makedirs("output_img", exist_ok=True)



yinying_color = 32
yinying_color_2 = 48

for key in tips_dict:
    img = Image.open("tips_key_base.png")
    img_x, img_y = img.size
    draw = ImageDraw.Draw(img)
    text = tips_dict[key]
    text = replace_halfwidth_with_fullwidth(text)

    # print(img.getpixel((11, 11)))

    # 第一个
    x, y = tips_base_pos
    draw.text((x + 1, y + 1), text, font=tips_font, fill=(yinying_color, yinying_color, yinying_color, 128), stroke_width=2, stroke_fill=(yinying_color_2, yinying_color_2, yinying_color_2, 128))
    draw.text((x, y), text, font=tips_font, fill=(255, 255, 255, 255), stroke_width=0.5, stroke_fill=(yinying_color, yinying_color, yinying_color, 255))
    # 第二个
    x += img_x // 3
    #44bddb
    draw.text((x,y), text, font=tips_font, fill = (255, 255, 255, 255), stroke_width=0.3, stroke_fill=(0x44, 0xbd, 0xdb, 255))
    # 第三个
    x += img_x // 3
    #00449b
    draw.text((x + 1, y + 1), text, font=tips_font, fill=(0x00, 0x44, 0x9b, 255), stroke_width=1.5, stroke_fill=(0x00, 0x44, 0x9b, 255))
    draw.text((x,y), text, font=tips_font, fill = (255, 255, 255, 255), stroke_width=0, stroke_fill=(0x00, 0x44, 0x9b, 255))
    img.save(f"output_img/tips_key_{key}.png")

# hack_dict = {}
# for file in os.listdir("hack"):
#     name = file.split("_")[-1].split(".")[0]
#     hack_dict[name] = name
# save_json("hack_dict.json", hack_dict)
for key in hack_dict:
    img = Image.open("arc_hack_base.png")
    img_x, img_y = img.size
    draw = ImageDraw.Draw(img)
    text = hack_dict[key]
    text = replace_halfwidth_with_fullwidth(text)


    # 第一个
    x, y = hack_base_pos
    draw.text((x + 1, y + 1), text, font=hack_font, fill=(yinying_color, yinying_color, yinying_color, 128), stroke_width=2, stroke_fill=(yinying_color_2, yinying_color_2, yinying_color_2, 128))
    draw.text((x, y), text, font=hack_font, fill=(255, 255, 255, 255), stroke_width=0.5, stroke_fill=(yinying_color, yinying_color, yinying_color, 255))
    # 第二个
    x += img_x // 3
    #44bddb
    draw.text((x,y), text, font=hack_font, fill = (255, 255, 255, 255), stroke_width=0.3, stroke_fill=(0x44, 0xbd, 0xdb, 255))
    # 第三个
    x += img_x // 3
    #00449b
    draw.text((x + 1, y + 1), text, font=hack_font, fill=(0x00, 0x44, 0x9b, 255), stroke_width=1.5, stroke_fill=(0x00, 0x44, 0x9b, 255))
    draw.text((x,y), text, font=hack_font, fill = (255, 255, 255, 255), stroke_width=0, stroke_fill=(0x00, 0x44, 0x9b, 255))
    img.save(f"output_img/arc_hack_{key}.png")

t = [
"切换屏幕模式",
"打开配置菜单",
"打开保存菜单",
"打开加载菜单",
"启动自动模式",
"快速存档",
"快速读取",
"打开历史记录",
"跳过已读",
"跳转到下一选项",
"按住时跳过",
"等同于左键点击",
"隐藏消息",
"播放最后一次语音",
]
font = ImageFont.truetype("C:/Windows/Fonts/msyh.ttc", 20)
for i, text in enumerate(t):
    img = Image.open("cfg_sc_base.png")
    draw = ImageDraw.Draw(img)
    img_x, img_y = img.size
    x, y = 13, 1
    draw.text((x,y), text, font=font, fill = (255, 255, 255, 255))
    x += img_x // 2
    draw.text((x,y), text, font=font, fill = (255, 255, 255, 255))
    img.save(f"output_img/cfg_sc_{i+1:02}.png")

font = ImageFont.truetype("C:\\Users\\jyxjy\\OneDrive\\終ノ空\\release\\SourceHanSansCN-Medium.ttf", 13)
for file in os.listdir("cfg"):
    if file.startswith("cfg_vo_"):
        name = file[7:-4]
        img = Image.open("cfg//" + file)
        namedict = open_json("namedict.json")
        if name in namedict:
            name = namedict[name]
        else:
            print(f'"{name}": "{name}",')
        img_base = Image.open("cfg_vo_base.png")
        img_x, img_y = img_base.size
        x = 1
        y = 110
        for i in range(4):
            m = img_base.crop((x, y, x + 101, y + 20))
            img.paste(m, (x, y))
            x += img_x // 4
        x = 6
        y = 110 - 2
        draw = ImageDraw.Draw(img)
        for i in range(4):
            draw.text((x, y), name, font=font, fill=(255, 255, 255, 255))
            x += img_x // 4
        img.save(f"output_img/{file}")
    
try:
    misc_text = open_json("misc_text.json")
except:
    misc_text = {}
font = ImageFont.truetype("C:\\Users\\jyxjy\\OneDrive\\終ノ空\\release\\SourceHanSansCN-Medium.ttf", 18)
for file in os.listdir("cfg"):
    if file.startswith("arc_ss_sel_") and file.endswith(".png"):
        base_width = 57
        text = file[11:-4]
        if text in misc_text:
            text = misc_text[text]
        else:
            misc_text[text] = text
            save_json("misc_text.json", misc_text)
        img = Image.open("cfg//" + file)
        img_x, img_y = img.size
        part_x = img_x // 4
        x = 0
        y = 0
        for i in range(4):
            x_ = x + base_width
            y_ = y
            blank = Image.new("RGBA", (part_x - base_width - 1 , img_y), (0, 0, 0, 0))
            img.paste(blank, (x_, y_))
            x += part_x
        draw = ImageDraw.Draw(img)
        x = base_width + 1
        y = 6
        draw.text((x + 1, y + 1), text, font=font, fill=(yinying_color, yinying_color, yinying_color, 255), stroke_fill=(yinying_color_2, yinying_color_2, yinying_color_2, 255), stroke_width=1.5)
        draw.text((x, y), text, font=font, fill=(255, 255, 255, 255))
        x += part_x
        draw.text((x + 1, y + 1), text, font=font, fill=(0x03, 0x53, 0xfd, 255), stroke_fill=(0x03, 0x53, 0xfd, 128), stroke_width=1.5)
        draw.text((x, y), text, font=font, fill=(255, 255, 255, 255))
        x += part_x
        draw.text((x + 1, y + 1), text, font=font, fill=(yinying_color, yinying_color, yinying_color, 255), stroke_fill=(yinying_color_2, yinying_color_2, yinying_color_2, 255), stroke_width=1.5)
        draw.text((x, y), text, font=font, fill=(255, 255, 255, 255))
        x += part_x
        draw.text((x + 1, y + 1), text, font=font, fill=(0x03, 0x53, 0xfd, 255), stroke_fill=(0x03, 0x53, 0xfd, 128), stroke_width=1.5)
        draw.text((x, y), text, font=font, fill=(255, 255, 255, 255))
        img.save(f"output_img/{file}")


font = ImageFont.truetype("C:\\Users\\jyxjy\\OneDrive\\終ノ空\\release\\SourceHanSansCN-Medium.ttf", 18)
for file in os.listdir("cfg"):
    if file.startswith("itr_"):
        text = file[4:-4]
        if text in misc_text:
            text = misc_text[text]
        else:
            misc_text[text] = text
            save_json("misc_text.json", misc_text)
        img = Image.open("cfg//" + file)
        img_x, img_y = img.size
        part_x = img_x // 3
        x = 25
        y = 5
        for i in range(3):
            for _ in range(38):
                pixel = img.getpixel((x + 333, y + _))
                blank = Image.new("RGBA", (333, 1), pixel)
                img.paste(blank, (x, y + _))
            x += part_x
        draw = ImageDraw.Draw(img)
        x = 29
        y = 11
        for i in range(3):
            draw.text((x, y), text, font=font, fill=(255, 255, 255, 255))
            x += part_x
        img.save(f"output_img/{file}")

arc_ss_dict = {
    "1話": [
        "第一话",
        "如蓝色幻影"
    ],
    "2話": [
        "第二话",
        "从天而降的麻烦事"
    ],
    "3話": [
        "第三话",
        "蓝衣少女"
    ],
    "4話": [
        "第四话",
        "“他”的生存之道"
    ],
    "5話": [
        "第五话",
        "静止时间的记忆与记录\n与完全没有关系的不情愿的返乡"
    ],
    "6話": [
        "第六话",
        "失落石青"
    ],
    "瑠璃": [
        "瑠璃篇",
        "青金石之血"
    ],
    "バッド": [
        "坏结局",
        "于是谁都——"
    ],
    "ノイエ": [
        "诺伊艾篇",
        "电子猫会梦见蓝色吗"
    ],
    "セルリア": [
        "塞露莉亚篇",
        "“她”的活法"
    ],
    "アズライト": [
        "石青篇",
        "改变世界的蓝色故事"
    ],
}

font = ImageFont.truetype("C:/Windows/Fonts/msyh.ttc", 15)
font2 = ImageFont.truetype("C:\\Users\\jyxjy\\OneDrive\\終ノ空\\release\\SourceHanSansCN-Medium.ttf", 12)
for key in arc_ss_dict:
    if key != "5話":
        img = Image.open("arc_ss_base.png")
        img_x, img_y = img.size
        draw = ImageDraw.Draw(img)
        title, text = arc_ss_dict[key]
        text = replace_halfwidth_with_fullwidth(text)
        # 第一个
        x, y = hack_base_pos
        x2, y2 = 12, -2
        draw.text((x + 1, y + 1), text, font=font, fill=(yinying_color, yinying_color, yinying_color, 128), stroke_width=2, stroke_fill=(yinying_color_2, yinying_color_2, yinying_color_2, 128))
        draw.text((x, y), text, font=font, fill=(255, 255, 255, 255), stroke_width=0.5, stroke_fill=(yinying_color, yinying_color, yinying_color, 255))
        draw.text((x2, y2), title, font=font2, fill=(255, 255, 255, 255))
        # 第二个
        x += img_x // 3
        x2 += img_x // 3
        draw.text((x,y), text, font=font, fill = (255, 255, 255, 255), stroke_width=0.3, stroke_fill=(0x44, 0xbd, 0xdb, 255))
        draw.text((x2, y2), title, font=font2, fill=(255, 255, 255, 255))
        # 第三个
        x += img_x // 3
        x2 += img_x // 3
        draw.text((x + 1, y + 1), text, font=font, fill=(0x00, 0x44, 0x9b, 255), stroke_width=1.5, stroke_fill=(0x00, 0x44, 0x9b, 255))
        draw.text((x,y), text, font=font, fill = (255, 255, 255, 255), stroke_width=0, stroke_fill=(0x00, 0x44, 0x9b, 255))
        draw.text((x2, y2), title, font=font2, fill=(255, 255, 255, 255))
        img.save(f"output_img/arc_ss_{key}.png")
    else:
        img = Image.open("arc_ss_base2.png")
        img_x, img_y = img.size
        draw = ImageDraw.Draw(img)
        title, text = arc_ss_dict[key]
        text = replace_halfwidth_with_fullwidth(text)
        # 第一个
        x, y_ = hack_base_pos
        y_ += 10
        x2, y2 = 12, -2
        y = y_
        for t in text.split("\n"):
            draw.text((x + 1, y + 1), t, font=font, fill=(yinying_color, yinying_color, yinying_color, 128), stroke_width=2, stroke_fill=(yinying_color_2, yinying_color_2, yinying_color_2, 128))
            draw.text((x, y), t, font=font, fill=(255, 255, 255, 255), stroke_width=0.5, stroke_fill=(yinying_color, yinying_color, yinying_color, 255))
            y += 17
        draw.text((x2, y2), title, font=font2, fill=(255, 255, 255, 255))
        # 第二个
        x += img_x // 3
        x2 += img_x // 3
        y = y_
        for t in text.split("\n"):
            draw.text((x,y), t, font=font, fill = (255, 255, 255, 255), stroke_width=0.3, stroke_fill=(0x44, 0xbd, 0xdb, 255))  
            y += 17 
        draw.text((x2, y2), title, font=font2, fill=(255, 255, 255, 255))
        # 第三个
        x += img_x // 3
        x2 += img_x // 3
        y = y_
        for t in text.split("\n"):
            draw.text((x + 1, y + 1), t, font=font, fill=(0x00, 0x44, 0x9b, 255), stroke_width=1.5, stroke_fill=(0x00, 0x44, 0x9b, 255))
            draw.text((x,y), t, font=font, fill = (255, 255, 255, 255), stroke_width=0, stroke_fill=(0x00, 0x44, 0x9b, 255))
            y += 17
        draw.text((x2, y2), title, font=font2, fill=(255, 255, 255, 255))
        img.save(f"output_img/arc_ss_{key}.png")

namedict = open_json("namedict.json")
font = ImageFont.truetype("C:\\Users\\jyxjy\\OneDrive\\終ノ空\\release\\SourceHanSansCN-Medium.ttf", 22)
for file in os.listdir("cfg"):
    if file.startswith("sp_com_frame_"):
        name = file[13:-4]
        transname = namedict[name]
        img = Image.open(os.path.join("cfg", file))
        draw = ImageDraw.Draw(img)
        x = 40
        y = 432
        blank = Image.new("RGBA", (350, 18), (0,0,0,255))
        img.paste(blank, (x, y))
        draw.text((x + 5, y - 12), transname, fill=(255, 255, 255, 255), font=font)
        img.save(f"output_img/{file}")