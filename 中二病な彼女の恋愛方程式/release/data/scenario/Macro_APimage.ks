; Macro_APimage.ks は、Override.tjs中で読み込んだAPimage.tjsを利用し、部分
; アニメーションを実現するためのマクロ集を提供する。
;
; 2014/07/03	0.31	・canWaitAnimStop()削除に伴い変更
; 2014/06/26	0.3	・[ap_animstop]にimmediate=パラメータ追加
;			・[ap_*]でname=が指定されていなかった場合に全ての
;			　対象apimagesを操作するよう変更
; 2013/10/30	0.22	・typo修正： stopAPimages(mp) → stopAPimage(mp)
;			・同上：*ap_animwait_sub → *ap_wa_sub
;			・apimage_getTriggerName()でgetLayerFromElm()をkag.の
;			　ものと宣言していなかったのを修正
;			・apimage_getTriggerName()でtypo修正
;			　	getAPiamge → getAPimages
;				conWaitAnimStop → canWaitAnimStop
;			・apimage_getTriggerName()でgetAPImages()への引数を
;			　elm.name → elm に変更
;			・apimage_getTriggerName()でapimage → apimages へ変更
;			　複数で扱うべきところを単数で扱っていたため
;			・[ap_wa] で無駄にlayerobjを設定していたのを削除
; 2012/08/14	0.21	TJSFunctions.ksを読み込むようにした
; 2012/06/05	0.2	Macro_APimage.ks 0.11 をベースに再作成

; 最初に前提ファイルの読み込みチェック
[if exp="typeof(kag.fore.layers[0].apimages) == 'undefined'"]
	[eval exp="System.inform('APimage.tjsがOverride.tjs中で読み込まれていません！')"]
	[s]
	; [eval exp="kag.closeByScript(%[ask:false])"]
[endif]

; 実は APimage.tjsの中で必要なんだけどな…。
[call storage=TJSFunctions.ks]

;[ap_image_init]
[macro name=ap_image_init]
; 不要になったので、互換性のために空マクロだけ定義しておく。
[endmacro]

; アニメーションpimageを作成する
; [ap_image name= layer= storage= page= dx= dy= width= height= target=]
[macro name=ap_image]
[eval exp="mp.layer = 0"     cond="mp.layer === void"]
[eval exp="mp.page = 'fore'" cond="mp.page  === void"]
[eval exp="mp.layerobj = kag.getLayerFromElm(mp)"]
[eval exp="mp.layerobj.addAPimage(mp)"]
[endmacro]

; アニメーションpimageを削除する
; [ap_delimage name= layer= page=]
[macro name=ap_delimage]
[if exp="mp.layer === void || mp.page === void || mp.page == 'both' || mp.name === void"]
	; layer/pageいずれかが指定されていなかったらサブルーチンへ
	[call storage=Macro_APimage.ks target=*ap_delimage_sub]
[else]
	; layer/page全てが指定されていたら、削除
	[eval exp="mp.layerobj = kag.getLayerFromElm(mp)"]
	[eval exp="mp.layerobj.delAPimages(mp)"]
	[ap_wa * cond="mp.wait"]
[endif]
[endmacro]

; アニメーションを開始する
; [ap_animstart name= layer= page= target= prevwait=false wait=false]
[macro name=ap_animstart]
[if exp="mp.layer === void || mp.page === void || mp.page == 'both' || mp.name === void"]
	; layer/pageいずれかが指定されていなかったらサブルーチンへ
	[call storage=Macro_APimage.ks target=*ap_animstart_sub]
[else]
	[ap_wa * cond="mp.prefwait"]
	; layer/page全てが指定されていたら、開始
	[eval exp="mp.layerobj = kag.getLayerFromElm(mp)"]
	[eval exp="mp.layerobj.startAPimage(mp)"]
	[ap_wa * cond="mp.wait"]
[endif]
[endmacro]

; アニメーションを停止する
; [ap_animstop name= layer= page= immediate=true]
[macro name=ap_animstop]
[eval exp="mp.immediate = true" cond="mp.immediate === void"]
[if exp="mp.layer === void || mp.page === void || mp.page == 'both' || mp.name === void"]
	; layer/pageいずれかが指定されていなかったらサブルーチンへ
	[call storage=Macro_APimage.ks target=*ap_animstop_sub]
[else]
	; layer/page全てが指定されていたら、停止
	[eval exp="mp.layerobj = kag.getLayerFromElm(mp)"]
	[eval exp="mp.layerobj.stopAPimage(mp)"]
[endif]
[endmacro]

; アニメーションの終了を待つ
; [ap_wa name= layer= page= canskip=]
[macro name=ap_wa]
[if exp="mp.layer === void || mp.page === void || mp.page == 'both' || mp.name === void"]
	; layer/pageいずれかが指定されていなかったらサブルーチンへ
	[call storage=Macro_APimage.ks target=*ap_wa_sub]
