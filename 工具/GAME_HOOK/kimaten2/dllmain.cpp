#define _CRT_SECURE_NO_WARNINGS
#include <windows.h>
#include <unordered_map>
#include <string>
#include <string_view>
#include "detours.h"
#include <map>
#include <iostream>

#pragma comment(lib, "detours.lib")

#define FONT_RESOURCE_ID 101 // 确保这个ID与资源文件中的ID匹配

// 标题替换映射
const std::unordered_map<std::wstring, std::wstring> titleReplaceMap = {
    {L"きまぐれテンプテーション", L"异想魅惑２暮色廻奇谭｜Kimagure Temptation 2 Yuuyami Kaikitan ver1.02"},
    // 可以在这里添加更多的标题替换规则
};

HANDLE g_fontResource = NULL;

// 字体替换映射
const std::unordered_map<std::wstring_view, std::wstring_view> fontNameMap = {
    {L"微软雅黑", L"ShiraYukiNoa"},
    {L"MS Gothic", L"ShiraYukiNoa"},
    {L"ＭＳ ゴシック", L"ShiraYukiNoa"},
    {L"SimSun", L"ShiraYukiNoa"},
    // 更多的字体映射可以加在这里
};

// 原型声明
HFONT(WINAPI* PfuncCreateFontIndirectW)(LOGFONTW* lplf);
HFONT(WINAPI* PfuncCreateFontIndirectA)(LOGFONTA* lplf);
HFONT(WINAPI* PfuncCreateFontW)(int cHeight, int cWidth, int cEscapement, int cOrientation, int cWeight, DWORD bItalic, DWORD bUnderline, DWORD bStrikeOut, DWORD iCharSet, DWORD iOutPrecision, DWORD iClipPrecision, DWORD iQuality, DWORD iPitchAndFamily, LPCWSTR pszFaceName);
HFONT(WINAPI* PfuncCreateFontA)(int cHeight, int cWidth, int cEscapement, int cOrientation, int cWeight, DWORD bItalic, DWORD bUnderline, DWORD bStrikeOut, DWORD iCharSet, DWORD iOutPrecision, DWORD iClipPrecision, DWORD iQuality, DWORD iPitchAndFamily, LPCSTR pszFaceName);
BOOL(WINAPI* PfuncSetWindowTextW)(HWND hWnd, LPCWSTR lpString);
int (WINAPI* PfuncEnumFontFamiliesExW)(HDC hdc, LPLOGFONTW lpLogfont, FONTENUMPROCW lpProc, LPARAM lParam, DWORD dwFlags);

// 添加CreateFileW的函数指针声明
HANDLE(WINAPI* PfuncCreateFileW)(
    LPCWSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile
    ) = CreateFileW;

// 从第1个代码添加的全局变量
DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

char* textBuffer[0x1000000] = {};
int textIdx = 0;

std::map<std::string, int> replacementMap;

