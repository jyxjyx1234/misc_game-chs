; クラスの多重登録を防止
[return cond="typeof(global.SEDats) != 'undefined'"]

; 2014/05/10	1.92	[tempload bgm=false se=false]に対応。class SEDatsの
;			onRestore()でbgm/seがfalseの場合は何もしないようにした
; 2013/06/19	1.91+	setBGMOptions()からのsetSEOptions()呼び出し間違い修正
;			getBGMOptions()でbufid -> bgm.bufid
;			se_play()内でaddSE()への引数が誤ってたので修正
;			allocSEBuf()で既に発声中なら同じbufidを返すよう変更
;			playSE()/stopSE()を追加
;				ToDo:fadeinSE()/fadeoutSE()/fadeSE()
;			不要バッファが回収できないケースがあった不具合を修正
;			playSE()でreclaimSE()にて不要バッファを回収するよう変更
; 2012/06/18	1.90	groupを階層的に持てるよう再構築
; 2011/11/26	1.47	[se_stop]で存在しないグループを指定した時にエラーに
;			なっていたのを修正
; 2011/08/11	1.46	bgm_playでreplaysameを廃止、noreplayを追加。
; 2011/05/25	1.45	addSE()でeternalが無い場合に登録直後に自身を削除する
;			場合があったのを修正
; 2011/05/23	1.40	addSE()で elm.name がある時にgroupとしてelm.nameが登録
;			されていたのを修正。具体的には、
;			SEDat:name->sename, SEGroup:name->grnameに変更
;			音が途切れちゃいけないところで途切れてた
; 2011/05/06	1.30	[iscript]中の行頭の * を回避
; 2011/03/28	1.21	find(group,sename)で、groupが指定されながらsenameが
;			登録されていなかった時にエラーになっていたのを修正
; 2011/03/05	1.20	TJS関数 se_play()/se_opt()を追加
; 2011/01/26	1.11	se_cacheが全く動いてなかったのを修正
; 2010/12/23	1.10	restore()でdicを返してなかったのを修正
;			groupを指定できるよう変更
;			TJSFunctions.ks を利用するよう変更
;			bgm_*で volumeとgvolumeに 5/50 のような分数指定を可能に
; 2010/08/10	1.02	[bgm_play][bgm_fadein]でファイルがない時にエラーに
;			なっていたのを修正
; 2010/08/10	1.01	[bgm_wait]を追加

[call storage="TJSFunctions.ks"]

; Oggプラグイン読み込み
; [loadplugin module=wuvorbis.dll]

[iscript]

/*
kag.onSESoundBufferFade
        function onSESoundBufferFadeCompleted(id)
        {
                // 効果音のフェードが終了した
                conductor.trigger('sefade' + id);
        }

        function onSESoundBufferStop(id)
        {
                // 効果音の再生が終了した
                conductor.trigger('sestop' + id);
        }

kag.onSESoundBufferFadeCompleted = function {
		charsounds_obj.onSESoundBufferFadeComplete(id);
                // 効果音のフェードが終了した
                conductor.trigger('sefade' + id);
}

kag.onSESoundBufferStop = function {
		charsounds_obj.onSESoundBufferStop(id);
                // 効果音のフェードが終了した
                conductor.trigger('sestop' + id);
}
 [iscript]中では頭に*を書かないこと！*/


// ●サウンドデータが存在するかどうか(拡張子チェック)
function isExistSoundStorage(storage)
{
	return findStorage(storage, [".ogg", ".mp3", ".wav", ".mid", ".tcw"]);
}


// 効果音グループ構造体
// 木構造になっており、parent/children がそれぞれ親と子へのポインタを表す
class SEGroup {
	var name;		// 名前
	var parent;		// 親へのリンク
	var children = [];	// 子供の配列
	var volume   = 100;	// 初期volume
	var gvolume  = 100;	// 初期gvolume
	var pan      = 0;	// 初期pan

	// コンストラクタ
	function SEGroup(name, parent, elm)
	{
		this.name   = name;
		this.parent = parent;
		if (parent !== void)
			parent.children.add(this);
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		if (parent !== void)
			parent.children.remove(this);
		for (var i = children.count-1; i >= 0; i--)
			invalidate children[i];
	}

	// オプション設定
	function setOptions(elm)
	{
		if (elm === void)
			return;
	//	name    = elm.name     if (elm.name    !== void);
	//	parent  = elm.parent   if (elm.parent  !== void);
		volume  = +elm.volume  if (elm.volume  !== void);
		gvolume = +elm.gvolume if (elm.gvolume !== void);
		pan     = +elm.pan     if (elm.pan     !== void);
	}

	// オプションを得る(ここでは親の値は考慮しない)
	function getOptions()
	{
		return %[
			name    : name,
			parent  : parent,
			volume  : volume,
			gvolume : gvolume,
			pan     : pan
		];
	}

	// 指定名のSEGroupを探す。なければ void を返す
	function find(name, fromroot=false)
	{
		if (this.name == name)
			return this;
		var now = this;
		// fromroot が指定されてたら、rootから探し出す
		if (fromroot)
			while (now.parent !== void)
				now = now.parent;
		// そうでなければ今以下から探す
		var ret;
		for (var i = now.children.count-1; i >= 0; i--)
			if ((ret = now.children[i].find(name)) !== void)
				return ret;
		return void;
	}

