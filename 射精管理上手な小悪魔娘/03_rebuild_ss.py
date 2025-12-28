from LIB.SS_FILE import *

ori_ss_path = "unpacked_scene" # 解包的ss文件
trans_data_path = "gt_output" # 译文文件。 需要把手动处理文本文件夹内的json文件（如果有）也复制进来。
new_ss_path = "rebuild_scene" # 重建后的ss文件输出目录

os.makedirs(new_ss_path, exist_ok=True)

for name in os.listdir(ori_ss_path):
    if name.endswith(".ss") == False:
        continue
    try:
        trans_data = open_json(os.path.join(trans_data_path, name + ".json"))
    except:
        continue
    ss = SS_File(os.path.join(ori_ss_path, name))
    for data in trans_data:
        if "ruby_idx" in data:
            for idx in data["ruby_idx"]:
                ss.replace_string(idx, "")
        trans_text = data["message"]
        trans_text = replace_halfwidth_with_fullwidth(trans_text)
        trans_text = trans_text.replace("＃Ｄ", "#D").replace("♥", "＃Ａ００").replace("♡", "＃Ａ００").replace("♪", "＃Ａ０２").replace("・", "·")
        try:
            trans_text.encode('gbk', errors='strict')
        except:
            print(f"Warning: text encoding error in file {name}, text: {trans_text}")
        ss.replace_string(data["text_idx"][0], trans_text)
        for idx in data["text_idx"][1:]:
            ss.replace_string(idx, "")
    save_file_b(os.path.join(new_ss_path, name), ss.rebuild())
