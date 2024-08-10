from Lib import *
import os

ori_folder='md_scr\\'
out_folder='md_scr_ori_jsons\\'
files=os.listdir(ori_folder)
nameset=set()
giving_name_set={'マグナス', '刑事', 'ユーリ', 'セラ', '女性', 'アポローグ', 'カメロメオ', '美鈴', 'オルトロス', 'キャスター', 'ウエイトレス', '有紗', 'ゴードン', 'ディモン', '男子', '裕翔', 'ゴブリン', 'クラビリオ', 'バトルライダー', 'マスター', '警備員', 'ヒプノテック', 'クラリオン', 'まりあ', '男性', '篠原', '？？？', 'ドグマス', '陽子', '警官', '優花', '女子', 'ザクール', 'ゴブリンナイト', '椿', 'アルテミナ', 'ゴブリンウィップ', '魔物', '透磨', 'リョウ', 'ライピス', 'プリティナイト', '図書委員', 'オメガ', 'アナウンス', 'レポーター'}
for file in files:
    ori_path=ori_folder+file
    out_path=out_folder+file+'.json'
    f=DXLibScrFile(open_file_b(ori_path),nameset=giving_name_set)
    f.dump_str(out_path)
    nameset=nameset|f.nameset

print(nameset)