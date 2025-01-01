#include <windows.h>
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <map>
#include <codecvt>
#include <locale>
#include <vector>
#include "text_process.h"
#include "readconfig.h"
#include "convert.h"
#include <regex>
#include <detours.h>
#pragma comment(lib, "detours.lib")

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD callAddress2;

DWORD originalFuncAddr3;
DWORD returnAddress3;
DWORD callAddress3;

DWORD originalFuncAddr4;
DWORD returnAddress4;
DWORD callAddress4;

DWORD originalFuncAddr5;
DWORD returnAddress5;
DWORD callAddress5;

DWORD originalFuncAddr6;
DWORD returnAddress6;
DWORD callAddress6;

typedef DWORD(WINAPI* pGetGlyphOutlineA)(
    HDC hdc,
    UINT uChar,
    UINT uFormat,
    LPGLYPHMETRICS lpgm,
    DWORD cbBuffer,
    LPVOID lpvBuffer,
    const MAT2* lpmat2
    );
pGetGlyphOutlineA TrueGetGlyphOutlineA = GetGlyphOutlineA;

rr::RConfig config;
std::string fontfn;
std::string fontn;
int cHeight;

const int maxbuffersize = 0x1000000;
char* strBuffer[maxbuffersize] = {};
int stridx = 0;
HFONT changedFont[64];

std::string removeNewlines(const std::string& input) {
    std::regex pattern("[\r\n]");
    return std::regex_replace(input, pattern, "");
}

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();
    
    std::string transData = buffer.str();
    std::string k = "alyce1228";
    for (size_t i = 0; i < transData.size(); ++i) {
        transData[i] ^= k[i % k.size()];
    }
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
			key = removeNewlines(key);
            std::string value = line.substr(equalPos + 3);
            strBuffer[stridx] = new char[strlen(value.c_str()) + 1];
            strcpy_s(strBuffer[stridx], strlen(value.c_str()) + 1, value.c_str());
            transMap[key] = stridx;
            stridx++;
            strBuffer[stridx] = new char[strlen(value.c_str()) + 3];
            strcpy_s(strBuffer[stridx], strlen((value + "\n").c_str()) + 1, (value + "\n").c_str());
			stridx++;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    file.close();

    return transMap;
}

std::map<std::wstring, std::wstring> readReplaceMap(const std::string& filename) {
    std::map<std::wstring, std::wstring> result;
    std::ifstream file(filename);
    if (!file.is_open()) {
        return result;
    }
    int i = 0;
    
    std::stringstream buffer;
    buffer << file.rdbuf();
    std::string data = buffer.str();
    std::string k = "alyce1228";
    for (size_t i = 0; i < data.size(); ++i) {
        data[i] ^= k[i % k.size()];
    }

    std::wstring_convert<std::codecvt_utf8<wchar_t>, wchar_t> converter;
    std::wstring u32line = converter.from_bytes(data);
    std::wstring key, value;
    
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
std::map<std::wstring, std::wstring> charReplaceMap = readReplaceMap("data2.bin");

void WriteToFile(int* idx, char** text)
{
    if (text == nullptr) return;
    std::ofstream file("output.txt", std::ios::app);
    if (file.is_open())
    {
		if (*idx == -1) {
			file << "@@@" << *text << std::endl << "###";
		}
		else {
			file << *text << std::endl << "###";
		}
        file.close();
    }
}

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin");

void ChangeText(char** text)
{
    if (*text == nullptr) return;
    std::string str(*text);
	BOOL isNewline = FALSE;
    if (!str.empty() && str.back() == '\n') {
        isNewline = TRUE;
    }
	str = removeNewlines(str);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
		int transidx = it->second;
        if (isNewline) {
            transidx++;
        }
        //printf("%s Repalce: sucess!\n", strBuffer[transidx]);
		*text = strBuffer[transidx];
    }
}

