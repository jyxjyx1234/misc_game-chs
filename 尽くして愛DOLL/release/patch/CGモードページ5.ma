0: autodisable=false

;スイッチ関係
;1: onenter="kag.fore.layers[0].loadImages(%[storage:'CGボタン.png'])" ;storage="CGモードinit.ks" ; target="*start";
2: onenter="kag.fore.layers[0].loadImages(%[storage:'サウンドボタン.png'])" ;storage="サウンド.ks" ; target="*start";
3: onenter="kag.fore.layers[0].loadImages(%[storage:'シーンボタン.png'])" ; storage="シーンモード.ks" ; target="*start";
4: onenter="kag.fore.layers[0].loadImages(%[storage:'戻るボタン.png'])" ; storage="omake.ks" ; target="*back";


;サムネイル関係
5:  if(sf.sev_33==1){ storage="CGモードfnc.ks" ;target="*ev_33" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_33.png'])" ;}
6:  if(sf.ev_34==1){ storage="CGモードfnc.ks" ;target="*ev_34" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_34.png'])" ;}
7:  if(sf.sev_35==1){ storage="CGモードfnc.ks" ;target="*ev_35" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_35.png'])" ;}

;ページ関係
8: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ1.png'])" ;storage="CGモードinit.ks" ; target="*page1";
9: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ2.png'])" ;storage="CGモードinit.ks" ; target="*page2";
10: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ3.png'])" ;storage="CGモードinit.ks" ; target="*page3";
11: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ4.png'])" ;storage="CGモードinit.ks" ; target="*page4";
;12: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ5.png'])" ;storage="CGモードinit.ks" ; target="*page5";

;ダミー効果
13: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";
