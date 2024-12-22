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

nameset={'マグナス', '刑事', 'ユーリ', 'セラ', '女性', 'アポローグ', 'カメロメオ', '美鈴', 'オルトロス', 'キャスター', 'ウエイトレス', '有紗', 'ゴードン', 'ディモン', '男子', '裕翔', 'ゴブリン', 'クラビリオ', 'バトルライダー', 'マスター', '警備員', 'ヒプノテック', 'クラリオン', 'まりあ', '男性', '篠原', '？？？', 'ドグマス', '陽子', '警官', '優花', '女子', 'ザクール', 'ゴブリンナイト', '椿', 'アルテミナ', 'ゴブリンウィップ', '魔物', '透磨', 'リョウ', 'ライピス', 'プリティナイト', '図書委員', 'オメガ', 'アナウンス', 'レポーター'}

hanzireplacer=HanziReplacer()
hanzireplacer.ReadTransAndGetHanzidict([replacement_dict,nameset])
hanzireplacer.ChangeFont("WenQuanYi.ttf","WenQuanYi.ttf",'release\\delta_Mahou_font.ttf')

hanzireplacer_tra=HanziReplacer()
hanzireplacer_tra.ReadTransAndGetHanzidict([replacement_dict_tra,nameset])
hanzireplacer_tra.ChangeFont("WenQuanYi.ttf","WenQuanYi.ttf",'release\\tra\delta_Mahou_font_tra.ttf')

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