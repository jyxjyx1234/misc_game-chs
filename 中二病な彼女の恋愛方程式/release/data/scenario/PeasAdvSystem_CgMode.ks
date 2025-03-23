*start
;■おまけ画面スクリプト■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;デザイン初期化データ
;CGギャラリー

[eval exp="tf.GalleryMode_Count_PageNo=0"]
[eval exp="sf.GalleryMode_Flag_ViewCount=0"]


;イベントフラグ配列
;これはセーブデータない時のみ実行される。CGの差分構成フラグである。
;プロジェクト毎に設定しなければならない
[eval exp="tf.GalleryMode_ImgName=[] if tf.GalleryMode_ImgName === void"]
[iscript]
	for(var loop=0;loop<tf.GalleryMode_Count_MaxGalleryItem;loop++)
	{
		if(tf.GalleryMode_ImgName[loop] === void){
			tf.GalleryMode_ImgName[loop] = new Array();
			//ギャラリーのロードCGリスト
			switch(loop)
			{
				case 0:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum0.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG01_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG01_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG01_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG01_04.png";
				break;
				case 1:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum1.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG02_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG02_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG02_03.png";
				break;
				case 2:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum2.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG03_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG03_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG03_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG03_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG03_05.png";
				break;
				case 3:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum3.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG04_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG04_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG04_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG04_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG04_05.png";
				break;
				case 4:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum5.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG06_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG06_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG06_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG06_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG06_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG06_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG06_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG06_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG06_09.png";
				break;
				case 5:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum6.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG07_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG07_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG07_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG07_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG07_05.png";
				break;
				case 6:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum7.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG08_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG08_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG08_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG08_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG08_05.png";
				break;
				case 7:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum8.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG09_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG09_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG09_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG09_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG09_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG09_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG09_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG09_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG09_09.png";
				break;
				case 8:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum9.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG10_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG10_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG10_03.png";
				break;
				case 9:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum10.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG11_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG11_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG11_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG11_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG11_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG11_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG11_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG11_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG11_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG11_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG11_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG11_12.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG11_13.png";
				break;
				case 10:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum11.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG12_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG12_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG12_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG12_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG12_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG12_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG12_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG12_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG12_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG12_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG12_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG12_12.png";
				break;
				case 11:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum12.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG13_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG13_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG13_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG13_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG13_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG13_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG13_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG13_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG13_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG13_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG13_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG13_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG13_13.png";
				break;
				case 12:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum13.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG14_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG14_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG14_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG14_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG14_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG14_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG14_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG14_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG14_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG14_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG14_11.png";
				break;
				case 13:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum14.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG15_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG15_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG15_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG15_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG15_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG15_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG15_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG15_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG15_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG15_10.png";
				break;
				case 14:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum15.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG16_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG16_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG16_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG16_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG16_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG16_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG16_07.png";
				break;
				case 15:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum16.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG17_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG17_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG17_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG17_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG17_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG17_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG17_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG17_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG17_09.png";
				break;
				case 16:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum17.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG18_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG18_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG18_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG18_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG18_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG18_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG18_07.png";
				break;
				case 17:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum18.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG19_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG19_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG19_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG19_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG19_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG19_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG19_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG19_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG19_09.png";
				break;
				case 18:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum19.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG20_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG20_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG20_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG20_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG20_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG20_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG20_07.png";
				break;
				case 19:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum20.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG21_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG21_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG21_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG21_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG21_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG21_06.png";
				break;
				case 20:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum21.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG22_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG22_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG22_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG22_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG22_05.png";
				break;
				case 21:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum22.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG23_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG23_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG23_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG23_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG23_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG23_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG23_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG23_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG23_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG23_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG23_11.png";
				break;
				case 22:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum23.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG24_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG24_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG24_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG24_04.png";
				break;
				case 23:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum24.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG25_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG25_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG25_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG25_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG25_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG25_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG25_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG25_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG25_09.png";
				break;
				case 24:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum25.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG26_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG26_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG26_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG26_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG26_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG26_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG26_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG26_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG26_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG26_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG26_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG26_12.png";
				break;
				case 25:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum26.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG27_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG27_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG27_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG27_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG27_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG27_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG27_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG27_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG27_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG27_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG27_11.png";
				break;
				case 26:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum27.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG28_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG28_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG28_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG28_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG28_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG28_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG28_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG28_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG28_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG28_10.png";
				break;
				case 27:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum28.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG29_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG29_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG29_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG29_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG29_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG29_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG29_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG29_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG29_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG29_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG29_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG29_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG29_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG29_14.png";
					tf.GalleryMode_ImgName[loop][15] = "fgimage/CG/CG29_15.png";
					tf.GalleryMode_ImgName[loop][16] = "fgimage/CG/CG29_16.png";
				break;
				case 28:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum29.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG30_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG30_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG30_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG30_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG30_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG30_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG30_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG30_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG30_09.png";
				break;
				case 29:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum30.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG31_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG31_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG31_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG31_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG31_05.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG31_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG31_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG31_08.png";
				break;
				case 30:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum31.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG32_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG32_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG32_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG32_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG32_05.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG32_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG32_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG32_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG32_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG32_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG32_11.png";
				break;
				case 31:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum32.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG33_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG33_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG33_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG33_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG33_05.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG33_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG33_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG33_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG33_09.png";
				break;
				case 32:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum33.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG34_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG34_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG34_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG34_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG34_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG34_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG34_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG34_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG34_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG34_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG34_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG34_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG34_13.png";
				break;
				case 33:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum34.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG35_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG35_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG35_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG35_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG35_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG35_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG35_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG35_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG35_09.png";
				break;
				case 34:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum35.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG36_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG36_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG36_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG36_04.png";
				break;
				case 35:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum36.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG37_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG37_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG37_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG37_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG37_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG37_06.png";
				break;
				case 36:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum37.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG38_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG38_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG38_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG38_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG38_05.png";
				break;
				case 37:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum38.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG39_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG39_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG39_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG39_04.png";
				break;
				case 38:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum39.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG40_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG40_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG40_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG40_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG40_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG40_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG40_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG40_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG40_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG40_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG40_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG40_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG40_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG40_14.png";
				break;
				case 39:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum40.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG41_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG41_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG41_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG41_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG41_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG41_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG41_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG41_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG41_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG41_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG41_11.png";
				break;
				case 40:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum41.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG42_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG42_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG42_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG42_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG42_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG42_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG42_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG42_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG42_09.png";
				break;
				case 41:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum42.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG43_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG43_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG43_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG43_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG43_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG43_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG43_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG43_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG43_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG43_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG43_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG43_12.png";
				break;
				case 42:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum43.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG44_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG44_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG44_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG44_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG44_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG44_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG44_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG44_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG44_09.png";
				break;
				case 43:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum44.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG45_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG45_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG45_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG45_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG45_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG45_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG45_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG45_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG45_09.png";
				break;
				case 44:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum45.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG46_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG46_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG46_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG46_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG46_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG46_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG46_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG46_08.png";
				break;
				case 45:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum46.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG47_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG47_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG47_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG47_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG47_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG47_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG47_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG47_08.png";
				break;
				case 46:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum47.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG48_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG48_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG48_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG48_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG48_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG48_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG48_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG48_08.png";
				break;
				case 47:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum48.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG49_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG49_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG49_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG49_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG49_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG49_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG49_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG49_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG49_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG49_10.png";
				break;
				case 48:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum49.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG50_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG50_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG50_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG50_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG50_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG50_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG50_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG50_08.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG50_09.png";
				break;
				case 49:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum50.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG51_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG51_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG51_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG51_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG51_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG51_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG51_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG51_08.png";
				break;
				case 50:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum51.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG52_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG52_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG52_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG52_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG52_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG52_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG52_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG52_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG52_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG52_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG52_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG52_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG52_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG52_14.png";
					tf.GalleryMode_ImgName[loop][15] = "fgimage/CG/CG52_15.png";
					tf.GalleryMode_ImgName[loop][16] = "fgimage/CG/CG52_16.png";
				break;
				case 51:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum52.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG53_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG53_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG53_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG53_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG53_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG53_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG53_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG53_08.png";
				break;
				case 52:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum53.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG54_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG54_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG54_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG54_04.png";
				break;
				case 53:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum54.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG55_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG55_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG55_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG55_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG55_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG55_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG55_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG55_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG55_09.png";
				break;
				case 54:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum55.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG56_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG56_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG56_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG56_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG56_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG56_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG56_07.png";
				break;
				case 55:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum56.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG57_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG57_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG57_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG57_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG57_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG57_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG57_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG57_08.png";
				break;
				case 56:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum57.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG58_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG58_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG58_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG58_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG58_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG58_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG58_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG58_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG58_09.png";
				break;
				case 57:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum58.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG59_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG59_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG59_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG59_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG59_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG59_06.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG59_07.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG59_08.png";
				break;
				case 58:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum59.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG60_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG60_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG60_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG60_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG60_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG60_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG60_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG60_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG60_09.png";
				break;
				case 59:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum60.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG61_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG61_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG61_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG61_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG61_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG61_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG61_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG61_08.png";
				break;
				case 60:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum61.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG62_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG62_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG62_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG62_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG62_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG62_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG62_07.png";
				break;
				case 61:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum62.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG63_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG63_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG63_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG63_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG63_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG63_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG63_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG63_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG63_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG63_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG63_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG63_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG63_13.png";
				break;
				case 62:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum63.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG64_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG64_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG64_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG64_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG64_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG64_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG64_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG64_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG64_09.png";
				break;
				case 63:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum64.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG65_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG65_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG65_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG65_04.png";
				break;
				case 64:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum65.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG66_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG66_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG66_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG66_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG66_05.png";
				break;
				case 65:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum66.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG67_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG67_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG67_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG67_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG67_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG67_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG67_07.png";
				break;
				case 66:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum67.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG68_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG68_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG68_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG68_04.png";
				break;
				case 67:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum69.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG70_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG70_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG70_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG70_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG70_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG70_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG70_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG70_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG70_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG70_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG70_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG70_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG70_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG70_14.png";
					tf.GalleryMode_ImgName[loop][15] = "fgimage/CG/CG70_15.png";
				break;
				case 68:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum70.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG71_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG71_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG71_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG71_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG71_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG71_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG71_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG71_08.png";
				break;
				case 69:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum71.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG72_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG72_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG72_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG72_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG72_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG72_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG72_07.png";
				break;
				case 70:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum72.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG73_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG73_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG73_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG73_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG73_05.png";
				break;
				case 71:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum73.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG74_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG74_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG74_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG74_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG74_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG74_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG74_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG74_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG74_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG74_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG74_11.png";
				break;
				case 72:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum74.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG75_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG75_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG75_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG75_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG75_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG75_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG75_07.png";
				break;
				case 73:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum75.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG76_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG76_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG76_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG76_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG76_05.png";
				break;
				case 74:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum76.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG77_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG77_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG77_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG77_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG77_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG77_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG77_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG77_08.png";
				break;
				case 75:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum77.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG78_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG78_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG78_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG78_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG78_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG78_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG78_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG78_08.png";
				break;
				case 76:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum78.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG79_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG79_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG79_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG79_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG79_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG79_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG79_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG79_08.png";
				break;
				case 77:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum79.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG80_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG80_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG80_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG80_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG80_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG80_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG80_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG80_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG80_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG80_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG80_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG80_12.png";
				break;
				case 78:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum80.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG81_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG81_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG81_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG81_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG81_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG81_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG81_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG81_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG81_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG81_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG81_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG81_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG81_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG81_14.png";
					tf.GalleryMode_ImgName[loop][15] = "fgimage/CG/CG81_15.png";
				break;
				case 79:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum81.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG82_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG82_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG82_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG82_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG82_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG82_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG82_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG82_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG82_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG82_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG82_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG82_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG82_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG82_14.png";
					tf.GalleryMode_ImgName[loop][15] = "fgimage/CG/CG82_15.png";
				break;
				case 80:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum82.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG83_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG83_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG83_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG83_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG83_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG83_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG83_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG83_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG83_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG83_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG83_11.png";
					tf.GalleryMode_ImgName[loop][12] = "fgimage/CG/CG83_12.png";
					tf.GalleryMode_ImgName[loop][13] = "fgimage/CG/CG83_13.png";
					tf.GalleryMode_ImgName[loop][14] = "fgimage/CG/CG83_14.png";
					tf.GalleryMode_ImgName[loop][15] = "fgimage/CG/CG83_15.png";
					tf.GalleryMode_ImgName[loop][16] = "fgimage/CG/CG83_16.png";
					tf.GalleryMode_ImgName[loop][17] = "fgimage/CG/CG83_17.png";
					tf.GalleryMode_ImgName[loop][18] = "fgimage/CG/CG83_18.png";
					tf.GalleryMode_ImgName[loop][19] = "fgimage/CG/CG83_19.png";
					tf.GalleryMode_ImgName[loop][20] = "fgimage/CG/CG83_20.png";
					tf.GalleryMode_ImgName[loop][21] = "fgimage/CG/CG83_21.png";
					tf.GalleryMode_ImgName[loop][22] = "fgimage/CG/CG83_22.png";
					tf.GalleryMode_ImgName[loop][23] = "fgimage/CG/CG83_23.png";
				break;
				case 81:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum83.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG84_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG84_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG84_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG84_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG84_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG84_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG84_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG84_08.png";
				break;
				case 82:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum84.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG85_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG85_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG85_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG85_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG85_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG85_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG85_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG85_08.png";
				break;
				case 83:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum85.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG86_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG86_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG86_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG86_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG86_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG86_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG86_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG86_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG86_09.png";
				break;
				case 84:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum86.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG87_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG87_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG87_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG87_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG87_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG87_06.png";
				break;
				case 85:
					tf.GalleryMode_ImgName[loop][0] = "image/system_gallery_thum87.png";
					tf.GalleryMode_ImgName[loop][1] = "fgimage/CG/CG88_01.png";
					tf.GalleryMode_ImgName[loop][2] = "fgimage/CG/CG88_02.png";
					tf.GalleryMode_ImgName[loop][3] = "fgimage/CG/CG88_03.png";
					tf.GalleryMode_ImgName[loop][4] = "fgimage/CG/CG88_04.png";
					tf.GalleryMode_ImgName[loop][5] = "fgimage/CG/CG88_05.png";
					tf.GalleryMode_ImgName[loop][6] = "fgimage/CG/CG88_06.png";
					tf.GalleryMode_ImgName[loop][7] = "fgimage/CG/CG88_07.png";
					tf.GalleryMode_ImgName[loop][8] = "fgimage/CG/CG88_08.png";
					tf.GalleryMode_ImgName[loop][9] = "fgimage/CG/CG88_09.png";
					tf.GalleryMode_ImgName[loop][10] = "fgimage/CG/CG88_10.png";
					tf.GalleryMode_ImgName[loop][11] = "fgimage/CG/CG88_11.png";
				break;


			}
		}
		
	}
