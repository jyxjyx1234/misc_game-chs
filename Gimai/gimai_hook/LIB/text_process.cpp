#include <windows.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <algorithm>
#include <map>
#include <codecvt>
#include <locale>
#include <vector>
#include <unordered_set>
#include <chrono>
#include "detours.h"
#include "convert.h"
#include "readconfig.h"
#pragma comment( lib, "detours.lib")
#include "text_process.h"

DWORD originalFuncAddr;
DWORD returnAddress;

std::unordered_set<std::string> uniqueStrings;
auto lastClearTime = std::chrono::steady_clock::now();
void Print_LPCSTR_to_File(LPCSTR str)
{
    std::string text(str);
    std::ofstream file("output.txt", std::ios::app);
    if (uniqueStrings.find(text) == uniqueStrings.end())
    {
        file <<"=" << text << std::endl;
        uniqueStrings.insert(text);
        file.close();
    }
    auto currentTime = std::chrono::steady_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::seconds>(currentTime - lastClearTime);
    if (duration.count() > 5) {
        uniqueStrings.clear();
        lastClearTime = currentTime;
    }
}

void print_LPCSTR(LPCSTR text, UINT len) {
    LPCSTR result = SubString(text, len);
    int wlen = MultiByteToWideChar(CP_ACP, 0, result, -1, NULL, 0);
    wchar_t* wstr = new wchar_t[wlen];
    MultiByteToWideChar(932, 0, result, -1, wstr, wlen);
    printf("%ls\n", wstr);
    delete[] wstr;
}


typedef int(WINAPI* pExtTextOutA) (
    HDC        hdc,
    int        x,
    int        y,
    UINT       options,
    const RECT* lprect,
    LPCSTR     lpString,
    UINT       c,
    const INT* lpDx
    );

pExtTextOutA T_ExtTextOutA = ExtTextOutA;

int WINAPI newExtTextOutA_dumptxt(
    HDC        hdc,
    int        x,
    int        y,
    UINT       options,
    const RECT* lprect,
    LPCSTR     lpString,
    UINT       c,
    const INT* lpDx
) {
    Print_LPCSTR_to_File(lpString);
    //LPCWSTR w_lpString = ConvertAnsiToWide(lpString, 932);
    //return ExtTextOutW(hdc, x, y, options, lprect, w_lpString, c, lpDx);
    return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
}

void Dump_text_main() {
    DetourRestoreAfterWith();
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)T_ExtTextOutA, newExtTextOutA_dumptxt);
    DetourTransactionCommit();
}

struct transdata {
    std::string text;
    int all_n = 0;
};

struct GetTransOutput {
    std::string transtext;
    BOOL flag;
};

std::map<std::string, transdata> generate_map_from_file() {
    char p[1024] = { 0 };
    GetAppPath(p, 1024);
    std::string filename("\\trans.dat");
    std::string apppath(p);
    filename = apppath + filename;
    std::map<std::string, transdata> result;
    std::ifstream file(filename, std::ios::in | std::ios::binary);
    std::string line;

    if (!file.is_open()) {
        printf("Error: Unable to open file %s.\n",filename.c_str());
        return result;
    }

    while (std::getline(file, line)) {
        std::istringstream iss(line);
        std::string a, b, c;

        if (std::getline(iss, a, '=') && std::getline(iss, b, '@') && std::getline(iss, c, '_')) {
            std::string key = utf8ToShiftJIS(a);
            transdata value;
            value.text = utf8ToGBK(b);
            value.all_n = std::stoi(c);

            result[key] = value;
        }
    }
    printf("%d", result.size());
    file.close();
    return result;
}

std::map<std::string, transdata> transmap;

transdata get_value_from_map(LPCSTR ori_text) {
    std::string ori(ori_text);
    auto it = transmap.find(ori);
    if (it != transmap.end()) {
        return it->second;
    }
    transdata emptyout;
    emptyout.all_n = -1;
    printf("%s: not found!\n",ori_text);
    return emptyout;
}
int gbk_char_len(unsigned char c) {
    if (c <= 0x7F) return 1;
    return 2;  // GBK 编码中，中文字符占用 2 个字节
}

