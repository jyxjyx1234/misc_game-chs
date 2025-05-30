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


#ifndef _M_CEE_PURE
#define IsolationAwarePrivatenCv WINAPI
#else
#define IsolationAwarePrivatenCv __clrcall
#endif

/* These wrappers prevent warnings about taking the addresses of __declspec(dllimport) functions. */
#ifdef _M_IX86
ISOLATION_AWARE_INLINE HMODULE IsolationAwarePrivatenCv IsolationAwarePrivatezlybNQyVOeNeln(__in PCSTR s) { return LoadLibraryA(s); }
ISOLATION_AWARE_INLINE HMODULE IsolationAwarePrivatenCv IsolationAwarePrivatezltRgzbQhYRuNaQYRn(__in PCSTR s) { return GetModuleHandleA(s); }
#endif
ISOLATION_AWARE_INLINE HMODULE IsolationAwarePrivatenCv IsolationAwarePrivatezlybNQyVOeNelJ(__in PCWSTR s) { return LoadLibraryW(s); }
ISOLATION_AWARE_INLINE HMODULE IsolationAwarePrivatenCv IsolationAwarePrivatezltRgzbQhYRuNaQYRJ(__in PCWSTR s) { return GetModuleHandleW(s); }

BOOL
IsolationAwarePrivatenCv
IsolationAwarePrivatenPgViNgRzlnPgpgk(
    ULONG_PTR* pulpCookie
    );

/*
These are private.
*/
__declspec(selectany) HANDLE WinbaseIsolationAwarePrivateT_UnPgpgk = INVALID_HANDLE_VALUE;
#ifdef _M_IX86
__declspec(selectany) BOOL   IsolationAwarePrivateT_SqbjaYRiRY = FALSE;
#endif
__declspec(selectany) BOOL   WinbaseIsolationAwarePrivateT_SpeRNgRQnPgpgk = FALSE;
__declspec(selectany) BOOL   WinbaseIsolationAwarePrivateT_SpYRNahcpNYYRQ = FALSE;

FARPROC IsolationAwarePrivatenCv WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY(LPCSTR pszProcName);

#endif /* ISOLATION_AWARE_USE_STATIC_LIBRARY */
__out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryA(__in LPCSTR lpLibFileName);
__out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryW(__in LPCWSTR lpLibFileName);
__out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryExA(__in LPCSTR lpLibFileName,__reserved HANDLE hFile,__in DWORD dwFlags);
__out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryExW(__in LPCWSTR lpLibFileName,__reserved HANDLE hFile,__in DWORD dwFlags);
__out HANDLE IsolationAwarePrivatenCv IsolationAwareCreateActCtxW(__in PCACTCTXW pActCtx);
void IsolationAwarePrivatenCv IsolationAwareReleaseActCtx(__inout HANDLE hActCtx);
BOOL IsolationAwarePrivatenCv IsolationAwareActivateActCtx(__inout_opt HANDLE hActCtx,__out ULONG_PTR*lpCookie);
BOOL IsolationAwarePrivatenCv IsolationAwareDeactivateActCtx(__in DWORD dwFlags,__in ULONG_PTR ulCookie);
BOOL IsolationAwarePrivatenCv IsolationAwareFindActCtxSectionStringW(__in DWORD dwFlags,__reserved const GUID*lpExtensionGuid,__in ULONG ulSectionId,__in LPCWSTR lpStringToFind,__out PACTCTX_SECTION_KEYED_DATA ReturnedData);
BOOL IsolationAwarePrivatenCv IsolationAwareQueryActCtxW(__in DWORD dwFlags,__in HANDLE hActCtx,__in_opt PVOID pvSubInstance,__in ULONG ulInfoClass,__out_bcount_part_opt(cbBuffer,*pcbWrittenOrRequired) PVOID pvBuffer,__in SIZE_T cbBuffer,__out_opt SIZE_T*pcbWrittenOrRequired);

#if defined(UNICODE)

#define IsolationAwareLoadLibrary IsolationAwareLoadLibraryW
#define IsolationAwareLoadLibraryEx IsolationAwareLoadLibraryExW

#else /* UNICODE */

#define IsolationAwareLoadLibrary IsolationAwareLoadLibraryA
#define IsolationAwareLoadLibraryEx IsolationAwareLoadLibraryExA

