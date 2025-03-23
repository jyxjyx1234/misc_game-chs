*start
;■シーンジャンプスクリプト■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■
;シーンジャンプを有効化するには、本スクリプトを適切に設定しなければなりません。
;シーンジャンプ箇所を有効化するマクロを適切にスクリプト内に配置しなければなりません。
;//シーンジャンプ配列の有効性を確認
[iscript]
dm("tf.ScemeJumping="+tf.ScemeJumping);
[endscript]
[if exp="tf.ScemeJumping==1"]
	[iscript]
		dm("ジャンプ中の為、ジャンプは停止された");
	[endscript]
	[return]
[endif]

;//シーンジャンプ配列の有効性を確認
[if exp="f.SceneJump_Selectfile==''"]
	[iscript]
	.ImageDialogLayerPlugin_obj.dispOKLayer("没有跳转目标");
	[endscript]
	[eval exp="tf.ScemeJumping=0"]
[return]
[endif]


[if exp="sf.ConfigState18==1"]
	[iscript]
		kag.goJumpCheck();
//		tf.return = askYesNo("是否移动到下一个选择？");
	[endscript]
	[eval exp="tf.ScemeJumping=0"]
[else]
	[iscript]
		kag.goJumpCheck_2nd();
	[endscript]
[endif]

[eval exp="tf.ScemeJumping=0"]

[return]
[s]

*Initialize

;強制ジャンプフラグ
[eval exp="f.SceneJump_RunFlg=0"]

;シーンジャンプ強制指定時のスクリプトファイル
[eval exp="f.SceneJump_Selectfile=''"]
;シーンジャンプ強制指定時のラベルファイル
[eval exp="f.SceneJump_Selecttarget=''"]

;シーンジャンプ許可フラグ
;これは、ジャンプ先ファイル名・ラベル名の配列によって格納されている。
[eval exp="tf.SceneMode_Count_ListMax=130"]
[eval exp="sf.SceneJump_List=[] if sf.SceneJump_List === void"]
[iscript]

	for(var loop=0;loop<tf.SceneMode_Count_ListMax;loop++)
	{
		if(sf.SceneJump_List[loop] === void){
			sf.SceneJump_List[loop] = new Array();
			
			//データ構造
			//指定配列番号における指定ジャンプリストを実行する
			//０－スクリプトファイル
			//１－ラベル名
			//２－有効フラグ　１のときにシーンジャンプできる
			switch(loop){
				case 0:sf.SceneJump_List[loop][0] = "scenario/all/all_00120.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 1:sf.SceneJump_List[loop][0] = "scenario/all/all_00150.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 2:sf.SceneJump_List[loop][0] = "scenario/all/all_00170.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 3:sf.SceneJump_List[loop][0] = "scenario/all/all_00170.ks";sf.SceneJump_List[loop][1] = "*SCJump2";sf.SceneJump_List[loop][2] = 0;break;
				case 4:sf.SceneJump_List[loop][0] = "scenario/all/all_00250.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 5:sf.SceneJump_List[loop][0] = "scenario/all/all_00270.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 6:sf.SceneJump_List[loop][0] = "scenario/all/all_00300.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 7:sf.SceneJump_List[loop][0] = "scenario/all/all_00310.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 8:sf.SceneJump_List[loop][0] = "scenario/all/all_00360.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 9:sf.SceneJump_List[loop][0] = "scenario/all/all_00390.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 10:sf.SceneJump_List[loop][0] = "scenario/all/all_00420.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 11:sf.SceneJump_List[loop][0] = "scenario/all/all_00430.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				//キャラ分岐位置を通す
				case 12:sf.SceneJump_List[loop][0] = "scenario/all/all_00370.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 13:sf.SceneJump_List[loop][0] = "scenario/all/all_00400.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;
				case 14:sf.SceneJump_List[loop][0] = "scenario/all/all_00430.ks";sf.SceneJump_List[loop][1] = "*SCJump2";sf.SceneJump_List[loop][2] = 0;break;
				case 15:sf.SceneJump_List[loop][0] = "scenario/all/all_00440.ks";sf.SceneJump_List[loop][1] = "*SCJump";sf.SceneJump_List[loop][2] = 0;break;

			}

		}
	}
	 
[endscript]

[return]
[s]





