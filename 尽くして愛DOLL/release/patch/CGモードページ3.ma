0: autodisable=false

;スイッチ関係
;1: onenter="kag.fore.layers[0].loadImages(%[storage:'CGボタン.png'])" ;storage="CGモードinit.ks" ; target="*start";
2: onenter="kag.fore.layers[0].loadImages(%[storage:'サウンドボタン.png'])" ;storage="サウンド.ks" ; target="*start";
3: onenter="kag.fore.layers[0].loadImages(%[storage:'シーンボタン.png'])" ; storage="シーンモード.ks" ; target="*start";
4: onenter="kag.fore.layers[0].loadImages(%[storage:'戻るボタン.png'])" ; storage="omake.ks" ; target="*back";

;ページ関係
5:  if(sf.ev_17==1){ storage="CGモードfnc.ks" ; target="*ev_17" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_17.png'])" ;}
6:  if(sf.sev_18==1){ storage="CGモードfnc.ks" ; target="*ev_18" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_18.png'])" ;}
7:  if(sf.sev_19==1){ storage="CGモードfnc.ks" ; target="*ev_19" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_19.png'])" ;}
8:  if(sf.ev_20==1){ storage="CGモードfnc.ks" ; target="*ev_20" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_20.png'])" ;}
9:  if(sf.ev_21==1){ storage="CGモードfnc.ks" ; target="*ev_21" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_21.png'])" ;}
10: if(sf.ev_22==1){ storage="CGモードfnc.ks" ; target="*ev_22" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_22.png'])" ;}
11: if(sf.ev_23==1){ storage="CGモードfnc.ks" ; target="*ev_23" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_23.png'])" ;}
12: if(sf.ev_24==1){ storage="CGモードfnc.ks" ; target="*ev_24" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_24.png'])" ;}

;ページ関係
13: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ1.png'])" ;storage="CGモードinit.ks" ; target="*page1";
14: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ2.png'])" ;storage="CGモードinit.ks" ; target="*page2";
;15: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ3.png'])" ;storage="CGモードinit.ks" ; target="*page3";
16: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ4.png'])" ;storage="CGモードinit.ks" ; target="*page4";
17: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ5.png'])" ;storage="CGモードinit.ks" ; target="*page5";

;ダミー効果
18: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";
