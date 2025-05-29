;! clipleft=0 cliptop=0 clipwidth=26 clipheight=26

*check
;;	@clip top=&"kag.autoMode?32:0"

*loop
	@clip left=&26*0
	@wait time=300

	@clip left=&26*1
	@wait time=300

	@clip left=&26*2
	@wait time=300

	@jump target=*loop
