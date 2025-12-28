#Z00

//----------------------------
//イニシャライズ

COMMAND $dd_init() {

	//とりあえず、ドラッグ前とドラッグ後の２パターン用意	

	back.object[<dd_objno1>].init
	back.object[<dd_objno1>].child.resize(200)
	back.object[<dd_objno1>].disp = 1

	back.object[<dd_objno2>].init
	back.object[<dd_objno2>].child.resize(200)
	back.object[<dd_objno2>].disp = 1


}

//----------------------------
//マウスが矩形に入っているかを判別

COMMAND $mouse_rect_flag(property @x1,property @y1,property @x2,property @y2) : int{

	if (mouse.pos_x >= @x1 && mouse.pos_x <= @x2) {
	
		if (mouse.pos_y >= @y1 && mouse.pos_y <= @y2) {
		
			return(1)
		
		}
	
	}
	
	return(0)

}

//----------------------------
//マス設定

COMMAND $dd_mass_create(property @index,property @x,property @y,property @width,property @height,property @group) {

	$dd_mass_index[@index] = @index
	$dd_mass_x1[@index] = @x
	$dd_mass_y1[@index] = @y
	$dd_mass_x2[@index] = @x + @width
	$dd_mass_y2[@index] = @y + @height
	$dd_mass_group[@index] = @group
	
	$dd_mass_element[@index] = 0	
	$dd_mass_property[@index] = 0

}



//----------------------------
//ルール１・ボタン位置と入れ替え不可能、特定の矩形内で別のボタン（ルール２）に変化する

COMMAND $dd_btn_create_rule1(property $index,property $filename : str,property $init_x,property $init_y,property $group,property $element)  {

	$dd_btn_rule1_index[$index] = $index
	$dd_btn_rule1_init_x[$index] = $init_x
	$dd_btn_rule1_init_y[$index] = $init_y
	$dd_btn_rule1_group[$index] = $group
	$dd_btn_rule1_element[$index] = $element

	back.object[<dd_objno1>].child[$index].create($filename,1,$init_x,$init_y)
	back.object[<dd_objno1>].child[$index].set_button($index,1,10,0)
	back.object[<dd_objno1>].child[$index].set_button_pushkeep(1)
	

}


//----------------------------
//ルール２・同じグループのボタンと入れ替え可能、枠外に出すとルール１のボタンに戻る

COMMAND $dd_btn_create_rule2(property $index,property $filename : str,property $group)  {

	$dd_btn_rule2_index[$index] = $index
	$dd_btn_rule2_group[$index] = $group

	back.object[<dd_objno2>].child[$index].create($filename)
	back.object[<dd_objno2>].child[$index].set_button($index,2,10,0)
	back.object[<dd_objno2>].child[$index].set_button_pushkeep(1)
	

}

//----------------------------
//固定マス・動かせない、エレメント固定（グループ９９９）


COMMAND $dd_mass_kotei_create(property $filename : str,property $index,property $element) {

	$dd_mass_index[$index] = $index
	$dd_mass_group[$index] = 999
	$dd_mass_property[$index] = 999
	$dd_mass_element[$index] = $element

	back.object[<dd_objno2>].child[<dd_mass_kotei_objno_plus> + $index].create($filename,1,$dd_mass_x1[$index],$dd_mass_y1[$index])
	
}



