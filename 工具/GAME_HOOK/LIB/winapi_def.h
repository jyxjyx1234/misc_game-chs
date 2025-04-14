#pragma once
#include <Windows.h>


typedef BOOL(WINAPI* pTextOutA)(
    HDC hdc,
    int nXStart,
    int nYStart,
    LPCSTR lpString,
    int cbString
    );


typedef DWORD(WINAPI* pGetGlyphOutlineA)(
    HDC hdc,
    UINT uChar,
    UINT uFormat,
    LPGLYPHMETRICS lpgm,
    DWORD cbBuffer,
    LPVOID lpvBuffer,
    const MAT2* lpmat2
    );

typedef HFONT(WINAPI* pCreateFontA)(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName
    );

typedef HFONT(WINAPI* pCreateFontW)(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCWSTR pszFaceName
    );

typedef HFONT(WINAPI* pCreateFontIndirectA)(CONST LOGFONTA* lplf);

typedef HFONT(WINAPI* pCreateFontIndirectW)(CONST LOGFONTW* lplf);

typedef BOOL(WINAPI* psetWindowTextA)(HWND hWnd, LPCSTR lpString);

typedef BOOL(WINAPI* psetWindowTextW)(HWND hWnd, LPCWSTR lpString);

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

typedef HMODULE(WINAPI* pLoadLibraryExA)(LPCSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);
typedef HMODULE(WINAPI* pLoadLibraryA)(LPCSTR lpLibFileName);
typedef HMODULE(WINAPI* pLoadLibraryW)(LPCWSTR lpLibFileName);
typedef HMODULE(WINAPI* pLoadLibraryExW)(LPCWSTR lpLibFileName, HANDLE hFile, DWORD dwFlags);

typedef BOOL(WINAPI* pExtTextOutA)(
	HDC hdc,
	int X,
	int Y,
	UINT fuOptions,
	const RECT* lprc,
	LPCSTR lpString,
	UINT cbCount,
	const INT* lpDx
	);

typedef ATOM(WINAPI* pRegisterClassA)(const WNDCLASSA*);

typedef BOOL(WINAPI* pTextOutW)(
    HDC hdc,
    int nXStart,
    int nYStart,
    LPCWSTR lpString,
    int cbString
    );

typedef int(WINAPI* pEnumFontFamiliesExA)(
	HDC hdc,
	LPLOGFONTA lpLogfontA,
	FONTENUMPROCA lpEnumFontFamExProc,
	LPARAM lParam
	);

typedef int(WINAPI* pEnumFontFamiliesExW)(
	HDC hdc,
	LPLOGFONTW lpLogfontW,
	FONTENUMPROCW lpEnumFontFamExProc,
	LPARAM lParam
	);

struct hook_stack {
    DWORD pfd;
    DWORD pedi;
    DWORD pesi;
    DWORD pebp;
    DWORD pesp;
    DWORD pebx;
    DWORD pedx;
    DWORD pecx;
    DWORD peax;
    DWORD oesp;
    DWORD oesp_4;
    DWORD oesp_8;
    DWORD oesp_c;
    DWORD oesp_10;
    DWORD oesp_14;
    DWORD oesp_18;
    DWORD oesp_1c;
    DWORD oesp_20;
    DWORD oesp_24;
    DWORD oesp_28;
    DWORD oesp_2c;
    DWORD oesp_30;
    DWORD oesp_34;
    DWORD oesp_38;
    DWORD oesp_3c;
    DWORD oesp_40;
    DWORD oesp_44;
    DWORD oesp_48;
};