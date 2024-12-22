#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "process_text.h"
#pragma comment( lib, "detours.lib")



//对 LoadLibrary进行hook
typedef HMODULE(WINAPI* LoadLibraryA_t)(LPCSTR lpLibFileName);
LoadLibraryA_t OriginalLoadLibraryA = LoadLibraryA;

HMODULE WINAPI HookedLoadLibraryA(LPCSTR lpLibFileName) {
    HMODULE hModule = OriginalLoadLibraryA(lpLibFileName);
    if (strstr(lpLibFileName, "Flash Asset.x32") != NULL) { 
        //dump_text_main();
        replace_text_main();
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