#endif /* UNICODE */

#if !ISOLATION_AWARE_USE_STATIC_LIBRARY
ISOLATION_AWARE_INLINE __out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryA(__in LPCSTR lpLibFileName)
{
    __out_opt HMODULE result = NULL;
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
        result = LoadLibraryA(lpLibFileName);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE __out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryW(__in LPCWSTR lpLibFileName)
{
    __out_opt HMODULE result = NULL;
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
        result = LoadLibraryW(lpLibFileName);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE __out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryExA(__in LPCSTR lpLibFileName,__reserved HANDLE hFile,__in DWORD dwFlags)
{
    __out_opt HMODULE result = NULL;
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
        result = LoadLibraryExA(lpLibFileName,hFile,dwFlags);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE __out_opt HMODULE IsolationAwarePrivatenCv IsolationAwareLoadLibraryExW(__in LPCWSTR lpLibFileName,__reserved HANDLE hFile,__in DWORD dwFlags)
{
    __out_opt HMODULE result = NULL;
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
        result = LoadLibraryExW(lpLibFileName,hFile,dwFlags);
    }
    __finally
    {
#ifdef _M_IX86
        if (!IsolationAwarePrivateT_SqbjaYRiRY)
#endif
        {
            const BOOL fPreserveLastError = (result == NULL);
            const DWORD dwLastError = fPreserveLastError ? GetLastError() : NO_ERROR;
            (void)IsolationAwareDeactivateActCtx(0, ulpCookie);
            if (fPreserveLastError)
                SetLastError(dwLastError);
        }
    }
    return result;
}

ISOLATION_AWARE_INLINE __out HANDLE IsolationAwarePrivatenCv IsolationAwareCreateActCtxW(__in PCACTCTXW pActCtx)
{
#ifdef _WIN64
    return CreateActCtxW(pActCtx);
#else
    __out HANDLE result = INVALID_HANDLE_VALUE;
    typedef __out HANDLE (WINAPI* PFN)(__in PCACTCTXW pActCtx);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    if (__IsolationAware_pfn == NULL)
    {
        __IsolationAware_pfn = (PFN) WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("CreateActCtxW");
        if (__IsolationAware_pfn == NULL)
            return result;
        s_pfn = __IsolationAware_pfn;
    }
    result = __IsolationAware_pfn(pActCtx);
    return result;
#endif
}

ISOLATION_AWARE_INLINE void IsolationAwarePrivatenCv IsolationAwareReleaseActCtx(__inout HANDLE hActCtx)
{
#ifdef _WIN64
    ReleaseActCtx(hActCtx);
#else
    typedef void (WINAPI* PFN)(__inout HANDLE hActCtx);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    if (__IsolationAware_pfn == NULL)
    {
        __IsolationAware_pfn = (PFN) WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("ReleaseActCtx");
        if (__IsolationAware_pfn == NULL)
            return;
        s_pfn = __IsolationAware_pfn;
    }
    __IsolationAware_pfn(hActCtx);
    return;
#endif
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareActivateActCtx(__inout_opt HANDLE hActCtx,__out ULONG_PTR*lpCookie)
{
#ifdef _WIN64
    return ActivateActCtx(hActCtx,lpCookie);
#else
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(__inout_opt HANDLE hActCtx,__out ULONG_PTR*lpCookie);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    if (__IsolationAware_pfn == NULL)
    {
        __IsolationAware_pfn = (PFN) WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("ActivateActCtx");
        if (__IsolationAware_pfn == NULL)
            return fResult;
        s_pfn = __IsolationAware_pfn;
    }
    fResult = __IsolationAware_pfn(hActCtx,lpCookie);
    return fResult;
#endif
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareDeactivateActCtx(__in DWORD dwFlags,__in ULONG_PTR ulCookie)
{
#ifdef _WIN64
    return DeactivateActCtx(dwFlags,ulCookie);
#else
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(__in DWORD dwFlags,__in ULONG_PTR ulCookie);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    if (__IsolationAware_pfn == NULL)
    {
        __IsolationAware_pfn = (PFN) WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("DeactivateActCtx");
        if (__IsolationAware_pfn == NULL)
            return fResult;
        s_pfn = __IsolationAware_pfn;
    }
    fResult = __IsolationAware_pfn(dwFlags,ulCookie);
    return fResult;
#endif
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareFindActCtxSectionStringW(__in DWORD dwFlags,__reserved const GUID*lpExtensionGuid,__in ULONG ulSectionId,__in LPCWSTR lpStringToFind,__out PACTCTX_SECTION_KEYED_DATA ReturnedData)
{
#ifdef _WIN64
    return FindActCtxSectionStringW(dwFlags,lpExtensionGuid,ulSectionId,lpStringToFind,ReturnedData);
#else
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(__in DWORD dwFlags,__reserved const GUID*lpExtensionGuid,__in ULONG ulSectionId,__in LPCWSTR lpStringToFind,__out PACTCTX_SECTION_KEYED_DATA ReturnedData);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    if (__IsolationAware_pfn == NULL)
    {
        __IsolationAware_pfn = (PFN) WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("FindActCtxSectionStringW");
        if (__IsolationAware_pfn == NULL)
            return fResult;
        s_pfn = __IsolationAware_pfn;
    }
    fResult = __IsolationAware_pfn(dwFlags,lpExtensionGuid,ulSectionId,lpStringToFind,ReturnedData);
    return fResult;
#endif
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv IsolationAwareQueryActCtxW(__in DWORD dwFlags,__in HANDLE hActCtx,__in_opt PVOID pvSubInstance,__in ULONG ulInfoClass,__out_bcount_part_opt(cbBuffer,*pcbWrittenOrRequired) PVOID pvBuffer,__in SIZE_T cbBuffer,__out_opt SIZE_T*pcbWrittenOrRequired)
{
#ifdef _WIN64
    return QueryActCtxW(dwFlags,hActCtx,pvSubInstance,ulInfoClass,pvBuffer,cbBuffer,pcbWrittenOrRequired);
#else
    BOOL fResult = FALSE;
    typedef BOOL (WINAPI* PFN)(__in DWORD dwFlags,__in HANDLE hActCtx,__in_opt PVOID pvSubInstance,__in ULONG ulInfoClass,__out_bcount_part_opt(cbBuffer,*pcbWrittenOrRequired) PVOID pvBuffer,__in SIZE_T cbBuffer,__out_opt SIZE_T*pcbWrittenOrRequired);
    static PFN s_pfn;
    PFN __IsolationAware_pfn = s_pfn;
    if (__IsolationAware_pfn == NULL)
    {
        __IsolationAware_pfn = (PFN) WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("QueryActCtxW");
        if (__IsolationAware_pfn == NULL)
            return fResult;
        s_pfn = __IsolationAware_pfn;
    }
    fResult = __IsolationAware_pfn(dwFlags,hActCtx,pvSubInstance,ulInfoClass,pvBuffer,cbBuffer,pcbWrittenOrRequired);
    return fResult;
#endif
}



#define WINBASE_NUMBER_OF(x) (sizeof(x) / sizeof((x)[0]))

typedef struct IsolationAwarePrivate_pBAFGnAG_zBqHyr_vAsB {
    HMODULE (IsolationAwarePrivatenCv * WinbaseIsolationAwarePrivateybNQJ)(__in PCWSTR w);
    PCWSTR WinbaseIsolationAwarePrivateANZRJ;
#ifdef _M_IX86
    HMODULE (IsolationAwarePrivatenCv * WinbaseIsolationAwarePrivateybNQn)(__in PCSTR w);
    PCSTR  WinbaseIsolationAwarePrivateANZRn;
#endif
} IsolationAwarePrivatepBAFGnAG_zBqHyr_vAsB;
typedef const IsolationAwarePrivatepBAFGnAG_zBqHyr_vAsB *IsolationAwarePrivateCpBAFGnAG_zBqHyr_vAsB;

typedef struct IsolationAwarePrivate_zHGnoyr_zBqHyr_vAsB {
    HMODULE WinbaseIsolationAwarePrivateybNQRQzbQhYR;
} IsolationAwarePrivatezHGnoyr_zBqHyr_vAsB, *IsolationAwarePrivateCzHGnoyr_zBqHyr_vAsB;

ISOLATION_AWARE_INLINE FARPROC IsolationAwarePrivatenCv
IsolationAwarePrivatezltRgCebPnQQeRff(
    __in IsolationAwarePrivateCpBAFGnAG_zBqHyr_vAsB c,
    __inout IsolationAwarePrivateCzHGnoyr_zBqHyr_vAsB m,
    __in PCSTR ProcName
    )
{
    FARPROC Proc = NULL;
    HMODULE hModule;
#ifdef _M_IX86
    static HMODULE s_moduleUnicows;
    static BOOL s_fUnicowsInitialized;

    /*
       get unicows.dll loaded on-demand
    */
    if (!s_fUnicowsInitialized)
    {
        if ((GetVersion() & 0x80000000) != 0)
        {
            GetFileAttributesW(L"???.???");
            s_moduleUnicows = GetModuleHandleA("Unicows.dll");
        }
        s_fUnicowsInitialized = TRUE;
    }

    /*
       always call GetProcAddress(unicows) before the usual .dll
    */
    if (s_moduleUnicows != NULL)
    {
        Proc = GetProcAddress(s_moduleUnicows, ProcName);
        if (Proc != NULL)
            goto Exit;
    }
#endif
    hModule = m->WinbaseIsolationAwarePrivateybNQRQzbQhYR;
    if (hModule == NULL)
    {
#ifdef _M_IX86
        hModule = (((GetVersion() & 0x80000000) != 0) ? (*c->WinbaseIsolationAwarePrivateybNQn)(c->WinbaseIsolationAwarePrivateANZRn) : (*c->WinbaseIsolationAwarePrivateybNQJ)(c->WinbaseIsolationAwarePrivateANZRJ));
#else
        hModule = (*c->WinbaseIsolationAwarePrivateybNQJ)(c->WinbaseIsolationAwarePrivateANZRJ);
#endif
        if (hModule == NULL)
            goto Exit;
        m->WinbaseIsolationAwarePrivateybNQRQzbQhYR = hModule;
    }
    Proc = GetProcAddress(hModule, ProcName);
Exit:
    return Proc;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv
WinbaseIsolationAwarePrivatetRgzlnPgpgk(void)
/*
The correctness of this function depends on it being statically
linked into its clients.

This function is private to functions present in this header.
Do not use it.
*/
{
    BOOL fResult = FALSE;
    ACTIVATION_CONTEXT_BASIC_INFORMATION actCtxBasicInfo;
    ULONG_PTR ulpCookie = 0;

#ifdef _M_IX86
    if (IsolationAwarePrivateT_SqbjaYRiRY)
    {
        fResult = TRUE;
        goto Exit;
    }
#endif

    if (WinbaseIsolationAwarePrivateT_UnPgpgk != INVALID_HANDLE_VALUE)
    {
        fResult = TRUE;
        goto Exit;
    }

    if (!IsolationAwareQueryActCtxW(
        QUERY_ACTCTX_FLAG_ACTCTX_IS_ADDRESS
        | QUERY_ACTCTX_FLAG_NO_ADDREF,
        &WinbaseIsolationAwarePrivateT_UnPgpgk,
        NULL,
        ActivationContextBasicInformation,
        &actCtxBasicInfo,
        sizeof(actCtxBasicInfo),
        NULL))
        goto Exit;

    /*
    If QueryActCtxW returns NULL, try CreateActCtx(3).
    */
    if (actCtxBasicInfo.hActCtx == NULL)
    {
        ACTCTXW actCtx;
        WCHAR rgchFullModulePath[MAX_PATH + 2];
        DWORD dw;
        HMODULE hmodSelf;
#ifdef _M_IX86
        PGET_MODULE_HANDLE_EXW pfnGetModuleHandleExW = (PGET_MODULE_HANDLE_EXW)WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY("GetModuleHandleExW");
        if (pfnGetModuleHandleExW == NULL)
            goto Exit;
#endif
        if (!
#ifdef _M_IX86
            (*pfnGetModuleHandleExW)
#else
            GetModuleHandleExW
#endif
            (     GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT
                | GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS,
                (LPCWSTR)&WinbaseIsolationAwarePrivateT_UnPgpgk,
                &hmodSelf))
            goto Exit;

        rgchFullModulePath[WINBASE_NUMBER_OF(rgchFullModulePath) - 1] = 0;
        rgchFullModulePath[WINBASE_NUMBER_OF(rgchFullModulePath) - 2] = 0;
        dw = GetModuleFileNameW(hmodSelf, rgchFullModulePath, WINBASE_NUMBER_OF(rgchFullModulePath) - 1);
        if (dw == 0)
            goto Exit;
        if (rgchFullModulePath[WINBASE_NUMBER_OF(rgchFullModulePath) - 2] != 0)
        {
            SetLastError(ERROR_BUFFER_OVERFLOW);
            goto Exit;
        }

        actCtx.cbSize = sizeof(actCtx);
        actCtx.dwFlags = ACTCTX_FLAG_RESOURCE_NAME_VALID | ACTCTX_FLAG_HMODULE_VALID;
        actCtx.lpSource = rgchFullModulePath;
        actCtx.lpResourceName = (LPCWSTR)(ULONG_PTR)3;
        actCtx.hModule = hmodSelf;
        actCtxBasicInfo.hActCtx = IsolationAwareCreateActCtxW(&actCtx);
        if (actCtxBasicInfo.hActCtx == INVALID_HANDLE_VALUE)
        {
            const DWORD dwLastError = GetLastError();
            if ((dwLastError != ERROR_RESOURCE_DATA_NOT_FOUND) &&
                (dwLastError != ERROR_RESOURCE_TYPE_NOT_FOUND) &&
                (dwLastError != ERROR_RESOURCE_LANG_NOT_FOUND) &&
                (dwLastError != ERROR_RESOURCE_NAME_NOT_FOUND))
                goto Exit;

            actCtxBasicInfo.hActCtx = NULL;
        }

        WinbaseIsolationAwarePrivateT_SpeRNgRQnPgpgk = TRUE;
    }

    WinbaseIsolationAwarePrivateT_UnPgpgk = actCtxBasicInfo.hActCtx;

#define ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION              (2)

    if (IsolationAwareActivateActCtx(actCtxBasicInfo.hActCtx, &ulpCookie))
    {
        __try
        {
            ACTCTX_SECTION_KEYED_DATA actCtxSectionKeyedData;

            actCtxSectionKeyedData.cbSize = sizeof(actCtxSectionKeyedData);
            if (IsolationAwareFindActCtxSectionStringW(0, NULL, ACTIVATION_CONTEXT_SECTION_DLL_REDIRECTION, L"Comctl32.dll", &actCtxSectionKeyedData))
            {
                /* get button, edit, etc. registered */
                LoadLibraryW(L"Comctl32.dll");
            }
        }
        __finally
        {
            IsolationAwareDeactivateActCtx(0, ulpCookie);
        }
    }

    fResult = TRUE;
Exit:
    return fResult;
}

ISOLATION_AWARE_INLINE BOOL IsolationAwarePrivatenCv
IsolationAwareInit(void)
/*
The correctness of this function depends on it being statically
linked into its clients.

Call this from DllMain(DLL_PROCESS_ATTACH) if you use id 3 and wish to avoid a race condition that
    can cause an hActCtx leak.
Call this from your .exe's initialization if you use id 3 and wish to avoid a race condition that
    can cause an hActCtx leak.
If you use id 2, this function fetches data from your .dll
    that you do not need to worry about cleaning up.
*/
{
    return WinbaseIsolationAwarePrivatetRgzlnPgpgk();
}

ISOLATION_AWARE_INLINE void IsolationAwarePrivatenCv
IsolationAwareCleanup(void)
/*
Call this from DllMain(DLL_PROCESS_DETACH), if you use id 3, to avoid a leak.
Call this from your .exe's cleanup to possibly avoid apparent (but not actual) leaks, if use id 3.
This function does nothing, safely, if you use id 2.
*/
{
    HANDLE hActCtx;

    if (WinbaseIsolationAwarePrivateT_SpYRNahcpNYYRQ)
        return;

    /* IsolationAware* calls made from here on out will OutputDebugString
       and use the process default activation context instead of id 3 or will
       continue to successfully use id 2 (but still OutputDebugString).
    */
    WinbaseIsolationAwarePrivateT_SpYRNahcpNYYRQ = TRUE;
    
    /* There is no cleanup to do if we did not CreateActCtx but only called QueryActCtx.
    */
    if (!WinbaseIsolationAwarePrivateT_SpeRNgRQnPgpgk)
        return;

    hActCtx = WinbaseIsolationAwarePrivateT_UnPgpgk;
    WinbaseIsolationAwarePrivateT_UnPgpgk = NULL; /* process default */

    if (hActCtx == INVALID_HANDLE_VALUE)
        return;
    if (hActCtx == NULL)
        return;
    IsolationAwareReleaseActCtx(hActCtx);
}

ISOLATION_AWARE_INLINE
BOOL
IsolationAwarePrivatenCv
IsolationAwarePrivatenPgViNgRzlnPgpgk(
    ULONG_PTR* pulpCookie
    )
/*
This function is private to functions present in this header and other headers.
*/
{
    BOOL fResult = FALSE;

    if (WinbaseIsolationAwarePrivateT_SpYRNahcpNYYRQ)
    {
        const static char debugString[] = "IsolationAware function called after IsolationAwareCleanup\n";
        OutputDebugStringA(debugString);
    }

#ifdef _M_IX86
    if (IsolationAwarePrivateT_SqbjaYRiRY)
    {
        fResult = TRUE;
        goto Exit;
    }
#endif

    /* Do not call Init if Cleanup has been called. */
    if (!WinbaseIsolationAwarePrivateT_SpYRNahcpNYYRQ)
    {
        if (!WinbaseIsolationAwarePrivatetRgzlnPgpgk())
            goto Exit;
    }
    /* If Cleanup has been called and id3 was in use, this will activate NULL. */
    if (!IsolationAwareActivateActCtx(WinbaseIsolationAwarePrivateT_UnPgpgk, pulpCookie))
        goto Exit;

    fResult = TRUE;
Exit:
#ifdef _M_IX86
    if (!fResult)
    {
        const DWORD dwLastError = GetLastError();
        if (dwLastError == ERROR_PROC_NOT_FOUND
            || dwLastError == ERROR_MOD_NOT_FOUND
            || dwLastError == ERROR_CALL_NOT_IMPLEMENTED)
        {
            IsolationAwarePrivateT_SqbjaYRiRY = TRUE;
            fResult = TRUE;
        }
    }
#endif
    return fResult;
}

#undef WINBASE_NUMBER_OF

ISOLATION_AWARE_INLINE FARPROC IsolationAwarePrivatenCv WinbaseIsolationAwarePrivatetRgCebPnQQeRff_xReaRYQP_QYY(LPCSTR pszProcName)
/* This function is shared by the other stubs in this header. */
{
    static HMODULE s_module;
    /* Use GetModuleHandle instead of LoadLibrary on kernel32.dll because */
    /* we already necessarily have a reference on kernel32.dll. */
    const static IsolationAwarePrivatepBAFGnAG_zBqHyr_vAsB
        c = { IsolationAwarePrivatezltRgzbQhYRuNaQYRJ, L"Kernel32.dll"
#ifdef _M_IX86
             , IsolationAwarePrivatezltRgzbQhYRuNaQYRn, "Kernel32.dll"
#endif
    };
    static IsolationAwarePrivatezHGnoyr_zBqHyr_vAsB m;

    return IsolationAwarePrivatezltRgCebPnQQeRff(&c, &m, pszProcName);
}

#endif /* ISOLATION_AWARE_USE_STATIC_LIBRARY */

#define ActivateActCtx IsolationAwareActivateActCtx
#define CreateActCtxW IsolationAwareCreateActCtxW
#define DeactivateActCtx IsolationAwareDeactivateActCtx
#define FindActCtxSectionStringW IsolationAwareFindActCtxSectionStringW
#define LoadLibraryA IsolationAwareLoadLibraryA
#define LoadLibraryExA IsolationAwareLoadLibraryExA
#define LoadLibraryExW IsolationAwareLoadLibraryExW
#define LoadLibraryW IsolationAwareLoadLibraryW
#define QueryActCtxW IsolationAwareQueryActCtxW
#define ReleaseActCtx IsolationAwareReleaseActCtx

#endif /* ISOLATION_AWARE_ENABLED */
#endif /* RC */


#if defined(__cplusplus)
} /* __cplusplus */
#endif