// 从第1个代码添加的函数
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
    AddUTF8Replacement("システムメニューの固定/解除します", "系统菜单的「固定/解除」");
    AddUTF8Replacement("バージョン情報", "版本信息");
    AddUTF8Replacement("「野々宮花音」音声の「ON/OFF」設定", "设置「野野宫花音」语音的「开/关」");
    AddUTF8Replacement("「野々宮花音」音量調整", "调节「野野宫花音」音量");
    AddUTF8Replacement("「楠木みりあ」音量調整", "调节「楠木实莉爱」音量");
    AddUTF8Replacement("「朝桐美代」音量調整", "调节「朝桐美代」音量");
    AddUTF8Replacement("「アンネリーゼ」音量調整", "调节「安娜莉丝」音量");
    AddUTF8Replacement("「コハル」音量調整", "调节「小春」音量");
    AddUTF8Replacement("「朝桐千代」音量調整", "调节「朝桐千代」音量");
    AddUTF8Replacement("「霧生晶」音声の「ON/OFF」設定", "设置「雾生晶」语音的「开/关」");
    AddUTF8Replacement("「霧生晶」音量調整", "调节「雾生晶」音量");
    AddUTF8Replacement("「キルト」音声の「ON/OFF」設定", "设置「吉鲁特」语音的「开/关」");
    AddUTF8Replacement("「キルト」音量調整", "调节「吉鲁特」音量");
    AddUTF8Replacement("「その他」音声の「ON/OFF」設定", "设置「其他」语音的「开/关」");
    AddUTF8Replacement("「その他」音量調整", "调节「其他」音量");
    AddUTF8Replacement("「朝桐千代」音声の「ON/OFF」設定", "设置「朝桐千代」语音的「开/关」");
    AddUTF8Replacement("「楠木みりあ」音声の「ON/OFF」設定", "设置「楠木实莉爱」语音的「开/关」");
    AddUTF8Replacement("「アンネリーゼ」音声の「ON/OFF」設定", "设置「安娜莉丝」语音的「开/关」");
    AddUTF8Replacement("「コハル」音声の「ON/OFF」設定", "设置「小春」语音的「开/关」");
    AddUTF8Replacement("「朝桐美代」音声の「ON/OFF」設定", "设置「朝桐美代」语音的「开/关」");
    AddUTF8Replacement("全てのサウンドの音量調整", "调节所有音效的音量");
    AddUTF8Replacement("SEの音量調整", "调节音效音量");
    AddUTF8Replacement("BGMの音量調整", "调节背景音乐音量");
    AddUTF8Replacement("SEの「ON/OF」F設定", "设置音效的「开/关」");
    AddUTF8Replacement("BGMの「ON/OFF」設定", "设置背景音乐的「开/关」");
    AddUTF8Replacement("全ての音声の「ON/OFF」設定", "设置所有语音的「开/关」");
    AddUTF8Replacement("音声再生中に左クリックした際の音声停止「ON/OFF」設定", "设置播放语音时左键点击停止语音的「开/关」");
    AddUTF8Replacement("全ての音声の音量調整", "调节所有语音的音量");
    AddUTF8Replacement("全てのサウンドの「ON/OFF」設定", "设置所有声音的「开/关」");
    AddUTF8Replacement("文章自動再生「ON/OFF」設定", "设置文本自动播放的「开/关」");
    AddUTF8Replacement("既読スキップ「ON/OFF」設定", "设置已读跳过的「开/关」");
    AddUTF8Replacement("選択肢後にスキップ継続「ON/OFF」設定", "设置选项后继续跳过的「开/关」");
    AddUTF8Replacement("メッセージウィンドウ移動「ON/OFF」設定", "设置文本窗口移动的「开/关」");
    AddUTF8Replacement("句読点でのメッセージ表示ウェイトの「ON/OFF」設定", "设置标点符号处文本显示停顿的「开/关」");
    AddUTF8Replacement("選択肢でオートセーブ「ON/OFF」設定", "设置选项时自动保存的「开/关」");
    AddUTF8Replacement("選択肢後に文章の自動再生継続「ON/OFF」設定", "设置选项后继续自动播放文本的「开/关」");
    AddUTF8Replacement("各種確認ダイアログの「表示/非表示」設定", "设置各种确认对话框的「显示/隐藏」");
    AddUTF8Replacement("メッセージウィンドウ吹き出しヘルプ表示「ON/OFF」設定", "设置文本窗口说明框显示的「开/关」");
    AddUTF8Replacement("未読文章、選択肢又はシーンの\\始まりまでジャンプします", "跳转到未读文本、选项或场景开始处");
    AddUTF8Replacement("セーブ画面を開きます", "打开存档界面");
    AddUTF8Replacement("ロード画面を開きます", "打开读档界面");
    AddUTF8Replacement("全セーブデータを削除します", "删除所有的存档");
    AddUTF8Replacement("ロード画面から抜けます", "退出读档界面");
    AddUTF8Replacement("セーブ画面から抜けます", "退出存档界面");
    AddUTF8Replacement("１つ上にスクロールします", "向上滚动一个");
    AddUTF8Replacement("１つ下にスクロールします", "向下滚动一个");
    AddUTF8Replacement("スクロールします", "滚动");
    AddUTF8Replacement("セーブページに移動します", "前往存档界面");
    AddUTF8Replacement("オートセーブページに移動します", "前往自动存档界面");
    AddUTF8Replacement("クイックセーブのページに移動します", "前往快速存档界面");
    AddUTF8Replacement("タイトル画面に戻ります", "返回标题");
    AddUTF8Replacement("未解放のシーンも全て解放状態にします", "解锁全部的场景");
    AddUTF8Replacement("音楽鑑賞モードに移動します", "前往音乐鉴赏界面");
    AddUTF8Replacement("上にスクロールします", "向上滚动");
    AddUTF8Replacement("下にスクロールします", "向下滚动");
    AddUTF8Replacement("システム設定を開きます", "打开系统设定");
    AddUTF8Replacement("サウンド設定を開きます", "打开声音设定");
    AddUTF8Replacement("初期状態に戻す", "返回默认设定");
    AddUTF8Replacement("環境設定画面から抜けます", "退出游戏设定界面");
    AddUTF8Replacement("「？？？」を再生します", "播放「？？？」");
    AddUTF8Replacement("タイトル画面に戻ります", "返回标题界面");
    AddUTF8Replacement("シーンモードに移動します", "前往场景鉴赏界面");
    AddUTF8Replacement("既読＆未読両方スキップします", "跳过已读和未读的文本");
    AddUTF8Replacement("既読文章をスキップします", "跳过已读文本");
    AddUTF8Replacement("環境設定を開きます", "打开系统设定");
    AddUTF8Replacement("文章の自動再生を開始します", "开始自动播放文本");
    AddUTF8Replacement("履歴を表示します", "打开历史记录");
    AddUTF8Replacement("音声をループ再生します", "循环播放语音");
    AddUTF8Replacement("セーブ画面を開きます", "打开存档界面");
    AddUTF8Replacement("クイックセーブします", "快速存档");
    AddUTF8Replacement("ロード画面を開きます", "打开读档界面");
    AddUTF8Replacement("クイックロードします", "快速读档");
    AddUTF8Replacement("タイトル画面に戻ります", "返回标题");
    AddUTF8Replacement("ゲームを終了します", "结束游戏");
    AddUTF8Replacement("コスチューム選択画面を開きます", "打开服装选择界面");
    AddUTF8Replacement("サイドメニューを開きます", "开启侧边菜单");
    AddUTF8Replacement("操作手帳を開きます", "打开搜查笔记");
    AddUTF8Replacement("収集品一覧を開きます", "打开收集品列表");
    AddUTF8Replacement("未読文章までスキップします", "跳过到未读文本处");
    AddUTF8Replacement("メッセージウィンドウを\\非表示にします", "隐藏文本框");
    AddUTF8Replacement("機能バーを閉じます", "关闭功能栏");
    AddUTF8Replacement("１個前の履歴を表示します", "显示前一条文本记录");
    AddUTF8Replacement("１個次の履歴を表示します", "显示后一条文本记录");
    AddUTF8Replacement("履歴をスクロールします", "滚动文本记录");
    AddUTF8Replacement("連続音声再生したい履歴をチェックします", "选中想要连续播放语音的文本");
    AddUTF8Replacement("この履歴の箇所からゲームを再開します", "从此处重新开始游戏");
    AddUTF8Replacement("チェックを付けた音声を連続再生します", "重播选中文本的语音");
    AddUTF8Replacement("１ページ分前の履歴を表示します", "显示前一页");
    AddUTF8Replacement("１ページ分後の履歴を表示します", "显示后一页");
    AddUTF8Replacement("音声を再生します", "重播语音");
    AddUTF8Replacement("システム設定を開きます", "打开系统设定");
    AddUTF8Replacement("サウンド設定を開きます", "打开声音设定");
    AddUTF8Replacement("履歴画面を開きます", "打开历史记录");
    AddUTF8Replacement("セーブ画面を開きます", "打开存档界面");
    AddUTF8Replacement("ロード画面を開きます", "打开读档界面");
    AddUTF8Replacement("捜査手帳を開きます", "打开搜查笔记");
    AddUTF8Replacement("履歴画面から抜けます", "退出文本记录界面");
    AddUTF8Replacement("タイトル画面に戻ります", "返回标题");
    AddUTF8Replacement("ゲームを終了します", "结束游戏");
    AddUTF8Replacement("メッセージ表示「一文字ずつ表示／一括又表示」設定", "切换文本显示「一个字一个字显示／直接全部显示」");
    AddUTF8Replacement("メッセージ表示速度", "文本显示速度");
    AddUTF8Replacement("既読スキップ速度設定", "设置跳过已读文本的速度");
    AddUTF8Replacement("文章自動再生速度設定", "设置文本自动播放的速度");
    AddUTF8Replacement("メッセージウィンドウの「色／透明度」設定", "设置文本框的「颜色／透明度」");
    AddUTF8Replacement("画面演出効果の速度を設定します", "设置动态效果的速度");
    AddUTF8Replacement("メッセージ表示中に右クリックした時の動作設定", "设置文本框显示时右键的功能");
    AddUTF8Replacement("上にスクロールします", "向上滚动");
    AddUTF8Replacement("下にスクロールします", "向下滚动");
    AddUTF8Replacement("スクロールします", "滚动");
    AddUTF8Replacement("システム設定を開きます", "打开系统设定");
    AddUTF8Replacement("サウンド設定を開きます", "打开声音设定");
    AddUTF8Replacement("初期状態に戻す", "返回默认设定");
    AddUTF8Replacement("環境設定画面から抜けます", "退出游戏设定界面");
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
    AddUTF8Replacement("【とある日のボイスメモ】を閲覧します", "阅览【某天的语音记录】");
    AddUTF8Replacement("収集品画面から抜けます", "退出收集品界面");
    AddUTF8Replacement("全ての収集品項目を解放します", "解锁所有的收集品");
    AddUTF8Replacement("捜査手帳を開きます", "打开搜查笔记");
    AddUTF8Replacement("収集品リストを開きます", "打开收集品列表");
    AddUTF8Replacement("既読＆未読両方スキップを停止します", "停止跳过已读和未读文本");
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
    AddUTF8Replacement("悠久＆アンネリーゼ", "悠久＆安娜莉丝");
    AddUTF8Replacement("千代＆美代", "千代＆美代");
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
    AddUTF8Replacement("【集団行方不明事件＆その後】を閲覧します", "阅读【集体失踪事件＆后续】");
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
    AddUTF8Replacement("ＭＳ ゴシック", "黑体");
    AddUTF8Replacement("に設定しました。", "设定");
    AddUTF8Replacement("15秒後に自動的に元に戻ります。", "15秒后自动恢复原样");
    AddUTF8Replacement("キャンセル", "取消");
    AddUTF8Replacement("%2u秒後に自動的に元に戻ります。", "%2u秒后自动恢复原样");
    AddUTF8Replacement("きまぐれテンプテーション２ ゆうやみ廻奇譚 Ver 1.00", "异想魅惑2 暮色廻奇谭　Ver 1.00");
    AddUTF8Replacement("全て初期設定に戻す", "全部返回默认设定");
    AddUTF8Replacement("「フルスクリーンモード設定」及び「ウィンドウサイズ設定」を初期値に戻します。", "「全屏模式设定」和「窗口大小设定」返回默认设定");
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
    originalFuncAddr = baseAddr + 0x192f3;
    returnAddress = originalFuncAddr + 5;
    callAddress = baseAddr + 0x1a5d0;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
    std::cout << std::to_string(baseAddr).c_str() << std::endl;
}

