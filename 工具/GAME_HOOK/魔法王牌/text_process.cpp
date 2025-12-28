#include "textReplacer.h"
#include "text_process.h"
#include "hook_def.h"
#include "VFS.h"
#include <regex>
#include "HookTitle.h"

#define _DWORD DWORD

INIT_PACK_INFO("SJS_CHS.cpk", "SJS")

void CreateSorceryJokersRegistryEntries()
{
    HKEY hKey = nullptr;
    LSTATUS result = 0;
    bool success = true;
    std::wstring regpath;
	if (GetACP() == 936) {
		regpath = L"SOFTWARE\\3rdEye\\僜乕僒儕乕僕儑乕僇乕僘";
	}
	else {
		regpath = L"SOFTWARE\\3rdEye\\ソーサリージョーカーズ";
	}
    result = RegCreateKeyExW(
        HKEY_CURRENT_USER,
        regpath.c_str(),
        0,
        nullptr,
        REG_OPTION_NON_VOLATILE,
        KEY_WRITE,
        nullptr,
        &hKey,
        nullptr
    );
    BYTE instModeData[] = { 0x00, 0x00, 0x00, 0x00 };
    result = RegSetValueExW(
        hKey,
        L"InstMode",
        0,
        REG_BINARY,
        instModeData,
        sizeof(instModeData)
    );
    std::wstring instPath = std::filesystem::current_path().wstring();
    result = RegSetValueExW(
        hKey,
        L"InstPath",
        0,
        REG_SZ,
        reinterpret_cast<const BYTE*>(instPath.c_str()),
        (instPath.length() + 1) * sizeof(wchar_t)
    );
    std::wstring dataPath = std::filesystem::current_path().wstring() + L"\\savedata\\";
    result = RegSetValueExW(
        hKey,
        L"DataPath",
        0,
        REG_SZ,
        reinterpret_cast<const BYTE*>(dataPath.c_str()),
        (dataPath.length() + 1) * sizeof(wchar_t)
    );
    if (result != ERROR_SUCCESS) {
        success = false;
    }
    RegCloseKey(hKey);
}

int retAddAddr = 5;

DWORD originalFuncAddr;

std::string process_scr(std::string input) {
    std::vector<std::string> lines;
    bool lastLineWasEmpty = false;
    size_t start = 0;
    size_t end = 0;
    while (end < input.size()) {
        if (input[end] == '\r') {
            if (end + 1 < input.size() && input[end + 1] == '\n') {
                lines.push_back(input.substr(start, end - start));
                start = end + 2;
                end++;
            }
            else {
                lines.push_back(input.substr(start, end - start));
                start = end + 1;
            }
        }
        else if (input[end] == '\n') {
            lines.push_back(input.substr(start, end - start));
            start = end + 1;
        }
        end++;
    }
    if (start < input.size()) {
        lines.push_back(input.substr(start));
    }
    std::vector<std::string> processedLines;
    for (const auto& line : lines) {
        auto firstNonSpace = line.find_first_not_of(" \t");
        if (firstNonSpace != std::string::npos && line[firstNonSpace] == ';') {
            continue;
        }
        bool isEmpty = (line.find_first_not_of(" \t\r\n") == std::string::npos);

        if (isEmpty) {
            if (lastLineWasEmpty) {
                continue;
            }
            lastLineWasEmpty = true;
        }
        else {
            lastLineWasEmpty = false;
        }

        processedLines.push_back(line);
    }
    std::string result;
    for (size_t i = 0; i < processedLines.size(); ++i) {
        if (i != 0) {
            result += "\n";
        }
        result += processedLines[i];
    }
    return result;
}

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
    pattern = pattern2;
    offset = 2;
    retAddAddr = 7;
    patternSize = sizeof(pattern2);

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

std::string fileContent;
void replace_file(const char** filename, int* length, int* ecx, char** text) {
    std::string fn(*filename);
    int pos = fn.find_last_of("\\");
    std::string name = fn.substr(pos + 1);
    if (!CustomPack::isInPack(packname, name)) {
        printf("Unable to find file %s\n", name.c_str());
        return;
    }
    std::string fileContent = CustomPack::getFile(packname, enc, name);
    fileContent = process_scr(fileContent);
    *text = (char*)fileContent.c_str();
    *length = fileContent.size();
    *ecx = fileContent.size() / 4;
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
    DWORD oldProtect;
    returnAddress = originalFuncAddr + retAddAddr;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replaceScr2 - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
}

void InstallHook_replacetext_LL() {
    CreateSorceryJokersRegistryEntries();
    InstallVFS(packname, enc);
    changeWindowCfg.isCheckOri = true;
    changeWindowCfg.oriWindowName = "ソーサリージョーカーズ";
    changeWindowCfg.newWindowName = L"魔法王牌";
    hookTitle_main();

    newCharset = 134;
    newFontName = L"黑体";
    installFontHook_main(1, 1, 1, 0);
	//installEnumFontHook_main();
    originalFuncAddr = searchHookAddr();
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