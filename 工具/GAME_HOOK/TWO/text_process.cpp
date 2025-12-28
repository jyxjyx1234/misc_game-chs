#include "textReplacer.h"
#include "HookTitle.h"
#include "text_process.h"

DWORD originalFuncAddr;
DWORD callAddress;
DWORD returnAddress;

char* textBuffer = (char*)0x0049FBC0;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

char* strBuffer[maxbuffersize] = {};

std::string enc = "alyce20250130";

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);

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

void replace_text() {//普通文本\选项文本
	auto it = replacementMap.find(std::string(textBuffer, 0, 9));
	if (it != replacementMap.end()) {
		int idx = it->second;
		strcpy_s(textBuffer, strlen(strBuffer[idx]) + 1, strBuffer[idx]);
	}
	else {
		printf("Not Found\n");
		return;
	}
}

void __declspec(naked) HookFunction_replacetext1()//普通文本
{
    __asm
    {
        pushad
        pushfd

        call replace_text

        popfd
        popad

        call callAddress
     
        jmp dword ptr[returnAddress]
    }
}

void InstallHook_replacetext()
{
    changeWindowCfg.isCheckOri = false;
	changeWindowCfg.oriWindowName = "兄妹～ふたり～";
    changeWindowCfg.modeltype = "Deepseek-R1";

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
    originalFuncAddr = 0x0040D0fb;
    returnAddress = originalFuncAddr + 5;
    callAddress = 0x423504;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

	//MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);
    newFontName = L"Simsun";
    //newCharset = 936;
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
    DetourTransactionCommit();

	hookTitle_main();
}


