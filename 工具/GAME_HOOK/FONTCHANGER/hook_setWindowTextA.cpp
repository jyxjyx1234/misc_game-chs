#include <Windows.h>
#include "detours.h"
#include <fstream>
#pragma comment(lib, "detours.lib")
#include "hook_SetWindowTextA.h"
#include "readconfig.h"
#include "convert.h"

typedef BOOL(WINAPI* psetWindowTextA)(HWND hWnd, LPCSTR lpString);
psetWindowTextA TruesetWindowTextA = SetWindowTextA;


BOOL WINAPI HookedsetWindowTextA(HWND hWnd, LPCSTR lpString)
{
    printf("Change window name sucess!\n\n");
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string WindowName = config.ReadString("WINDOW", "WINDOWNAME", "");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    WindowName = WindowName + " " + modeltype + "»ú·­ by ALyCE/jyxjyx1234";
    WindowName = ANSIToANSI(WindowName.c_str(), 936, GetACP());
    LPCSTR lpString_ = WindowName.c_str();
    return TruesetWindowTextA(hWnd, lpString_);
}



typedef HWND(WINAPI* pCreateWindowExA)(
    DWORD     dwExStyle,
    LPCSTR    lpClassName,
    LPCSTR    lpWindowName,
    DWORD     dwStyle,
    int       X,
    int       Y,
    int       nWidth,
    int       nHeight,
    HWND      hWndParent,
    HMENU     hMenu,
    HINSTANCE hInstance,
    LPVOID    lpParam
);
pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;

HWND WINAPI HOOKEDCreateWindowExA(
    DWORD     dwExStyle,
    LPCSTR    lpClassName,
    LPCSTR    lpWindowName,
    DWORD     dwStyle,
    int       X,
    int       Y,
    int       nWidth,
    int       nHeight,
    HWND      hWndParent,
    HMENU     hMenu,
    HINSTANCE hInstance,
    LPVOID    lpParam
) {
    printf("Change window name sucess!\n\n");
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string WindowName = config.ReadString("WINDOW", "WINDOWNAME", "");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    WindowName = WindowName + " " + modeltype + "»ú·­ by ALyCE/jyxjyx1234";
    WindowName = ANSIToANSI(WindowName.c_str(), 936, GetACP());
    lpWindowName = WindowName.c_str();
    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        lpWindowName,
        dwStyle,
        X,
        Y,
        nWidth,
        nHeight,
        hWndParent,
        hMenu,
        hInstance,
        lpParam
    );
}


void hook_setWindowTextA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    DetourAttach(&(PVOID&)TruesetWindowTextA, HookedsetWindowTextA);
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);

    DetourTransactionCommit();
}