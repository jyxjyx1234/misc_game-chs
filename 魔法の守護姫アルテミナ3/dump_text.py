from Lib import *
import os

ori_folder='md_scr\\'
out_folder='md_scr_ori_jsons\\'
files=os.listdir(ori_folder)
nameset=set()
giving_name_set={'カメロメオ', '男Ａ', '警備員', '業者', 'ドグマス', 'コメント', '刑事', '美鈴', 'アルテミナ', 'オルトロス', '男Ｂ', '警官', '陽子', 'マスター', '篠原', '図書委員', '男Ｃ', '女性', 'キモオタ', '魔物', 'リョウ', '教師', 'マグナス', '男Ｄ', 'アナウンス', 'アポローグ', 'セラ', '優花', 'クラリオン', '男Ｇ', 'ゴードン', 'ゴブリンウィップ', '男子', '大家', '透磨', 'ヒプノテック', '有紗', 'クラビリオ', '女Ｂ', 'レポーター', 'ユーリ', '椿', 'Ｂアルテミナ', '？？？', 'ライピス', '裕翔', 'ディモン', '男性', 'バトルライダー', '男Ｈ', 'ゴブリンナイト', 'ウエイトレス', 'ザクール', '女Ａ', 'キャスター', '重樹', 'オメガ', '女子', 'プリティナイト', '男Ｅ', '黒有紗', '男Ｆ', 'ゴブリン', 'まりあ'}
for file in files:
    ori_path=ori_folder+file
    out_path=out_folder+file+'.json'
    f=DXLibScrFile(open_file_b(ori_path),nameset=giving_name_set)
    f.dump_str(out_path)
    nameset=nameset|f.nameset

print(nameset)