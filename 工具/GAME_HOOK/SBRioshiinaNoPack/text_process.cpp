#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>
#include <filesystem>

#define DUMP_MODE 1
#define REPLACE_MODE 2
int mode;
int type;
int retAddAddr = 5;

DWORD originalFuncAddr;


DWORD searchHookAddr() {
    byte pattern1[] = {// for 2.48 //0X00为通配符
        0x8B, 0x4D, 0xD0, 0x8B, 0x75, 0x00, 0x8B, 0xD1, 0xC1, 0xE9, 0x02, 0x8B, 0xF8, 0x8B, 0x45, 0x00, 0xF3, 0xA5, 0x8B, 0xCA, 0x83, 0xE1, 0x03, 0x50, 0xF3, 0xA4
    };
    byte pattern2[] = {
        0x8B, 0xD1, 0xC1, 0xE9, 0x02, 0x8B, 0xF8, 0x8B, 0xF3, 0xF3, 0xA5, 0x8B, 0xCA, 0x83, 0xE1, 0x03, 0x53, 0xF3, 0xA4
    };
    byte* pattern;
    int offset = 0;
    DWORD patternSize;
    if (type == 1) {
        pattern = pattern1;
        offset = 8;
        retAddAddr = 5;
        patternSize = sizeof(pattern1);
    }
    else if (type == 2) {
        pattern = pattern2;
        offset = 2;
        retAddAddr = 7;
        patternSize = sizeof(pattern2);
    }
    else {
        return 0;
    }

    MEMORY_BASIC_INFORMATION mbi;
    DWORD startAddr = 0x00400000;
    DWORD endAddr = 0x01000000;
    for (DWORD addr = startAddr; addr < endAddr; addr += mbi.RegionSize) {
        if (VirtualQuery((LPCVOID)addr, &mbi, sizeof(mbi)) == 0) {
            break;
        }
        if (mbi.State != MEM_COMMIT || mbi.Protect == PAGE_NOACCESS) {
            continue;
        }
        for (DWORD i = (DWORD)mbi.BaseAddress; i < (DWORD)mbi.BaseAddress + mbi.RegionSize - patternSize; i++) {
            //if (memcmp((void*)i, pattern, patternSize) == 0) {
            //    printf("Found at %x\n", i + offset);
            //    return i + offset;
            //}
            bool match = true;
            for (DWORD j = 0; j < patternSize; j++) {
                if (pattern[j] != 0x00 && pattern[j] != *((byte*)(i + j))) {
                    match = false;
                    break;
                }
            }
			if (match) {
				printf("Found at %x\n", i + offset);
				return i + offset;
			}
        }
    }
    return 0;
}


DWORD returnAddress;
DWORD callAddress;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

std::string enc = "SBRioshiina";

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
    return TrueCreateFontA(cHeight, cWidth, cEscapement, cOrientation, 900, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, fontn.c_str());
}

std::string fileContent;
void replace_file(const char** filename, int* length, int* ecx, char** text) {
    std::string fn(*filename);
	int pos = fn.find_last_of("\\");
	std::string name = fn.substr(pos + 1);
	if (mode == DUMP_MODE) {
		printf("Dumping %s\n", name.c_str());
        std::filesystem::create_directories("output");
		std::string new_filename = "output\\" + name;
		std::ofstream outFile = std::ofstream(new_filename, std::ios::binary);
        fileContent = std::string(*text, *length);
		outFile << fileContent.c_str();
		outFile.close();
	}
	else if (mode == REPLACE_MODE) {
		printf("Replacing %s\n", name.c_str());
        std::filesystem::create_directories("trans");
        std::string new_filename = "trans\\" + name;
        std::ifstream inFile(new_filename, std::ios::binary);
        if (!inFile) {
            return;
        }
        std::stringstream buffer;
        buffer << inFile.rdbuf();
        std::string transData = buffer.str();
#ifndef Release_for_others
        for (size_t i = 0; i < transData.size(); ++i) {
            transData[i] = transData[i] ^ enc[i % enc.size()];
        }
		printf("transData:\n\n %s\n", transData.c_str());
#endif
        fileContent = transData;
		*text = (char*)fileContent.c_str();
		*length = fileContent.size();
		*ecx = fileContent.size() / 4;
	}
}



