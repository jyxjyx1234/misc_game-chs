
/*----

	■キャラクターごとの服装設定、立ち絵補正の定義
	
	★2024.02.08
	立ち絵縦補正の調整はまだできてない

-----*/


#PROPERTY	$chr_fukusou : strlist[14]

//--------------------------------------
//美姫

#DEFINE		<MKI_TCG_HOSEI_Y>	0

#DEFINE	@服装_珠理奈制服			$chr_fukusou[0] = "1"
#DEFINE	@服装_珠理奈私服			$chr_fukusou[0] = "2"
#DEFINE	@服装_珠理奈下着			$chr_fukusou[0] = "3"
#DEFINE	@服装_珠理奈ボンデージ		$chr_fukusou[0] = "4"
#DEFINE	@服装_珠理奈全裸			$chr_fukusou[0] = "5"

#DEFINE	@服装_珠理奈制服ニーソなし			$chr_fukusou[0] = "A"
#DEFINE	@服装_珠理奈下着ニーソなし			$chr_fukusou[0] = "B"
#DEFINE	@服装_珠理奈下着パンツのみ			$chr_fukusou[0] = "C"
#DEFINE	@服装_珠理奈全裸ニーソ				$chr_fukusou[0] = "D"

#DEFINE	@服装_香住制服			$chr_fukusou[1] = "1"
#DEFINE	@服装_香住下着			$chr_fukusou[1] = "2"
#DEFINE	@服装_香住ボンデージ	$chr_fukusou[1] = "3"
#DEFINE	@服装_香住全裸			$chr_fukusou[1] = "4"

#DEFINE	@服装_香住制服靴下なし			$chr_fukusou[1] = "A"
#DEFINE	@服装_香住下着靴下あり			$chr_fukusou[1] = "B"
#DEFINE	@服装_香住下着パンツのみ		$chr_fukusou[1] = "C"


//--------------------------------------
//モブ用
#DEFINE		<MOB1_TCG_HOSEI_Y>	-100
#DEFINE		<MOB2_TCG_HOSEI_Y>	-100
