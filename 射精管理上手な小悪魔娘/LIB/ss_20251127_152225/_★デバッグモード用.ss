#Z00

//-----------------------------------------
//★デバッグモード用


command	$debug_tachi_img_file(property $Filename : str,property $lineNo) {	//★みことのりではルートチェック利用中

	if (system.check_debug_flag != 1) {front.object[<debug_objno>].init return}
	
	@debug_init

	
//	front.object[<debug_objno>].child[0].create_string("悪指数："+math.tostr($m13_evil_count),1,5,5)
//	front.object[<debug_objno>].child[0].set_string_param(12,0,0,0,0,15,2,15)
		
	K[00] = "通常"
	
//	if ($m13_3p_root_flag == 1) {K[00] = "３ｐ"}
//	elseif ($m13_evil_root_flag == 1) {K[00] = "悪"}
	
	front.object[<debug_objno>].child[1].create_string("ルート："+K[00],1,5,20)
	front.object[<debug_objno>].child[1].set_string_param(12,0,0,0,0,15,2,15)
	
	/*
	
	front.object[<debug_objno>].child[$lineNo].create_string($FileName,1,5,5 + ($lineNo*13))
	front.object[<debug_objno>].child[$lineNo].set_string_param(12,0,0,0,0,15,2,15)
	
	*/
	
	front.object[<debug_objno>].wipe_copy = 1

}


command	$debug_common(property $str:str,property $ch) {

		if (front.object[<debug_objno>].child.get_size == 0) {
		
			front.object[<debug_objno>].init
			front.object[<debug_objno>].child.resize(10)
			front.object[<debug_objno>].layer = <debug_objno>
			front.object[<debug_objno>].disp = 1
		
		}
		
		
		front.object[<debug_objno>].child[$ch].create_string($str,1,5,100 + ($ch*15))
		front.object[<debug_objno>].child[$ch].set_string_param(14,0,0,0,11,15,2,15)
		
		front.object[<debug_objno>].wipe_copy = 1
		
}