HFONT change_font(HDC hdc, BOOL isForce = false) {
    /*HFONT oriFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(oriFont, sizeof(LOGFONT), &logFont);
    if (isForce || strcmp(notChangeFont, logFont.lfFaceName) != 0){
        strcpy_s(logFont.lfFaceName, LF_FACESIZE, fontn.c_str());
        HFONT newFont = CreateFontIndirectA(&logFont);
        SelectObject(hdc, changedFont);
    }*/
    HFONT oriFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT); 
    LOGFONTA logFont;
    GetObjectA(oriFont, sizeof(LOGFONT), &logFont);
	//printf("FontHeight: %d\n", logFont.lfHeight);
    SelectObject(hdc, changedFont[abs(logFont.lfHeight) * 9 / 10]);
    return oriFont;
}

DWORD WINAPI HOOK_GetGlyphOutlineA(HDC hdc, UINT uChar, UINT uFormat, LPGLYPHMETRICS lpgm, DWORD cbBuffer, LPVOID lpvBuffer, const MAT2* lpmat2)
{
    char bytes[3]; 
    UINT t = uChar;
    bytes[0] = static_cast<char>((t >> 8) & 0xFF); 
    bytes[1] = static_cast<char>(t & 0xFF); 
    bytes[2] = '\0';
    if (bytes[0] == '\xf0') {
		return TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
	}
    if (bytes[0] == '\x00') {
        HFONT oriFont = change_font(hdc);
        DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        SelectObject(hdc, oriFont);
        return res;
    }

    std::string str(bytes);
    std::wstring wstr = sjisStringToWString(str);
    if (charReplaceMap.find(wstr) != charReplaceMap.end()) {
        wstr = charReplaceMap[wstr];
        uChar = static_cast<UINT>(wstr.c_str()[0]);
        HFONT oriFont = change_font(hdc);
        DWORD res = GetGlyphOutlineW(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        SelectObject(hdc, oriFont);
        return res;
    }

	HFONT oriFont = change_font(hdc);
    DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
    SelectObject(hdc, oriFont);
    return res;
}

DWORD WINAPI HOOK_getTextExtentExPointA(HDC hdc, LPCSTR lpszStr, int cchString, int nMaxExtent, LPINT lpnFit, LPINT alpDx, LPSIZE lpSize)
{
    HFONT oriFont = change_font(hdc);
	DWORD res = GetTextExtentExPointA(hdc, lpszStr, cchString, nMaxExtent, lpnFit, alpDx, lpSize);
	SelectObject(hdc, oriFont);
	return res;
}   

DWORD WINAPI Hook_getTextExtentPoint32A(HDC hdc, LPCSTR lpString, int c, LPSIZE ps)
{
	HFONT oriFont = change_font(hdc);
	DWORD res = GetTextExtentPoint32A(hdc, lpString, c, ps);
	SelectObject(hdc, oriFont);
	return res;
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24 + 0x10]
        push eax
        call ChangeText
        add esp, 4

        lea eax, [esp + 0x24 + 0xc]
        push eax
        call ChangeText
        add esp, 4


        popfd
        popad

        push 0xFFFFFFFF
        push[callAddress]

        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24 + 0x8]
        push eax
        call ChangeText
        add esp, 4

        popfd
        popad

        push 0xFFFFFFFF
        push[callAddress2]

        jmp dword ptr[returnAddress2]
    }
}

void __declspec(naked) HookFunction_replacetext3()
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24]
        push eax
        call ChangeText
        add esp, 4

        popfd
        popad

        call callAddress6

        jmp dword ptr[returnAddress6]
    }
}

void __declspec(naked) HookFunction_dumptext()
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24 + 0x10]
		push eax
		lea eax, [esp + 0x24 + 0x4 + 0x4]
        push eax
        call WriteToFile
        add esp, 8

        popfd
        popad

        push 0xFFFFFFFF
        push [callAddress]

        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_dumptext2()
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24 + 0x8]
        push eax
        lea eax, [esp + 0x24 + 0x4 + 0x4]
        push eax
        call WriteToFile
        add esp, 8

        popfd
        popad

        push 0xFFFFFFFF
        push[callAddress2]

        jmp dword ptr[returnAddress2]
    }
}

void __declspec(naked) HookFunction_replacechar(){
	__asm
	{
        call HOOK_GetGlyphOutlineA
		jmp dword ptr[returnAddress3]
	}
}