void __declspec(naked) HookFunction_replaceScr1()
{
    __asm
    {
        shr ecx, 2
        mov edi, eax
        pushad
        pushfd

        lea eax, [esp + 0x8] //esi
        push eax
        lea eax, [esp + 0x1c + 0x4] //ecx
        push eax
        lea eax, [esp + 0x18 + 0x8] //edx
        push eax
        sub ebp, 8
        push ebp
        call replace_file
        add esp, 0x10

        popfd
        popad
     
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replaceScr2()
{
    __asm
    {
        shr ecx, 2
        mov edi, eax
        mov esi, ebx
        sub esp, 8

        pushad
		pushfd

        lea eax, [esp + 0x8] //esi
        push eax
        lea eax, [esp + 0x1c + 0x4] //ecx
        push eax
        lea eax, [esp + 0x18 + 0x8] //edx
        push eax
        mov eax, esp
        lea eax, [esp + 0x24 + 0xc]
		push eax
        call replace_file
        add esp, 0x10

        popfd
        popad

		add esp, 8

        jmp dword ptr[returnAddress]
    }
}


typedef HMODULE(WINAPI* LoadLibraryExA_p)(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);
LoadLibraryExA_p OriginalLoadLibraryExA = LoadLibraryExA;

BOOL isHooked = false;

HMODULE WINAPI HookedLoadLibraryExA(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags) {
    HMODULE hModule = OriginalLoadLibraryExA(lpLibFileName, hFile, dwFlags);
    if (isHooked) {
		return hModule;
    }
	originalFuncAddr = searchHookAddr();
	if (originalFuncAddr != 0) {
		InstallHook_replacetext();
		isHooked = true;
	}
    return hModule;
}

BOOL HOOK_LL_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)OriginalLoadLibraryExA, HookedLoadLibraryExA);
    DetourTransactionCommit();
    return 0;
}

void InstallHook_replacetext()
{
    //普通文本
    DWORD oldProtect;
    returnAddress = originalFuncAddr + retAddAddr;

    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    if (type == 1) {
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceScr1 - originalFuncAddr - 5;
	}
	else if (type == 2) {
		*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceScr2 - originalFuncAddr - 5;
	}
    //else if (type == 3) {
    //    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceScr2 - originalFuncAddr - 5;
    //}
    else return;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
	//MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);

    if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		MessageBox(NULL, L"Hooked", L"Hooked", MB_OK);
    }
}

void InstallHook_replacetext_LL() {
#ifndef Release_for_others
    changeWindowCfg.isCheckOri = false;
    hookTitle_main();
#endif
    config.ReadConfig("hook.ini");
    fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    fontn = config.ReadString("FONT", "FONTNAME", "");
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        std::cout << "Load Font " << fontfn.c_str() << " Sucessful!" << std::endl;
    }
    else {
        std::cout << "Fail to Load Font!" << std::endl;
    }

    type = config.ReadInt("GLOBAL", "TYPE", 1);
    mode = config.ReadInt("GLOBAL", "MODE", 2);

    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
#ifndef Release_for_others
    if (mode == REPLACE_MODE) {
        charReplaceMap = readReplaceMap("trans\\data2.bin", enc);
		printf("charReplaceMap size: %d\n", charReplaceMap.size());
        DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    }
#endif // !Release_for_others
    DetourTransactionCommit();
    
    if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
        MessageBox(NULL, L"Search!", L"Hooked", MB_OK);
    }
    originalFuncAddr = searchHookAddr();
    if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
        MessageBox(NULL, L"SearchEnd!", L"Hooked", MB_OK);
    }
    if (originalFuncAddr != 0) {
        InstallHook_replacetext();
        isHooked = true;
    }
    else {
		printf("Failed to find hook address, try to hook LoadLibraryExA\n");
        DetourTransactionBegin();
        DetourUpdateThread(GetCurrentThread());
	    DetourAttach(&(PVOID&)OriginalLoadLibraryExA, HookedLoadLibraryExA);
	    DetourTransactionCommit();
    }
}

void cleanUp() {
}

