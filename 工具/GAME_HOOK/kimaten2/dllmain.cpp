#include <Windows.h>
#include <map>
#include <iostream>
#include <string>
#include <unordered_set>
#include <fstream>

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

char* textBuffer[0x1000000] = {};
int textIdx = 0;

std::map<std::string, int> replacementMap;

void CreateConsole()
{
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		SetConsoleOutputCP(CP_UTF8);
	}
}

std::string gbk2utf8(const std::string& str) {
	int len = MultiByteToWideChar(936, 0, str.c_str(), -1, NULL, 0);
	wchar_t* wszGBK = new wchar_t[len + 1];
	memset(wszGBK, 0, len * 2 + 2);
	MultiByteToWideChar(936, 0, str.c_str(), -1, wszGBK, len);
	len = WideCharToMultiByte(CP_UTF8, 0, wszGBK, -1, NULL, 0, NULL, NULL);
	char* szUtf8 = new char[len + 1];
	memset(szUtf8, 0, len + 1);
	WideCharToMultiByte(CP_UTF8, 0, wszGBK, -1, szUtf8, len, NULL, NULL);
	std::string strUtf8 = szUtf8;
	delete[] szUtf8;
	delete[] wszGBK;
	return strUtf8;
}

void AddUTF8Replacement(const std::string& key, const std::string& value) {
	if (key.find("%02u") != std::string::npos) {
		std::string key1 = key;
		std::string value1 = value;
		for (int i = 0; i < 101; i++) {
			char buf[10];
			sprintf_s(buf, "%02u", i);
			std::string key2 = key1;
			std::string value2 = value1;
			key2.replace(key2.find("%02u"), 4, buf);
			value2.replace(value2.find("%02u"), 4, buf);
			AddUTF8Replacement(key2, value2);
		}
		return;
	}
	if (key.find("%2u") != std::string::npos) {
		std::string key1 = key;
		std::string value1 = value;
		for (int i = 0; i < 101; i++) {
			char buf[10];
			sprintf_s(buf, "%2u", i);
			std::string key2 = key1;
			std::string value2 = value1;
			key2.replace(key2.find("%2u"), 4, buf);
			value2.replace(value2.find("%2u"), 4, buf);
			AddUTF8Replacement(key2, value2);
		}
		return;
	}
	if (key.find("%03d") != std::string::npos) {
		std::string key1 = key;
		std::string value1 = value;
		for (int i = 0; i < 200; i++) {
			char buf[10];
			sprintf_s(buf, "%03d", i);
			std::string key2 = key1;
			std::string value2 = value1;
			key2.replace(key2.find("%03d"), 4, buf);
			value2.replace(value2.find("%03d"), 4, buf);
			AddUTF8Replacement(key2, value2);
		}
		return;
	}
	std::string valueUTF8 = gbk2utf8(value);
	std::string keyUTF8 = gbk2utf8(key);
	textBuffer[textIdx] = new char[valueUTF8.size() + 1];
	memset(textBuffer[textIdx], 0, valueUTF8.size() + 1);
	strcpy_s(textBuffer[textIdx], valueUTF8.size() + 1, valueUTF8.c_str());
	replacementMap[keyUTF8] = textIdx;
	textIdx++;
}

