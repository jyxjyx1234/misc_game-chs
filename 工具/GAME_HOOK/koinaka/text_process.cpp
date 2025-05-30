#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>
#include <fstream>
#include <iostream>

int mode;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;

std::string enc = "koinaka";

const int maxbuffersize = 0x1000000;
WCHAR* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::wstring removeSpaces(const std::wstring& input) {
    std::wstring output;
    output.reserve(input.size());
    for (wchar_t ch : input) {
        if (ch != L' ') {
            output.push_back(ch);
        }
    }
    return output;
}

std::map<std::wstring, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::wstring, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();

    std::string transData = buffer.str();
    for (size_t i = 0; i < transData.size(); ++i) {
        transData[i] ^= k[i % k.size()];
    }
    std::wstring transDataW((WCHAR*)transData.c_str());
    size_t pos = 0;
    size_t start = 0;
    std::wstring delimiter = L"[n]";
    while ((pos = transDataW.find(delimiter, start)) != std::wstring::npos) {
        std::wstring line = transDataW.substr(start, pos - start);
        size_t equalPos = line.find(L"[=]");
        if (equalPos != std::wstring::npos) {
            std::wstring key = line.substr(0, equalPos);
            std::wstring value = line.substr(equalPos + 3);
            strBuffer[stridx] = new WCHAR[wcslen(value.c_str()) + 4];
            memset(strBuffer[stridx], 0, wcslen(value.c_str()) * 2 + 4);
            wcscpy_s(strBuffer[stridx], wcslen(value.c_str()) + 4, value.c_str());
            transMap[removeSpaces(key)] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    file.close();
    return transMap;
}

std::map<std::wstring, int> replacementMap;


//void replace_text(WCHAR* text) {
//	auto it = replacementMap.find(removeSpaces(text));
//	std::cout << text << std::endl;
//	if (it != replacementMap.end()) {
//		wcscpy_s(text, wcslen(strBuffer[it->second]) + 1, strBuffer[it->second]);
//		std::cout << "Replaced: " << text << std::endl;
//	}
//}

void replace_text(hook_stack& s) {
	WCHAR* text = (WCHAR*)s.pedx;
    BOOL isP = (s.pedx != s.peax);
	if (!text) return;
	auto it = replacementMap.find(removeSpaces(text));
	if (it != replacementMap.end()) {
        UINT length = wcslen(strBuffer[it->second]);
        if ((!isP) && (length > 7)) {
			printf("specail: %ls\n", text);
            *(WCHAR**)(s.peax) = strBuffer[it->second];
            s.oesp_30 = length;
			s.oesp_34 = length;
        }
        else {
		    wcscpy_s(text, wcslen(strBuffer[it->second]) + 1, strBuffer[it->second]);
		    s.oesp_30 = length;
        }
	}
    else {
		printf("Not Found: %ls\n", text);
    }
}

void replace_text2(hook_stack& s) {
    BOOL isP = (s.peax != s.pedx);
    if (isP) {
        WCHAR** textp = (WCHAR**)s.peax;
        WCHAR* text = *textp;
        BOOL isP = (s.peax != s.pedx);
        if (!text) return;
        auto it = replacementMap.find(removeSpaces(text));
        if (it != replacementMap.end()) {
            UINT length = wcslen(strBuffer[it->second]);
            wcscpy_s(text, wcslen(strBuffer[it->second]) + 1, strBuffer[it->second]);
            s.oesp_24 = length + 8;
            s.oesp_20 = length + 8;
        }
        else {
            printf("Not Found: %ls\n", text);
        }
    }
    else {
        WCHAR* text = (WCHAR*)s.peax;
        if (!text) return;
        auto it = replacementMap.find(removeSpaces(text));
        if (it != replacementMap.end()) {
            stridx++;
            int len = wcslen(strBuffer[it->second]);
			strBuffer[stridx] = new WCHAR[len + 4];
			memset(strBuffer[stridx], 0, len * 2 + 4);
			wcscpy_s(strBuffer[stridx], wcslen(strBuffer[it->second]) + 4, strBuffer[it->second]);
            *(WCHAR**)s.peax = strBuffer[stridx];
            s.oesp_24 = 8;
            s.oesp_20 = len + 8;
        }
        else {
            printf("Not Found: %ls\n", text);
        }
    }
}



void __declspec(naked) HookFunction_replaceText()
{
    __asm
    {
        call callAddress

        pushad
        pushfd

        push esp
		call replace_text
		add esp, 0x04

        popfd
        popad

		jmp retAddAddr
    }
}

void __declspec(naked) HookFunction_replaceText2()
{
    __asm
    {
        call callAddress2

        pushad
        pushfd

        push esp
        call replace_text2
        add esp, 0x04

        popfd
        popad

        jmp returnAddress2
    }
}

void InstallHook_replacetext()
{
    DWORD oldProtect;
    replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
    originalFuncAddr = 0x00539F21;
	retAddAddr = originalFuncAddr + 5;
    callAddress = 0x005A1750;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr = 0x0056ff8c;
    returnAddress2 = originalFuncAddr + 5;
    callAddress2 = 0x004e7270;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceText2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    //install_hook_textreplaceEx(2, "data2.bin", enc);
    newFontName = L"SimSun";
    installFontHook_main(1, 1, 1, 0);
}

