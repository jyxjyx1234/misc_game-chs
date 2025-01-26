#include "textReplacer.h"
#include "text_process.h"

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress; 
DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD callAddress2;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

char* strBuffer[maxbuffersize] = {};

std::string enc = "Tiara";

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
std::map<std::wstring, std::wstring> charReplaceMap = readReplaceMap("data2.bin", enc);

pGetGlyphOutlineA TrueGetGlyphOutlineA = GetGlyphOutlineA;
pTextOutA TrueTextOutA = TextOutA;

std::string sub_ruby(const std::string input) {
    std::regex pattern("<([^|]+)\|[^>]+>");
    return std::regex_replace(input, pattern, "$1");
}

std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, int> transMap;
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

    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = sub_ruby(line.substr(0, equalPos));
            std::string value = line.substr(equalPos + 3);
            strBuffer[stridx] = new char[strlen(value.c_str()) + 4];
			memset(strBuffer[stridx], 0, strlen(value.c_str()) + 4);
            strcpy_s(strBuffer[stridx], strlen(value.c_str()) + 4, value.c_str());
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    return transMap;
}

psetWindowTextA TrueSetWindowTextA = SetWindowTextA;
BOOL WINAPI HookedSetWindowTextA(HWND hWnd, LPCSTR lpString) {
	std::string oriName(lpString);
	if (oriName == "Tiara") {
		LPCWSTR newName = L"Tiara Claude-3.5-sonnet机翻 by ALyCE/jyxjyx1234";
        return SetWindowTextW(hWnd, newName);
	}
	return TrueSetWindowTextA(hWnd, lpString);
}

pCreateFontIndirectA TrueCreateFontIndirectA = CreateFontIndirectA;
HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf){
    LOGFONTA modifiedLf = *lplf;
    if (modifiedLf.lfFaceName != nullptr) strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, fontn.c_str());
	return TrueCreateFontIndirectA(&modifiedLf);
}


void replace_text(const char** text, int* length) {//人名
    if (*text == nullptr) return;
	auto it = replacementMap.find(sub_ruby(*text));
	if (it != replacementMap.end()) {
		int idx = it->second;
		*text = strBuffer[idx];
        *length = strlen(*text);
	}
	else {
		return;
	}
}

void replace_text2(const char** text) {//文本
	if (*text == nullptr) return;
    auto it = replacementMap.find(sub_ruby(*text));
    if (it != replacementMap.end()) {
        int idx = it->second;
        *text = strBuffer[idx];
    }
    else {
        return;
    }
}


void __declspec(naked) HookFunction_replacetext()//人名 
{
    __asm
    {
        pushfd
		pushad

        lea eax, [esp + 0x1c] // eax = length (not \0)
        push eax
		lea eax, [esp + 4] // edi = *text
		push eax
		call replace_text
		add esp, 8

        popad
        popfd

        push eax 
        push edi
        add ecx, 8

        jmp returnAddress
    }
}

void __declspec(naked) HookFunction_replacetext2()//文本
{
    __asm
    {
        pushfd
        pushad

        lea eax, [esp + 0x1c]
        push eax
        call replace_text2
		add esp, 4

        popad
        popfd

        push eax
        mov ecx, edi
        call edx

        jmp returnAddress2
    }
}

pLoadLibraryA TrueLoadLibraryA = LoadLibraryA;
HMODULE WINAPI HookedLoadLibraryA(LPCSTR lpLibFileName) {
    HMODULE hModule = TrueLoadLibraryA(lpLibFileName);
    if (lpLibFileName && strstr(lpLibFileName, "WINMM.dll") != nullptr) {
        InstallHook_replacetext();
    }
    return hModule;
}

void InstallHook_by_loadlib() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueLoadLibraryA, HookedLoadLibraryA);
    DetourTransactionCommit();
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

    //普通文本
    DWORD oldProtect;

    // name
    originalFuncAddr = 0x0043DE33;
    returnAddress = 0x0043DE38;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    originalFuncAddr2 = 0x0046C4E7;
    returnAddress2 = 0x0046C4EC;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr2 = 0xE9;
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr2 - 5;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);
	//MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);

    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourAttach(&(PVOID&)TrueSetWindowTextA, HookedSetWindowTextA);
    DetourTransactionCommit();
}

