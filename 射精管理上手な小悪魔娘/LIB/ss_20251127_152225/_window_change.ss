#Z00

$mwnd_button_init

if ($novel_mode_flag == 0) {
	
	switch(@メッセージウィンドウ背景) {

		case(0) 
			front.mwnd[0].set_filter_file("_w01")
		case(1) 		
			front.mwnd[0].set_filter_file("_w01b")
		case(2)		
			front.mwnd[0].set_filter_file("_spacer")

	}
}

return


#Z10

@メッセージウィンドウ背景 = (@メッセージウィンドウ背景 + 1) % 3

goto #Z00


