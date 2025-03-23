; 多重登録を防止
[return cond="typeof(global.macro_layers) != 'undefined'"]

; 2014/01/21	0.21	[image_wait_trans][image_stop_trans]で引数allの時に
;			動作していなかったのを修正
; 2010/12/25	0.20	[image_cache] を追加

; このファイルでのレイヤー制御
;
; layer0(def) = 背景(今回はイメージ)表示レイヤー。
; 	何故baseでやっちゃわないかというと、[move]タグはbaseに使えないので、
; 	baseだと動かしながらのfadeが出来ない故。サイズは、
; 	kag.fore.layers[0].setSize( kag.back.layers[0].width,
;				    kag.back.layers[0].height )
; 		…とかすれば違ってても使える。
;;;;;;;;;;;;;;;;;;;; 全体操作マクロ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 背景の表示・消去を設定する
; [image_visible layer="0" visible=leave|true(def)|false ]
[macro name="image_visible"]
[eval exp="mp.layer   = '0'"  cond="mp.layer   === void"]
[eval exp="mp.visible = 'true'" cond="mp.visible === void"]
[if exp="mp.visible != 'leave'"]
	[eval exp="mp.page = 'fore'"]
	[call storage="Macro_Layers.ks" target="*set_visible_sub"]
	[eval exp="mp.page = 'back'"]
	[call storage="Macro_Layers.ks" target="*set_visible_sub"]
[endif]
[endmacro]

; 背景イメージをクリアする
;[image_clear layer="0" clear=true(def)|false ]
[macro  name="image_clear"]
[eval exp="mp.layer = '0'" cond="mp.layer === void"]
[eval exp="mp.clear = true"  cond="mp.clear === void"]
[if exp="mp.clear"]
	[eval exp="mp.page = 'fore'"]
	[call storage="Macro_Layers.ks" target="*image_clear_sub"]
	[eval exp="mp.page = 'back'"]
	[call storage="Macro_Layers.ks" target="*image_clear_sub"]
[endif]
[endmacro]


;;;;;;;;;;;;;;;;;;;; layer 操作マクロ ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; 背景を読み込む。
; image_load( storage=, layer=0, page=fore, opacity=255, left=0, top=0 )
; clipleft, cliptop, clipwidth, clipheight
; layer = 0(def) | 1...
; page = fore(def) | back | both
[macro name="image_load"]
[eval exp="mp.page    = 'fore'" cond="mp.page    === void"]
; layerは文字列でなければならんらしい。
[eval exp="mp.layer   = '0'"    cond="mp.layer   === void"]
[eval exp="mp.opacity = 255"    cond="mp.opacity === void"]
[eval exp="mp.left    = 0"      cond="mp.left    === void"]
[eval exp="mp.top     = 0"      cond="mp.top     === void"]

[eval exp="tf.page = mp.page"]
[if exp="tf.page == 'both' || tf.page == 'fore'"]
	[eval exp="mp.page = 'fore'"]
	[layopt *]
	[if exp="existGraph(mp.storage)"]
		[image *]
	[else]
		[image * storage="white"]
		[ptext * text=%storage x=32 y=32 size=32]
	[endif]

	; time=引数を渡さないようにするために、*でなくて一つづつ指定。
	[setTimeEffect layer=%layer page=%page obj="bg"]
[endif]
[if exp="tf.page == 'both' || tf.page == 'back'"]
	[eval exp="mp.page = 'back'"]
	[layopt *]
	[if exp="existGraph(mp.storage)"]
		[image *]
	[else]
		[image * storage="white"]
		[ptext * text=%storage x=32 y=32 size=32]
	[endif]

	; time=引数を渡さないようにするために、*でなくて一つづつ指定。
	[setTimeEffect layer=%layer page=%page obj="bg"]
[endif]
; cgmode用に、読み込んだファイル名を記録しておく
[eval exp="sf.cgmode = %[]" cond="sf.cgmode === void"]
[eval exp="sf.cgmode[mp.storage] = true"]
[endmacro]


[iscript]
// レイヤーの表示サイズを、transのために大きいほうに合わせるスクリプト
function  resize_for_trans( layer1, layer2 )
{
	if(layer1.width < layer2.width)
		layer1.width = layer2.width;
	else
		layer2.width = layer1.width;
	if(layer1.height < layer2.height)
		layer1.height = layer2.height;
	else
		layer2.height = layer1.height;
}

// 指定したその画像(拡張子除く)が存在するかどうか
function existGraph( storage )
{
	return( Storages.isExistentStorage( storage          ) || 
		Storages.isExistentStorage( storage + '.png' ) ||
		Storages.isExistentStorage( storage + '.tlg' ) ||
		Storages.isExistentStorage( storage + '.jpg' ) ||
		Storages.isExistentStorage( storage + '.bmp' ));
}

// 指定レイヤに現在読み込まれている画像名
function currentGraph( layer = 0 )
{
	return( kag.fore.layers[layer].Anim_loadParams.storage );
}

