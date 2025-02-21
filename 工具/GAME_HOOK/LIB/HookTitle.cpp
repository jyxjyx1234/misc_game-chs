#include <fstream>
#include "HookTitle.h"

psetWindowTextA TruesetWindowTextA = SetWindowTextA;
psetWindowTextW TruesetWindowTextW = SetWindowTextW;
pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;
pCreateWindowExW TrueCreateWindowExW = CreateWindowExW;
WindowHookConfig changeWindowCfg;

std::string tag = "Deepseek-R1 »ú·­ by jyxjyx1234@ai2.moe";
std::wstring tagW = L"Deepseek-R1 »ú·­ by jyxjyx1234@ai2.moe";

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

    if (changeWindowCfg.newWindowName != "") {
        newWindowName = changeWindowCfg.newWindowName;
        newWindowName = ANSIToANSI(oriname.c_str(), 936, GetACP());
    }
	else {
		newWindowName = oriname;
	}
#ifndef Release_for_others
    newWindowName = newWindowName + " " + changeWindowCfg.modeltype + ANSIToANSI(tag.c_str(), 936, GetACP());
#endif
    return TruesetWindowTextA(hWnd, newWindowName.c_str());
}


BOOL WINAPI HookedSetWindowTextW(HWND hWnd, LPCWSTR lpString)
{
    printf("HOOK setWindowTextw sucess!\n\n");
    std::wstring oriname(lpString);
    std::wstring oriWindowNameW = GBKStringToWString(changeWindowCfg.oriWindowName);
    newWindowNameW = GBKStringToWString(changeWindowCfg.newWindowName);
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
    newWindowName = changeWindowCfg.newWindowName;
    if (changeWindowCfg.newWindowName == "") {
        newWindowName = oriname;
	}
    else {
		newWindowName = ANSIToANSI(newWindowName.c_str(), 936, GetACP());
    }
#ifndef Release_for_others
    if(newWindowName != "") newWindowName = newWindowName + " " + changeWindowCfg.modeltype + ANSIToANSI(tag.c_str(), 936, GetACP());
#endif
	//printf("%s\n", newWindowName.c_str());
    HWND res = TrueCreateWindowExA(
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
    printf("HOOK CreateWindowExW sucess!\n\n");
    std::wstring oriname(lpWindowName);
    std::wstring oriWindowNameW = GBKStringToWString(changeWindowCfg.oriWindowName);
    newWindowNameW = GBKStringToWString(changeWindowCfg.newWindowName);
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
    if (newWindowNameW != L"") newWindowNameW = newWindowNameW + L" " + modeltypeW + tagW;
#endif
    printf("%ls\n", newWindowNameW.c_str());
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
    //DetourAttach(&(PVOID&)TrueCreateWindowExW, HookedCreateWindowExW);
    DetourTransactionCommit();
}