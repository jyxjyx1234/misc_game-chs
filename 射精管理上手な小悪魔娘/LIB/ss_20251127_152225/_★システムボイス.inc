//---------------------------------
//システムボイス一覧

/*----

	作品ごとに内容を変更すること。
	
				switch(math.rand(0,5)) {
					case(0)	exkoe()
				}

----*/

#MACRO	@systemvoice_hamham
								
				switch(math.rand(0,3)) {
					case(0)	@jur_sv_hamham01
					case(1)	@jur_sv_hamham02
					case(2)	@kas_sv_hamham01
					case(3)	@kas_sv_hamham02

				}

#MACRO	@systemvoice_title
				
				
				switch(math.rand(0,1)) {
					case(0)	@jur_sv_title
					case(1)	@kas_sv_title
				}
				

#MACRO	@systemvoice_start
								
				switch(math.rand(0,1)) {
					case(0)	@jur_sv_start
					case(1)	@kas_sv_start
					
				}

#MACRO	@systemvoice_tuzuki

			switch(math.rand(0,1)) {
					case(0)	@jur_sv_load
					case(1)	@kas_sv_load
				}

#MACRO	@systemvoice_config

			switch(math.rand(0,1)) {
					case(0)	@jur_sv_sys
					case(1)	@kas_sv_sys
				}

#MACRO	@systemvoice_extra

			switch(math.rand(0,1)) {
					case(0)	@jur_sv_sys
					case(1)	@kas_sv_sys
				}


#MACRO	@systemvoice_gameend
			switch(math.rand(0,1)) {
					case(0)	 @jur_sv_end
					case(1)	 @kas_sv_end
					
				}


#MACRO	@systemvoice_volume_chr_all
			switch(math.rand(0,1)) {
					case(0)	@jur_sv_voice
					case(1)	@kas_sv_voice
				
			}

			//switch(math.rand(0,3)) {
			//		case(0)	exkoe(999900400	,1)
			//		case(1)	exkoe(999900401	,1)
			//		case(2)	exkoe(999900500	,2)
			//		case(3)	exkoe(999900501	,2)		
			//}



