#Z00

//--------------------------------
//特殊ノベルモード（自動センタリングタイプ）	★2019.02.09～
/*---

	自動的にすべてのセンタリングを行い、高さも調節される。
	ひとまず最大１０行。
	
		★確認すべきこと
		
		セーブ・ロード時の挙動
		バックログ時の挙動
		メッセージウィンドウを切り替えたときの挙動
		ノベルモードから戻った時の挙動
		
			場合によってはセーブロード禁止や、バックログジャンプの一時停止などが必要かも
			
				→一時的にセーブポイントを置かないように処理
	

---*/

command $novel_mode_centering(
			property $str0 : str,
			property $str1 : str,
			property $str2 : str,
			property $str3 : str,
			property $str4 : str,
			property $str5 : str,
			property $str6 : str,
			property $str7 : str,
			property $str8 : str,
			property $str9 : str) {


	#INC_START
	
		#PROPERTY $line_str : strlist[10]
		#PROPERTY $line_posx : intlist[10]
		#PROPERTY $line_kwt_flag : intlist[10]
		#PROPERTY $line_max_mojicount
		#PROPERTY $line_number
		#PROPERTY $line_base_x
		#PROPERTY $line_base_y
		
		#PROPERTY $line_color_flag
		
		#DEFINE		<nmc_font_size>	44	//gameexe.iniと合わせる
		#DEFINE		<nmc_line_space>	28
		
	
	#INC_END


	$novel_mode_flag = 3
	
	savepoint						//2023.06.27 入れないとエンドロード時にエラーでる…
	
	script.set_auto_savepoint_off	//セーブポイント生成禁止
	
	
	
	close
	
	set_mwnd(11)
	
	
	//------------
	//初期化
	
	$line_str.init
	$line_posx.init
	$line_kwt_flag.init
	$line_max_mojicount = 0
	$line_number = 0
	$line_base_x = 0
	$line_base_y = 0
	$line_color_flag = 0
	
	rep_pos
	
	//------------
	//準備
	
	$line_base_x = 960 - (<nmc_font_size> / 2)
	$line_base_y = 540 - (<nmc_font_size> / 2)
	
	$line_str[0] = $str0
	$line_str[1] = $str1
	$line_str[2] = $str2
	$line_str[3] = $str3
	$line_str[4] = $str4
	$line_str[5] = $str5
	$line_str[6] = $str6
	$line_str[7] = $str7
	$line_str[8] = $str8
	$line_str[9] = $str9
	
	
	//------------
	//2019.06.27追加 背景が白だった場合、黒文字になるように変更
	
	if (front.object[<bg_novelbg_objno>].exist_type == 1) {
	
		if (front.object[<bg_novelbg_objno>].get_file_name == "_white") {
		
			$line_color_flag = 1
			
			syscom.set_font_decoration(0)
			
		}
		
	}
	
	
	//------------
	//Rがあった場合、その文字分を消して@kwtフラグを立たせる
	//一番長い文字列を検索して、base_xの値を確定させる
	//入力された行の数を見て、base_yの値を確定させる
	
	

	for(L[00] = 0,L[00]<=9,L[00]+= 1) {
	
		if ($line_str[L[00]] == "") { break }
	
		if ($line_str[L[00]].search("R") != -1) {
		
			$line_str[L[00]] = $line_str[L[00]].mid(0,($line_str[L[00]].cnt - 1))
			$line_kwt_flag[L[00]] = 1
		
		}
	
	
		if ($line_max_mojicount < $line_str[L[00]].cnt) {
		
			$line_max_mojicount = $line_str[L[00]].cnt
		
		}
	
	}
	
	$line_number = L[00] 
		
	
	
	if ($line_number <= 0) {$line_number = 1}	//命令入力の時点であり得ないけど、エラーでないように一応
	
	$line_base_x = $line_base_x - (($line_max_mojicount / 2) * <nmc_font_size>)
	$line_base_y = $line_base_y - (($line_number - 1) * ((<nmc_font_size> + <nmc_line_space>) / 2))
	
	
	
	
	//---------------
	//★実表示部分
	

	
	for(L[00] = 0,L[00]<$line_number,L[00]+= 1) {
	
		//位置を計算
		
		L[02] = 0
		L[03] = 0
		
		L[01] = $line_max_mojicount - $line_str[L[00]].cnt
		
		if (L[01] % 2 == 1) {L[02] = <nmc_font_size> / 2} //奇数の場合は半文字分ずらす
		if ($line_str[L[00]].search_last("。") != -1) { L[03] = <nmc_font_size> / 2} //禁則文字がある場合は右にずらす
		if ($line_str[L[00]].search_last("、") != -1) { L[03] = <nmc_font_size> / 2}
		
		
		
		$line_posx[L[00]] = $line_base_x + ((L[01] / 2) * <nmc_font_size>) + L[02] + L[03]
		
		
		
		//表示

		if ($line_color_flag == 1) {color(15)}

		rep_pos($line_posx[L[00]],$line_base_y) PRINT($line_str[L[00]])


		if ($line_kwt_flag[L[00]] == 1) {@kwt} else { nl }

	}
	
	
	
	page
	
	if ($line_color_flag == 1) {
	
		syscom.set_font_decoration(@フォント縁設定一時ストック)
		
		color
		
	}
	

}

