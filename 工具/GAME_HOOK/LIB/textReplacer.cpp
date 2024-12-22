#include "textReplacer.h"
#include <map>
#include "convert.h"
#include <string>
#include <fstream>
#include <locale>
#include <codecvt>
#include "detours.h"
#pragma comment(lib, "detours.lib")

std::map<std::wstring, std::wstring> readReplaceMap(const std::string& filename) {
    std::map<std::wstring, std::wstring> result;
    std::ifstream file(filename);
    if (!file.is_open()) {
        throw std::runtime_error("Could not open file");
    }
    std::wstring_convert<std::codecvt_utf8<wchar_t>, wchar_t> converter;
    std::string line;
    std::getline(file, line);
    std::wstring u32line = converter.from_bytes(line);
    std::wstring key, value;
    int i = 0;
    for (char32_t ch : u32line) {
        if (i % 2 == 0) {
            key = ch;
        }
        else {
            value = ch;
            result[key] = value;
        }
        i++;
    }
    return result;
}
std::map<std::wstring, std::wstring> charReplaceMap = readReplaceMap("replace.txt");

std::wstring sjisToWstring(LPCSTR sjisText) {
    int bufferSize = MultiByteToWideChar(932, 0, sjisText, -1, NULL, 0);
    std::wstring wideString(bufferSize, L'\0');
    MultiByteToWideChar(932, 0, sjisText, -1, &wideString[0], bufferSize);
    wideString.resize(bufferSize - 1);
    return wideString;
}

std::wstring replaceText(LPCSTR sjisText) {
    std::wstring oriTextW = sjisToWstring(sjisText);
    std::wstring result;
    for (const auto& ch : oriTextW) {
        std::wstring charStr(1, ch);
        // Check if the character is in the map and replace it
        if (charReplaceMap.find(charStr) != charReplaceMap.end()) {
            result += charReplaceMap.at(charStr);
        }
        else {
            result += charStr;
        }
    }
    return result;
}

typedef BOOL(WINAPI* TextOutA_t)(HDC hdc, int x, int y, LPCSTR lpString, int c);
TextOutA_t TrueTextOutA = TextOutA;

BOOL WINAPI HookedTextOutA(HDC hdc, int x, int y, LPCSTR lpString, int c) {
    std::cout << lpString << std::endl;
    if (lpString == NULL) {
        return TextOutA(hdc, x, y, lpString, c);
    }
    std::wstring lpWString = sjisLPCSTRToWideString(lpString);
    std::wstring replaced_ = replaceText(lpString);
    WCHAR replacedlpString[1000];
    for (int i = 0; i < replaced_.size(); i++) {
        replacedlpString[i] = replaced_[i];
    }
    return TextOutW(hdc, x, y, replacedlpString, c);
}

void hook_TextOutA_textReplace_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueTextOutA, HookedTextOutA);
    DetourTransactionCommit();
}