// 获取当前模块所在目录
std::wstring GetCurrentModuleDirectory() {
    wchar_t path[MAX_PATH];
    GetModuleFileNameW(NULL, path, MAX_PATH);
    std::wstring str(path);
    size_t pos = str.find_last_of(L"\\");
    return str.substr(0, pos + 1);
}

// 新的CreateFileW函数
HANDLE WINAPI NewCreateFileW(
    LPCWSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile
) {
    // 如果文件名为空，直接调用原函数
    if (lpFileName == NULL) {
        return PfuncCreateFileW(lpFileName, dwDesiredAccess, dwShareMode,
            lpSecurityAttributes, dwCreationDisposition,
            dwFlagsAndAttributes, hTemplateFile);
    }

    static std::wstring modDir = GetCurrentModuleDirectory();
    std::wstring customPath = modDir + L"kimaten2_chs\\";
    std::wstring fileName(lpFileName);

    // 检查是否是绝对路径
    if (fileName.find(L':') != std::wstring::npos || fileName.find(L"\\\\") == 0) {
        return PfuncCreateFileW(lpFileName, dwDesiredAccess, dwShareMode,
            lpSecurityAttributes, dwCreationDisposition,
            dwFlagsAndAttributes, hTemplateFile);
    }

    // 获取文件名部分
    size_t lastBackslash = fileName.find_last_of(L"\\");
    std::wstring pureFileName = (lastBackslash != std::wstring::npos) ?
        fileName.substr(lastBackslash + 1) : fileName;

    // 首先尝试在自定义目录中查找文件
    std::wstring customFullPath = customPath + pureFileName;

    // 检查自定义路径文件是否存在
    WIN32_FIND_DATAW findFileData;
    HANDLE hFind = FindFirstFileW(customFullPath.c_str(), &findFileData);

    if (hFind != INVALID_HANDLE_VALUE) {
        FindClose(hFind);
        // 如果自定义目录中的文件存在，使用自定义路径
        return PfuncCreateFileW(customFullPath.c_str(),
            dwDesiredAccess,
            dwShareMode,
            lpSecurityAttributes,
            dwCreationDisposition,
            dwFlagsAndAttributes,
            hTemplateFile);
    }

    // 如果在自定义目录中没有找到，则使用原始路径
    return PfuncCreateFileW(lpFileName,
        dwDesiredAccess,
        dwShareMode,
        lpSecurityAttributes,
        dwCreationDisposition,
        dwFlagsAndAttributes,
        hTemplateFile);
}