[else]
	; layer/page全てが指定されていたら、終了待ち
	[eval exp="mp.trignam = apimage_getTriggerName(mp)"]
	[waittrig name=%trignam canskip=%canskip|true cond="mp.trignam!==void"]
[endif]
[endmacro]

[iscript]
// apimageのトリガ名を得る(elm.name が必須)
function apimage_getTriggerName(elm)
{
	elm.layer ='0'     if (elm.layer === void);
	elm.page  = 'fore' if (elm.page  === void);
	var apimages = kag.getLayerFromElm(elm).getAPimages(elm);
	if (apimages.count <= 0) {
		// System.inform('name('+elm.name+')に対するapimageが存在しません。');
		return void;
	}
	else if (apimages.count > 1) {
		System.inform('name('+elm.name+')に対するapimageが\n複数存在するため、0番目のみを使用します。');
	}
	// 一意に決まるはずなので [0] でよい
	//if (!apimages[0].canWaitAnimStop())
	//	return void; // アニメーション待ちできない場合
	return 'apimage:' + elm.name;
}

// elm(name, layer, page)からapimage配列を得る
// ret = [ %[layer:1, page:'fore', name='apimage名'] ] ...
function getAPimageHashAryFromElm(elm=%[]) {
	var ret = [];
	var ary = getLayerPageNamesFromElm(elm);
	for (var i = ary.count-1; i >= 0; i--) {
		var p = ary[i].page, l = ary[i].layer;
		var apimages = kag[p].layers[l].apimages;
		for (var j = apimages.count-1; j >= 0; j--) {
			var curnam = apimages[j].name;
			if (elm.name === void || elm.name == curnam)
				ret.add(%[page:p, layer:l, name:curnam]);
		}
	}
	return ret;
}


[endscript]

; 色調を変える(ベース画像に合わせる) 今はpageは指定しないとforeにされてしまう
; [ap_applycolorcorrection name= layer= page='fore']
;[macro name=ap_applycolorcorrection]
;[eval exp="mp.layer = 0"      cond="mp.layer === void"]
;[eval exp="mp.page  = 'fore'" cond="mp.page  === void"]
;[eval exp="mp.layerobj = kag.getLayerFromElm(mp)"]
;[eval exp="mp.layerobj.applyColorCorrection(mp)"]
;[endmacro]


;*******************************************************************
; Macro_CharLayersが定義されている場合は以下が使用可能
; キャラに対して部分アニメーションを作成する
; [char_ap_image name= page= apname= storage= dx= dy= width= height= target=]
[macro name=char_ap_image]
[if exp="mp.name === void"]
	[call storage=Macro_APimage.ks target=*char_ap_image_sub]
[else]
	[eval exp="mp.layer = chardatas_obj.getLayer(mp.name)"]
	[eval exp="mp.storage = findASDStorage(mp.storage, mp.name)"]
	[ap_image * name=%apname]
[endif]
[endmacro]

; キャラに対して部分アニメーションを削除
; [char_ap_delimage name= page= apname=]
[macro name=char_ap_delimage]
[if exp="mp.name === void"]
	[call storage=Macro_APimage.ks target=*char_ap_delimage_sub]
[else]
	[eval exp="mp.layer = chardatas_obj.getLayer(mp.name)"]
	[eval exp="mp.apname = findASDStorage(mp.apname, mp.name)"]
	[ap_delimage * name=%apname]
[endif]
[endmacro]

; キャラに対して部分アニメーション(複数指定可)を開始する
; [char_ap_animstart_ary name= page= apstart=]
[macro name=char_ap_animstart_ary]
[call storage=Macro_APimage.ks target=*char_ap_animstart_ary_sub]
[endmacro]

; キャラに対して部分アニメーション一つを開始する
; [char_ap_animstart name= page= apname= target=]
[macro name=char_ap_animstart]
[if exp="mp.name === void"]
	[call storage=Macro_APimage.ks target=*char_ap_animstart_sub]
[else]
	[eval exp="mp.layer = chardatas_obj.getLayer(mp.name)"]
	[eval exp="mp.apname = findASDStorage(mp.apname, mp.name)"]
	[ap_animstart * name=%apname]
[endif]
[endmacro]

; キャラの部分アニメーションを停止する
[macro name=char_ap_animstop]
[if exp="mp.name === void"]
	[call storage=Macro_APimage.ks target=*char_ap_animstop_sub]
[else]
	[eval exp="mp.layer = chardatas_obj.getLayer(mp.name)"]
	[eval exp="mp.apname = findASDStorage(mp.apname, mp.name)"]
	[ap_animstop * name=%apname]
[endif]
[endmacro]

