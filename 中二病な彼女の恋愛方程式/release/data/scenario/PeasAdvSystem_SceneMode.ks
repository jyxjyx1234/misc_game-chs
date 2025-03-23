*start|スタート
;■おまけ画面スクリプト■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;デザイン初期化データ
;シーンギャラリー



[eval exp="sf.SceneMode_Flag_ViewCount=0"]



;イベントフラグ配列
[eval exp="sf.SceneMode_Flag=[] if sf.SceneMode_Flag === void"]
[eval exp="sf.SceneMode_ScName=[] if sf.SceneMode_ScName === void"]



[iscript]
	for(var loop=0;loop<tf.SceneMode_Count_MaxGalleryItem;loop++)
	{
		if(sf.SceneMode_ScName[loop] === void){
			sf.SceneMode_ScName[loop] = new Array();
		
			//ギャラリーのロードスクリプトリスト
			switch(loop)
			{
				//Page1
				case 0:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum0.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00010.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 1:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum1.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00030.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 2:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum2.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00310.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 3:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum3.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00570.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 4:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum5.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00700.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 5:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum6.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00280.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 6:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum7.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00510.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 7:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum8.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00890.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 8:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum9.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00930.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				//Page2
				case 9:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum10.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00190.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 10:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum11.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00500.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 11:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum12.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00500.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 12:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum13.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00640.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 13:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum14.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00640.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 14:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum15.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00780.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 15:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum16.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00780.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 16:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum17.png";
					sf.SceneMode_ScName[loop][1] = "scenario/Aoi/Aoi_00910.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 17:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum18.png";
					sf.SceneMode_ScName[loop][1] = "scenario/Aoi/Aoi_00910.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				//Page3
				case 18:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum19.png";
					sf.SceneMode_ScName[loop][1] = "scenario/aoi/aoi_00910.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad3";
				break;
				case 19:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum20.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00070.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 20:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum21.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00010.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 21:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum22.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00720.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 22:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum23.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00780.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 23:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum24.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00370.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 24:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum25.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00370.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 25:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum26.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00440.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 26:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum27.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00440.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				//Page4
				case 27:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum28.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00530.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 28:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum29.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00530.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 29:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum30.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00560.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 30:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum31.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00640.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 31:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum32.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00640.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 32:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum33.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00760.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 33:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum34.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00760.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 34:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum35.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00040.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 35:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum36.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00060.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				//Page5
				case 36:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum37.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00240.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 37:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum38.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00840.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 38:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum39.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00440.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 39:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum40.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00440.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 40:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum41.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00500.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 41:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum42.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00500.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 42:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum43.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00560.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 43:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum44.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00560.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 44:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum45.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00620.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				//Page6
				case 45:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum46.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00620.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 46:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum47.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00650.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 47:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum48.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00720.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 48:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum49.png";
					sf.SceneMode_ScName[loop][1] = "scenario/momo/momo_00820.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 49:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum50.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00210.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 50:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum51.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00300.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 51:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum52.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00550.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 52:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum53.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00600.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 53:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum54.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00290.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				//Page7
				case 54:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum55.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00320.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 55:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum56.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00320.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 56:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum57.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00430.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 57:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum58.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00430.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 58:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum59.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00560.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 59:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum60.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00560.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 60:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum61.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00750.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 61:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum62.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00750.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 62:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum63.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00750.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad3";
				break;
				//Page8
				case 63:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum64.png";
					sf.SceneMode_ScName[loop][1] = "scenario/mion/mion_00780.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 64:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum65.png";
					sf.SceneMode_ScName[loop][1] = "scenario/all/all_00190.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 65:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum66.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00260.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 66:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum67.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00650.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 67:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum69.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00370.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 68:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum70.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00370.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 69:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum71.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00430.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 70:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum72.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00430.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 71:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum73.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00500.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				//page9
				case 72:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum74.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00500.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 73:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum75.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00600.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 74:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum76.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00600.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 75:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum77.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00680.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 76:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum78.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00680.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 77:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum79.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00530.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 78:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum80.png";
					sf.SceneMode_ScName[loop][1] = "scenario/chisato/chisato_00530.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 79:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum81.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00590.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 80:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum82.png";
					sf.SceneMode_ScName[loop][1] = "scenario/supica/supica_00590.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				//Page10
				case 81:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum83.png";
					sf.SceneMode_ScName[loop][1] = "scenario/bad/bad_00020.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 82:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum84.png";
					sf.SceneMode_ScName[loop][1] = "scenario/bad/bad_00020.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
				break;
				case 83:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum85.png";
					sf.SceneMode_ScName[loop][1] = "scenario/bad/bad_00020.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad3";
				break;
				case 84:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum86.png";
					sf.SceneMode_ScName[loop][1] = "scenario/bad/bad_00050.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad";
				break;
				case 85:
					sf.SceneMode_ScName[loop][0] = "image/system_gallery_thum87.png";
					sf.SceneMode_ScName[loop][1] = "scenario/bad/bad_00050.ks";
					sf.SceneMode_ScName[loop][2] = "*SceneLoad2";
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

[image storage=&tf.SceneMode_File_Bg_Name left=0 top=0 layer=0 page=back visible=true]
[image storage=&tf.SceneMode_File_Bg_Name left=0 top=0 layer=1 page=back visible=true]
;戻るボタン
[sysbutton graphic=&tf.SceneMode_File_Return_Name top=&tf.SceneMode_Pos_Return_Ypos left=&tf.SceneMode_Pos_Return_Xpos target="*close" page=back enterse="&tf.SceneMode_File_Return_SelSeFile" clickse="&tf.SceneMode_File_Return_ClickSeFile"]

;ページ切り替えボタン
[sysbutton graphic=&tf.SceneMode_File_BackPage_Name top=&tf.SceneMode_Pos_BackPage_Ypos left=&tf.SceneMode_Pos_BackPage_Xpos target="*BackPage" page=back enterse="&tf.SceneMode_File_BackPage_SelSeFile" clickse="&tf.SceneMode_File_BackPage_ClickSeFile"]
[sysbutton graphic=&tf.SceneMode_File_NextPage_Name top=&tf.SceneMode_Pos_NextPage_Ypos left=&tf.SceneMode_Pos_NextPage_Xpos target="*NextPage" page=back enterse="&tf.SceneMode_File_NextPage_SelSeFile" clickse="&tf.SceneMode_File_NextPage_ClickSeFile"]

[call target="*RefleshPageThum"]
[call target="*RefleshPageBase"]

[trans method=crossfade time=10]
[wt]

[rclick enabled="true" jump="true"  storage="PeasAdvSystem_SceneMode.ks" target="*close"]
[s]

;//■画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*recall|復帰

[backlay]
[freeimage layer=10 page=back]
[freeimage layer=11 page=back]
[freeimage layer=12 page=back]
[freeimage layer=13 page=back]
[freeimage layer=14 page=back]

[image storage=white layer=0 top=0 left=0 page=back  visible=true]
[trans method=crossfade time=1000]
[wt]

[jump storage="scenario/PeasAdvSystem_Extra.ks"]

[s]


;//■画面を閉じる■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*close

;[backlay]
;[freeimage layer=10 page=back]
;[freeimage layer=11 page=back]
;[freeimage layer=12 page=back]
;[freeimage layer=13 page=back]
;[freeimage layer=14 page=back]
;[image storage=white layer=1 top=0 left=0 page=back  visible=true]
;[sysbutton_erase page=back]
;[trans method=crossfade time=1000]
;[wt]

[sysbutton_erase page=fore]


[jump storage="scenario/PeasAdvSystem_Extra.ks"]

[s]

;//■前ページへ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*BackPage

[if exp="tf.SceneMode_Count_PageNo>0"]
[eval exp="tf.SceneMode_Count_PageNo=tf.SceneMode_Count_PageNo-1"]
[else]
[eval exp="tf.SceneMode_Count_PageNo=tf.SceneMode_Count_MaxScenePage-1"]
[endif]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]

;//■次ページへ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*NextPage

[if exp="tf.SceneMode_Count_PageNo<tf.SceneMode_Count_MaxScenePage-1"]
[eval exp="tf.SceneMode_Count_PageNo=tf.SceneMode_Count_PageNo+1"]
[else]
[eval exp="tf.SceneMode_Count_PageNo=0"]
[endif]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]

;//■ページベースウインドウのリフレッシュ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*RefleshPageBase
;[eval exp="tf.SceneMode_Count_PageNo=0"]

[sysbutton_erase name="PageCount" page=back]

;選択中ページのページ画像を表示
[eval exp="tf.system_filename=&tf.SceneMode_File_PageWindow_Name[tf.SceneMode_Count_PageNo]"]
[if exp="tf.system_filename!=''"]
	[image storage=&tf.system_filename left="&tf.SceneMode_File_PageWindow_Xpos[tf.SceneMode_Count_PageNo]" top="&tf.SceneMode_File_PageWindow_Ypos[tf.SceneMode_Count_PageNo]" layer=10 page=back visible=true]
[endif]

;選択中ページ以外のページ画像をボタン生成
[eval exp="tf.loopcnt=0"]
*loopdraw
[if exp="tf.loopcnt<tf.SceneMode_Count_MaxScenePage"]

	[if exp="tf.SceneMode_Count_PageNo!=tf.loopcnt"]

		[eval exp="tf.system_filename=tf.SceneMode_File_PageBt_File[tf.loopcnt]"]
		[eval exp="tf.system_xpos=tf.SceneMode_File_PageWindow_Xpos[tf.loopcnt]"]
		[eval exp="tf.system_ypos=tf.SceneMode_File_PageWindow_Ypos[tf.loopcnt]"]
		[eval exp="tf.system_target='*Page'+(tf.loopcnt+1)"]

		[sysbutton graphic=&tf.system_filename top="&tf.system_ypos" left="&tf.system_xpos" target="&tf.system_target" page=back name="PageCount" enterse="&tf.SceneMode_File_PageBt_SelSeFile[tf.loopcnt]" clickse="&tf.SceneMode_File_PageBt_ClickSeFile[tf.loopcnt]"]

	[endif]
	[eval exp="tf.loopcnt=tf.loopcnt+1"]
	[jump target="*loopdraw"]

[endif]

[return]

;//■ページ切り替え処理■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*Page1
[eval exp="tf.SceneMode_Count_PageNo=0"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page2
[eval exp="tf.SceneMode_Count_PageNo=1"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page3
[eval exp="tf.SceneMode_Count_PageNo=2"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page4
[eval exp="tf.SceneMode_Count_PageNo=3"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page5
[eval exp="tf.SceneMode_Count_PageNo=4"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page6
[eval exp="tf.SceneMode_Count_PageNo=5"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page7
[eval exp="tf.SceneMode_Count_PageNo=6"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page8
[eval exp="tf.SceneMode_Count_PageNo=7"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page9
[eval exp="tf.SceneMode_Count_PageNo=8"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]
*Page10
[eval exp="tf.SceneMode_Count_PageNo=9"]
[backlay]
[call target="*RefleshPageBase"]
[call target="*RefleshPageThum"]
[trans method=crossfade time=10]
[wt]
[s]


;//■サムネイルのリフレッシュ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*RefleshPageThum

[sysbutton_erase name="SceneThumImg" page=back]

[image storage=&tf.SceneMode_File_Bg_Name layer=1 page=back]


[eval exp="tf.loop=0"]
*loop
[if exp="tf.loop<tf.SceneMode_Count_MaxSlotInPage"]

	[if exp="&tf.loop+(&tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage)>&tf.SceneMode_Count_MaxGalleryItem"]
		[jump target="*RefleshPageThum_loopEND"]
	[endif]
	[if exp="sf.SceneMode_ScName[(&tf.loop+(&tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage))]==void"]
		[eval exp="tf.loop=tf.loop+1"]
		[jump target="*loop"]
	[endif]

	[eval exp="tf.file=&sf.SceneMode_ScName[(&tf.loop+(&tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage))][0]"]

	[eval exp="tf.xpos=tf.SceneMode_Pos_Thum_Xpos[tf.loop]"]
	[eval exp="tf.ypos=tf.SceneMode_Pos_Thum_Ypos[tf.loop]"]
	[eval exp="tf.system_target='*ViewCg'+(tf.loop+1)"]

	[if exp="sf.SceneMode_Flag[&tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+tf.loop]==1"]
		[sysbutton graphic=&tf.file top=&tf.ypos left=&tf.xpos target="&tf.system_target" page=back name="SceneThumImg"]
	[else]
		[iscript]
			var wrklayer = kag.back.layers[0];
			var tempLayer = new Layer(kag, wrklayer);
			var SrcLayer = new Layer(kag, wrklayer);
			SrcLayer.setImageSize(tf.SceneMode_Pos_Thum_Width, tf.SceneMode_Pos_Thum_Height);
			SrcLayer.stretchCopy(tf.xpos, tf.ypos, tf.SceneMode_Pos_Thum_Width, tf.SceneMode_Pos_Thum_Height, tempLayer,tf.xpos,tf.ypos, tf.SceneMode_Pos_Thum_Width, tf.SceneMode_Pos_Thum_Height, stLinear);
			
			SrcLayer.loadImages(tf.SceneMode_File_EmptyThum_Name);

			kag.back.layers[1].stretchCopy(tf.xpos, tf.ypos, tf.SceneMode_Pos_Thum_Width, tf.SceneMode_Pos_Thum_Height, SrcLayer, 0,0, tf.SceneMode_Pos_Thum_Width, tf.SceneMode_Pos_Thum_Height, stLinear);
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
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+0)"]
[jump target="*ViewCg"]
[s]
*ViewCg2
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+1)"]
[jump target="*ViewCg"]
[s]
*ViewCg3
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+2)"]
[jump target="*ViewCg"]
[s]
*ViewCg4
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+3)"]
[jump target="*ViewCg"]
[s]
*ViewCg5
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+4)"]
[jump target="*ViewCg"]
[s]
*ViewCg6
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+5)"]
[jump target="*ViewCg"]
[s]
*ViewCg7
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+6)"]
[jump target="*ViewCg"]
[s]
*ViewCg8
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+7)"]
[jump target="*ViewCg"]
[s]
*ViewCg9
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+8)"]
[jump target="*ViewCg"]
[s]
*ViewCg10
[eval exp="sf.SceneMode_Flag_ViewCount=(tf.SceneMode_Count_PageNo*tf.SceneMode_Count_MaxSlotInPage+9)"]
[jump target="*ViewCg"]
[s]


