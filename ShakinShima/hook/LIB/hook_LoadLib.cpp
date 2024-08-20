#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "text_process.h"
#include "readconfig.h"
#pragma comment( lib, "detours.lib")


typedef HMODULE(WINAPI* LoadLibraryA_p)(LPCSTR lpLibFileName);
LoadLibraryA_p OriginalLoadLibraryA = LoadLibraryA;

HMODULE WINAPI HookedLoadLibraryA(LPCSTR lpLibFileName) {
    //printf("Loading %s\n",lpLibFileName);
    HMODULE hModule = OriginalLoadLibraryA(lpLibFileName);
    if (lpLibFileName && strstr(lpLibFileName, "Text Asset.x32") != nullptr ){
        printf("text asset.x32 HOOKED!\n");
        InstallHook_replacetext();
    }
    return hModule;
}

BOOL HOOK_LL_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)OriginalLoadLibraryA, HookedLoadLibraryA);
    DetourTransactionCommit();
    return 0;
}
