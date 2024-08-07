#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "text_process.h"
#include "readconfig.h"
#pragma comment( lib, "detours.lib")


typedef HMODULE(WINAPI* LoadLibraryExA_p)(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);
LoadLibraryExA_p OriginalLoadLibraryExA = LoadLibraryExA;

HMODULE WINAPI HookedLoadLibraryExA(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags) {
    HMODULE hModule = OriginalLoadLibraryExA(lpLibFileName, hFile, dwFlags);
    if (lpLibFileName && strstr(lpLibFileName, "resident.dll") != nullptr ){
        printf("resident.dll HOOKED!");
        rr::RConfig config;
        config.ReadConfig("hook.ini");
        if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1) {
            InstallHook_dumptext();
        }
        if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
            InstallHook_replacetext();
        }
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
