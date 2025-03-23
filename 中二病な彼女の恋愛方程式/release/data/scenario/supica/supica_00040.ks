[SCENESTART file=supica_00040.ks]
;//supica_00040
;//BG:bg02_03
[HIDESYSTEMMENU]

[backlay]
[freeimage layer=1 page=back]
[image storage="bg02_07.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

[SYSTEMMENU]

;//TIME:夜
;//日付:7/7(火)
;//CH:竜一,sifuku
;//CH:すぴか,sifuku
;//CH:聖水,sifuku


[satomi storage="A_sifuku_L AB_2_L"]
[playcv storage="satomi_supica_00040_001.ogg" name="satomi"]
[character name="satomi"]
[FACEVIEW storage="satomi_AB_2_FACE_sifuku"]
【圣水】[r]「啊～这种情形常有呢！我懂！我懂的～！」
[np]
[FACEHIDE]

[char_erase name="satomi"]

[r]众人共进晚餐后，各自回到房间的此刻……
[np]

[r]留在客厅的是负责洗碗的我，以及手握啤酒对综艺节目频频点头的圣水。
[np]

[r]然后……
[np]

[supica storage="D_sifuku_M CD_1_M"]
[playcv storage="supica_supica_00040_001.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]
【真珠星】[r]「……嗯……啊呜……」
[np]
[FACEHIDE]

[char_erase name="supica"]
[r]三人各自就座享用饭后布丁，其中一位是真珠星。
[np]

[r]虽然表情不动声色，但目不转睛盯着布丁的模样……充分传达出她有多喜欢这个甜点。
[np]

[r]之前一起去超市时，她就抢着往购物篮里塞了好多布丁来着……
[np]

[supica storage="A_sifuku_M AB_1_M"]

[r]边这么回忆边冲洗碗碟时，吃完布丁的真珠星突然起身。
[np]

[char_erase name="supica"]

[r]接着她悄无声息地朝我靠近……
[np]

[supica storage="A_sifuku_L AB_1_L"]
[playcv storage="supica_supica_00040_002.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_AB_1_FACE_sifuku"]
【真珠星】[r]「……瑠一，这个」
[np]
[FACEHIDE]

[r]将盛过布丁的勺子略显拘谨地递到我面前。
[np]

[character name="ryuichi"]
【龙一】[r]「啊，我来洗吧」
[np]

[r]我接过勺子，将洗洁精挤在海绵上…
[np]

[supica storage="D_sifuku_L CD_1_L"]
[playcv storage="supica_supica_00040_003.ogg" name="supica"]
[character name="supica"]
[FACEVIEW storage="supica_CD_1_FACE_sifuku"]

[char_jump name=supica]

【真珠星】[r]「…谢谢」
[np]

[FACEHIDE]

[character name="ryuichi"]
【龙一】[r]「哦」
[np]

[char_erase name="supica"]

[r]关掉水龙头后，将那个勺子——
[np]

[r]…嗯？
[np]

[r]总觉得刚才的对话有股莫名的违和感，停下手里的动作抬起头
[np]

[r]真珠星已经离开我身边，正缓缓走上楼梯…就这样回到了自己房间…
[np]

[character name="ryuichi"]
【龙一】[r]（…应该不是错觉吧…？）
[np]

[r]因为整个流程太过自然，就下意识回应了…如果我的记忆没错的话…
[np]

[r]真珠星向我道谢这件事…应该还是第一次…？
[np]

[r]倒不是说平时就期待着她要感恩戴德，说不定可能不是第一次…
[np]

[r]说实话……正因为一直认为在伏木庄的成员中，她是最难敞开心扉的那个……
[np]

[character name="ryuichi"]
【龙一】[r]「……！」
[np]

[r]某种难以言喻的喜悦……从胸腔深处翻涌而上……！
[np]

[character name="ryuichi"]
【龙一】[r]「哼哼哼～嗯……♪」
[np]

[r]因为太过欣喜，自然而然地哼起了鼻歌。
[np]

[r]虽然只是替她洗了一个勺子这种小事，收获的也是句理所当然的「谢谢」……
[np]

[r]但能从真珠星口中听到这句话……对我来说，已是巨大的进步。
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

;//JUMP:supica_00050
[jump storage="scenario/supica/supica_00050.ks"]