	// 指定名より下のSEGroup配列を返す(name===voidで全て)
	function findary(name)
	{
		var node = this;
		if (name !== void) {
			if ((node = find(name)) === void)
				return [];
		}
		var ret = [ node ];
		for (var i = node.children.count-1; i >= 0; i--)
			add_ary(ret, node.children[i].findary());
		return ret;
	}

	// このSEGroupのvolume/gvolumeを得る
	function getval(type)
	{
		if (parent === void)
			return real(+this[type]);
		if (type == 'pan') {
			// panは上と加算して -100～+100 の範囲に補正
			var curpan = +pan + parent.getval('pan');
			return Math.max(-100, Math.min(curpan, 100));
		}
		// その他は乗算
		return real(+this[type] * parent.getval(type))/100;
	}

	// コピー
	function assgin(src)
	{
		name    = src.name;
		parent  = src.parent;
		children.assign(src.children);
		volume  = src.volume;
		gvolume = src.gvolume;
		pan     = src.pan;
	}

	// セーブ
	function store()
	{
		var dic      = %[];
		dic.name     = name;
	//	dic.parent   = parent.name;	セーブしない
		dic.children = [];
		dic.volume   = volume;
		dic.gvolume  = gvolume;
		dic.pan      = pan;
		for (var i = children.count-1; i >= 0; i--)
			dic.children[i] = children[i].store();
		return dic;
	}

	// ロード
	function restore(dic, p)
	{
		if (dic === void)
			return;
		finalize();	// 綺麗にする
		name    = dic.name;
		parent  = p;
		volume  = +dic.volume;
		gvolume = +dic.gvolume;
		pan     = +dic.pan;
		for (var i = 0; i < dic.children.count; i++) {
			var c = new .SEGroup(dic.children[i].name, this);
			// childlen[i]には、↑で追加されるのでここでは不要
			c.restore(dic.children[i], this);
			// これないとchildren.countが0のままになる…なんで？
			children[i] = c;
		}
	}
};


// 効果音一つのデータ(このクラスはデータ保存のみで、再生などはKAGから実施する)
class SEDat {
	var	name;		// SE名(任意)
	var	segroup;	// SEグループ
	var	start   = 0;	// 再生開始時間
	var	bufid   = -1;	// 発音中のバッファID(eternalなら、未使用で-1)
	var	eternal = false;// この効果音ラインを永久に保存するかどうか
	var     reclaim = true; // 発音中に回収可能かどうか
	var	volume  = 100;	// この効果音ラインのボリューム
	var	gvolume = 100;	// この(ry
	var	pan     = 0;	// この(ry

	// コンストラクタ
	function SEDat(name, segroup, elm)
	{
		this.name    = name;
		this.segroup = segroup;
		setOptions(elm);
	}

	// デストラクタ
	function finalize()
	{
		stopSE();
	}

	// オプション設定(実際に値を設定する)
	function setOptions(elm)
	{
		if (elm !== void) {
			eternal = elm.eternal  if (elm.eternal !== void);
			reclaim = elm.reclaim  if (elm.reclaim !== void);
			volume  = +elm.volume  if (elm.volume  !== void);
			gvolume = +elm.gvolume if (elm.gvolume !== void);
			pan     = +elm.pan     if (elm.pan     !== void);
		}
		if (bufid >= 0 &&
		   (elm === void || elm.actualset === void || elm.actualset)) {
			var newpan = segroup.getval('pan') + pan;
			var e = %[
				buf    : bufid,
				volume : segroup.getval('volume') *volume /100,
				gvolume: segroup.getval('gvolume')*gvolume/100,
				pan    : Math.max(-100, Math.min(newpan, 100))
			];
			kag.getHandlers()['seopt'](e);
		}
	}

	// 現在のオプション設定を得る
	function getOptions()
	{
		return %[
			name    : name,
			segroup : segroup.name,
			start   : start,
			bufid   : bufid,
			eternal : eternal,
			reclaim : reclaim,
			volume  : volume,
			gvolume : gvolume,
			pan     : pan,
			status  : (bufid < 0) ? 'stop' : kag.se[bufid].status
		];
	}

	// 効果音バッファを使用中とする(音はKAG側で鳴らし、ここでは鳴らさない)
	function playSE(storage, loop, bufid=this.bufid)
	{
		this.bufid = bufid;
		if (this.bufid < 0) {
			em('エラー！バッファが確保されていない！');
			return;
		}
		if (!isExistSoundStorage(storage)) {
			em('エラー！存在しない音声ファイル: '+mp.storage);
			return;
		}
		kag.tagHandlers.playse(%[buf:bufid,storage:storage,loop:loop]);
		start = System.getTickCount();
	}

	// 効果音バッファを未使用とし、開放したbufidを返す
	function stopSE(force=true)
	{
		if (bufid < 0 ||
		    (kag.se[bufid].status == 'play' && !reclaim && !force))
			return -1;	// 開放できなかった

		// 既に再生終了か再生中だったが再利用可能だった
		kag.getHandlers()['stopse'](%[buf:bufid]);
		var ret = bufid;
		bufid = -1;
		return ret;
	}