*ViewCg

[if exp="sf.SceneMode_ScName[sf.SceneMode_Flag_ViewCount][1]==void"]
	[s]
[endif]
[if exp="sf.SceneMode_ScName[sf.SceneMode_Flag_ViewCount][1]==''"]
	[s]
[endif]

;右クリック処理をメニュー消去処理に
[rclick call=false jump=false enabled=true]


;CG画面を消去
[backlay]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=10 page=back]
[freeimage layer=11 page=back]
[freeimage layer=12 page=back]
[freeimage layer=13 page=back]
[freeimage layer=14 page=back]
[image storage=white top=0 left=0 layer=10 page=back  visible=true]
[sysbutton_erase page=back]
[trans method=crossfade time=1000]
[wt]

[jump  target="*PlayCG"]


[s]

;//■CGモード閲覧開始■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
*PlayCG
;回想モードフラグをON

[eval exp="tf.SceneMode_RunFlg=1"]

;回想シーンの開始事前処理
[fadeoutbgm time=300]

;キー入力系フラグを許可状態にする
[EnableSCutFlg enable=1]

[history output=true enabled="true"]
[call storage="&sf.SceneMode_ScName[sf.SceneMode_Flag_ViewCount][1]" target="&sf.SceneMode_ScName[sf.SceneMode_Flag_ViewCount][2]"]
[history output=false enabled="false"]

