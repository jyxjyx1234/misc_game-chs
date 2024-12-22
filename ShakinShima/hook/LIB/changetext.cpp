#include <Windows.h>
#include <changetext.h>
#include <iostream>
#include <fstream>
#include <string>
#include <iomanip>
#include <map>
#include <locale>
#include <codecvt>
#include "convert.h"
#include <vector>
#include "readconfig.h"

std::map<LPCSTR, LPCSTR, CStringCompare> readKeyValuePairs(const std::string& filePath) {
    std::map<LPCSTR, LPCSTR, CStringCompare> result;
    std::ifstream file(filePath);
    std::string line;

    if (!file.is_open()) {
        std::cerr << "Unable to open file: " << filePath << std::endl;
        return result;
    }

    while (std::getline(file, line)) {
        size_t delimiterPos = line.find('=');
        if (delimiterPos != std::string::npos) {
            std::string key = line.substr(0, delimiterPos);
            std::string value = line.substr(delimiterPos + 1);

            // Convert UTF-8 key to Shift-JIS
            int shiftJisLength = MultiByteToWideChar(CP_UTF8, 0, key.c_str(), -1, NULL, 0);
            std::vector<wchar_t> wideKey(shiftJisLength);
            MultiByteToWideChar(CP_UTF8, 0, key.c_str(), -1, wideKey.data(), shiftJisLength);

            int shiftJisBufferSize = WideCharToMultiByte(932, 0, wideKey.data(), -1, NULL, 0, NULL, NULL);
            char* shiftJisKey = new char[shiftJisBufferSize];
            WideCharToMultiByte(932, 0, wideKey.data(), -1, shiftJisKey, shiftJisBufferSize, NULL, NULL);

            // Convert UTF-8 value to GBK
            int gbkLength = MultiByteToWideChar(CP_UTF8, 0, value.c_str(), -1, NULL, 0);
            std::vector<wchar_t> wideValue(gbkLength);
            MultiByteToWideChar(CP_UTF8, 0, value.c_str(), -1, wideValue.data(), gbkLength);

            int gbkBufferSize = WideCharToMultiByte(936, 0, wideValue.data(), -1, NULL, 0, NULL, NULL);
            char* gbkValue = new char[gbkBufferSize];
            WideCharToMultiByte(936, 0, wideValue.data(), -1, gbkValue, gbkBufferSize, NULL, NULL);

            //ShowCharArrayAsBytes(shiftJisKey, strlen(shiftJisKey));
            result[shiftJisKey] = gbkValue;
        }
    }

    file.close();
    return result;
}

LPCSTR get_value_from_map(LPCSTR ori_text, std::map<LPCSTR, LPCSTR> ChangeMap) {
    auto it = ChangeMap.find(ori_text);
    if (it != ChangeMap.end()) {
        return it->second;
    }
    return "";
}

LPCSTR GetSubstring(LPCSTR source, size_t a, size_t b)
{
    if (source == nullptr || a > b)
    {
        return nullptr;
    }

    size_t len = strlen(source);
    if (a >= len)
    {
        return nullptr;
    }

    // 确保 b 不超过字符串长度
    b = (b < len) ? b : len - 1;

    // 计算子串长度
    size_t subLen = b - a + 1;

    // 分配新的内存来存储子串
    char* result = new char[subLen + 1];  // +1 用于存储结尾的 null 字符

    // 复制子串
    memcpy(result, source + a, subLen);
    result[subLen] = '\0';  // 添加结尾的 null 字符

    return result;
}

namespace changetext{
    void print_LPCSTR(LPCSTR text) {
        int wlen = MultiByteToWideChar(CP_ACP, 0, text, -1, NULL, 0);
        wchar_t* wstr = new wchar_t[wlen];
        MultiByteToWideChar(932, 0, text, -1, wstr, wlen);
        printf("%ls\n", wstr);
        delete[] wstr;
    }
}

bool containsLeftBracket(LPCSTR sjisString) {
    if (sjisString == nullptr) {
        return false;
    }

    const unsigned char* str = reinterpret_cast<const unsigned char*>(sjisString);
    size_t len = strlen(sjisString);

    for (size_t i = 0; i < len - 1; ++i) {
        if (str[i] == 0x81 && str[i + 1] == 0x79) {
            return true;
        }
    }

    return false;
}


ChangeTextOutput ChangeText(LPCSTR ori_text, int y,int len, LPCSTR idx,int printed_l, std::map<LPCSTR, LPCSTR, CStringCompare> ChangeMap) {
    ChangeTextOutput output;
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    int printlen = config.ReadInt("GLOBAL", "PRINTLEN", 52);
    if (y == 3 or containsLeftBracket(ori_text)) {
        LPCSTR o_text = SubString(ori_text, len);

        auto transed = ChangeMap.find(o_text);
        if (transed == ChangeMap.end()) {
            printLPCSTRAsBytes(o_text);
            output.flag = FALSE;
            return output;
        }
        output.transed_text_= SubString(transed ->second, printlen);
        output.idx_ = o_text;
        output.printed_len_ = printlen;
        output.flag = TRUE;
        return output;
    }
    if (y == 27 or y == 51) {
        auto transed = ChangeMap.find(idx);
        if (transed == ChangeMap.end()) {
            output.flag = FALSE;
            return output;
        }
        output.transed_text_ = GetSubstring(transed->second, printed_l, printed_l+ printlen);
        if (output.transed_text_ == nullptr) {
            output.transed_text_ = " ";
        }
        output.idx_ = idx;
        output.printed_len_ = printed_l + printlen;
        output.flag = TRUE;
        return output;
    }
    output.flag = FALSE;
    output.transed_text_ = ori_text;
    output.idx_ = idx;
    output.printed_len_ = printed_l;
    return output;
}