// 辅助函数：计算 GBK 字符串中的字符数
size_t gbk_strlen(const std::string& str) {
    size_t len = 0;
    for (size_t i = 0; i < str.length(); ) {
        i += gbk_char_len(str[i]);
        ++len;
    }
    return len;
}

std::string substring(const std::string& text, int a, int b) {
    size_t text_len = gbk_strlen(text);

    // 检查并调整 a 和 b 的值
    if (a < 0) a = 0;
    if (b > text_len) b = text_len;
    if (a >= text_len) return "";
    if (a > b) std::swap(a, b);

    std::string result;
    size_t char_count = 0;
    size_t byte_pos = 0;

    // 找到起始位置
    while (char_count < a && byte_pos < text.length()) {
        byte_pos += gbk_char_len(text[byte_pos]);
        ++char_count;
    }

    // 复制子串
    while (char_count < b && byte_pos < text.length()) {
        int char_len = gbk_char_len(text[byte_pos]);
        result.append(text.substr(byte_pos, char_len));
        byte_pos += char_len;
        ++char_count;
    }

    return result;
}

int n_printed = 0;
int all_n;
std::string fulltrans;
int line_length = 23;

GetTransOutput get_trans(LPCSTR oritext) {
    GetTransOutput out;
    if (n_printed == 0) {
        transdata transdatas = get_value_from_map(oritext);
        all_n = transdatas.all_n;
        if (all_n == -1) {
            n_printed = 0;
            out.flag = false;
            return out;
        }
        std::string trans = transdatas.text;

        fulltrans = trans;
        n_printed = 1;
        if (n_printed == all_n) {
            n_printed = 0;
        }
        out.transtext = substring(trans, 0, line_length);
        out.flag = true;
        return out;
    }
    else {
        out.transtext = substring(fulltrans, line_length * n_printed, line_length * n_printed + line_length);
        n_printed += 1;
        if (n_printed == all_n) {
            n_printed = 0;
        }
        out.flag = true;
        return out;
    }
}

int WINAPI newExtTextOutA_transtext(
    HDC        hdc,
    int        x,
    int        y,
    UINT       options,
    const RECT* lprect,
    LPCSTR     lpString,
    UINT       c,
    const INT* lpDx
) {
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int FONTHEIGHT = config.ReadInt("FONT", "FONTHEIGHT", 0);
    int FONTWEIGHT = config.ReadInt("FONT", "FONTWEIGHT", 0);
    int FONTWIDTH = config.ReadInt("FONT", "FONTWIDTH", 0);
    GetTransOutput t = get_trans(lpString);
    if (t.flag == false) {
        return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
    }

    LPCSTR transed_text = t.transtext.c_str();
    LPCWSTR W_transed_text = ConvertAnsiToWide(transed_text, 936);
    int w_c = wcslen(W_transed_text);
    if (w_c == 0) {
        return ExtTextOutW(hdc, x, y, options, lprect, L" ", 1, lpDx);
    }

    HFONT hOldFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONT lf;
    GetObject(hOldFont, sizeof(LOGFONT), &lf);
    HFONT hNewFont = CreateFontW(FONTHEIGHT,FONTWIDTH,0,0,FONTWEIGHT,0,0,0,DEFAULT_CHARSET,OUT_DEFAULT_PRECIS,CLIP_DEFAULT_PRECIS,DEFAULT_QUALITY,DEFAULT_PITCH|FF_DONTCARE,L"Microsoft Yahei UI");
    SelectObject(hdc, hNewFont);

    BOOL result = ExtTextOutW(hdc, x, y, options, lprect, W_transed_text, w_c, lpDx);
    SelectObject(hdc, hOldFont);
    DeleteObject(hNewFont);
    return result;
}

void Trans_text_main() {
    transmap = generate_map_from_file();
    DetourRestoreAfterWith();
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)T_ExtTextOutA, newExtTextOutA_transtext);
    DetourTransactionCommit();
}