// 辅助函数：替换字体名称
bool ReplaceFontName(LPWSTR faceName) {
    // 直接强制设置为 ShiraYukiNoa 字体
    wcscpy_s(faceName, LF_FACESIZE, L"ShiraYukiNoa");
    return true;
}

// 新的CreateFontIndirectW函数
HFONT WINAPI NewCreateFontIndirectW(LOGFONTW* lplf) {
    if (lplf) {
        // 检查字体名是否为SimHei
        if (wcscmp(lplf->lfFaceName, L"SimHei") != 0) {
            // 如果不是SimHei，则替换为ShiraYukiNoa字体
            wcscpy_s(lplf->lfFaceName, LF_FACESIZE, L"ShiraYukiNoa");
            lplf->lfCharSet = DEFAULT_CHARSET;
        }
        // 如果是SimHei，保持原样不替换
    }
    return PfuncCreateFontIndirectW(lplf);
}


// 新的CreateFontIndirectA函数
HFONT WINAPI NewCreateFontIndirectA(LOGFONTA* lplf) {
    if (lplf) {
        WCHAR wideFaceName[LF_FACESIZE];
        if (MultiByteToWideChar(CP_ACP, 0, lplf->lfFaceName, -1, wideFaceName, LF_FACESIZE) == 0) {
            return PfuncCreateFontIndirectA(lplf);
        }
        if (ReplaceFontName(wideFaceName)) {
            if (WideCharToMultiByte(CP_ACP, 0, wideFaceName, -1, lplf->lfFaceName, LF_FACESIZE, NULL, NULL) == 0) {
                return PfuncCreateFontIndirectA(lplf);
            }
            lplf->lfCharSet = DEFAULT_CHARSET;
        }
    }
    return PfuncCreateFontIndirectA(lplf);
}

