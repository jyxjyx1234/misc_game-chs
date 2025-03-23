; レイヤー設計
;
; base		: 未使用
; layer0	: 背景
; layer1～3	: キャラクタ用
; layer4	: イベント画
;
; テキスト例や設計はMacro_Text.ksにも書いてある
; message0	: メッセージウィンドウ
; message1	: キャラ名称


;▼キャラクタを登録する。
; [char_register name= fullname= color= coordinates= eternal=]
[macro name=char_register]
[char_reg * eternal=true]
[text_reg_char *]
[call storage=Macro_SensoToHeiwa.ks target=*reg_charname_macro]
; voice登録は Krclick中でやる
;[se_reg group="voice" name=%name]
[endmacro]


;▼画面をトランジションする前処理。テキストとキャラクタも一緒に。
; sttext: fullscreen|window|off
;	トランジション開始前にテキスト画面を表示するかどうか(def=off)
; stchar: del(def)|off|on  トランジション開始前に設定するキャラクタの状態
;	del:キャラ削除、off:visible=false
;	off:edcharでonにした時にキャラ状態を復帰できる
;	on:表示したままにする
; trans: トランジションするかどうか。(def=true)
; simul:トランジションを全部一気(キャラ・テキスト同時)にやるかどうか(def=false)
[macro name="translation_before"]
[eval exp="mp.sttext = 'off'"      cond="mp.sttext===void || mp.sttext!='on'"]
[eval exp="mp.stchar = 'del'"      cond="mp.stchar===void"]
[eval exp="mp.simul  = false"      cond="mp.simul ===void"]
[eval exp="mp.trans  = !mp.simul"]
; テキスト画面変更(消去とか)
[text_mode mode=%sttext trans=%trans]
; キャラクタ変更(消去とか)
[char_erase trans=%trans              cond="mp.stchar == 'del'"]
[char_visible visible=false page=back cond="mp.stchar == 'off'"]
[char_visible visible=true  page=back cond="mp.stchar == 'on'"]
[char_trans *                         cond="mp.stchar != 'del' && mp.trans"]
[endmacro]


;▼画面をトランジションする後処理。テキストとキャラクタも一緒に。
; edtext: トランジション開始後にテキスト画面を表示するかどうか(def=window)
;       edtextは、ほかにfullscreen|windowを選択可。
; edchar: on トランジション終了後に設定するキャラクタの状態
;	none(def):何もしない
;	on:visible=true
;	on:visible=false
; trans: トランジションするかどうか。(def=true)
; simul:トランジションを全部一気(キャラ・テキスト同時)にやるかどうか(def=false)
[macro name="translation_after"]
[eval exp="mp.edtext = window"     cond="mp.edtext===void"]
[eval exp="mp.edchar = 'none'"     cond="mp.edchar===void"]
[eval exp="mp.simul  = false"      cond="mp.simul === void"]
[eval exp="mp.trans  = !mp.simul"]
; キャラクタ表示
[char_visible visible=false page=back cond="mp.edchar == 'off'"]
[char_visible visible=true  page=back cond="mp.edchar == 'on'"]
[char_trans *                         cond="mp.edchar != 'none' && mp.trans"]
; テキスト表示
[text_mode mode=%edtext trans=%trans chapter=%chapter desc=%desc]
[endmacro]


