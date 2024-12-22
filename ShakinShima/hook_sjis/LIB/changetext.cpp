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

std::map<LPCSTR, LPCSTR, CStringCompare> readKeyValuePairs(const std::string& filePath) {
    std::map<LPCSTR, LPCSTR, CStringCompare> result;
    std::ifstream file(filePath);
    std::string line;

    if ( !file.is_open() ) {
        printf("Trans file not found!");
        return result;
    }

    while ( std::getline(file, line) ) {
        size_t delimiterPos = line.find('=');
        if ( delimiterPos != std::string::npos ) {
            std::string key = line.substr(0, delimiterPos);
            std::string value = line.substr(delimiterPos + 1);

            // Convert UTF-8 key to Shift-JIS
            int shiftJisLength = MultiByteToWideChar(CP_UTF8, 0, key.c_str(), -1, NULL, 0);
            std::vector<wchar_t> wideKey(shiftJisLength);
            MultiByteToWideChar(CP_UTF8, 0, key.c_str(), -1, wideKey.data(), shiftJisLength);

            int shiftJisBufferSize = WideCharToMultiByte(932, 0, wideKey.data(), -1, NULL, 0, NULL, NULL);
            char* shiftJisKey = new char[ shiftJisBufferSize ];
            WideCharToMultiByte(932, 0, wideKey.data(), -1, shiftJisKey, shiftJisBufferSize, NULL, NULL);

            // Convert UTF-8 value to GBK
            int gbkLength = MultiByteToWideChar(CP_UTF8, 0, value.c_str(), -1, NULL, 0);
            std::vector<wchar_t> wideValue(gbkLength);
            MultiByteToWideChar(CP_UTF8, 0, value.c_str(), -1, wideValue.data(), gbkLength);

            int gbkBufferSize = WideCharToMultiByte(936, 0, wideValue.data(), -1, NULL, 0, NULL, NULL);
            char* gbkValue = new char[ gbkBufferSize ];
            WideCharToMultiByte(936, 0, wideValue.data(), -1, gbkValue, gbkBufferSize, NULL, NULL);

            //ShowCharArrayAsBytes(shiftJisKey, strlen(shiftJisKey));
            result[ shiftJisKey ] = gbkValue;
        }
    }
    printf("Read %d trans from file!", result.size());

    file.close();
    return result;
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


ChangeTextOutput ChangeText(LPCSTR ori_text, int y, std::map<LPCSTR, LPCSTR, CStringCompare> ChangeMap) {
    ChangeTextOutput output;
    if (y == 3 or containsLeftBracket(ori_text)) {
        auto transed = ChangeMap.find(ori_text);
        if (transed == ChangeMap.end()) {
            output.flag = 0;
            return output;
        }
        output.transed_text_= transed->second;
        output.flag = 1;
        return output;
    }
    else if( y == 27 || y == 51 ) {
        output.flag = 2;
        return output;
    }
    output.flag = 0;
    return output;
}