;秋葉もので立ち絵の位置変更しているのでデフォは　Lft　は-190　Ritは190だお


@call storage="zoom.ks"
@call storage="systembutton.ks"

;完全なるwait
[macro name=waitex]
[resetwait]
[wait mode=until time=%time]
[endmacro]

@iscript
function playVoice(buf, storage)
{
    // 効果音バッファ buf にて storage を再生する
    // KAG がスキップ処理中の場合は処理を行わない
    if(!kag.skipMode)
    {
        kag.se[0].stop();
        kag.se[buf].play(%[ storage : storage ]);
    }
}
function createHistoryActionExp(buf, storage)
{
    // メッセージ履歴をクリックしたときに実行する TJS 式を生成する
    return "kag.se[0].stop(), kag.se[0].play(%[ storage : '" + storage + "' ])";
}
@endscript


[macro name=pv]
[hact exp="&createHistoryActionExp(0, mp.s)"]
[eval exp="playVoice(0, mp.s)"]
[endmacro]

[macro name=waitvoices]
[ws buf=0]
[endmacro]

[macro name=sv]
[endhact]
[waitvoices cond="kag.autoMode"]
[eval exp="stopAllVoices()"]
[endmacro]


;*// アルファブレンドマクロ（[AlphaBG bg="読み込む画像"]）
[macro name=AlphaBG]
[backlay]
[sysbtopt backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=718 top=438]
[layopt layer=message0 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[endmacro]

;*// CGモードCG専用アルファブレンドマクロ（[ExtraBG bg="読み込む画像"]）
[macro name=ExtraBG]
[backlay]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[freeimage layer=6 page=back]
[freeimage layer=7 page=back]
[freeimage layer=8 page=back]
[freeimage layer=9 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=6 page=back storage="black"]
[image layer=7 page=back storage="black"]
[image layer=8 page=back storage="black"]
[image layer=9 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[freeimage layer=6 page=back]
[freeimage layer=7 page=back]
[freeimage layer=8 page=back]
[freeimage layer=9 page=back]
[endmacro]


;*// ユーザー定義エフェクトマクロ（[UniSet bg="読み込む画像" pattern="パターン画像"]）
[macro name=UniSet]
[backlay]
[sysbtopt backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=718 top=438]
[layopt layer=message0 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[endmacro]


;*// ユーザー定義エフェクトマクロ（[UniSet2 bg="読み込む画像" pattern="パターン画像"]）
[macro name=UniSet2]
[backlay]
[sysbtopt backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=%time vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=718 top=438]
[layopt layer=message0 page=back visible=true]
[trans method=crossfade time=500]
[wt]
[endmacro]



;*// アルファブレンドED用
[macro name=AlphaED]
[backlay]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=6 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[endmacro]



;*// ユーザー定義エフェクトマクロ（[UniBK pattern="パターン画像"]）
[macro name=UniED]
[backlay]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[freeimage layer=6 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=6 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[freeimage layer=6 page=back]
[endmacro]




;*// アルファブレンドブラックアウトマクロ（[AlphaBK]）
[macro name=AlphaBK]
[backlay]
[sysbtopt forevisible=false backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=hblkout]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[endmacro]


;*// ユーザー定義エフェクトマクロ（[UniBK pattern="パターン画像"]）
[macro name=UniBK]
[backlay]
[sysbtopt forevisible=false backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=hblkout]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[endmacro]


;*// 立ち絵移動マクロ（[ActMove layer="該当レイヤー" paht=(X,Y,α)]）
[macro name=ActMove]
[move layer=%layer time=250 path=%path]
[wm]
[endmacro]



;*// 立ち絵アルファブレンドフェードアウトマクロ（[LayerFadeOut layer="該当レイヤー"]）
[macro name=LayerFadeOut]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=false left=0 top=0]
[trans method=crossfade time=350]
[wt]
[freeimage layer=%layer page=back]
[endmacro]


;*// 立ち絵アルファブレンドフェードアウトマクロ（[LayerFadeOut2 layer1="該当レイヤー" layer2="該当レイヤー2"]）
[macro name=LayerFadeOut2]
[backlay]
[layopt layer=%layer1 page=back visible=false]
[layopt layer=%layer2 page=back visible=false]
[trans method=crossfade time=350]
[wt]
[freeimage layer=%layer1]
[freeimage layer=%layer2]

[endmacro]


;*// 立ち絵ユーザー定義フェードアウトマクロ（[LayerUFadeOut layer="該当レイヤー"  pattern="パターン画像"]）
[macro name=LayerUFadeOut]
[backlay]
[layopt layer=%layer page=back visible=false]
[trans method=universal rule=%pattern time=500 vague=100]
[wt]
[freeimage layer=%layer]
[endmacro]


;*// 立ち絵ユーザー定義フェードアウトマクロ（[LayerUFadeOut layer1="該当レイヤー" layer2="該当レイヤー"  pattern="パターン画像"]）
[macro name=LayerUFadeOut2]
[backlay]
[layopt layer=%layer1 page=back visible=false]
[layopt layer=%layer2 page=back visible=false]
[trans method=universal rule=%pattern time=500 vague=100]
[wt]
[freeimage layer=%layer]
[endmacro]



;*// セーブ用マクロ(名前ありのとき)（改ページ箇所に挿入する事｛[p][cm]の併用箇所に変わりに挿入｝）
;ネームつきの場合
[macro name=cpg1]
;履歴でボイス再生可能にする
[endhact]
;オートモード時はスキップ不可
[if exp="kag.autoMode"]
[ws canskip=false buf=0]
[endif]
;スキップ時はスキップ可能
[ws canskip=true buf=0 cond="kag.skipMode"]
;クリック待ち
[p]
;クリック待ちで見かけ上改行させない（履歴は改行される）
[r]
[label]
[stopse buf=0]
;メッセージレイヤを初期化
[cm]
;名前を消す
[OutName]
[endmacro]

;*// セーブ用マクロ（上以外のとき）（改ページ箇所に挿入する事｛[p][cm]の併用箇所に変わりに挿入｝）
;ネームレスの場合
[macro name=cpg]
[p]
[r]
[label]
[stopse]
[cm]
[endmacro]

;*// シーン鑑賞エンドマクロ（[SceneEnd]）
;シーンモードが1ページで全てが収まるとき
[macro name=SceneEnd]
[if exp="f.seen==1"]
[AlphaBK]
[current layer=message0]
[jump storage="シーンモード.ks" target=*back]
[endif]
[endmacro]

;シーンモードが一ページで収まりきれないとき

;今回つかわん
[macro name=SceneEnd1]
[if exp="f.seen==1"][jump storage="シーンモードinit.ks" target=*back1][endif]
[endmacro]

;今回つかわん
[macro name=SceneEnd2]
[if exp="f.seen==1"][jump storage="シーンモードinit.ks" target=*back2][endif]
[endmacro]

;今回つかわん
[macro name=SceneEnd3]
[if exp="f.seen==1"][jump storage="シーンモードinit.ks" target=*back3][endif]
[endmacro]

;///////////////////////////////////////痴漢からのオリジナルマクロ/////////////////////////////////////

;//機能・・・名前ウィンドウを出す
;//引数・・・初期位置渡す画像名
;//(メッセージレイヤー3を使うことにしよう)

;//左下
[macro name=OnName]
;[backlay]
[layopt layer=message3 page=fore visible=false]
;[trans method=crossfade time=50]
;[wt]
[backlay]
[layopt layer=message3 page=back visible=true]
[position layer=message3 frame=%name left=0 top=433 page=back]
[trans method=crossfade time=350]
[wt]
[endmacro]

;/////////////////////////////////////////////////////////////////////////////////////////////

[macro name=OnName1]
[backlay]
[layopt layer=message3 page=fore visible=false]
[position layer=message3 frame=%name left=0 top=0 page=fore]
[backlay]
[layopt layer=message3 page=back visible=true]
[trans method=crossfade time=350]
[wt]
[endmacro]

[macro name=OnName2]
[backlay]
[layopt layer=message3 page=fore visible=false]
[position layer=message3 frame=%name left=355 top=0 page=fore]
[backlay]
[layopt layer=message3 page=back visible=true]
[trans method=crossfade time=350]
[wt]
[endmacro]

[macro name=OnName3]
[backlay]
[layopt layer=message3 page=fore visible=false]
[position layer=message3 frame=%name left=0 top=440 page=fore]
[backlay]
[layopt layer=message3 page=back visible=true]
[trans method=crossfade time=350]
[wt]
[endmacro]

[macro name=OnName4]
[backlay]
[layopt layer=message3 page=fore visible=false]
[position layer=message3 frame=%name left=355 top=440 page=fore]
[backlay]
[layopt layer=message3 page=back visible=true]
[trans method=crossfade time=350]
[wt]
[endmacro]

;名前を消すためのマクロ
[macro name=OutName]
;全ての情報をコピー
;[backlay]
;レイヤー3のページ前面を見えなくする
[layopt layer=message3 page=fore visible=false]
;[trans method=crossfade time=350]
;[wt]
;全ての情報をコピー
[backlay]
;ページのバックを見えるようにする
[layopt layer=message3 page=fore visible=true]
;フェードイン時間設定
[trans method=crossfade time=350]
[wt]
[endmacro]

;メッセージレイヤーの操作
[macro name=VisibleMes]
[layopt layer=message0 page=back visible=false]
[layopt layer=message0 page=fore visible=false]
[current layer=message2]
[endmacro]

;メッセージレイヤーを元に戻す
[macro name=ReMes]
[position layer=message2 page=back visible=false]
[position layer=message2 page=fore visible=false]
[position layer=message0 page=back visible=ture]
[position layer=message0 page=fore visible=true]
[current layer=message0]
[endmacro]

;//////////////////////////////////////////////////////////////////////////////////////////////////

;ウィンドウを動かすときのイベント絵の表示マクロ
;patternとbgは読み込みたいCG
;んでleftとtopはミニウィンドウの出現場所
;左上
[macro name=UniEV1]
[backlay]
[layopt layer=message2 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
;移動させるミニウインドウの位置はここできめるおｗ
[sysbtopt backvisible=true left=365 top=6]
[position layer=message2 frame="ミニウィンドウ" left=0 top=39 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]

;右上
[macro name=UniEV2]
[backlay]
[layopt layer=message2 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
;移動させるミニウインドウの位置はここできめるおｗ
[sysbtopt backvisible=true left=720 top=6]
[position layer=message2 frame="ミニウィンドウ" left=355 top=39 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]

;左下
[macro name=UniEV3]
[backlay]
[layopt layer=message2 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
;移動させるミニウインドウの位置はここできめるおｗ
[sysbtopt backvisible=true left=365 top=446]
[position layer=message2 frame="ミニウィンドウ" left=0 top=479 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]

;右下
[macro name=UniEV4]
[backlay]
[layopt layer=message2 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
;移動させるミニウインドウの位置はここできめるおｗ
[sysbtopt backvisible=true left=720 top=446]
[position layer=message2 frame="ミニウィンドウ" left=355 top=479 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]



;//////////////////////////////////////////////////////////////////////////////////////////////////////


;イベント絵のときにメッセージレイヤーを別の場所に移動出せる
;イベント絵も同時に出る上はフェードパターンを選べるのでこいつはスクロールとかの時に使えばいいおｗ

[macro name=AlphaEV1]
[backlay]
[layopt layer=message2 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=365 top=6]
[position layer=message2 frame="ミニウィンドウ" left=0 top=39 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]

[macro name=AlphaEV2]
[backlay]
[sysbtopt backvisible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=720 top=6]
[position layer=message2 frame="ミニウィンドウ" left=355 top=39 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]



[macro name=AlphaEV3]
[backlay]
[layopt layer=message2 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]

[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=365 top=446]
[position layer=message2 frame="ミニウィンドウ" left=0 top=479 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]


[macro name=AlphaEV4]
[backlay]
[sysbtopt backvisible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=800]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[backlay]
[sysbtopt backvisible=true left=720 top=446]
[position layer=message2 frame="ミニウィンドウ" left=355 top=479 page=back visible=true margint=10 marginr=115 marginb=8 marginl=25]
[trans method=crossfade time=500]
[wt]
[endmacro]

;// イベントCG用白フラッシュマクロウィンドウ変化Ver（[Flash bg="読み込む画像"]）
[macro name=Flash2]
[backlay]
[layopt layer=message2 page=back visible=false]
[layopt layer=message4 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]

[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=hwhtout]
[trans method=universal rule="bakuhatu" time=50]
[wt]
[freeimage layer=0]
[freeimage layer=1]
[freeimage layer=2]
[freeimage layer=3]
[freeimage layer=4]
[freeimage layer=5]
[layopt layer=message2 page=fore visible=false]
[layopt layer=message4 page=fore visible=false]
[trans method=crossfade time=50]
[wt]
[image layer=base page=back storage=hwhtout]
[trans method=universal rule="bakuhatu" time=50]
[wt]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=600]
[wt]
[backlay]
[layopt layer=message2 page=back visible=true]
[sysbtopt backvisible=true]
[trans method=crossfade time=500]
[wt]
[endmacro]

;//////////////////////////////////////////////////////////////////////////////////////////////////////

;*// センター立ち絵マクロ（[ActorCtr layer="該当レイヤー" chara="読み込む立ち絵"]）
[macro name=ActorCtr]
[backlay]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=0 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]


;*// 左立ち絵マクロ（[ActorLft layer="該当レイヤー" chara="読み込む立ち絵"]）
[macro name=ActorLft]
[backlay]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=-140 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]


;*// 右立ち絵マクロ（[ActorRit layer="該当レイヤー" chara="読み込む立ち絵"]）
[macro name=ActorRit]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=140 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]

[macro name=ActorLft1]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=-190 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]


;*// 右立ち絵マクロ（[ActorRit layer="該当レイヤー" chara="読み込む立ち絵"]）
[macro name=ActorRit1]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=190 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]

[macro name=ActorLft2]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=-240 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]


