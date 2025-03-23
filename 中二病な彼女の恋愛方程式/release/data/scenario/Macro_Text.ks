; テキスト画面設定 (この構成はゲームごとに変わるのでカスタマイズ必要)
; テキスト画面は、以下の三つから構成されるものとする。
; 1. メッセージウィンドウ
; 2. 名前ウィンドウ
; 3. 顔画像ウィンドウ ... ただし実際は前景レイヤ

; message0: メッセージウィンドウ
[eval exp="sf.メッセージウィンドウ = 'message0'"]
; 名前ウィンドウ(=NameWindowPluginで使用する)
; message1: 名前ウィンドウ
[eval exp="sf.名前ウィンドウ       = 'message1'"]
; 顔画像ウィンドウ(=FaceWindowPluginで使用する)
[eval exp="sf.顔画像ウィンドウ     = 5"]
; layer:4 = メッセージウィンドウの背景レイヤ
[eval exp="sf.メッセージウィンドウ背景 = 4"]



; ▼テキスト画面を初期化する。といっても、やってることはfore/back両面クリア
; ※同時にキャラクタデータも初期化
; [text_init]
[macro name="text_init"]
; 最初は全部非表示に
[namewin_init layer=&sf.名前ウィンドウ visible=false]
[facewin_init layer=&sf.顔画像ウィンドウ visible=false]
[facewin_setopt left=16 top=427 width=160 height=160]
[eval exp="sf.graphicframe_opacity=255" cond="sf.graphicframe_opacity===void"]
[graphicframe_add layer=&sf.メッセージウィンドウ page=fore graphiclayer=&sf.メッセージウィンドウ背景]
;一応backも設定しておく…
[graphicframe_add layer=&sf.メッセージウィンドウ page=back graphiclayer=&sf.メッセージウィンドウ背景]
[text_mode mode=%mode|off]
[endmacro]


; ▼改行する(New Line) [l][r]でウザかったら[r]のみに変更してね
[macro name="nl"]
[l]
[r]
[endmacro]


; ▼改ページする(New Page)。SaveAnyWhere.ksで、同時にセーブもする
;[macro name="np"]
; 発音中のボイスを待つ
;[eval exp="mp.clickcountsave = kag.clickCount"]
;[se_wait name=&f.voicespeaker cond="f.voicespeaker !== void"]
; ボイスがスキップされた場合は [p] しない
;[p cond="mp.clickcountsave == kag.clickCount"]
;[label]
;[cm]
; 改ページ時、音声は停止(効果音は明示的に止めない限り流し続ける)
;[se_stop group=voice]
; ヒストリを改行
;[hr]
; 最後に current をメッセージウィンドウに戻す
;[current layer=&sf.メッセージウィンドウ page=fore]
;[endmacro]


;▼テキストをtransする小マクロ
;[text_trans time=300 trans=true canskip=true]
[macro name="text_trans"]
[if exp="mp.trans === void || mp.trans"]
	[stoptrans]
	[trans time=%time|300 method=crossfade]
	[wt canskip=%canskip|true]
[endif]
[endmacro]


;----------------------------------------------------------------------------
;メッセージウィンドウ関係

