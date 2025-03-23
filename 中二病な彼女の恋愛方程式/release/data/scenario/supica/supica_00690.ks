[SCENESTART file=\\DAYSERVER2\Dayserver\dayserver\03_17\ラブイク_シナリオファイル\03_すぴかルート\supica_00690.txt]
;//supica_00690
;//BG:bg02_02
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]


[SYSTEMMENU]

;//TIME:夕
;//日付:8/12(水)
;//CH:竜一,sifuku
;//CH:葵,tokushu
;//CH:すぴか,pajyama
;//CH:もも,sifuku
;//CH:澪音,sifuku
;//CH:千聖,sifuku
;//CH:聖水,sifuku
[fadeinbgm storage="bgm/BGM06.ogg" time="500"]

[momo storage="C_sifuku_M C_3_M"]
[playcv storage="momo_supica_00690_001.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_CD_3_FACE_sifuku"]
【桃】[r]「……说起来，好像有说过……关于英仙座的流星群什么的……」
[np]
[FACEHIDE]

[char_erase name="momo"]
[r]在真珠星缺席的傍晚客厅里，弥漫着沉重的气氛。
[np]

[r]一开始，我们向离开真珠星房间的澪音前辈说明了情况，可是……
[np]

[r]接着葵、桃、绫濑也陆续赶来，等注意到时连圣水小姐都已经落座了。
[np]

[satomi storage="C_sifuku_M CD_5_M" trans=false]
[chisato storage="A_sifuku_M AB_11_M" trans=false]
[char_trans]

[playcv storage="satomi_supica_00690_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_CD_5_FACE_sifuku"]
【圣水】[r]「原来如此……所以她才闹着要去看星星啊……不是挺好的嘛？就算去了也没关系吧？」
[np]
[FACEHIDE]

;[chisato storage="A_sifuku_M AB_11_M"]
[playcv storage="chisato_supica_00690_001.ogg" name="chisato"]
[character name="chisato"]
[FACEVIEW storage="chisato_AB_11_FACE_sifuku"]
[char_jump name=chisato]
【千圣】[r]「不、不行啦！刚才量过体温，烧得挺厉害的……就算是感冒，硬撑着恶化下去可就麻烦了！」
[np]
[FACEHIDE]

[char_erase name="satomi chisato"]


[momo storage="A_sifuku_M AB_4_M" trans=false]
[mion storage="C_sifuku_M CD1_6_M" trans=false]
[char_trans]

[playcv storage="momo_supica_00690_002.ogg" name="momo"]
[character name="momo"]
[FACEVIEW storage="momo_AB_4_FACE_sifuku"]
【桃】[r]「说到底……只是感冒对吧……？不是更严重的病吧……？」
[np]
[FACEHIDE]

;[mion storage="C_sifuku_M CD1_6_M"]
[playcv storage="mion_supica_00690_001.ogg" name="mion"]
[character name="mion"]
[FACEVIEW storage="mion_CD1_6_FACE_sifuku"]
【澪音】[r]「以我的观察来看，应该只是普通感冒……不过，她本人不愿意去医院所以……」
[np]
[FACEHIDE]

[char_erase name="mion momo"]
[r]虽然我和前辈两人都试图劝说真珠星应该先去趟医院，可……
[np]

[r]或许是不想因此错过观星的机会，真珠星始终顽固地拒绝。
[np]

[aoi storage="A_tokushu_L A_4_L"]
[playcv storage="aoi_supica_00690_001.ogg" name="aoi"]
[character name="aoi"]
[FACEVIEW storage="aoi_A_4_FACE_tokushu"]
【葵】[r]「……一年一次……真珠星的心情，也不是不能理解……」
[np]
[FACEHIDE]

[char_erase name="aoi"]
[r]说到一半突然停住的葵欲言又止地朝我这边瞥了一眼。
[np]

[character name="ryuichi"]
【龙一】[r]「……暂且，我去试着说服她吧」
[np]

[r]此刻对于真珠星所说的话最具分量的，毫无疑问我有着这份自信。
[np]

[r]毕竟，这是我和真珠星之间的问题。虽然大家都很担心，但最终必须由我们两人来给出答案。
[np]

[r]一边想着这些事，我一步步踏实地走上楼梯……
[np]

;//背景をすぴかの部屋bg04_02に
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="black_1.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]
[wait time="1000"]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_02.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]

[character name="ryuichi"]
【龙一】[r]「……真珠星……？」
[np]

[r]为了观察情况而轻声呼唤，随后走到床边。
[np]

[supica storage="A_pajyama_M AB2_5_M"]
[playcv storage="supica_supica_00690_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_pajyama"]
【真珠星】[r]「……龙一……」
[np]
[FACEHIDE]

[r]躺着的真珠星的表情，毫无疑问是病人的模样……
[np]

[supica storage="C2_pajyama_M CD2_6_M"]
[playcv storage="supica_supica_00690_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_pajyama"]
【真珠星】[r]「……马上就要到夜晚了……好期待……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[r]即便如此仍强撑笑容的真珠星，让我心痛欲裂。
[np]

[r]真珠星并没有疏于管理自己的身体状况。这一点，作为同住一室的我最为清楚。
[np]

[r]每次外出回来都坚持洗手漱口，洗完澡后认真吹干头发，也从不熬夜……
[np]

[r]所以这次真的只是偶然。真珠星今天会感冒……完全是个残酷的偶然……
[np]

[character name="ryuichi"]
【龙一】[r]「……我说，真珠星」
[np]

[r]跪在床前，我用双手握住真珠星纤弱的手掌。
[np]

