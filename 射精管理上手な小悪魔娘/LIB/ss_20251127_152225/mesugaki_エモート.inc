//キャラエモート一覧
/*--

@jur_w
@jur_w(1,0,<R>) ：左右反転表示

--*/

//-----------------------------

#MACRO @jur_w(@se(1),@se_wait(0),@hanten(0))           $chr_emote(jur,1,@se,@se_wait,@hanten) 
#MACRO @jur_ikari(@se(1),@se_wait(1),@hanten(0))       $chr_emote(jur,2,@se,@se_wait,@hanten)  
#MACRO @jur_!(@se(1),@se_wait(1),@hanten(0))           $chr_emote(jur,3,@se,@se_wait,@hanten)  
#MACRO @jur_idea(@se(1),@se_wait(1),@hanten(0))        $chr_emote(jur,4,@se,@se_wait,@hanten)  
#MACRO @jur_kizuku(@se(1),@se_wait(1),@hanten(0))      $chr_emote(jur,5,@se,@se_wait,@hanten)  
#MACRO @jur_kizuku2(@se(1),@se_wait(1),@hanten(0))     $chr_emote(jur,6,@se,@se_wait,@hanten)  
#MACRO @jur_?(@se(1),@se_wait(1),@hanten(0))           $chr_emote(jur,7,@se,@se_wait,@hanten)  
#MACRO @jur_tameiki(@se(1),@se_wait(0),@hanten(0))     $chr_emote(jur,8,@se,@se_wait,@hanten)  
#MACRO @jur_konwaku(@se(1),@se_wait(1),@hanten(0))     $chr_emote(jur,9,@se,@se_wait,@hanten)  
#MACRO @jur_ase(@se(1),@se_wait(0),@hanten(0))         $chr_emote(jur,10,@se,@se_wait,@hanten)  
#MACRO @jur_ase2(@se(1),@se_wait(0),@hanten(0))        $chr_emote(jur,11,@se,@se_wait,@hanten)  
#MACRO @jur_v(@se(1),@se_wait(1),@hanten(0))       	$chr_emote(jur,12,@se,@se_wait,@hanten)  
#MACRO @jur_moyamoya(@se(1),@se_wait(1),@hanten(0))    $chr_emote(jur,13,@se,@se_wait,@hanten)  
#MACRO @jur_ten(@se(1),@se_wait(1),@hanten(0))         $chr_emote(jur,14,@se,@se_wait,@hanten)  
#MACRO @jur_tenten(@se(1),@se_wait(1),@hanten(0))      $chr_emote(jur,15,@se,@se_wait,@hanten)  

#MACRO	@jur_jump(@SRY(80),@Time(300),@hanten(0))			    @CHR_JUMP(jur,@time,@SRY)
#MACRO	@jur_jump2(@SRY(100),@Time(400),@hanten(0))		    @chr_jump2(jur,@time,@SRY)
#MACRO	@jur_jump_fast(@SRY(80),@Time(150),@hanten(0))			@CHR_JUMP(jur,@time,@SRY)
#MACRO	@jur_jump_D(@SRY(-40),@Time(500),@hanten(0))		    @CHR_JUMP(jur,@time,@SRY)
#MACRO	@jur_jump_D2(@SRY(-30),@Time(500),@hanten(0))		    @CHR_JUMP2(jur,@time,@SRY)
#MACRO	@jur_jump_D_slow(@SRY(-60),@Time(1000),@hanten(0))		@CHR_JUMP(jur,@time,@SRY)
#MACRO	@jur_jump_D_fast(@SRY(-40),@Time(200),@hanten(0))		@CHR_JUMP(jur,@time,@SRY)
#MACRO  @jur_jump_stop   @chr_jump_loopend(jur)

#MACRO	@jur_jump_loop(@SRY(100),@Time(400),@hanten(0))		@chr_jump_loop(jur,@time,@SRY)
#MACRO	@jur_jump_D_loop(@SRY(-30),@Time(500),@hanten(0))		@CHR_JUMP_loop(jur,@time,@SRY)


#MACRO	@jur_quake(@Power(20),@Time(500),@hanten(0)) 	    @CHR_QUAKE(jur,0,@time,@Power)
#MACRO	@jur_quake_UD(@Power(20),@Time(500),@hanten(0))	@CHR_QUAKE(jur,1,@time,@Power)
#MACRO	@jur_quake_LR(@Power(20),@Time(500),@hanten(0))	@CHR_QUAKE(jur,2,@time,@Power)

#MACRO  @jur_hanten(@hanten(3),@time(200),@hanten(0))      @CHR_hanten(jur,@hanten.@time)
#MACRO  @jur_hanten_soku(@hanten(1),@time(),@hanten(0))    @CHR_hanten(jur,@hanten.@time)


