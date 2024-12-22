#include <Windows.h>
#include "detours.h"
#include <fstream>
#include "readconfig.h"
#include "convert.h"
#pragma comment(lib, "detours.lib")
#include "hook_TEXTOUTA.h"
#include <iostream>
#include <string>


typedef BOOL(WINAPI* pTEXTOUTA)(
    HDC hdc,
    int x,
    int y,
    LPCSTR lpString,
    int c
    );

pTEXTOUTA TrueTEXTOUTA = TextOutA;
HFONT GBKFONT;

BOOL WINAPI TEXTOUTA_changecharset(
    HDC hdc,
    int x,
    int y,
    LPCSTR lpString,
    int c
)
{
    int i = GetTextCharset(hdc);
    std::string newstr = ANSIToANSI(lpString, 932, 936);

    return TrueTEXTOUTA(hdc, x, y, newstr.c_str(), c);
}

void hook_TEXTOUTA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TrueTEXTOUTA, TEXTOUTA_changecharset);

    DetourTransactionCommit();
}