#Z00

//-------------------------
//場所・日付の表示

#inc_start

    #DEFINE <tag_place_obj> 90
    #DEFINE <tag_time_obj> 91
    #DEFINE <tag_chapter_obj> 92

#inc_end

command $tag_place(property $str:str){ 

    front.object[<tag_place_obj>].create(__sys_tag_place,1,-563,90)
    front.object[<tag_place_obj>].order = <order_tag>
    front.object[<tag_place_obj>].child.resize(1)
    front.object[<tag_place_obj>].child[00].create_string($str,1,35,24)
    front.object[<tag_place_obj>].child[00].set_string_param(35,0,0,0,<white>,0,0)
    front.object[<tag_place_obj>].frame_action.start(4000, "$obj_tag_action_fa",0)

}

command $tag__time(property $str:str){

    front.object[<tag_time_obj>].create(__sys_tag_time,1,-563,182)
    front.object[<tag_time_obj>].order = <order_tag>
    front.object[<tag_time_obj>].child.resize(1)
    front.object[<tag_time_obj>].child[00].create_string($str,1,35,18)
    front.object[<tag_time_obj>].child[00].set_string_param(27,0,0,0,<black>,0,0)
    front.object[<tag_time_obj>].frame_action.start(4000, "$obj_tag_action_fa",100)

}


command $obj_tag_action_fa( //w563
        property $fa:frameaction,
        property $obj:object,
        property $deray
    )
{
    L[00] = $fa.counter.get
    $obj.x= math.timetable(L[00],$deray,-563,[0,500,0,2])
    $obj.tr = math.timetable(L[00],$deray,255,[3000,4000,0,2])

    if (L[00] >= 4000) {$obj.disp = 0}
}



command $tag_chapter(property $pat,property $chapter : str) {

    if ($pat == 0) {
        front.object[<tag_chapter_obj>].create_rect(0,0,960,80,255,25,52,255,1,1920,950)
    }else{
        front.object[<tag_chapter_obj>].create_rect(0,0,960,80,25,106,255,255,1,1920,950)
    }

    front.object[<tag_chapter_obj>].order = <order_tag>
    front.object[<tag_chapter_obj>].child.resize(2)
    front.object[<tag_chapter_obj>].child[00].create_string($chapter,1,360,7)
    front.object[<tag_chapter_obj>].child[00].set_string_param(60,10,40,12,<white>,-1,0)
    front.object[<tag_chapter_obj>].child[01].create(sokubaku_eyecatch_yajirusi,1,60,10)
    front.object[<tag_chapter_obj>].frame_action.start(4000, "$obj_tag_chapter_action_fa",0)

}

command $obj_tag_chapter_action_fa(
        property $fa:frameaction,
        property $obj:object,
        property $deray
    )
{
    L[00] = $fa.counter.get
    $obj.x= math.timetable(L[00],$deray,1920,[0,500,960,2])
    $obj.tr = math.timetable(L[00],$deray,255,[3000,4000,0,2])

    if (L[00] >= 4000) {$obj.disp = 0}
}




//----------------------
//アイキャッチ

