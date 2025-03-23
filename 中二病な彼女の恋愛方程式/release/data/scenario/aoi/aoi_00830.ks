[SCENESTART file=aoi_00830.ks]
;//aoi_00830
;//BG:bg02_03

[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]
[backlay]
[freeimage layer=1 page=back]
[image storage="bg30_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_03.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:8/10(月)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,sifuku
;//CH:もも,tokushu
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku

[r]于是，那天的晚餐。
[np]

[satomi storage="A_sifuku_M AB_7_M"]
[playcv storage="satomi_aoi_00830_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「哦，毕业啊……感觉有点像偶像呢」
[np]
[FACEHIDE]

[chisato storage="A_sifuku_M AB_6_M"]
[playcv storage="chisato_aoi_00830_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_6_FACE_sifuku"]
【千圣】[r]「变回普通女孩子，和喜欢的人交往……这部分倒是一样的呢……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_4_M"]
[playcv storage="mion_aoi_00830_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_4_FACE_sifuku"]
【澪音】[r]「对我来说，这真是无聊透顶的新闻……」
[np]
[FACEHIDE]

[char_erase name="mion chisato satomi"]

[r]三人用像是看综艺节目般的轻松态度闲聊着……
[np]

[momo storage="A_tokushu_M AB_4_M"]
[playcv storage="momo_aoi_00830_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_tokushu"]
【桃】[r]「盯——……！」
[np]
[FACEHIDE]

[r]身披与平日不同的服装，像在等待时机般目不转睛凝视着葵的桃酱。
[np]

[supica storage="B1_sifuku_M AB_1_M"]
[playcv storage="supica_aoi_00830_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「桃，这个给你……」
[np]
[FACEHIDE]

[r]即便真珠星把青椒肉丝里的青椒夹到她盘子里，她也浑然不觉。
[np]

[char_erase name="supica momo"]


;//小声
[momo storage="C_tokushu_L C_9_L"]
[playcv storage="momo_aoi_00830_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「好，要行动就趁现在……桃，加油……！」
[np]
[FACEHIDE]

[r]嗯……？
[np]

[momo storage="D_tokushu_L D_5_L"]
[playcv storage="momo_aoi_00830_003.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「呜、呜呜……！」
[np]
[FACEHIDE]

[r]仿佛听见什么低语的瞬间，桃酱突然按住右手，面容因痛苦而扭曲。
[np]

[momo storage="D_tokushu_L D_9_L"]
[playcv storage="momo_aoi_00830_004.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「右、右右…右手好痛…不对是右手在发烫～！」
[np]
[FACEHIDE]

[playcv storage="aoi_aoi_00830_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_1_FACE_sifukuB"]
【葵】[r]「龙一，递下酱油」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「啊、好…」
[np]

[r]然而葵完全无视了这一幕。
[np]

[char_erase name="momo"]


;//「ダークプリーステス」でお願いします
[momo storage="D_tokushu_M D_9_M" trans=false]
[mion storage="D_sifuku_M CD1_10_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00830_002.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「哎呀这是怎么了桃…不，应该称你为—堕天圣职者—小姐？」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_7_M"]
[playcv storage="momo_aoi_00830_005.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_7_FACE_tokushu"]
【桃】[r]「！？」
[np]
[FACEHIDE]

[r]就在此时，可靠的伙伴出现在陷入困境的桃酱面前！
[np]

[momo storage="B_tokushu_M AB_8_M"]
[playcv storage="momo_aoi_00830_006.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「你…你这盘踞在伏木庄的魔女！！」
[np]
[FACEHIDE]

[mion storage="A_sifuku_M AB1_3_M"]
[playcv storage="mion_aoi_00830_003.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「呵呵呵，没错…看来你右手寄宿的黑暗力量快要失控了呢…」
[np]
[FACEHIDE]

[playcv storage="satomi_aoi_00830_002.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「哦，好戏开场啦！」
[np]
[FACEHIDE]

[playcv storage="chisato_aoi_00830_002.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「明明在吃饭呢…」
[np]
[FACEHIDE]

[momo storage="C_tokushu_M C_8_M"]
[playcv storage="momo_aoi_00830_007.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_8_FACE_tokushu"]
【桃】[r]「不、不是的……这是……」
[np]
[FACEHIDE]

[mion storage="C_sifuku_M CD1_10_M"]
[playcv storage="mion_aoi_00830_004.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_10_FACE_sifuku"]
【澪音】[r]「果然还是太稚嫩了……你尊为师父的那个女人，此刻在黄泉之下想必也正痛心疾首吧」
[np]
[FACEHIDE]

[playcv storage="aoi_aoi_00830_002.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_7_FACE_sifukuB"]
【葵】[r]「……」
[np]
[FACEHIDE]

[r]或许是意识到话题指向了自己，葵握着筷子的手突然停滞在半空。
[np]

;//「ダーク・リベンジャー」でお願いします
[momo storage="A_tokushu_M AB_8_M"]
[playcv storage="momo_aoi_00830_008.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
【桃】[r]「才、——漆黑复仇者——根本没有死！！只是行踪不明而已！」
[np]
[FACEHIDE]

[r]桃酱嘴上回应着前辈，目光却赤裸裸地直勾勾盯着葵。
[np]

;//ちらっ、のみ小声
[momo storage="C_tokushu_M C_9_M"]
[playcv storage="momo_aoi_00830_009.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_9_FACE_tokushu"]
【桃】[r]「肯、肯定会回来的……！偷瞄……我的师父怎么可能在那点程度的战斗中丧命……偷瞄……」
[np]
[FACEHIDE]

[r]桃酱，全都写在脸上了…！连偷瞄的台词都直接说出来了！
[np]

[char_erase name="momo mion"]

[aoi storage="A_sifukuB_M A_9_M"]
[playcv storage="aoi_aoi_00830_003.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_9_FACE_sifukuB"]
【葵】[r]「……吃、吃饭的时候，要保持安静……」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[satomi storage="B_sifuku_M AB_7_M" trans=false]
[chisato storage="C_sifuku_M CD_1_M" trans=false]
[char_trans]
[playcv storage="satomi_aoi_00830_003.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_7_FACE_sifuku"]
【圣水】[r]「哦哦，千圣前辈这次忍住没插话解说呢」
[np]
[FACEHIDE]

[chisato storage="B_sifuku_M AB_1_M"]
[playcv storage="chisato_aoi_00830_003.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_1_FACE_sifuku"]
【千圣】[r]「明明满脸写着想加入话题」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]

[momo storage="C_tokushu_M C_9_M" trans=false]
[mion storage="B_sifuku_M AB1_3_M" trans=false]
[char_trans]
[playcv storage="mion_aoi_00830_005.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_3_FACE_sifuku"]
【澪音】[r]「如今那女人已死，取你性命简直如同折断婴儿的手指般容易……哼！」
[np]
[FACEHIDE]

[momo storage="A_tokushu_M AB_8_M"]
[playcv storage="momo_aoi_00830_010.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
[char_jump name=momo]
【桃】[r]「呀啊啊！？」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]澪音前辈将伸出的食指猛然下压的瞬间，桃酱应声瘫倒在地！
[np]

[mion storage="A_sifuku_M AB1_9_M"]
[playcv storage="mion_aoi_00830_006.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_AB1_9_FACE_sifuku"]
【澪音】[r]「来吧……就这样，在痛苦中慢慢挣扎着死去吧……呵呵，呵呵呵呵……！」
[np]
[FACEHIDE]

[char_erase name="mion"]

[momo storage="C_tokushu_M C_5_M"]
[playcv storage="momo_aoi_00830_011.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「呜、呜呜……谁来……谁来救救我啊～……！」
[np]
[FACEHIDE]

[playcv storage="aoi_aoi_00830_004.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_B_9_FACE_sifukuB"]
【葵】[r]「呃……！」
[np]
[FACEHIDE]

[r]桃酱痛苦地喘息着，视线始终锁定某个特定的「某人」。
[np]

[char_erase name="momo"]

[r]现在如何是好葵……能够打破这个局面的，只有身为漆黑复仇者的你——
[np]

[aoi storage="C_sifukuB_M CD_4_M"]
[playcv storage="aoi_aoi_00830_005.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_CD_4_FACE_sifukuB"]
【葵】[r]「我、我吃好了……！」
[np]
[FACEHIDE]

[char_erase name="aoi"]

[momo storage="A_tokushu_M AB_8_M"]
[playcv storage="momo_aoi_00830_012.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_8_FACE_tokushu"]
[char_jump name=momo]
【桃】[r]「诶诶！？」
[np]
[FACEHIDE]

[r]突然起身离席，急匆匆地跑上楼梯的葵……
[np]

[char_erase name="momo"]

[mion storage="C_sifuku_M CD1_5_M"]
[playcv storage="mion_aoi_00830_007.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_5_FACE_sifuku"]
【澪音】[r]「哈啊」
[np]
[FACEHIDE]

[char_erase name="mion"]

[r]仿佛要逃离此处的氛围一般，躲回了自己的房间。
[np]

[satomi storage="D_sifuku_M CD_1_M" trans=false]
[chisato storage="A_sifuku_M AB_6_M" trans=false]
[char_trans]
[playcv storage="satomi_aoi_00830_004.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_1_FACE_sifuku"]
【圣水】[r]「唔…头也不回直接冲回房间了呢，解说员千圣」
[np]
[FACEHIDE]

[chisato storage="D_sifuku_M CD_5_M"]
[playcv storage="chisato_aoi_00830_004.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_CD_5_FACE_sifuku"]
【千圣】[r]「明明还剩下一大半呢…」
[np]
[FACEHIDE]

[char_erase name="chisato satomi"]

[r]正如绫濑所说，葵的米饭、味噌汤和分好的配菜都原封未动。
[np]

[momo storage="C_tokushu_M C_5_M"]
[playcv storage="momo_aoi_00830_013.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_5_FACE_tokushu"]
【桃】[r]「…怎么会这样…」
[np]
[FACEHIDE]

[char_erase name="momo"]

[r]听到沉浸在悲伤中的桃酱那柔弱嗓音，胸口似乎被隐隐刺痛了。
[np]

[r]现在能帮到葵的…大概只有我这个导致她辍学的罪魁祸首了吧…
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

;//JUMP:aoi_00840
[jump storage="scenario/aoi/aoi_00840.ks"]