[endscript]

*restart


;バックログを表示させない
[history output=false enabled="false"]
;右クリック利用不可

[backlay]
[freeimage layer=1 page=back]
[freeimage layer=10 page=back]

[image storage=&tf.GalleryMode_File_Bg_Name left=0 top=0 layer=0 page=back visible=true]
[image storage=&tf.GalleryMode_File_Bg_Name left=0 top=0 layer=1 page=back visible=true]

[sysbutton graphic=&tf.GalleryMode_File_Return_Name top=&tf.GalleryMode_Pos_Return_Ypos left=&tf.GalleryMode_Pos_Return_Xpos target="*close" page=back enterse="&tf.GalleryMode_File_Return_SelSeFile" clickse="&tf.GalleryMode_File_Return_ClickSeFile"]

[sysbutton graphic=&tf.GalleryMode_File_BackPage_Name top=&tf.GalleryMode_Pos_BackPage_Ypos left=&tf.GalleryMode_Pos_BackPage_Xpos target="*BackPage" page=back enterse="&tf.GalleryMode_File_BackPage_SelSeFile" clickse="&tf.GalleryMode_File_BackPage_ClickSeFile"]
[sysbutton graphic=&tf.GalleryMode_File_NextPage_Name top=&tf.GalleryMode_Pos_NextPage_Ypos left=&tf.GalleryMode_Pos_NextPage_Xpos target="*NextPage" page=back enterse="&tf.GalleryMode_File_NextPage_SelSeFile" clickse="&tf.GalleryMode_File_NextPage_ClickSeFile"]



