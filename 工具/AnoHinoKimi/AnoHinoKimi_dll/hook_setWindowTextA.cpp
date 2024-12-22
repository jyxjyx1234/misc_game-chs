#include <Windows.h>
#include "detours.h"
#include <fstream>
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif
#include "hook_SetWindowTextA.h"

//typedef BOOL(WINAPI* psetWindowTextA)(HWND hWnd, LPCSTR lpString);
//psetWindowTextA TruesetWindowTextA = SetWindowTextA;
//
//
//BOOL WINAPI HookedsetWindowTextA(HWND hWnd, LPCSTR lpString)
//{
//    std::string WindowName = "让那日的你为我回首。 Claude-3-5-sonnet机翻 by ALyCE";
//    std::string oriname(lpString);
//    WindowName = ANSIToANSI(WindowName.c_str(), 936, GetACP());
//    LPCSTR lpString_ = WindowName.c_str();
//    return TruesetWindowTextA(hWnd, lpString_);
//}

typedef BOOL(WINAPI* psetWindowTextW)(HWND hWnd, LPCWSTR lpString);
psetWindowTextW TruesetWindowTextW = SetWindowTextW;

BOOL WINAPI HookedsetWindowTextW(HWND hWnd, LPCWSTR lpString)
{
    return TruesetWindowTextW(hWnd, L"让那日的你为我回首。 Claude-3-5-sonnet机翻 by ALyCE");
}


void hook_setWindowTextA_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    //DetourAttach(&(PVOID&)TruesetWindowTextA, HookedsetWindowTextA);
    DetourAttach(&(PVOID&)TruesetWindowTextW, HookedsetWindowTextW);
    DetourTransactionCommit();
}