;▼メッセージウィンドウを表示する
;[msg_on time=100 trans=true]
[macro name="msg_on"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[current  layer=&sf.メッセージウィンドウ page=back][er]
[position layer=&sf.メッセージウィンドウ page=back visible=true left=&24+160 top=427 width=&752-160 height=160 marginl=16 margint=16 marginr=16 marginb=16 frame=メッセージ枠 opacity=128 graphicframe=gframe graphicopacity=80]
[text_trans time=%time|100 trans=%trans]
[current  layer=&sf.メッセージウィンドウ page=fore]
[endmacro]


;▼メッセージウィンドウを消去する
;[msg_off time=100 trans=true]
[macro name="msg_off"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[current  layer=&sf.メッセージウィンドウ page=back][er]
[position layer=&sf.メッセージウィンドウ page=back visible=false]
[text_trans time=%time|100 trans=%trans]
[current  layer=&sf.メッセージウィンドウ page=fore]
[endmacro]


;▼メッセージウィンドウを全画面透過にする
;[msg_transparent time=100 trans=true]
[macro name="msg_transparent"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[current  layer=&sf.メッセージウィンドウ page=back][er]
[position layer=&sf.メッセージウィンドウ page=back visible=true left=0 top=0 width=&800-32 height=&600-32 marginl=0 margint=0 marginr=0 marginb=0 opacity=0]
[text_trans time=%time|100 trans=%trans]
[current  layer=&sf.メッセージウィンドウ page=fore]
[endmacro]


;▼メッセージウィンドウを全画面にする
;[msg_fullscreen time=100 trans=true]
[macro name=msg_fullscreen]
; 今は [msg_transparent]と同じにしとく
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[current  layer=&sf.メッセージウィンドウ page=back][er]
[position layer=&sf.メッセージウィンドウ page=back visible=true left=16 top=16 width=&800-32 height=&600-32 marginl=16 margint=16 marginr=16 marginb=16 frame=メッセージ枠full opacity=128 graphicframe=gframe_full graphicopacity=50]
[text_trans time=%time|100 trans=%trans]
[current  layer=&sf.メッセージウィンドウ page=fore]
[endmacro]


;--------------------------------------------------------------------------
; 名前ウィンドウ関係

;▼名前ウィンドウを表示する
[macro name="namewin_on"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[namewin_setopt page=back visible left=184 top=377 width=160 height=50 color=0 opacity=128 align=center frame=名前枠]
[namewin_text * backlay=false text='']
[endmacro]


;▼名前ウィンドウを非表示にする
[macro name="namewin_off"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[namewin_setopt page=back visible=false]
[namewin_text * backlay=false text='']
[endmacro]


;▼名前ウィンドウに名前を表示する
;[namewin_disp name= color=]
[macro name="namewin_disp"]
;[namewin_text]をそのまま使用する
[namewin_text *]
[endmacro]


;----------------------------------------------------------------------------
;顔画像表示ウィンドウ関係

;▼顔ウィンドウを表示する
[macro name="facewin_on"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[facewin_setopt page=back visible=true]
[facewin_clear * backlay=false]
[endmacro]


;▼顔ウィンドウを非表示にする
[macro name="facewin_off"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[facewin_setopt page=back visible=false]
[facewin_clear * backlay=false]
[endmacro]


;▼顔ウィンドウに顔画像を表示する
;[facewin_disp]を使用すること


;--------------------------------------------------------------------------
; システムボタン関係

;▼システムボタンを表示する
; [sysbtn_on trans=true time=300]
[macro name="sysbtn_on"]
[eval exp="mp.trans = true"  cond="mp.trans === void"]
[eval exp="mp.mode = 'game'" cond="mp.mode  === void"]
[backlay cond="mp.trans"]
[eval exp="mp.top = 580"]
[eval exp="mp.x = 400"]

; [Load]ボタン
[sysbutton graphic=Sysbtn_load left=&mp.x top=%top page=back exp="kag.callExtraConductor('Krclick.ks','*krclick_load')"]
; exp="SysBtn_onLoadButtonClick_local()"] 今は何もしない。適当なexp=を設定

; [Save]ボタン
[sysbutton graphic=Sysbtn_Save left=&mp.x+60 top=%top page=back exp="kag.callExtraConductor('Krclick.ks','*krclick_save')"]

; [Config]ボタン
[sysbutton graphic=Sysbtn_Config left=&mp.x+116 top=%top page=back exp="kag.callExtraConductor('Krclick.ks','*krclick_config')"]

; [Skip]ボタン
[sysbutton graphic=Sysbtn_Skip left=&mp.x+190 top=%top page=back exp="SysBtn_onSkipButtonClick()"]

; [Auto]ボタン
[sysbutton graphic=Sysbtn_Auto left=&mp.x+246 top=%top page=back exp="SysBtn_onAutoReadButtonClick()"]

; [Exit(ゲーム終了)]ボタン
[sysbutton graphic=Sysbtn_Exit left=&mp.x+320 top=%top page=back exp="kag.close()"]

; [Close(テキスト画面非表示)]ボタン
[sysbutton graphic=Sysbtn_X left=740 top=430 page=back exp="SysBtn_onTextHideButtonClick()"]

;ホントはシステムボタンは text_transじゃないんだけど、まぁ使えるし。
[text_trans * cond="mp.trans"]
[endmacro]


[iscript]
// システムボタンのボイスボタンが押された時
function SysBtn_onVoiceButtonClick(name=f.voicespeaker, storage=f.voicestorage)
{
	if (name === void || !sf.rcMenu.voice[name])
		return;	// 有効でなければ終了
	var sedat = .SEDats_obj.addSE('voice', name);
	if (sedat !== void)
		kag.se[sedat.bufid].play(%[storage:storage]);
}

// セーブ ボタンが押されたら ks ファイルを呼び出し
//function SysBtn_onSaveButtonClick_local()
//{
//	if(kag.canStore()) {
//		f.rclickmode = 2;
//		kag.callExtraConductor('rclick_tjs20a.ks', '*rclick');
//	}
//}

// ロード ボタンが押されたら ks ファイルを呼び出し
//function SysBtn_onLoadButtonClick_local()
//{
//	if(kag.canRestore()) {
//		f.rclickmode = 1;
//		kag.callExtraConductor('rclick_tjs20a.ks', '*rclick');
//	}
//}

// メニュー ボタンが押されたら ks ファイルを呼び出し
//function SysBtn_onMenuButtonClick_local()
//{
//	f.rclickmode = 0;
//	kag.callExtraConductor('rclick_tjs20a.ks', '*rclick');
//}

[endscript]


;▼システムボタンを非表示にする
; [sysbtn_off trans=true time=300]
[macro name="sysbtn_off"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
[backlay cond="mp.trans"]
[sysbutton_erase page=back]
;ホントはシステムボタンは textじゃないんだけど、まぁ使えるし。
[text_trans * cond="mp.trans"]
[endmacro]


;--------------------------------------------------------------------------
; テキストモード(基本的にこれだけを使ってテキストモードを設定する)
;▼テキストモードを設定する
; [text_mode mode=window(通常画面)|fullscreen(テキスト全画面))|transparent(透明全画面)|off(非表示) time=##|300 force]
[macro name="text_mode"]
[eval exp="mp.trans = true" cond="mp.trans === void"]
;[text_visible visible=true] これあるとテキストモードが…
[clickskip enabled=false cond="kag.skipMode<=1"]
;[current layer=&sf.メッセージウィンドウ page=back][er]
[backlay cond="mp.trans"]
[if exp="f.textmode === void || mp.force || f.textmode != mp.mode"]
	; 以前と違うモードを設定する時だけ実行する
	[if exp="mp.mode == 'off'"]
		[namewin_off     * trans=false]
		[facewin_off     * trans=false]
		[sysbtn_off      * trans=false]
		[msg_off         * trans=false]
	[elsif exp="mp.mode == 'window'"]
		[namewin_on      * trans=false]
		[facewin_on     * trans=false]
		[sysbtn_on       * trans=false]
		[msg_on          * trans=false]
	[elsif exp="mp.mode == 'fullscreen'"]
		[namewin_off     * trans=false]
		[facewin_off     * trans=false]
		[sysbtn_off      * trans=false]
		[msg_fullscreen  * trans=false]
	[elsif exp="mp.mode == 'transparent'"]
		[namewin_off     * trans=false]
		[facewin_off     * trans=false]
		[sysbtn_off      * trans=false]
		[msg_transparent * trans=false]
	[else]
		[eval exp="System.inform('テキストモード指定間違い('+mp.mode+')')"]
	[endif]
	[text_trans time=%time|300 cond="mp.trans"]
	[eval exp="f.textmode = mp.mode"]
[endif]
[current layer=&sf.メッセージウィンドウ page=fore]
[clickskip enabled=true]
[endmacro]


;▼クリックモード設定マクロ
[macro name="click_mode"]
[if exp="mp.mode == 'modal'"]
	; モーダル。OPとかEDとかTitleとか。読み込みはできる
	[cancelautomode]
	[cancelskip]
	[history output=false enabled=false]
	[clickskip enabled=%clickskip|false]
	[nextskip enabled=%nextskip|false]
	[rclickmenu_off]
	[disablestore store=true restore=false]
[elsif exp="mp.mode == 'game'"]
	; ゲームモード。通常のクリック対応。rclickは先に定義されていること。
	[history output=true enabled=true]
	[clickskip enabled=%clickskip|true]
	[nextskip enabled=%nextskip|true]
	[rclickmenu_on]
	[disablestore store=false restore=false]
[else]
	[eval exp="System.inform('click_modeのmode指定に誤り(mode='+mp.mode+')')"]
[endif]
[endmacro]


;--------------------------------------------------------------------------
; 名前文字列操作マクロ

;▼キャラクタのフルネーム文字列を表示する。
;登録されたフルネームの間に" "があれば全角に変換して。
; fullname( name );
[macro name="fullname"]
[eval exp="mp.fullname = chardatas_obj.getData( mp.name, 'fullname' )"]
[eval exp="mp.fullname.replace( / /, '　' )"]
[eval exp="mp.fullname = mp.name" cond="mp.fullname == ''"]
[emb exp="mp.fullname"]
[endmacro]


;▼キャラクタの名前文字列を表示する。
;登録されたフルネームの間に" "があれば二番目を名前とみなす。
; firstname( name );
[macro name="firstname"]
[eval exp="mp.firstname = chardatas_obj.getData( mp.name, 'fullname' )"]
[eval exp="mp.firstname = mp.firstname.split( / / )[1]"]
[emb exp="mp.firstname"]
[endmacro]


;▼キャラクタの苗字文字列を表示する。
;登録されたフルネームの間に" "があれば先頭を苗字とみなす。
; secondname( name );
[macro name="secondname"]
[eval exp="mp.secondname = chardatas_obj.getData( mp.name, 'fullname' )"]
[eval exp="mp.secondname = mp.secondname.split( / / )[0]"]
[emb exp="mp.secondname"]
[endmacro]


; ▼キャラクタ名を登録する
; これは、自分・攻略キャラなどで、永遠にデータを保存する場合に使用する
; [text_reg_char name="名前" fullname="苗字 名前" color="テキスト色"]
[macro name="text_reg_char"]
[eval exp="chardatas_obj.setData(mp.name, 'fullname', mp.fullname)"]
[eval exp="chardatas_obj.setData(mp.name, 'color',    mp.color)" cond="mp.color !== void"]
[endmacro]


;選択肢関係 ----------------------------------------------------

;▼選択肢を表示する。引数rowは、選択肢数を指定する
; スキップモードの状態をf.skipmodeに保存する。
[macro name="select_start"]
[history output=false]
[delay speed=nowait]
[eval exp="f.skipmode = kag.skipMode"]
[r]
[endmacro]


;▼選択肢終わり。一時停止
[macro name=select_end]
[history output=true]
[delay speed=user]
[s]
[endmacro]


;▼選択済み選択肢は灰色表示リンクの開始部分
; 合わせて、音声をkachi00とdecide9に固定し、ついでに、選択された選択肢を
; 後で「選択済み」と指定するためにシステム変数領域に記録する
[macro name=link_start]
; "target"引数の最初の"*"を取り除くいて、mp.selected(インデックス)とする
[eval exp="mp.selected = mp.target.substring(1)"]
; 選択肢データの初期化をここでやっちゃう。いいのか。
[eval exp="sf.selected = %[]" cond="sf.selected === void"]
; 選択されたことが(つーかその先を実行したことが)あれば、色を灰色にする
[font color=0xBBBBBB cond="sf.selected[mp.selected]"]

; *procedure_linkにジャンプ、その時tf.targetとtf.storageが設定されているように
[eval exp="mp.storage = kag.conductor.curStorage" cond="mp.storage === void"]
[eval exp="mp.exp = 'tf.target = ' + '\'' + mp.target + '\', tf.storage = ' + '\'' + mp.storage + '\''"]
[eval exp="mp.target  = '*procedure_link'"]
[eval exp="mp.storage = 'Macro_Text.ks'"]

[link * enterse=%enterse clickse=%clickse]

[endmacro]

;こうやって↓、expを使って変数を指定する。難しい！
;@link target="&mp.label" exp="&'f.'+ mp.flag + '=' + '\'' + mp.text + '\''"


;▼選択済み選択肢は灰色表示リンクの終了部分
[macro name=link_end]
[endlink]
;[r] これ付けると、最終行にも改行入ってウィンドウに収まらなかった時に
; クリック待ちになるので付けないように。
[resetfont]
[endmacro]


;▼ テキスト用wait。canskip標準装備
[macro name="twait"]
[wait time=%time|2000 canskip=%canskip|true]
[endmacro]

;▼ テキスト用quake。waitも処理可能な部分がちょっと違う
; でもwaitはdef=false
[macro name="tquake"]
[quake hmax=%hmax|10 vmax=%vmax|10 time=%time|500]
[twq * cond="mp.wait"]
[endmacro]

;▼ テキスト用wq。canskip標準装備
; [twaitquake]
[macro name="twq"]
[wq canskip=%canskip|true cond="mp.wait === void || mp.wait"]
[endmacro]



;▼ 右クリックメニューを有効に
[macro name="rclickmenu_on"]
;[layopt layer=message2 visible=false]
;右クリックは、メニューは表示せず、テキストメッセージクリアとした。
[rclick call storage="Krclick.ks" target="*krclick_config" enabled=true]
[endmacro]

;▼ 右クリックメニューを無効に
[macro name="rclickmenu_off"]
[rclick call=false jump=false enabled=false]
[endmacro]



;▼文字表示マクロ
; @lch text= x=(def:current) y=(def:current) halign=center|left|right|current(def) valign=center|bottom|top|current(def)
; x,y は @locateで指定するものと同じ、marginを除いた座標
; halign=テキストの水平位置
; valign=テキストの垂直位置
@macro name="lch"
@if exp="kag.current.align != -1"
	@eval exp="System.inform('[lch]タグを使う時は、メッセージレイヤのalignを left/top に設定してください')"
@endif
@eval exp="mp.cur = kag.current"
@eval exp="mp.tw_width  = mp.cur.width  - mp.cur.marginR - mp.cur.marginL"
@eval exp="mp.tw_height = mp.cur.height - mp.cur.marginT - mp.cur.marginB"
@eval exp="mp.getTextWidth = mp.cur.lineLayer.font.getTextWidth"
@eval exp="mp.marginRChW = mp.cur.marginRCh * mp.cur._fontSize"

@if exp="!mp.cur.vertical"
	; ======== 横書き =========
	; x座標設定
	@eval exp="mp.x = (mp.tw_width - mp.getTextWidth(mp.text))/2"                cond="mp.halign == 'center'"
	@eval exp="mp.x = 0"                                                         cond="mp.halign == 'left'"
	@eval exp="mp.x = (mp.tw_width - mp.marginRChW - mp.getTextWidth(mp.text))"  cond="mp.halign == 'right'"
	; @eval exp="mp.x = mp.x                                                     cond="mp.x !== void"
	; y座標設定
	@eval exp="mp.y = (mp.tw_height - mp.cur.lineSize - mp.cur.lineSpacing)/2"   cond="mp.valign == 'center'"
	@eval exp="mp.y = 0"                                                         cond="mp.valign == 'top'"
	@eval exp="mp.y = (mp.tw_height - mp.cur.lineSize - mp.cur.lineSpacing)"     cond="mp.valign == 'bottom'"
	; @eval exp="mp.y = mp.y"                                                    cond="mp.y !== void"

	@locate x=%x y=%y
	@emb exp="mp.text"
@else
	; ======== 縦書き =========
	; x座標設定
	@eval exp="mp.x = (mp.tw_width + mp.cur.lineSize + mp.cur.lineSpacing)/2"    cond="mp.halign == 'center'"
	@eval exp="mp.x = mp.cur.lineSize + mp.cur.lineSpacing"                      cond="mp.halign == 'left'"
	@eval exp="mp.x = mp.tw_width"                                               cond="mp.halign == 'right'"
	; @eval exp="mp.x = mp.x"                                                    cond="mp.x !== void"
	; y座標設定
	@eval exp="mp.y = (mp.tw_height - mp.getTextWidth(mp.text))/2"               cond="mp.valign == 'center'"
	@eval exp="mp.y = 0"                                                         cond="mp.valign == 'top'"
	@eval exp="mp.y = (mp.tw_height - mp.marginRChW - mp.getTextWidth(mp.text))" cond="mp.valign == 'bottom'"
	; @eval exp="mp.y = mp.y                                                     cond="mp.y !== void"

	@locate x=%x y=%y
	@emb exp="mp.text"
@endif
@endmacro

[return]



: ▼選択肢リンクを処理する。なんでこうしてるかというと、単純に
; 選択後、画面クリアなどの提携処理をしてから先に進みたかったから。
; ここに来た時に、tf.targetとtf.storageが適宜設定されている。ハズ。
; それと、f.skipmodeに選択肢前のスキップモードが設定されてるので、
; スキップモードを元に戻す。
*procedure_link
;ここで「選択肢」前の状態を保存する
[record]
; 選択されたリンクを、その旨システム変数領域に記録する
; これってstorageを保存してないけどいいのかな…ラベルが重複しなきゃいいか。
[eval exp="sf.selected[tf.target.substring(1)] = 1"]
[iscript]
if(f.skipmode !== void) { // 一応、互換性のために存在をチェックしておく。
	if(f.skipmode == 1)
		kag.skipToClick();
	else if(f.skipmode == 2)
		kag.skipToPage();
	else if(f.skipmode == 3)
		kag.skipToStop();
	else if(f.skipmode == 4)
		kag.skipToStop2();
	delete f.skipmode;  // 念の為消しておく
}
[endscript]
[er]
[jump storage=&tf.storage target=&tf.target]


; イベント回想モードで close が押された時に帰る
*return_from_memories
[eval exp="delete tf.memories"]
;クリア
[return]
