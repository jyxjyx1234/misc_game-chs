; 多重登録を防止
[return cond="typeof(global.ERuby) != 'undefined'"]

; ルビ拡張 eruby
; [eruby text=ルビ str=ルビ対象文字列] と指定することで、ルビの均等割りを実現。
;
; 2014/11/06  1.21	・不要なデバッグメッセージを削除
; 2013/11/28  1.2	・kagより先にinvalidateさせるため、KAGPlugin化
; 2012/09/05  1.11	ルビの配置位置をさらに変更
; 2012/09/05  1.1	ルビの配置位置を変更
; 2010/07/13  1.01	フォントサイズ変更直後に均等割り振りすると、均等に
;			なっていなかったのを修正

[iscript]

class ERuby extends KAGPlugin {
	var window;
	var startpos, space;	// スタート位置、一文字間の空白(文字幅含む)
	var idx;		// 現在のルビ表示文字数
	var ruby;		// 現在書き込み中のルビ

	// コンストラクタ
	function ERuby(window)
	{
		this.window = window;
		startpos    = 0;
		space       = 0;
		idx         = 0;
		ruby        = "";
	}

	// デストラクタ
	function finalize()
	{
	}

	// ルビ幅を得る
	function getRubyWidth(ruby)
	{
		var cur = window.current;
		var ll = cur.lineLayer;
		var orgsize = ll.font.height;
		ll.font.height = cur.rubySize;
		var rw = ll.font.getTextWidth(ruby);
		ll.font.height = orgsize;
		return rw;
	}

	// ルビスタイルを設定する(e,l,c,rのどれか)
	function getAlign(align='e')
	{
		if (align == 'l' || align == 'left')
			return 'l';
		if (align == 'c' || align == 'center')
			return 'c';
		if (align == 'r' || align == 'right')
			return 'r';
		if (align == 'e' || align == 'expand')
			return 'e';
		return 'e'; // デフォルトで e。
	}

	// ルビを描画する前準備。rubyが振られた時に一度だけ呼ぶ
	function initRuby(ruby, str, align)
	{
		idx = 0;
		this.ruby = ruby;
		align = getAlign(align);

		var cur = window.current;
		var ll = cur.lineLayer;

		var cw = ll.font.getTextWidth(str);	// 文字列の幅
		var rw = getRubyWidth(ruby);		// ルビの幅
//dm('cw,rw = ' + cw + ', ' + rw);
		// ルビ開始位置とルビ幅を決める(まだ相対値のみ)
		startpos = (cw-rw)/2, space = 0;
		if (align == 'l')
			startpos = 0;
		else if (align == 'r')
			startpos = cw-rw;
		else if (align == 'e' && cw > rw) {
			space    = cw/ruby.length;		    //間隔
			//startpos = cw/ruby.length/2-cur.rubySize/2;//開始位置
			startpos = (cw-((ruby.length-1)*space+cur.rubySize))/2;
		}
	}

	// ルビを一文字書く
	function drawRuby(ruby, rx, ry)
	{
		var cur = window.current;
		var ll = cur.lineLayer;
		var orgsize = ll.font.height;
		ll.font.height = cur.rubySize;

		rx = int(rx+0.5), ry = int(ry+0.5);
		if (cur.edge)
			ll.drawText(rx, ry, ruby, cur.chColor, 255,
				    cur.antialiased, cur.edgeEmphasis,
				    cur.edgeColor, cur.edgeExtent, 0, 0);
		else if (cur.shadow)
			ll.drawText(rx, ry, ruby, cur.chColor, 255,
				    cur.antialiased, 255, cur.shadowColor,
				    0, cur.shadowOffsetX, cur.shadowOffsetY);
		else
			ll.drawText(rx, ry, ruby, cur.chColor, 255,
				    cur.antialiased);
		ll.font.height = orgsize;
	}