;▼画面をトランジションする。テキストとかも一緒に。
; けど[trans]は使われてるので[translation]で。
; 引数は[image_trans]と全く同じ。追加でテキスト画面制御用のものがある。
; 開始時・終了時に・textを消す・textを表示する
; sttext: fullscreen|window|off
;	トランジション開始前にテキスト画面を表示するかどうか(def=off)
; edtext: off	トランジション開始後にテキスト画面を表示するかどうか(def=戻す)
;          edtextは、ほかにfullscreen|windowを選択可。
;     sttextとedtextはon|offを選択可能
; stchar: del(def)|off|on  トランジション開始前に設定するキャラクタの状態
;	del:キャラ削除、off:visible=false
;	off:edcharでonにした時にキャラ状態を復帰できる
;	on:表示したままにする
; edchar: on  トランジション終了後に設定するキャラクタの状態
;	none(def):何もしない
;	on:visible=true
;	on:visible=false
; simul:トランジションを全部一気(キャラ・テキスト同時)にやるかどうか(def=false)
; curtime
; saveanywhere
[macro name="translation"]
;ここ、セーブするとおかしくなっちゃうかもしれないから、セーブできないように
;修正するのを忘れずに。後でやろう。
; まず、キャラボイスを停止する。transition中はvoice流せないが、困らんだろう
[se_stop group=voice]
; この後[text_mode]でbacklayされちゃうかもしれんが、一回くらい重複してもいいや
[backlay cond="mp.simul"]
; 環境色変化
[setCurrentTime time=%curtime cond="mp.curtime !== void"]
[eval exp="mp.edtext = f.textmode" cond="mp.edtext === void"]
[translation_before *]
[if exp="mp.method === void"]
	; デフォルトを blur にしてみる
	[eval exp="mp.method='blur'"]
;	[eval exp="mp.method='crossfade'"]
[endif]
; イベントモードの時は layer=4 に画像を読み込む
[if exp="mp.edtext != 'event'"]
	; ゲームモードの時は layer=4 の back をクリアして、layer=0 を使う
	[image_load layer=4 page=back storage=clear]
	[image_trans * layer=0 trans=&!mp.simul backlay=false]
[else]
	; イベントモードの時は layer=0 の back をクリアして、layer=4 を使う
	[image_load layer=0 page=back storage=clear]
	[image_trans * layer=4 trans=&!mp.simul backlay=false]
[endif]
[translation_after *]
; 最後にsimul=true(trans=false)だった時に[trans_only]でtransする
[trans_only * trans=true cond="mp.simul"]
;ここでセーブ可能に。画面切り替え後の状態を保存するため。
[label cond="mp.saveanywhere === void || mp.saveanywhere"]
;これないとチャプターが表示されない
[chapterwin_strdraw]
[endmacro]


;●キャラクタを表示する。テキストのモードも上手に考えてくれるので、
;  キャラクタ表示はこれ一つでO.K.。
; 引数: name="名前" voice= storage="衣装 表情" color= trans= motion= motionwait=false withtext=true(def)|false
; storage = ""または非指定で、キャラクタを表示(更新)しない。
; voice=    再生する音声
; motion=   モーション名。動きを指定する場合。motionwait=false。
; withtext= テキスト台詞ありなし。
; prestopvoice=前のキャラのボイスを停止するかどうか
; voicename = ボイスの名前。mp.nameと違う場合に指定
; faceonly =  顔だけ表示
[macro name="disp"]
[eval exp="mp.storage      = ''"    cond="mp.storage   === void"]
[eval exp="mp.withtext     = true"  cond="mp.withtext  === void"]
[eval exp="mp.trans        = true"  cond="mp.trans     === void"]
[eval exp="mp.prestopvoice = false" cond="mp.prestopvoice === void"]
;[eval exp="mp.faceonly     = false" cond="mp.faceonly  === void"]
[eval exp="mp.voiceonly    = false" cond="mp.voiceonly === void"]

; キャラボイスを停止する。ボイスの重複再生はstopvoice=falseにて。
[if exp="mp.prestopvoice"]
	[se_stop group=voice cond="mp.prestopvoice"]
	; "喋ってる人"をクリア
	[eval exp="delete f.voicespeaker"]
[endif]

; 最初にchar_dispの必要あり。addChar()で新規登録するのもdisp_charの中だから。
[if exp="!mp.faceonly && !mp.voiceonly"]
	[char_disp *]
;[elsif exp="mp.faceonly"]
;	[backlay cond="mp.trans"]
;	; faceonly が指定されていたら、裏画面にキャラ作成
;	; 実際には表示しない
;	[char_disp * alignchars="" trans=false]
[endif]
[if exp="mp.fullname !== void"]
	[eval exp="chardatas_obj.setData(mp.name, 'fullname', mp.fullname)"]
[endif]

