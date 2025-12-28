#Z00

command	$cbs_jur(property $objno) {

		@cbs_base_set("","bst_jur1A_face_mayu","bst_jur1A_face_eye","bst_jur1A_face_mouth","","")
		

		switch($chr_filename_face[$objno]) {

			//今回デフォルメ目なし、目の形ごとに揃える

			case("00") @cbs_set("","00","00","00")	//微笑み
			case("01") @cbs_set("","10","00","10")
			case("02") @cbs_set("","20","00","20")
			case("03") @cbs_set("","30","00","30")
			case("04") @cbs_set("","40","00","40")
			case("05") @cbs_set("","50","00","50")
			case("06") @cbs_set("","60","00","60")
			case("07") @cbs_set("","70","00","70")
			case("08") @cbs_set("","80","00","80")
			case("09") @cbs_set("","90","00","90")

			case("10") @cbs_set("","10","10","10")	//笑顔
			case("11") @cbs_set("","00","10","00")
			case("12") @cbs_set("","20","10","20")
			case("13") @cbs_set("","30","10","30")
			case("14") @cbs_set("","40","10","40")
			case("15") @cbs_set("","50","10","50")
			case("16") @cbs_set("","60","10","60")
			case("17") @cbs_set("","70","10","70")
			case("18") @cbs_set("","80","10","80")
			case("19") @cbs_set("","90","10","90")
			
			case("20") @cbs_set("","20","20","20")	//しょんぼり
			case("21") @cbs_set("","00","20","00")
			case("22") @cbs_set("","10","20","10")
			case("23") @cbs_set("","30","20","30")
			case("24") @cbs_set("","40","20","40")
			case("25") @cbs_set("","50","20","50")
			case("26") @cbs_set("","60","20","60")
			case("27") @cbs_set("","70","20","70")
			case("28") @cbs_set("","80","20","80")
			case("29") @cbs_set("","90","20","90")
			
			case("30") @cbs_set("","30","30","30")	//むすっ
			case("31") @cbs_set("","00","30","00")
			case("32") @cbs_set("","10","30","10")
			case("33") @cbs_set("","20","30","20")
			case("34") @cbs_set("","40","30","40")
			case("35") @cbs_set("","50","30","50")
			case("36") @cbs_set("","60","30","60")
			case("37") @cbs_set("","70","30","70")
			case("38") @cbs_set("","80","30","80")
			case("39") @cbs_set("","90","30","90")
			
			case("40") @cbs_set("","40","40","40")	//驚き
			case("41") @cbs_set("","00","40","00")
			case("42") @cbs_set("","10","40","10")
			case("43") @cbs_set("","20","40","20")
			case("44") @cbs_set("","30","40","30")
			case("45") @cbs_set("","50","40","50")
			case("46") @cbs_set("","60","40","60")
			case("47") @cbs_set("","70","40","70")
			case("48") @cbs_set("","80","40","80")
			case("49") @cbs_set("","90","40","90")
			
			case("50") @cbs_set("","50","50","50")	//真剣
			case("51") @cbs_set("","00","50","00")
			case("52") @cbs_set("","10","50","10")
			case("53") @cbs_set("","20","50","20")
			case("54") @cbs_set("","30","50","30")
			case("55") @cbs_set("","40","50","40")
			case("56") @cbs_set("","60","50","60")
			case("57") @cbs_set("","70","50","70")
			case("58") @cbs_set("","80","50","80")
			case("59") @cbs_set("","90","50","90")
			
			case("60") @cbs_set("","60","60","60")	//ジト目
			case("61") @cbs_set("","00","60","00")
			case("62") @cbs_set("","10","60","10")
			case("63") @cbs_set("","20","60","20")
			case("64") @cbs_set("","30","60","30")
			case("65") @cbs_set("","40","60","40")
			case("66") @cbs_set("","50","60","50")
			case("67") @cbs_set("","70","60","70")
			case("68") @cbs_set("","80","60","80")
			case("69") @cbs_set("","90","60","90")

			case("70") @cbs_set("","70","70","70")	//アオリ１
			case("71") @cbs_set("","00","70","00")
			case("72") @cbs_set("","10","70","10")
			case("73") @cbs_set("","20","70","20")
			case("74") @cbs_set("","30","70","30")
			case("75") @cbs_set("","40","70","40")
			case("76") @cbs_set("","50","70","50")
			case("77") @cbs_set("","60","70","60")
			case("78") @cbs_set("","80","70","80")
			case("79") @cbs_set("","90","70","90")

			case("80") @cbs_set("","80","80","80")	//アオリ２
			case("81") @cbs_set("","00","80","00")
			case("82") @cbs_set("","10","80","10")
			case("83") @cbs_set("","20","80","20")
			case("84") @cbs_set("","30","80","30")
			case("85") @cbs_set("","40","80","40")
			case("86") @cbs_set("","50","80","50")
			case("87") @cbs_set("","60","80","60")
			case("88") @cbs_set("","70","80","70")
			case("89") @cbs_set("","90","80","90")
			
			case("90") @cbs_set("","90","90","90")	//アオリ３
			case("91") @cbs_set("","00","90","00")
			case("92") @cbs_set("","10","90","10")
			case("93") @cbs_set("","20","90","20")
			case("94") @cbs_set("","30","90","30")
			case("95") @cbs_set("","40","90","40")
			case("96") @cbs_set("","50","90","50")
			case("97") @cbs_set("","60","90","60")
			case("98") @cbs_set("","70","90","70")
			case("99") @cbs_set("","80","90","80")
			
			case("A0") @cbs_set("","A0","A0","A0")	//見下し１
			case("A1") @cbs_set("","00","A0","00")
			case("A2") @cbs_set("","10","A0","10")
			case("A3") @cbs_set("","20","A0","20")
			case("A4") @cbs_set("","30","A0","30")
			case("A5") @cbs_set("","40","A0","40")
			case("A6") @cbs_set("","50","A0","50")
			case("A7") @cbs_set("","60","A0","60")
			case("A8") @cbs_set("","70","A0","70")
			case("A9") @cbs_set("","80","A0","80")
			
			case("B0") @cbs_set("","B0","B0","B0")	//見下し２
			case("B1") @cbs_set("","00","B0","00")
			case("B2") @cbs_set("","10","B0","10")
			case("B3") @cbs_set("","20","B0","20")
			case("B4") @cbs_set("","30","B0","30")
			case("B5") @cbs_set("","40","B0","40")
			case("B6") @cbs_set("","50","B0","50")
			case("B7") @cbs_set("","60","B0","60")
			case("B8") @cbs_set("","70","B0","70")
			case("B9") @cbs_set("","80","B0","80")
			
			case("C0") @cbs_set("","00","C0","00")	//ウィンク右目
			case("C1") @cbs_set("","10","C0","10")
			case("C2") @cbs_set("","20","C0","20")
			case("C3") @cbs_set("","30","C0","30")
			case("C4") @cbs_set("","40","C0","40")
			case("C5") @cbs_set("","50","C0","50")
			case("C6") @cbs_set("","60","C0","60")
			case("C7") @cbs_set("","70","C0","70")
			case("C8") @cbs_set("","80","C0","80")
			case("C9") @cbs_set("","90","C0","90")
			
			case("D0") @cbs_set("","00","D0","00")	//ウィンク左目
			case("D1") @cbs_set("","10","D0","10")
			case("D2") @cbs_set("","20","D0","20")
			case("D3") @cbs_set("","30","D0","30")
			case("D4") @cbs_set("","40","D0","40")
			case("D5") @cbs_set("","50","D0","50")
			case("D6") @cbs_set("","60","D0","60")
			case("D7") @cbs_set("","70","D0","70")
			case("D8") @cbs_set("","80","D0","80")
			case("D9") @cbs_set("","90","D0","90")

			case("E0") @cbs_set("","00","E0","00")	//右目見開き
			case("E1") @cbs_set("","10","E0","10")
			case("E2") @cbs_set("","20","E0","20")
			case("E3") @cbs_set("","30","E0","30")
			case("E4") @cbs_set("","40","E0","40")
			case("E5") @cbs_set("","50","E0","50")
			case("E6") @cbs_set("","60","E0","60")
			case("E7") @cbs_set("","70","E0","70")
			case("E8") @cbs_set("","80","E0","80")
			case("E9") @cbs_set("","90","E0","90")

			case("F0") @cbs_set("","00","F0","00")	//左目見開き
			case("F1") @cbs_set("","10","F0","10")
			case("F2") @cbs_set("","20","F0","20")
			case("F3") @cbs_set("","30","F0","30")
			case("F4") @cbs_set("","40","F0","40")
			case("F5") @cbs_set("","50","F0","50")
			case("F6") @cbs_set("","60","F0","60")
			case("F7") @cbs_set("","70","F0","70")
			case("F8") @cbs_set("","80","F0","80")
			case("F9") @cbs_set("","90","F0","90")

			case("G0") @cbs_set("","00","00","0A")	//その他パーツ確認用
			case("G1") @cbs_set("","C0","C0","C0")
			case("G2") @cbs_set("","D0","D0","D0")
			case("G3") @cbs_set("","E0","E0","E0")
			case("G4") @cbs_set("","F0","F0","F0")
			case("G5") @cbs_set("","","","")
			case("G6") @cbs_set("","","","")
			case("G7") @cbs_set("","","","")
			case("G8") @cbs_set("","","","")
			case("G9") @cbs_set("","","","")

			case("X0") @cbs_set("","00","X0","00")	//下弦弧状
			case("X1") @cbs_set("","10","X0","10")
			case("X2") @cbs_set("","20","X0","20")
			case("X3") @cbs_set("","30","X0","30")
			case("X4") @cbs_set("","40","X0","40")
			case("X5") @cbs_set("","50","X0","50")
			case("X6") @cbs_set("","60","X0","60")
			case("X7") @cbs_set("","70","X0","70")
			case("X8") @cbs_set("","80","X0","80")
			case("X9") @cbs_set("","90","X0","90")

			case("Y0") @cbs_set("","00","","00")	//目なし
			case("Y1") @cbs_set("","10","","10")
			case("Y2") @cbs_set("","20","","20")
			case("Y3") @cbs_set("","30","","30")
			case("Y4") @cbs_set("","40","","40")
			case("Y5") @cbs_set("","50","","50")
			case("Y6") @cbs_set("","60","","60")
			case("Y7") @cbs_set("","70","","70")
			case("Y8") @cbs_set("","80","","80")
			case("Y9") @cbs_set("","90","","90")
			
			case("Z0") @cbs_set("","","","00")	//眉＆目なし
			case("Z1") @cbs_set("","","","10")
			case("Z2") @cbs_set("","","","20")
			case("Z3") @cbs_set("","","","30")
			case("Z4") @cbs_set("","","","40")
			case("Z5") @cbs_set("","","","50")
			case("Z6") @cbs_set("","","","60")
			case("Z7") @cbs_set("","","","70")
			case("Z8") @cbs_set("","","","80")
			case("Z9") @cbs_set("","","","90")

			
			default	@cbs_set("","00","00","00")
			
		
		}


		//★文字列を合成する パーツ番号が2桁の場合のみ合成、それ以外は過去作と同じ挙動にする
		
		for (L[00] = 0,L[00] < 6,L[00] += 1) {
		
			if ($cbs_patno[L[00]] == "") {
			
				$chr_Blend_Sys_childobj[L[00]] = ""	

			
			}elseif ($cbs_patno[L[00]].len == 2) {
			
				$chr_Blend_Sys_childobj[L[00]] = $cbs_base[L[00]] + $cbs_patno[L[00]]
			
			}else {
			
				$chr_Blend_Sys_childobj[L[00]] = $cbs_patno[L[00]]
			
			}
			
		}
		
		
		
		//★顔エフェクトを追加する
		//★2019.0303 ちょびっと改造 $chr_Blend_Sys_childobj[0]に予め何かが入っているときは、childobj[4]に変更する
		
		switch($chr_filename_effect[$objno]) {
		
			case("0") $chr_str_tmp = ""
			case("1") $chr_str_tmp = "bst_jur1A_effect100"
			case("2") $chr_str_tmp = "bst_jur1A_effect200"
			case("3") $chr_str_tmp = ""
			case("4") $chr_str_tmp = ""
			case("5") $chr_str_tmp = ""
			case("6") $chr_str_tmp = ""
			case("7") $chr_str_tmp = ""
			case("8") $chr_str_tmp = ""
			case("9") $chr_str_tmp = ""
			
			case("A") $chr_str_tmp = "bst_jur1A_effectA00"
			case("B") $chr_str_tmp = "bst_jur1A_effectB00"
			case("C") $chr_str_tmp = "bst_jur1A_effectC00"
			case("D") $chr_str_tmp = "bst_jur1A_effectD00"

			case("X") $chr_str_tmp = "bst_jur1A_effectX00"
			case("Y") $chr_str_tmp = "bst_jur1A_effectY00"
		
		}
		
		
		if ($chr_Blend_Sys_childobj[0] != "") {
		
			$chr_Blend_Sys_childobj[4] = $chr_str_tmp
		
		
		}else {
		
			$chr_Blend_Sys_childobj[0] = $chr_str_tmp
		
		}


}






