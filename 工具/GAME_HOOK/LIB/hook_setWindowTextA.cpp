#include <Windows.h>
#include "detours.h"
#include <fstream>
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif
#include "hook_SetWindowTextA.h"
#include "readconfig.h"
#include "convert.h"

typedef BOOL(WINAPI* psetWindowTextA)(HWND hWnd, LPCSTR lpString);
psetWindowTextA TruesetWindowTextA = SetWindowTextA;

std::string name = "机翻 by ALyCE / jyxjyx1234";
std::wstring nameW = L"机翻 by ALyCE / jyxjyx1234";
//std::string name = "机翻 by ALex^^";
//std::wstring nameW = L"机翻 by ALex^^";

BOOL WINAPI HookedsetWindowTextA(HWND hWnd, LPCSTR lpString)
{
    printf("HOOK setWindowTextA sucess!\n\n");
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string WindowName = config.ReadString("WINDOW", "WINDOWNAME", "");
    std::string oriname(lpString);
    oriname.erase(0, oriname.find_first_not_of(" \t"));
    oriname.erase(oriname.find_last_not_of(" \t") + 1);
    if (oriname != ANSIToANSI(WindowName.c_str(), 936, GetACP())) {
        std::cout << "ori window name is " << oriname <<", not " << WindowName << ". Not change!" << std::endl;
        return TruesetWindowTextA(hWnd, lpString);
    }
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-5-sonnet");
    WindowName = WindowName + " " + modeltype + name;
    WindowName = ANSIToANSI(WindowName.c_str(), 936, GetACP());
    LPCSTR lpString_ = WindowName.c_str();
    return TruesetWindowTextA(hWnd, lpString_);
}

typedef BOOL(WINAPI* psetWindowTextW)(HWND hWnd, LPCWSTR lpString);
psetWindowTextW TruesetWindowTextW = SetWindowTextW;


BOOL WINAPI HookedsetWindowTextW(HWND hWnd, LPCWSTR lpString)
{
    printf("HOOK setWindowTextw sucess!\n\n");
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string WindowName = config.ReadString("WINDOW", "WINDOWNAME", "");
    std::wstring oriname(lpString);
    if (oriname != GBKStringToWString(WindowName)) {
        std::cout << L"ori window name is " << oriname.c_str() << L", not " << WindowName << L". Not change!" << std::endl;
        return TruesetWindowTextW(hWnd, lpString);
    }
    std::wstring modeltype = GBKStringToWString(config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-5-sonnet"));
    std::wstring WindowNameW = GBKStringToWString(WindowName) + L" " + modeltype + nameW;
    LPCWSTR lpString_ = WindowNameW.c_str();
    return TruesetWindowTextW(hWnd, lpString_);
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
    printf("HOOK CreateWindowExA sucess!\n\n");
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string WindowName = config.ReadString("WINDOW", "WINDOWNAME", "");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-5-sonnet");
    std::string WindowName_n = WindowName + " " + modeltype + name;
    WindowName_n = ANSIToANSI(WindowName_n.c_str(), 936, GetACP());
    char newWindowName[200];
    strcpy_s(newWindowName, 200, WindowName_n.c_str());

    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        newWindowName,
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

typedef HWND(WINAPI* pCreateWindowExW)(
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
    );
pCreateWindowExW TrueCreateWindowExW = CreateWindowExW;

HWND WINAPI HOOKEDCreateWindowExW(
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
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string WindowName = config.ReadString("WINDOW", "WINDOWNAME", "");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-5-sonnet");
    std::wstring WindowNameW = GBKStringToWString(WindowName);
    std::wstring modeltypeW = GBKStringToWString(modeltype);
    std::wstring WindowNameW_n = WindowNameW + L" " + modeltypeW + nameW;
    WCHAR newWindowName[200];
    wcscpy_s(newWindowName, 200, WindowNameW_n.c_str());
    if (lpWindowName != nullptr) {
        WCHAR oriWindowName[200];
        wcscpy_s(oriWindowName, 200, lpWindowName);
        if (wcscmp(oriWindowName, WindowNameW.c_str())) lpWindowName = newWindowName;
    }
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


void hook_setWindowTextA_main() {

    DetourTransactionBegin();

    DetourUpdateThread(GetCurrentThread());

    printf("Window Text func HOOKED!\n");

    DetourAttach(&(PVOID&)TruesetWindowTextA, HookedsetWindowTextA);
    DetourAttach(&(PVOID&)TruesetWindowTextW, HookedsetWindowTextW);
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);
    DetourAttach(&(PVOID&)TrueCreateWindowExW, HOOKEDCreateWindowExW);

    DetourTransactionCommit();
}