void initReplacementMap() {
	AddUTF8Replacement("View Class の作成に失敗しました", "View Class创建失败");
	AddUTF8Replacement("Direct 3D Class の作成に失敗しました", "Direct 3D Class创建失败");
	AddUTF8Replacement("描画制御オブジェクトの作成に失敗しました。", "绘图控制对象创建失败");
	AddUTF8Replacement("スプライト制御オブジェクトの作成に失敗しました。", "Sprite控制对象创建失败");
	AddUTF8Replacement("Direct3DStruct オブジェクトの作成に失敗しました。", "Direct3DStruct创建失败");
	AddUTF8Replacement("ファイルバッファの作成に失敗しました", "文件缓冲区创建失败");
	AddUTF8Replacement("レイヤーオブジェクトの作成に失敗しました。", "图层对象创建失败");
	AddUTF8Replacement("作業用メモリの確保に失敗しました。", "运行内存分配失败。");
	AddUTF8Replacement("エラー", "出错");
	AddUTF8Replacement("データの構築に失敗しました。ファイルが不正です", "数据构建失败。文件错误");
	AddUTF8Replacement("アクション%03d", "动作%03d");
	AddUTF8Replacement("タイプＡ", "形态Ａ");
	AddUTF8Replacement("タイプＡ裸", "形态Ａ裸体");
	AddUTF8Replacement("タイプＢ", "形态Ｂ");
	AddUTF8Replacement("タイプＢ裸", "形态Ｂ裸体");
	AddUTF8Replacement("タイプＣ", "形态Ｃ");
	AddUTF8Replacement("タイプＣ裸", "形态Ｃ裸体");
	AddUTF8Replacement("タイプＤ", "形态Ｄ");
	AddUTF8Replacement("タイプＤ裸", "形态Ｄ裸体");
	AddUTF8Replacement("表情：微笑", "表情：微笑");
	AddUTF8Replacement("表情：笑顔", "表情：笑脸");
	AddUTF8Replacement("表情：真剣", "表情：认真");
	AddUTF8Replacement("表情：呆れ", "表情：惊讶");
	AddUTF8Replacement("表情：悲しみ", "表情：悲伤");
	AddUTF8Replacement("表情：驚き", "表情：吃惊");
	AddUTF8Replacement("表情：微笑２", "表情：微笑２");
	AddUTF8Replacement("表情：笑顔２", "表情：笑脸２");
	AddUTF8Replacement("表情：無表情", "表情：无表情");
	AddUTF8Replacement("表情：気だるげ", "表情：倦怠");
	AddUTF8Replacement("表情：おどおど", "表情：害怕");
	AddUTF8Replacement("表情：悲しみ２", "表情：悲伤２");
	AddUTF8Replacement("表情：怒り", "表情：愤怒");
	AddUTF8Replacement("表情：やさぐれ", "表情：愤世嫉俗");
	AddUTF8Replacement("表情：ドヤ顔", "表情：得意");
	AddUTF8Replacement("表情：拗ね", "表情：闹别扭");
	AddUTF8Replacement("表情：きょとん", "表情：茫然");
	AddUTF8Replacement("表情：思案", "表情：思量");
	AddUTF8Replacement("表情：焦り", "表情：着急");
	AddUTF8Replacement("表情：困り微笑", "表情：困惑的微笑");
	AddUTF8Replacement("表情：怒り微笑", "表情：愤怒的微笑");
	AddUTF8Replacement("表情：眠気", "表情：困倦");
	AddUTF8Replacement("表情：ため息", "表情：叹息");
	AddUTF8Replacement("表情：涙目", "表情：泪目");
	AddUTF8Replacement("表情：いじけ", "表情：气馁");
	AddUTF8Replacement("表情：イライラ", "表情：焦急地不耐烦");
	AddUTF8Replacement("表情：ニヤリ", "表情：奸笑");
	AddUTF8Replacement("ポーズを変更します", "更换姿势");
	AddUTF8Replacement("アクションモーションを再生します", "播放动作");
	AddUTF8Replacement("アンネリーゼの拡大率を変更します", "调节放大率");
	AddUTF8Replacement("アンネViewer画面から戻ります", "退出安娜Viewer");
	AddUTF8Replacement("アクションリストをスクロールします", "滑动动作列表");
	AddUTF8Replacement("各種ボタン類を非表示にします", "隐藏所有图标");
	AddUTF8Replacement("頬の赤らめのON/OFFを切り替えます", "切换脸颊上的红晕");
	AddUTF8Replacement("未解放の衣装も全て解放します", "解锁全部的服装");
	AddUTF8Replacement("メッセージサンプル", "文本示例");
	AddUTF8Replacement(" 对话样式", "对话样式");
	AddUTF8Replacement("【？？？？？？？？】", "【？？？？？？？？】");
	AddUTF8Replacement("【赤子の頭骨】を閲覧します", "阅读【婴儿的头骨】");
	AddUTF8Replacement("【ある旅人の手記】を閲覧します", "阅读【某个旅客的笔记】");
	AddUTF8Replacement("【陰陽師の遺書】を閲覧します", "阅读【阴阳师的遗书】");
	AddUTF8Replacement("【マッチョマン消しゴム】を閲覧します", "阅读【肌肉人橡皮擦】");
	AddUTF8Replacement("【錆びた草刈鎌】を閲覧します", "阅读【生锈的割草镰】");
	AddUTF8Replacement("【大人の拘束具】を閲覧します", "阅读【成人用品的拘束装置】");
	AddUTF8Replacement("【ロックなフラワー】を閲覧します", "阅读【摇滚花花】");
	AddUTF8Replacement("【壊れた携帯電話】を閲覧します", "阅读【坏掉的手机】");
	AddUTF8Replacement("【ローター】を閲覧します", "阅读【跳蛋】");
	AddUTF8Replacement("【バイブ】を閲覧します", "阅读【震动棒】");
	AddUTF8Replacement("【色欲の香】を閲覧します", "阅读【色欲之香】");
	AddUTF8Replacement("【千代のハンカチ】を閲覧します", "阅读【千代的手帕】");
	AddUTF8Replacement("【美代のハンカチ】を閲覧します", "阅读【美代的手帕】");
	AddUTF8Replacement("【残留思念１】を閲覧します", "阅读【残留思念１】");
	AddUTF8Replacement("【残留思念２】を閲覧します", "阅读【残留思念２】");
	AddUTF8Replacement("【残留思念３】を閲覧します", "阅读【残留思念３】");
	AddUTF8Replacement("【残留思念４】を閲覧します", "阅读【残留思念４】");
	AddUTF8Replacement("【残留思念５】を閲覧します", "阅读【残留思念５】");
	AddUTF8Replacement("【残留思念６】を閲覧します", "阅读【残留思念６】");
	AddUTF8Replacement("【残留思念７】を閲覧します", "阅读【残留思念７】");
	AddUTF8Replacement("【残留思念８】を閲覧します", "阅读【残留思念８】");
	AddUTF8Replacement("【とある日のボイスメモ】を閲覧します", "阅读【某天的语音记录】");
	AddUTF8Replacement("収集品画面から抜けます", "退出收集品界面");
	AddUTF8Replacement("全ての収集品項目を解放します", "解锁所有的收集品");
	AddUTF8Replacement("捜査手帳を開きます", "打开搜查笔记");
	AddUTF8Replacement("収集品リストを開きます", "打开收集品列表");
	AddUTF8Replacement("既読・未読両方スキップを停止します", "停止跳过已读和未读文本");
	AddUTF8Replacement("既読文章スキップを停止します", "停止跳过已读文本");
	AddUTF8Replacement("文章の自動再生を停止します", "停止文本的自动播放");
	AddUTF8Replacement("音声のループ再生を停止します", "停止语音的循环播放");
	AddUTF8Replacement("未解放", "未解锁");
	AddUTF8Replacement("美代", "美代");
	AddUTF8Replacement("儚げな女性", "孱弱缥缈的女性");
	AddUTF8Replacement("悠久", "悠久");
	AddUTF8Replacement("？？？", "？？？");
	AddUTF8Replacement("安藤", "安藤");
	AddUTF8Replacement("コハル", "小春");
	AddUTF8Replacement("アンネリーゼ", "安娜莉丝");
	AddUTF8Replacement("千代", "千代");
	AddUTF8Replacement("千代と思われる女性", "疑似是千代的女性");
	AddUTF8Replacement("キルト", "吉鲁特");
	AddUTF8Replacement("みりあ", "实莉爱");
	AddUTF8Replacement("花音", "花音");
	AddUTF8Replacement("すすり泣く女の霊", "啜泣的女性灵体");
	AddUTF8Replacement("血濡れの花嫁", "血染的新娘");
	AddUTF8Replacement("ベルベット", "薇尔薇特");
	AddUTF8Replacement("メリーさん", "玛丽小姐");
	AddUTF8Replacement("悠久・アンネリーゼ", "悠久・安娜莉丝");
	AddUTF8Replacement("千代・美代", "千代・美代");
	AddUTF8Replacement("【巽悠久】を閲覧します", "阅读【巽悠久】");
	AddUTF8Replacement("【アンネリーゼ】を閲覧します", "阅读【安娜莉丝】");
	AddUTF8Replacement("【探知】を閲覧します", "阅读【探知】");
	AddUTF8Replacement("【沈静化】を閲覧します", "阅读【平静化】");
	AddUTF8Replacement("【活性化】を閲覧します", "阅读【活性化】");
	AddUTF8Replacement("【呪いのマンション事件】を閲覧します", "阅读【被诅咒的公寓事件】");
	AddUTF8Replacement("【霧生晶】を閲覧します", "阅读【雾生晶】");
	AddUTF8Replacement("【楠木みりあ】を閲覧します", "阅读【楠木实莉爱】");
	AddUTF8Replacement("【野々宮花音】を閲覧します", "阅读【野野宫花音】");
	AddUTF8Replacement("【キルト】を閲覧します", "阅读【吉鲁特】");
	AddUTF8Replacement("【師匠】を閲覧します", "阅读【师父】");
	AddUTF8Replacement("【陰陽手】を閲覧します", "阅读【阴阳手】");
	AddUTF8Replacement("【裏世界】を閲覧します", "阅读【里世界】");
	AddUTF8Replacement("【陰陽寮】を閲覧します", "阅读【阴阳寮】");
	AddUTF8Replacement("【五老頭】を閲覧します", "阅读【五老头】");
	AddUTF8Replacement("【コハル】を閲覧します", "阅读【小春】");
	AddUTF8Replacement("【朝桐美代】を閲覧します", "阅读【朝桐美代】");
	AddUTF8Replacement("【朝桐千代】を閲覧します", "阅读【朝桐千代】");
	AddUTF8Replacement("【血濡れの花嫁】を閲覧します", "阅读【血染的新娘】");
	AddUTF8Replacement("【赤子の思念体】を閲覧します", "阅读【婴儿的思念体】");
	AddUTF8Replacement("【すすり泣く女の霊】を閲覧します", "阅读【啜泣的女性灵体】");
	AddUTF8Replacement("【数百年前の惨劇】を閲覧します", "阅读【数百前年的惨剧】");
	AddUTF8Replacement("【でいだら様】を閲覧します", "阅读【迪太大人】");
	AddUTF8Replacement("【行方不明者】を閲覧します", "阅读【失踪者】");
	AddUTF8Replacement("【限界ニュータウン】を閲覧します", "阅读【衰退新城】");
	AddUTF8Replacement("【加賀見家】を閲覧します", "阅读【加贺见家】");
	AddUTF8Replacement("【加賀見の秘術】を閲覧します", "阅读【加贺见的秘术】");
	AddUTF8Replacement("【キメラ事件】を閲覧します", "阅读【奇美拉事件】");
	AddUTF8Replacement("【変態襲撃事件】を閲覧します", "阅读【变态袭击事件】");
	AddUTF8Replacement("【葛城霊能探偵事務所】を閲覧します", "阅读【葛城灵能侦探事务所】");
	AddUTF8Replacement("【刑事十三課】を閲覧します", "阅读【刑事十三科】");
	AddUTF8Replacement("【双子神様】を閲覧します", "阅读【双子神明】");
	AddUTF8Replacement("【猫又つくねさん】を閲覧します", "阅读【猫又丸子】");
	AddUTF8Replacement("【解決】を閲覧します", "阅读【解决】");
	AddUTF8Replacement("【集団行方不明事件・その後】を閲覧します", "阅读【集体失踪事件·后续】");
	AddUTF8Replacement("【この手帳を拾った人へ】を閲覧します", "阅读【致捡到这本笔记的人】");
	AddUTF8Replacement("上へスクロールします", "向上滑动");
	AddUTF8Replacement("下へスクロールします", "向下滑动");
	AddUTF8Replacement("スクロールします", "滑动");
	AddUTF8Replacement("捜査手帳画面から抜けます", "退出搜查笔记界面");
	AddUTF8Replacement("捜査手帳項目リストを１ページ戻します", "返回搜查笔记列表的上一页");
	AddUTF8Replacement("捜査手帳項目リストを１ページ進めます", "进入搜查笔记列表的下一页");
	AddUTF8Replacement("録音音声を再生します", "播放录音");
	AddUTF8Replacement("全ての捜査手帳項目を解放します", "解锁搜查笔记的所有项目");
	AddUTF8Replacement("クイックセーブ%02u番", "%02u号快速存档");
	AddUTF8Replacement("オートセーブ%02u番", "%02u号自动存档");
	AddUTF8Replacement("クイックセーブ%02u番のデータをロードします", "读取%02u号快速存档");
	AddUTF8Replacement("读取快速存档%02u", "读取%02u号快速存档");
	AddUTF8Replacement("オートセーブ%02u番のデータをロードします", "读取%02u号自动存档");
	AddUTF8Replacement("读取自动存档%02u", "读取%02u号自动存档");
	AddUTF8Replacement("%02u番のデータをロードします", "读取%02u号存档");
	AddUTF8Replacement("读取存档%02u", "读取%02u号存档");
	AddUTF8Replacement("新規にセーブデータを作成します", "创建新存档");
	AddUTF8Replacement("創建新的保存數據", "创建新存档");
	AddUTF8Replacement("%02u番に上書きセーブします", "覆盖%02u号存档");
	AddUTF8Replacement("保存在存档%02u", "覆盖%02u号存档");
	AddUTF8Replacement("クイックセーブ%02u番のデータを削除します", "删除%02u号快速存档");
	AddUTF8Replacement("删除快速存档%02u", "删除%02u号快速存档");
	AddUTF8Replacement("オートセーブ%02u番のデータを削除します", "删除%02u号自动存档");
	AddUTF8Replacement("删除自动存档%02u", "删除%02u号自动存档");
	AddUTF8Replacement("%02u番のデータを削除します", "删除%02u号存档");
	AddUTF8Replacement("删除存档%02u", "删除%02u号存档");
	AddUTF8Replacement("タイトル", "标题界面");
	AddUTF8Replacement("シーン回想選択", "场景回想选择");
	AddUTF8Replacement("ソフト電池ランタイムがインストールされていません。", "运行时软电池未安装");
	AddUTF8Replacement("ソフト電池が充電されていません。", "软电池未充电");
	AddUTF8Replacement("ソフト電池情報が登録されていません。", "软电池信息未注册");
	AddUTF8Replacement("ふゆから、くるる。", "冬旅，方冥冥");
	AddUTF8Replacement("フォントの作成に失敗しました", "字体创建失败");
	AddUTF8Replacement("ワークレイヤーの作成に失敗しました.", "工作层创建失败");
	AddUTF8Replacement("終了", "结束");
	AddUTF8Replacement("ウィンドウ", "窗口");
	AddUTF8Replacement("環境設定", "系统设定");
	AddUTF8Replacement("ヘルプ", "帮助");
	AddUTF8Replacement("ゲームの終了", "结束游戏");
	AddUTF8Replacement("タイトルへ戻る", "返回标题界面");
	AddUTF8Replacement("元のサイズに戻す", "返回原来的大小");
	AddUTF8Replacement("ウィンドウ設定", "窗口设定");
	AddUTF8Replacement("バージョン情報", "版本信息");
	AddUTF8Replacement("ＭＳ ゴシック", "ＭＳ　哥特体字");
	AddUTF8Replacement("に設定しました。", "设定");
	AddUTF8Replacement("15秒後に自動的に元に戻ります。", "15秒后自动恢复原样");
	AddUTF8Replacement("キャンセル", "取消");
	AddUTF8Replacement("%2u秒後に自動的に元に戻ります。", "%2u秒后自动恢复原样");
	AddUTF8Replacement("きまぐれテンプテーション２ ゆうやみ廻奇譚 Ver 1.00", "异想魅惑2 暮色廻奇谭　Ver 1.00");
	AddUTF8Replacement("全て初期設定に戻す", "全部返回默认设定");
	AddUTF8Replacement("「フルスクリーンモード設定」及び「ウィンドウサイズ設定」を初期値に戻します。", "「全屏模式设定」和「窗口大小设定」返回默认设定");
	AddUTF8Replacement("画面演出効果の速度を設定します", "设定画面演出效果的速度");
}