// 新的CreateFontW函数
HFONT WINAPI NewCreateFontW(int cHeight, int cWidth, int cEscapement, int cOrientation, int cWeight, DWORD bItalic, DWORD bUnderline, DWORD bStrikeOut, DWORD iCharSet, DWORD iOutPrecision, DWORD iClipPrecision, DWORD iQuality, DWORD iPitchAndFamily, LPCWSTR pszFaceName) {
    WCHAR newFaceName[LF_FACESIZE];
    if (wcscpy_s(newFaceName, pszFaceName) != 0) {
        return PfuncCreateFontW(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, pszFaceName);
    }
    if (ReplaceFontName(newFaceName)) {
        iCharSet = DEFAULT_CHARSET;
    }
    return PfuncCreateFontW(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, newFaceName);
}

// 新的CreateFontA函数
HFONT WINAPI NewCreateFontA(int cHeight, int cWidth, int cEscapement, int cOrientation, int cWeight, DWORD bItalic, DWORD bUnderline, DWORD bStrikeOut, DWORD iCharSet, DWORD iOutPrecision, DWORD iClipPrecision, DWORD iQuality, DWORD iPitchAndFamily, LPCSTR pszFaceName) {
    WCHAR wideFaceName[LF_FACESIZE];
    if (MultiByteToWideChar(CP_ACP, 0, pszFaceName, -1, wideFaceName, LF_FACESIZE) == 0) {
        return PfuncCreateFontA(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, pszFaceName);
    }
    if (ReplaceFontName(wideFaceName)) {
        iCharSet = DEFAULT_CHARSET;
    }
    char newFaceName[LF_FACESIZE];
    if (WideCharToMultiByte(CP_ACP, 0, wideFaceName, -1, newFaceName, LF_FACESIZE, NULL, NULL) == 0) {
        return PfuncCreateFontA(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, pszFaceName);
    }
    return PfuncCreateFontA(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, newFaceName);
}

