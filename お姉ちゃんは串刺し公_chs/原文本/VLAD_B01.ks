;VLAD_B01
*TOP
;暗転からゆっくり表示するイメージです


;ＳＥ：激しい風/ループ
;[se buf=1 storage="seE001" loop fadein time=1000]
[se buf=1 storage="seE018" loop v=80 fadein time=1000]

[wait_c time=1000]

[bgm storage="BGM01_2"]

;[se buf=0 storage="seG020a" loop v=90 fadein time=1000]
;mm 切り結びあっちゃだめなのか
[se buf=0 storage="seG020b" loop v=90 fadein time=1000]

;イベント：赤い空/串刺しなし
[bg storage="BG10b"][trans_c blood1 time=3000]
[wait_c time=500]

*498|
[fc]
私は大地に膝を突いている。[r]
右手には鮮血、左手には剣を握り締めたまま。[pcms]

*499|
[fc]
遙か彼方から聞こえてくる怒号、そして大地を揺らす轟き。[pcms]

*500|
[fc]
――此処から逃げなければ……。[pcms]

*501|
[fc]
しかし我が四肢からは力が失われている。[r]
こうして身を起こしていたのが奇跡とも思えるほどだ。[pcms]

*502|
[fc]
――逃げる？　何処に逃げるというのだ。[pcms]

*503|
[fc]
そうだ。私には逃げる場所など存在しない。[r]
そしてもう二度とこの地を離れたくはない。[pcms]

*504|
[fc]
あの屈辱に満ちた幼き日々が脳裏に蘇り、[r]
私は左手に携えていた剣を大地に突き立てる。[pcms]

*505|
[fc]
――戦うのだ。この剣が砕け、この身が大地に還るまで。[pcms]

*506|
[fc]
だが、今の私には[ruby text="くつわ"][ch text="轡"]を並べる者すらいない。[r]
全ての者たちがこの地を守るために戦い、そして力尽きた。[pcms]

*507|
[fc]
今、この地の残っているのは私だけだ。[pcms]

*508|
[fc]
――待っていろ。私もいずれおまえたちの元に逝く。[pcms]

*509|
[fc]
私は萎えていた両足に力を込めると、大地に屹立する。[r]
そして覆い被さるような陰鬱な大空を見上げた。[pcms]

*510|
[fc]
――ああ、空が赤い。これが地獄か、[ruby text="いくさば"][ch text="戦場"]の最果てか。[pcms]

*511|
[fc]
大地がうねりを上げ、轟音が土煙と共に姿を現す。[r]
それは無数の兵士と巨獣どもが巻き上げているのだ。[pcms]

*512|
[fc]
――さあ、来い。この首が欲しいのだろう。[pcms]

*513|
[fc]
私は血に塗れた兜の中で口元を歪める。[pcms]

*514|
[fc]
――見せてやろう、竜公の子の刃を……悪鬼の穂先を。[pcms]

*515|
[fc]
大地に転がっていた槍を右手に、[ruby text="はこぼ"][ch text="刃毀"]れした剣を左手に。[pcms]

*516|
[fc]
――そして、この地を再び串刺しで埋め尽くしてやろう。[pcms]

*517|
[fc]
馬のいななきと巨獣の咆哮、軋み擦れ合う金属の呻き。[r]
全てが雲霞の如き勢いでこの私に殺到する。[pcms]

*518|
[fc]
ならば相手をしてくれよう。[r]
おまえたちが奪った我が同胞に成り代わって。[pcms]

*519|
[fc]
脳裏に蘇る、赤き空と大地と乱立する死者たちの柱。[pcms]

*520|
[fc]
私は鮮血の空の下で戦い、そして鮮血の大地に還るのだ。[pcms]

*521|
[fc]
――これは神の意思ではない。この私の意思なのだ。[pcms]

*522|
[fc]
間近に迫る兵士どもの息づかいを肌に感じながら、[r]
私は歓喜の叫びと共に駆け出していた……。[pcms]

;ゆっくり暗転
;[ANTEN bl bltime=1500]
;mm 細かく調整しにくいから個別に
[black_toplayer][trans_c cross time=1500][hide_chara_int]
[stopse_fadeout buf=0 time=2000]
[stopse_fadeout buf=1 time=2000]
[fadeoutbgm time=1000][wb canskip=true]
[wait_c time=1000]
[stopse_all]


;赤フラ、数回
[赤フラ time=300][wait_c time=500]
[赤フラ time=500][wait_c time=500]
[赤フラ time=1000][wait_c time=500]

*523|
[fc]
…………………………………………。[pcms]

*524|
[fc]
……………………。[pcms]

*525|
[fc]
………。[pcms]

;→VLAD_B02
[jump storage="VLAD_B02.ks" target=*TOP]

