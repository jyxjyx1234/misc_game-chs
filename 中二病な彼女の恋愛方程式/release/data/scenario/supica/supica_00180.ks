[SCENESTART file=supica_00180.ks]
;//supica_00180
;//BG:bg11_01
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg11_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM04.ogg" time="500"]

[SYSTEMMENU]

;//TIME:昼
;//日付:7/10(金)
;//CH:竜一,seifuku
;//CH:葵,seifuku
;//CH:すぴか,seifuku
;//CH:もも,seifuku
;//CH:千聖,seifuku
;//CH:あかね,seifuku
;//CH:爽史,seifuku


;//SEチャイム音

[playse buf=5 storage="sound/00090.ogg"]

[wait time="1000"]

[character name="ryuichi"]
【龙一】[r]「……唉……」
[np]

[r]最后一道钟声响起，期末考的所有日程也宣告结束。
[np]

[r]从各种意义上来说，我也完蛋了。
[np]

[r]感觉题目比以前的学校稍微难了点……这个学园实际上水平相当高吗？
[np]

[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

[sousi storage="A_seifuku_M A_1_M"]

[character name="ryuichi"]
【龙一】[r]「爽史……辛苦了……」
[np]

[sousi storage="C_seifuku_M CD_1_M"]
[playcv storage="sousi_supica_00180_001.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_CD_1_FACE_seifuku"]
【爽史】[r]「啊，辛苦了」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦，表情这么清爽啊……考得不错？」
[np]

[sousi storage="B_seifuku_M B_10_M"]
[playcv storage="sousi_supica_00180_002.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_10_FACE_seifuku"]
【爽史】[r]「不。正在思考暑假补课时……」
[np]
[FACEHIDE]

[r]啊，已经做好觉悟了啊。
[np]

[sousi storage="A_seifuku_M A_3_M"]
[playcv storage="sousi_supica_00180_003.ogg" name="sousi"]
[character name="sousi"]
[FACEVIEW storage="sousi_AB_3_FACE_seifuku"]
【爽史】[r]「该让哪个幼女角色给我喊『加油♪加油♪』的应援才能提起干劲，正在认真思考这个问题」
[np]
[FACEHIDE]

[r]……现在这一刻，真羡慕你这种坚韧的精神啊。
[np]

[akane storage="B_seifuku_M AB_2_M"]
[playcv storage="akane_supica_00180_001.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_2_FACE_seifuku"]
【茜】[r]「嘿两位男生，怎么样？还活着吗？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「只剩一层皮……不，应该说是半层吧……」
[np]

[akane storage="C_seifuku_M CD_2_M" trans=false]
[sousi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="akane_supica_00180_002.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_CD_2_FACE_seifuku"]

[char_jump name=akane]

【茜】[r]「啊哈哈，那也太薄如蝉翼了吧」
[np]
[FACEHIDE]

[char_erase name="sousi akane"]

[chisato storage="A_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00180_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「昨天手忙脚乱的，根本没能好好复习吧？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「嘛，虽然也有这个原因……但果然日常预习复习还是很重要的」
[np]

[r]虽然现在痛切感受到这点，但等到下次考试时肯定又会忘得一干二净吧。
[np]

[aoi storage="A_seifuku_M A_5_M"]
[playcv storage="aoi_supica_00180_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_5_FACE_seifuku"]
【葵】[r]「回去吧，龙一……已经没什么好留恋的了……」
[np]
[FACEHIDE]

[chisato storage="A_seifuku_M AB_5_M"]

[character name="ryuichi"]
【龙一】[r]「哦、哦……」
[np]

[r]光听这句话，感觉像是再也不会来这所学园了……
[np]

[char_erase name="aoi chisato"]

[akane storage="A_seifuku_M AB_1_M" trans=false]
[sousi storage="A_seifuku_M A_1_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00180_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「那我也一起……再见啦，两位」
[np]
[FACEHIDE]

[akane storage="B_seifuku_M AB_1_M" trans=false]
[sousi storage="A_seifuku_M A_3_M" trans=false]
[char_trans]

[playcv storage="akane_supica_00180_003.ogg" name="akane"]
[character name="akane"]
[FACEVIEW storage="akane_AB_1_FACE_seifuku"]

[char_jump name=akane]

【茜】[r]「嗯，下周见～！」
[np]
[FACEHIDE]

;//背景を廊下bg10_01に

[char_erase name="akane sousi"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg10_01.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[r]向留在教室的两人挥手后，跟着葵和绫濑走出走廊。
[np]

[momo storage="A_seifuku_M AB_7_M"]
[playcv storage="momo_supica_00180_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_seifuku"]
【桃】[r]「啊……」
[np]
[FACEHIDE]

[momo storage="A_seifuku_M AB_1_M"]

[playcv storage="chisato_supica_00180_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「哎呀，桃？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]这时，教室门口似乎早已等候在此的桃酱……
[np]

[supica storage="A_seifuku_M AB_1_M"]
[playcv storage="supica_supica_00180_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_seifuku"]
【真珠星】[r]「……啊」
[np]
[FACEHIDE]

[r]真、真珠星……！？
[np]

[supica storage="D_seifuku_L CD_1_L"]
[playcv storage="supica_supica_00180_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「龙一……找到了」
[np]
[FACEHIDE]

[r]躲在桃酱身后的真珠星，正迈着小碎步朝我走来。
[np]

[char_erase name="supica"]

[chisato storage="A_seifuku_M AB_8_M" trans=false]
[momo storage="C_seifuku_M C_1_M" trans=false]
[char_trans]

[playcv storage="chisato_supica_00180_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_8_FACE_seifuku"]
【千圣】[r]「你们两个，这是怎么了……？」
[np]
[FACEHIDE]

[momo storage="B_seifuku_M AB_2_M"]
[playcv storage="momo_supica_00180_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]
【桃】[r]「嘿嘿……听说真珠星酱想和神原前辈一起回家……！」
[np]
[FACEHIDE]

[chisato storage="C_seifuku_M CD_8_M"]

[character name="ryuichi"]
【龙一】[r]「诶？」
[np]

[char_erase name="momo chisato"]

[supica storage="A_seifuku_M AB_1_M"]

[r]真的吗？这样想着我望向真珠星的眼睛，她却依然面无表情地点了点头。
[np]

[char_erase name="supica"]

[momo storage="A_seifuku_L AB_2_L"]
[playcv storage="momo_supica_00180_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_2_FACE_seifuku"]

[char_jump name=momo]

【桃】[r]「不过也是理所当然的吧……毕竟你们两个是……呀……♪」
[np]
[FACEHIDE]

[r]……究竟要怎么做，才能解开桃酱的这个误会呢。
[np]

[char_erase name="momo"]

[supica storage="C1_seifuku_M CD_1_M"]
[playcv storage="supica_supica_00180_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_seifuku"]
【真珠星】[r]「龙一……一起回家」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、啊……」
[np]

[char_erase name="supica"]

[r]真珠星率先走了出去，我正想跟上去时……
[np]

[chisato storage="A_seifuku_M AB_8_M"]

[r]忽然间，和身旁的绫濑对上了视线。
[np]

[character name="ryuichi"]
【龙一】[r]「……那个，这算是……」
[np]

[chisato storage="B_seifuku_M AB_1_M"]
[playcv storage="chisato_supica_00180_005.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_seifuku"]
【千圣】[r]「嗯……看来她相当依赖你呢……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……果然是这样啊」
[np]

[char_erase name="chisato"]

[r]倒也不是觉得困扰……怎么说呢。
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

;//JUMP:supica_00190
[jump storage="scenario/supica/supica_00190.ks"]
