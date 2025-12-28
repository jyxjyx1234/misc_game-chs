//===========================================================================
//! (スクリプト中のキャラクター名, 服装番号)で服装の制御ができます。
//! 服装番号は立ち絵素材で指定した服装番号に連動します。
//! 立ち絵素材のレイヤー名が[■11制服]であれば服装番号は１番、
//! 立ち絵素材のレイヤー名が[■21私服]であれば服装番号は２番になります。
//===========================================================================

#define		@スピカ制服ジャケット			$$set_bs_dress_type("sp", 2)
#define		@スピカサロペ					$$set_bs_dress_type("sp", 5)

#define		@愛乃制服ヘルメット				$$set_bs_dress_type("ai", 2)
#define		@愛乃ジャケット					$$set_bs_dress_type("ai", 3)
#define		@愛乃ジャケットヘルメット		$$set_bs_dress_type("ai", 4)

#define		@陽彩制服						$$set_bs_dress_type("hi", 1)

#define		@小詠制服						$$set_bs_dress_type("ky", 1)
#define		@小詠制服帽子・カバンなし		$$set_bs_dress_type("ky", 4)
#define		@小詠ペンキ						$$set_bs_dress_type("ky", 6)

#define		@六花制服						$$set_bs_dress_type("rk", 1)
#define		@六花私服１						$$set_bs_dress_type("rk", 4)
#define		@六花私服１帽子・ポーチなし		$$set_bs_dress_type("rk", 5)
#define		@六花私服１帽子なし				$$set_bs_dress_type("rk", 6)
#define		@六花私服２						$$set_bs_dress_type("rk", 7)
#define		@六花パジャマ					$$set_bs_dress_type("rk", 8)

#define		@文弥私服						$$set_bs_dress_type("fm", 1)

#define		@塁制服							$$set_bs_dress_type("ri", 1)

#define		@つづら制服						$$set_bs_dress_type("td", 1)

#define		@千春私服						$$set_bs_dress_type("ch", 1)
#define		@千春法被						$$set_bs_dress_type("ch", 4)
#define		@千春法被メット					$$set_bs_dress_type("ch", 5)
#define		@千春法被メット閉				$$set_bs_dress_type("ch", 6)

#define		@健私服							$$set_bs_dress_type("kn", 1)

#define		@広美私服						$$set_bs_dress_type("hr", 2)

#define		@玖琉未私服						$$set_bs_dress_type("kr", 1)

#define		@湊私服							$$set_bs_dress_type("mn", 1)

#define		@誠私服							$$set_bs_dress_type("mk", 1)

#define		@ツミレ通常						$$set_bs_dress_type("tm", 1)
#define		@ツミレ吹き出しなし				$$set_bs_dress_type("tm", 2)

#define		@絵美私服						$$set_bs_dress_type("em", 1)