// 新的SetWindowTextW函数,根据映射表替换窗口标题
BOOL WINAPI NewSetWindowTextW(HWND hWnd, LPCWSTR lpString) {
    if (lpString) {
        std::wstring currentTitle(lpString);
        for (const auto& [key, value] : titleReplaceMap) {
            if (currentTitle.find(key) != std::wstring::npos) {
                // 找到匹配的关键词，直接替换为新标题
                return PfuncSetWindowTextW(hWnd, value.c_str());
            }
        }
    }
    // 如果没有找到匹配的关键词，使用原始的标题
    return PfuncSetWindowTextW(hWnd, lpString);
}

// 新的EnumFontFamiliesExW函数
int WINAPI NewEnumFontFamiliesExW(HDC hdc, LPLOGFONTW lpLogfont, FONTENUMPROCW lpProc, LPARAM lParam, DWORD dwFlags) {
    if (lpLogfont) {
        auto it = fontNameMap.find(lpLogfont->lfFaceName);
        if (it != fontNameMap.end()) {
            return 1;
        }
    }
    return PfuncEnumFontFamiliesExW(hdc, lpLogfont, lpProc, lParam, dwFlags);
}

// 安装字体从资源
BOOL InstallFontFromResource(HMODULE hModule) {
    HRSRC hResInfo = FindResource(hModule, MAKEINTRESOURCE(FONT_RESOURCE_ID), RT_FONT);
    if (!hResInfo) {
        OutputDebugString(L"Failed to find font resource\n");
        return FALSE;
    }
    HGLOBAL hResData = LoadResource(hModule, hResInfo);
    if (!hResData) {
        OutputDebugString(L"Failed to load font resource\n");
        return FALSE;
    }
    void* pFontData = LockResource(hResData);
    if (!pFontData) {
        OutputDebugString(L"Failed to lock font resource\n");
        FreeResource(hResData);
        return FALSE;
    }
    DWORD fontSize = SizeofResource(hModule, hResInfo);
    DWORD numFonts = 0;
    g_fontResource = AddFontMemResourceEx(pFontData, fontSize, NULL, &numFonts);
    FreeResource(hResData);
    if (g_fontResource == NULL) {
        OutputDebugString(L"Failed to add font resource\n");
        return FALSE;
    }
    OutputDebugString(L"Font installed successfully\n");
    return TRUE;
}

