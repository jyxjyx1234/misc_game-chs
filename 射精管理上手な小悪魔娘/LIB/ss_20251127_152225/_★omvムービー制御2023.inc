//omvムービー制御（HKCHRでワイプされない版）

//#DEFINE		<omv_effect_obj>	→ _★★ワイプされないObj一覧.inc

#DEFINE		<omv_effect_order>		1		//カットインより上にしたい場合は更に+1すること

#DEFINE		<omv_object_obj_back>	15	//キャラより後ろに配置
#DEFINE		<omv_object_obj_mid>	28	//立ち絵より前、バストアップより後ろ
#DEFINE		<omv_object_obj_front>	38	//キャラより前に配置

#DEFINE		<back>	0
#DEFINE		<front>	1


//------
//★画面全体エフェクト用

/*---

	$omv_effect_set
	
		stage : 0[back]	 / 1[front]
		obj_plus : ベースObjNo（<omv_effect_obj>)への加算値 エフェクトを重ねたい場合などに		※Obj_plus+1以上は自動で消えないので注意
		blend : 0[通常] / 1[加算] / 2[減算] / 3[乗算]
		loop  : 1のときループ再生	☆☆2にするとループなし＆再生をゲーム時間にあわせる（ctrlで加速できる）/ 3にするとループあり＆ゲーム時間にあわせる
		tr	  : 最終的な不透明度
		fadein_time	: trまで達するまでの時間
		fadein_wait	: 上記time分待つかどうか 1[waitあり]
		deray_time	: 表示まで遅延させる時間
		
---*/

#COMMAND	$omv_effect_set(int,int,str,int,int,int,int,int,int)		//stage,obj_plus,filename,blend,loop,tr,fadein_time,fadein_wait,deray_time

//★オブジェクト用

/*---

	$omv_object_set
	
		stage : 0[back]	 / 1[front]
		layer : 0[再背面] / 1[立ち絵とバストアップの間]	/ 2[最前面] / それ以上の数の場合、layerとobjnoをその値に設定する
		order : 0[通常] / <omv_effect_order>(=1) [通常ワイプ対象外]
		child : ★★子
		blend : 0[通常] / 1[加算] / 2[減算] / 3[乗算]
		loop  : 1のときループ再生	★★2にすると最後のフレームを表示しっぱなしになる（自動で消えないので注意）
		tr	  : 最終的な不透明度
		fadein_time	: trまで達するまでの時間
		fadein_wait	: 上記time分待つかどうか 1[waitあり]
		deray_time	: 表示まで遅延させる時間

---*/

#COMMAND	$omv_object_set(int,str,int,int,int,int,int, str, int,int,int,int,int,int)	//stage,filename,x,y,layer,order,child,[dummy],blend,loop,tr,fadein_time,fadein_wait,deray_time

#MACRO		@omv_object_wait(@objno)	front.object[@objno].child[0].wait_movie
#MACRO		@omv_object_wait_back	 front.object[<omv_object_obj_back>].child[0].wait_movie
#MACRO		@omv_object_wait_mid	 front.object[<omv_object_obj_mid>].child[0].wait_movie
#MACRO		@omv_object_wait_front	 front.object[<omv_object_obj_front>].child[0].wait_movie



//★フェード＆クリア系


#COMMAND	$omv_effect_fade(int,int,int,int)				//time,wait_flag,delay_time,int

#MACRO		@omv_effect_fade(@time(2000),@deray_time(0),@mode(2))		$omv_effect_fade(@time,0,@deray_time,@mode)
#MACRO		@omv_effect_fade_wait(@time(2000),@deray_time(0),@mode(2))	$omv_effect_fade(@time,1,@deray_time,@mode)

#MACRO		@omv_effect_clear(@Obj_Plus(0))	front.object[<omv_effect_obj> + @Obj_Plus].init

#MACRO		@omv_object_clear	front.object[<omv_object_obj_back>].init front.object[<omv_object_obj_mid>].init front.object[<omv_object_obj_front>].init

#MACRO		@omv_allclear		front.object[<omv_effect_obj>].init front.object[<omv_effect_obj>+1].init front.object[<omv_object_obj_back>].init front.object[<omv_object_obj_mid>].init front.object[<omv_object_obj_front>].init




//------------------------------------
//omvマクロ群

/*----

	あとでＳＥも一緒にすると良いと思う

-----*/


//■あやしい雰囲気の煙で充満

