#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "text_process.h"
#include "readconfig.h"
#pragma comment( lib, "detours.lib")



//对 LoadLibrary进行hook
typedef HMODULE(WINAPI* LoadLibraryExA_p)(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);
LoadLibraryExA_p OriginalLoadLibraryExA = LoadLibraryExA;

HMODULE WINAPI HookedLoadLibraryExW(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags) {
    HMODULE hModule = OriginalLoadLibraryExA(lpLibFileName, hFile, dwFlags);
    if (lpLibFileName && strstr(lpLibFileName, "resident.dll") != nullptr ){
    }
    return hModule;
}

BOOL HOOK_LL_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)OriginalLoadLibraryExA, HookedLoadLibraryExW);
    DetourTransactionCommit();
    return 0;
}