[call target="*RefleshPageThum"]
[call target="*RefleshPageBase"]

[trans method=crossfade time=10]
[wt]



[rclick enabled="true" jump="true" storage="scenario/PeasAdvSystem_CgMode.ks" target="*close"]
[s]

;//■画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*recall|復帰

[backlay]
[freeimage layer=0 page=back]

[freeimage layer=10 page=back]
[freeimage layer=11 page=back]
[freeimage layer=12 page=back]
[freeimage layer=13 page=back]
[freeimage layer=14 page=back]	
[image storage=white layer=1 top=0 left=0 page=back  visible=true]
[trans method=crossfade time=300]
[wt]

[jump storage="PeasAdvSystem_CgMode.ks" target="*start"]

[s]


;//■画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*close

;[backlay]
;[freeimage layer=0 page=back]
;[freeimage layer=10 page=back]
;[freeimage layer=11 page=back]
;[freeimage layer=12 page=back]
;[freeimage layer=13 page=back]
;[freeimage layer=14 page=back]
;[image storage=white layer=1 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=10]
;[wt]

[sysbutton_erase page=fore]


[jump storage="scenario/PeasAdvSystem_Extra.ks"]

[s]

;//■前ページへ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*BackPage

[if exp="tf.GalleryMode_Count_PageNo>0"]
	[eval exp="tf.GalleryMode_Count_PageNo=tf.GalleryMode_Count_PageNo-1"]