;*// 右立ち絵マクロ（[ActorRit layer="該当レイヤー" chara="読み込む立ち絵"]）
[macro name=ActorRit1]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=0 left=240 key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]



;//主人公縁取りマクロ
;悠太
[macro name=fth]
[font color=0xB49FFF]
[endmacro]

;おじさん
[macro name=fth1]
[font color=0x252525]
[endmacro]

;父
[macro name=fth2]
[font color=0x006f00]
[endmacro]


;//女用縁取りマクロ
;//アゲハ
[macro name=fta]
[font color=0xa7cff6]
[endmacro]

;//ヒナ
[macro name=ftb]
[font color=0xffa391]
[endmacro]

;//その他
[macro name=ftc]
[font color=0xfff68c]
[endmacro]

;//ハテナ
[macro name=ftd]
[font color=0xa692832]
[endmacro]

;//女性
[macro name=fte]
[font color=0xf2245e]
[endmacro]


;//効果音再生用マクロ
[macro name=plse]
[playse buf=1 storage=%se]
[endmacro]

;//効果音止めるためのマクロ
[macro name=stse]
[ws buf=1  canskip=true cond="kag.autoMode"]
[endmacro]

;//挿入音効果音再生用マクロ
[macro name=plse2]
[playse buf=2 storage=%se]
[endmacro]

