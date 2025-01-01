*OPreplay

[fadeoutbgm]
[bg time=" 2000" storage="shiro.jpg"]
[wait time=" 3000"]

;;; OPムービー
[bgmovie storage=OP.mp4 volume="50"]
[wait time=96000]
;ここのwaitは動画の秒数分

[stop_bgmovie]

;;; リプレイモード終了

[cm]
[clearfix]

[bg time=" 2000" storage="shiro.jpg"]

[stopbgm]
[stopse buf="3"]
[wait time=" 2000"]

@layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
[clearfix name="role_button"]
[playbgm storage="title.mp3" volume="60"]
@jump storage="replay.ks" 
