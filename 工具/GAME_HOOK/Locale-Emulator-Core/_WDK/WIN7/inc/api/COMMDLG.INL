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
FARPROC IsolationAwarePrivatenCv CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY(LPCSTR pszProcName);

#endif /* ISOLATION_AWARE_USE_STATIC_LIBRARY */
BOOL IsolationAwarePrivatenCv IsolationAwareGetOpenFileNameA(LPOPENFILENAMEA unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareGetOpenFileNameW(LPOPENFILENAMEW unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareGetSaveFileNameA(LPOPENFILENAMEA unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareGetSaveFileNameW(LPOPENFILENAMEW unnamed1);
short IsolationAwarePrivatenCv IsolationAwareGetFileTitleA(LPCSTR unnamed1,__out_ecount(cchSize) LPSTR Buf,__in WORD cchSize);
short IsolationAwarePrivatenCv IsolationAwareGetFileTitleW(LPCWSTR unnamed1,__out_ecount(cchSize) LPWSTR Buf,__in WORD cchSize);
BOOL IsolationAwarePrivatenCv IsolationAwareChooseColorA(LPCHOOSECOLORA unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareChooseColorW(LPCHOOSECOLORW unnamed1);
HWND IsolationAwarePrivatenCv IsolationAwareFindTextA(LPFINDREPLACEA unnamed1);
HWND IsolationAwarePrivatenCv IsolationAwareFindTextW(LPFINDREPLACEW unnamed1);
HWND IsolationAwarePrivatenCv IsolationAwareReplaceTextA(LPFINDREPLACEA unnamed1);
HWND IsolationAwarePrivatenCv IsolationAwareReplaceTextW(LPFINDREPLACEW unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareChooseFontA(LPCHOOSEFONTA unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwareChooseFontW(LPCHOOSEFONTW unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwarePrintDlgA(__inout LPPRINTDLGA pPD);
BOOL IsolationAwarePrivatenCv IsolationAwarePrintDlgW(__inout LPPRINTDLGW pPD);
#if defined(STDMETHOD) && (WINVER >= 0x0500)
HRESULT IsolationAwarePrivatenCv IsolationAwarePrintDlgExA(__inout LPPRINTDLGEXA pPD);
HRESULT IsolationAwarePrivatenCv IsolationAwarePrintDlgExW(__inout LPPRINTDLGEXW pPD);
#endif /* defined(STDMETHOD) && (WINVER >= 0x0500) */
DWORD IsolationAwarePrivatenCv IsolationAwareCommDlgExtendedError(void);
BOOL IsolationAwarePrivatenCv IsolationAwarePageSetupDlgA(LPPAGESETUPDLGA unnamed1);
BOOL IsolationAwarePrivatenCv IsolationAwarePageSetupDlgW(LPPAGESETUPDLGW unnamed1);

ISOLATION_AWARE_INLINE HRESULT CommdlgIsolationAwarePrivateJVaQPGbueRfhYg(void)
{
    DWORD dwLastError = GetLastError();
    if (dwLastError == NO_ERROR)
        dwLastError = ERROR_INTERNAL_ERROR;
    return HRESULT_FROM_WIN32(dwLastError);
}

#if defined(UNICODE)

#define IsolationAwareChooseColor IsolationAwareChooseColorW
#define IsolationAwareChooseFont IsolationAwareChooseFontW
#define IsolationAwareFindText IsolationAwareFindTextW
#define IsolationAwareGetFileTitle IsolationAwareGetFileTitleW
#define IsolationAwareGetOpenFileName IsolationAwareGetOpenFileNameW
#define IsolationAwareGetSaveFileName IsolationAwareGetSaveFileNameW
#define IsolationAwarePageSetupDlg IsolationAwarePageSetupDlgW
#define IsolationAwarePrintDlg IsolationAwarePrintDlgW
#define IsolationAwarePrintDlgEx IsolationAwarePrintDlgExW
#define IsolationAwareReplaceText IsolationAwareReplaceTextW

#else /* UNICODE */

#define IsolationAwareChooseColor IsolationAwareChooseColorA
#define IsolationAwareChooseFont IsolationAwareChooseFontA
#define IsolationAwareFindText IsolationAwareFindTextA
#define IsolationAwareGetFileTitle IsolationAwareGetFileTitleA
#define IsolationAwareGetOpenFileName IsolationAwareGetOpenFileNameA
#define IsolationAwareGetSaveFileName IsolationAwareGetSaveFileNameA
#define IsolationAwarePageSetupDlg IsolationAwarePageSetupDlgA
#define IsolationAwarePrintDlg IsolationAwarePrintDlgA
#define IsolationAwarePrintDlgEx IsolationAwarePrintDlgExA
#define IsolationAwareReplaceText IsolationAwareReplaceTextA

#endif /* UNICODE */

#if !ISOLATION_AWARE_USE_STATIC_LIBRARY
ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetOpenFileNameA(LPOPENFILENAMEA unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPOPENFILENAMEA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("GetOpenFileNameA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetOpenFileNameW(LPOPENFILENAMEW unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPOPENFILENAMEW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("GetOpenFileNameW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetSaveFileNameA(LPOPENFILENAMEA unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPOPENFILENAMEA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("GetSaveFileNameA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareGetSaveFileNameW(LPOPENFILENAMEW unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPOPENFILENAMEW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("GetSaveFileNameW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE short IsolationAwarePrivatenCv IsolationAwareGetFileTitleA(LPCSTR unnamed1,__out_ecount(cchSize) LPSTR Buf,__in WORD cchSize)
{
    short nResult = -1;
    typedef short (WINAPI* PFN)(LPCSTR unnamed1,__out_ecount(cchSize) LPSTR Buf,__in WORD cchSize);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("GetFileTitleA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        nResult = __IsolationAware_pfn(unnamed1,Buf,cchSize);
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

ISOLATION_AWARE_INLINE short IsolationAwarePrivatenCv IsolationAwareGetFileTitleW(LPCWSTR unnamed1,__out_ecount(cchSize) LPWSTR Buf,__in WORD cchSize)
{
    short nResult = -1;
    typedef short (WINAPI* PFN)(LPCWSTR unnamed1,__out_ecount(cchSize) LPWSTR Buf,__in WORD cchSize);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("GetFileTitleW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        nResult = __IsolationAware_pfn(unnamed1,Buf,cchSize);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareChooseColorA(LPCHOOSECOLORA unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPCHOOSECOLORA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("ChooseColorA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareChooseColorW(LPCHOOSECOLORW unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPCHOOSECOLORW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("ChooseColorW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareFindTextA(LPFINDREPLACEA unnamed1)
{
    HWND windowResult = NULL;
    typedef HWND (WINAPI* PFN)(LPFINDREPLACEA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("FindTextA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        windowResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareFindTextW(LPFINDREPLACEW unnamed1)
{
    HWND windowResult = NULL;
    typedef HWND (WINAPI* PFN)(LPFINDREPLACEW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("FindTextW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        windowResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareReplaceTextA(LPFINDREPLACEA unnamed1)
{
    HWND windowResult = NULL;
    typedef HWND (WINAPI* PFN)(LPFINDREPLACEA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("ReplaceTextA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        windowResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE HWND IsolationAwarePrivatenCv IsolationAwareReplaceTextW(LPFINDREPLACEW unnamed1)
{
    HWND windowResult = NULL;
    typedef HWND (WINAPI* PFN)(LPFINDREPLACEW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("ReplaceTextW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        windowResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareChooseFontA(LPCHOOSEFONTA unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPCHOOSEFONTA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("ChooseFontA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareChooseFontW(LPCHOOSEFONTW unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPCHOOSEFONTW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("ChooseFontW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwarePrintDlgA(__inout LPPRINTDLGA pPD)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(__inout LPPRINTDLGA pPD);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("PrintDlgA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(pPD);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwarePrintDlgW(__inout LPPRINTDLGW pPD)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(__inout LPPRINTDLGW pPD);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("PrintDlgW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(pPD);
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

#if defined(STDMETHOD) && (WINVER >= 0x0500)

ISOLATION_AWARE_INLINE HRESULT IsolationAwarePrivatenCv IsolationAwarePrintDlgExA(__inout LPPRINTDLGEXA pPD)
{
    HRESULT result = S_OK;
    typedef HRESULT (WINAPI* PFN)(__inout LPPRINTDLGEXA pPD);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return CommdlgIsolationAwarePrivateJVaQPGbueRfhYg();
    __try
    {
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("PrintDlgExA");
            if (__IsolationAware_pfn == NULL)
            {
                result = CommdlgIsolationAwarePrivateJVaQPGbueRfhYg();
                __leave;
            }
            s_pfn = __IsolationAware_pfn;
        }
        result = __IsolationAware_pfn(pPD);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE HRESULT IsolationAwarePrivatenCv IsolationAwarePrintDlgExW(__inout LPPRINTDLGEXW pPD)
{
    HRESULT result = S_OK;
    typedef HRESULT (WINAPI* PFN)(__inout LPPRINTDLGEXW pPD);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    ULONG_PTR ulpCookie = 0;
    const BOOL fActivateActCtxSuccess =
#ifdef _M_IX86
        IsolationAwarePrivateT_SqbjaYRiRY ||
#endif
        IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
    if (!fActivateActCtxSuccess)
        return CommdlgIsolationAwarePrivateJVaQPGbueRfhYg();
    __try
    {
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("PrintDlgExW");
            if (__IsolationAware_pfn == NULL)
            {
                result = CommdlgIsolationAwarePrivateJVaQPGbueRfhYg();
                __leave;
            }
            s_pfn = __IsolationAware_pfn;
        }
        result = __IsolationAware_pfn(pPD);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
        }
    }
    return result;
}

#endif /* defined(STDMETHOD) && (WINVER >= 0x0500) */

ISOLATION_AWARE_INLINE DWORD IsolationAwarePrivatenCv IsolationAwareCommDlgExtendedError(void)
{
    DWORD nResult = 0 ;
    typedef DWORD (WINAPI* PFN)(void);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("CommDlgExtendedError");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        nResult = __IsolationAware_pfn();
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwarePageSetupDlgA(LPPAGESETUPDLGA unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPPAGESETUPDLGA unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("PageSetupDlgA");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwarePageSetupDlgW(LPPAGESETUPDLGW unnamed1)
{
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(LPPAGESETUPDLGW unnamed1);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
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
        if (__IsolationAware_pfn == NULL)
        {
            __IsolationAware_pfn = (PFN) CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY("PageSetupDlgW");
            if (__IsolationAware_pfn == NULL)
                __leave;
            s_pfn = __IsolationAware_pfn;
        }
        fResult = __IsolationAware_pfn(unnamed1);
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

ISOLATION_AWARE_INLINE FARPROC IsolationAwarePrivatenCv CommdlgIsolationAwarePrivatetRgCebPnQQeRff_pbZQYTQP_QYY(LPCSTR pszProcName)
/* This function is shared by the other stubs in this header. */
{
    FARPROC proc = NULL;
    static HMODULE s_module;
    BOOL fActivateActCtxSuccess = FALSE;
    ULONG_PTR ulpCookie = 0;
#ifndef _M_CEE_PURE
    const static IsolationAwarePrivatepBAFGnAG_zBqHyr_vAsB
        c = { IsolationAwarePrivatezlybNQyVOeNelJ, L"Comdlg32.dll"
#ifdef _M_IX86
             , IsolationAwarePrivatezlybNQyVOeNeln, "Comdlg32.dll"
#endif
    };
#else
    static IsolationAwarePrivatepBAFGnAG_zBqHyr_vAsB c;
    c.WinbaseIsolationAwarePrivateybNQJ = IsolationAwarePrivatezlybNQyVOeNelJ;
    c.WinbaseIsolationAwarePrivateANZRJ = L"Comdlg32.dll";
#ifdef _M_IX86
    c.WinbaseIsolationAwarePrivateybNQn = IsolationAwarePrivatezlybNQyVOeNeln;
    c.WinbaseIsolationAwarePrivateANZRn = "Comdlg32.dll";
#endif
#endif
    static IsolationAwarePrivatezHGnoyr_zBqHyr_vAsB m;

    __try
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            fActivateActCtxSuccess = IsolationAwarePrivatenPgViNgRzlnPgpgk(&ulpCookie);
            if (!fActivateActCtxSuccess)
                __leave;
        }
        proc = IsolationAwarePrivatezltRgCebPnQQeRff(&c, &m, pszProcName);
    }
    __finally
    {
        if (
#ifdef _M_IX86
            !IsolationAwarePrivateT_SqbjaYRiRY &&
#endif
            fActivateActCtxSuccess)
        {
            const DWORD dwLastError = (proc == NULL) ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (proc == NULL)
                SetLastError(dwLastError);
        }
    }
    return proc;
}

#endif /* ISOLATION_AWARE_USE_STATIC_LIBRARY */

#define ChooseColorA IsolationAwareChooseColorA
#define ChooseColorW IsolationAwareChooseColorW
#define ChooseFontA IsolationAwareChooseFontA
#define ChooseFontW IsolationAwareChooseFontW
#define CommDlgExtendedError IsolationAwareCommDlgExtendedError
#define FindTextA IsolationAwareFindTextA
#define FindTextW IsolationAwareFindTextW
#define GetFileTitleA IsolationAwareGetFileTitleA
#define GetFileTitleW IsolationAwareGetFileTitleW
#define GetOpenFileNameA IsolationAwareGetOpenFileNameA
#define GetOpenFileNameW IsolationAwareGetOpenFileNameW
#define GetSaveFileNameA IsolationAwareGetSaveFileNameA
#define GetSaveFileNameW IsolationAwareGetSaveFileNameW
#define PageSetupDlgA IsolationAwarePageSetupDlgA
#define PageSetupDlgW IsolationAwarePageSetupDlgW
#define PrintDlgA IsolationAwarePrintDlgA
#define PrintDlgExA IsolationAwarePrintDlgExA
#define PrintDlgExW IsolationAwarePrintDlgExW
#define PrintDlgW IsolationAwarePrintDlgW
#define ReplaceTextA IsolationAwareReplaceTextA
#define ReplaceTextW IsolationAwareReplaceTextW

#endif /* ISOLATION_AWARE_ENABLED */
#endif /* RC */


#if defined(__cplusplus)
} /* __cplusplus */
#endif

