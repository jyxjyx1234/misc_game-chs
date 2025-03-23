[return cond="typeof(global.experienced_obj) != 'undefined'"]
; 二重読み込みの防止

; Experienced.ks
; あるラベルを通過したかどうかのチェックをするマクロ集 
;
; 2013/11/28	0.4	kagより先にinvalidateさせるためにKAGPlugin化
; 2011/08/19	0.3	experienced_sub(sf.footmark)の時正しい結果を返さな
;			かったのを修正
; 2011/08/12	0.21	experienced_sub() を少しだけ効率化
;			setRecordLabel()→onConductorLabel()を使うよう修正
;			※どこでもセーブ使ってるとexperienced()で返す値が非常に
;			　大きくなるバグの修正
; 2011/07/31	0.2	setRecordLabel()で start:1 とかの時にオリジナルの
;			setRecordLabel_org()を呼んでなかったのを修正
; 2011/06/06	0.1	初回リリース
; 
; ラベル名とストレージ名でそのラベルの通過記録を検索する。ストレージ名を
; 省略すると、ラベル名が一意であればそれを検索してくるが、速度的に少し不利。
; とはいえ、10万ラベル中から検索するのでも0.1秒もかかからないけれど。
;
; セーブポイント"*|"のように、ラベルが指定されなかったもの(保存ラベルの
; 後ろに数値のついたもの、例："*label:3") は検索できないことにチュウイ。
; そうでないフツーのラベルは検索可能。
; やってることは、kag.setRecordLabelを乗っ取って、通過回数を以下の
; ハッシュに押し込んでいるだけ。
;	 f.footmark[ストレージ名][ラベル名] ... そのセーブデータ中の通過回数
;	sf.footmark[ストレージ名][ラベル名] ... 全セーブデータ中の通過回数

; 使用できるマクロは以下の四つ。targetが複数の複合の場合は、素直に
; experienced()とexperienced_once()を使うこと。
;
; [if_experienced target="*xxxxx" storage="*.ks"]
; 今回のセーブデータでそのラベルを通過しているか？
; 終端は[endif]で囲うこと。
; [if_not_experienced target="*xxxxx" storage="*.ks"]
; 今回のセーブデータでそのラベルを通過していないか？
; 終端は[endif]で囲うこと。
;
; 全てのセーブデータで、一回でもそのラベルを通過しているか？
; [if_experienced_once target="*xxxxx" storage="*.ks"]
; 終端は[endif]で囲うこと。
; [if_not_experienced_once target="*xxxxx" storage="*.ks"]
; 全てのセーブデータで、一回でもそのラベルを通過していないか？
; 終端は[endif]で囲うこと。

[iscript]

class Experienced extends KAGPlugin
{
	var w;
	var org_onConductorLabel;		// オリジナルonConductorLabel()関数を保存

	// コンストラクタ
	function Experienced(window)
	{
		w = window;
		org_onConductorLabel = w.onConductorLabel;
		w.onConductorLabel = onConductorLabel incontextof w;
	}

	// kag.onConductorLabel()を上書きする関数
	function onConductorLabel(label, page) // incontextof kag;
	{
		// まだ初期化されていなければ初期化
		 .f.footmark = %[] if ( .f.footmark === void);
		.sf.footmark = %[] if (.sf.footmark === void);

		// 条件に当てはまれば必要物を保存
		var regex = new RegExp('^.*:[0-9]+$');
		if (!usingExtraConductor && autoRecordPageShowing &&
		    label != "" && label[0] != '-' && !regex.test(label)) {
			var storage = Storages.extractStorageName(conductor.curStorage);
			// f.footmark[storage][label]++
			if (.f.footmark[storage] === void)
				.f.footmark[storage] = %[];
			.f.footmark[storage][label]++;

			// sf.footmark[storage][label]++
			if (.sf.footmark[storage] === void)
				.sf.footmark[storage] = %[];
			.sf.footmark[storage][label]++;
		}
		//オリジナルを呼ぶ
		experienced_obj.org_onConductorLabel(...);
	}

	// セーブデータ中で指定ラベルを通過しているかどうかのsub
	// labelとstorageの順番に注意。labelが一意であればstorage指定なしで
	// 呼べるようにするため。
	function experienced_sub(v, label, storage)
	{
		if (label === void) {
			label   = w.currentLabel;
			storage = w.mainConductor.curStorage;
			// -1 は、最初に通った時には既に必ず一回経験済みの為
			return experienced_sub(v, label, storage)-1;
		}

		// storage が指定されていれば一意なのでそちらを探す
		if (storage !== void) {
			if (v[storage] !== void &&
			    v[storage][label] !== void)
				return v[storage][label];
			else
				return 0;
		}

		// 同じストレージ内のラベルを優先的に探す
		storage = w.mainConductor.curStorage;
		var ret = experienced_sub(v, label, storage);
		if (ret)
			return ret;

		// 最後は全てのセーブ済みストレージ＋ラベルの組み合わせを検索
		var strary = [];
		strary.assign(v);
		for (var i = 0; i < strary.count; i+=2)
			if (strary[i+1][label] !== void)
				return strary[i+1][label];
		return 0;
	}
}

// インスタンス作成
kag.addPlugin(.experienced_obj = new Experienced(kag));


// 関数定義。この関数はKAGスクリプト中からTJSで呼び出し可能なグローバル関数。
// 当該データ中で一度でも経験したか？ label=voidの時は今のラベルをチェック
function experienced(label, storage)
{
	return .experienced_obj.experienced_sub(.f.footmark, label, storage);
}

// 全データ中で一度でも経験したか？ label=voidの時は今のラベルをチェック
function experienced_once(label, storage)
{
	return .experienced_obj.experienced_sub(.sf.footmark, label, storage);
}

[endscript]


; 今回のセーブデータでそのラベルを通過しているか？
[macro name="if_experienced"]
[if exp="experienced(mp.target, mp.storage)"]
[endmacro]

; 今回のセーブデータでそのラベルを通過していないか？
[macro name="if_not_experienced"]
[if exp="!experienced(mp.target, mp.storage)"]
[endmacro]


; 全てのセーブデータで、一回でもそのラベルを通過しているか？
[macro name="if_experienced_once"]
[if exp="experienced_once(mp.target, mp.storage)"]
[endmacro]

; 全てのセーブデータで、一回もそのラベルを通過していないか？
[macro name="if_not_experienced_once"]
[if exp="!experienced_once(mp.target, mp.storage)"]
[endmacro]

[return]
