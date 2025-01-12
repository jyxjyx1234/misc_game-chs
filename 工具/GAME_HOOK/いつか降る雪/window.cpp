#include <windows.h>
#include "detours.h"
#include "window.h"
#include <string.h>
#include <convert.h>
#include <iostream>
#include <fstream>
#include <map>

char newWindowNameA[0x100] = "雪终将飘落";
std::map<std::string, std::string> windowTransMap;
std::map<std::wstring, std::wstring> windowTransMapW;

void WriteToFile(const char* str, const char* file)
{
    if (str == nullptr) return;
    const std::string& filename = file;
    std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
		outFile.write(str, strlen(str));
		outFile.write("\n", strlen("\n"));
        outFile.close();
    }
}

void WriteToFile(const WCHAR* str, const char* file)
{
    if (str == nullptr) return;
    const std::string& filename = file;
    std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
		outFile.write((const char*)str, wcslen(str) * sizeof(WCHAR));
        outFile.write((const char*)L"\n", wcslen(L"\n") * sizeof(WCHAR));
    }
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
    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        newWindowNameA,
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

typedef BOOL(WINAPI* psetWindowTextA)(HWND hWnd, LPCSTR lpString);
psetWindowTextA TruesetWindowTextA = SetWindowTextA;

BOOL WINAPI HookedsetWindowTextA(HWND hWnd, LPCSTR lpString)
{
	std::string lpStringGBK = ANSIToANSI(lpString, 932, GetACP());
	auto it = windowTransMap.find(lpStringGBK);
	if (it != windowTransMap.end()) {
		lpStringGBK = it->second;
	}
    else {
        WriteToFile(lpStringGBK.c_str(), "output.txt");
    }
    return TruesetWindowTextA(hWnd, lpStringGBK.c_str());
}

typedef int(WINAPI* pDrawTextExW)(
	HDC     hdc,
	LPWSTR  lpchText,
	int     cchText,
	LPRECT  lprc,
	UINT    format,
	LPDRAWTEXTPARAMS  lpdtp
	);
pDrawTextExW TrueDrawTextExW = DrawTextExW;

int WINAPI HOOKEDDrawTextExW(
	HDC     hdc,
	LPWSTR  lpchText,
	int     cchText,
	LPRECT  lprc,
	UINT    format,
	LPDRAWTEXTPARAMS  lpdtp
) {
	std::wstring lpchTextW = std::wstring(lpchText);
	auto it = windowTransMapW.find(lpchTextW);
	if (it != windowTransMapW.end()) {
		lpchTextW = it->second;
		cchText = wcslen(lpchTextW.c_str());
	}
    else
    {
        WriteToFile(lpchText, "outputW.txt");
        LPCSTR t1 = WideStringToGBKLPCSTR(lpchTextW);
		lpchTextW = sjisStringToWString(t1);
    }
	return TrueDrawTextExW(hdc, (LPWSTR)lpchTextW.c_str(), cchText, lprc, format, lpdtp);
}

typedef INT_PTR(WINAPI* pDialogBoxParamA)(
	HINSTANCE hInstance,
	LPCSTR    lpTemplateName,
	HWND      hWndParent,
	DLGPROC   lpDialogFunc,
	LPARAM    dwInitParam
);
pDialogBoxParamA TrueDialogBoxParamA = DialogBoxParamA;

INT_PTR WINAPI HOOKEDDialogBoxParamA(
	HINSTANCE hInstance,
	LPCSTR    lpTemplateName,
	HWND      hWndParent,
	DLGPROC   lpDialogFunc,
	LPARAM    dwInitParam
) {
	return TrueDialogBoxParamA(hInstance, lpTemplateName, hWndParent, lpDialogFunc, dwInitParam);
}


void windowHook_main() {
    init_windowtransmap();
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);
    DetourAttach(&(PVOID&)TruesetWindowTextA, HookedsetWindowTextA);
    DetourAttach(&(PVOID&)TrueDrawTextExW, HOOKEDDrawTextExW);
    DetourTransactionCommit();
}

void init_windowtransmap() {
	windowTransMap["ゲームを終了しますか？"] = "要结束游戏吗？";
    windowTransMap["いつか降る雪"] = newWindowNameA;
	windowTransMap["タイトルへ戻りますか？"] = "要返回标题吗？";
	windowTransMap["動作設定"] = "操作设置";
	windowTransMap["(速い)"] = "(快速)";
    windowTransMap["(遅い)"] = "(缓慢)";
    windowTransMap["(速い)"] = "(快速)";
    windowTransMap["(一括)"] = "(瞬间)";
    windowTransMap["枹巊梡"] = "未使用";

	windowTransMapW[L"タイトルに戻る"] = L"返回标题";
    windowTransMapW[L"終了"] = L"结束";
    windowTransMapW[L"表示設定"] = L"显示设定";
    windowTransMapW[L"設定..."] = L"设定...";
    windowTransMapW[L"オプション"] = L"选项";
    windowTransMapW[L"オートセーブON/OFF"] = L"自动保存ON/OFF";
    windowTransMapW[L"ウィンドウ"] = L"窗口";
    windowTransMapW[L"フルスクリーン"] = L"全屏";
    windowTransMapW[L"ロード"] = L"读档";
    windowTransMapW[L"枹巊梡"] = L"未使用";
}