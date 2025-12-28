#include <Windows.h>
#include "detours.h"
#include "hook_LoadLib.h"
#include "text_process.h"
#include "readconfig.h"
#include <string>
#include <algorithm>
#pragma comment( lib, "detours.lib")


typedef HMODULE(WINAPI* LoadLibraryA_p)(LPCSTR lpLibFileName);
LoadLibraryA_p OriginalLoadLibraryA = LoadLibraryA;

HMODULE WINAPI HookedLoadLibraryA(LPCSTR lpLibFileName) {  
   HMODULE hModule = OriginalLoadLibraryA(lpLibFileName);  
   std::string moduleName = lpLibFileName ? lpLibFileName : "";  
   std::transform(moduleName.begin(), moduleName.end(), moduleName.begin(), ::tolower);
   if (strstr(moduleName.c_str(), "budfile.x32") != NULL) {
       //MessageBox(NULL, L"正在安装文本替换补丁，请稍候...", L"提示", MB_OK | MB_ICONINFORMATION);
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