	// コピーする
	function assing(src)
	{
		// 互換性のために条件分岐
		name    = src.name;
		segroup = src.segroup;
		start   = src.start;
		bufid   = src.bufid;
		eternal = src.eternal;
		reclaim = src.reclaim;
		volume  = src.volume;
		gvolume = src.gvolume;
		pan     = src.pan;
	}

	// 栞をセーブする時(辞書配列を返すだけ)
	function store()
	{
		var dic     = %[];
		dic.name    = name;
		dic.gname   = segroup.name;
		dic.start   = (start == 0) ? 0 : System.getTickCount()-start;
		dic.bufid   = bufid;
		dic.eternal = eternal;
		dic.reclaim = reclaim;
		dic.volume  = volume;
		dic.gvolume = gvolume;
		dic.pan     = pan;
		return dic;
	}

	// 栞からロードする時(辞書配列に読み込むだけ)
	function restore(dic)
	{
		// if(dic === void)
		//	return;
		name    = dic.name;
		segroup = segroup.find(dic.gname, true);
		start   = (dic.start == 0) ? 0 : System.getTickCount()-dic.start;
		bufid   = dic.bufid;
		eternal = dic.eternal;
		reclaim = dic.reclaim;
		volume  = +dic.volume;
		gvolume = +dic.gvolume;
		pan     = +dic.pan;
	}
};



// SE管理用KAGPlugin
class SEDats extends KAGPlugin {
	var	bufnum;		// 確保するバッファ数
	var	rootgroup;	// 効果音グループルート('master')
	var     seary;		// 登録済みの効果音ライン(sedat)配列
	var	bufary;		// サウンドバッファ配列(idとindexが対応)
				// bufary[i]===void:未使用
				// 発音中の場合:sedat
	var	bgmgroup;	// BGMグループ('master'直下);

	// コンストラクタ
	function SEDats(num=kag.numSEBuffers) {
		// デフォルトでは全ての効果音バッファを対象とする
		bufnum    = num;
		rootgroup = new SEGroup("master"); // masterはrootとして登録
		seary     = [];
		bufary    = [];
	}

	// デストラクタ
	function finalize()
	{
		for (var i = seary.count-1; i >= 0; i--)
			invalidate seary[i];
		invalidate rootgroup;
	}

	// group/senameに合致するsedatの配列を返す。
	// sename=void, gname=abcの場合、gname以下を参照しているseが全部対象
	function findSEary(sename, gname)
	{
		var ret = [], segroupary = rootgroup.findary(gname);
		for (var i = seary.count-1; i >= 0; i--)
			if ((sename === void || sename == seary[i].name) &&
			    segroupary.find(seary[i].segroup) >= 0)
				ret.add(seary[i]);
		if (sename === void && gname !== void) {
			// 探したgname以下に合致するseを検索
			for (var i = ret.count-1; i >= 0; i--) {
				var g = ret[i].segroup.children;
				for (var j = g.count-1; j >= 0; j--)
					add_ary(ret, findSEary(,g[j].name));
			}
		}
		return ret;
	}

	// group/senameに合致するsedatを返す。複数あった場合は最初のもの
	function findSE(sename, gname)
	{
		var ret = findSEary(sename, gname);
		return (ret.count < 1) ? void : ret[0];
	}

	// 回収可能なSEdatを回収する
	function reclaimSE()
	{
		for (var i = seary.count-1; i >= 0; i--) {
			var p = seary[i];
			if (!p.eternal && 
			    (p.bufid < 0 || kag.se[p.bufid].status != 'play'))
				delSE(p.name);
		}
	}

	// 空き効果音バッファ No.を返す_サブルーチン
	function getFreeSEBuf()
	{
		// 全部使ってなかったら未使用部分を使う
		if (bufary.count < bufnum)
			return bufary.count;

		// 既に開放されたSEがあればそこを使う
		for (var i = bufary.count-1; i >= 0; i--)
			if (bufary[i] === void)
				return i;

		// 既に発音終了して開放可能なSEを開放して確保
		for (var i = bufary.count-1; i >= 0; i--) {
			// pause の時は'stop'の模様
			if (kag.se[i].status != 'play')
				if (delSE(bufary[i].name))
					return i;
		}

		// 最も古いSEから、reclaim可能ならreclaimして開放して確保
		var tmpary = [];
		tmpary.assign(bufary);
		for (var i = 0; i < tmpary.count; i++)
			for (var j = i+1; j < tmpary.count; j++)
				if (tmpary[i].start > tmpary[j].start) {
					var tmp = tmpary[i];
					tmpary[i] = tmpary[j];
					tmpary[j] = tmp;
				}
		// これでtmparyには古い順に並んでいる
		var stopbufid;
		for (var i = 0; i < tmpary.count; i++)
			if ((stopbufid = tmpary[i].stopSE(false)) >= 0) {
				bufary[stopbufid] = void;
				return stopbufid;
			}

		// どうあっても開放できなかった場合
//		em("効果音バッファが不足しています。");
System.inform("効果音バッファが不足しています。");
		return -1; // エラーで止まるとアレなので、0 を返す
	}

