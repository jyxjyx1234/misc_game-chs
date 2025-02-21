#include "textReplacer.h"
#include "text_process.h"
#include "HookTitle.h"
#include <regex>

//貧は僕らの福の神1.01a(2.49)
//00421167 | 83C9 FF| or ecx, FFFFFFFF |
//0042116A | 8BF8 | mov edi, eax |
//0042116C | 33C0 | xor eax, eax |
//0042116E | F2:AE | repne scasb |
//00421170 | F7D1 | not ecx |
//00421172 | 2BF9 | sub edi, ecx |
//00421174 | 8BC1 | mov eax, ecx |
//00421176 | 8BF7 | mov esi, edi |
//00421178 | C1E9 02 | shr ecx, 2 |
//0042117B | 8BFB | mov edi, ebx |
//0042117D | F3:A5 | rep movsd |
//0042117F | 8BC8 | mov ecx, eax |
//00421181 | 83E1 03 | and ecx, 3 |
//00421184 | F3:A4 | rep movsb |
//00421186 | 5F | pop edi |
//00421187 | 5E | pop esi |
//00421188 | 33C0 | xor eax, eax |
//0042118A | 5B | pop ebx |
//83C9FF8BF833C0F2AEF7D12BF98BC18BF7C1E9028BFBF3A58BC883E103F3A45F5E33C05B

#define DUMP_MODE 1
#define REPLACE_MODE 2
int mode;
int type;

DWORD originalFuncAddr;

DWORD searchHookAddr() {
    byte pattern1[] = {// for 2.49、2.50
    0x83, 0xc9, 0xff, 0x8b, 0xf8, 0x33, 0xc0, 0xf2, 0xae, 0xf7, 0xd1, 0x2b, 0xf9, 0x8b, 0xc1, 0x8B, 0xF7, 0xc1, 0xe9, 0x02, 0x8b, 0xfb, 0xf3, 0xa5, 0x8b, 0xc8, 0x83, 0xe1, 0x03, 0xf3, 0xa4, 0x5f, 0x5e, 0x33, 0xc0, 0x5b
    };

    byte pattern2[] = {// for some special 2.49、2.50
    0x83 ,0xC9 ,0xFF ,0x8B ,0xF8 ,0x33 ,0xC0 ,0xF2 ,0xAE ,0xF7 ,0xD1 ,0x2B ,0xF9, 0x8B ,0xD1 ,0x83 ,0xC9 ,0xFF ,0x8B ,0xF7 ,0x8B ,0xFB ,0xF2 ,0xAE ,0x8B ,0xCA ,0xC1 ,0xE9 ,0x02 ,0x4F ,0xF3 ,0xA5 ,0x8B ,0xCA ,0x83 ,0xE1 ,0x03 ,0xF3 ,0xA4 ,0x5F ,0x5E ,0x5B
    };

    byte pattern3[] = { // for 2.48
        0x83, 0xC9, 0xFF, 0x8B, 0xF8, 0x33, 0xC0, 0xF2, 0xAE, 0xF7, 0xD1, 0x2B, 0xF9, 0x8B, 0xD1, 0x8B, 0xF7, 0x8B, 0x7D, 0xF8, 0xC1, 0xE9, 0x02, 0xF3, 0xA5, 0x8B, 0xCA, 0x83, 0xE1, 0x03, 0xF3, 0xA4
    };
    byte* pattern;
	int offset = 0;
	DWORD patternSize;
    if (type == 2) {
        pattern = pattern2;
        offset = 24;
		patternSize = sizeof(pattern2);
    }
    else if (type == 3) {
        pattern = pattern3;
        offset = 20;
        patternSize = sizeof(pattern3);
    }
    else {
        pattern = pattern1;
        offset = 17;
		patternSize = sizeof(pattern1);
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
            if (memcmp((void*)i, pattern, patternSize) == 0) {
				printf("Found at %x\n", i + offset);
                return i + offset;
            }
        }
    }
    return 0;
}


std::string remove_tag(const std::string text) {
    std::string result;
    std::regex patten_ruby("_t.*/");
    std::regex patten("_[0-9a-zA-Z,]*");
	result = std::regex_replace(text, patten_ruby, "");
	result = std::regex_replace(result, patten, "");
    return result;
}

DWORD returnAddress;
DWORD callAddress;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

char* strBuffer[maxbuffersize] = {};

std::string enc = "SBRioshiina";

std::map<std::string, int> replacementMap;

struct multiLineTrans {
	int lineNum;
	int idx;
};

std::map<std::string, multiLineTrans> replacementMapMultyLine;
std::map<std::string, multiLineTrans> readKeyValuePairsFromFileMultyLine(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, multiLineTrans> transMap;
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
            size_t lineEnd = key.find("_r");
			std::string firstline = line.substr(0, lineEnd + 2);
            strBuffer[stridx] = new char[strlen(value.c_str()) + 4];
			memset(strBuffer[stridx], 0, strlen(value.c_str()) + 4);
            strcpy_s(strBuffer[stridx], strlen(value.c_str()) + 4, value.c_str());
            int lineNum = 0;
			while (lineEnd != std::wstring::npos) {
				lineEnd = key.find("_r", lineEnd + 2);
				lineNum++;
			}
			multiLineTrans mlt;
			mlt.idx = stridx;
			mlt.lineNum = lineNum;
            transMap[firstline] = mlt;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    return transMap;
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
            std::string key = remove_tag(line.substr(0, equalPos));
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
    return TrueCreateFontA(cHeight, cWidth, cEscapement, cOrientation, 900, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, fontn.c_str());
}

