0: autodisable=false

1: onenter="kag.fore.layers[0].loadImages(%[storage:'スタートボタン.png'])"; exp="f.rclickmode = 0" ;storage="プロローグ.ks" ; target="*start";

2: onenter="kag.fore.layers[0].loadImages(%[storage:'ロードボタン.png'])"; exp="f.rclickmode = 1, kag.callExtraConductor('rclick_tjs21.ks','*rclick')";

3: onenter="kag.fore.layers[0].loadImages(%[storage:'コンフィグボタン.png'])"; exp="f.rclickmode = 3, kag.callExtraConductor('rclick_tjs21.ks','*rclick')";

4: onenter="kag.fore.layers[0].loadImages(%[storage:'エクストラボタン.png'])"; storage="omake.ks" ; target="*start";

5: onenter="kag.fore.layers[0].loadImages(%[storage:'エンドボタン.png'])"; storage="start.ks" ; target="*exit";

6: onenter="kag.fore.layers[0].loadImages(%[storage:'black'])";


