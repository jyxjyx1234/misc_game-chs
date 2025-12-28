#Z00

#INC_START

	#PROPERTY $eventcg_control_menu_disp

#INC_END

command $eventcg_control_cgmode(property $fa : frameaction,property $obj : object) {

	if (front.object[<eventcg_control_menu_obj>].exist_type == 1) {

		if ($eventcg_control_menu_disp == 0) {
		
			if (mouse.get_pos_y < 40) {
			
				$eventcg_control_menu_disp = 1
				front.object[<eventcg_control_menu_obj>].y_rep_eve[0].set(0,500,0,2)
				front.object[<eventcg_control_menu_obj>].tr_eve.set(255,500,0,2)
			}
		
		}
		
		else{
		
			if (mouse.get_pos_y > 40) {			
				$eventcg_control_menu_disp = 0
				front.object[<eventcg_control_menu_obj>].y_rep_eve[0].set(-40,500,0,2)
				front.object[<eventcg_control_menu_obj>].tr_eve.set(0,500,0,2)
			}
		}
	}

}