std::ofstream outFile;


void replace_text(int* eax, int* ecx, char** text) {
	if (*text == nullptr) {
		return;
	}
	printf("%s\n", *text);
    if (mode == REPLACE_MODE) {
        auto it = replacementMap.find(remove_tag(*text));
        if (it != replacementMap.end()) {
            int idx = it->second;
            strcpy_s(*text, strlen(strBuffer[idx]) + 1, strBuffer[idx]);
            *ecx = (strlen(*text) + 1) / 4;
            *eax = strlen(*text) + 1;
        }
        else {
            return;
        }
    }
    else if (mode == DUMP_MODE) {
        if (outFile.is_open()) {
            outFile << *text << std::endl;
        }
    }
}

int lineBuffer = 0;
int idxBuffer = 0;
int posBuffer = 0;
void replace_text2(int* edx, int* ecx, char** text) {
	if (mode == REPLACE_MODE) {
		printf("%s\n", *text);
		printf("lineBuffer: %d\n", lineBuffer);
        if (lineBuffer == 0) {
			if (replacementMapMultyLine.find(*text) != replacementMapMultyLine.end()) {
				multiLineTrans mlt = replacementMapMultyLine[*text];
				printf("text: %s\nlineNum: %d\n\n", strBuffer[mlt.idx], mlt.lineNum);
				lineBuffer = mlt.lineNum - 1;
                idxBuffer = mlt.idx;
				posBuffer = 0;
				if (lineBuffer == 0) {
					strcpy_s(*text, strlen(strBuffer[idxBuffer]) + 1, strBuffer[idxBuffer]);
					*ecx = (strlen(*text) + 1) / 4;
					*edx = strlen(*text) + 1;
				}
				else {
                    size_t lineEnd;
                    lineEnd = std::string(strBuffer[idxBuffer]).find("_r");
					std::string line = std::string(strBuffer[idxBuffer]).substr(posBuffer, lineEnd + 2);
					strcpy_s(*text, strlen(line.c_str()) + 1, line.c_str());
					*ecx = (strlen(*text) + 1) / 4;
					*edx = strlen(*text) + 1;
					posBuffer += lineEnd + 2;
				}
				return;
			}
            else {
                return;
            }
		}
        else {
            if (lineBuffer == 1) {
                std::string line = std::string(strBuffer[idxBuffer] + posBuffer);
				strcpy_s(*text, strlen(line.c_str()) + 1, line.c_str());
				*ecx = (strlen(*text) + 1) / 4;
				*edx = strlen(*text) + 1;
				lineBuffer--;
            }
            else {
                size_t lineEnd;
                lineEnd = std::string(strBuffer[idxBuffer]).find("_r", posBuffer);
                std::string line = std::string(strBuffer[idxBuffer]).substr(posBuffer, lineEnd - posBuffer + 2);
				printf("line: %s\n", line.c_str());
                strcpy_s(*text, strlen(line.c_str()) + 1, line.c_str());
                *ecx = (strlen(*text) + 1) / 4;
                *edx = strlen(*text) + 1;
                posBuffer = lineEnd + 2;
                lineBuffer--;
            }
       
			return;
        }
	}
}


void __declspec(naked) HookFunction_replacetext1()
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
        lea eax, [esp + 0x20 + 0x8] //eax
        push eax
        call replace_text
        add esp, 0xc

        popfd
        popad
     
        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
    __asm
    {
        mov ecx, edx
        shr ecx, 2

        pushad
        pushfd

        lea eax, [esp + 0x8] //esi
        push eax
        lea eax, [esp + 0x1c + 0x4] //ecx
        push eax
        lea eax, [esp + 0x18 + 0x8] //edx
        push eax
        call replace_text2
        add esp, 0xc

        popfd
        popad

        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext3()
{
    __asm
    {
        shr ecx, 2

        pushad
        pushfd

        lea eax, [esp + 0x8] //esi
        push eax
        lea eax, [esp + 0x1c + 0x4] //ecx
        push eax
        lea eax, [esp + 0x18 + 0x8] //edx
        push eax
        call replace_text
        add esp, 0xc

        popfd
        popad

        rep movsd

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
    returnAddress = originalFuncAddr + 5;

    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    if (type == 1) {
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
    }
	if (type == 2) {
		*(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr - 5;
	}
    if (type == 3) {
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext3 - originalFuncAddr - 5;
    }
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
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
    DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    DetourTransactionCommit();

    type = config.ReadInt("GLOBAL", "TYPE", 1);
    mode = config.ReadInt("GLOBAL", "MODE", 2);
    if (mode == DUMP_MODE) {
        outFile = std::ofstream("output.txt", std::ios::app);
    }
    else if (mode == REPLACE_MODE) {
        charReplaceMap = readReplaceMap("data2.bin", enc);
        if (type == 1 || type == 3) {
            replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
        }
		else if (type == 2) {
			replacementMapMultyLine = readKeyValuePairsFromFileMultyLine("data1.bin", enc);
		}
    }
    else {
		return;
    }
    originalFuncAddr = searchHookAddr();
    if (originalFuncAddr != 0) {
        InstallHook_replacetext();
        isHooked = true;
    }
    else {
        DetourTransactionBegin();
        DetourUpdateThread(GetCurrentThread());
	    DetourAttach(&(PVOID&)OriginalLoadLibraryExA, HookedLoadLibraryExA);
	    DetourTransactionCommit();
    }
}

void cleanUp() {
	if (outFile.is_open()) {
		outFile.close();
	}
	for (int i = 0; i < stridx; i++) {
		delete[] strBuffer[i];
	}
}

