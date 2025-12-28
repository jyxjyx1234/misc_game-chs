//--------------
//システムレイアウト（コンフィグからの流用）

/*--

レイアウトに統一感をもたせるためにシステムレイアウト固定用の命令を制作する。


基本的にはコンフィグからの流用。
現在コンフィグで使っているものは過去作（いもけが）の都合から放置。そのうち統合させる。

objectで指定出来るため、excall外でも使用可能（だけど使ってない）

--*/

#DEFINE <help_text_bg_color>	"4e4e4e"



#command $ex_create_midasi(object,str,int,int,str,int)

#command $ex_create_checkbtn(object,int,str,int,int,int,int,int,str,int)	//一番うしろのstr(color)は"000,000,000"か"FFFFFF"(RGB)で表現する

#command $ex_create_pushbtn(object,int,str,int,int,int,int,str,int)

#command $ex_create_pushbtn2(object,int,str,int,int,int,int,str,int)

#command $ex_create_pushbtn3(object,int,str,int,int,int,int,str,int,int)	//最後のintでグループ番号指定版


#command $ex_create_moji(object,int,str,int,int,int)

#command $ex_create_moji2(object,int,str,int,int,int,int,int)

#command $ex_create_line(object,int,int,int,int,str)


//---------------------------------------
//★ヘルプテキスト

#COMMAND	$help_text(object,str,str)

#COMMAND	$help_text_big(object,str,str)	//★2021.10.11追加 通常より枠が大きい

#COMMAND	$help_text_big_image(object,str,str,str,int,int,int)	//★2021.10.12追加 画像つき

#COMMAND	$help_text_mini(object,str,str)	//★2023.06.15 タイトル画面用


//---------------
//カラー情報の展開

#PROPERTY $ex_color_r
#PROPERTY $ex_color_g
#PROPERTY $ex_color_b

#PROPERTY $ex_color_tmp : str
#PROPERTY $ex_color_tmp2 : str

#MACRO @ex_color_expand(@color)

		$ex_color_tmp2 = @color

		if ($ex_color_tmp2.len > 6) { // 10進数版

			$ex_color_tmp = $ex_color_tmp2.mid(0,3) $ex_color_r = $ex_color_tmp.tonum
			$ex_color_tmp = $ex_color_tmp2.mid(4,3) $ex_color_g = $ex_color_tmp.tonum
			$ex_color_tmp = $ex_color_tmp2.mid(8,3) $ex_color_b = $ex_color_tmp.tonum
			
		}else{ 
		
			$ex_color_r = $HEXA_to_DECI($ex_color_tmp2.mid(0,2))
			$ex_color_g = $HEXA_to_DECI($ex_color_tmp2.mid(2,2))
			$ex_color_b = $HEXA_to_DECI($ex_color_tmp2.mid(4,2))
			
		
		}




