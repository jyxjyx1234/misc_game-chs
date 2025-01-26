#include "textReplacer.h"
#include "text_process.h"

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD returnAddress2;
DWORD callAddress2;
DWORD returnAddress3;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

char* strBuffer[maxbuffersize] = {};

std::string enc = "Mikan";

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
std::map<std::string, int> replacementMapEnc = readKeyValuePairsFromFile("data3.bin", enc);

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
            std::string key = line.substr(0, equalPos);
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
	std::string newWindowName = ANSIToANSI("蜜柑 DeepSeek-R1 机翻 by ALyCE / jyxjyx1234", 936, 932);
    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        newWindowName.c_str(),
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


void replace_text1(char** text) {//普通文本\选项文本
	auto it = replacementMap.find(*text);
	if (it != replacementMap.end()) {
		int idx = it->second;
		*text = strBuffer[idx];
	}
	else {
		return;
	}
}


void replace_text2(int len, char** text) {//普通文本\选项文本
    int i = 0;
	char* textForMatch = *text;
    //if ((char)*(textForMatch - 1) != '\x7f' && (char)*(textForMatch - 6) != '\x40') {
    //    i = 0x30;
    //    textForMatch = textForMatch - i;
    //}
    while ((char)*(textForMatch - 1) != '\x7f' && (char)*(textForMatch - 6) != '\x40') {
        i += 1;
        textForMatch = textForMatch - 0x1;
    }
    auto it = replacementMapEnc.find(textForMatch);
    if (it != replacementMapEnc.end()) {
		*text = strBuffer[it->second] + i;
    }
    else {
        return;
    }
}

void __declspec(naked) HookFunction_replacetext1()//普通文本
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24] //[esp]
        push eax
		call replace_text1
        add esp, 4

        popfd
        popad

        call callAddress
     
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext2()//选项文本
{
    __asm
    {
        pushad
        pushfd

        lea eax, [esp + 0x24 + 0x8] //[esp+8]
        push eax
        call replace_text1
        add esp, 4

        popfd
        popad

        call callAddress2

        jmp dword ptr[returnAddress2]
    }
}

void __declspec(naked) HookFunction_replacetext3()//backlog文本
{
    __asm
    {
        shr ecx, 2

        pushad
        pushfd

        //esi为文本指针， ebp为文本长度
        lea eax, [esp + 0x8]
        push eax
        push ebp
        call replace_text2
        add esp, 8

        popfd
        popad

        rep movsd

        jmp dword ptr[returnAddress3]
    }
}

void InstallHook_replacetext()
{
    charReplaceMap = readReplaceMap("data2.bin", enc);
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
    originalFuncAddr = 0x0040C477;
    returnAddress = 0x0040C477 + 5;
    callAddress = 0x404cf0;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //选项文本
    originalFuncAddr = 0x0040E114;
    returnAddress2 = 0x0040E114 + 5;
    callAddress2 = 0x40e770;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

    //backlog文本
    originalFuncAddr = 0x004084A6;
    returnAddress3 = 0x004084A6 + 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext3 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

	//MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);
    newFontName = L"Simsun";
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourTransactionCommit();
}

