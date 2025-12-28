
//---------------------------------
//BGマクロ	※まだ中身処理変えてない


#MACRO @BG01(@BGName("_black"),@time(1000),@wait(1))	@BG(@BGName,1,@time,1)	//左から
			

#MACRO @BG02(@BGName("_black"))	@BG(@BGName)

#MACRO @BG03(@BGName("_black"))	@BG(@BGName)

//---------------------------------
//BGマクロ	@BG変更前のバージョン

/*

//①場所移動用

#MACRO @BG01(@BGName("_black"))	@BG(@BGName,101,1700,2,2,50)


//②時間経過演出用　今は上と中身一緒、後で変える

#MACRO @BG02(@BGName("_black"))	@BG(@BGName,102,1700,5,3,80)


//③日付時間経過演出用

#MACRO @BG03(@BGName("_black"))	@BG_MASK(@BGName,0)


//④場所高速移動_ジャンプ	縦方向も有り

#MACRO	@BG04(@BGName("_black"))	@BG(@BGName,220,1000,1,50,20,5)
#MACRO	@BG04_tate(@BGName("_black"))	@BG(@BGName,220,1000,0,20,40,5)


//⑤場所高速移動_走って到達

#MACRO	@BG05(@BGName("_black"))	@BG(@BGName,041,500,0,1,2)


//⑥横早いワイプ 右→ 一度ブラックを挟むので同じ背景でも使える

#MACRO	@BG06(@BGName("_black"))	@omv_effect_fade(250)
									@BG(_black,200,250,2,1,1)
									@BG(@BGName,200,250,2,1,1)

#MACRO	@BG06_in	@omv_effect_fade(250)
					@BG(_black,200,250,2,1,1)

#MACRO	@BG06_out(@BGName)				@BG(@BGName,200,250,2,1,1)

//⑦横早いワイプ、⑥の左右反転 一度ブラックを挟むので同じ背景でも使える

#MACRO	@BG07(@BGName("_black"))	@omv_effect_fade(250)
									@BG(_black,200,250,3,1,1)
									@BG(@BGName,200,250,3,1,1)

#MACRO	@BG07_in	@omv_effect_fade(250)
					@BG(_black,200,250,3,1,1)

#MACRO	@BG07_out(@BGName)				@BG(@BGName,200,250,3,1,1)

*/


