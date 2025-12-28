//-----------------------------------------
//★デバッグモード用

#COMMAND $debug_tachi_img_file(str,int)

#MACRO	@debug_init
			if (front.object[<debug_objno>].child.get_size == 0) {
			
				front.object[<debug_objno>].init
				front.object[<debug_objno>].child.resize(10)
				front.object[<debug_objno>].layer = <debug_objno>
				front.object[<debug_objno>].disp = 1
			
			}


//----------------
//2023.04.21 デバッグ用汎用文字出力

#COMMAND	$debug_common(str,int)