// 卸载字体
BOOL UninstallFont() {
    if (g_fontResource && RemoveFontMemResourceEx(g_fontResource)) {
        g_fontResource = NULL;
        return TRUE;
    }
    return FALSE;
}

// DLL入口点
BOOL APIENTRY DllMain(HMODULE hModule, DWORD reason, LPVOID lpReserved) {
    UNREFERENCED_PARAMETER(lpReserved);
    switch (reason) {
    case DLL_PROCESS_ATTACH:
        DisableThreadLibraryCalls(hModule);
        CreateConsole();
        initReplacementMap();
        hook_main();

        PfuncCreateFontIndirectW = (HFONT(WINAPI*)(LOGFONTW*))DetourFindFunction("GDI32.dll", "CreateFontIndirectW");
        PfuncCreateFontIndirectA = (HFONT(WINAPI*)(LOGFONTA*))DetourFindFunction("GDI32.dll", "CreateFontIndirectA");
        PfuncCreateFontW = (HFONT(WINAPI*)(int, int, int, int, int, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, LPCWSTR))DetourFindFunction("GDI32.dll", "CreateFontW");
        PfuncCreateFontA = (HFONT(WINAPI*)(int, int, int, int, int, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, DWORD, LPCSTR))DetourFindFunction("GDI32.dll", "CreateFontA");
        PfuncSetWindowTextW = (BOOL(WINAPI*)(HWND, LPCWSTR))DetourFindFunction("USER32.dll", "SetWindowTextW");
        PfuncEnumFontFamiliesExW = (int (WINAPI*)(HDC, LPLOGFONTW, FONTENUMPROCW, LPARAM, DWORD))DetourFindFunction("GDI32.dll", "EnumFontFamiliesExW");

        if (!PfuncCreateFontIndirectW || !PfuncCreateFontIndirectA || !PfuncCreateFontW || !PfuncCreateFontA || !PfuncSetWindowTextW || !PfuncEnumFontFamiliesExW) {
            OutputDebugString(L"Failed to find one or more required functions\n");
            return FALSE;
        }

        if (InstallFontFromResource(hModule) || 1) {
            DetourTransactionBegin();
            DetourUpdateThread(GetCurrentThread());
            DetourAttach(&(PVOID&)PfuncCreateFontIndirectW, NewCreateFontIndirectW);
            DetourAttach(&(PVOID&)PfuncCreateFontIndirectA, NewCreateFontIndirectA);
            DetourAttach(&(PVOID&)PfuncCreateFontW, NewCreateFontW);
            DetourAttach(&(PVOID&)PfuncCreateFontA, NewCreateFontA);
            DetourAttach(&(PVOID&)PfuncSetWindowTextW, NewSetWindowTextW);
            DetourAttach(&(PVOID&)PfuncEnumFontFamiliesExW, NewEnumFontFamiliesExW);
            DetourAttach(&(PVOID&)PfuncCreateFileW, NewCreateFileW);
            DetourTransactionCommit();
        }
        break;

    case DLL_PROCESS_DETACH:
        UninstallFont();
        DetourTransactionBegin();
        DetourUpdateThread(GetCurrentThread());
        DetourDetach(&(PVOID&)PfuncCreateFontIndirectW, NewCreateFontIndirectW);
        DetourDetach(&(PVOID&)PfuncCreateFontIndirectA, NewCreateFontIndirectA);
        DetourDetach(&(PVOID&)PfuncCreateFontW, NewCreateFontW);
        DetourDetach(&(PVOID&)PfuncCreateFontA, NewCreateFontA);
        DetourDetach(&(PVOID&)PfuncSetWindowTextW, NewSetWindowTextW);
        DetourDetach(&(PVOID&)PfuncEnumFontFamiliesExW, NewEnumFontFamiliesExW);
        DetourDetach(&(PVOID&)PfuncCreateFileW, NewCreateFileW);
        DetourTransactionCommit();
        break;
    }
    return TRUE;
}

// 一个空函数,用于防止DLL被优化掉
extern "C" __declspec(dllexport) void KeepAliveDummy(void) {
    // Do nothing
}

