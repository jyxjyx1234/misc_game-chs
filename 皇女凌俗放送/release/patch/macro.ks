;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■　社内基本マクロ定義　最終更新　01/09　更新者　すずき
;■「皇女凌俗放送　－楽園のプロパガンダ－」用に調整　04/23　更新者　白土
;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■レイヤー一覧
;□前景レイヤー＿＿＿＝０～２０
;□メッセージレイヤー＝０～１５

;■シナリオ背景		base
;■イベントＣＧ		　２　（変数名sf.lay_ev0）
;■シナリオ立ち絵Ｌ	　５　（変数名sf.lay_ch0）
;■シナリオ立ち絵Ｃ	　６　（変数名sf.lay_ch1）
;■シナリオ立ち絵Ｒ	　７　（変数名sf.lay_ch2）
;■予算金額表示レイヤー	１１　ベース用
;■予算金額表示レイヤー	１２　Ｒメニュー用


;■メインテキスト	メッセージ０
;■選択肢ウインドウ	メッセージ５

;■Ｒメニュー		メッセージ１０

;■　セーブ＆ロード　背景　　　　：メッセージ１１
;　　　　　　　　　　コメント　　：メッセージ１３
;　　　　　　　　　　コメント入力：メッセージ１４
;　　　　　　　　　　サムネイル　：３

;■タイトル		メッセージ０

;■オプション		フルスクリーンに準ずる　ベース画像＝base

;■ＣＧモード		フルスクリーンに準ずる　ベース画像＝base
;■回想モード		フルスクリーンに準ずる　ベース画像＝base
;■サウンドモード	フルスクリーンに準ずる　ベース画像＝base

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■スタイル・書体のデフォルト値
;■行間　字間
;■文字サイズ　書体　文字の色
;■改ページマーク表示位置
;□メッセージレイヤー５　書体設定
[current layer=message5]
[defstyle linespacing=2 pitch=-1]
[deffont size=&sf.sysfontsize face="user" color=0xffffff shadow=true]
;[glyph fix=false]　　　　　　　改ページを固定しない
;[glyph fix=true left=0 top=0]　改ページを固定する

;□メッセージレイヤー１　書体設定
[current layer=message1]
[defstyle linespacing=2 pitch=-1]
[deffont size=&sf.sysfontsize face="user" color=0xffffff shadow=true]
;[glyph fix=false]　　　　　　　改ページを固定しない
;[glyph fix=true left=0 top=0]　改ページを固定する

;□メッセージレイヤー０　書体設定
[current layer=message0]
[defstyle linespacing=2 pitch=-1]
[deffont size=&sf.sysfontsize face="user" color=0xffffff shadow=true]
;[glyph fix=false]　　　　　　　改ページを固定しない
;[glyph fix=true left=0 top=0]　改ページを固定する


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■　社内基本マクロ
;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■メッセージレイヤーの　ロック　アンロック

;■[locklink2]　　　　　現在カレントのメッセージレイヤーのロックを、開始する
;■[locklink2 layer=0]　数値で指定するメッセージレイヤーのロックを、開始する
[macro name=locklink2]
[eval exp="kag.fore.messages[+mp.layer].setSelProcessLock(true),kag.back.messages[+mp.layer].setSelProcessLock(true)" cond="typeof(mp.layer)!='undefined'"]
[eval exp="kag.fore.messages[+kag.currentNum].setSelProcessLock(true),kag.back.messages[+kag.currentNum].setSelProcessLock(true)" cond="typeof(mp.layer)=='undefined'"]
[endmacro]
; ※KAGのunlocklinkを実行すると、不可視のリンクまで選択可能になってしまう為、こちらを使用すること（｀Д´）
; レイヤーのみ指定可（数値で指定）
; 未指定の場合はカレントレイヤのbackとforeをロックします


;■[unlocklink2]　　　　　現在カレントのメッセージレイヤーのロックを、解除する
;■[unlocklink2 layer=0]　数値で指定するメッセージレイヤーのロックを、解除する
[macro name=unlocklink2]
[eval exp="kag.fore.messages[+mp.layer].setSelProcessLock(false),kag.back.messages[+mp.layer].setSelProcessLock(false)" cond="mp.layer!='undefined'"]
[eval exp="kag.fore.messages[+kag.currentNum].setSelProcessLock(false),kag.back.messages[+kag.currentNum].setSelProcessLock(false)" cond="typeof(mp.layer)=='undefined'"]
[endmacro]
; ※KAGのunlocklinkを実行すると、不可視のリンクまで選択可能になってしまう為、こちらを使用すること（｀Д´）
; レイヤーのみ指定可（数値で指定）
; 未指定の場合はカレントレイヤのbackとforeをロックします

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■基本ウインドウ形状変更

