#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "text_process.h"
#include <iostream>
#include "readconfig.h"


typedef HMODULE(WINAPI* LoadLibraryW_p)(LPCWSTR lpLibFileName);
LoadLibraryW_p OriginalLoadLibraryW = LoadLibraryW;

void text_process_install() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("TEXTPROCESS", "ENABLE", 0) == 1) {
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1) {
            InstallHook_replace_text();
		}
	}
}

#include <wchar.h>

// Replace strstr with wcsstr for wchar_t strings
HMODULE WINAPI HookedLoadLibraryW(LPCWSTR lpLibFileName) {
    HMODULE hModule = OriginalLoadLibraryW(lpLibFileName);
    if (lpLibFileName && wcsstr(lpLibFileName, L"GameAssembly.dll") != nullptr) {
		std::cout << "GameAssembly.dll loaded" << std::endl;
        text_process_install();
    }
    return hModule;
}

BOOL HOOK_LL_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)OriginalLoadLibraryW, HookedLoadLibraryW);
    DetourTransactionCommit();
    return 0;
}