	// 実際にバッファNo.を確保する
	function allocSEBuf(sename, sedat)
	{
		if (sedat === void)
			sedat = findSE(sename);	// 絶対あるはずだ！
		if (sedat.bufid < 0) {
			var bufid = getFreeSEBuf();
			if (bufid < 0)
				return false;
			sedat.bufid = bufid;
			bufary[bufid] = sedat;
		}

		// ここでSEのvolume/gvolume/panを設定しておく
		sedat.setOptions();
		return true;
	}

	// SEGroupを登録する。既に登録済みならオプション設定する
	function addSEGroup(gname, parent='master', elm)
	{
		var g = rootgroup.find(gname);
		if (g !== void) {
			g.setOptions(elm);
			return g;
		}
		var p = rootgroup.find(parent);
		if (p === void) {
			System.inform('親SEGroup:'+parent+'が存在しません。');
			return void;
		}
		new SEGroup(gname, p, elm);
		return g;
	} 

	// SEGroupを削除する。それに結び付けられている SEDatも停止・削除される
	function delSEGroup(gname)
	{
		// 関連しているSEdatを停止し、削除する
		var segroups = rootgroup.findary(gname);
		for (var i = segroups.count-1; i >= 0; i--)
			for (var j = seary.count-1; j >= 0; j--)
				if (seary[j].segroup == segroups[i])
					delSE(seary[j].name, true);

		// 該当するSEGroup以下を全て削除する
		if (gname === void) {
			// 全部削除して root だけ作る
			invalidate rootgroup;
			rootgroup = new SEGroup("master");
		} else {
			var node = rootgroup.find(gname);
			if (node !== void)
				invalidate node;
		}
	}

	// SEを追加する。sename が未指定だったらUUIDにしちゃう
	function addSE(sename="UUID_"+System.createUUID(), gname='master', elm)
	{
		var sedat;
		if ((sedat = findSE(sename)) !== void)
			sedat.setOptions(elm);
		else {
			// 未登録だった場合
			sedat = new SEDat(sename, rootgroup.find(gname), elm);
			seary.add(sedat);
		}
		return sedat;
	}

	// SEを削除する。sename/gname は void でもよい
	function delSE(sename, gname, force=false)
	{
		var deleted = false;
		var sedats = findSEary(sename, gname);
		for (var i = sedats.count-1; i >= 0; i--) {
			if (sedats[i].eternal && !force)
				continue;
			deleted = true;
			var stopbufid = sedats[i].stopSE();
			if (stopbufid >= 0)
				bufary[stopbufid] = void;
			invalidate sedats[i];
			seary.remove(sedats[i]);
		}
		return deleted;
	}

	// SEを再生する
	function playSE(sename, gname, elm)
	{
		reclaimSE();	// どんどん滞留するので、頻繁に回収する
		// ここで回収するのがいいかどうかは不明。しかし、sedatを
		// 参照した後に回収すると、参照中のものを回収しちゃう可能性が
		// あり、allocSEBuf()などで回収してはならない。

		var sedat = addSE(sename, gname, elm);
		if (sedat === void) {
			em('エラー！効果音登録失敗！'+sename);
			return false;
		}
		if (!isExistSoundStorage(elm.storage)) {
			em('エラー！存在しない音声ファイル: '+elm.storage);
			return false;
		}
		if (!allocSEBuf(, sedat))
			return false;
		sedat.playSE(elm.storage, elm.loop);
		return true;
	}

	// SEが再生中かどうか調べる。複数していされたら一つでも再生中なら真
	function isPlayingSE(sename, gname, elm)
	{
		var sedats = findSEary(sename, gname);
		for (var i = sedats.count-1; i >= 0; i--) {
			if (sedats[i].bufid < 0)
				continue;
			if (kag.se[sedats[i].bufid].status == 'play')
				return true;
		}
		return false;
	}

	// SEを停止する
	function stopSE(sename, gname, force=true)
	{
		var sedats = findSEary(sename, gname);
		for (var i = sedats.count-1; i >= 0; i--) {
			var stopbufid = sedats[i].stopSE(force);
			if (stopbufid >= 0)
				bufary[stopbufid] = void;
		}
		// 不要なら削除、必要なら残る
		delSE(sename, gname);
	}

	// 指定されたsegroupのオプションを設定
	function setSEGroupOptions(gname = 'master', elm)
	{
		var segroup = rootgroup.find(gname);
		if (segroup === void)
			return;
		segroup.setOptions(elm);

		// 設定されたら、それを再生中の SE にも反映する
		var ary = findSEary(,gname);
		for (var i = ary.count-1; i >= 0; i--)
			if (ary[i].name == 'BGM')
				setBGMOptions(); // BGMだけ特別扱い
			else
				ary[i].setOptions();
	}

	// 指定されたsegroupのオプションを得る(gname=必須)
	function getSEGroupOptions(gname)
	{
		return rootgroup.find(gname).getOptions();
	}

