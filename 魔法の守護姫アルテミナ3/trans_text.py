from Lib import *
from HanziReplacer import *
import os
import zhconv

transed_folder='transed_jsons\\'
ori_folder='md_scr\\'
out_folder='md_scr_chs\\'
out_folder_tra='md_scr_chs_tra\\'

filelist=os.listdir(transed_folder)
replacement_dict={}
replacement_dict_tra={}

for file in filelist:
    try:
        trans=open_json(transed_folder+file)
    except:
        print(file)
        exit()
    for dic in trans:
        replacement_dict[dic['pre_jp']]=dic['post_zh_preview']#简体
        replacement_dict_tra[dic['pre_jp']]=zhconv.convert(dic['post_zh_preview'],"zh-hant")#繁体

nameset={'カメロメオ', '男Ａ', '警備員', '業者', 'ドグマス', 'コメント', '刑事', '美鈴', 'アルテミナ', 'オルトロス', '男Ｂ', '警官', '陽子', 'マスター', '篠原', '図書委員', '男Ｃ', '女性', 'キモオタ', '魔物', 'リョウ', '教師', 'マグナス', '男Ｄ', 'アナウンス', 'アポローグ', 'セラ', '優花', 'クラリオン', '男Ｇ', 'ゴードン', 'ゴブリンウィップ', '男子', '大家', '透磨', 'ヒプノテック', '有紗', 'クラビリオ', '女Ｂ', 'レポーター', 'ユーリ', '椿', 'Ｂアルテミナ', '？？？', 'ライピス', '裕翔', 'ディモン', '男性', 'バトルライダー', '男Ｈ', 'ゴブリンナイト', 'ウエイトレス', 'ザクール', '女Ａ', 'キャスター', '重樹', 'オメガ', '女子', 'プリティナイト', '男Ｅ', '黒有紗', '男Ｆ', 'ゴブリン', 'まりあ'}

hanzireplacer=HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacement_dict,nameset])
hanzireplacer.ChangeFont("WenQuanYi.ttf","WenQuanYi.ttf",'release\\release\\简中\\delta_Mahou_font.ttf')

hanzireplacer_tra=HanziReplacer()
hanzireplacer_tra.ReadTransAndGetHanzidict([replacement_dict_tra,nameset])
hanzireplacer_tra.ChangeFont("WenQuanYi.ttf","WenQuanYi.ttf",'release\\release\\繁中\\delta_Mahou_font_tra.ttf')

for file in filelist:
    f=open_file_b(ori_folder+file.replace('.json',''))
    f=DXLibScrFile(f,nameset=nameset)
    f.trans(replacement_dict,hanzireplacer)
    f.write_to_file(out_folder+file.replace('.json',''))

#繁体
for file in filelist:
    f=open_file_b(ori_folder+file.replace('.json',''))
    f=DXLibScrFile(f,nameset=nameset)
    f.trans(replacement_dict_tra,hanzireplacer_tra)
    f.write_to_file(out_folder_tra+file.replace('.json',''))

import unpack_and_repack
unpack_and_repack.repack(out_folder,'release\md_scr.med')
unpack_and_repack.repack(out_folder_tra,'release\\tra\md_scr.med')