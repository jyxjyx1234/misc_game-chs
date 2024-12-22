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
    trans=open_json(transed_folder+file)
    for dic in trans:
        replacement_dict[dic['pre_jp']]=dic['post_zh_preview']#简体
        replacement_dict_tra[dic['pre_jp']]=zhconv.convert(dic['post_zh_preview'],"zh-hant")#繁体

nameset={'有紗', '篠原', 'リョウ', 'プリティナイト', 'キャスター', '女子', 'まりあ', 'ゴブリンウィップ', 'マグナス', 'アナウンス', 'ゴードン', '魔物', '男子', 'オルトロス', '図書委員', '刑事', 'カメロメオ', '椿', '裕翔', 'クラリオン', 'ザクール', '美鈴', 'レポーター', 'ドグマス', 'ライピス', 'ゴブリンナイト', 'マスター', 'ユーリ', '警備員', 'ディモン', 'アルテミナ', 'バトルライダー', 'ウエイトレス', 'オメガ', '陽子', 'クラビリオ', '？？？', '女性', '男性', 'ゴブリン', '透磨', 'アポローグ', '警官', '優花', 'ヒプノテック', 'セラ'}

hanzidict,target_chars,source_chars=ReadTransAndGetHanzidict([replacement_dict,nameset])
#ChangeUFIConfig('release\\uif_config.json',source_chars,target_chars)
GetFontSubsList('subs_cn_jp.json',source_chars,target_chars)

hanzidict_tra,target_chars,source_chars=ReadTransAndGetHanzidict([replacement_dict_tra,nameset])
#ChangeUFIConfig('release\\uif_config.json',source_chars,target_chars)
GetFontSubsList('subs_cn_jp_tra.json',source_chars,target_chars)

for file in filelist:
    f=open_file_b(ori_folder+file.replace('.json',''))
    f=DXLibScrFile(f,nameset=nameset)
    f.trans(replacement_dict,hanzidict)
    f.write_to_file(out_folder+file.replace('.json',''))

#繁体
for file in filelist:
    f=open_file_b(ori_folder+file.replace('.json',''))
    f=DXLibScrFile(f,nameset=nameset)
    f.trans(replacement_dict_tra,hanzidict_tra)
    f.write_to_file(out_folder_tra+file.replace('.json',''))

import font_CN_JP
font_CN_JP.main("WenQuanYi.ttf",'subs_cn_jp.json','release\\release\简中\delta_Mahou_font.ttf')
font_CN_JP.main("WenQuanYi.ttf",'subs_cn_jp_tra.json','release\\release\繁中\delta_Mahou_font_tra.ttf')

import unpack_and_repack
unpack_and_repack.repack(out_folder,'release\md_scr.med')
unpack_and_repack.repack(out_folder_tra,'release\\tra\md_scr.med')