	// 指定されたsedatのオプションを設定
	function setSEOptions(sename, gname, elm)
	{
		var sedats = findSEary(sename, gname);
		for (var i = sedats.count-1; i >= 0; i--)
			sedats[i].setOptions(elm);
	}

	// 指定されたsedatのオプションを得る(sename=必須)
	function getSEOptions(sename)
	{
		return findSE(sename).getOptions();
	}

	// 'BGM'のオプションを設定する。'BGM'が未登録ならkag.bgmopt()を実行
	function setBGMOptions(elm)
	{
		var bgm = findSE('BGM');
		var conf;
		if (bgm === void)
			conf = elm;
		else {
			setSEOptions('BGM', , elm);
			conf = getBGMOptions(bgm);
		}
		if (elm !== void && elm.actualset !== void && !elm.actualset)
			return;
		if (conf !== void)
			kag.getHandlers()['bgmopt'](conf);
	}

	// 'BGM'のオプションを入手する
	function getBGMOptions(bgm)
	{
		if (bgm === void)
			if ((bgm = findSE('BGM')) === void) {
				var b = kag.bgm;
				// 未登録なので現在の値を返す
				return %[
					volume  : b.volume/1000,
					gvolume : b.currentBuffer.volume2/1000
				];
			}
		var newpan = bgm.segroup.getval('pan') + bgm.pan;
		// 'master'を反映したオプションを返す
		return %[
			volume : bgm.segroup.getval('volume') *bgm.volume /100,
			gvolume: bgm.segroup.getval('gvolume')*bgm.gvolume/100,
			// pan は実際には使われないが
			pan    : Math.max(-100, Math.min(newpan, 100))
		];
	}

	// セーブする時の動作
	function onStore(f, elm)
	{
		var dic       = f.SEDats = %[];
		dic.bufnum    = bufnum;
		dic.rootgroup = rootgroup.store();
		dic.seary     = [];
		for(var i = seary.count-1; i >= 0; i--)
			dic.seary[i] = seary[i].store();
		return dic;
	}

	// ロードする時の動作
	function onRestore(f, clear, elm)
	{
		// (temploadで)bgm/seをクリアするかどうかのフラグ
		var restore_bgm = elm === void || elm.bgm === void || +elm.bgm;
		var restore_se  = elm === void || elm.se  === void || +elm.se;
		if (!restore_bgm || !restore_se) {
			// temploadでbgm=falseまたはse=falseが指定されたときは
			// BGM/SEの停止･開始はKAGが実行するので、SEやBGMは
			// 今の状態のまま変化しないことを期待して何もしない
			return;
		}

		// フツーにロードするとき(BGM/SEを復旧しないとき)
		finalize();	// 全部真っ白にして
		var dic  = f.SEDats;
		if(dic === void)
			return;
		SEDats(dic.bufnum);	// 初期化
		rootgroup.restore(dic.rootgroup);
		for (var i = dic.seary.count-1; i >= 0; i--) {
			seary[i] = new SEDat('tmp', rootgroup);
			seary[i].restore(dic.seary[i]);
			if (seary[i].bufid >= 0)
				bufary[seary[i].bufid] = seary[i];
		}
	}
}

[endscript]


;------------ SE/効果音機能(デフォルトでbuf=0を使う) -------------------------
;●サウンド関係を初期化する。
;[sound_init num=kag.numSEDatfers reinit=false]
[macro name=sound_init]
[if exp="mp.reinit === void || mp.reinit"]
	; 既に定義されていたら削除
	[if exp="typeof(global.SEDats_obj) != 'undefined'"]
		[eval exp="kag.removePlugin(global.SEDats_obj)"]
		[eval exp="invalidate global.SEDats_obj"]
		[eval exp="delete global.SEDats_obj"]
	[endif]
[endif]
[if exp="typeof(global.SEDats_obj) == 'undefined'"]
	; プラグイン登録する。
	[eval exp="global.SEDats_obj = new SEDats(mp.num)"]
	[eval exp="kag.addPlugin(global.SEDats_obj)"]
[else]
	[if exp="mp.num !== void && mp.num != global.SEDats_obj.bufnum"]
		[eval exp="em('[sound_init]で、再登録なしに前回と異なるnumは指定できません')"]
	[endif]
[endif]
[se_stop]
[endmacro]


;●segroupを登録する
;[se_reggroup group= parent= volume= pan= gvolume=]
[macro name="se_reggroup"]
[eval exp="SEDats_obj.addSEGroup(mp.group, mp.parent, mp)"]
[endmacro]


;●segroupを削除する(保存していた音量、panなども削除)
; 付属
;[se_unreggroup group=]
[macro name="se_unreggroup"]
[eval exp="SEDats_obj.delSEGroup(mp.group)"]
[endmacro]


;●segroupにオプションを設定する
;[se_groupopt group= volume= pan= gvolume=]
[macro name="se_groupopt"]
[eval exp="SEDats_obj.setSEGroupOptions(mp.group, mp)"]
[endmacro]


;●seを登録する
[macro name="se_reg"]
[eval exp="mp.reclaim = false" cond="mp.reclaim === void"]
[eval exp="mp.eternal = true"  cond="mp.eternal === void"]
[eval exp="SEDats_obj.addSE(mp.name, mp.group, mp)"]
[endmacro]


