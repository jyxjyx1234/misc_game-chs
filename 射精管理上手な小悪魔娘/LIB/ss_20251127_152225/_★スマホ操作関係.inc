//--------------------------------
//★スマホ操作関係

/*-------------------

	ＨＡＭＬＩＮＥを使ったスマホ操作関連。
	（いわゆるＬＩＮＥアプリの模倣）

--------------------*/


//--------------------------------
//★スマホ初期化


#DEFINE <smaho_objno>	180

#DEFINE	<smaho_init_x> 720
#DEFINE	<smaho_init_y> 120


#PROPERTY $smaho_x
#PROPERTY $smaho_y

#PROPERTY $smaho_clip_left
#PROPERTY $smaho_clip_right
#PROPERTY $smaho_clip_top
#PROPERTY $smaho_clip_bottom

#COMMAND	$smaho_init(int)	//int:位置設定 0:中央 1:左側 2:右側 それ以外：任意の横軸（高さは変更出来ない）



//--------------------------------
//★ＨＡＭＬＩＮＥ起動

#COMMAND $hamline_init(int)

#PROPERTY $hamline_y
#PROPERTY $hamline_rep_y

#PROPERTY $hamline_message_count
#PROPERTY $hamline_message_height

#DEFINE <hamline_message_font_size> 20
#DEFINE <hamline_message_new_line_len> 13	//折り返す文字数


#COMMAND $hamline_message_L(int,str,str)
#COMMAND $hamline_message_R(str)

#COMMAND $hamline_stamp_L(int,str,int)
#COMMAND $hamline_stamp_R(int)

//★2020.07.17追加 画像版 今は大きさそのままを表示だが将来的に自動縮小させるようにしたい
#COMMAND $hamline_image_L(int,str,str,int)	//iconNo,name,filename,patno


//--------------------------------
//★スマホ終了

#COMMAND	$smaho_exit