void __declspec(naked) HookFunction_getTextExtentExPoint() {
    __asm
    {
        call HOOK_getTextExtentExPointA
        jmp dword ptr[returnAddress4]
    }
}

void __declspec(naked) HookFunction_getTextExtentPoint32() {
    __asm
    {
        mov esi, Hook_getTextExtentPoint32A
        jmp dword ptr[returnAddress5]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");
	std::cout << "Base Address: " << std::hex << baseAddress << std::endl;

    originalFuncAddr = baseAddress + 288304;
    returnAddress = baseAddress + 288304 + 7;
    callAddress = baseAddress + 1200144;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr2 = baseAddress + 0x74880;
    returnAddress2 = baseAddress + 0x74880 + 7;
    callAddress2 = baseAddress + 0x12973b;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr2 = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_dumptext2 - originalFuncAddr2 - 5;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext()
{
	config.ReadConfig("hook.ini");
    fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    fontn = config.ReadString("FONT", "FONTNAME", "");
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        std::cout << "Load Font " << fontfn.c_str() << " Sucessful!" << std::endl;
    }
    else {
        std::cout << "Fail to Load Font!" << std::endl;
    }

	int i = 1;
	for (i = 0; i < 64; i++) {
		changedFont[i] = CreateFontA(-i, 0, 0, 0, 800, FALSE, FALSE, FALSE, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH, fontn.c_str());
	}
	
    DWORD oldProtect;

    DWORD baseAddress = (DWORD)GetModuleHandle(L"resident.dll");

    originalFuncAddr = baseAddress + 288304;
    returnAddress = baseAddress + 288304 + 7;
    callAddress = baseAddress + 1200144;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr2 = baseAddress + 0x74880;
    returnAddress2 = baseAddress + 0x74880 + 7;
    callAddress2 = baseAddress + 0x12973b;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr2 = 0xE9;  
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr2 - 5;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);

    /*originalFuncAddr3 = baseAddress + 0xc208c;
    returnAddress3 = baseAddress + 0xc2092;
    VirtualProtect((LPVOID)originalFuncAddr3, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr3 = 0xE9;
    *(DWORD*)(originalFuncAddr3 + 1) = (DWORD)HookFunction_replacechar - originalFuncAddr3 - 5;
    VirtualProtect((LPVOID)originalFuncAddr3, 5, oldProtect, &oldProtect);*/
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourTransactionCommit();

    originalFuncAddr4 = baseAddress + 0xc5253;
    returnAddress4 = baseAddress + 0xc5259;
    VirtualProtect((LPVOID)originalFuncAddr4, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr4 = 0xE9;  
    *(DWORD*)(originalFuncAddr4 + 1) = (DWORD)HookFunction_getTextExtentExPoint - originalFuncAddr4 - 5;
    VirtualProtect((LPVOID)originalFuncAddr4, 5, oldProtect, &oldProtect);

    originalFuncAddr5 = baseAddress + 0xc1e8f;
    returnAddress5 = baseAddress + 0xc1e95;
    VirtualProtect((LPVOID)originalFuncAddr5, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr5 = 0xE9;
    *(DWORD*)(originalFuncAddr5 + 1) = (DWORD)HookFunction_getTextExtentPoint32 - originalFuncAddr5 - 5;
    VirtualProtect((LPVOID)originalFuncAddr5, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext2() {//回想处理
    DWORD oldProtect;
    DWORD baseAddress = (DWORD)GetModuleHandle(L"sc00.dll");
	originalFuncAddr6 = baseAddress + 0x6181b8;
	returnAddress6 = originalFuncAddr6 + 5;
	callAddress6 = baseAddress + 0x61b2b0;  
    VirtualProtect((LPVOID)originalFuncAddr6, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr6 = 0xE9;
    *(DWORD*)(originalFuncAddr6 + 1) = (DWORD)HookFunction_replacetext3 - originalFuncAddr6 - 5;
    VirtualProtect((LPVOID)originalFuncAddr6, 5, oldProtect, &oldProtect);
}