;●seを削除する(保存していた音量、panなども削除)
[macro name="se_unreg"]
; eternal のものも削除する
[eval exp="SEDats_obj.delSE(mp.name, mp.group, true)"]
[endmacro]


;●seを再生する
;	name=			SE名(省略可、省略時 storage)
; 	group=			グループ名(省略可,省略時 'master')
;	storage=		効果音ファイル(拡張子不要)
;	loop=true|false(def)    ループ再生するかどうか
;	canskip=true(def)|false スキップ可能かどうか
;	wait=true|false(def)    再生待ちをするかどうか
;	waitprev=true|false(def) 再生中の前の効果音の終了を待つかどうか
; 	loop=trueなら無限ループ再生。[ws]せずに戻る
; 	volume= (def=100または登録済なら以前のまま)
;	gvolume= (def=100または登録済みなら以前のまま)
; 	pan= (def=以前のまま)
[macro name="se_play"]
[eval exp="mp.name = mp.sedat.name" cond="mp.name===void && mp.sedat!==void"]
[se_wait * cond="mp.waitprev"]
[eval exp=".se_play(mp)"]
[se_wait * cond="mp.wait && !mp.loop"]
[endmacro]


; メニュー画面のボタンなどのために、se_play()はTJSでも実装する
; waitおよびwaitprevが無いことに注意。再生するとすぐに戻る
[iscript]
function se_play(mp)
{
	.SEDats_obj.playSE(mp.name, mp.group, mp);
}

function se_is_playing(mp)
{
	.SEDats_obj.isPlayingSE(mp.name, mp.group);
}
[endscript]


;●seをフェードインする
; 引数はすべてse_playと同じ
[macro name="se_fadein"]
[if exp="mp.sedat === void"]
	[eval exp="mp.sedat = SEDats_obj.addSE(mp.name, mp.group, mp)"]
[endif]
[if exp="mp.sedat !== void"]
	[se_wait * cond="mp.waitprev"]
	[se_opt *]
	[if exp="isExistSoundStorage(mp.storage)"]
		[eval exp="SEDats_obj.allocSEBuf(, mp.sedat)"]
		[fadeinse storage=%storage buf=&mp.sedat.bufid time=%time|3000 loop=%loop|false]
	[else]
		[eval exp="em('エラー！存在しない音声ファイル: ' + mp.storage)"]
	[endif]
	; SEのフェードを待つ
	[se_wait * waiting=fade cond="mp.waitfade"]
	; SEの終了を待つ
	[se_wait * cond="mp.wait && !mp.loop"]
[endif]
[endmacro]


;●seをフェードアウトする
;time|3000, storage= canskip=true(def)|false wait=true|false(def), waitfade=true|false(def)
[macro name="se_fadeout"]
[if exp="mp.storage !== void"]
	; storage= が指定されていたらまず鳴らす
	[if exp="mp.sedat === void"]
		[eval exp="mp.sedat = SEDats_obj.addSE(mp.name, mp.group, mp)"]
	[endif]
	[se_play * wait=false]
	; この時点でmp.sedatが指定されているので、以下で対象sedatへの操作になる
[endif]
[if exp="mp.name === void && mp.sedat === void"]
	[call storage=Macro_Sound.ks target=*se_fadeout_sub]
[else]
	[if exp="mp.sedat === void"]
		[eval exp="mp.sedat = SEDats_obj.findSE(mp.name, mp.group)"]
	[endif]
	[if exp="mp.sedat !== void && mp.sedat.bufid >= 0"]
		[fadeoutse buf=&mp.sedat.bufid time=%time|3000]
		[se_wait * waiting=fade cond="mp.waitfade"]
		[se_wait * cond="mp.wait"]
	[endif]
[endif]
[endmacro]


;●seをフェード(現在再生中のものの連続的な音量変更)する
;time|3000, volume canskip=true(def)|false wait=true|false(def), waitfade=true|false(def)
[macro name="se_fade"]
[if exp="mp.name === void && mp.sedat === void"]
	[call storage=Macro_Sound.ks target=*se_fade_sub]
[else]
	[if exp="mp.sedat === void"]
		[eval exp="mp.sedat = SEDats_obj.findSE(mp.name, mp.group)"]
	[endif]
	; actualset = false であることに注意。こうしないと音量が急に変わる
	[se_opt volume=%volume actualset=false]
	[if exp="mp.sedat !== void && mp.sedat.bufid >= 0"]
		[fadese buf=&mp.sedat.bufid volume=%volume time=%time|3000]
		[se_wait * waiting=fade cond="mp.waitfade"]
		[se_wait * cond="mp.wait"]
	[endif]
[endif]
[endmacro]


;●seを停止する
; 引数なしで全SEが対象
[macro name="se_stop"]
[eval exp=".se_stop(mp)"]
[endmacro]

; メニュー画面のボタンなどのために、se_stop()はTJSでも実装する
[iscript]
function se_stop(mp)
{
	mp.name = mp.sedat.name if (mp.sedat !== void);
	SEDats_obj.stopSE(mp.name, mp.group);
}
[endscript]