;■基本メッセージウインドウ
;■ウインドウのデザインによって、表示位置、マージンの調整をする必要がある
;■[setwindow]
;[macro name=setwindow]
;[current  layer=message0 withback=true]
;[position layer=message0 page=back visible=true frame="mes_msgwin" opacity=128 left=0 top=350 width=640 height=480 marginl=25 margint=10 marginr=25 marginb=10]
;[position layer=message0 page=fore visible=true frame="mes_msgwin" opacity=128 left=0 top=350 width=640 height=480 marginl=25 margint=10 marginr=25 marginb=10]
;[layopt page=fore layer=message0 opacity=255]
;[layopt page=back layer=message0 opacity=255]
;[glyph fix=true left=595 top=90]
;;[glyph fix=false]　カーソル位置を固定しない　場合
;[endmacro]

;■基本ウインドウを表示
;■[mesw_on]
[macro name=mesw_on]
;□基本メッセージウインドウ
[layopt page=fore layer=message0 opacity=255]
[layopt page=back layer=message0 opacity=255]
;□名前ウインドウ
[layopt page=fore layer=message1 opacity=255]
[layopt page=back layer=message1 opacity=255]
;□選択肢ウインドウ
[layopt page=fore layer=message5 opacity=255]
[layopt page=back layer=message5 opacity=255]
[endmacro]