; ウィンドウ上にキャラクタ名称を表示
[if exp="mp.withtext"]
	[hlocate pos=0]
	[if exp="mp.color === void"]
		[if exp="chardatas_obj.isExist(mp.name)"]
			[eval exp="mp.color = chardatas_obj.getData(mp.name, 'color')" cond="mp.color === void"]
		[else]
			[eval exp="mp.color = 0xffffff"]
		[endif]
	[endif]
	[eval exp="mp.dispname = (mp.textname!==void) ? mp.textname : mp.name"]
;	[eval exp="mp.dispname = mp.dispname.substr(0,6)" cond="mp.dispname.length > 6"]
	[namewin_disp name=%dispname color=%color]
;	[messagestore_r]
[endif]

; 顔画像を表示
[if exp="mp.storage != '' && !mp.voiceonly"]
	; coordinate の四番目(idx=3)は顔画像の切り出し座標とする
	[eval exp="mp.srclayer = chardatas_obj.getLayer(mp.name)"]
	[eval exp="mp.srcleft  = chardatas_obj.getPartProperty(mp.name,3,'x')"]
	[eval exp="mp.srctop   = chardatas_obj.getPartProperty(mp.name,3,'y')"]
;	[if exp="!mp.faceonly"]
;		[face_on * time=100]
;	[else]
;		; 裏画面の顔画像をコピーして、
;		[face_on * srcpage=back trans=false]
;		; faceonly の場合、表示されたキャラクタを削除
;		[char_erase * trans=false]
;		; ここで初めて顔画像表示。time=100がちょっと汚い
;		[text_trans * time=100]
;	[endif]
[endif]

; 該当キャラクタのvoiceを流す。今のMacro_Soundなら、再生中の再再生は、前回のを
; 自動的に停止するので、ここで停止してから流す必要はない。
[if exp="mp.voice !== void"]
	[eval exp="f.voicespeaker = mp.name"]
	[eval exp="f.voicespeaker = mp.voicename" cond="mp.voicename !==void"]
	[eval exp="f.voicestorage = mp.voice"]
	; systembuttonで再度再生の時のために、ここでは音声optを設定しておく
	[se_opt * name=&f.voicespeaker group=voice]
	[if exp="kag.skipMode <= 2 && (sf.rcMenu.voice[f.voicespeaker] || sf.rcMenu.voice[mp.name] === void)"]
		; ↑最後の === void は本番時には削除すること。この条件ないはず
		[se_play * name=&f.voicespeaker group=voice storage=%voice]
	[endif]
	; 履歴に音声ボタン表示
	[hlocate pos=780]
	[hbutton graphic="history_voice" exp="&'SysBtn_onVoiceButtonClick(\''+f.voicespeaker+'\',\''+f.voicestorage+'\')'"]
[else]
	[eval exp="f.voicespeaker = f.voicestorage = void"]
[endif]
[current layer=&sf.メッセージウィンドウ page=fore]
[if exp="mp.withtext"]
	[resetfont]
	[font color=%color]
	[hr]
[endif]
; ちょっと不本意だが、これないと nowait になっちゃう
[delay speed=user]
[endmacro]


;●キャラクタを削除する。
[macro name="erase"]
[char_erase *]
[se_unreg *]
[endmacro]


;●画面をクリアする
; clear( image=true(def)|false, char=true(def)|false text=true(def)|false )
[macro name="clear"]
[image_clear clear=%image]
[char_clear_all clear=%char]
[text_clear clear=%text]
[endmacro]


;●画面の表示状態を変更する。
; 背景・テキスト画面の表示・消去を設定する
; visible( image=leave|true(def)|false, char=leave|true(def)|false text=leave|true(def)|false )
[macro name="visible"]
; image = イメージ表示用
[image_visible layer=0 visible=%image]
[image_visible layer=4 visible=%image]
; char = 人物表示用
[char_visible visible=%char]
; message = 文字表示用
[text_visible visible=%text]
[endmacro]


;●台詞などの開始終了マクロ
[macro name="「"]
「[indent]
[endmacro]
[macro name="」"]
」[endindent]
[endmacro]
[macro name="（"]
（[indent]
[endmacro]
[macro name="）"]
）[endindent]
[endmacro]
[macro name="『"]
『[indent]
[endmacro]
[macro name="』"]
』[endindent]
[endmacro]

