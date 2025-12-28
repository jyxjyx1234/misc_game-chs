#Z00

//立ち絵エモート

#database

$chr_emote_database[01] = "ham_ef01_warai"
$chr_emote_database[02] = "ham_ef02_ikari"
$chr_emote_database[03] = "ham_ef03_bikkuri"
$chr_emote_database[04] = "ham_ef04_omoituki"
$chr_emote_database[05] = "ham_ef05_kizuku"
$chr_emote_database[06] = "ham_ef06_kizuku2"
$chr_emote_database[07] = "ham_ef07_hatena"
$chr_emote_database[08] = "ham_ef08_tameiki"
$chr_emote_database[09] = "ham_ef09_fuan"
$chr_emote_database[10] = "ham_ef10_ase-tarari"
$chr_emote_database[11] = "ham_ef11_fukidasi-ase"
$chr_emote_database[12] = "ham_ef12_fukidasi-heart"
$chr_emote_database[13] = "ham_ef13_fukidasi-mojyamojya"
$chr_emote_database[14] = "ham_ef14_fukidasi-tenten"
$chr_emote_database[15] = "ham_ef15_fukidasi-tenten2"

//効果音も上と番号をあわせてここに書く

$chr_emote_se_database[01] = "emote01"
$chr_emote_se_database[02] = "emote02"
$chr_emote_se_database[03] = "emote03"
$chr_emote_se_database[04] = "emote04"
$chr_emote_se_database[05] = "emote05"
$chr_emote_se_database[06] = "emote06"
$chr_emote_se_database[07] = "emote07"
$chr_emote_se_database[08] = "emote08"
$chr_emote_se_database[09] = "emote09"
$chr_emote_se_database[10] = "emote10"
$chr_emote_se_database[11] = "emote11"
$chr_emote_se_database[12] = "emote12"
$chr_emote_se_database[13] = "emote13"
$chr_emote_se_database[14] = "emote14"
$chr_emote_se_database[15] = "emote14"
//$chr_emote_se_database[15] = "emote15"


return


command $chr_emote(property $chrname:str,property $emote_no,property $se_play,property $se_wait,property $hanten_flag) {

    if ($chrname.len == 3) {    //キャラ判別３文字が入っていた場合
        @chr_tansaku($chrname)
    }else{	//objnoが入っていた場合（★２桁まで。"22"のように指定する。主にモブ用
        $chr_tansaku_hit_objno = $chrname.tonum
    }

    if ($chr_tansaku_hit_objno == -1) {return}
    
    gosub #database


    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].create_movie($chr_emote_database[$emote_no],0,0,0,ready_only = 1)
    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].set_scale(1500,1500)
    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep.resize(2)

    if ($hanten_flag == 0) {
        front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = -640
    }else{
        front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = 560
        front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].rotate_X = 1800
    }


    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].y_rep.resize(2)
    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].y_rep[0] = -2000

    switch($emote_no) { //位置を微調整
        case(2) front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = -480
        case(7) front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = -480
        case(8) front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = -600
        case(9) front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = -540
                front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].y_rep[0] = -2100
        case(10) front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].x_rep[0] = -480
                 front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].y_rep[0] = -2100

    }

    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].disp = 1
    front.object[$chr_tansaku_hit_objno].child[<emote_child_obj>].resume_movie

    //効果音
    if ($se_play == 1) {
        pcmch[2].play($chr_emote_se_database[$emote_no])        //ch2を使用
        if ($se_wait ==1) {
            pcmch[2].wait_key
        }
    }



}


