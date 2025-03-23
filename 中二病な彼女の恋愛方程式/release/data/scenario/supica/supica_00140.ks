[SCENESTART file=supica_00140.ks]
;//supica_00140
;//BG:bg02_03
[HIDESYSTEMMENU]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/9(木)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku


[r]是啊。大家肯定会反对的——
[np]

[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[satomi storage="C_sifuku_L CD_2_L"]
[playcv storage="satomi_supica_00140_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊，这样不是挺好的吗？」
[np]
[FACEHIDE]

[playse buf=5 storage="sound/10010.ogg"]

[quake time="500"]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[character name="ryuichi"]
【龙一】[r]「不，这样不好吧！！」
[np]

[char_erase name="satomi"]

[mion storage="D_sifuku_M CD1_1_M"]
[playcv storage="mion_supica_00140_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「我也赞成。与其让男生一直赖在客厅里，这样对大家都有好处……」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_1_M"]
[playcv storage="mion_supica_00140_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_1_FACE_sifuku"]
【澪音】[r]「更重要的是，如果两位当事人都希望如此……我们也没理由插嘴」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「等、等一下！我又没有希望这样……」
[np]

[char_erase name="mion"]

[r]失算了……完完全全的失策啊！
[np]

[r]虽然嘴上说得冠冕堂皇，但心里其实在拿我和真珠星同居的事取乐的这魔女……不对，澪音学姐暂且不论……
[np]

[satomi storage="B_sifuku_M AB_1_M"]
[playcv storage="satomi_supica_00140_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_1_FACE_sifuku"]
【圣水】[r]「房间一时半会也修不好，这样对我这个管理员来说也省心不少呢」
[np]
[FACEHIDE]

[r]至少，身为负责管理伏木庄的成年人，我原以为圣水会反对的……是我太天真了……！
[np]

[char_erase name="satomi"]

[aoi storage="A_tokushu_M A_8_M"]
[playcv storage="aoi_supica_00140_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_8_FACE_tokushu"]
【葵】[r]「龙、龙一和真珠星住一间房……！？年、年轻男女这样……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[supica storage="A_sifuku_L AB_1_L"]

[playcv storage="chisato_supica_00140_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「等、等一下！真珠星你觉得这样真的好吗？」
[np]
[FACEHIDE]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00140_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……真珠星对龙一下达了这样的命令。你没有拒绝的权利」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「我有！」
[np]

[char_erase name="supica"]

[chisato storage="C_sifuku_M CD_5_M"]
[playcv storage="chisato_supica_00140_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「神、神原同学……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不是的，这是真珠星擅自提出的主张，我根本就没……！」
[np]

[char_erase name="chisato"]

[chisato storage="B_sifuku_L AB_5_L" relx= -100 trans=false]
[supica storage="D_sifuku_S CD_1_S" relx= 200 trans=false]
[char_trans]

[r]听完这番话，绫濑似乎理解了状况，她先看了一眼真珠星，随后叹了口气。
[np]

[char_erase name="chisato supica"]

[momo storage="A_sifuku_M AB_5_M"]
[playcv storage="momo_supica_00140_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_5_FACE_sifuku"]
【桃】[r]「真、真珠星酱要和前辈同、同居……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_1_M"]
[playcv storage="mion_supica_00140_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_1_FACE_sifuku"]
【澪音】[r]「综上所述……如果单纯以多数决来表决的话，真珠星和我，再加上圣水就有三票赞成」
[np]
[FACEHIDE]

[char_erase name="mion momo"]

[character name="ryuichi"]
【龙一】[r]「请、请等一下！我是反对的……绫濑和葵也反对对吧？」
[np]

[chisato storage="C_sifuku_M CD_5_M" trans=false]
[aoi storage="A_tokushu_M A_5_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00140_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「那、那个嘛……」
[np]
[FACEHIDE]

[char_erase name="chisato aoi"]

[satomi storage="A_sifuku_M AB_10_M"]
[playcv storage="satomi_supica_00140_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_10_FACE_sifuku"]
【圣水】[r]「姑且提醒各位～伏木庄可是允许宿舍内自由恋爱的哦～？」
[np]
[FACEHIDE]

[playcv storage="momo_supica_00140_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_7_FACE_sifuku"]
【桃】[r]「！？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「现、现在不是说这个的时候啊！」
[np]

[satomi storage="D_sifuku_M CD_2_M"]
[playcv storage="satomi_supica_00140_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_2_FACE_sifuku"]
【圣水】[r]「啊、是吗？啊哈哈哈！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]在这种重要时刻，圣水依然醉得满脸通红……
[np]

;//小声
[momo storage="B_sifuku_M AB_4_M"]
[playcv storage="momo_supica_00140_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「这样……这样才对……不然的话同居什么的绝对……嗯，没错……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「接下来，只要桃酱同意——」
[np]

[momo storage="B_sifuku_L AB_8_L"]
[playcv storage="momo_supica_00140_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「我、我赞成！！」
[np]
[FACEHIDE]

[r]…………哎？
[np]

[momo storage="C_sifuku_L C_2_L"]
[playcv storage="momo_supica_00140_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_2_FACE_sifuku"]

[char_jump name=momo]

【桃】[r]「前辈和真珠星酱同居……嗯，我觉得很好哦！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哎、哎、哎哎哎哎哎！？等、等等，桃、桃酱！？」
[np]

[playcv storage="supica_supica_00140_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……明智的判断」
[np]
[FACEHIDE]

[r]本来以为肯定会反对的……圣水小姐也好桃酱也好，完全是在往坏的方向辜负我的期待啊！？
[np]

[char_erase name="momo"]

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[momo storage="C_sifuku_M C_2_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00140_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_8_FACE_sifuku"]
【千圣】[r]「为、为什么要赞成……？」
[np]
[FACEHIDE]

[momo storage="B_sifuku_M AB_1_M"]
[playcv storage="momo_supica_00140_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_1_FACE_sifuku"]
【桃】[r]「因为请大家仔细想想！他们特意这样在我们面前正式请求同居许可……对吧？」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_supica_00140_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「也就是说……两个人已经……已经，是那种关系了……」
[np]
[FACEHIDE]

[quake time="500"]

[r]等、等等！？
[np]

[chisato storage="B_sifuku_M AB_6_M"]
[playcv storage="chisato_supica_00140_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「可、可是……光听刚才的叙述，像是真珠星单方面——」
[np]
[FACEHIDE]

[momo storage="C_sifuku_M C_9_M"]
[playcv storage="momo_supica_00140_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_sifuku"]
【桃】[r]「才不是呢！两个人绝对是那种关系！就是这样的！！」
[np]
[FACEHIDE]

[playcv storage="aoi_supica_00140_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「桃、桃同学……？」
[np]
[FACEHIDE]

[char_erase name="momo chisato"]

[momo storage="C_sifuku_L C_3_L"]
[playcv storage="momo_supica_00140_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「既然如此……我们能做的就只有支持他们的关系了！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个…桃酱？」
[np]

[r]桃酱用我从未见过的热情表情，极力主张着根本不存在的我与真珠星的亲密关系。
[np]

[momo storage="B_sifuku_L AB_2_L"]
[playcv storage="momo_supica_00140_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_sifuku"]
【桃】[r]「所以呢……四比三通过决议！就这么定了！板上钉钉了！」
[np]
[FACEHIDE]

[char_erase name="momo"]

[chisato storage="C_sifuku_M CD_8_M" trans=false]
[aoi storage="A_tokushu_M A_7_M" trans=false]
[char_trans]

[playcv storage="aoi_supica_00140_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_7_FACE_tokushu"]
【葵】[r]「哦、哦哦……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「那个，我说——」
[np]

[char_erase name="aoi chisato"]

[r]被桃酱的气势所压倒，我试图介入哑口无言的葵和绫濑之间……
[np]

[r]正想到这里，真珠星拽了拽我的衣袖。
[np]

[supica storage="B1_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00140_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「龙一……决定了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「不、那个……」
[np]

[supica storage="D_sifuku_L CD_4_L"]
[playcv storage="supica_supica_00140_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_sifuku"]
【真珠星】[r]「伏木庄的多数表决……是绝对的」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「………………」
[np]

[char_erase name="supica"]

[r]接连不断的意外展开让我失去了继续抗争的力气……
[np]

[satomi storage="A_sifuku_L AB_2_L"]
[playcv storage="satomi_supica_00140_005.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]

[char_jump name=satomi]

【圣水】[r]「那龙一和真珠星就从今天开始同居吧，拍板定案！」
[np]
[FACEHIDE]

[r]当圣水爽朗宣布这个决定时，我的内心已经开始接受现实了。
[np]

[char_erase name="satomi"]

[r]真的假的……要和真珠星同居？等等，这真的没问题吗？
[np]

[r]真的……这样真的可以吗！？
[np]

[HIDESYSTEMMENU]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]
[fadeoutbgm time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

;//JUMP:supica_00150
[jump storage="scenario/supica/supica_00150.ks"]
