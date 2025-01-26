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
#include <psapi.h>
#include <detours.h>
#pragma comment(lib, "detours.lib")

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD callAddress2;

rr::RConfig config;
std::string fontfn;
std::string fontn;
int cHeight;

typedef HFONT(WINAPI* pCREATEFONTA)(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName
    );
pCREATEFONTA TrueCreateFontA = CreateFontA;
HFONT WINAPI HookedCreateFontA(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName) {
    return TrueCreateFontA(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, fontn.c_str());
}

typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;
    if (modifiedLf.lfFaceName == nullptr) return TrueCreateFontIndirectA(&modifiedLf);
    if (modifiedLf.lfFaceName != nullptr) strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());
    return TrueCreateFontIndirectA(&modifiedLf);
}


const int maxbuffersize = 0x1000000;
WCHAR* strBuffer[maxbuffersize] = {};
int stridx = 0;

std::string removeNewlines(const std::string& input) {
    std::regex pattern("[\r\n]");
    return std::regex_replace(input, pattern, "");
}

std::map<std::wstring, int> readKeyValuePairsFromFile(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::wstring, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();
    
    std::string transData = buffer.str();
    std::string k = "alyce20250113";
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
            std::string value = line.substr(equalPos + 3);
			std::wstring value_w = sjisStringToWString(value);
			std::wstring key_w = sjisStringToWString(key);
            strBuffer[stridx] = new WCHAR[wcslen(value_w.c_str()) + 1];
            wcscpy_s(strBuffer[stridx], wcslen(value_w.c_str()) + 1, value_w.c_str());
            transMap[key_w] = stridx;
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
    std::string k = "alyce20250113";
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

std::map<std::wstring, int> replacementMap = readKeyValuePairsFromFile("data1.bin");

typedef DWORD(WINAPI* pGetGlyphOutlineA)(
	HDC hdc,
	UINT uChar,
	UINT uFormat,
	LPGLYPHMETRICS lpgm,
	DWORD cbBuffer,
	LPVOID lpvBuffer,
	const MAT2* lpmat2
	);

pGetGlyphOutlineA TrueGetGlyphOutlineA;

DWORD WINAPI HOOK_GetGlyphOutlineA(HDC hdc, UINT uChar, UINT uFormat, LPGLYPHMETRICS lpgm, DWORD cbBuffer, LPVOID lpvBuffer, const MAT2* lpmat2)
{
    char bytes[3];
    UINT t = uChar;
    bytes[0] = static_cast<char>((t >> 8) & 0xFF);
    bytes[1] = static_cast<char>(t & 0xFF);
    bytes[2] = '\0';
    if (bytes[0] == '\x00') {
        DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        return res;
    }

    std::string str(bytes);
    std::wstring wstr = sjisStringToWString(str);
    if (charReplaceMap.find(wstr) != charReplaceMap.end()) {
        wstr = charReplaceMap[wstr];
        uChar = static_cast<UINT>(wstr.c_str()[0]);
        DWORD res = GetGlyphOutlineW(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        return res;
    }
    DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
    return res;
}

typedef HWND(WINAPI* pCreateWindowExA)(
    DWORD     dwExStyle,
    LPCSTR    lpClassName,
    LPCSTR    lpWindowName,
    DWORD     dwStyle,
    int       X,
    int       Y,
    int       nWidth,
    int       nHeight,
    HWND      hWndParent,
    HMENU     hMenu,
    HINSTANCE hInstance,
    LPVOID    lpParam
    );
pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;

HWND WINAPI HOOKEDCreateWindowExA(
    DWORD     dwExStyle,
    LPCSTR    lpClassName,
    LPCSTR    lpWindowName,
    DWORD     dwStyle,
    int       X,
    int       Y,
    int       nWidth,
    int       nHeight,
    HWND      hWndParent,
    HMENU     hMenu,
    HINSTANCE hInstance,
    LPVOID    lpParam
) {
    printf("HOOK CreateWindowExA sucess!\n\n");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-5-sonnet");
    std::string WindowName_n = ANSIToANSI(lpWindowName, 932, 936) + " " + modeltype + "»ú·­ by ALyCE/jyxjyx1234";
    WindowName_n = ANSIToANSI(WindowName_n.c_str(), 936, GetACP());
    char newWindowName[200];
    strcpy_s(newWindowName, 200, WindowName_n.c_str());

    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        newWindowName,
        dwStyle,
        X,
        Y,
        nWidth,
        nHeight,
        hWndParent,
        hMenu,
        hInstance,
        lpParam
    );
}

void ChangeText(WCHAR** text)
{
    if (*text == nullptr) return;
    std::wstring str(*text);
    auto it = replacementMap.find(str);
    if (it != replacementMap.end())
    {
		int transidx = it->second;
		*text = strBuffer[transidx];
	}
}

void ChangeTextEx(int* length2, int* length3, int* length4, int* length, WCHAR** text)
{
	if (*text == nullptr) return;
	std::wstring str(*text);
	auto it = replacementMap.find(str);
	if (it != replacementMap.end())
	{
		int transidx = it->second;
		*text = strBuffer[transidx];
		int l = wcslen(*text) + 1;
		*length = l / 2;//Ô­ecx
        *length2 = l * 2;//Ô­esp
        *length3 = l * 2;
        *length4 = l * 2; 
	}
}

void __declspec(naked) HookFunction_replacetext()
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

        call callAddress

        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
    __asm
    {
        shr ecx, 2
        pushad
        pushfd

        lea eax, [esp + 0x8]
        push eax
        lea eax, [esp + 0x1c + 0x4]
        push eax
        lea eax, [esp + 0x14 + 0x8]
        push eax
        lea eax, [esp + 0x18 + 0xc]
        push eax
        lea eax, [esp + 0x24 + 0x10]
        push eax
        call ChangeTextEx
        add esp, 0x14

        popfd
        popad

        rep movsd

        jmp dword ptr[returnAddress2]
    }
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
	
    DWORD oldProtect;


    originalFuncAddr = 0x410e1e;
    returnAddress = 0x410e1e + 5;
    callAddress = 0x405e30;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr2 = 0x41517f;
    returnAddress2 = 0x415184;
    callAddress2 = 0x465ac4;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr2 = 0xE9;  
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr2 - 5;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);

    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);
    DetourTransactionCommit();
}

