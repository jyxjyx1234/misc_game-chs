#Z00


//希莉心情フラグ：print($chr_old_message_mind_flag) @nl
クリアフラグ：print(@クリアフラグ)

L[00] = SELBTN("クリアフラグ切り替え","おわり")

switch(L[00]) {

	//case(0) //$chr_old_message_mind_flag = ($chr_old_message_mind_flag + 1) % 2
	case(0)	@クリアフラグ = (@クリアフラグ + 1) % 2
	case(1) clear close return


}

clear

close

goto #Z00


return