command $eyecatch(
    property $CHR_NAME1:str,
    property $CHR_NAME2:str,
    property $KOE,
    property $KOE_CHR,
    property $STR:str,
    property $emote,
    property $chapter:str) {

    @scene_start

    g00buf[0].load($CHR_NAME1.left(9))
    g00buf[1].load($CHR_NAME2.left(9))

    bgm.play_oneshot(eyecatch)

    if ($KOE_CHR == 1) {    //珠理奈

        back.object[10].create_rect(0,0,1200,1080,255,25,52,255,1,0,0)
        back.object[10].layer = 10
        back.object[10].order = <order_chrcg_front2>

        @CHR($CHR_NAME1,32,<nowipe>,"","","",600)
        back.object[32].order = <order_chrcg_front2>

        back.object[40].create_rect(0,0,500,1080,255,25,52,255,1,1560,0)
        back.object[40].layer = 40
        back.object[40].order = <order_chrcg_front2>

        back.object[41].create(sokubaku_eyecatch_logo,1,1740,940)
        back.object[41].layer = 41
        back.object[41].order = <order_chrcg_front2>

        back.object[43].create_string($chapter,1,320,1000)
        back.object[43].set_string_param(60,10,40,12,<white>,-1,0)
        back.object[43].layer = 43
        back.object[43].order = <order_chrcg_front2>

        back.object[45].create(sokubaku_eyecatch_yajirusi,1,10,1005)
        back.object[45].layer = 45
        back.object[45].order = <order_chrcg_front2>

        @BG(_black)

        front.object[32].x_rep_eve[<chr_rep_pos>].set(0,400,0,2)
        front.object[32].x_rep_eve[<chr_rep_pos>].wait_key

        EXKOE($KOE,$KOE_CHR)
        @ftn($CHR_NAME2)

        switch($emote){
            case(1)     @jur_w(1,0)
            case(2)     @jur_jump_d2
            case(3)     @jur_v(1,0)
            case(4)     @jur_tameiki(1,0)
            case(5)     @jur_moyamoya(1,0)
        }
        


        back.object[42].create_string($STR,1,40,200)
        back.object[42].set_string_param(100,-5,40,12,<white>,-1,0)
        back.object[42].layer = 41
        back.object[42].order = <order_chrcg_front>


    }else{  //香住

        back.object[10].create_rect(720,0,1980,1080,25,106,255,255,1,0,0)
        back.object[10].layer = 10
        back.object[10].order = <order_chrcg_front2>

        @CHR($CHR_NAME1,33,<nowipe>,"","","",-600)
        back.object[33].order = <order_chrcg_front2>

        back.object[40].create_rect(0,0,360,1080,25,106,255,255,1,0,0)
        back.object[40].layer = 40
        back.object[40].order = <order_chrcg_front2>

        back.object[41].create(sokubaku_eyecatch_logo,1,180,940)
        back.object[41].layer = 41
        back.object[41].order = <order_chrcg_front2>

        back.object[43].create_string($chapter,1,1400,1000)
        back.object[43].set_string_param(60,10,40,12,<white>,-1,0)
        back.object[43].layer = 43
        back.object[43].order = <order_chrcg_front2>

        back.object[45].create(sokubaku_eyecatch_yajirusi,1,1090,1005)
        back.object[45].layer = 45
        back.object[45].order = <order_chrcg_front2>


        @BG(_black)

        front.object[33].x_rep_eve[<chr_rep_pos>].set(0,400,0,2)
        front.object[33].x_rep_eve[<chr_rep_pos>].wait_key

        EXKOE($KOE,$KOE_CHR)
        @ftn($CHR_NAME2)

        switch($emote){
            case(1)     @kas_w(1,0,<R>)
            case(2)     @kas_jump_d2
            case(3)     @kas_v(1,0,<R>)
            case(4)     @kas_ase2(1,0,<R>)
            case(5)     @kas_moyamoya(1,0,<R>)
            case(6)     @kas_kizuku2(1,0,<R>)
            case(7)     @kas_ikari(1,0)
            case(8)     @kas_ase(1,0)




        }



        back.object[42].create_string($STR,1,960,200)
        back.object[42].set_string_param(100,-5,40,12,<white>,-1,0)
        back.object[42].layer = 42
        back.object[42].order = <order_chrcg_front>

    }

    wipe(0,500,start_order = <order_chrcg_front>,end_order = <order_chrcg_front>,key_skip = 1)


    @kwt

    @BG(_black)

    g00buf.free_all


}



//------------------------------------
//スタッフロール

#INC_START

    #DEFINE <staffroll> 100

    #PROPERTY   $direction

#INC_END