//-----------------------------

#MACRO @kas_w(@se(1),@se_wait(0),@hanten(0))           $chr_emote(kas,1,@se,@se_wait,@hanten)  
#MACRO @kas_ikari(@se(1),@se_wait(1),@hanten(0))       $chr_emote(kas,2,@se,@se_wait,@hanten)  
#MACRO @kas_!(@se(1),@se_wait(1),@hanten(0))           $chr_emote(kas,3,@se,@se_wait,@hanten)  
#MACRO @kas_idea(@se(1),@se_wait(1),@hanten(0))        $chr_emote(kas,4,@se,@se_wait,@hanten)  
#MACRO @kas_kizuku(@se(1),@se_wait(1),@hanten(0))      $chr_emote(kas,5,@se,@se_wait,@hanten)  
#MACRO @kas_kizuku2(@se(1),@se_wait(1),@hanten(0))     $chr_emote(kas,6,@se,@se_wait,@hanten)  
#MACRO @kas_?(@se(1),@se_wait(1),@hanten(0))           $chr_emote(kas,7,@se,@se_wait,@hanten)  
#MACRO @kas_tameiki(@se(1),@se_wait(0),@hanten(0))     $chr_emote(kas,8,@se,@se_wait,@hanten)  
#MACRO @kas_konwaku(@se(1),@se_wait(1),@hanten(0))     $chr_emote(kas,9,@se,@se_wait,@hanten)  
#MACRO @kas_ase(@se(1),@se_wait(0),@hanten(0))         $chr_emote(kas,10,@se,@se_wait,@hanten)  
#MACRO @kas_ase2(@se(1),@se_wait(0),@hanten(0))        $chr_emote(kas,11,@se,@se_wait,@hanten)  
#MACRO @kas_v(@se(1),@se_wait(1),@hanten(0))       	$chr_emote(kas,12,@se,@se_wait,@hanten)  
#MACRO @kas_moyamoya(@se(1),@se_wait(1),@hanten(0))    $chr_emote(kas,13,@se,@se_wait,@hanten)  
#MACRO @kas_ten(@se(1),@se_wait(1),@hanten(0))         $chr_emote(kas,14,@se,@se_wait,@hanten)  
#MACRO @kas_tenten(@se(1),@se_wait(1),@hanten(0))      $chr_emote(kas,15,@se,@se_wait,@hanten)  

#MACRO	@kas_jump(@SRY(80),@Time(300),@hanten(0))			    @CHR_JUMP(kas,@time,@SRY)
#MACRO	@kas_jump2(@SRY(100),@Time(400),@hanten(0))		    @chr_jump2(kas,@time,@SRY)
#MACRO	@kas_jump_fast(@SRY(80),@Time(150),@hanten(0))			@CHR_JUMP(kas,@time,@SRY)
#MACRO	@kas_jump_D(@SRY(-40),@Time(500),@hanten(0))		    @CHR_JUMP(kas,@time,@SRY)
#MACRO	@kas_jump_D2(@SRY(-30),@Time(500),@hanten(0))		    @CHR_JUMP2(kas,@time,@SRY)
#MACRO	@kas_jump_D_slow(@SRY(-60),@Time(1000),@hanten(0))		@CHR_JUMP(kas,@time,@SRY)
#MACRO	@kas_jump_D_fast(@SRY(-40),@Time(200),@hanten(0))		@CHR_JUMP(kas,@time,@SRY)
#MACRO  @kas_jump_stop   @chr_jump_loopend(kas)

#MACRO	@kas_jump_loop(@SRY(100),@Time(400),@hanten(0))		    @chr_jump_loop(kas,@time,@SRY)
#MACRO	@kas_jump_D_loop(@SRY(-30),@Time(500),@hanten(0))		    @CHR_JUMP_loop(kas,@time,@SRY)


#MACRO	@kas_quake(@Power(20),@Time(500),@hanten(0)) 	    @CHR_QUAKE(kas,0,@time,@Power)
#MACRO	@kas_quake_UD(@Power(20),@Time(500),@hanten(0))	@CHR_QUAKE(kas,1,@time,@Power)
#MACRO	@kas_quake_LR(@Power(20),@Time(500),@hanten(0))	@CHR_QUAKE(kas,2,@time,@Power)

#MACRO  @kas_hanten(@hanten(3),@time(200),@hanten(0))      @CHR_hanten(kas,@hanten.@time)
#MACRO  @kas_hanten_soku(@hanten(1),@time(),@hanten(0))    @CHR_hanten(kas,@hanten.@time)


//-----------------------------
//mob用
//引数１つ目に"objno"を２桁でいれる 例：@mob_w("20",1,0)

