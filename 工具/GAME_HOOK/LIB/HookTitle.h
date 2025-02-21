#ifndef hook_SWT_h
#define hook_SWT_h

#include "winapi_def.h"
#include "detours.h"
#include "convert.h"

extern psetWindowTextA TruesetWindowTextA;
extern psetWindowTextW TruesetWindowTextW;
extern pCreateWindowExA TrueCreateWindowExA;
extern pCreateWindowExW TrueCreateWindowExW;
extern pRegisterClassA TrueRegisterClassA;
struct WindowHookConfig
{
    std::string oriWindowName = "";// 936±àÂë
    std::string newWindowName = "";// 936±àÂë
    std::string modeltype = "";// 936±àÂë
    BOOL isCheckOri = true;
	BOOL isCheckStart = false;
};

extern WindowHookConfig changeWindowCfg;

void hookTitle_main();

BOOL WINAPI HookedSetWindowTextW(HWND hWnd, LPCWSTR lpString);
BOOL WINAPI HookedSetWindowTextA(HWND hWnd, LPCSTR lpString);
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
);
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
);


#endif // 
