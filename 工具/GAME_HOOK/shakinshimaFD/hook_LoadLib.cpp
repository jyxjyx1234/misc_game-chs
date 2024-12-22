#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "process_text.h"
#include "readconfig.h"
#pragma comment( lib, "detours.lib")



//对 LoadLibrary进行hook
typedef HMODULE(WINAPI* LoadLibraryA_t)(LPCSTR lpLibFileName);
LoadLibraryA_t OriginalLoadLibraryA = LoadLibraryA;

HMODULE WINAPI HookedLoadLibraryA(LPCSTR lpLibFileName) {
    HMODULE hModule = OriginalLoadLibraryA(lpLibFileName);
    if (strstr(lpLibFileName, "Flash Asset.x32") != NULL) {
        rr::RConfig config;
        config.ReadConfig("hook.ini");
        if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1) {
            dump_text_main();
        }
        if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
            replace_text_main();
        }
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