#MACRO		@omv_ayasii_smoke(@stage(<back>),@Obj_plus(0))		$omv_effect_set(@stage,@Obj_plus,"miko_smoke01",0,1,255,1000,0,500)


//■悪霊を倒したあとの煙

#MACRO		@omv_felldown1(@x,@y,@child(0))		@pcm_spell021 $omv_object_set(1,"miko_felldown01",@x,@y,2,0,@child,"→",0,0,192,0,0,0)
#MACRO		@omv_felldown2(@x,@y,@child(1))		@pcm_spell021 $omv_object_set(1,"miko_felldown02",@x,@y,2,0,@child,"→",0,0,192,0,0,0)

//■悪霊を倒したあとの煙(全体効果)
#MACRO		@omv_felldown_all(@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"miko_smoke02",0,2,255,0,0,0)


//キャラの後ろ		//ワイプ後も表示させたい場合は、front.object[<omv_object_obj_back>].wipe_copy = 1 などを使う

#MACRO		@omv_felldown1_back(@x,@y,@child(0))		@pcm_spell021 $omv_object_set(1,"miko_felldown01",@x,@y,0,0,@child,"→",0,0,255,0,0,0)
#MACRO		@omv_felldown2_back(@x,@y,@child(1))		@pcm_spell021 $omv_object_set(1,"miko_felldown02",@x,@y,0,0,@child,"→",0,0,255,0,0,0)

//■探知

#MACRO		@omv_detect		$omv_object_set(1,"miko_detect",0,0,0,<omv_effect_order>,0,"→",0,0,255,0,0,0)

//■走査線系

//下向き走査線（ループ）
#MACRO		@omv_line_sitadash(@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"tate_down_line",1,3,255,0,0,0)


//下向き走査線（一瞬）
#MACRO		@omv_line_sitadash_moment(@time(500),@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"tate_down_line",1,2,255,0,0,0)
														front.object[<omv_effect_obj> + @Obj_plus].tr_eve.set(0,@time,@time / 5,2)

//右向き走査線（ループ）
#MACRO		@omv_line_migidash(@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"yoko_right_line",1,3,255,0,0,0)

//右向き走査線（一瞬）
#MACRO		@omv_line_migidash_moment(@time(500),@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"yoko_right_line",1,2,255,0,0,0)
														front.object[<omv_effect_obj> + @Obj_plus].tr_eve.set(0,@time,@time / 5,2)

//■集中線
//集中線ループ
#MACRO		@omv_line_concent(@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"concent_line",1,3,255,0,0,0)

//集中線（一瞬）
#MACRO		@omv_line_concent_moment(@time(500),@Obj_plus(1))		$omv_effect_set(1,@Obj_plus,"concent_line",1,2,255,0,0,0)
														front.object[<omv_effect_obj> + @Obj_plus].tr_eve.set(0,@time,@time / 5,2)



//■スペル詠唱系	あとでファイル名変える

#MACRO		@omv_spell_detect	$omv_object_set(1,"miko_spell_detect",0,0,70,<omv_effect_order>+1,1,"→",0,2,255,0,0,0)
								front.object[70].bright_eve.turn(0,40,2000,0,0)

#MACRO		@omv_spell_guard	$omv_object_set(1,"miko_spell_def",0,0,70,<omv_effect_order>+1,1,"→",0,2,255,0,0,0)
								front.object[70].bright_eve.turn(0,40,2000,0,0)

#MACRO		@omv_spell_conf	$omv_object_set(1,"miko_spell_conf",0,0,70,<omv_effect_order>+1,1,"→",0,2,255,0,0,0)
								front.object[70].bright_eve.turn(0,40,2000,0,0)

#MACRO		@omv_spell_stup	$omv_object_set(1,"miko_spell_stup",0,0,70,<omv_effect_order>+1,1,"→",0,2,255,0,0,0)
								front.object[70].bright_eve.turn(0,40,2000,0,0)

#MACRO		@omv_spell_etc	$omv_object_set(1,"miko_spell_etc",0,0,70,<omv_effect_order>+1,1,"→",0,2,255,0,0,0)
								front.object[70].bright_eve.turn(0,40,2000,0,0)



//スペル消去用

#MACRO		@omv_spell_clear	$omv_object_set(1,"miko_spell_clear",0,0,70,<omv_effect_order>+1,1,"→",0,0,255,0,0,0)
								front.object[70].bright_eve.end


//サークルバースト

#MACRO		@omv_circle_burst	$omv_object_set(1,"miko_circle_burst",0,0,2,<omv_effect_order>,0,"→",0,0,255,0,0,0)