;■基本ウインドウを非表示
;■[mesw_off]
[macro name=mesw_off]
;□基本メッセージウインドウ
[layopt page=fore layer=message0 opacity=0]
[layopt page=back layer=message0 opacity=0]
;□名前ウインドウ
[layopt page=fore layer=message1 opacity=0]
[layopt page=back layer=message1 opacity=0]
;□選択肢ウインドウ
[layopt page=fore layer=message5 opacity=0]
[layopt page=back layer=message5 opacity=0]
[endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■選択肢
;■[selecting sel=選択肢の個数 sel1=設問１ t1=*設問１の飛び先   sel2=設問２ t2=*設問２の飛び先 ……]

[macro name=selecting]
[history output=false]
;□選択肢　２択
[if exp="mp.sel==2"]
[nowait]
[position layer=message5 visible=true opacity=128 frame="choicese2" left=0 top=162 width=625 height=68 marginr=0 marginl=0 marginb=0 margint=0]
[layopt   layer=message5 visible=true opacity=255]
[current  layer=message5]
[link color=0xffffff target=%t1 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y= 5][nowait][emb exp="mp.sel1"][endnowait][locate x=610][ch text=" "][endlink]
[link color=0xffffff target=%t2 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y=33][nowait][emb exp="mp.sel2"][endnowait][locate x=610][locate x=13 y=33][locate x=610][ch text=" "][endlink]
[endnowait]
[endif]

;□選択肢　３択
[if exp="mp.sel==3"]
[nowait]
[position layer=message5 visible=true opacity=128 frame="choicese3" left=0 top=162 width=625 height=68 marginr=0 marginl=0 marginb=0 margint=1]
[layopt   layer=message5 visible=true opacity=255]
[current  layer=message5]
[link color=0xffffff target=%t1 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y= 5][nowait][emb exp="mp.sel1"][endnowait][locate x=610][ch text=" "][endlink]
[link color=0xffffff target=%t2 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y=33][nowait][emb exp="mp.sel2"][endnowait][locate x=610][ch text=" "][endlink]
[link color=0xffffff target=%t3 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y=61][nowait][emb exp="mp.sel3"][endnowait][locate x=610][locate x=13 y=61][locate x=610][ch text=" "][endlink]
[endnowait]
[endif]

;□選択肢　４択
[if exp="mp.sel==4"]
[nowait]
[position layer=message5 visible=true opacity=128 frame="choicese4" left=0 top=162 width=625 height=68 marginr=0 marginl=0 marginb=0 margint=2]
[layopt   layer=message5 visible=true opacity=255]
[current  layer=message5]
[link color=0xffffff target=%t1 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y= 5][nowait][emb exp="mp.sel1"][endnowait][locate x=610][ch text=" "][endlink]
[link color=0xffffff target=%t2 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y=33][nowait][emb exp="mp.sel2"][endnowait][locate x=610][ch text=" "][endlink]
[link color=0xffffff target=%t3 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y=61][nowait][emb exp="mp.sel3"][endnowait][locate x=610][ch text=" "][endlink]
[link color=0xffffff target=%t4 enterse=%enterse|click entersebuf=2 clickse=%clickse|click clicksebuf=2 exp="kag.tagHandlers.layopt(%[layer : '11', visible : false]),kag.tagHandlers.layopt(%[layer : 'message5', visible : false]),kag.tagHandlers.current(%[layer : 'message0', withback : true])"][locate x=20 y=89][nowait][emb exp="mp.sel4"][endnowait][locate x=610][locate x=13 y=89][locate x=610][ch text=" "][endlink]
[endnowait]
[endif]

[history output=true]
[s]
[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ボイス再生開始処理
;■スキップモード＝再生しない
;■オート・モード＝再生する
;■再生中の時クリック＝再生中止
;■履歴の時アンダーライン出現→クリック＝再生

;□履歴用、ボイス再生ＴＪＳ
@iscript
function HisVoice( voice )
{
	return "kag.se[0].stop(), kag.se[0].play(%[ storage : '" + voice + "'])";
}
@endscript

;■[voice buf=バッファ番号 storage=音声ファイル名]
[macro name=voice]
[hact exp="&HisVoice(mp.storage)"]
[eval exp="var buf = mp.buf?mp.buf:0"]
[playse buf=%buf storage=%storage cond="kag.skipMode<=1"]
[eval exp="f.voicebuf = mp.buf"]
[endmacro]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■画像表示関係
;現在の背景画像の初期値
;作品毎に、設定しなおす事
[eval exp="f.nowbg ='bg14a'"]

;■背景画像表示
;■[loadbg storage=背景画像]
[macro name=loadbg]
[image * storage=%storage layer=%layer|base page=%page|back top=0 left=0 visible=true]
;□表示中の画像名の取得（モザイク用画像判定の為）
[eval exp="f.nowbg = mp.storage"]
[endmacro]

;■イベントＣＧ画像表示
;■[loadev storage=イベントＣＧ]
[macro name=loadev]
[loadbg * layer=%layer|&sf.lay_ev0 index=%index|"&(int)mp.layer*1000"]
;□表示中の画像名の取得（モザイク用画像判定の為）
[eval exp="f.nowbg = mp.storage"]
;□ＣＧ鑑賞モード用フラグはここで挿入される
[eval exp="sf[mp.storage] = 1"]
[endmacro]

;■立ち絵を任意の位置に表示
;■[loadch storage=立ち絵画像 layer=使用するレイヤー left=左からの位置]

;□使用例
;□※↓変数は、Define.ks　にて定義する
;□[loadch storage=立ち絵画像 layer=&sf.lay_5 left=&sf.pos_ll]
;□[loadch storage=立ち絵画像 layer=&sf.lay_3 left=&sf.pos_l]
;□[loadch storage=立ち絵画像 layer=&sf.lay_1 left=&sf.pos_lc]
;□[loadch storage=立ち絵画像 layer=&sf.lay_0 left=&sf.pos_c]
;□[loadch storage=立ち絵画像 layer=&sf.lay_2 left=&sf.pos_rc]
;□[loadch storage=立ち絵画像 layer=&sf.lay_4 left=&sf.pos_r]
;□[loadch storage=立ち絵画像 layer=&sf.lay_6 left=&sf.pos_rr]

[macro name=loadch]
[image * storage=%storage layer=%layer page=back top=0 left=%left visible=true]
[endmacro]

;■指定（レイヤー）を消去
;■[clearimage layer1=レイヤ番号 (layer2=レイヤ番号 layer3=レイヤ番号)]
[macro name=clearimage]
[layopt visible=false layer=%layer1         page=back cond="mp.layer1!='base'&&mp.layer2!='base'&&mp.layer3!='base'"]
[layopt visible=false layer=%layer2|%layer1 page=back cond="mp.layer1!='base'&&mp.layer2!='base'&&mp.layer3!='base'"]
[layopt visible=false layer=%layer3|%layer1 page=back cond="mp.layer1!='base'&&mp.layer2!='base'&&mp.layer3!='base'"]
[endmacro]


;■画像の更新
;□クロスフェードをする場合
;□[ud time=更新時間]　デフォルト値＝０

;□ルール画像を用いる場合
;□[ud method=universal time=(時間|0) vague=(あいまい値|64) rule=ルール画像名]

[macro name=ud]
[trans method=%method|crossfade time=%time|0 vague=%vague|64 children=%children|true rule=%rule|'']
[wt canskip=false cond="kag.skipMode<=1"]
[wt]
[wait time=1 canskip=false]
[endmacro]



;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ＢＧＭ専用マクロ

;■ＢＧＭの再生
;■[bgmplay storage=ＢＧＭファイル名]
[macro name=bgmplay]
[fadeinbgm time=%time|500 loop=%loop|true storage=%storage cond="f.nowbgm=='stopped'"]
[xchgbgm   time=%time|500 loop=%loop|true storage=%storage overlap=%time|500 ]
[wb canskip=true cond="kag.skipMode>=2"]
;□現在再生中のＢＧＭファイル名を取得
[eval exp="f.nowbgm = mp.storage"]
[endmacro]

;■ＢＧＭの停止
;■[bgmstop]
[macro name=bgmstop]
[fadeoutbgm time=%time|1]
;□現在再生中のＢＧＭファイル名を'stopped'とし、ＢＧＭ再生フラグ　ＯＦＦ
[eval exp="f.nowbgm = 'stopped'"]
[wb canskip=true cond="kag.skipMode>=2"]
[endmacro]

;■ＢＧＭボリューム調整
;□　gvolume.ks　のボリューム変更のみを使用し、ゲーム本編内では、ボリューム変更はしない
;□　以下のマクロ使用禁止
;bgmopt
;// [macro name=bgmopt]
;// [bgmopt volume=%volume|100]
;// [endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ＢＧＭファイル名リスト　（作品毎に、内容を更新する）
;■　＠は無限ループ
;■bgm01	＠オープニング（タイトル）
;■bgm10	　エンディング

;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■ＳＥ専用マクロ

;■ＳＥの再生
;■[seplay storage=ＳＥファイル名]
[macro name=seplay]
[playse buf=%buf|2 loop=%loop|false storage=%storage]
[wait time=%wait|0 canskip=false cond="kag.skipMode<2||mp.loop=='true'"]
[wait time=10 canskip=false]
[eval exp="f.sebuf = mp.buf"]
[endmacro]

;■ＳＥの停止
;■[sestop]
[macro name=sestop]
[fadeoutse buf=%buf|2 time=%time|1]
[endmacro]

;■ＳＥボリューム調整
;□　gvolume.ks　のボリューム変更のみを使用し、ゲーム本編内では、ボリューム変更はしない
;□　以下のマクロ使用禁止
;seopt
;// [macro name=seopt]
;// [seopt buf=%buf|1 volume=%volume|100 pan=%pan|0]
;// [endmacro]


;■■■■■□□□□□■■■■■□□□□□■■■■■□□□□□
;■本文整形用マクロ

;■本文　開始処理
;■[cm2]
[macro name=cm2]
[hr]
[hr]

;□セリフの強制終了
;□　キャラクターの音声のバッファを
;□　以下のバッファ定義にて定義した場合
;□　Ａキャラ＝５
;□　Ｂキャラ＝６
;□　Ｃキャラ＝７
;[stopse buf=5]
;[stopse buf=6]
;[stopse buf=7]

;□　キャラクターの音声のバッファを
;□　特に定義していない場合
[stopse buf=5]
[stopse buf=0]
[cm]
[endmacro]

;■本文　改ページ処理
;■[p2]
[macro name=p2]
[endhact]
[ws buf=5 canskip=true cond="kag.autoMode"]
[ws buf=0    canskip=true cond="kag.autoMode"]
[p]

[endmacro]

;■■■■■□□□□□■■■■■□□□□□■■■■■□□
;■　社内用マクロ、ここまで
;■■■■■□□□□□■■■■■□□□□□■■■■■□□

[call storage="macro_addin.ks" cond="Storages.isExistentStorage('macro_addin.ks')"]
[return]



