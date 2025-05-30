#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "text_process.h"
#pragma comment( lib, "detours.lib")


typedef HMODULE(WINAPI* LoadLibraryExA_p)(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);
LoadLibraryExA_p OriginalLoadLibraryExA = LoadLibraryExA;

HMODULE WINAPI HookedLoadLibraryExA(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags) {
    HMODULE hModule = OriginalLoadLibraryExA(lpLibFileName, hFile, dwFlags);
    if (lpLibFileName && strstr(lpLibFileName, "vm60.dll") != nullptr ){
        printf("vm60.dll HOOKED!");
        InstallHook_replacetext();
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