[character name="ryuichi"]
【龙一】[r]「……关于流星雨的事……」
[np]

[supica storage="B1_pajyama_M AB2_3_M"]
[playcv storage="supica_supica_00690_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_3_FACE_pajyama"]
【真珠星】[r]「嗯……怎么了……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「…………」
[np]

[r]……犹豫不决算什么……说出来啊。这才是为了真珠星好。
[np]

[character name="ryuichi"]
【龙一】[r]「我们期待明年再看……这样不行吗……？」
[np]

[supica storage="D_pajyama_M CD2_6_M"]
[playcv storage="supica_supica_00690_004.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_pajyama"]
【真珠星】[r]「呃……」
[np]
[FACEHIDE]

[r]我清楚地感受到，这句话让两人之间的氛围骤然改变。
[np]

[supica storage="B2_pajyama_M AB2_9_M"]
[playcv storage="supica_supica_00690_005.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_9_FACE_pajyama"]
【真珠星】[r]「……明年……为什么……？」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「……真珠星你虽然不愿意承认……但身体不舒服吧？」
[np]

[supica storage="C1_pajyama_M CD2_4_M"]
[playcv storage="supica_supica_00690_006.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「没……没事……这点小病……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「话是这么说，但你既发烧又出这么多汗……」
[np]

[supica storage="C1_pajyama_M CD2_10_M"]
[playcv storage="supica_supica_00690_007.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_10_FACE_pajyama"]
【真珠星】[r]「没关系……不要紧的……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]真珠星像小孩子一样嘴硬，但她的脸上依然泛着潮红。
[np]

[character name="ryuichi"]
【龙一】[r]「要是带着这样的真珠星出门……我会担心得根本没心思看流星啊」
[np]

[supica storage="C1_pajyama_M CD2_6_M"]
[playcv storage="supica_supica_00690_008.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_6_FACE_pajyama"]
【真珠星】[r]「…………」
[np]
[FACEHIDE]

[r]我看见真珠星的手紧紧攥住了被褥。
[np]

[character name="ryuichi"]
【龙一】[r]「……我也很期待和真珠星一起看流星……不过你看，不一定非要去屋顶吧？」
[np]

[character name="ryuichi"]
【龙一】[r]「在这个房间里也能看到流星群……等明年再去那个地方看吧……」
[np]

[supica storage="B2_pajyama_M AB2_5_M"]
[playcv storage="supica_supica_00690_009.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_5_FACE_pajyama"]
【真珠星】[r]「……不要……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「真珠星……」
[np]

[supica storage="B2_pajyama_M AB2_7_M"]
[playcv storage="supica_supica_00690_010.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_7_FACE_pajyama"]
[char_jump name=supica]
【真珠星】[r]「不要……！！　真珠星、要和龙一一起……一起在屋顶上看……！」
[np]
[FACEHIDE]

[r]她拼命甩开我紧握的手……真珠星试图坚持自己的主张。
[np]

;[supica storage="A_pajyama_M A_1_M"]
[playcv storage="supica_supica_00690_011.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_7_FACE_pajyama"]
[char_jump name=supica]
【真珠星】[r]「要一起看……真珠星、一直很期待……！　一直、一直……！」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「可是、没办法啊……！　这种状态根本没法好好出门……！」
[np]

[r]不过、我也……胸膛里同样充斥着对真珠星的担忧。
[np]

[supica storage="B2_pajyama_M AB2_10_M"]
[playcv storage="supica_supica_00690_012.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_10_FACE_pajyama"]
【真珠星】[r]「没……没事的……真珠星、不要紧……要去、和龙一、一起……」
[np]
[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「太勉强了……理解我吧、真珠星……」
[np]

[r]所以、这种任性要求……决不能答应。绝对不能。
[np]

[supica storage="B2_pajyama_M AB2_6_M"]
[playcv storage="supica_supica_00690_013.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_6_FACE_pajyama"]
【真珠星】[r]「………………」
[np]
[FACEHIDE]

[r]最终、真珠星停止了耍性子……渐渐地、低着头一言不发了。
[np]

[r]我将这种沉默视为真珠星的妥协……轻轻握住了她因不甘而攥紧的手。
[np]

[character name="ryuichi"]
【龙一】[r]「……今天、早点睡吧。然后快点痊愈……快点、恢复精神。好吗？」
[np]

[supica storage="D_pajyama_M CD2_7_M"]
[playcv storage="supica_supica_00690_014.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_7_FACE_pajyama"]
【真珠星】[r]「……」
[np]
[FACEHIDE]

[r]她低垂的脸庞仿佛随时会哭出来……正因如此，我仍维持着笑容对她说道。
[np]

[character name="ryuichi"]
【龙一】[r]「这次虽然遗憾……不过还有双子座，然后……叫什么来着？还有一个很有名的流星群对吧？」
[np]

[character name="ryuichi"]
【龙一】[r]「那下次就一起看那个……等身体完全康复后，好好准备一番。」
[np]

[supica storage="D_pajyama_M CD2_4_M"]
[playcv storage="supica_supica_00690_015.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_4_FACE_pajyama"]
【真珠星】[r]「……嗯……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]经过片刻沉默，看到真珠星轻轻点头后……我才稍稍松了口气。
[np]

[r]虽然有些不情愿……但看来她总算接受了。
[np]

[r]虽然搞成这样真的很遗憾……但考虑到真珠星的状况，这才是最好的选择……对吧。
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

;//JUMP:supica_00700
[jump storage="scenario/supica/supica_00700.ks"]
