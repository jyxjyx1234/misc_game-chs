0: autodisable=false

;スイッチ関係
;1: onenter="kag.fore.layers[0].loadImages(%[storage:'CGボタン.png'])" ;storage="CGモードinit.ks" ; target="*start";
2: onenter="kag.fore.layers[0].loadImages(%[storage:'サウンドボタン.png'])" ;storage="サウンド.ks" ; target="*start";
3: onenter="kag.fore.layers[0].loadImages(%[storage:'シーンボタン.png'])" ; storage="シーンモード.ks" ; target="*start";
4: onenter="kag.fore.layers[0].loadImages(%[storage:'戻るボタン.png'])" ; storage="omake.ks" ; target="*back";

;ページ関係
5:  if(sf.ev_25==1){ storage="CGモードfnc.ks" ; target="*ev_25" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_25.png'])" ;}
6:  if(sf.ev_26==1){ storage="CGモードfnc.ks" ; target="*ev_26" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_26.png'])" ;}
7:  if(sf.ev_27==1){ storage="CGモードfnc.ks" ; target="*ev_27" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_27.png'])" ;}
8:  if(sf.ev_28==1){ storage="CGモードfnc.ks" ; target="*ev_28" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_28.png'])" ;}
9:  if(sf.ev_29==1){ storage="CGモードfnc.ks" ; target="*ev_29" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_29.png'])" ;}
10: if(sf.ev_30==1){ storage="CGモードfnc.ks" ; target="*ev_30" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_30.png'])" ;}
11: if(sf.ev_31==1){ storage="CGモードfnc.ks" ; target="*ev_31" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_31.png'])" ;}
12: if(sf.ev_32==1){ storage="CGモードfnc.ks" ; target="*ev_32" ;onenter="kag.fore.layers[0].loadImages(%[storage:'sev_32.png'])" ;}

;ページ関係
13: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ1.png'])" ;storage="CGモードinit.ks" ; target="*page1";
14: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ2.png'])" ;storage="CGモードinit.ks" ; target="*page2";
15: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ3.png'])" ;storage="CGモードinit.ks" ; target="*page3";
;16: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ4.png'])" ;storage="CGモードinit.ks" ; target="*page4";
17: onenter="kag.fore.layers[0].loadImages(%[storage:'ページ5.png'])" ;storage="CGモードinit.ks" ; target="*page5";

;ダミー効果
18: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";