[else]
	[eval exp="tf.GalleryMode_Count_PageNo=tf.GalleryMode_Count_MaxGalleryPage-1"]
[endif]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]

;//■次ページへ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*NextPage

[if exp="tf.GalleryMode_Count_PageNo<tf.GalleryMode_Count_MaxGalleryPage-1"]
	[eval exp="tf.GalleryMode_Count_PageNo=tf.GalleryMode_Count_PageNo+1"]
[else]
	[eval exp="tf.GalleryMode_Count_PageNo=0"]
[endif]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]

;//■ページベースウインドウのリフレッシュ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*RefleshPageBase
;[eval exp="tf.GalleryMode_Count_PageNo=0"]

[sysbutton_erase name="PageCount" page=back]

;選択中ページのページ画像を表示
[eval exp="tf.system_filename=&tf.GalleryMode_File_PageWindow_Name[tf.GalleryMode_Count_PageNo]"]
[if exp="tf.system_filename!=''"]
	[image storage=&tf.system_filename left="&tf.GalleryMode_File_PageWindow_Xpos[tf.GalleryMode_Count_PageNo]" top="&tf.GalleryMode_File_PageWindow_Ypos[tf.GalleryMode_Count_PageNo]" layer=10 page=back visible=true]
[endif]

;選択中ページ以外のページ画像をボタン生成
[eval exp="tf.loopcnt=0"]
*loopdraw
[if exp="tf.loopcnt<tf.GalleryMode_Count_MaxGalleryPage"]

	[if exp="tf.GalleryMode_Count_PageNo!=tf.loopcnt"]

		[eval exp="tf.system_filename=tf.GalleryMode_File_PageBt_File[tf.loopcnt]"]
		[eval exp="tf.system_ypos=tf.GalleryMode_File_PageBt_Xpos[tf.loopcnt]"]
		[eval exp="tf.system_xpos=tf.GalleryMode_File_PageBt_Ypos[tf.loopcnt]"]
		[eval exp="tf.system_target='*Page'+(tf.loopcnt+1)"]

		[sysbutton graphic=&tf.system_filename top="&tf.GalleryMode_File_PageBt_Ypos[tf.loopcnt]" left="&tf.GalleryMode_File_PageBt_Xpos[tf.loopcnt]" target="&tf.system_target" page=back name="PageCount" enterse="&tf.GalleryMode_File_PageBt_SelSeFile[tf.loopcnt]" clickse="&tf.GalleryMode_File_PageBt_ClickSeFile[tf.loopcnt]"]

	[endif]
	[eval exp="tf.loopcnt=tf.loopcnt+1"]
	[jump target="*loopdraw"]