;●seを待つ
[macro name="se_wait"]
[if exp="mp.name === void && mp.sedat === void"]
	[call storage=Macro_Sound.ks target=*se_wait_sub]
[else]
	[if exp="mp.sedat === void"]
		[eval exp="mp.sedat = SEDats_obj.findSE(mp.name, mp.group)"]
	[endif]
	[if exp="mp.sedat !== void && mp.sedat.bufid >= 0"]
		[if exp="mp.waiting === void || mp.waiting == 'finish'"]
			[ws buf=&mp.sedat.bufid canskip=%canskip|true]
		[elsif exp="mp.waiting == 'fade'"]
			[wf buf=&mp.sedat.bufid canskip=%canskip|true]
		[endif]
;	[else]	デバッグ以外の目的ではコメントアウトしておくこと！
;		[eval exp="em('待つSEがありません')"]
	[endif]
[endif]
[endmacro]


;●seオプションを指定する
; 指定されてなかった場合は以前のものを設定する。こうするのは、音声バッファが
; 前回発音時と違う場合にもvolやpanを適切に設定すため。
; name, group volume, pan, gvolume, actualset(実際にオプション設定するかどうか)
[macro name="se_opt"]
[if exp="mp.name === void && mp.sedat === void"]
	[call storage=Macro_Sound.ks target=*se_opt_sub]
[else]
	[if exp="mp.sedat !== void"]
		[eval exp="mp.sedat.setOptions(mp)"]
	[else]
		;nameが指定されててもバッファが無い場合があるので、mp.name使用
		[eval exp="SEDats_obj.setSEOptions(mp.name, mp.group, mp)"]
		;[seopt * cond="mp.buf >= 0"]	↑で設定するので[seopt]不要
	[endif]
[endif]
[endmacro]

[iscript]
// メニュー画面のボタンなどのために、se_opt()はTJSでも実装する
function se_opt(mp)
{
	if (mp.name === void && mp.sedat === void) {
		// nameが指定されていなければ該当するもの全部に設定
		var seary = SEDats_obj.findSEary(mp.name, mp.group);
		for (var i = seary.count-1; i >= 0; i--) {
			mp.sedat = seary[i];
			se_opt(mp);
		}
		delete mp.sedat;
		return;
	}
	mp.sedat = SEDats_obj.addSE(mp.name, mp.group);
	if (mp.sedat !== void)
		mp.sedat.setOptions(mp);
	else {
		//nameが指定されててもバッファが無い場合があるので、mp.name使用
		SEDats_obj.setSEOptions(mp.name, mp.group, mp);
		//[seopt * cond="mp.buf >= 0"]	↑で設定するので[seopt]不要
	}
}
[endscript]


;●seをキャッシュにのせる
[macro name="se_cache"]
[if exp="mp.sedat === void"]
	[eval exp="mp.sedat = SEDats_obj.addSE(mp.name, mp.group, mp)"]
[endif]
[if exp="mp.sedat !== void"]
	[se_opt * volume=0]
	[if exp="isExistSoundStorage(mp.storage)"]
		[playse storage=%storage buf=&mp.sedat.bufid loop=false]
	[else]
		[eval exp="em('エラー！存在しない音声ファイル: '+mp.storage)"]
	[endif]
	[se_wait * cond="mp.wait && !mp.loop"]
[endif]
[endmacro]

;--------- BGM機能 -------------------------------------------------

[iscript]

/*
//●bgmのステータスを返す
// 再生中 = "play", 停止中 = "stop"など。他にどんな文字列があるかはよう知らん
function get_bgm_status()
{
	return(kag.bgm.currentStatus);
}
行頭に '*' を配置しないこと！ */

//●現在再生中のbgmファイル名を返す。再生していなければ""
function get_bgm_current_storage()
{
	return(kag.bgm.playingStorage);
}

[endscript]



;●BGMを再生する
; bgm_play storage= volume= loop=true noreplay=false
[macro name="bgm_play"]
[bgm_opt volume=%volume gvolume=%gvolume]
[if exp="isExistSoundStorage(mp.storage)"]
	; ある曲を再生中に再再生が指示された時、noreplayなら再生し直さない
	[if exp="get_bgm_current_storage() != mp.storage || !mp.noreplay"]
		[playbgm storage=%storage loop=%loop|true]
	[endif]
[else]
	[eval exp="em('エラー！存在しないBGMファイル：' + mp.storage)"]
[endif]
[endmacro]


;●BGMを停止する
; bgm_stop
[macro name="bgm_stop"]
[stopbgm]
[endmacro]


;●BGMを待つ
; bgm_wait waiting=finish(def)|fade canskip=true
[macro name="bgm_wait"]
[if exp="mp.waiting === void || mp.waiting == 'finish'"]
	[wl canskip=%canskip|true]
[else]
	[wb canskip=%canskip|true]
[endif]
[endmacro]


;●BGMをフェードインする
; bgm_fadein storage= volume= gvolume= time=3000 loop=true wait=false
[macro name="bgm_fadein"]
[bgm_opt *]
[if exp="isExistSoundStorage(mp.storage)"]
	[fadeinbgm storage=%storage time=%time|3000 loop=%loop|true]
