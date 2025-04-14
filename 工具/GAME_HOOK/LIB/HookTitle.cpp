#include <fstream>
#include "HookTitle.h"

psetWindowTextA TruesetWindowTextA = SetWindowTextA;
psetWindowTextW TruesetWindowTextW = SetWindowTextW;
pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;
pCreateWindowExW TrueCreateWindowExW = CreateWindowExW;
WindowHookConfig changeWindowCfg;

std::string tag = "»ú·­ by jyxjyx1234@ai2.moe";
std::wstring tagW = L"»ú·­ by jyxjyx1234@ai2.moe";

std::string newWindowName;
std::wstring newWindowNameW;

BOOL WINAPI HookedSetWindowTextA(HWND hWnd, LPCSTR lpString)
{
    printf("HOOK setWindowTextA sucess!\noriWindowName is %s\n", lpString);
    std::string oriname(lpString);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != ANSIToANSI(changeWindowCfg.oriWindowName.c_str(), 936, GetACP())) {
             return TruesetWindowTextA(hWnd, lpString);
        }
    }
	else if (changeWindowCfg.isCheckStart) {
		if (oriname.find(ANSIToANSI(changeWindowCfg.oriWindowName.c_str(), 936, GetACP())) == std::string::npos) {
			return TruesetWindowTextA(hWnd, lpString);
		}
	}
    if (changeWindowCfg.newWindowName != L"") {
        newWindowNameW = changeWindowCfg.newWindowName;
    }
	else {
		newWindowNameW = sjisLPCSTRToWideString(oriname.c_str());
	}
#ifndef Release_for_others
    if (newWindowNameW != L"") {
        WCHAR nw[0x100] = { 0 };
        wcscat_s(nw, newWindowNameW.c_str());
        wcscat_s(nw, L" ");
        wcscat_s(nw, GBKStringToWString(changeWindowCfg.modeltype).c_str());
        wcscat_s(nw, tagW.c_str());
        newWindowNameW = nw;
    }
#endif
    return TruesetWindowTextW(hWnd, newWindowNameW.c_str());
}


BOOL WINAPI HookedSetWindowTextW(HWND hWnd, LPCWSTR lpString)
{
    printf("HOOK setWindowTextw sucess!\n\n");
    std::wstring oriname(lpString);
    std::wstring oriWindowNameW = GBKStringToWString(changeWindowCfg.oriWindowName);
    newWindowNameW = changeWindowCfg.newWindowName;
    std::wstring modeltypeW = GBKStringToWString(changeWindowCfg.modeltype);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != oriWindowNameW) {
            return TruesetWindowTextW(hWnd, lpString);
        }
    }
    if (changeWindowCfg.newWindowName == L"") {
		newWindowNameW = oriname;
    }
#ifndef Release_for_others
    newWindowNameW = newWindowNameW + L" " + modeltypeW + tagW;
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
    auto res = TrueCreateWindowExA(
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
	if (lpWindowName == nullptr) {
		return res;
	}
    std::string oriname(lpWindowName);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != ANSIToANSI(changeWindowCfg.oriWindowName.c_str(), 936, GetACP())) {
            return res;
        }
    }
    newWindowNameW = changeWindowCfg.newWindowName;
    if (changeWindowCfg.newWindowName == L"") {
		newWindowNameW = sjisLPCSTRToWideString(oriname.c_str());
	}
#ifndef Release_for_others
    if (newWindowNameW != L"") {
        WCHAR nw[0x100] = { 0 };
		wcscat_s(nw, newWindowNameW.c_str());
		wcscat_s(nw, L" ");
		wcscat_s(nw, GBKStringToWString(changeWindowCfg.modeltype).c_str());
		wcscat_s(nw, tagW.c_str());
        newWindowNameW = nw;
    }
#endif
	TruesetWindowTextW(res, newWindowNameW.c_str());
	return res;
}

//HWND WINAPI HookedCreateWindowExA(
//    DWORD     dwExStyle,
//    LPCSTR    lpClassName,
//    LPCSTR    lpWindowName,
//    DWORD     dwStyle,
//    int       X,
//    int       Y,
//    int       nWidth,
//    int       nHeight,
//    HWND      hWndParent,
//    HMENU     hMenu,
//    HINSTANCE hInstance,
//    LPVOID    lpParam
//) {
//    HFONT hFont = CreateFontW(20, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE,
//        GB2312_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS,
//        DEFAULT_QUALITY, DEFAULT_PITCH | FF_SWISS, L"SimSun");
//    SendMessageA(hWndParent, WM_SETFONT, (WPARAM)hFont, TRUE);
//    HWND res = TrueCreateWindowExW(
//        dwExStyle,
//        sjisStringToWString(lpClassName).c_str(),
//        sjisStringToWString(lpWindowName).c_str(),
//        dwStyle,
//        X,
//        Y,
//        nWidth,
//        nHeight,
//        hWndParent,
//        hMenu,
//        hInstance,
//        lpParam
//    );
//    printf("HOOK CreateWindowExA sucess!\n\n");
//    std::string oriname(lpWindowName);
//    if (changeWindowCfg.isCheckOri) {
//        if (oriname != ANSIToANSI(changeWindowCfg.oriWindowName.c_str(), 936, GetACP())) {
//            return res;
//        }
//    }
//    newWindowNameW = GBKStringToWString(changeWindowCfg.newWindowName);
//    if (changeWindowCfg.newWindowName == "") {
//        newWindowNameW = sjisLPCSTRToWideString(oriname.c_str());
//    }
//#ifndef Release_for_others
//    newWindowNameW = newWindowNameW + L" " + GBKStringToWString(changeWindowCfg.modeltype) + tagW;
//#endif
//    //printf("%s\n", newWindowName.c_str());
//	TruesetWindowTextW(res, newWindowNameW.c_str());
//    return res;
//}

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
    auto res = TrueCreateWindowExW(
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
    printf("HOOK CreateWindowExW sucess!\n\n");
	if (lpWindowName == nullptr) {
		return res;
	}
    std::wstring oriname(lpWindowName);
    std::wstring oriWindowNameW = GBKStringToWString(changeWindowCfg.oriWindowName);
    newWindowNameW = changeWindowCfg.newWindowName;
    std::wstring modeltypeW = GBKStringToWString(changeWindowCfg.modeltype);
    if (changeWindowCfg.isCheckOri) {
        if (oriname != oriWindowNameW) {
            return res;
        }
    }
	if (changeWindowCfg.newWindowName == L"") {
		newWindowNameW = oriname;
	}
#ifndef Release_for_others
    if (newWindowNameW != L"") {
        WCHAR nw[0x100] = { 0 };
        wcscat_s(nw, newWindowNameW.c_str());
        wcscat_s(nw, L" ");
        wcscat_s(nw, GBKStringToWString(changeWindowCfg.modeltype).c_str());
        wcscat_s(nw, tagW.c_str());
        newWindowNameW = nw;
    }
#endif
    printf("%ls\n", newWindowNameW.c_str());
	TruesetWindowTextW(res, newWindowNameW.c_str());
    return res;
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