[endif]


[return]

;//■ページ切り替え処理■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*Page1
[eval exp="tf.GalleryMode_Count_PageNo=0"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page2
[eval exp="tf.GalleryMode_Count_PageNo=1"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page3
[eval exp="tf.GalleryMode_Count_PageNo=2"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page4
[eval exp="tf.GalleryMode_Count_PageNo=3"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page5
[eval exp="tf.GalleryMode_Count_PageNo=4"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page6
[eval exp="tf.GalleryMode_Count_PageNo=5"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page7
[eval exp="tf.GalleryMode_Count_PageNo=6"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page8
[eval exp="tf.GalleryMode_Count_PageNo=7"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page9
[eval exp="tf.GalleryMode_Count_PageNo=8"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page10
[eval exp="tf.GalleryMode_Count_PageNo=9"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]



;//■サムネイルのリフレッシュ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*RefleshPageThum

[sysbutton_erase name="GalleryThumImg" page=back]

[image storage=&tf.GalleryMode_File_Bg_Name layer=1 page=back]

[eval exp="tf.loop=0"]


*loop
[if exp="tf.loop<tf.GalleryMode_Count_MaxSlotInPage"]

	[if exp="&tf.loop+(&tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage)>&tf.GalleryMode_Count_MaxGalleryItem"]
		[jump target="*RefleshPageThum_loopEND"]
	[endif]
	[if exp="tf.GalleryMode_ImgName[(&tf.loop+(&tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage))]===void"]
		[eval exp="tf.loop=tf.loop+1"]
		[jump target="*loop"]
	[endif]

	[eval exp="tf.file=&tf.GalleryMode_ImgName[(&tf.loop+(&tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage))][0]"]

	[eval exp="tf.xpos=tf.GalleryMode_Pos_Thum_Xpos[tf.loop]"]
	[eval exp="tf.ypos=tf.GalleryMode_Pos_Thum_Ypos[tf.loop]"]
	[eval exp="tf.system_target='*ViewCg'+(tf.loop+1)"]


	[if exp="sf.GalleryMode_Flag[&tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+tf.loop]!=void && &tf.loop+(&tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage) < &tf.GalleryMode_Count_MaxGalleryItem"]
		[if exp="sf.GalleryMode_Flag[&tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+tf.loop][0]==1"]
			[sysbutton graphic=&tf.file top=&tf.ypos left=&tf.xpos target="&tf.system_target" page=back name="GalleryThumImg"]
		[else]
;				[sysbutton graphic=&tf.GalleryMode_File_EmptyThum_Name top=&tf.ypos left=&tf.xpos page=back name="GalleryThumImg"]
		[endif]

		[iscript]
		
				var wrklayer = kag.back.layers[0];
				var tempLayer = new Layer(kag, wrklayer);
				var SrcLayer = new Layer(kag, wrklayer);
				SrcLayer.setImageSize(tf.GalleryMode_Size_CGThum_Width, tf.GalleryMode_Size_CGThum_Height);
				SrcLayer.stretchCopy(tf.xpos, tf.ypos, tf.GalleryMode_Size_CGThum_Width, tf.GalleryMode_Size_CGThum_Height, tempLayer,tf.xpos,tf.ypos, tf.GalleryMode_Size_CGThum_Width, tf.GalleryMode_Size_CGThum_Height, stLinear);
				
				SrcLayer.loadImages(tf.GalleryMode_File_EmptyThum_Name);

				kag.back.layers[1].stretchCopy(tf.xpos, tf.ypos, tf.GalleryMode_Size_CGThum_Width, tf.GalleryMode_Size_CGThum_Height, SrcLayer, 0,0, tf.GalleryMode_Size_CGThum_Width, tf.GalleryMode_Size_CGThum_Height, stLinear);
				invalidate tempLayer;

				invalidate SrcLayer;

		[endscript]
				
	[endif]

	[eval exp="tf.loop=tf.loop+1"]
	[jump target="*loop"]
[endif]

*RefleshPageThum_loopEND


[return]
*RefleshPageThum_loop0

[return]
[s]

;//■CGギャラリーにおけるCGの表示■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;CG表示用のシナリオファイルがロードされます。
*ViewCg1
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+0)"]
[jump target="*ViewCg"]
[s]
*ViewCg2
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+1)"]
[jump target="*ViewCg"]
[s]
*ViewCg3
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+2)"]
[jump target="*ViewCg"]
[s]
*ViewCg4
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+3)"]
[jump target="*ViewCg"]
[s]
*ViewCg5
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+4)"]
[jump target="*ViewCg"]
[s]
*ViewCg6
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+5)"]
[jump target="*ViewCg"]
[s]
*ViewCg7
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+6)"]
[jump target="*ViewCg"]
[s]
*ViewCg8
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+7)"]
[jump target="*ViewCg"]
[s]
*ViewCg9
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+8)"]
[jump target="*ViewCg"]
[s]
*ViewCg10
[eval exp="sf.GalleryMode_Flag_ViewCount=(tf.GalleryMode_Count_PageNo*tf.GalleryMode_Count_MaxSlotInPage+9)"]
[jump target="*ViewCg"]
[s]

