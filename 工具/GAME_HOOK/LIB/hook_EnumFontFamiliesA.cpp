#include <Windows.h>
#include "detours.h"
#include <fstream>
#include "readconfig.h"
#include "convert.h"
#pragma comment(lib, "detours.lib")
#include "hook_EnumFontFamiliesA.h"




static int (WINAPI *TrueEnumFontFamiliesA)(HDC hdc, LPCSTR lpLogfont, FONTENUMPROCA lpProc, LPARAM lParam) = EnumFontFamiliesA;
int WINAPI MyEnumFontFamiliesA(HDC hdc, LPCSTR lpLogfont, FONTENUMPROCA lpProc, LPARAM lParam) {
    rr::RConfig config;
    config.ReadConfig("hook.ini");

    if (config.ReadInt("FONT", "ChangeEnumFontFamiliesA", 0) == 1){
        printf("EnumFontFamiliesA hooked!\n");
        return TrueEnumFontFamiliesA(hdc, NULL, lpProc, lParam);}
    else
        return TrueEnumFontFamiliesA(hdc, lpLogfont, lpProc, lParam);
}

void hook_EnumFontFamiliesA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueEnumFontFamiliesA, MyEnumFontFamiliesA);

    DetourTransactionCommit();
}