[endscript]


; 現在のfore/backを利用してクロスフェード+moveする。
; ただし、フェードは[trans]、moveタグの透明度は255に固定。
; サイズが違っても大丈夫。
; 表示状態(visibility)は変更しない
;
; 指定された画像へ背景イメージをトランジションする。指定されてれば合わせて
; 移動もする。イメージサイズが違ってもよいが、左上座標で合わせる
; storageを指定しないと、現在の画像をそのまま使う
; image_trans( storage=, time|transtime=2000, movetime=2000, path= layer=0 transwait=true movewait=true left=0 top=0 rule=(void) )
; storage:	トランジション後の画像
; time|transtime: トランジションにかかる時間。movetimeとは分けてある(def=2000)
; movetime:	移動にかかる時間
; path:		移動パス。moveタグに指定するやつ。ex)"(0,0,0) (100,0,0)"
; layer:	フツー指定しない。def = 0だし。
; transwait:	トランジションを待つか、待たずに先に進むか
; movewait:	移動を待つか、待たずに先に進むか
; left, top:	移動元座標。普通指定せず、0,0。
; method:	トランジション方法を指定する(def=crossfade,rule指定時universal)
; rule:		ルール画像。指定するとトランジションがuniversalになる。
; trans:	transするかどうか(true or false)。背景だけ読んどいてtransしない
; backlay:	[backlay]するかどうか(true or false)
; 		(後で纏めてする)場合を考慮。moveのことは考えてないので、
;		move指定するとおかしくなるかも？
; 一応[image]タグに引数を全部渡すので、[image]タグで使えるのは全部指定できる
; [trans]タグにも全て渡すようにするとヘンになるかな？今とりあえず渡してみた。

[macro name="image_trans"]

; まずは引数のデフォルト値を設定。こうしとくと後が楽なので。
[eval exp="mp.transtime = 2000"    cond="mp.transtime === void"]
[eval exp="mp.transtime = mp.time" cond="mp.time      !== void"]
[eval exp="mp.time = mp.transtime"]
; この時点でtime=transtimeになっている。後で[trans *]するから。
[eval exp="mp.movetime  = 2000"    cond="mp.movetime  === void"]
;layerは文字列の"0"でなければならないらしい。そんなん知るか！キィッ！
[eval exp="mp.layer     = '0'"     cond="mp.layer     === void"]
[eval exp="mp.transwait = true"    cond="mp.transwait === void"]
[eval exp="mp.movewait  = true"    cond="mp.movewait  === void"]
[eval exp="mp.trans     = true"    cond="mp.trans     === void"]
[eval exp="mp.backlay   = true"    cond="mp.backlay   === void"]
; extrans.dllでも使えるように、methodは指定されてればそれ、それ以外は
; デフォルトcrossfade, ruleが指定されてるとuniversal。
[eval exp="mp.method = 'crossfade'" cond="mp.method===void && mp.rule===void"]
[eval exp="mp.method = 'universal'" cond="mp.method===void && mp.rule!==void"]

; backlayフラグがfalseでなければ[backlay]
[backlay cond="mp.backlay"]

; 先にmoveしてから[image]で読まないとダメらしい
[layopt layer=%layer page=back left=%left|0 top=%top|0]
; ここで[stopmove]しちゃダメ。次のフェードの時に「動きながらフェード」できない
[move * time=%movetime page=back cond="mp.path !== void"]
; なお、mp.xxxは、*で指定すると、その後に書いたもので上書きされるみたい。

;grayscaleとかのため、引数を全部渡す。一つづつ指定してたら日が暮れるわ
[image_load * page=back cond="mp.storage !== void"]

; サイズをfore/backであわせて、transとmove。
; ストレージが指定されていなければ何も読まないそのままを使う
[eval exp="resize_for_trans( kag.fore.layers[mp.layer],kag.back.layers[mp.layer] )"]

; extNaganoを使うため、引数を[trans]タグに全て渡してみた。
; trans前に、以前のトランスを終らせておく必要あり。しないと実行時エラー発生。
[stoptrans cond="mp.trans"]
; [trans]にlayer=を指定すると[move]との組み合わせでうまく動かないので、
; layerだけ別に取っておくことにした
[eval exp="mp.layerbackup = mp.layer; mp.layer = void"]
[trans * cond="mp.trans"]
[eval exp="mp.layer = mp.layerbackup"]

; あとはmovewaitとtranswaitがあれば待つ
[wt canskip=true cond="mp.transwait"]
[wm canskip=true cond="mp.movewait"]
; この下じゃないとイカン理由って何だっけ？わかんないから今削除。
;[if exp="mp.transtime < mp.movetime"]
;	[wt canskip=true cond="mp.transwait"]
;	;とめないと、moveが中途で次のtransしたらmoveしつづけてしまう
;	[stopmove cond="mp.path === void && mp.transwait"]
;[endif]
;[if exp="mp.path !== void && mp.movewait"]
;	[wm canskip=true]
;[endif]
;[if exp="mp.transtime >= mp.movetime"]
;	[wt canskip=true cond="mp.transwait"]
;	;とめないと、moveが中途で次のtransしたらmoveしつづけてしまう
;	[stopmove cond="mp.path === void && mp.transwait"]
;[endif]

