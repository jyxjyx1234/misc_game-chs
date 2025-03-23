
; 現在の時間を設定する。TimeEffect.tjs参照。
[macro name="setCurrentTime"]
[eval exp="f.currentTime = mp.time"]
[endmacro]


; 指定ページをobjとし、実際に画面の色を変更する
; [setTimeEffect layer=0 page='fore', obj="bg"(def)|"char" time=]
[macro name="setTimeEffect"]
[setCurrentTime time=%time cond="mp.time !== void"]
[eval exp="mp.layer = 0"      cond="mp.layer === void"]
[eval exp="mp.page = 'fore'"  cond="mp.page  === void"]
[eval exp="mp.obj   = 'bg'"   cond="mp.obj   === void"]
[eval exp="mp.layerdata = kag.getLayerFromElm(mp)"]
[eval exp="mp.layerdata.setTimeEffect( f.currentTime, mp.obj )"]
[eval exp="mp.layerdata.drawTimeEffect( mp.layerdata.Anim_loadParams )"]
[endmacro]

[return]
