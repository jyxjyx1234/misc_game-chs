from LIB import *
import shutil
from imgLIB import *
# from bdocr_api import *

transdict = open_json("00img_trans.json")

def redraw_config_header(path, outdir):
    textdata = transdict[os.path.basename(path)]
    img = Image.open(path).convert("RGBA")
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype("NotoSerifCJKsc-Medium.otf", 15)
    img_x, img_y = img.size
    part_width = img_x // 2
    part_height = img_y // 4
    for x_idx in range(2):
        for y_idx in range(4):
            if x_idx == 1 and y_idx == 3:
                continue
            x = x_idx * part_width
            y = y_idx * part_height
            color_text = img.getpixel((x+4, y+4))
            color_base = img.getpixel((x+7, y+6))
            redraw_y = y + 44
            textbox = (x + 7, redraw_y, x + part_width - 7, redraw_y + 16)
            draw.rectangle(textbox, fill=color_base)
            text_x, text_y = get_box_middle(font, textdata, textbox)
            draw.text((text_x, text_y - 3), textdata, font=font, fill=color_text)
    os.makedirs(outdir, exist_ok=True)
    basename = os.path.basename(path)
    outpath = os.path.join(outdir, basename)
    save_bmp_with_mask(img, outpath)
    try:
        txt_name = path.replace(".png", ".txt")
        shutil.copy(txt_name, outdir)
    except:
        pass

def d1():
    redraw_config_header("g00_按钮0\\_config_header_text_btn.png", "g00new")
    redraw_config_header("g00_按钮0\\_config_header_system_btn.png", "g00new")
    redraw_config_header("g00_按钮0\\_config_header_sound_btn.png", "g00new")

def redraw_footer_config(path, outdir, base_add_x=65):
    textdata = transdict[os.path.basename(path)]
    img = Image.open(path)
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype("NotoSerifCJKsc-Medium.otf", 15)
    base_add_y = 67
    boxes = read_siglus_boxcut(path)
    for box in boxes:
        x1, y1, x2, y2 = box
        if x1 == 0 and y1 == 0 and x2 == 0 and y2 == 0:
            continue
        color_base = img.getpixel((x1 + 12, y1 + 12))
        text_box = (x1 + base_add_x, y1 + base_add_y, x2 - 8, y1 + base_add_y + 20)
        if "_config_btn" in path:
            text_box = (x1 + base_add_x, y1 + base_add_y, x1 + base_add_x + 112, y1 + base_add_y + 20)
        text_base = max_color(img, (x1 + 8, y1 + 17, x1 + 62, y1 + 67), not_include=[color_base], min_alpha=100)
        text_x = text_box[0]
        text_y = text_box[1]
        draw.rectangle(text_box, fill=color_base)
        draw.text((text_x, text_y - 3), textdata, font=font, fill=text_base)
        # print(text_base)
    os.makedirs(outdir, exist_ok=True)
    basename = os.path.basename(path)
    outpath = os.path.join(outdir, basename)
    save_bmp_with_mask(img, outpath)
    try:
        txt_name = path.replace(".png", ".txt")
        shutil.copy(txt_name, outdir)
    except:
        pass

