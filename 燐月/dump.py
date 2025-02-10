from Lib import *

data = open_file_b("output.txt")
data = data.split(b"\x0a\x00")
os.makedirs("gt_input", exist_ok=True)
nameset = {'翔子たち', '母親', '幸一', '詩乃（確定）', '直人・鮎美', 'おばちゃん', '鮎美（？）', 'クラスの男Ａ', '直人', '鈴音', '美津菜', 'クラスの女', '？？', '正和', '万蔵', 'クラスの男たち', '鈴音・鮎美', '友達１号', '賄度翔子', '赤ちゃん', '風間', '鮎美・結衣子', '友達２号', '息子', 'ガキンチョ', '担任', 'クラスの女Ａ', '店内放送', '名無し子', '直人・鈴音', '正和・結衣子', 'ばばあ', 'ばあさん', 'カメラマン', '万蔵・直人', 'サラリーマン', '詩乃（推定）', 'クラスの女Ｂ', 'テキ屋', '新妻', '結衣子', 'クラスの女Ｃ', '女の子', '名無し子（確定）', '詩乃', '教師', '直人・詩乃', '名無し子（仮名）', '直人・鮎美・結衣子', '店員', '鮎美'}
out = OriJsonOutput()
for text in data:
    text = text.decode("utf-16-le")
    text = text.replace("@", "\r")
    message = re.sub(r"<.*?>", "", text)
    if "「" in text:
        name, message = message.split("「", 1)
        if name in nameset:
            message = "「" + message
            out.add_name(name)
            nameset.add(name)
        else:
            message = re.sub(r"<.*?>", "", text)
    out.add_text(message)
    out.dic["ori"] = text
    out.append_dict(quchong=True)
out.save_json("gt_input\\ShinRingetsu", 15)
# save_json("namedict.json", out.get_names())
print(out.textcount)