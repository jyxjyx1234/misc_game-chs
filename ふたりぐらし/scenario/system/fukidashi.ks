[macro name="set_custom_fuki"]
[iscript]
TYRANO.kag.setCustomFukidashi(mp);
[endscript]
[endmacro]

[macro name="reset_custom_fuki"]
[iscript]
TYRANO.kag.resetCustomFukidashi();
[endscript]
[endmacro]

[iscript]

// ふきだしの種類を示すキーワード
// omou  : "思う"のふきだし しっぽがもくもくしてます
// yowaki: "弱気"のふきだし 輪郭がうにゃうにゃしてます
// giza  : "ギザギザ"のふきだし 輪郭がギザギザしてます しっぽなし

// ==================================================
// ふきだしの中身のテキストの左および上方向への余白
// (シンプルな四角形のふきだしに比べて多めの余白を取る必要があります)
// ==================================================

tf.omou_message_padding_left = 15
tf.omou_message_padding_top = 15

tf.yowaki_message_padding_left = 25
tf.yowaki_message_padding_top = 25

tf.giza_message_padding_left = 35
tf.giza_message_padding_top = 35

// ==================================================
// しっぽの位置の微調整
// ==================================================

tf.omou_sippo_dx = 40
tf.omou_sippo_dy = -40

tf.yowaki_sippo_dx = 35
tf.yowaki_sippo_dy = -80



TYRANO.kag.custom_fuki_config = $.extend({}, tf);
[endscript]

[return]
