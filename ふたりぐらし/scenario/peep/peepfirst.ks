[tb_start_text mode=3 ]
#
居間にみおの姿が無くて[r]
つい探してしまったが……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
外出や入浴でないのは確認したし、[r]
であれば必然的にここ――お手洗い、との結論に至る。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
我ながら名探偵ぶって[r]
あんまりな推理をしているな……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
そっとしておくべきなのだが、[r]
好奇心というか悪戯心も首をもたげてくる。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
つまり、ちょっかいをかけたら[r]
良い反応がもらえそうだぞ、と。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
困らせたり怒らせたりしない程度に[r]
留めなくてはいけないが……[p]
[_tb_end_text]

[showTips subject="トイレにて" text="みおがトイレに入っている間、<br>ちょっかいをかけることができます。<br><br>好感度を下げるようないたずらは<br>慎重に……。　"]
[return]


[tb_start_text mode=3 ]
#
居間にみおの姿が無くて[r]
つい探してしまったが……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
外出や入浴でないのは確認したし、[r]
であれば必然的にここ――お手洗い、との結論に至る。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
我ながら名探偵ぶって[r]
あんまりな推理をしているな……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]


;-----------------------------------------
;FreeEv043.ks既読状態のとき、この範囲の処理を追加

;みおトイレ遭遇スチル（グレー化）を一時表示
;スチル未提出の間はbk100.jpgで代用
[if exp="f.eventList[43] == true"]
    [image storage="../bgimage/bk100.jpg" layer="3" name="kaisou" ]
    [tb_start_text mode=3 ]
    #
    いつだか、不可抗力で[r]
    最中に出くわしたこともあったが――[p]
    [_tb_end_text]
    [free layer="3" name="kaisou"  ]
    ;上記で表示したスチルを消去
[endif]
;-----------------------------------------
;共通部

[tb_start_text mode=3 ]
#
実は、この家のトイレのドアは[r]
カギと立て付けがゆるい。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
カギをかけていても、閉まりきらず[r]
ドアが薄く開くこともしばしばだ。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
……[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
トイレ中、それはひとがもっとも無防備になる瞬間だ。[r]
ましてみおは年頃の女の子。[p]
[_tb_end_text]

[tb_start_text mode=3 ]
#
素知らぬふりをしてそっとしておくべきだ、と[r]
自分の理性は告げているが……[p]
[_tb_end_text]

[showTips subject="トイレのぞき" text="みおがトイレに入っている際には<br>ドア前でさまざまなアクションが可能です。<br>おどろかせたり、いたずらに気付かれると<br><br>好感度の低下や、警戒度の上昇を招くため、<br>慎重に行動しましょう。"]
[return]