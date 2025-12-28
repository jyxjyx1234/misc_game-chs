//---------------------------
//選択肢と文字オブジェクト 2023版

#DEFINE	<sentaku_objno>	140
#DEFINE	<moji_objno>	150

//文字オブジェクト用ObjNoを用意する(child,order設定込み)
#COMMAND	$obj_moji_init

//文字のセンタリング表示（改行不可、半角ｘ）
#COMMAND	$obj_moji_centering(int,int,int,int,str,int,int,str,str)

//文字の左詰め表示（改行○、半角ｘ ひとまず３行まで 文中に「R」を入れると改行）
#COMMAND	$obj_moji_left_justified(int,int,int,int,str,int,int,str,str)




//文字のセンタリング表示（改行不可、半角ｘ）※object版 2024.06.06
#COMMAND	$obj_moji_centering_obj(object,int,int,int,str,int,int,str,str)




//-----------------------
//★二択選択肢

/*---

		$obj_moji_init
		$obj_moji_centering(1,1,640,27,"FFFF00",24,1,"0000FF","どうしようか？")

		$obj_moji_left_justified(2,1, 52,547,"FFFFFF",36,1,"fb46d7","選択肢１を選択する。R二行目想定R三行目想定")
		$obj_moji_left_justified(3,1,682,547,"FFFFFF",36,1,"059b22","選択肢１を選択する。R二行目想定R三行目想定")

		$obj_moji_centering(4,1,640,696,"FFFFFF",20,1,"0000FF","▲　どちらかを選択してください　▲")

		@kwt

	上記を内包している選択肢。二択オンリー。
	
	L[00] = $sentaku_two_choices("miko_sentaku",0,1,"問題文だよ問題文だよ、問題文だよ","選択肢１Rあああああああ","選択肢２Rいいいいいいい",1,0)
	
		最初の：選択画像ファイル名
		前の２つ目と３つ目：選択画像のcutno1,cutno2
	
		後ろの２つ：sel1_status,sel2_status
			0だと選択不可。該当する文章が自動で「？？？？？」に置き換わる。→置き換わらず、「選択不可」と上にレイヤーが重なる
			1だと選択可能。
		
	
★書き方例

L[00]=$sentaku_two_choices("imonama_sentaku",1,2,"どっちに向かうべきかな…？","日常生活感強めで","過激なプレイで",1,1)

selpoint

switch(L[00]) {

	case(0) goto #sel01
	case(1) goto #sel02

}


----*/

#COMMAND	$sentaku_two_choices(str,int,int,str,str,str,int,int) : int
