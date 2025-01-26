#include "textReplacer.h"
#include "text_process.h"

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

char* strBuffer[maxbuffersize] = {};

std::string enc = "SBRioshiina";

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
std::map<std::wstring, std::wstring> charReplaceMap = readReplaceMap("data2.bin", enc);

pGetGlyphOutlineA TrueGetGlyphOutlineA = GetGlyphOutlineA;
pTextOutA TrueTextOutA = TextOutA;

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


pCreateFontA TrueCreateFontA = CreateFontA;
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


void replace_text(int* eax, int* ecx, const char** text) {
	auto it = replacementMap.find(*text);
	if (it != replacementMap.end()) {
		int idx = it->second;
		*text = strBuffer[idx];
		*ecx = (strlen(*text) + 1) / 4;
		*eax = strlen(*text) + 1;
	}
	else {
		return;
	}
}


void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        shr ecx, 0x02
        mov edi, ebx

        pushad
        pushfd

        lea eax, [esp + 0x8] //esi
        push eax
        lea eax, [esp + 0x1c + 0x4] //ecx
        push eax
        lea eax, [esp + 0x1c + 0x8] //eax
        push eax
        call replace_text
        add esp, 0xc

        popfd
        popad

        rep movsd
     
        jmp dword ptr[returnAddress]
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

    //ÆÕÍ¨ÎÄ±¾
    DWORD oldProtect;

    // For LOVECHA
    originalFuncAddr = 0x4219a8;
    returnAddress = 0x4219af;

    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
	//MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourTransactionCommit();
}