[endmacro]


; 上の[image_trans]からtrans部分だけを抜き出したもの。
[macro name="trans_only"]
; まずは引数のデフォルト値を設定。これはimage_transと全く同じ。
[eval exp="mp.transtime = 2000"    cond="mp.transtime === void"]
[eval exp="mp.transtime = mp.time" cond="mp.time      !== void"]
[eval exp="mp.time = mp.transtime"]
; この時点でtime=transtimeになっている。後で[trans *]するから。
[eval exp="mp.movetime  = 2000"    cond="mp.movetime  === void"]
;layerは文字列の"0"でなければならないらしい。そんなん知るか！キィッ！
[eval exp="mp.layer     = '0'"     cond="mp.layer     === void"]
[eval exp="mp.transwait = true"    cond="mp.transwait === void"]
[eval exp="mp.movewait  = true"    cond="mp.movewait  === void"]
[eval exp="mp.trans     = true"    cond="mp.trans     === void"]
[eval exp="mp.backlay   = true"    cond="mp.backlay   === void"]
; extrans.dllでも使えるように、methodは指定されてればそれ、それ以外は
; デフォルトcrossfade, ruleが指定されてるとuniversal。
[eval exp="mp.method = 'crossfade'" cond="mp.method===void && mp.rule===void"]
[eval exp="mp.method = 'universal'" cond="mp.method===void && mp.rule!==void"]

; extNaganoを使うため、引数を[trans]タグに全て渡してみた。
; trans前に、以前のトランスを終らせておく必要あり。しないと実行時エラー発生。
[stoptrans cond="mp.trans"]
; [trans]にlayer=を指定すると[move]との組み合わせでうまく動かないので、
; layerだけ別に取っておくことにした
[eval exp="mp.layerbackup = mp.layer; mp.layer = void"]
; [trans method=%method rule=%rule time=%time cond="mp.trans"]
[trans * cond="mp.trans"]
[eval exp="mp.layer = mp.layerbackup"]
; あとはmovewaitとtranswaitがあれば待つ
[wt canskip=true cond="mp.transwait"]
[wm canskip=true cond="mp.movewait"]
[endmacro]


; image_transのトランジション(クロス・透過)が終了するまで待つ
[macro name="image_wait_trans"]
[wt cond="mp.wait === void || mp.wait == 'trans' || mp.wait == 'all'"]
[wm cond="mp.wait === void || mp.wait == 'move'  || mp.wait == 'all'"]
[endmacro]


; image_transのトランジションを止める
[macro name="image_stop_trans"]
[stopmove  cond="mp.stop === void || mp.stop == 'trans' || mp.stop == 'all'"]
[stoptrans cond="mp.stop === void || mp.stop == 'trans' || mp.stop == 'all'"]
[endmacro]



; 初期化 ---------------------------------------------------------

[macro name=image_init]
; CGモード用のハッシュを初期化しておく。これないとCGモードとかでvoid
; アクセスしてコケることあり。
[eval exp="mp.layer  = '0'" cond="mp.layer  === void"]
[eval exp="sf.cgmode = %[]" cond="sf.cgmode === void"]
[image_clear layer=%layer]
[image_visible layer=%layer]
[endmacro]


; 画像をキャッシュする
; [image_cache storage="a" storages="b c ..." limitbyptes=0 timeout=0]
[macro name=image_cache]
[eval exp="mp.storageary = []"]
[eval exp="mp.storageary = mp.storages.split(/ +/)" cond="mp.storages!==void"]
[eval exp="mp.storageary.add(mp.storage)" cond="mp.storage !== void"]
[eval exp="System.touchImages(mp.storageary, mp.limitbyptes, mp.timeout)"]
[endmacro]


; 登録したフラグ
[eval exp="global.macro_layers = 'registered'"]

[return]


*set_visible_sub
[eval exp="mp.layerary = mp.layer.split(/ /)"]
*set_visible_sub_loop
[return cond="mp.layerary.length <= 0"]
[eval exp="mp.layerno = mp.layerary.pop()"]
[layopt layer=%layerno page=%page visible=%visible]
[jump target="*set_visible_sub_loop"]


*image_clear_sub
[eval exp="mp.layerary = mp.layer.split(/ /)"]
*image_clear_sub_loop
[return cond="mp.layerary.length <= 0"]
[eval exp="mp.layerno = mp.layerary.pop()"]
[image storage="clear" page=%page layer=%layerno]
[jump target="*image_clear_sub_loop"]