[else]
	[eval exp="em('エラー！存在しないBGMファイル：' + mp.storage)"]
[endif]
[bgm_wait waiting=fade cond="mp.wait"]
[endmacro]


;●BGMをフェードアウトする
;bgm_fadeout time=3000 wait=false
[macro name="bgm_fadeout"]
[eval exp="mp.wait = false" cond="mp.wait === void"]
[fadeoutbgm time=%time|3000]
[bgm_wait waiting=fade cond="mp.wait"]
[endmacro]


;●BGMをフェードする
;bgm_fade time=3000 volume= wait=false
[macro name="bgm_fade"]
[bgm_opt * actualset=false]
[eval exp="mp.bgm = SEDats_obj.getBGMOptions()"]
[fadebgm volume=&mp.bgm.volume time=%time|3000]
[bgm_wait waiting=fade cond="mp.wait"]
[endmacro]


;●BGMをクロスフェードする
[macro name="bgm_xfade"]
;最初、実際には設定せずに音量などを設定する
[eval exp="mp.actualset = false"]
[eval exp="SEDats_obj.setBGMOptions(mp)"]
; で、実際の音量を入手して設定しつつxfade
[eval exp="mp.bgm = SEDats_obj.getBGMOptions()"]
[xchgbgm storage=%storage time=%time|3000 overlap=%overlap|2000 loop=%loop|true volume=&mp.bgm.volume]
[endmacro]


;●BGMをポーズ・レジュームする
;bgm_pause
[macro name="bgm_pause"]
[pausebgm]
[endmacro]

;bgm_resume
[macro name="bgm_resume"]
[resumebgm]
[endmacro]


;●BGMのオプションを指定する
[macro name="bgm_opt"]
[if exp="mp.volume !== void && mp.volume.indexOf('/') >= 0"]
	; 分数表記をボリュームに直す
	[eval exp="mp.volume = int(Scripts.eval(mp.volume)*100)"]
[endif]
[if exp="mp.gvolume !== void && mp.gvolume.indexOf('/') >= 0"]
	; 分数表記をボリュームに直す
	[eval exp="mp.gvolume = int(Scripts.eval(mp.gvolume)*100)"]
[endif]
[eval exp="SEDats_obj.setBGMOptions(mp)"]
; setBGMOptions()で [bgmopt *] 同等のことをやるのでここでは何もしない
[endmacro]

; 最初に一度初期化しておく
[sound_init num=3]

[return]


; mp.name === void だった時に、全ての効果音をフェードアウトする
*se_fadeout_sub
[eval exp="mp.seary  = SEDats_obj.findSEary(mp.name, mp.group)"]
[eval exp="mp.seary2 = []; mp.seary2.assign(mp.seary)"]
*se_fadeout_loop
[jump target=*se_fadeout_sub_next cond="mp.seary.count <= 0"]
; この時点ではwait=false, waitfade=falseで実行する
[se_fadeout * name="&mp.seary.pop().name" wait=false waitfade=false]
[jump target=*se_fadeout_loop]

*se_fadeout_sub_next
; 最後にwait/waitfade待ち
*se_fadeout_loop2
[return cond="mp.seary2.count <= 0"]
[eval exp="mp.tmpname = mp.seary2.pop().name"]
[se_wait * name=%tmpname waiting=fade cond="mp.waitfade"]
[se_wait * name=%tmpname cond="mp.wait"]
[jump target=*se_fadeout_loop2]


; mp.name === void だった時に、全ての効果音をフェードする
*se_fade_sub
[eval exp="mp.seary  = SEDats_obj.findSEary(mp.name, mp.group)"]
[eval exp="mp.seary2 = []; mp.seary2.assign(mp.seary)"]
*se_fade_loop
[jump target=*se_fade_sub_next cond="mp.seary.count <= 0"]
; この時点ではwait=false, waitfade=falseで実行する
[se_fade * name="&mp.seary[0]" wait=false waitfade=false]
[eval exp="mp.seary.erase(0)"]
[jump target=*se_fade_loop]

*se_fade_sub_next
; 最後にwait/waitfade待ち
*se_fade_loop2
[return cond="mp.seary2.count <= 0"]
[eval exp="mp.tmpname = mp.seary2.pop()"]
[se_wait * name=%tmpname waiting=fade cond="mp.waitfade"]
[se_wait * name=%tmpname cond="mp.wait"]
[jump target=*se_fade_loop2]


; mp.name === void だった時に、全ての効果音を待つ
*se_wait_sub
[eval exp="mp.seary = SEDats_obj.findSEary(mp.name, mp.group)"]
*se_wait_loop
[return cond="mp.seary.count <= 0"]
[se_wait * name="&mp.seary[0].name"]
[eval exp="mp.seary.erase(0)"]
[jump target=*se_wait_loop]


; mp.name === void だった時に、全ての効果音を設定する
*se_opt_sub
[eval exp="mp.seary = SEDats_obj.findSEary(mp.name, mp.group)"]
*se_opt_loop
[return cond="mp.seary.count <= 0"]
[se_opt * name="&mp.seary[0].name"]
[eval exp="mp.seary.erase(0)"]
[jump target=*se_opt_loop]