;//挿入音効果音止めるためのマクロ
[macro name=stse2]
[ws buf=2 canskip=true]
[endmacro]


;// BGM用マクロフェードつき
[macro name=plbgm]
[fadeinbgm storage=%bg time=%time loop=true]
[wb canskip=true]
[endmacro]

;// BGM用ストップマクロフェードつき
[macro name=stbgm]
[fadeoutbgm time=%time]
[wb canskip=true]
[endmacro]

;// BGMエクスチェンジマクロ
[macro name=xchbgm]
[xchgbgm storage=%bg time=%time loop=true]
[wb canskip=true]
[endmacro]


[macro name=AniCtr]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=-15 left=410 visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]

[macro name=AniRit]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=-15 left=550 visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]

[macro name=AniLft]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=-15 left=270 visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]

;////////////////////////////////////////////////////////////////////////////////////////////////////

[macro name=AniCtr1]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=40 left=420 visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]

[macro name=AniRit1]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=40 left=550 visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]

[macro name=AniLft1]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=40 left=270 visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]


[macro name=AniOth]
[backlay]
[freeimage layer=%layer page=back]
[image layer=%layer opacity=255 top=%top left=%left visible=true page=back storage=%ani]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[waitex time=%time]
[endmacro]

[macro name=LayerAniOut]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=false left=0 top=0]
[trans method=crossfade time=50]
[wt]
[freeimage layer=%layer]
[endmacro]