;回想シーンの終了処理
[fadeoutbgm time=300]
[stopse buf=0]
[stopse buf=1]
[stopse buf=5]

;キー入力系フラグを不許可状態にする
[EnableSCutFlg enable=0]


[eval exp="tf.SceneMode_RunFlg=0"]
;メッセージウインドウ類を消去
[HIDESYSTEMMENU]


[backlay]
[freeimage layer=0 page=back]
[freeimage layer=1 page=back]
[freeimage layer=2 page=back]
[freeimage layer=3 page=back]
[freeimage layer=4 page=back]
[freeimage layer=5 page=back]
[freeimage layer=6 page=back]
[freeimage layer=7 page=back]
[freeimage layer=8 page=back]
[freeimage layer=9 page=back]

[freeimage layer=10 page=back]
[image storage=white layer=10 top=0 left=0 page=back  visible=true]
[trans method=crossfade time=1000]
[wt]

;右クリック処理を復元
[rclick enabled="true" jump="true" storage="scenario/PeasAdvSystem_SceneMode.ks" target="*recall"]

*PlayCGEnd

[if exp="tf.ExtraMode_File_ReturnPlayBGM!=''"]
		[fadeoutbgm time=500]
		[playbgm storage="&tf.ExtraMode_File_ReturnPlayBGM"]
[endif]


[jump storage="PeasAdvSystem_SceneMode.ks" target="*restart"]

