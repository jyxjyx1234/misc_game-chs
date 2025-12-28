#pragma once
#include <Windows.h>

typedef int (WINAPI* pMultiByteToWideChar)(
	UINT CodePage,
	DWORD dwFlags,
	LPCSTR lpMultiByteStr,
	int cbMultiByte,
	LPWSTR lpWideCharStr,
	int cchWideChar
	);

typedef int (WINAPI* pWideCharToMultiByte) (
    UINT CodePage,
    DWORD dwFlags,
    LPCWSTR lpWideCharStr,
    int cchWideChar,
    LPSTR lpMultiByteStr,
    int cbMultiByte,
    LPCSTR lpDefaultChar,
    LPBOOL lpUsedDefaultChar
    );

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

typedef HANDLE(WINAPI* pCreateFileA)(
	LPCSTR lpFileName,
	DWORD dwDesiredAccess,
	DWORD dwShareMode,
	LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	DWORD dwCreationDisposition,
	DWORD dwFlagsAndAttributes,
	HANDLE hTemplateFile
	);

typedef HANDLE(WINAPI* pCreateFileW)(
	LPCWSTR lpFileName,
	DWORD dwDesiredAccess,
	DWORD dwShareMode,
	LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	DWORD dwCreationDisposition,
	DWORD dwFlagsAndAttributes,
	HANDLE hTemplateFile
	);

typedef BOOL(WINAPI* pReadFile)(
	HANDLE hFile,
	LPVOID lpBuffer,
	DWORD nNumberOfBytesToRead,
	LPDWORD lpNumberOfBytesRead,
	LPOVERLAPPED lpOverlapped
	);

typedef DWORD(WINAPI* pGetFileSize)(
	HANDLE hFile,
	LPDWORD lpFileSizeHigh
	);

typedef BOOL(WINAPI* pCloseHandle)(
	HANDLE hObject
	);

typedef DWORD(WINAPI* pGetFileAttributesA)(
	LPCSTR lpFileName
	);

typedef DWORD(WINAPI* pGetFileType)(
    HANDLE hFile
	);

typedef DWORD(WINAPI* pSetFilePointer)(
	HANDLE hFile,
	LONG lDistanceToMove,
	PLONG lpDistanceToMoveHigh,
	DWORD dwMoveMethod
	);

typedef BOOL(WINAPI* pModifyMenuA)(
	HMENU hMenu,
	UINT uPosition,
	UINT uFlags,
	UINT_PTR uIDNewItem,
	LPCSTR lpNewItem
	);

typedef BOOL(WINAPI* pGetTextExtentExPointA)(
    HDC    hdc,
    LPCSTR lpString,
    int    cchString,
    int    nMaxExtent,
    LPINT  lpnFit,
    LPINT  alpDx,
    LPSIZE lpSize
    );

typedef BOOL(WINAPI* pGetTextExtentPoint32A)(
	HDC hdc,
	LPCSTR lpString,
	int c,
	LPSIZE ps
	);

typedef HANDLE(WINAPI* pFindFirstFileA) (
   LPCSTR             lpFileName,
   LPWIN32_FIND_DATAA lpFindFileData
 );

typedef BOOL(WINAPI* pFindNextFileA) (
    HANDLE             hFindFile,
    LPWIN32_FIND_DATAA lpFindFileData
    );

typedef BOOL(WINAPI* pFindClose) (
    HANDLE             hFindFile
    );

typedef LSTATUS(WINAPI* pRegQueryValueExA) (
    HKEY    hKey,
	LPCSTR  lpValueName,
	LPDWORD lpReserved,
	LPDWORD lpType,
	LPBYTE  lpData,
    LPDWORD   lpcbData
    );

typedef int(WINAPI* pGdipDrawString)(
    void* graphics,
    const wchar_t* string,
    int length,
    void* font,
    void* layoutRect,
    void* stringFormat,
    void* brush
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