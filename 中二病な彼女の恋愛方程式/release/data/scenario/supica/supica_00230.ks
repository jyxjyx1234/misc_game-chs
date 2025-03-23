[SCENESTART file=supica_00230.ks]
;//supica_00230
;//BG:bg04_03(消灯)

[backlay]
[freeimage layer=1 page=back]
[image storage="bg04_08.png" left=0 top=0 layer=0 page=back visible=true]
[trans method=crossfade time=1000]
[wt]

[SYSTEMMENU]
[fadeinbgm storage="bgm/BGM12.ogg" time="500"]

;//TIME:夜
;//日付:7/10(金)
;//CH:ryuichi,pajyama
;//CH:すぴか,pajyama

[playcv storage="supica_supica_00230_001.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……嗯……」
[np]
[FACEHIDE]

[r]给真珠星的身体洗完澡，两人回到房间时，日期已经更替了。
[np]

[playcv storage="supica_supica_00230_002.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……嗯……呼……」
[np]
[FACEHIDE]

[r]真珠星这次真的安稳地发出寝息，沉沉地睡着了。
[np]

[r]然后我躺在自己的被褥里……
[np]

[character name="ryuichi"]
【龙一】[r]「……」
[np]

[supica storage="C1_pajyama_L CD2_5_L"]
[r]我就那样呆呆地望着真珠星的睡脸，却并没有真的在看。
[np]

[r]现在我们的关系……在旁人看来，不管谁怎么看都是恋人。至少我们做的全是些让人误会也不奇怪的事。
[np]

[r]帮忙换衣服、同住一屋、牵着手回家、一起泡澡……
[np]

[r]虽说并非所有事情都被知晓，但……照这情形，尤其是桃酱，周围人会误会也是理所当然的了。
[np]

[char_erase name="supica"]

[character name="ryuichi"]
【龙一】[r]「不过话说回来……」
[np]

[r]真珠星到底是抱着怎样的打算和我在一起的呢？
[np]

[r]抛开地球观测者这类设定不谈……单纯作为被仰慕的对象看待……这样真的可以吗？
[np]

[r]这种情况下……最需要确认的事应该是……
[np]

[playcv storage="supica_supica_00230_003.ogg" name="supica"]
[character name="supica"]
【真珠星】[r]「……呼……」
[np]
[FACEHIDE]

[r]……我是否对真珠星抱有……那种感情。
[np]

[r]我对真珠星是否怀有超越友情的……异性之间的好感。
[np]

[r]如果不存在这种感情，继续维持现在的关系对彼此都没有好处。
[np]

[r]但是，如果我心中确实存在着……对真珠星的思念……
[np]

[character name="ryuichi"]
【龙一】[r]「……还是睡吧」
[np]

[r]我故意说出这句话，是为了切断自己的思绪。
[np]

[r]闭上眼睛后……我很快就被袭来的睡意所俘虏。
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

;//JUMP:supica_00240
[jump storage="scenario/supica/supica_00240.ks"]