; キャラの部分アニメーションの終了を待つ
[macro name=char_ap_wa]
[if exp="mp.name === void"]
	[call storage=Macro_APimage.ks target=*char_ap_wa_sub]
[else]
	[eval exp="mp.layer = chardatas_obj.getLayer(mp.name)"]
	[eval exp="mp.apname = findASDStorage(mp.apname, mp.name)"]
	[ap_wa * name=%apname]
[endif]
[endmacro]

[return]


; ここからサブルーチン =======================================================

; ap_* サブルーチン

; ap_delimageのサブルーチン、layer/page/nameが指定されていなかった時にループ
*ap_delimage_sub
[eval exp="mp.layernames = getAPimageHashAryFromElm(mp)"]
*ap_delimage_sub_loop
[return cond="(mp.lnelm = mp.layernames.pop()) === void"]
[ap_delimage * layer=&mp.lnelm.layer page=&mp.lnelm.page name=&mp.lnelm.name]
[jump target=*ap_delimage_sub_loop]

; ap_animstartのサブルーチン、layer/page/nameが指定されていなかった時にループ
*ap_animstart_sub
[eval exp="mp.layernames = getAPimageHashAryFromElm(mp)"]
*ap_animstart_sub_loop
[return cond="(mp.lnelm = mp.layernames.pop()) === void"]
[ap_animstart * layer=&mp.lnelm.layer page=&mp.lnelm.page name=&mp.lnelm.name]
[jump target=*ap_animstart_sub_loop]

; ap_animstopのサブルーチン、layer/page/nameが指定されていなかった時にループ
*ap_animstop_sub
[eval exp="mp.layernames = getAPimageHashAryFromElm(mp)"]
*ap_animstop_sub_loop
[return cond="(mp.lnelm = mp.layernames.pop()) === void"]
[ap_animstop * layer=&mp.lnelm.layer page=&mp.lnelm.page name=&mp.lnelm.name]
[jump target=*ap_animstop_sub_loop]

; ap_waのサブルーチン、layer/page/nameが指定されていなかった時にループ
*ap_wa_sub
[eval exp="mp.layernames = getAPimageHashAryFromElm(mp)"]
*ap_wa_sub_loop
[return cond="(mp.lnelm = mp.layernames.pop()) === void"]
[ap_wa * layer=&mp.lnelm.layer page=&mp.lnelm.page name=&mp.lnelm.name]
[jump target=*ap_wa_sub_loop]


; char_ap_* サブルーチン

; apstatリストにあるアニメーションを再生する
*char_ap_animstart_ary_sub
[return cond="mp.apstart === void"]
[eval exp="mp.apstartary = mp.apstart.split(/[ \t]+/)"]
*char_ap_animstart_ary_sub_loop
[return cond="mp.apstartary.count <= 0"]
[eval exp="mp.curap = mp.apstartary.pop().split(/\*/)"]
[eval exp="mp.apnametmp = findASDStorage(mp.apname, mp.name)"]
[char_ap_animstart * apname=%apnametmp target=&"'*'+mp.curap[1]"]
[jump target=*char_ap_animstart_ary_sub_loop]


; [char_ap_image]のサブルーチン。name= が指定されていなかった時
*char_ap_image_sub
[eval exp="mp.names = chardatas_obj.getChars()"]
*char_ap_image_sub_loop
[return cond="(mp.name = mp.names.pop()) === void"]
[char_ap_image *]
[jump target=*char_ap_image_sub_loop]

; [char_ap_delimage]のサブルーチン。name= が指定されていなかった時
*char_ap_delimage_sub
[eval exp="mp.names = chardatas_obj.getChars()"]
*char_ap_delimage_sub_loop
[return cond="(mp.name = mp.names.pop()) === void"]
[char_ap_delimage *]
[jump target=*char_ap_delimage_sub_loop]

; [char_ap_animstart]のサブルーチン。name= が指定されていなかった時
*char_ap_animstart_sub
[eval exp="mp.names = chardatas_obj.getChars()"]
*char_ap_animstart_sub_loop
[return cond="(mp.name = mp.names.pop()) === void"]
[char_ap_animstart *]
[jump target=*char_ap_animstart_sub_loop]

; [char_ap_animstop]のサブルーチン。name= が指定されていなかった時
*char_ap_animstop_sub
[eval exp="mp.names = chardatas_obj.getChars()"]
*char_ap_animstop_sub_loop
[return cond="(mp.name = mp.names.pop()) === void"]
[char_ap_animstop *]
[jump target=*char_ap_animstop_sub_loop]

; [char_ap_wa]のサブルーチン。name= が指定されていなかった時
*char_ap_wa_sub
[eval exp="mp.names = chardatas_obj.getChars()"]
*char_ap_wa_sub_loop
[return cond="(mp.name = mp.names.pop()) === void"]
[char_ap_wa *]
[jump target=*char_ap_wa_sub_loop]