; 横棒をつなげるためのマクロ(ないと影で文字間が広がってしまう)
[macro name="――"]
[ch text="――"]
[endmacro]
[macro name="―――"]
[ch text="―――"]
[endmacro]


[macro name="無"]
[eval exp="f.voicespeaker = f.voicestorage = void"]
[current layer=&sf.名前ウィンドウ page=fore]
[er]
[current layer=&sf.メッセージウィンドウ page=fore]
[er]
[resetfont]
[hlocate pos=160]
[indent]
;[messagestore_r]
; ちょっと不本意だが、これないと地の文だけ nowait になっちゃう
[delay speed=user]
[endmacro]


; 各日の先頭の、日付トランジション
[macro name=date_trans]
[translation storage=%storage time=1000 edtext=off simul saveanywhere=false]
[wait time=1000]
[translation storage=white time=2000 edtext=off simul saveanywhere=false]
[endmacro]


; ジャンプ
; [char_jump name= height=-30 time=200 movex=0 accelx=0 wait=true]
[macro name="char_jump"]
[eval exp="mp.height  = -30"   cond="mp.height === void"]
[eval exp="mp.time    = 200"  cond="mp.time   === void"]
[eval exp="mp.movex   = 0"    cond="mp.movex  === void"]
[eval exp="mp.accelx  = 0"    cond="mp.accelx === void"]
[eval exp="mp.wait    = true" cond="mp.wait   === void"]
[eval exp="mp.locatex = '('+mp.movex+','+mp.time+','+mp.accelx+')'"]
[eval exp="mp.locatey = '('+mp.height+','+mp.time/2+',-2),(0,'+mp.time/2+',2)'"]
[eval exp="mp.motionname = 'char_jump_' + mp.name"]
[motion_define name=%motionname locatex=%locatex locatey=%locatey]
[char_motion_start name=%name motion=%motionname wait=%wait loop=%loop]
[endmacro]

[macro name="char_jump_wait"]
[eval exp="mp.motionname = 'char_jump_' + mp.name"]
[char_motion_wait  name=%name motion=%motionname]
[endmacro]

[macro name="char_jump_stop"]
[eval exp="mp.motionname = 'char_jump_' + mp.name"]
[char_motion_stop  name=%name motion=%motionname]
[endmacro]


; 頷き
; [char_nod name= height=20 time=400 wait=true]
[macro name="char_nod"]
[eval exp="mp.height  = 20"   cond="mp.heigth === void"]
[eval exp="mp.time    = 400"  cond="mp.time   === void"]
[eval exp="mp.wait    = true" cond="mp.wait   === void"]
[eval exp="mp.locatey = '('+mp.height+','+mp.time/2+',-2),(0,'+mp.time/2+',2)'"]
[eval exp="mp.motionname = 'char_nod_' + mp.name"]
[motion_define name=%motionname locatey=%locatey]
[char_motion_start name=%name motion=%motionname wait=%wait]
[endmacro]


[motion_define name="ふらふら立ち上がる" locatex="(-30,200,-2),(0,200,2),(30,200,-2),(0,200,2)" loopx=4 locatey="(-600,3200,0)"]
[motion_define name="探し回る" locatey="(-20,300,-2),(0,300,2),(-20,300,-2),(0,300,2),(0,800,0),(-20,300,-2),(0,300,2),(-20,300,-2),(0,300,2)" locatex="(200,1200,-2),(200,800,0),(0,1200,2),(-200,1200,-2),(-200,800,0),(0,1200,2)" loop=0]
[motion_define name="スキップ" locatey="(-30,300,-2),(0,300,2),(0,1000,0)" loop=0]

[motion_define name="戦闘ステップ" locatex="(+20,600,0),(0,600,0)" locatey="(-15,300,-2),(0,300,2)" loop=0]
[motion_define name="合気ロール" locatex="(-15,400,-2),(0,400,2),(15,400,-2),(0,400,2)" locatey="(15,200,-2),(0,200,2),(-15,200,-2),(0,200,2)" loop=0]

[motion_define name="コツコツ" locatey="(-10,250,-2),(0,250,2)" loop=0]

[return]

; キャラクタ名でマクロを登録
*reg_charname_macro
[macro name=%name]
[disp * name=%tagname]
[endmacro]
[return]