command $staffroll(property $patno) {


    @BGM(BGM01)

    @BG(_white)

    g00buf[0].load(staffroll)
    g00buf[1].load(staffroll2)
    g00buf[2].load(staffroll_bg)

    @timewait(500)

    script.set_ctrl_skip_disable 

    syscom.set_msg_back_enable_flag(0)
    syscom.set_save_enable_flag(0)
    syscom.set_syscom_menu_disable
    syscom.set_auto_mode_onoff_flag(0)
    syscom.set_read_skip_onoff_flag(0)
    syscom.set_auto_skip_onoff_flag(0)
    

    //画面準備

    @BG_set(_black)

    back.object[<staffroll>-1].create(staffroll_bg,1,0,0)

    back.object[<staffroll>-2].init
    back.object[<staffroll>-2].child.resize(5)
    back.object[<staffroll>-2].disp = 1

    switch($patno){

        case(0)
            back.object[<staffroll>-2].child[00].create(staffroll2,1,0,0,10)
            back.object[<staffroll>-2].child[01].create(staffroll2,1,0,0,11)
            back.object[<staffroll>-2].child[02].create(staffroll2,1,0,0,12)
            back.object[<staffroll>-2].child[03].create(staffroll2,1,0,0,13)

        case(1)
            back.object[<staffroll>-2].child[00].create(staffroll2,1,0,0,20)
            back.object[<staffroll>-2].child[01].create(staffroll2,1,0,0,21)
            back.object[<staffroll>-2].child[02].create(staffroll2,1,0,0,22)
            back.object[<staffroll>-2].child[03].create(staffroll2,1,0,0,23)



    }

    back.object[<staffroll>-2].child[00].tr = 0
    back.object[<staffroll>-2].child[01].tr = 0
    back.object[<staffroll>-2].child[02].tr = 0
    back.object[<staffroll>-2].child[03].tr = 0

    back.object[<staffroll>].init
    back.object[<staffroll>].child.resize(11)
    back.object[<staffroll>].disp = 1
    back.object[<staffroll>].y_rep.resize(1)
    back.object[<staffroll>].y_rep[0] = 0//1080

    for(L[00]=0,L[00]<=10,L[00]+=1) {

        back.object[<staffroll>].child[L[00]].create(staffroll,1,0,1080*L[00],L[00])

    }

    L[01] = (L[00]-1) * 1080

    wipe(0,500)

    front.object[<staffroll>].y_rep_eve[0].set(-L[01],60000,0,0)



    if (@珠理奈クリア == 1 || @香住クリア == 1) {
        script.set_ctrl_skip_enable
    }


    input.clear
    counter[0].reset
    counter[0].start

    $direction = 0

    while(1){

        L[10] = counter[0].get
        //      if (front.object[<staffroll>].y_rep_eve[0].check == 0){break}

        if ($direction >= 65) {break}

        if (L[10] > 1000) {$direction += 1 counter[0].set(0)}

        switch($direction) {

            case(1)   front.object[<staffroll>-2].child[00].tr_eve.set(255,1000,0,2) $direction += 1 counter[0].set(0)
            case(19)   front.object[<staffroll>-2].child[01].tr_eve.set(255,1000,0,2) $direction += 1 counter[0].set(0)
            case(38)   front.object[<staffroll>-2].child[02].tr_eve.set(255,1000,0,2) $direction += 1 counter[0].set(0)
            case(57)   front.object[<staffroll>-2].child[03].tr_eve.set(255,1000,0,2) $direction += 1 counter[0].set(0)

        }


        input.next
        disp

    }

    //    おわった

    front.object[<staffroll>-2].child[03].tr = 255

    counter[0].stop

    //終了

    script.set_ctrl_skip_disable
    @kwt
    script.set_ctrl_skip_enable
    syscom.set_msg_back_enable_flag(1)
    syscom.set_save_enable_flag(1)
    syscom.set_syscom_menu_enable

    @BG(_black)
    @BGMSTOP(3000)

    @timewait

}

