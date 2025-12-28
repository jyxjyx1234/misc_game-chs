#Z00

//goto #MOVIE

//------------------------------
//★メインフロー


/*--
--*/




#Z10 

set_title("chapter-1")
farcall("0100_プロローグ")


#MOVIE

// pcm.stop
// pcmch[0].stop
// pcmch[1].stop
// bgm.stop

// syscom.set_save_enable_flag(0)
// syscom.set_syscom_menu_disable
// script.set_ctrl_skip_disable
// syscom.set_auto_mode_onoff_flag(0)
// syscom.set_read_skip_onoff_flag(0)
// syscom.set_auto_skip_onoff_flag(0)


// //mov.play_wait_key("imosapo_op")

// mov.play_wait_key("imosapo_fullhd_op")

  
// syscom.set_save_enable_flag(1)
// syscom.set_syscom_menu_enable
// script.set_ctrl_skip_enable


#Z11

$mesugaki_root_flag = 0

set_title("chapter-2")

$eyecatch(bst_jur1B_0G0,bst_jur1A_X68,012300006,1,"男がそんな#D格好して#D恥ずかしくないの？",1,"chapter-2")




farcall("0200_射精管理開始")

if ($mesugaki_root_flag == 1) {


    farcall("0210_バッドエンド")
    
    @クリアフラグ = 1
    returnmenu
}

set_title("chapter-3")
$eyecatch(bst_jur2B_000,bst_jur2E_XX6,012300007,1,"雑魚ちんぽ#Dすぎるでしょ#Dアニキって…",4,"chapter-3")

farcall("0300_わからせ１")


set_title("chapter-4")
$eyecatch(bst_jur1E_0G0,bst_jur1B_X49,012300008,1,"妹に逆レされて#D今どんな気持ち？",3,"chapter-4")

farcall("0400_わからせ２_ver2")


set_title("chapter-5")
$eyecatch(bst_jur1C_030,bst_jur1B_XB0,012300014,1,"なに勝手に#D射精してんだよ！",5,"chapter-5")

farcall("0500_わからせ３")

$mesugaki_root_flag = 0


set_title("chapter-6")
$eyecatch(bst_jur1C_000,bst_jur1A_X68,012300019,1,"無駄撃ちは、#Dおしおきだって#D言ったよねぇ？",3,"chapter-6")

farcall("0600_シナリオ分岐点")

if ($mesugaki_root_flag == 0) {

//アイキャッチ省略
set_title("chapter-A1")
$tag_chapter(0,"chapter-A1")

farcall("1100_A_root_珠理奈に完堕ち")


set_title("chapter-A2")
$eyecatch(bst_jur1C_0G0,bst_jur1A_XC1,012300011,1,"あと５発、#Dお射精がんばろうね♪",2,"chapter-A2")

farcall("1200_A_root_射精管理に感謝")


set_title("chapter-A3")
$eyecatch(bst_jur3A_0G0,bst_jur3B_XG3,012300010,1,"よく頑張ったね#Dえらいえらい♪#Dでもまだ#D出せるだろ？",1,"chapter-A3")

farcall("1300_A_root_新たな世界")


set_title("chapter-A4")
$eyecatch(bst_jur1A_030,bst_jur1B_YZ6,012300022,1,"無駄撃ちは、#Dおしおきだって#D言ったよね…？",5,"chapter-A4")

farcall("1400_A_root 下剋上確定失敗")


set_title("chapter-A5")
$eyecatch(bst_jur2E_030,bst_jur2B_XE6,012300015,1,"許してください～#Dって#Dワンワン吠えろよ。",2,"chapter-A5")

farcall("1450_A_大復習")


//アイキャッチ省略
set_title("chapter-A6")
$tag_chapter(0,"chapter-A6")

farcall("1500_A_root_END")

//上シナリオ内で★★★スタッフロール★★★★★★★★★★★★


//アイキャッチ省略
set_title("chapter-A7")
$tag_chapter(0,"chapter-A7")

farcall("1600_A_root_END後日談")

@珠理奈クリア = 1

}else {

set_title("chapter-B1")
$eyecatch(bst_jur3B_020,bst_jur3A_X26,012300016,1,"再教育が必要だわ、#Dこれは。",4,"chapter-B1")

farcall("2100_B_root_おしおき")


set_title("chapter-B2")
$eyecatch(bst_jur2E_0G0,bst_jur2A_X99,012300009,1,"『お兄ちゃん』♪#Dイヒヒ♪",3,"chapter-B2")

farcall("2200_B_root_香住が仲間に")


set_title("chapter-B3")
$eyecatch(bst_kas1C_071,bst_kas1A_X69,012300034,2,"生徒に見下されて#Dどんな気分です？",2,"chapter-B3")

farcall("2300_B_root_ダブル射精管理１")

set_title("chapter-B4")
$eyecatch(bst_kas2C_025,bst_kas2A_X64,012300032,2,"今日のおちんぽ、#Dかっこよくないなぁ…",4,"chapter-B4")

farcall("2400_B2_root_ダブル射精管理２")

set_title("chapter-B5")
$eyecatch(bst_kas2C_025,bst_kas2B_XB0,012300038,2,"我慢が効かない#D男の人なんて#D最低です。",2,"chapter-B5")

farcall("2500_B_root_ダブル射精管理３")

//アイキャッチ省略
set_title("chapter-B6")
$tag_chapter(1,"chapter-B6")

farcall("2600_B_root_ふたりの告白")

set_title("chapter-B7")
$eyecatch(bst_kas2B_004,bst_kas2C_XG4,012300030,2,"相変わらずの#Dヘタレっぷりですねぇ",4,"chapter-B7")

farcall("2700_B_root_END")

//上シナリオ内で★★★スタッフロール★★★★★★★★★★★★




set_title("chapter-B8")
$eyecatch(bst_kas2A_060,bst_kas2B_YZ6,012300045,2,"エッチの最中も、#D勝手な射精は#DＮＧですよね…？",5,"chapter-B8")

farcall("2800_B_root_END後日談")

@香住クリア = 1

}



//★クリアフラグ
@クリアフラグ = 1

returnmenu
