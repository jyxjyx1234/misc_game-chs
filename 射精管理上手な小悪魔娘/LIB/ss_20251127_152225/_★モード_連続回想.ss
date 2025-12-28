#Z00
//----------------------------
//連続回想モード準備	Continuous recollection = CR

/*---

	最大10個連続で再生できる回想モードの作成。
	シンプルにワンクリックでも再生できるモードもつくる

	このシーンではデータベースの読み込みを行う

---*/


$mwnd_button_init	//最初に必ず入れる（メッセージウィンドウ枠リセット）


//------------------
//データベースの読み込み（一度だけ）


for (L[10] = 0,L[10]<= 100,L[10]+=1) {

	L[00] = database[0].get_num(L[10],0)

	$CR_DATA_INDEX[L[00]] 	= database[0].get_num(L[10],0)
	$CR_DATA_SS[L[00]] 		= database[0].get_str(L[10],1)
	$CR_DATA_ref_G[L[00]]	= database[0].get_num(L[10],2)
	$CR_DATA_MAIN[L[00]]	= 0	//未使用
	$CR_DATA_CHR[L[00]]	= database[0].get_str(L[10],4)
	$CR_DATA_TITLE[L[00]]	= ""		//未使用
	$CR_DATA_ACTION[L[00]]	= database[0].get_str(L[10],6)
	$CR_DATA_SYASEI[L[00]]	= 999 //未使用
	$CR_DATA_TAGno[L[00]]	= database[0].get_num(L[10],8)
	$CR_DATA_cancel[L[00]]	= 0 //未使用
	$CR_DATA_CGThm[L[00]]	= database[0].get_str(L[10],10)
	$CR_DATA_CGThm_patno[L[00]]	= 	database[0].get_num(L[10],11)
	$CR_DATA_COMMENT[L[00]] = database[0].get_str(L[10],12)


}




JUMP("_★モード_連続回想_動作部分")