def d2():
    redraw_footer_config("g00_按钮0\\_footer_config_back_btn.png", "g00new", 66)
    redraw_footer_config("g00_按钮0\\_footer_config_config_btn.png", "g00new", 68)
    redraw_footer_config("g00_按钮0\\_footer_config_exit_btn.png", "g00new", 70)  
    redraw_footer_config("g00_按钮0\\_footer_config_load_btn.png", "g00new", 70)  
    redraw_footer_config("g00_按钮0\\_footer_config_record_btn.png", "g00new", 66)
    redraw_footer_config("g00_按钮0\\_footer_config_save_btn.png", "g00new", 70)  
    redraw_footer_config("g00_按钮0\\_footer_config_title_btn.png", "g00new", 64) 
    redraw_footer_config("g00_按钮0\\_footer_load_back_btn.png", "g00new", 66)    
    redraw_footer_config("g00_按钮0\\_footer_load_config_btn.png", "g00new", 68)  
    redraw_footer_config("g00_按钮0\\_footer_load_exit_btn.png", "g00new", 70)    
    redraw_footer_config("g00_按钮0\\_footer_load_load_btn.png", "g00new", 70)    
    redraw_footer_config("g00_按钮0\\_footer_load_record_btn.png", "g00new", 66)  
    redraw_footer_config("g00_按钮0\\_footer_load_save_btn.png", "g00new", 70)    
    redraw_footer_config("g00_按钮0\\_footer_load_title_btn.png", "g00new", 64)   
    redraw_footer_config("g00_按钮0\\_footer_save_back_btn.png", "g00new", 66)    
    redraw_footer_config("g00_按钮0\\_footer_save_config_btn.png", "g00new", 68)  
    redraw_footer_config("g00_按钮0\\_footer_save_exit_btn.png", "g00new", 70)    
    redraw_footer_config("g00_按钮0\\_footer_save_load_btn.png", "g00new", 70)    
    redraw_footer_config("g00_按钮0\\_footer_save_record_btn.png", "g00new", 66)  
    redraw_footer_config("g00_按钮0\\_footer_save_save_btn.png", "g00new", 70)    
    redraw_footer_config("g00_按钮0\\_footer_save_title_btn.png", "g00new", 64) 

def redraw_config_buttons(path, outdir):
    textdata = transdict[os.path.basename(path)]
    font = ImageFont.truetype("release\\dat\\SourceHanSansCN-Medium.ttf", 21)
    boxes = read_siglus_boxcut(path)
    img = Image.open(os.path.dirname(path) + f"\\base_{len(boxes)}.png")
    draw = ImageDraw.Draw(img)
    for idx, box in enumerate(boxes):
        x1, y1, x2, y2 = box
        if x1 == 0 and y1 == 0:
            textcolor = (35, 24, 21, 255)
        else:
            textcolor = (255,255,255,255)
        text_x, text_y = get_box_middle(font, textdata, box)
        extra_sub = 6
        if textdata == "OFF":
            extra_sub = 8
        draw.text((text_x, text_y - extra_sub), textdata, font=font, fill=textcolor)
    os.makedirs(outdir, exist_ok=True)
    basename = os.path.basename(path)
    outpath = os.path.join(outdir, basename)
    save_bmp_with_mask(img, outpath)
    try:
        txt_name = path.replace(".png", ".txt")
        shutil.copy(txt_name, outdir)
    except:
        pass

def d3():
    # for f in os.listdir("g00_按钮1"):
    #     if not f.endswith(".png"):
    #         continue
    #     if f.startswith("base_"):
    #         continue
    #     print(f'redraw_config_buttons("g00_按钮1\\\\{f}", "g00new")')
    redraw_config_buttons("g00_按钮1\\_config_common_default_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_autosave_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_autosave_on_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_autosave_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_common_off_btn.png", "g00new")    
    redraw_config_buttons("g00_按钮1\\_config_system_disp_speed_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_record_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_skip_unread_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_voice_all_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_disp_speed_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_disp_speed_on_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_movie_detail_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_pad_detail_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_rclick_close_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_rclick_config_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_rclick_load_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_rclick_qmenu_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_rclick_save_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_record_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_record_on_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_sidebar_on_l_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_sidebar_on_r_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_skip_unread_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_skip_unread_on_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_tablet_on_l_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_tablet_on_r_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_window_mode_detail_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_window_mode_fullscreen_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_system_window_mode_window_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_text_moji_font_a_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_text_moji_font_b_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_text_moji_font_other_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_voice_all_off_btn.png", "g00new")
    redraw_config_buttons("g00_按钮1\\_config_voice_all_on_btn.png", "g00new")

