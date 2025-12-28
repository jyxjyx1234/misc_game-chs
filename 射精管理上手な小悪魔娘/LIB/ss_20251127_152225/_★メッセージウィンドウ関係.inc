/*---

	2024.03.19更新
	メッセージウィンドウの切り替え機能を消去し、１つだけにした

---*/


//---------------------------------
//ノベルモード

#PROPERTY	$novel_mode_flag : int
#PROPERTY	$novel_mode_special_xy : intlist[2]


#MACRO	@ノベルモードON

	$novel_mode_flag = 1
	set_mwnd(10)
	
	 clear 　 @TIMEWAIT(1000) clear
	

#MACRO	@特殊ノベルモード(@x(0),@y(0))

	$novel_mode_flag = 2
	set_mwnd(6)
	$novel_mode_special_xy[0] = @x
	$novel_mode_special_xy[1] = @y
	front.mwnd[6].set_window_pos(@x, @y)
	front.mwnd[6].object[00].create(_w06b,1,-15,-17)


#MACRO	@特殊ノベルモードX(@x(0),@y(0),@wx(0),@wy(0))

	$novel_mode_flag = 2
	set_mwnd(6)
	$novel_mode_special_xy[0] = @x
	$novel_mode_special_xy[1] = @y
	front.mwnd[6].set_window_pos(@x, @y)
	front.mwnd[6].object[00].create(_w06b,1,-15,-17)
	front.mwnd[6].object[00].x_rep.resize(1)
	front.mwnd[6].object[00].y_rep.resize(1)
	front.mwnd[6].object[00].x_rep[0] = @wx
	front.mwnd[6].object[00].y_rep[0] = @wy
	


#MACRO	@ノベルモードOFF

	close
	@TIMEWAIT(500)

	if ($novel_mode_flag == 3) { script.set_auto_savepoint_on } //セーブポイント生成解除

	$novel_mode_flag = 0
	
	set_mwnd(0)
	farcall(_window_change,0)
	$mwnd_button_init()


	
//--------------------------------
//特殊ノベルモード（自動センタリングタイプ）	★2019.02.09～

/*---

	自動的にすべてのセンタリングを行い、高さも調節される。
	ひとまず最大１０行。
	
	モードから抜けるときは必ず @ノベルモードOFF を使うこと。
	
	文章の最後にRがあるとキー入力待ちが入る。
	
	このノベルモード中はセーブポイントが置かれない。（表示が壊れるため）
	

---*/

#COMMAND $novel_mode_centering(str,str,str,str,str,str,str,str,str,str)

#MACRO @novel_mode_centering(@a,@b(""),@c(""),@d(""),@e(""),@f(""),@g(""),@h(""),@i(""),@j(""))
			$novel_mode_centering(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)


//======================================================
//-----------メッセージウィンドウだけゆらす

#MACRO 		@MW_QUAKE	front.quake[0].start_nowait(1,40,10,10,<order_message>,<order_message>,[10,6])
						front.quake[1].start_nowait(1,55,5,5,<order_message>,<order_message>,[15,0])


#MACRO	@MW_QUAKE_b01	@size_bb @MW_QUAKE
#MACRO	@MW_QUAKE_b02	@size_b @MW_QUAKE
#MACRO	@MW_QUAKE_s01	@size_ss @MW_QUAKE



//--------------------------------
//ウィンドウ装飾	★2020.04.06～

/*---

	心の中を表示するときや、怒って叫ぶとき等にウィンドウの形を変化させる。
	
	【名前】★（ ～ ）★@kwt	で、思考表現
	【名前】！「 ～ 」★@kwt	で、怒り・叫び表現（メッセージウィンドウの揺らし付与）
	
	@mind と @mind_angry で直接記述も可能
	
	最後は必ず ★@kwt をつけること（@kwt の前に「★」を忘れるな！）
	
	あるいは @mind_close で直接戻す
	
	＜正規表現検索用＞
	
	！「|★（|@＊|@★|★@kwt
	

---*/




#DEFINE	】★（		】@mind（

#DEFINE	】！「		】@mind_angry「

#DEFINE	】！『		】@mind_angry『


#DEFINE	@★	@mind		//ト書き用

#DEFINE	@＊	@mind_angry		//ト書き用


#DEFINE	★@kwt	@kwt @mind_close

#DEFINE	★@kwtclose	@kwt close @mind_close		//次の命令でメッセージウィンドウを消す場合に使う（消す前に一瞬色が戻るのがキモチワルイので）



//▼香苗の内心用のタグ

#DEFINE	<chr_mind>	if ($m10_kanae_mind_flag == 1) {
#DEFINE </chr_mind>	@kwt @mind_close }	//★@kwt を内包してるので注意


//▼キャラ内心用のタグ

//#DEFINE	<chr_mind>	if ($chr_old_message_mind_flag == 1) {
//#DEFINE </chr_mind>	}	//※ 2021.6.10 ★@kwt を内包しなくした（妹サポ時と動作が異なるので注意。｝、ので閉める前に★@kwt等が別途必要）

//▼妹サキュバス用・希莉の脳内の言葉が主人公に伝わってない用

//#DEFINE	<chr_mind_kir>	if ($chr_old_message_mind_flag == 1) {
//#DEFINE </chr_mind_kir>	}else{ @cutmado_kir_tenten }




#PROPERTY	$mind_window_save : strlist[10]


#MACRO	@mind		$mind_window_save[0] = front.mwnd[0].get_filter_file
				
					if ($novel_mode_flag == 0) {
					
						if ($mind_window_save[0] !="_spacer") {
						
							front.mwnd[0].set_filter_file($mind_window_save[0].left(4)+"s")

						}
					}
					

#MACRO	@mind_angry		$mind_window_save[0] = front.mwnd[0].get_filter_file
						
						@mw_quake
					
						if ($novel_mode_flag == 0) {
						
							if ($mind_window_save[0] !="_spacer") {
							
								front.mwnd[0].set_filter_file($mind_window_save[0]+"ang")

							}
						}

					
	
#MACRO	@mind_close		if ($mind_window_save[0] != "") {
							front.mwnd[0].set_filter_file($mind_window_save[0])
						}



