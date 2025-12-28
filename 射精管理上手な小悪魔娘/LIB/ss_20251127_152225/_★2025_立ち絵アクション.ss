#Z00


command $obj_jump_fa(property $fa : frameaction,property $obj : object,property $sry,property $time,property $srx)  {	//オブジェクトジャンプ

	L[00] = $fa.counter.get		
	$obj.y_rep[<chr_rep_jump>] = math.timetable(l[0], 0, 0, [0, $time / 2, -$sry ,2],[$time / 2,$time,0,1])
	
	if ($srx != 0) {	//斜めジャンプ用
		$obj.x_rep[<chr_rep_jump>] = math.timetable(l[0], 0, 0, [0, $time / 2, $srx ,2],[$time / 2,$time,0,1])
	} 

}

command $obj_jump2_fa(property $fa : frameaction,property $obj : object,property $sry,property $time,property $srx)  {	//オブジェクトジャンプ

	L[00] = $fa.counter.get
	
	L[01] = ($time / 4) * 1
	L[02] = ($time / 4) * 2
	L[03] = ($time / 4) * 3
	
	$obj.y_rep[<chr_rep_jump>] = math.timetable(l[0], 0, 0, [0, L[01], -$sry ,2],[L[01],L[02],0,1], [L[02], L[03], -$sry ,2],[L[03],$time,0,1])
	
	if ($srx != 0) {	//斜めジャンプ用
		$obj.x_rep[<chr_rep_jump>] = math.timetable(l[0], 0, 0, [0, L[01], $srx ,2],[L[01],L[02],0,1], [L[02], L[03], $srx ,2],[L[03],$time,0,1])

	}

}



command $obj_quake_Fa(property $fa : frameaction,property $obj : object,property $Mode,property $Power, property $time) {	//ランダムクエイク

	L[00] = $fa.counter.get
	
	if ($Mode == 0) {	//段々減速する
	
		L[03] = $power - math.timetable(L[00],0,0,[0,$time-1,$power])
		
		L[01] = math.rand(-L[03], L[03])
		L[02] = math.rand(-L[03], L[03])
		
		$obj.x_rep[<chr_rep_quake>] = L[01]
		$obj.y_rep[<chr_rep_quake>] = L[02]
	
	}elseif ($Mode == 1) {	//段々減速する（縦だけ）
	
		L[03] = $power - math.timetable(L[00],0,0,[0,$time-1,$power])
		
		L[02] = math.rand(-L[03], L[03])
		
		$obj.y_rep[<chr_rep_quake>] = L[02]
	
	}elseif ($Mode == 2) {	//段々減速する（横だけ）
	
		L[03] = $power - math.timetable(L[00],0,0,[0,$time-1,$power])
		
		
		L[01] = math.rand(-L[03], L[03])
		
		$obj.x_rep[<chr_rep_quake>] = L[01]
	
	}
		
	if (L[00] >= $time) {
	
		$obj.x_rep[<chr_rep_quake>] = 0
		$obj.y_rep[<chr_rep_quake>] = 0
		
	}
	
}




#INC_START

	#DEFINE	<effect_y_hosei> 100

#INC_END





command $obj_action_approach(property $fa:frameaction,property $obj:object) {

	L[00] = $fa.counter.get % 1000
	
	L[01] = math.timetable(L[00],0,0,[0,1000,19])
	
	$obj.set_scale($obj_action_approach_scale[L[01]],$obj_action_approach_scale[L[01]])


}




command	$obj_action_flickering(property $fa:frameaction,property $obj:object,property $mode,property $tr,property $retio) {

	L[00] = $fa.counter.get
	
	L[10] = $retio	//retio
	
	switch($mode)	{
	
		case(0)		L[01] = math.timetable(L[00],0,$tr,[0,L[10]*1,$tr],[L[10]*1,L[10]*2,$tr / 2],[L[10]*2,L[10]*3,$tr],[L[10]*3,L[10]*4,0],[L[10]*4,L[10]*5,$tr],[L[10]*5,L[10]*6,0])	//消える
		case(1)		L[01] = math.timetable(L[00],0,0,[0,L[10]*1,0],[L[10]*1,L[10]*2,$tr],[L[10]*2,L[10]*3,0],[L[10]*3,L[10]*4,$tr],[L[10]*4,L[10]*5,$tr / 2],[L[10]*5,L[10]*6,$tr])	//現れる

	
	}
	
	$obj.tr = L[01]

}


command	$obj_action_flickering2(property $fa:frameaction,property $obj:object,property $mode,property $power,property $retio) {

	L[00] = $fa.counter.get
	
	L[10] = $retio	//retio
	
	L[01] = math.timetable(L[00],0,$power,[0,L[10]*1,$power],[L[10]*1,L[10]*2,$power / 2],[L[10]*2,L[10]*3,$power],[L[10]*3,L[10]*4,0],[L[10]*4,L[10]*5,$power],[L[10]*5,L[10]*6,0])	//消える
	
	switch($mode)	{
	
		case(0)		$obj.bright = L[01]
		case(1)		$obj.dark = L[01]
	
	}
	
	

}