*ViewCg

[iscript]

tf.CGOpenCnt = 0;
for(var loop=0;loop<99;loop++){
	if( sf.GalleryMode_Flag[sf.GalleryMode_Flag_ViewCount][loop+1] == 1 ){
		dm("ON状態のCG発見"+tf.CGOpenCnt);
		tf.CGOpenCnt = tf.CGOpenCnt + 1;
	}
}
dm("■■■■■■■■■■■■■■■■■■■tf.CGOpenCnt"+tf.CGOpenCnt);
[endscript]

[if exp="tf.CGOpenCnt>0"]
	;CG画面を消去
	[rclick enabled="true" jump="true" storage="scenario/PeasAdvSystem_CgMode.ks" target="*recall"]

	[backlay]
	[image storage=white layer=14 top=0 left=0 page=back  visible=true]
	[sysbutton_erase page=back]
	[trans method=crossfade time=300]
	[wt]

	[jump  target="*PlayCG"]

[endif]


[iscript]
dm("■■■■■■■■■■■■■■■■■■■tf.CGOpenCnt"+tf.CGOpenCnt);
[endscript]



[s]

;//■CGモード閲覧開始■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*PlayCG



[eval exp="tf.Maxloop=20"]

[eval exp="tf.loop=1"]
*CGPlayLoop

