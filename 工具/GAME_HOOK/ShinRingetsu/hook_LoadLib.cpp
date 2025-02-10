#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "process_text.h"
#include "readconfig.h"
#pragma comment( lib, "detours.lib")
#include "hookFont.h"



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
    if (strstr(lpLibFileName, "TextXtra.x32") != NULL) {
		//MessageBox(NULL, L"Hooked", L"Hooked", MB_OK);
        newFontName = L"Microsoft YaHei UI";
        installFontHook_main(0, 0, 1, 0);
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