[macro name=EndAni]
[LayerAniOut layer=%layer]
[endmacro]

;//立ち絵任意場所指定マクロ
[macro name=ActorOth]
[backlay]
[freeimage layer=%layer page=back]
[layopt layer=%layer page=back visible=true opacity=255]
[image storage=%chara layer=%layer page=back top=%top left=%left key="0x000000"]
[trans method=crossfade time=250]
[wt]
[freeimage layer=%layer page=back]
[endmacro]

;背景だけを変えるときに用いるマクロ
[macro name=UniMap]
[backlay]
[sysbtopt forevisible=false backvisible=false]
[layopt layer=message0 page=back visible=false]
[layopt layer=message1 page=back visible=false]
[layopt layer=message2 page=back visible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=%bg]
[trans method=universal rule=%pattern time=800 vague=100]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[endmacro]


;// 白フラッシュのみの効果を得たいとき（[Flash bg="読み込む画像"]）
[macro name=FlashEV]
[backlay]
[layopt layer=message0 page=back visible=false]
[layopt layer=message4 page=back visible=false]
[sysbtopt backvisible=false]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[image layer=0 page=back storage="black"]
[image layer=1 page=back storage="black"]
[image layer=2 page=back storage="black"]
[image layer=3 page=back storage="black"]
[image layer=4 page=back storage="black"]
[image layer=5 page=back storage="black"]
[image layer=base page=back storage=hwhtout]
[trans method=crossfade time=50]
[wt]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[layopt layer=message0 page=fore visible=false]
[layopt layer=message4 page=fore visible=false]
[trans method=crossfade time=50]
[wt]
[image layer=base page=back storage=hwhtout]
[trans method=crossfade time=50]
[wt]
[image layer=base page=back storage=%bg]
[trans method=crossfade time=600]
[wt]
[backlay]
[layopt layer=message2 page=back visible=true]
[sysbtopt backvisible=true]
[trans method=crossfade time=500]
[wt]
[endmacro]

[macro name=QS]
[delay speed=%spd]
[quake timemode=delay time=%time vmax=%tate hmax=%yoko]
[wq]
[delay speed=user]
[endmacro]

;//　ロード判定フラグリセットマクロ、ドールモノ球体間接差分用・・・（他で使いたくねぇな・・・）

[macro name=Fload]
[if exp="sf.load==1"]
[eval exp="sf.load=0"]
[endif]
[endmacro]

@return