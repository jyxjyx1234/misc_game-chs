//--------------------
//連続回想モード用


//グローバルフラグ化

#DEFINE     <CR_INDEX>  080     //G[80]～G[99]を使用

#DEFINE    $kaisou_sys_mode  G[99]
#DEFINE    $kaisou_play_bgm  G[98]
#DEFINE    @回想モードからリターン  G[97]
#DEFINE    $kaisou_tate_slider  G[96]


//その他フラグ

#PROPERTY $kaisou_mode
#DEFINE @回想モード中 $kaisou_mode

#PROPERTY	$CR_MODE : int		//回想モード 0:通常 1:連続     BGM判定で使ってるっぽい


//データベース参照

#PROPERTY	$CR_DATA_INDEX 	: intlist[2000]
#PROPERTY	$CR_DATA_SS		: strlist[2000]
#PROPERTY	$CR_DATA_ref_G	: intlist[2000]
#PROPERTY	$CR_DATA_MAIN	: intlist[2000]
#PROPERTY	$CR_DATA_SUBnum	: intlist[2000]		//未使用
#PROPERTY	$CR_DATA_CHR	: strlist[2000]
#PROPERTY	$CR_DATA_TITLE	: strlist[2000]
#PROPERTY	$CR_DATA_ACTION	: strlist[2000]
#PROPERTY	$CR_DATA_SYASEI	: intlist[2000]
#PROPERTY	$CR_DATA_TAGno	: intlist[2000]
#PROPERTY	$CR_DATA_cancel	: intlist[2000]
#PROPERTY	$CR_DATA_CGThm	: strlist[2000]
#PROPERTY	$CR_DATA_CGThm_patno	: intlist[2000]
#PROPERTY	$CR_DATA_pos	: intlist[2000]		//未使用
#PROPERTY	$CR_DATA_COMMENT : strlist[2000]


//データベースからのコピー先

#PROPERTY	$CR_SET_INDEX	: intlist[10]
#PROPERTY	$CR_SET_SS		: strlist[10]
#PROPERTY	$CR_SET_TITLE	: strlist[10]
#PROPERTY	$CR_SET_ACTION	: strlist[10]
#PROPERTY	$CR_SET_SYASEI	: intlist[10]
#PROPERTY	$CR_SET_TAGno	: intlist[10]
#PROPERTY	$CR_SET_cancel	: intlist[10]
#PROPERTY	$CR_SET_CGThm	: strlist[10]
#PROPERTY	$CR_SET_CGThm_patno	: intlist[10]
#PROPERTY	$CR_SET_DATA_COMMENT : strlist[10]

#PROPERTY	$CR_SET_CHR		: strlist[10]


//シーン再生時のフラグ（各シーンに埋め込む）

#PROPERTY	$CR_SYASEI
#PROPERTY	$CR_TAGNo
#PROPERTY	$CR_cancel
#PROPERTY	$CR_BGM	:	str	//連続10回回想モード時に再生するBGM