[if exp="tf.loop<=tf.Maxloop"]
	[if exp="tf.GalleryMode_ImgName[sf.GalleryMode_Flag_ViewCount][tf.loop]===void"]
		[eval exp="tf.loop=tf.loop+1"]
		[jump  target="*CGPlayLoop"]
	[else]
		[if exp="sf.GalleryMode_Flag[sf.GalleryMode_Flag_ViewCount][tf.loop]==1"]
			[backlay]
			[eval exp="tf.file=tf.GalleryMode_ImgName[sf.GalleryMode_Flag_ViewCount][tf.loop]"]
			[trace exp="tf.file"]
			[image storage=&tf.file left=0 top=0 layer=14 page=back visible=true]
			[trans method=crossfade time=10]
			[wt]
			[p]
		[endif]

		[eval exp="tf.loop=tf.loop+1"]
		[jump  target="*CGPlayLoop"]
	[endif]
[endif]

*CGPlayEND


[backlay]
[freeimage layer=14 page=back]
;戻るボタン
[sysbutton graphic=&tf.GalleryMode_File_Return_Name top=&tf.GalleryMode_Pos_Return_Ypos left=&tf.GalleryMode_Pos_Return_Xpos target="*close" page=back enterse="&tf.GalleryMode_File_Return_SelSeFile" clickse="&tf.GalleryMode_File_Return_ClickSeFile"]

[sysbutton graphic=&tf.GalleryMode_File_BackPage_Name top=&tf.GalleryMode_Pos_BackPage_Ypos left=&tf.GalleryMode_Pos_BackPage_Xpos target="*BackPage" page=back enterse="&tf.GalleryMode_File_BackPage_SelSeFile" clickse="&tf.GalleryMode_File_BackPage_ClickSeFile"]
[sysbutton graphic=&tf.GalleryMode_File_NextPage_Name top=&tf.GalleryMode_Pos_NextPage_Ypos left=&tf.GalleryMode_Pos_NextPage_Xpos target="*NextPage" page=back enterse="&tf.GalleryMode_File_NextPage_SelSeFile" clickse="&tf.GalleryMode_File_NextPage_ClickSeFile"]

[rclick enabled="true" jump="true" storage="scenario/PeasAdvSystem_CgMode.ks" target="*close"]

[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]



[trans method=crossfade time=300]
[wt]

*CGPlayEND2



[s]
[jump storage="PeasAdvSystem_CgMode.ks" target="*restart"]

