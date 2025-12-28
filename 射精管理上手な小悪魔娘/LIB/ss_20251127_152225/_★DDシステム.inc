//--------------------------------------------------------
//汎用ドラッグ＆ドロップシステム制御

/*--

◆必要なもの

・【ボタン】ドラッグする図形（自動で矩形サイズを取得）
・ボタンの初期位置の記憶
・ドラッグ中はボタンを半透明に
・【マス】ドラッグ先の矩形設定、及び返り値の設定……マスそのものをボタン認識させる？
・マスの矩形外の場合はボタンが元位置に戻るようにする
・マスに配置するボタンの形が変化出来るように（ドラッグ前は小さいの→ドラッグ後は大きくなる、みたいな）
・複数動作可能にする
・複数の【マス】に置けるようにする
・ボタンルールを作る（ボタン位置と入れ替え不可能／可能）
・ボタンのチーム化（ドラッグ前とドラッグ後のボタンを同じindexとして処理する）
・ボタンのグループ化（特定のグループの中だけでドロップや入れ替えなどが可能になる）

×ドラッグ後のものもボタン化し、ドラッグ＆ドロップ出来るように ドラッグ前：1-100 ドラッグ後：101-200（ボタン番号） で動作変化する感じ
・他のボタンの矩形に重なった場合は、ルールによってそのボタンと位置を入れ替えれるような仕様に


createする命令
実行する命令
initする命令

--*/

//----------------------------
//イニシャライズ

#DEFINE <dd_objno1> 10
#DEFINE <dd_objno2> 11

#COMMAND $dd_init


//----------------------------
//マウスが矩形に入っているかを判別

#COMMAND $mouse_rect_flag(int,int,int,int) : int



//----------------------------
//マス設定

;;※index=0は使わない

#PROPERTY $dd_mass_index : intlist[500]
#PROPERTY $dd_mass_x1 : intlist[500]
#PROPERTY $dd_mass_y1 : intlist[500]
#PROPERTY $dd_mass_x2 : intlist[500]
#PROPERTY $dd_mass_y2 : intlist[500]
#PROPERTY $dd_mass_group : intlist[500]		//ボタンと同じグループ内でないとドラッグ＆ドロップできない

#PROPERTY $dd_mass_count : int


#COMMAND $dd_mass_create(int,int,int,int,int,int)	//index,x1,y1,width,height,group  


#PROPERTY $dd_mass_property : intlist[500]	//	マスに入っているボタンのindex
#PROPERTY $dd_mass_element : intlist[500]	//	実動作させる内容


//----------------------------
//ルール１・ボタン位置と入れ替え不可能、特定の矩形内で別のボタンに変化する


#PROPERTY $dd_btn_rule1_index : intlist[500]
#PROPERTY $dd_btn_rule1_init_x : intlist[500]
#PROPERTY $dd_btn_rule1_init_y : intlist[500]
#PROPERTY $dd_btn_rule1_group : intlist[500]
#PROPERTY $dd_btn_rule1_element : intlist[500]

#COMMAND $dd_btn_create_rule1(int,str,int,int,int,int)



//----------------------------
//ルール２・同じグループのボタンと入れ替え可能、枠外に出すとルール１のボタンに戻る

#PROPERTY $dd_btn_rule2_index : intlist[500]
;;#PROPERTY $dd_btn_rule2_init_x : intlist[500]
;;#PROPERTY $dd_btn_rule2_init_y : intlist[500]
#PROPERTY $dd_btn_rule2_group : intlist[500]
;;#PROPERTY $dd_btn_rule2_element : intlist[500]

#COMMAND $dd_btn_create_rule2(int,str,int)


//----------------------------
//固定マス・動かせない、エレメント固定

#DEFINE <dd_mass_kotei_objno_plus>	100	//childに加えるObjNo値

#COMMAND $dd_mass_kotei_create(str,int,int)		//btnと混同しないように順序を変えています