#MACRO @mob_w(@objno_str("24"),@se(1),@se_wait(0),@hanten(0))           $chr_emote(@objno_str,1,@se,@se_wait,@hanten)  
#MACRO @mob_ikari(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))       $chr_emote(@objno_str,2,@se,@se_wait,@hanten)  
#MACRO @mob_!(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))           $chr_emote(@objno_str,3,@se,@se_wait,@hanten)  
#MACRO @mob_idea(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))        $chr_emote(@objno_str,4,@se,@se_wait,@hanten)  
#MACRO @mob_kizuku(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))      $chr_emote(@objno_str,5,@se,@se_wait,@hanten)  
#MACRO @mob_kizuku2(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))     $chr_emote(@objno_str,6,@se,@se_wait,@hanten)  
#MACRO @mob_?(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))           $chr_emote(@objno_str,7,@se,@se_wait,@hanten)  
#MACRO @mob_tameiki(@objno_str("24"),@se(1),@se_wait(0),@hanten(0))     $chr_emote(@objno_str,8,@se,@se_wait,@hanten)  
#MACRO @mob_konwaku(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))     $chr_emote(@objno_str,9,@se,@se_wait,@hanten)  
#MACRO @mob_ase(@objno_str("24"),@se(1),@se_wait(0),@hanten(0))         $chr_emote(@objno_str,10,@se,@se_wait,@hanten)  
#MACRO @mob_ase2(@objno_str("24"),@se(1),@se_wait(0),@hanten(0))        $chr_emote(@objno_str,11,@se,@se_wait,@hanten)  
#MACRO @mob_v(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))       	 $chr_emote(@objno_str,12,@se,@se_wait,@hanten)  
#MACRO @mob_moyamoya(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))    $chr_emote(@objno_str,13,@se,@se_wait,@hanten)  
#MACRO @mob_ten(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))         $chr_emote(@objno_str,14,@se,@se_wait,@hanten)  
#MACRO @mob_tenten(@objno_str("24"),@se(1),@se_wait(1),@hanten(0))      $chr_emote(@objno_str,15,@se,@se_wait,@hanten)  

#MACRO	@mob_jump(@objno_str("24"),@SRY(80),@Time(300),@hanten(0))			         @CHR_JUMP(@objno_str,@time,@SRY)
#MACRO	@mob_jump2(@objno_str("24"),@SRY(100),@Time(400),@hanten(0))		        @chr_jump2(@objno_str,@time,@SRY)
#MACRO	@mob_jump_fast(@objno_str("24"),@SRY(80),@Time(150),@hanten(0))			 @CHR_JUMP(@objno_str,@time,@SRY)
#MACRO	@mob_jump_D(@objno_str("24"),@SRY(-40),@Time(500),@hanten(0))		         @CHR_JUMP(@objno_str,@time,@SRY)
#MACRO	@mob_jump_D2(@objno_str("24"),@SRY(-30),@Time(500),@hanten(0))		        @CHR_JUMP2(@objno_str,@time,@SRY)
#MACRO	@mob_jump_D_slow(@objno_str("24"),@SRY(-60),@Time(1000),@hanten(0))		 @CHR_JUMP(@objno_str,@time,@SRY)
#MACRO	@mob_jump_D_fast(@objno_str("24"),@SRY(-40),@Time(200),@hanten(0))		     @CHR_JUMP(@objno_str,@time,@SRY)
#MACRO  @mob_jump_stop(@objno_str("24"),@hanten(0))   @chr_jump_loopend(@objno_str)

#MACRO	@mob_jump_loop(@objno_str("24"),@SRY(100),@Time(400),@hanten(0))		    @chr_jump_loop(@objno_str,@time,@SRY)
#MACRO	@mob_jump_D_loop(@objno_str("24"),@SRY(-30),@Time(500),@hanten(0))		    @CHR_JUMP_loop(@objno_str,@time,@SRY)


#MACRO	@mob_quake(@objno_str("24"),@Power(20),@Time(500),@hanten(0)) 	    @CHR_QUAKE(@objno_str,0,@time,@Power)
#MACRO	@mob_quake_UD(@objno_str("24"),@Power(20),@Time(500),@hanten(0))	@CHR_QUAKE(@objno_str,1,@time,@Power)
#MACRO	@mob_quake_LR(@objno_str("24"),@Power(20),@Time(500),@hanten(0))	@CHR_QUAKE(@objno_str,2,@time,@Power)

#MACRO  @mob_hanten(@@objno_str("24"),hanten(3),@time(200),@hanten(0))      @CHR_hanten(@objno_str,@hanten.@time)
#MACRO  @mob_hanten_soku(@objno_str("24"),@hanten(1),@time(),@hanten(0))    @CHR_hanten(@objno_str,@hanten.@time)