	// 一文字表示した後に呼ぶ。その文字に対応するルビを表示する
	// 改行をKAGに処理させるために、ここでkag.current.processCh()は呼ばない
	// [emb]で一文字表示した後にこの関数を呼ぶこと。
	function drawRuby_forOneText(str, stridx)
	{
		var cur = window.current;
		var ll = cur.lineLayer;
		var cw = ll.font.getTextWidth(str[stridx]); // 前の文字の幅
		var dx, dy;

		// dx/dy に 前回のキャラクタを表示した位置を求める
		if (cur.vertical) {
			// 縦書きの場合
                        dx = cur.lineLayerBase+(cur.fontSize>>1);
			dy = cur.lineLayerPos - cw;
		} else {
			// 横書きの場合
                        dx = cur.lineLayerPos - cw;
			dy = cur.lineLayerBase-cur.fontSize;
		}
		// 前までの文字列幅
		var lw = ll.font.getTextWidth(str.substr(0,stridx));

		// 文字に対応するルビを振る
		for (; idx < ruby.length; idx++) {
			var rx, ry, rp = startpos;
			if (space == 0)
				rp += getRubyWidth(ruby.substr(0,idx));
			else
				rp += space*idx;
			if (rp > ll.font.getTextWidth(str.substr(0,stridx+1)))
				// 次の文字に対応するルビだった
				if (stridx < str.length-1)
					return;
				// ただし、文字列最後の場合ははみ出すルビも
				// 表示するため無視
			if (cur.vertical) {
				// 縦書き
				rx = dx + cur.rubySize + cur.rubyOffset;
				ry = dy+rp-lw;
			} else {
				// 横書き
				rx = dx+rp-lw;
				ry = dy - cur.rubySize - cur.rubyOffset;
			}
			drawRuby(ruby[idx], rx, ry);
		}
	}
}


// 初期化
kag.addPlugin(global.eruby = new global.ERuby(kag));

[endscript]


[macro name="eruby"]
[if exp="mp.str === void"]
	[ruby *]
[else]
;	[eval exp="global.eruby.initRuby(mp.text, mp.str, mp.align)"]
; 後ろのeruby_loop内へ移動↑
	[eval exp="mp.idx = 0"]
	[call storage=eruby.ks target=*eruby_loop]
[endif]
[endmacro]



[return]


*eruby_loop
; 表示文字がなくなったら終了
[return cond="mp.idx >= mp.str.length"]
; 一文字表示。
[emb exp="mp.str[mp.idx]"]
; ここで [emb] によって文字ごとのwaitが入ることを期待
[if exp="mp.idx == 0"]
	; 文字の大きさを変えた直後は、kag.current.fontSize に実際のフォント
	; サイズが反映されていないことがあるので…。kag.current._fontSizeを
	; 参照すると、今後の拡張で実装変わっちゃうかもしれないのでこういう
	; 対処で逃げる
	[eval exp="global.eruby.initRuby(mp.text, mp.str, mp.align)"]
[endif]
; そして、↓でその文字に対応するルビを振る。waitが長いと不自然に見えるかも
; しれないが、面倒なことせずに改行に対応するためにこうしてある。許して。
[eval exp="global.eruby.drawRuby_forOneText(mp.str, mp.idx++)"]

; あとはループへ。
[jump target=*eruby_loop]















; ↓これがやりたくなかった「面倒な改行処理」。MessageWindow.tjs の
; processCh() に書かれているものと同じ。

		if ((vert ?
			cur.y >= cur.relineypos :
			cur.x >= cur.relinexpos) && cur.autoReturn) {
			if (((cur.lastDrawnCh == "" ||
			      cur.wwLeading.indexOf(cur.lastDrawnCh) == -1) &&
			     cur.wwFollowing.indexOf(ch) == -1) ||
			    (cur.lastDrawnCh != "" &&
			     cur.wwFollowingWeak.indexOf(cur.lastDrawnCh)!=-1&&
			      cur.wwFollowingWeak.indexOf(ch) != -1)) {
				// 最後に描画したのが行末禁則文字でない場合
				// しかもこれから描画するのが行頭禁則文字でない
				// 場合
				// または弱禁則文字が連続していない場合
                                cur.reline();
			}
			elsif (vert ? y > cur.imageHeight : x > cur.imageWidth)
			{
				// これから描画するのが強禁則文字ではなくて、
				// 確実に 右端を越える場合
				// ( この場合は余白は考えない )
				cur.reline();
			}
		}