command	$cbs_kas(property $objno) {

		@cbs_base_set("","bst_kas1A_face_mayu","bst_kas1A_face_eye","bst_kas1A_face_mouth","","")
		

		switch($chr_filename_face[$objno]) {

			//今回デフォルメ目なし、目の形ごとに揃える
			
			case("00") @cbs_set("","00","00","00")	//微笑み
			case("01") @cbs_set("","10","00","10")
			case("02") @cbs_set("","20","00","20")
			case("03") @cbs_set("","30","00","30")
			case("04") @cbs_set("","40","00","40")
			case("05") @cbs_set("","50","00","50")
			case("06") @cbs_set("","60","00","60")
			case("07") @cbs_set("","70","00","70")
			case("08") @cbs_set("","80","00","80")
			case("09") @cbs_set("","90","00","90")

			case("10") @cbs_set("","10","10","10")	//笑顔
			case("11") @cbs_set("","00","10","00")
			case("12") @cbs_set("","20","10","20")
			case("13") @cbs_set("","30","10","30")
			case("14") @cbs_set("","40","10","40")
			case("15") @cbs_set("","50","10","50")
			case("16") @cbs_set("","60","10","60")
			case("17") @cbs_set("","70","10","70")
			case("18") @cbs_set("","80","10","80")
			case("19") @cbs_set("","90","10","90")
			
			case("20") @cbs_set("","20","20","20")	//しょんぼり
			case("21") @cbs_set("","00","20","00")
			case("22") @cbs_set("","10","20","10")
			case("23") @cbs_set("","30","20","30")
			case("24") @cbs_set("","40","20","40")
			case("25") @cbs_set("","50","20","50")
			case("26") @cbs_set("","60","20","60")
			case("27") @cbs_set("","70","20","70")
			case("28") @cbs_set("","80","20","80")
			case("29") @cbs_set("","90","20","90")
			
			case("30") @cbs_set("","30","30","30")	//むすっ
			case("31") @cbs_set("","00","30","00")
			case("32") @cbs_set("","10","30","10")
			case("33") @cbs_set("","20","30","20")
			case("34") @cbs_set("","40","30","40")
			case("35") @cbs_set("","50","30","50")
			case("36") @cbs_set("","60","30","60")
			case("37") @cbs_set("","70","30","70")
			case("38") @cbs_set("","80","30","80")
			case("39") @cbs_set("","90","30","90")
			
			case("40") @cbs_set("","40","40","40")	//驚き
			case("41") @cbs_set("","00","40","00")
			case("42") @cbs_set("","10","40","10")
			case("43") @cbs_set("","20","40","20")
			case("44") @cbs_set("","30","40","30")
			case("45") @cbs_set("","50","40","50")
			case("46") @cbs_set("","60","40","60")
			case("47") @cbs_set("","70","40","70")
			case("48") @cbs_set("","80","40","80")
			case("49") @cbs_set("","90","40","90")
			
			case("50") @cbs_set("","50","50","50")	//真剣
			case("51") @cbs_set("","00","50","00")
			case("52") @cbs_set("","10","50","10")
			case("53") @cbs_set("","20","50","20")
			case("54") @cbs_set("","30","50","30")
			case("55") @cbs_set("","40","50","40")
			case("56") @cbs_set("","60","50","60")
			case("57") @cbs_set("","70","50","70")
			case("58") @cbs_set("","80","50","80")
			case("59") @cbs_set("","90","50","90")
			
			case("60") @cbs_set("","60","60","60")	//ジト目
			case("61") @cbs_set("","00","60","00")
			case("62") @cbs_set("","10","60","10")
			case("63") @cbs_set("","20","60","20")
			case("64") @cbs_set("","30","60","30")
			case("65") @cbs_set("","40","60","40")
			case("66") @cbs_set("","50","60","50")
			case("67") @cbs_set("","70","60","70")
			case("68") @cbs_set("","80","60","80")
			case("69") @cbs_set("","90","60","90")

			case("70") @cbs_set("","70","70","70")	//アオリ１
			case("71") @cbs_set("","00","70","00")
			case("72") @cbs_set("","10","70","10")
			case("73") @cbs_set("","20","70","20")
			case("74") @cbs_set("","30","70","30")
			case("75") @cbs_set("","40","70","40")
			case("76") @cbs_set("","50","70","50")
			case("77") @cbs_set("","60","70","60")
			case("78") @cbs_set("","80","70","80")
			case("79") @cbs_set("","90","70","90")

			case("80") @cbs_set("","80","80","80")	//アオリ２
			case("81") @cbs_set("","00","80","00")
			case("82") @cbs_set("","10","80","10")
			case("83") @cbs_set("","20","80","20")
			case("84") @cbs_set("","30","80","30")
			case("85") @cbs_set("","40","80","40")
			case("86") @cbs_set("","50","80","50")
			case("87") @cbs_set("","60","80","60")
			case("88") @cbs_set("","70","80","70")
			case("89") @cbs_set("","90","80","90")
			
			case("90") @cbs_set("","90","90","90")	//アオリ３
			case("91") @cbs_set("","00","90","00")
			case("92") @cbs_set("","10","90","10")
			case("93") @cbs_set("","20","90","20")
			case("94") @cbs_set("","30","90","30")
			case("95") @cbs_set("","40","90","40")
			case("96") @cbs_set("","50","90","50")
			case("97") @cbs_set("","60","90","60")
			case("98") @cbs_set("","70","90","70")
			case("99") @cbs_set("","80","90","80")
			
			case("A0") @cbs_set("","A0","A0","A0")	//見下し１
			case("A1") @cbs_set("","00","A0","00")
			case("A2") @cbs_set("","10","A0","10")
			case("A3") @cbs_set("","20","A0","20")
			case("A4") @cbs_set("","30","A0","30")
			case("A5") @cbs_set("","40","A0","40")
			case("A6") @cbs_set("","50","A0","50")
			case("A7") @cbs_set("","60","A0","60")
			case("A8") @cbs_set("","70","A0","70")
			case("A9") @cbs_set("","80","A0","80")
			
			case("B0") @cbs_set("","B0","B0","B0")	//見下し２
			case("B1") @cbs_set("","00","B0","00")
			case("B2") @cbs_set("","10","B0","10")
			case("B3") @cbs_set("","20","B0","20")
			case("B4") @cbs_set("","30","B0","30")
			case("B5") @cbs_set("","40","B0","40")
			case("B6") @cbs_set("","50","B0","50")
			case("B7") @cbs_set("","60","B0","60")
			case("B8") @cbs_set("","70","B0","70")
			case("B9") @cbs_set("","80","B0","80")
			
			case("C0") @cbs_set("","00","C0","00")	//ウィンク右目
			case("C1") @cbs_set("","10","C0","10")
			case("C2") @cbs_set("","20","C0","20")
			case("C3") @cbs_set("","30","C0","30")
			case("C4") @cbs_set("","40","C0","40")
			case("C5") @cbs_set("","50","C0","50")
			case("C6") @cbs_set("","60","C0","60")
			case("C7") @cbs_set("","70","C0","70")
			case("C8") @cbs_set("","80","C0","80")
			case("C9") @cbs_set("","90","C0","90")
			
			case("D0") @cbs_set("","00","D0","00")	//ウィンク左目
			case("D1") @cbs_set("","10","D0","10")
			case("D2") @cbs_set("","20","D0","20")
			case("D3") @cbs_set("","30","D0","30")
			case("D4") @cbs_set("","40","D0","40")
			case("D5") @cbs_set("","50","D0","50")
			case("D6") @cbs_set("","60","D0","60")
			case("D7") @cbs_set("","70","D0","70")
			case("D8") @cbs_set("","80","D0","80")
			case("D9") @cbs_set("","90","D0","90")

			case("E0") @cbs_set("","00","E0","00")	//右目見開き
			case("E1") @cbs_set("","10","E0","10")
			case("E2") @cbs_set("","20","E0","20")
			case("E3") @cbs_set("","30","E0","30")
			case("E4") @cbs_set("","40","E0","40")
			case("E5") @cbs_set("","50","E0","50")
			case("E6") @cbs_set("","60","E0","60")
			case("E7") @cbs_set("","70","E0","70")
			case("E8") @cbs_set("","80","E0","80")
			case("E9") @cbs_set("","90","E0","90")

			case("F0") @cbs_set("","00","F0","00")	//左目見開き
			case("F1") @cbs_set("","10","F0","10")
			case("F2") @cbs_set("","20","F0","20")
			case("F3") @cbs_set("","30","F0","30")
			case("F4") @cbs_set("","40","F0","40")
			case("F5") @cbs_set("","50","F0","50")
			case("F6") @cbs_set("","60","F0","60")
			case("F7") @cbs_set("","70","F0","70")
			case("F8") @cbs_set("","80","F0","80")
			case("F9") @cbs_set("","90","F0","90")
			
			case("G0") @cbs_set("","00","00","00")	//その他パーツ確認用
			case("G1") @cbs_set("","C0","C0","C0")
			case("G2") @cbs_set("","D0","D0","D0")
			case("G3") @cbs_set("","E0","E0","E0")
			case("G4") @cbs_set("","F0","F0","F0")
			case("G5") @cbs_set("","","","")
			case("G6") @cbs_set("","","","")
			case("G7") @cbs_set("","","","")
			case("G8") @cbs_set("","","","")
			case("G9") @cbs_set("","","","")
			
			
			case("X0") @cbs_set("","00","X0","00")	//下弦弧状
			case("X1") @cbs_set("","10","X0","10")
			case("X2") @cbs_set("","20","X0","20")
			case("X3") @cbs_set("","30","X0","30")
			case("X4") @cbs_set("","40","X0","40")
			case("X5") @cbs_set("","50","X0","50")
			case("X6") @cbs_set("","60","X0","60")
			case("X7") @cbs_set("","70","X0","70")
			case("X8") @cbs_set("","80","X0","80")
			case("X9") @cbs_set("","90","X0","90")
			
			case("Y0") @cbs_set("","00","","00")	//目なし
			case("Y1") @cbs_set("","10","","10")
			case("Y2") @cbs_set("","20","","20")
			case("Y3") @cbs_set("","30","","30")
			case("Y4") @cbs_set("","40","","40")
			case("Y5") @cbs_set("","50","","50")
			case("Y6") @cbs_set("","60","","60")
			case("Y7") @cbs_set("","70","","70")
			case("Y8") @cbs_set("","80","","80")
			case("Y9") @cbs_set("","90","","90")
			
			case("Z0") @cbs_set("","","","00")	//眉＆目なし
			case("Z1") @cbs_set("","","","10")
			case("Z2") @cbs_set("","","","20")
			case("Z3") @cbs_set("","","","30")
			case("Z4") @cbs_set("","","","40")
			case("Z5") @cbs_set("","","","50")
			case("Z6") @cbs_set("","","","60")
			case("Z7") @cbs_set("","","","70")
			case("Z8") @cbs_set("","","","80")
			case("Z9") @cbs_set("","","","90")
			
			
			default	@cbs_set("","00","00","00")
			
		
		}




		//★文字列を合成する パーツ番号が2桁の場合のみ合成、それ以外は過去作と同じ挙動にする
		
		for (L[00] = 0,L[00] < 6,L[00] += 1) {
		
			if ($cbs_patno[L[00]] == "") {
			
				$chr_Blend_Sys_childobj[L[00]] = ""	

			
			}elseif ($cbs_patno[L[00]].len == 2) {
			
				$chr_Blend_Sys_childobj[L[00]] = $cbs_base[L[00]] + $cbs_patno[L[00]]
			
			}else {
			
				$chr_Blend_Sys_childobj[L[00]] = $cbs_patno[L[00]]
			
			}
			
		}
		
		
		
		//★顔エフェクトを追加する
		//★2019.0303 ちょびっと改造 $chr_Blend_Sys_childobj[0]に予め何かが入っているときは、childobj[4]に変更する
		
		switch($chr_filename_effect[$objno]) {
		
			case("0") $chr_str_tmp = ""
			case("1") $chr_str_tmp = "bst_kas1A_effect100"
			case("2") $chr_str_tmp = "bst_kas1A_effect200"
			case("3") $chr_str_tmp = ""
			case("4") $chr_str_tmp = ""
			case("5") $chr_str_tmp = ""
			case("6") $chr_str_tmp = ""
			case("7") $chr_str_tmp = ""
			case("8") $chr_str_tmp = ""
			case("9") $chr_str_tmp = ""
			
			case("A") $chr_str_tmp = "bst_kas1A_effectA00"
			case("B") $chr_str_tmp = "bst_kas1A_effectB00"
			case("C") $chr_str_tmp = "bst_kas1A_effectC00"
			case("D") $chr_str_tmp = "bst_kas1A_effectD00"

			case("X") $chr_str_tmp = "bst_kas1A_effectX00"
			case("Y") $chr_str_tmp = "bst_kas1A_effectY00"
		
		}
		
		
		if ($chr_Blend_Sys_childobj[0] != "") {
		
			$chr_Blend_Sys_childobj[4] = $chr_str_tmp
		
		
		}else {
		
			$chr_Blend_Sys_childobj[0] = $chr_str_tmp
		
		}

}




