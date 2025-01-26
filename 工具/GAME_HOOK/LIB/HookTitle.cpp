#include <fstream>
#include "HookTitle.h"

psetWindowTextA TruesetWindowTextA = SetWindowTextA;
psetWindowTextW TruesetWindowTextW = SetWindowTextW;
pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;
pCreateWindowExW TrueCreateWindowExW = CreateWindowExW;
WindowHookConfig changeWindowCfg;

std::string tag = "机翻 by ALyCE / jyxjyx1234";
std::wstring tagW = L"机翻 by ALyCE / jyxjyx1234";

#ifndef Release_for_others
BOOL ISADDNAME = true;
#else
BOOL ISADDNAME = false;
#endif
//std::string name = "机翻 by ALex^^";
//std::wstring nameW = L"机翻 by ALex^^";

BOOL WINAPI HookedSetWindowTextA(HWND hWnd, LPCSTR lpString)
{
    printf("HOOK setWindowTextA sucess!\n\n");
    std::string oriname(lpString);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != ANSIToANSI(changeWindowCfg.oriWindowName.c_str(), 936, GetACP())) {
             return TruesetWindowTextA(hWnd, lpString);
        }
    }
    std::string newWindowName;
    if (changeWindowCfg.newWindowName != "") {
        newWindowName = changeWindowCfg.newWindowName;
    }
	else {
		newWindowName = oriname;
	}
#ifndef Release_for_others
    newWindowName = newWindowName + changeWindowCfg.modeltype + tag;
#endif
    return TruesetWindowTextA(hWnd, newWindowName.c_str());
}


BOOL WINAPI HookedSetWindowTextW(HWND hWnd, LPCWSTR lpString)
{
    printf("HOOK setWindowTextw sucess!\n\n");
    std::wstring oriname(lpString);
    std::wstring oriWindowNameW = GBKStringToWString(changeWindowCfg.oriWindowName);
    std::wstring newWindowNameW = GBKStringToWString(changeWindowCfg.newWindowName);
    std::wstring modeltypeW = GBKStringToWString(changeWindowCfg.modeltype);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != oriWindowNameW) {
            return TruesetWindowTextW(hWnd, lpString);
        }
    }
    if (changeWindowCfg.newWindowName == "") {
		newWindowNameW = oriname;
    }
#ifndef Release_for_others
    newWindowNameW = newWindowNameW + modeltypeW + tagW;
#endif 
    return TruesetWindowTextW(hWnd, newWindowNameW.c_str());
}


HWND WINAPI HookedCreateWindowExA(
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
    printf("HOOK CreateWindowExA sucess!\n\n");
    std::string oriname(lpWindowName);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != ANSIToANSI(changeWindowCfg.oriWindowName.c_str(), 936, GetACP())) {
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
    }
    std::string newWindowName = changeWindowCfg.newWindowName;
    if (changeWindowCfg.newWindowName == "") {
		newWindowName = oriname;
	}
#ifndef Release_for_others
    newWindowName = newWindowName + changeWindowCfg.modeltype + tag;
#endif
    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        newWindowName.c_str(),
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

HWND WINAPI HookedCreateWindowExW(
    DWORD     dwExStyle,
    LPCWSTR    lpClassName,
    LPCWSTR    lpWindowName,
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
    printf("HOOK CreateWindowExW sucess!\n\n");
    std::wstring oriname(lpWindowName);
    std::wstring oriWindowNameW = GBKStringToWString(changeWindowCfg.oriWindowName);
    std::wstring newWindowNameW = GBKStringToWString(changeWindowCfg.newWindowName);
    std::wstring modeltypeW = GBKStringToWString(changeWindowCfg.modeltype);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != oriWindowNameW) {
            return TrueCreateWindowExW(
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
    }
	if (changeWindowCfg.newWindowName == "") {
		newWindowNameW = oriname;
	}
#ifndef Release_for_others
    newWindowNameW = newWindowNameW + modeltypeW + tagW;
#endif
    return TrueCreateWindowExW(
        dwExStyle,
        lpClassName,
        newWindowNameW.c_str(),
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


void hookTitle_main() {
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    printf("Title Hook Installed!\n");
    DetourAttach(&(PVOID&)TruesetWindowTextA, HookedSetWindowTextA);
    DetourAttach(&(PVOID&)TruesetWindowTextW, HookedSetWindowTextW);
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HookedCreateWindowExA);
    DetourAttach(&(PVOID&)TrueCreateWindowExW, HookedCreateWindowExW);
    DetourTransactionCommit();
}