def redraw_config_buttons2(path, outdir):
    textdata = transdict[os.path.basename(path)]
    img = Image.open(path)
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype("release\\dat\\SourceHanSansCN-Medium.ttf", 21)
    boxes = read_siglus_boxcut(path)
    base_add_x = 30
    base_add_y = 4
    for box in boxes:
        x1, y1, x2, y2 = box
        if x1 == 0 and y1 == 0 and x2 == 0 and y2 == 0:
            continue
        color_base = img.getpixel((x1 + 28, y1 + 5))
        text_box = (x1 + base_add_x, y1 + base_add_y, x2 - ((y2-y1) // 2), y1 + base_add_y + 22)
        text_base = max_color(img, text_box, not_include=[color_base])
        text_x = text_box[0]
        text_y = text_box[1]
        draw.rectangle(text_box, fill=color_base)
        draw.text((text_x, text_y - 6), textdata, font=font, fill=text_base)
        # print(text_base)
    os.makedirs(outdir, exist_ok=True)
    basename = os.path.basename(path)
    outpath = os.path.join(outdir, basename)
    save_bmp_with_mask(img, outpath)
    try:
        txt_name = path.replace(".png", ".txt")
        shutil.copy(txt_name, outdir)
    except:
        pass

def d4():
    # import time
    # for f in os.listdir("g00_按钮2"):
    #     if not f.endswith(".png"):
    #         continue
    #     img = Image.open(f'g00_按钮2\\{f}')
    #     boxes = read_siglus_boxcut(f'g00_按钮2\\{f}')
    #     box = boxes[3]
    #     text = ocr_img(img, box[0], box[1], box[2]-box[0], box[3]-box[1])
    #     print(f'redraw_config_buttons2("g00_按钮2\\\\{f}", "g00new")')
    #     time.sleep(0.5)
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_all_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_bgm_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_bgm_fade_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_movie_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_se_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_sys_se_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_sound_mute_voice_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_backlog_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_back_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_delete_save_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_exit_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_init_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_load_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_overwrite_save_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_qload_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_qsave_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_save_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_swap_save_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_dialog_title_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_other_mousewheel_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_system_other_smooth_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_text_auto_use_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_text_moji_nowait_btn.png", "g00new")
    redraw_config_buttons2("g00_按钮2\\_config_voice_continue_btn.png", "g00new")

def draw_shadow_text1(img_base, x, y, text, font, base_color, shadow_color, shadow_width, shadow_alpha):
    text_width = font.getlength(text)
    text_height = font.getbbox(text)[3] - font.getbbox(text)[1]
    img = img_base.crop((x - 10, y - 10, x + text_width + 10, y + text_height + 10))
    draw = ImageDraw.Draw(img)
    mask = Image.new("L", img.size, 0)
    mask_draw = ImageDraw.Draw(mask)
    text_x = 10
    text_y = 10 - 1
    mask_draw.text((text_x, text_y), text, font=font, fill=255)
    glow = mask.filter(ImageFilter.MaxFilter(shadow_width*2 +1))
    glow = glow.filter(ImageFilter.GaussianBlur(shadow_width))
    shadow_img = Image.new("RGBA", img.size, (shadow_color[0], shadow_color[1], shadow_color[2], shadow_alpha))
    img = Image.composite(shadow_img, img, glow)
    draw = ImageDraw.Draw(img)
    draw.text((text_x, text_y), text, font=font, fill=(35, 20, 6, 255))
    draw.text((text_x, text_y + 1), text, font=font, fill=(base_color[0], base_color[1], base_color[2], 255))
    img_base.paste(img, (x - 10, y - 10))
    return img_base

def draw_shadow_text2(img_base: Image.Image, x, y, text, font, base_color, shadow_color, shadow_width, shadow_alpha):
    text_width = font.getlength(text)
    text_height = font.getbbox(text)[3] - font.getbbox(text)[1]
    img = img_base.crop((x - 10, y - 10, x + text_width + 10, y + text_height + 10))
    draw = ImageDraw.Draw(img)
    mask = Image.new("L", img.size, 0)
    mask_draw = ImageDraw.Draw(mask)
    text_x = 10
    text_y = 10
    mask_draw.text((text_x, text_y), text, font=font, fill=255)
    glow = mask.filter(ImageFilter.MaxFilter(shadow_width*2 +1))
    glow = glow.filter(ImageFilter.GaussianBlur(shadow_width))
    shadow_img = Image.new("RGBA", img.size, (shadow_color[0], shadow_color[1], shadow_color[2], shadow_alpha))
    img = Image.composite(shadow_img, img, glow)
    draw = ImageDraw.Draw(img)
    draw.text((text_x, text_y), text, font=font, fill=(base_color[0], base_color[1], base_color[2], 255))

    img_base.paste(img, (x - 10, y - 10), img)
    return img_base

def redraw_config_wood(path, outdir, base_add_x=65):
    textdata = transdict[os.path.basename(path)]
    img = Image.open(path)
    draw = ImageDraw.Draw(img)
    font = ImageFont.truetype("release\\dat\\SourceHanSansCN-Medium.ttf", 15)
    base_add_y = 64
    boxes = read_siglus_boxcut(path)
    for box in boxes:
        x1, y1, x2, y2 = box
        if x1 == 0 and y1 == 0 and x2 == 0 and y2 == 0:
            continue
        text_box = (x1 + base_add_x, y1 + base_add_y, x2 - 8, y1 + base_add_y + 20)
        if "_config_btn" in path:
            text_box = (x1 + base_add_x, y1 + base_add_y, x1 + base_add_x + 112, y1 + base_add_y + 20)
        if img.getpixel((x1 + 10, y1 + 10))[3] < 10:
            draw.rectangle((text_box[0]-5, text_box[1], text_box[2], text_box[3]), fill=(0,0,0,0))
            if x1 == 0 and y1 == 0:
                img = draw_shadow_text1(img, text_box[0], text_box[1]-3, textdata, font, (122, 74, 23, 255), (236, 204, 164), 2, 220)
            else:
                text_color = max_color(img, (x1 + 75, y1 + 25, x1 +171, y1 +61),min_alpha=80)
                draw.text((text_box[0], text_box[1] - 3), textdata, font=font, fill=text_color, stroke_width=0.35, stroke_fill=text_color)
        else:
            draw.text((text_box[0], text_box[1] - 3), textdata, font=font, fill=(255, 255, 255, 255), stroke_width=2, stroke_fill=(135, 88, 29, 255))
        
    os.makedirs(outdir, exist_ok=True)
    basename = os.path.basename(path)
    outpath = os.path.join(outdir, basename)
    img.save("temp.png")
    save_bmp_with_mask(img, outpath)
    try:
        txt_name = path.replace(".png", ".txt")
        shutil.copy(txt_name, outdir)
    except:
        pass

def d5():
    redraw_config_wood("g00_按钮wood\\_bbs_sys_quit_btn.png", "g00new", 85)  
    redraw_config_wood("g00_按钮wood\\_bbs_sys_back_btn.png", "g00new", 83)
    redraw_config_wood("g00_按钮wood\\_bbs_sys_config_btn.png", "g00new", 85)
    redraw_config_wood("g00_按钮wood\\_bbs_sys_record_btn.png", "g00new", 83)
    redraw_config_wood("g00_按钮wood\\_bbs_sys_save_btn.png", "g00new", 82)  
    redraw_config_wood("g00_按钮wood\\_bbs_sys_title_btn.png", "g00new", 83) 
    redraw_config_wood("g00_按钮wood\\_bbs_sys_load_btn.png", "g00new", 83)  


d1()
d2()
d3()
d4()
d5()