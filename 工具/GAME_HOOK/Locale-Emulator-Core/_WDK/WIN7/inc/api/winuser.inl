/* Copyright (c) 2001-2010, Microsoft Corp. All rights reserved. */

#if _MSC_VER > 1000
#pragma once
#endif

#if defined(__cplusplus)
extern "C" {
#endif


#if !defined(RC_INVOKED) /* RC complains about long symbols in #ifs */
#if defined(ISOLATION_AWARE_ENABLED) && (ISOLATION_AWARE_ENABLED != 0)


#if !defined(ISOLATION_AWARE_USE_STATIC_LIBRARY)
#define ISOLATION_AWARE_USE_STATIC_LIBRARY 0
#endif

#if !defined(ISOLATION_AWARE_BUILD_STATIC_LIBRARY)
#define ISOLATION_AWARE_BUILD_STATIC_LIBRARY 0
#endif

#if !defined(ISOLATION_AWARE_INLINE)
#if ISOLATION_AWARE_BUILD_STATIC_LIBRARY
#define ISOLATION_AWARE_INLINE /* nothing */
#else
#if defined(__cplusplus)
#define ISOLATION_AWARE_INLINE inline
#else
#define ISOLATION_AWARE_INLINE __inline
#endif
#endif
#endif

#if !ISOLATION_AWARE_USE_STATIC_LIBRARY
#endif /* ISOLATION_AWARE_USE_STATIC_LIBRARY */
ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassA(__in const WNDCLASSA*lpWndClass);
ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassW(__in const WNDCLASSW*lpWndClass);
BOOL IsolationAwarePrivatenCv IsolationAwareUnregisterClassA(__in LPCSTR lpClassName,__in_opt HINSTANCE hInstance);
BOOL IsolationAwarePrivatenCv IsolationAwareUnregisterClassW(__in LPCWSTR lpClassName,__in_opt HINSTANCE hInstance);
BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoA(__in_opt HINSTANCE hInstance,__in LPCSTR lpClassName,__out LPWNDCLASSA lpWndClass);
BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpClassName,__out LPWNDCLASSW lpWndClass);
ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassExA(__in const WNDCLASSEXA*unnamed1);
ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassExW(__in const WNDCLASSEXW*unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoExA(__in_opt HINSTANCE hInstance,__in LPCSTR lpszClass,__out LPWNDCLASSEXA lpwcx);
BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoExW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpszClass,__out LPWNDCLASSEXW lpwcx);
HWND IsolationAwarePrivatenCv IsolationAwareCreateWindowExA(__in DWORD dwExStyle,__in_opt LPCSTR lpClassName,__in_opt LPCSTR lpWindowName,__in DWORD dwStyle,__in int X,__in int Y,__in int nWidth,__in int nHeight,__in_opt HWND hWndParent,__in_opt HMENU hMenu,__in_opt HINSTANCE hInstance,__in_opt LPVOID lpParam);
HWND IsolationAwarePrivatenCv IsolationAwareCreateWindowExW(__in DWORD dwExStyle,__in_opt LPCWSTR lpClassName,__in_opt LPCWSTR lpWindowName,__in DWORD dwStyle,__in int X,__in int Y,__in int nWidth,__in int nHeight,__in_opt HWND hWndParent,__in_opt HMENU hMenu,__in_opt HINSTANCE hInstance,__in_opt LPVOID lpParam);
HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogParamA(__in_opt HINSTANCE hInstance,__in LPCSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogParamW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogIndirectParamA(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEA lpTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogIndirectParamW(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEW lpTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxParamA(__in_opt HINSTANCE hInstance,__in LPCSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxParamW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxIndirectParamA(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEA hDialogTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxIndirectParamW(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEW hDialogTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam);
int IsolationAwarePrivatenCv IsolationAwareMessageBoxA(__in_opt HWND hWnd,__in_opt LPCSTR lpText,__in_opt LPCSTR lpCaption,__in UINT uType);
int IsolationAwarePrivatenCv IsolationAwareMessageBoxW(__in_opt HWND hWnd,__in_opt LPCWSTR lpText,__in_opt LPCWSTR lpCaption,__in UINT uType);
int IsolationAwarePrivatenCv IsolationAwareMessageBoxExA(__in_opt HWND hWnd,__in_opt LPCSTR lpText,__in_opt LPCSTR lpCaption,__in UINT uType,__in WORD wLanguageId);
int IsolationAwarePrivatenCv IsolationAwareMessageBoxExW(__in_opt HWND hWnd,__in_opt LPCWSTR lpText,__in_opt LPCWSTR lpCaption,__in UINT uType,__in WORD wLanguageId);
int IsolationAwarePrivatenCv IsolationAwareMessageBoxIndirectA(__in const MSGBOXPARAMSA*lpmbp);
int IsolationAwarePrivatenCv IsolationAwareMessageBoxIndirectW(__in const MSGBOXPARAMSW*lpmbp);

#if defined(UNICODE)

#define IsolationAwareCreateDialogIndirectParam IsolationAwareCreateDialogIndirectParamW
#define IsolationAwareCreateDialogParam IsolationAwareCreateDialogParamW
#define IsolationAwareCreateWindowEx IsolationAwareCreateWindowExW
#define IsolationAwareDialogBoxIndirectParam IsolationAwareDialogBoxIndirectParamW
#define IsolationAwareDialogBoxParam IsolationAwareDialogBoxParamW
#define IsolationAwareGetClassInfo IsolationAwareGetClassInfoW
#define IsolationAwareGetClassInfoEx IsolationAwareGetClassInfoExW
#define IsolationAwareMessageBox IsolationAwareMessageBoxW
#define IsolationAwareMessageBoxEx IsolationAwareMessageBoxExW
#define IsolationAwareMessageBoxIndirect IsolationAwareMessageBoxIndirectW
#define IsolationAwareRegisterClass IsolationAwareRegisterClassW
#define IsolationAwareRegisterClassEx IsolationAwareRegisterClassExW
#define IsolationAwareUnregisterClass IsolationAwareUnregisterClassW

#else /* UNICODE */

#define IsolationAwareCreateDialogIndirectParam IsolationAwareCreateDialogIndirectParamA
#define IsolationAwareCreateDialogParam IsolationAwareCreateDialogParamA
#define IsolationAwareCreateWindowEx IsolationAwareCreateWindowExA
#define IsolationAwareDialogBoxIndirectParam IsolationAwareDialogBoxIndirectParamA
#define IsolationAwareDialogBoxParam IsolationAwareDialogBoxParamA
#define IsolationAwareGetClassInfo IsolationAwareGetClassInfoA
#define IsolationAwareGetClassInfoEx IsolationAwareGetClassInfoExA
#define IsolationAwareMessageBox IsolationAwareMessageBoxA
#define IsolationAwareMessageBoxEx IsolationAwareMessageBoxExA
#define IsolationAwareMessageBoxIndirect IsolationAwareMessageBoxIndirectA
#define IsolationAwareRegisterClass IsolationAwareRegisterClassA
#define IsolationAwareRegisterClassEx IsolationAwareRegisterClassExA
#define IsolationAwareUnregisterClass IsolationAwareUnregisterClassA

#endif /* UNICODE */

#if !ISOLATION_AWARE_USE_STATIC_LIBRARY
ISOLATION_AWARE_INLINE ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassA(__in const WNDCLASSA*lpWndClass)
{
    ATOM result = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return result;
    __try
    {
        result = RegisterClassA(lpWndClass);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassW(__in const WNDCLASSW*lpWndClass)
{
    ATOM result = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return result;
    __try
    {
        result = RegisterClassW(lpWndClass);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareUnregisterClassA(__in LPCSTR lpClassName,__in_opt HINSTANCE hInstance)
{
    BOOL fResult = FALSE;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return fResult;
    __try
    {
        fResult = UnregisterClassA(lpClassName,hInstance);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (fResult == FALSE);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return fResult;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareUnregisterClassW(__in LPCWSTR lpClassName,__in_opt HINSTANCE hInstance)
{
    BOOL fResult = FALSE;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return fResult;
    __try
    {
        fResult = UnregisterClassW(lpClassName,hInstance);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (fResult == FALSE);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return fResult;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoA(__in_opt HINSTANCE hInstance,__in LPCSTR lpClassName,__out LPWNDCLASSA lpWndClass)
{
    BOOL fResult = FALSE;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return fResult;
    __try
    {
        fResult = GetClassInfoA(hInstance,lpClassName,lpWndClass);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (fResult == FALSE);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return fResult;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpClassName,__out LPWNDCLASSW lpWndClass)
{
    BOOL fResult = FALSE;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return fResult;
    __try
    {
        fResult = GetClassInfoW(hInstance,lpClassName,lpWndClass);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (fResult == FALSE);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return fResult;
}

ISOLATION_AWARE_INLINE ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassExA(__in const WNDCLASSEXA*unnamed1)
{
    ATOM result = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return result;
    __try
    {
        result = RegisterClassExA(unnamed1);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE ATOM IsolationAwarePrivatenCv IsolationAwareRegisterClassExW(__in const WNDCLASSEXW*unnamed1)
{
    ATOM result = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return result;
    __try
    {
        result = RegisterClassExW(unnamed1);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoExA(__in_opt HINSTANCE hInstance,__in LPCSTR lpszClass,__out LPWNDCLASSEXA lpwcx)
{
    BOOL fResult = FALSE;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return fResult;
    __try
    {
        fResult = GetClassInfoExA(hInstance,lpszClass,lpwcx);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (fResult == FALSE);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return fResult;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetClassInfoExW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpszClass,__out LPWNDCLASSEXW lpwcx)
{
    BOOL fResult = FALSE;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return fResult;
    __try
    {
        fResult = GetClassInfoExW(hInstance,lpszClass,lpwcx);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (fResult == FALSE);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return fResult;
}

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareCreateWindowExA(__in DWORD dwExStyle,__in_opt LPCSTR lpClassName,__in_opt LPCSTR lpWindowName,__in DWORD dwStyle,__in int X,__in int Y,__in int nWidth,__in int nHeight,__in_opt HWND hWndParent,__in_opt HMENU hMenu,__in_opt HINSTANCE hInstance,__in_opt LPVOID lpParam)
{
    HWND windowResult = NULL;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return windowResult;
    __try
    {
        windowResult = CreateWindowExA(dwExStyle,lpClassName,lpWindowName,dwStyle,X,Y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (windowResult == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return windowResult;
}

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareCreateWindowExW(__in DWORD dwExStyle,__in_opt LPCWSTR lpClassName,__in_opt LPCWSTR lpWindowName,__in DWORD dwStyle,__in int X,__in int Y,__in int nWidth,__in int nHeight,__in_opt HWND hWndParent,__in_opt HMENU hMenu,__in_opt HINSTANCE hInstance,__in_opt LPVOID lpParam)
{
    HWND windowResult = NULL;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return windowResult;
    __try
    {
        windowResult = CreateWindowExW(dwExStyle,lpClassName,lpWindowName,dwStyle,X,Y,nWidth,nHeight,hWndParent,hMenu,hInstance,lpParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (windowResult == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return windowResult;
}

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogParamA(__in_opt HINSTANCE hInstance,__in LPCSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    HWND windowResult = NULL;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return windowResult;
    __try
    {
        windowResult = CreateDialogParamA(hInstance,lpTemplateName,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (windowResult == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return windowResult;
}

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogParamW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    HWND windowResult = NULL;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return windowResult;
    __try
    {
        windowResult = CreateDialogParamW(hInstance,lpTemplateName,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (windowResult == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return windowResult;
}

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogIndirectParamA(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEA lpTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    HWND windowResult = NULL;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return windowResult;
    __try
    {
        windowResult = CreateDialogIndirectParamA(hInstance,lpTemplate,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (windowResult == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return windowResult;
}

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareCreateDialogIndirectParamW(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEW lpTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    HWND windowResult = NULL;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return windowResult;
    __try
    {
        windowResult = CreateDialogIndirectParamW(hInstance,lpTemplate,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (windowResult == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return windowResult;
}

ISOLATION_AWARE_INLINE INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxParamA(__in_opt HINSTANCE hInstance,__in LPCSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    INT_PTR nResult = -1;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = DialogBoxParamA(hInstance,lpTemplateName,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == -1);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxParamW(__in_opt HINSTANCE hInstance,__in LPCWSTR lpTemplateName,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    INT_PTR nResult = -1;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = DialogBoxParamW(hInstance,lpTemplateName,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == -1);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxIndirectParamA(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEA hDialogTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    INT_PTR nResult = -1;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = DialogBoxIndirectParamA(hInstance,hDialogTemplate,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == -1);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE INT_PTR IsolationAwarePrivatenCv IsolationAwareDialogBoxIndirectParamW(__in_opt HINSTANCE hInstance,__in LPCDLGTEMPLATEW hDialogTemplate,__in_opt HWND hWndParent,__in_opt DLGPROC lpDialogFunc,__in LPARAM dwInitParam)
{
    INT_PTR nResult = -1;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = DialogBoxIndirectParamW(hInstance,hDialogTemplate,hWndParent,lpDialogFunc,dwInitParam);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == -1);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE int IsolationAwarePrivatenCv IsolationAwareMessageBoxA(__in_opt HWND hWnd,__in_opt LPCSTR lpText,__in_opt LPCSTR lpCaption,__in UINT uType)
{
    int nResult = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = MessageBoxA(hWnd,lpText,lpCaption,uType);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE int IsolationAwarePrivatenCv IsolationAwareMessageBoxW(__in_opt HWND hWnd,__in_opt LPCWSTR lpText,__in_opt LPCWSTR lpCaption,__in UINT uType)
{
    int nResult = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = MessageBoxW(hWnd,lpText,lpCaption,uType);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE int IsolationAwarePrivatenCv IsolationAwareMessageBoxExA(__in_opt HWND hWnd,__in_opt LPCSTR lpText,__in_opt LPCSTR lpCaption,__in UINT uType,__in WORD wLanguageId)
{
    int nResult = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = MessageBoxExA(hWnd,lpText,lpCaption,uType,wLanguageId);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE int IsolationAwarePrivatenCv IsolationAwareMessageBoxExW(__in_opt HWND hWnd,__in_opt LPCWSTR lpText,__in_opt LPCWSTR lpCaption,__in UINT uType,__in WORD wLanguageId)
{
    int nResult = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = MessageBoxExW(hWnd,lpText,lpCaption,uType,wLanguageId);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE int IsolationAwarePrivatenCv IsolationAwareMessageBoxIndirectA(__in const MSGBOXPARAMSA*lpmbp)
{
    int nResult = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = MessageBoxIndirectA(lpmbp);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE int IsolationAwarePrivatenCv IsolationAwareMessageBoxIndirectW(__in const MSGBOXPARAMSW*lpmbp)
{
    int nResult = 0 ;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return nResult;
    __try
    {
        nResult = MessageBoxIndirectW(lpmbp);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (nResult == 0 );
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return nResult;
}

ISOLATION_AWARE_INLINE FARPROC IsolationAwarePrivatenCv WinuserIsolationAwarePrivatetRgCebPnQQeRff_HfReQP_QYY(LPCSTR pszProcName)
/* This function is shared by the other stubs in this header. */
{
    static HMODULE s_module;
    const static IsolationAwarePrivatepBAFGnAG_zBqHyr_vAsB
        c = { IsolationAwarePrivatezlybNQyVOeNelJ, L"User32.dll"
#ifdef _M_IX86
             , IsolationAwarePrivatezlybNQyVOeNeln, "User32.dll"
#endif
    };
    static IsolationAwarePrivatezHGnoyr_zBqHyr_vAsB m;

    return IsolationAwarePrivatezltRgCebPnQQeRff(&c, &m, pszProcName);
}

#endif /* ISOLATION_AWARE_USE_STATIC_LIBRARY */

#define CreateDialogIndirectParamA IsolationAwareCreateDialogIndirectParamA
#define CreateDialogIndirectParamW IsolationAwareCreateDialogIndirectParamW
#define CreateDialogParamA IsolationAwareCreateDialogParamA
#define CreateDialogParamW IsolationAwareCreateDialogParamW
#define CreateWindowExA IsolationAwareCreateWindowExA
#define CreateWindowExW IsolationAwareCreateWindowExW
#define DialogBoxIndirectParamA IsolationAwareDialogBoxIndirectParamA
#define DialogBoxIndirectParamW IsolationAwareDialogBoxIndirectParamW
#define DialogBoxParamA IsolationAwareDialogBoxParamA
#define DialogBoxParamW IsolationAwareDialogBoxParamW
 /* GetClassInfoA skipped, as it is a popular C++ member function name. */
#define GetClassInfoExA IsolationAwareGetClassInfoExA
#define GetClassInfoExW IsolationAwareGetClassInfoExW
 /* GetClassInfoW skipped, as it is a popular C++ member function name. */
 /* MessageBoxA skipped, as it is a popular C++ member function name. */
#define MessageBoxExA IsolationAwareMessageBoxExA
#define MessageBoxExW IsolationAwareMessageBoxExW
#define MessageBoxIndirectA IsolationAwareMessageBoxIndirectA
#define MessageBoxIndirectW IsolationAwareMessageBoxIndirectW
 /* MessageBoxW skipped, as it is a popular C++ member function name. */
#define RegisterClassA IsolationAwareRegisterClassA
#define RegisterClassExA IsolationAwareRegisterClassExA
#define RegisterClassExW IsolationAwareRegisterClassExW
#define RegisterClassW IsolationAwareRegisterClassW
#define UnregisterClassA IsolationAwareUnregisterClassA
#define UnregisterClassW IsolationAwareUnregisterClassW

#endif /* ISOLATION_AWARE_ENABLED */
#endif /* RC */


#if defined(__cplusplus)
} /* __cplusplus */
#endif