std::unordered_set<std::string> uniqueStrings;
void appendToFile(const char* str) {
	const std::string& filename = "output.log";
	std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
	if (outFile.is_open()) {
		std::string res(str);
		if (uniqueStrings.find(res) == uniqueStrings.end()) {
			uniqueStrings.insert(res);
			size_t len = strlen(res.c_str());
			outFile.write(reinterpret_cast<const char*>(res.c_str()), len);
			outFile.write(reinterpret_cast<const char*>("\n"), strlen("\n"));
		}
		outFile.close();
	}
}

void replace_text1(int* len, char** text) {
	if (*text == nullptr || text == nullptr) {
		return;
	}
	auto it = replacementMap.find(*text);
	if (it != replacementMap.end()) {
		std::cout << "Replacing text: " << *text << " with " << textBuffer[it->second] << std::endl;
		*text = textBuffer[it->second];
		*len = strlen(textBuffer[it->second]);
	}
	else {
		appendToFile(*text);
		return;
	}
}

void __declspec(naked) HookFunction_replacetext1() {
	__asm {
		pushad
		pushfd
		
        mov eax, esp
		add eax, 0x24 //文本指针
		push eax
		add eax, 4 //文本长度
		push eax
		call replace_text1
		add esp, 8

		popfd
		popad

		call callAddress
		jmp dword ptr[returnAddress]
	}
}

void hook_main() {
    DWORD oldProtect;
	DWORD baseAddr = (DWORD)GetModuleHandle(NULL);
    originalFuncAddr = baseAddr + 0x1a923;
    returnAddress = originalFuncAddr + 5;
    callAddress = baseAddr + 0x1bc00;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
	std::cout << std::to_string(baseAddr).c_str() << std::endl;
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
		CreateConsole();
		initReplacementMap();
		hook_main();
		break;
    case DLL_THREAD_ATTACH:
		break;
    case DLL_THREAD_DETACH:
		break;
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

