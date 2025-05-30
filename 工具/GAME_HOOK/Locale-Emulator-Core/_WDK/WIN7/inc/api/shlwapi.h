
/*****************************************************************************\
*                                                                             *
* shlwapi.h - Interface for the Windows light-weight utility APIs             *
*                                                                             *
* Version 1.0                                                                 *
*                                                                             *
* Copyright (c) Microsoft Corporation. All rights reserved.                   *
*                                                                             *
\*****************************************************************************/


#ifndef _INC_SHLWAPI
#define _INC_SHLWAPI

#ifndef NOSHLWAPI

#include <SpecStrings.h>
#include <objbase.h>
#include <shtypes.h>



//
// Define API decoration for direct importing of DLL references.
//
#ifndef WINSHLWAPI
#if !defined(_SHLWAPI_)
#define LWSTDAPI          EXTERN_C DECLSPEC_IMPORT HRESULT STDAPICALLTYPE
#define LWSTDAPI_(type)   EXTERN_C DECLSPEC_IMPORT type STDAPICALLTYPE
#define LWSTDAPIV         EXTERN_C DECLSPEC_IMPORT HRESULT STDAPIVCALLTYPE
#define LWSTDAPIV_(type)  EXTERN_C DECLSPEC_IMPORT type STDAPIVCALLTYPE
#else
#define LWSTDAPI          STDAPI
#define LWSTDAPI_(type)   STDAPI_(type)
#define LWSTDAPIV         STDAPIV
#define LWSTDAPIV_(type)  STDAPIV_(type)
#endif
#endif // WINSHLWAPI

#ifdef _WIN32
#include <pshpack8.h>
#endif

#if defined(DEPRECATE_SUPPORTED)
#pragma warning(push)
#pragma warning(disable:4995)
#endif

// objidl.h
#ifndef __IBindCtx_FWD_DEFINED__
#define __IBindCtx_FWD_DEFINED__
typedef interface IBindCtx IBindCtx;
#endif  /* __IBindCtx_FWD_DEFINED__ */

#ifdef __cplusplus
extern "C" {
#endif

#if defined(__cplusplus) && defined(STRICT_CONST)
#define USE_STRICT_CONST
#endif
//
// Users of this header may define any number of these constants to avoid
// the definitions of each functional group.
//
//    NO_SHLWAPI_STRFCNS    String functions
//    NO_SHLWAPI_PATH       Path functions
//    NO_SHLWAPI_REG        Registry functions
//    NO_SHLWAPI_STREAM     Stream functions
//    NO_SHLWAPI_GDI        GDI helper functions

#ifndef NO_SHLWAPI_STRFCNS
//
//=============== String Routines ===================================
//

#ifdef USE_STRICT_CONST
LWSTDAPI_(LPCSTR)    StrChrA(LPCSTR lpStart, WORD wMatch);
LWSTDAPI_(LPCWSTR)   StrChrW(LPCWSTR lpStart, WCHAR wMatch);
LWSTDAPI_(LPCSTR)    StrChrIA(LPCSTR lpStart, WORD wMatch);
LWSTDAPI_(LPCWSTR)   StrChrIW(LPCWSTR lpStart, WCHAR wMatch);
#if (_WIN32_IE >= _WIN32_IE_IE60)
LWSTDAPI_(LPCWSTR)   StrChrNW(LPCWSTR lpStart, WCHAR wMatch, UINT cchMax);
LWSTDAPI_(LPCWSTR)   StrChrNIW(LPCWSTR lpStart, WCHAR wMatch, UINT cchMax);
#endif // _WIN32_IE_IE60
#else
LWSTDAPI_(LPSTR)    StrChrA(LPCSTR lpStart, WORD wMatch);
LWSTDAPI_(LPWSTR)   StrChrW(LPCWSTR lpStart, WCHAR wMatch);
LWSTDAPI_(LPSTR)    StrChrIA(LPCSTR lpStart, WORD wMatch);
LWSTDAPI_(LPWSTR)   StrChrIW(LPCWSTR lpStart, WCHAR wMatch);
#if (_WIN32_IE >= _WIN32_IE_IE60)
LWSTDAPI_(LPWSTR)   StrChrNW(LPCWSTR lpStart, WCHAR wMatch, UINT cchMax);
LWSTDAPI_(LPWSTR)   StrChrNIW(LPCWSTR lpStart, WCHAR wMatch, UINT cchMax);
#endif // _WIN32_IE_IE60
#endif
LWSTDAPI_(int)      StrCmpNA(__in LPCSTR lpStr1, __in LPCSTR lpStr2, int nChar);
LWSTDAPI_(int)      StrCmpNW(__in LPCWSTR lpStr1, __in LPCWSTR lpStr2, int nChar);
LWSTDAPI_(int)      StrCmpNIA(__in LPCSTR lpStr1, __in LPCSTR lpStr2, int nChar);
LWSTDAPI_(int)      StrCmpNIW(__in LPCWSTR lpStr1, __in LPCWSTR lpStr2, int nChar);
LWSTDAPI_(int)      StrCSpnA(LPCSTR lpStr, LPCSTR lpSet);
LWSTDAPI_(int)      StrCSpnW(LPCWSTR lpStr, LPCWSTR lpSet);
LWSTDAPI_(int)      StrCSpnIA(LPCSTR lpStr, LPCSTR lpSet);
LWSTDAPI_(int)      StrCSpnIW(LPCWSTR lpStr, LPCWSTR lpSet);
LWSTDAPI_(LPSTR)    StrDupA(LPCSTR lpSrch);
LWSTDAPI_(LPWSTR)   StrDupW(LPCWSTR lpSrch);

// StrFormatByteSizeEx takes a ULONGLONG as a byte count and formats a string
// representing that number of bytes in an appropriately concise manner, where
// "appropriate manner" is determine by several factors:
//
// 1) order - is this most appropriately expressed as KB? MB? GB?
//    for example: 1039 -> "1.01 KB", 5454608466 -> "5.08 GB", etc
//
// 2) number of whole number places shown - if there are more than a few whole
//    number places to display, decimal places are omitted.
//    for example: 1024 -> "1.00 KB", 12288 -> "12.0 KB", 125952 -> "123 KB"
//
// 3) the caller can specify whether the result should involve rounding to the
//    nearest displayed digit, or truncation of undisplayed digits. the caller
//    must specify either rounding or truncation when calling the API.
//    for example: with rounding,   2147483647 -> "2.00 GB"
//                 with truncation, 2147483647 -> "1.99 GB"

enum tagSFBS_FLAGS
{
    SFBS_FLAGS_ROUND_TO_NEAREST_DISPLAYED_DIGIT     = 0x0001,   // round to the nearest displayed digit
    SFBS_FLAGS_TRUNCATE_UNDISPLAYED_DECIMAL_DIGITS  = 0x0002,   // discard undisplayed digits
};
typedef int SFBS_FLAGS;

LWSTDAPI            StrFormatByteSizeEx(__in ULONGLONG ull, __in SFBS_FLAGS flags, __out_ecount(cchBuf) LPWSTR pszBuf, __in_range(>,0) UINT cchBuf);

LWSTDAPI_(LPSTR)    StrFormatByteSizeA(DWORD dw, __out_ecount(cchBuf) LPSTR pszBuf, UINT cchBuf);
LWSTDAPI_(LPSTR)    StrFormatByteSize64A(LONGLONG qdw, __out_ecount(cchBuf) LPSTR pszBuf, UINT cchBuf);
LWSTDAPI_(LPWSTR)   StrFormatByteSizeW(LONGLONG qdw, __out_ecount(cchBuf) LPWSTR pszBuf, UINT cchBuf);
LWSTDAPI_(LPWSTR)   StrFormatKBSizeW(LONGLONG qdw, __out_ecount(cchBuf) LPWSTR pszBuf, UINT cchBuf);
LWSTDAPI_(LPSTR)    StrFormatKBSizeA(LONGLONG qdw, __out_ecount(cchBuf) LPSTR pszBuf, UINT cchBuf);
LWSTDAPI_(int)      StrFromTimeIntervalA(__out_ecount(cchMax) LPSTR pszOut, UINT cchMax, DWORD dwTimeMS, int digits);
LWSTDAPI_(int)      StrFromTimeIntervalW(__out_ecount(cchMax) LPWSTR pwszOut, UINT cchMax, DWORD dwTimeMS, int digits);
LWSTDAPI_(BOOL)     StrIsIntlEqualA(__in BOOL fCaseSens, __in LPCSTR lpString1, __in LPCSTR lpString2, __in int nChar);
LWSTDAPI_(BOOL)     StrIsIntlEqualW(__in BOOL fCaseSens, __in LPCWSTR lpString1, __in LPCWSTR lpString2, __in int nChar);
LWSTDAPI_(LPSTR)    StrNCatA(__inout_ecount(cchMax) LPSTR psz1, LPCSTR psz2, int cchMax);
LWSTDAPI_(LPWSTR)   StrNCatW(__inout_ecount(cchMax) LPWSTR psz1, LPCWSTR psz2, int cchMax);
#ifdef USE_STRICT_CONST
LWSTDAPI_(LPCSTR)    StrPBrkA(__in LPCSTR psz, __in LPCSTR pszSet);
LWSTDAPI_(LPCWSTR)   StrPBrkW(__in LPCWSTR psz, __in LPCWSTR pszSet);
LWSTDAPI_(LPCSTR)    StrRChrA(__in LPCSTR lpStart, __in_opt LPCSTR lpEnd, __in WORD wMatch);
LWSTDAPI_(LPCWSTR)   StrRChrW(__in LPCWSTR lpStart, __in_opt LPCWSTR lpEnd, __in WCHAR wMatch);
LWSTDAPI_(LPCSTR)    StrRChrIA(__in LPCSTR lpStart, __in_opt LPCSTR lpEnd, __in WORD wMatch);
LWSTDAPI_(LPCWSTR)   StrRChrIW(__in LPCWSTR lpStart, __in_opt LPCWSTR lpEnd, __in WCHAR wMatch);
LWSTDAPI_(LPCSTR)    StrRStrIA(__in LPCSTR lpSource, __in_opt LPCSTR lpLast, __in LPCSTR lpSrch);
LWSTDAPI_(LPCWSTR)   StrRStrIW(__in LPCWSTR lpSource, __in_opt LPCWSTR lpLast, __in LPCWSTR lpSrch);
#else
LWSTDAPI_(LPSTR)    StrPBrkA(__in LPCSTR psz, __in LPCSTR pszSet);
LWSTDAPI_(LPWSTR)   StrPBrkW(__in LPCWSTR psz, __in LPCWSTR pszSet);
LWSTDAPI_(LPSTR)    StrRChrA(__in LPCSTR lpStart, __in_opt LPCSTR lpEnd, __in WORD wMatch);
LWSTDAPI_(LPWSTR)   StrRChrW(__in LPCWSTR lpStart, __in_opt LPCWSTR lpEnd, __in WCHAR wMatch);
LWSTDAPI_(LPSTR)    StrRChrIA(__in LPCSTR lpStart, __in_opt LPCSTR lpEnd, __in WORD wMatch);
LWSTDAPI_(LPWSTR)   StrRChrIW(__in LPCWSTR lpStart, __in_opt LPCWSTR lpEnd, __in WCHAR wMatch);
LWSTDAPI_(LPSTR)    StrRStrIA(__in LPCSTR lpSource, __in_opt LPCSTR lpLast, __in LPCSTR lpSrch);
LWSTDAPI_(LPWSTR)   StrRStrIW(__in LPCWSTR lpSource, __in_opt LPCWSTR lpLast, __in LPCWSTR lpSrch);
#endif
LWSTDAPI_(int)      StrSpnA(__in LPCSTR psz, __in LPCSTR pszSet);
LWSTDAPI_(int)      StrSpnW(__in LPCWSTR psz, __in LPCWSTR pszSet);
#ifdef USE_STRICT_CONST
LWSTDAPI_(LPCSTR)    StrStrA(__in LPCSTR lpFirst, __in LPCSTR lpSrch);
LWSTDAPI_(LPCWSTR)   StrStrW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch);
LWSTDAPI_(LPCSTR)    StrStrIA(__in LPCSTR lpFirst, __in LPCSTR lpSrch);
LWSTDAPI_(LPCWSTR)   StrStrIW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch);
#if (_WIN32_IE >= _WIN32_IE_IE6)
LWSTDAPI_(LPCWSTR)   StrStrNW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch, __in UINT cchMax);
LWSTDAPI_(LPCWSTR)   StrStrNIW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch, __in UINT cchMax);
#endif // _WIN32_IE_IE6
#else
LWSTDAPI_(LPSTR)    StrStrA(__in LPCSTR lpFirst, __in LPCSTR lpSrch);
LWSTDAPI_(LPWSTR)   StrStrW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch);
LWSTDAPI_(LPSTR)    StrStrIA(__in LPCSTR lpFirst, __in LPCSTR lpSrch);
LWSTDAPI_(LPWSTR)   StrStrIW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch);
#if (_WIN32_IE >= _WIN32_IE_IE60)
LWSTDAPI_(LPWSTR)   StrStrNW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch, __in UINT cchMax);
LWSTDAPI_(LPWSTR)   StrStrNIW(__in LPCWSTR lpFirst, __in LPCWSTR lpSrch, __in UINT cchMax);
#endif // _WIN32_IE_IE60
#endif

#define STIF_DEFAULT        0x00000000L
#define STIF_SUPPORT_HEX    0x00000001L
typedef int STIF_FLAGS;
LWSTDAPI_(int)      StrToIntA(__in LPCSTR lpSrc);
LWSTDAPI_(int)      StrToIntW(__in LPCWSTR lpSrc);
LWSTDAPI_(BOOL)     StrToIntExA(__in LPCSTR pszString, __in STIF_FLAGS dwFlags, __out int * piRet);
LWSTDAPI_(BOOL)     StrToIntExW(__in LPCWSTR pszString, __in STIF_FLAGS dwFlags, __out int * piRet);
#if (_WIN32_IE >= _WIN32_IE_IE60)
LWSTDAPI_(BOOL)     StrToInt64ExA(__in LPCSTR pszString, __in STIF_FLAGS dwFlags, __out LONGLONG * pllRet);
LWSTDAPI_(BOOL)     StrToInt64ExW(__in LPCWSTR pszString, __in STIF_FLAGS dwFlags, __out LONGLONG * pllRet);
#endif // _WIN32_IE_IE60

LWSTDAPI_(BOOL)     StrTrimA(__inout LPSTR psz, __in LPCSTR pszTrimChars);
LWSTDAPI_(BOOL)     StrTrimW(__inout LPWSTR psz, __in LPCWSTR pszTrimChars);


LWSTDAPI_(LPWSTR)   StrCatW(__inout LPWSTR psz1, LPCWSTR psz2);
LWSTDAPI_(int)      StrCmpW(__in LPCWSTR psz1, __in LPCWSTR psz2);
LWSTDAPI_(int)      StrCmpIW(__in LPCWSTR psz1, __in LPCWSTR psz2);
LWSTDAPI_(LPWSTR)   StrCpyW(__out LPWSTR psz1, LPCWSTR psz2);
LWSTDAPI_(LPWSTR)   StrCpyNW(__out_ecount(cchMax) LPWSTR psz1, __in LPCWSTR psz2, __in int cchMax);

LWSTDAPI_(LPWSTR)   StrCatBuffW(__inout_ecount(cchDestBuffSize) LPWSTR pszDest, __in LPCWSTR pszSrc, __in int cchDestBuffSize);
LWSTDAPI_(LPSTR)    StrCatBuffA(__inout_ecount(cchDestBuffSize) LPSTR pszDest, __in LPCSTR pszSrc, __in int cchDestBuffSize);
LWSTDAPI_(BOOL)     ChrCmpIA(WORD w1, WORD w2);
LWSTDAPI_(BOOL)     ChrCmpIW(WCHAR w1, WCHAR w2);

LWSTDAPI_(int)      wvnsprintfA(__out_ecount(cchDest) LPSTR pszDest, __in int cchDest, __in __format_string LPCSTR pszFmt, __in va_list arglist);
LWSTDAPI_(int)      wvnsprintfW(__out_ecount(cchDest) LPWSTR pszDest, __in int cchDest, __in __format_string LPCWSTR pszFmt, __in va_list arglist);
LWSTDAPIV_(int)     wnsprintfA(__out_ecount(cchDest) LPSTR pszDest, __in int cchDest, __in __format_string LPCSTR pszFmt, ...);
LWSTDAPIV_(int)     wnsprintfW(__out_ecount(cchDest) LPWSTR pszDest, __in int cchDest, __in __format_string LPCWSTR pszFmt, ...);

#define StrIntlEqNA( s1, s2, nChar) StrIsIntlEqualA( TRUE, s1, s2, nChar)
#define StrIntlEqNW( s1, s2, nChar) StrIsIntlEqualW( TRUE, s1, s2, nChar)
#define StrIntlEqNIA(s1, s2, nChar) StrIsIntlEqualA(FALSE, s1, s2, nChar)
#define StrIntlEqNIW(s1, s2, nChar) StrIsIntlEqualW(FALSE, s1, s2, nChar)

LWSTDAPI StrRetToStrA(__inout STRRET *pstr, __in_opt PCUITEMID_CHILD pidl, __deref_out LPSTR *ppsz);
LWSTDAPI StrRetToStrW(__inout STRRET *pstr, __in_opt PCUITEMID_CHILD pidl, __deref_out LPWSTR *ppsz);
#ifdef UNICODE
#define StrRetToStr  StrRetToStrW
#else
#define StrRetToStr  StrRetToStrA
#endif // !UNICODE
LWSTDAPI StrRetToBufA(__inout STRRET *pstr, __in_opt PCUITEMID_CHILD pidl, __out_ecount(cchBuf) LPSTR pszBuf, UINT cchBuf);
LWSTDAPI StrRetToBufW(__inout STRRET *pstr, __in_opt PCUITEMID_CHILD pidl, __out_ecount(cchBuf) LPWSTR pszBuf, UINT cchBuf);
#ifdef UNICODE
#define StrRetToBuf  StrRetToBufW
#else
#define StrRetToBuf  StrRetToBufA
#endif // !UNICODE

// helper to duplicate a string using the task allocator

LWSTDAPI SHStrDupA(__in LPCSTR psz, __deref_out LPWSTR *ppwsz);
LWSTDAPI SHStrDupW(__in LPCWSTR psz, __deref_out LPWSTR *ppwsz);
#ifdef UNICODE
#define SHStrDup  SHStrDupW
#else
#define SHStrDup  SHStrDupA
#endif // !UNICODE

#ifdef __cplusplus
// make the above helper function a bit easier to use in the HRESULT world
inline HRESULT SHLocalStrDupW(LPCWSTR psz, __out LPWSTR *ppsz)
{
    *ppsz = StrDupW(psz);
    return *ppsz ? S_OK : E_OUTOFMEMORY;
}
inline HRESULT SHLocalStrDupA(LPCSTR psz, __out LPSTR *ppsz)
{
    *ppsz = StrDupA(psz);
    return *ppsz ? S_OK : E_OUTOFMEMORY;
}
#ifdef UNICODE
#define SHLocalStrDup SHLocalStrDupW
#else
#define SHLocalStrDup SHLocalStrDupA
#endif
#endif // __cplusplus

#if (_WIN32_IE >= _WIN32_IE_IE55)
LWSTDAPI_(int) StrCmpLogicalW(__in LPCWSTR psz1, __in LPCWSTR psz2);
LWSTDAPI_(DWORD) StrCatChainW(__out_ecount(cchDst) LPWSTR pszDst, __in DWORD cchDst, __in DWORD ichAt, __in LPCWSTR pszSrc);
LWSTDAPI StrRetToBSTR(__inout STRRET *pstr, __in_opt PCUITEMID_CHILD pidl, __deref_out BSTR *pbstr);
LWSTDAPI SHLoadIndirectString(__in LPCWSTR pszSource, __out_ecount(cchOutBuf) LPWSTR pszOutBuf, __in UINT cchOutBuf, __reserved void **ppvReserved);
#endif // _WIN32_IE_IE55


#if (_WIN32_IE >= _WIN32_IE_IE60SP2)
LWSTDAPI_(BOOL) IsCharSpaceA(__in CHAR wch);
LWSTDAPI_(BOOL) IsCharSpaceW(__in WCHAR wch);
#ifdef UNICODE
#define IsCharSpace  IsCharSpaceW
#else
#define IsCharSpace  IsCharSpaceA
#endif // !UNICODE

LWSTDAPI_(int)  StrCmpCA(__in LPCSTR pszStr1, __in LPCSTR pszStr2);
LWSTDAPI_(int)  StrCmpCW(__in LPCWSTR pszStr1, __in LPCWSTR pszStr2);
#ifdef UNICODE
#define StrCmpC  StrCmpCW
#else
#define StrCmpC  StrCmpCA
#endif // !UNICODE

LWSTDAPI_(int)  StrCmpICA(__in LPCSTR pszStr1, __in LPCSTR pszStr2);
LWSTDAPI_(int)  StrCmpICW(__in LPCWSTR pszStr1, __in LPCWSTR pszStr2);
#ifdef UNICODE
#define StrCmpIC  StrCmpICW
#else
#define StrCmpIC  StrCmpICA
#endif // !UNICODE
#endif // _WIN32_IE_IE60SP2

#ifdef UNICODE
#define StrChr                  StrChrW
#define StrRChr                 StrRChrW
#define StrChrI                 StrChrIW
#define StrRChrI                StrRChrIW
#define StrCmpN                 StrCmpNW
#define StrCmpNI                StrCmpNIW
#define StrStr                  StrStrW
#define StrStrI                 StrStrIW
#define StrDup                  StrDupW
#define StrRStrI                StrRStrIW
#define StrCSpn                 StrCSpnW
#define StrCSpnI                StrCSpnIW
#define StrSpn                  StrSpnW
#define StrToInt                StrToIntW
#define StrPBrk                 StrPBrkW
#define StrToIntEx              StrToIntExW
#if (_WIN32_IE >= 0x0600)
#define StrToInt64Ex            StrToInt64ExW
#endif
#define StrFromTimeInterval     StrFromTimeIntervalW
#define StrIntlEqN              StrIntlEqNW
#define StrIntlEqNI             StrIntlEqNIW
#define StrFormatByteSize       StrFormatByteSizeW
#define StrFormatByteSize64     StrFormatByteSizeW
#define StrFormatKBSize         StrFormatKBSizeW
#define StrNCat                 StrNCatW
#define StrTrim                 StrTrimW
#define StrCatBuff              StrCatBuffW
#define ChrCmpI                 ChrCmpIW
#define wvnsprintf              wvnsprintfW
#define wnsprintf               wnsprintfW
#define StrIsIntlEqual          StrIsIntlEqualW


#else
#define StrChr                  StrChrA
#define StrRChr                 StrRChrA
#define StrChrI                 StrChrIA
#define StrRChrI                StrRChrIA
#define StrCmpN                 StrCmpNA
#define StrCmpNI                StrCmpNIA
#define StrStr                  StrStrA
#define StrStrI                 StrStrIA
#define StrDup                  StrDupA
#define StrRStrI                StrRStrIA
#define StrCSpn                 StrCSpnA
#define StrCSpnI                StrCSpnIA
#define StrSpn                  StrSpnA
#define StrToInt                StrToIntA
#define StrPBrk                 StrPBrkA
#define StrToIntEx              StrToIntExA
#if (_WIN32_IE >= 0x0600)
#define StrToInt64Ex            StrToInt64ExA
#endif
#define StrFromTimeInterval     StrFromTimeIntervalA
#define StrIntlEqN              StrIntlEqNA
#define StrIntlEqNI             StrIntlEqNIA
#define StrFormatByteSize       StrFormatByteSizeA
#define StrFormatByteSize64     StrFormatByteSize64A
#define StrFormatKBSize         StrFormatKBSizeA
#define StrNCat                 StrNCatA
#define StrTrim                 StrTrimA
#define StrCatBuff              StrCatBuffA
#define ChrCmpI                 ChrCmpIA
#define wvnsprintf              wvnsprintfA
#define wnsprintf               wnsprintfA
#define StrIsIntlEqual          StrIsIntlEqualA
#endif

#if (_WIN32_IE >= _WIN32_IE_IE50)
// StrCmp*C* - Compare strings using C runtime collation rules.
LWSTDAPI_(int)  StrCmpNCA(__in LPCSTR lpStr1, __in LPCSTR lpStr2, __in int nChar);
// StrCmp*C* - Compare strings using C runtime collation rules.
LWSTDAPI_(int)  StrCmpNCW(__in LPCWSTR lpStr1, __in LPCWSTR lpStr2, __in int nChar);
#ifdef UNICODE
#define StrCmpNC  StrCmpNCW
#else
#define StrCmpNC  StrCmpNCA
#endif // !UNICODE
LWSTDAPI_(int)  StrCmpNICA(__in LPCSTR lpStr1, __in LPCSTR lpStr2, __in int nChar);
LWSTDAPI_(int)  StrCmpNICW(__in LPCWSTR lpStr1, __in LPCWSTR lpStr2, __in int nChar);
#ifdef UNICODE
#define StrCmpNIC  StrCmpNICW
#else
#define StrCmpNIC  StrCmpNICA
#endif // !UNICODE
#endif  // _WIN32_IE_IE50


// Backward compatible to NT's non-standard naming (strictly
// for comctl32)
//
LWSTDAPI_(BOOL)     IntlStrEqWorkerA(BOOL fCaseSens, __in_ecount(nChar) LPCSTR lpString1, __in_ecount(nChar) LPCSTR lpString2, int nChar);
LWSTDAPI_(BOOL)     IntlStrEqWorkerW(BOOL fCaseSens, __in_ecount(nChar) LPCWSTR lpString1, __in_ecount(nChar) LPCWSTR lpString2, int nChar);

#define IntlStrEqNA( s1, s2, nChar) IntlStrEqWorkerA( TRUE, s1, s2, nChar)
#define IntlStrEqNW( s1, s2, nChar) IntlStrEqWorkerW( TRUE, s1, s2, nChar)
#define IntlStrEqNIA(s1, s2, nChar) IntlStrEqWorkerA(FALSE, s1, s2, nChar)
#define IntlStrEqNIW(s1, s2, nChar) IntlStrEqWorkerW(FALSE, s1, s2, nChar)

#ifdef UNICODE
#define IntlStrEqN              IntlStrEqNW
#define IntlStrEqNI             IntlStrEqNIW
#else
#define IntlStrEqN              IntlStrEqNA
#define IntlStrEqNI             IntlStrEqNIA
#endif

#define SZ_CONTENTTYPE_HTMLA       "text/html"
#define SZ_CONTENTTYPE_HTMLW       L"text/html"
#define SZ_CONTENTTYPE_CDFA        "application/x-cdf"
#define SZ_CONTENTTYPE_CDFW        L"application/x-cdf"

#ifdef UNICODE
#define SZ_CONTENTTYPE_HTML     SZ_CONTENTTYPE_HTMLW
#define SZ_CONTENTTYPE_CDF      SZ_CONTENTTYPE_CDFW
#else
#define SZ_CONTENTTYPE_HTML     SZ_CONTENTTYPE_HTMLA
#define SZ_CONTENTTYPE_CDF      SZ_CONTENTTYPE_CDFA
#endif

#define PathIsHTMLFileA(pszPath)     PathIsContentTypeA(pszPath, SZ_CONTENTTYPE_HTMLA)
#define PathIsHTMLFileW(pszPath)     PathIsContentTypeW(pszPath, SZ_CONTENTTYPE_HTMLW)


#define StrCatA                 lstrcatA
#define StrCmpA                 lstrcmpA
#define StrCmpIA                lstrcmpiA
#define StrCpyA                 lstrcpyA
#define StrCpyNA                lstrcpynA


#define StrToLong               StrToInt
#define StrNCmp                 StrCmpN
#define StrNCmpI                StrCmpNI
#define StrNCpy                 StrCpyN
#define StrCatN                 StrNCat

#ifdef UNICODE
#define StrCat                  StrCatW
#define StrCmp                  StrCmpW
#define StrCmpI                 StrCmpIW
#define StrCpy                  StrCpyW
#define StrCpyN                 StrCpyNW
#define StrCatBuff              StrCatBuffW
#else
#define StrCat                  lstrcatA
#define StrCmp                  lstrcmpA
#define StrCmpI                 lstrcmpiA
#define StrCpy                  lstrcpyA
#define StrCpyN                 lstrcpynA
#define StrCatBuff              StrCatBuffA
#endif


#endif //  NO_SHLWAPI_STRFCNS


#ifndef NO_SHLWAPI_PATH

//
//=============== Path Routines ===================================
//

LWSTDAPI_(LPSTR)  PathAddBackslashA(__inout_ecount(MAX_PATH) LPSTR pszPath);
LWSTDAPI_(LPWSTR)  PathAddBackslashW(__inout_ecount(MAX_PATH) LPWSTR pszPath);
#ifdef UNICODE
#define PathAddBackslash  PathAddBackslashW
#else
#define PathAddBackslash  PathAddBackslashA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathAddExtensionA(__inout_ecount(MAX_PATH) LPSTR pszPath, __in_opt LPCSTR pszExt);
LWSTDAPI_(BOOL)     PathAddExtensionW(__inout_ecount(MAX_PATH) LPWSTR pszPath, __in_opt LPCWSTR pszExt);
#ifdef UNICODE
#define PathAddExtension  PathAddExtensionW
#else
#define PathAddExtension  PathAddExtensionA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathAppendA(__inout_ecount(MAX_PATH) LPSTR pszPath, __in LPCSTR pMore);
LWSTDAPI_(BOOL)     PathAppendW(__inout_ecount(MAX_PATH) LPWSTR pszPath, __in LPCWSTR pMore);
LWSTDAPI_(LPSTR)  PathBuildRootA(__out_ecount(4) LPSTR pszRoot, int iDrive);
LWSTDAPI_(LPWSTR)  PathBuildRootW(__out_ecount(4) LPWSTR pszRoot, int iDrive);
#ifdef UNICODE
#define PathBuildRoot  PathBuildRootW
#else
#define PathBuildRoot  PathBuildRootA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathCanonicalizeA(__out_ecount(MAX_PATH) LPSTR pszBuf, __in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathCanonicalizeW(__out_ecount(MAX_PATH) LPWSTR pszBuf, __in LPCWSTR pszPath);
LWSTDAPI_(LPSTR)  PathCombineA(__out_ecount(MAX_PATH) LPSTR pszDest, __in_opt LPCSTR pszDir, __in_opt LPCSTR pszFile);
LWSTDAPI_(LPWSTR)  PathCombineW(__out_ecount(MAX_PATH) LPWSTR pszDest, __in_opt LPCWSTR pszDir, __in_opt LPCWSTR pszFile);
#ifdef UNICODE
#define PathCombine  PathCombineW
#else
#define PathCombine  PathCombineA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathCompactPathA(__in_opt HDC hDC, __inout_ecount(MAX_PATH) LPSTR pszPath, __in UINT dx);
LWSTDAPI_(BOOL)     PathCompactPathW(__in_opt HDC hDC, __inout_ecount(MAX_PATH) LPWSTR pszPath, __in UINT dx);
LWSTDAPI_(BOOL)     PathCompactPathExA(__out_ecount(cchMax) LPSTR pszOut, __in LPCSTR pszSrc, __in UINT cchMax, __in DWORD dwFlags);
LWSTDAPI_(BOOL)     PathCompactPathExW(__out_ecount(cchMax) LPWSTR pszOut, __in LPCWSTR pszSrc, __in UINT cchMax, __in DWORD dwFlags);
LWSTDAPI_(int)      PathCommonPrefixA(__in LPCSTR pszFile1, __in LPCSTR pszFile2, __out_ecount_opt(MAX_PATH) LPSTR achPath);
LWSTDAPI_(int)      PathCommonPrefixW(__in LPCWSTR pszFile1, __in LPCWSTR pszFile2, __out_ecount_opt(MAX_PATH) LPWSTR achPath);
LWSTDAPI_(BOOL)     PathFileExistsA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathFileExistsW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFileExists  PathFileExistsW
#else
#define PathFileExists  PathFileExistsA
#endif // !UNICODE
#ifdef USE_STRICT_CONST
LWSTDAPI_(LPCSTR)  PathFindExtensionA(__in LPCSTR pszPath);
LWSTDAPI_(LPCWSTR)  PathFindExtensionW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFindExtension  PathFindExtensionW
#else
#define PathFindExtension  PathFindExtensionA
#endif // !UNICODE
LWSTDAPI_(LPCSTR)  PathFindFileNameA(__in LPCSTR pszPath);
LWSTDAPI_(LPCWSTR)  PathFindFileNameW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFindFileName  PathFindFileNameW
#else
#define PathFindFileName  PathFindFileNameA
#endif // !UNICODE
LWSTDAPI_(LPCSTR)  PathFindNextComponentA(__in LPCSTR pszPath);
LWSTDAPI_(LPCWSTR)  PathFindNextComponentW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFindNextComponent  PathFindNextComponentW
#else
#define PathFindNextComponent  PathFindNextComponentA
#endif // !UNICODE
#else
LWSTDAPI_(LPSTR)  PathFindExtensionA(__in LPCSTR pszPath);
LWSTDAPI_(LPWSTR)  PathFindExtensionW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFindExtension  PathFindExtensionW
#else
#define PathFindExtension  PathFindExtensionA
#endif // !UNICODE
LWSTDAPI_(LPSTR)  PathFindFileNameA(__in LPCSTR pszPath);
LWSTDAPI_(LPWSTR)  PathFindFileNameW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFindFileName  PathFindFileNameW
#else
#define PathFindFileName  PathFindFileNameA
#endif // !UNICODE
LWSTDAPI_(LPSTR)  PathFindNextComponentA(__in LPCSTR pszPath);
LWSTDAPI_(LPWSTR)  PathFindNextComponentW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathFindNextComponent  PathFindNextComponentW
#else
#define PathFindNextComponent  PathFindNextComponentA
#endif // !UNICODE
#endif
LWSTDAPI_(BOOL)     PathFindOnPathA(__inout_ecount(MAX_PATH) LPSTR pszPath, __in_opt PZPCSTR ppszOtherDirs);
LWSTDAPI_(BOOL)     PathFindOnPathW(__inout_ecount(MAX_PATH) LPWSTR pszPath, __in_opt PZPCWSTR ppszOtherDirs);
LWSTDAPI_(LPCSTR) PathFindSuffixArrayA(__in LPCSTR pszPath, __in_ecount(iArraySize) const LPCSTR *apszSuffix, __in int iArraySize);
LWSTDAPI_(LPCWSTR) PathFindSuffixArrayW(__in LPCWSTR pszPath, __in_ecount(iArraySize) const LPCWSTR *apszSuffix, __in int iArraySize);
#ifdef UNICODE
#define PathFindSuffixArray  PathFindSuffixArrayW
#else
#define PathFindSuffixArray  PathFindSuffixArrayA
#endif // !UNICODE
#ifdef USE_STRICT_CONST
LWSTDAPI_(LPCSTR)  PathGetArgsA(__in LPCSTR pszPath);
LWSTDAPI_(LPCWSTR)  PathGetArgsW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathGetArgs  PathGetArgsW
#else
#define PathGetArgs  PathGetArgsA
#endif // !UNICODE
#else
LWSTDAPI_(LPSTR)  PathGetArgsA(__in LPCSTR pszPath);
LWSTDAPI_(LPWSTR)  PathGetArgsW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathGetArgs  PathGetArgsW
#else
#define PathGetArgs  PathGetArgsA
#endif // !UNICODE
#endif
LWSTDAPI_(BOOL)     PathIsLFNFileSpecA(__in LPCSTR lpName);
LWSTDAPI_(BOOL)     PathIsLFNFileSpecW(__in LPCWSTR lpName);
#ifdef UNICODE
#define PathIsLFNFileSpec  PathIsLFNFileSpecW
#else
#define PathIsLFNFileSpec  PathIsLFNFileSpecA
#endif // !UNICODE
LWSTDAPI_(UINT)     PathGetCharTypeA(__in UCHAR ch);
LWSTDAPI_(UINT)     PathGetCharTypeW(__in WCHAR ch);

// Return flags for PathGetCharType
#define GCT_INVALID             0x0000
#define GCT_LFNCHAR             0x0001
#define GCT_SHORTCHAR           0x0002
#define GCT_WILD                0x0004
#define GCT_SEPARATOR           0x0008

LWSTDAPI_(int)      PathGetDriveNumberA(__in LPCSTR pszPath);
LWSTDAPI_(int)      PathGetDriveNumberW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathGetDriveNumber  PathGetDriveNumberW
#else
#define PathGetDriveNumber  PathGetDriveNumberA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsDirectoryA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsDirectoryW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsDirectory  PathIsDirectoryW
#else
#define PathIsDirectory  PathIsDirectoryA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsDirectoryEmptyA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsDirectoryEmptyW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsDirectoryEmpty  PathIsDirectoryEmptyW
#else
#define PathIsDirectoryEmpty  PathIsDirectoryEmptyA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsFileSpecA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsFileSpecW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsFileSpec  PathIsFileSpecW
#else
#define PathIsFileSpec  PathIsFileSpecA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsPrefixA(__in LPCSTR pszPrefix, __in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsPrefixW(__in LPCWSTR pszPrefix, __in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsPrefix  PathIsPrefixW
#else
#define PathIsPrefix  PathIsPrefixA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsRelativeA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsRelativeW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsRelative  PathIsRelativeW
#else
#define PathIsRelative  PathIsRelativeA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsRootA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsRootW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsRoot  PathIsRootW
#else
#define PathIsRoot  PathIsRootA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsSameRootA(__in LPCSTR pszPath1, __in LPCSTR pszPath2);
LWSTDAPI_(BOOL)     PathIsSameRootW(__in LPCWSTR pszPath1, __in LPCWSTR pszPath2);
#ifdef UNICODE
#define PathIsSameRoot  PathIsSameRootW
#else
#define PathIsSameRoot  PathIsSameRootA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsUNCA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsUNCW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsUNC  PathIsUNCW
#else
#define PathIsUNC  PathIsUNCA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsNetworkPathA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsNetworkPathW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsNetworkPath  PathIsNetworkPathW
#else
#define PathIsNetworkPath  PathIsNetworkPathA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsUNCServerA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsUNCServerW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsUNCServer  PathIsUNCServerW
#else
#define PathIsUNCServer  PathIsUNCServerA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsUNCServerShareA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsUNCServerShareW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsUNCServerShare  PathIsUNCServerShareW
#else
#define PathIsUNCServerShare  PathIsUNCServerShareA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsContentTypeA(__in LPCSTR pszPath, __in LPCSTR pszContentType);
LWSTDAPI_(BOOL)     PathIsContentTypeW(__in LPCWSTR pszPath, __in LPCWSTR pszContentType);
LWSTDAPI_(BOOL)     PathIsURLA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathIsURLW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathIsURL  PathIsURLW
#else
#define PathIsURL  PathIsURLA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathMakePrettyA(__inout LPSTR pszPath);
LWSTDAPI_(BOOL)     PathMakePrettyW(__inout LPWSTR pszPath);
LWSTDAPI_(BOOL)     PathMatchSpecA(__in LPCSTR pszFile, __in LPCSTR pszSpec);
LWSTDAPI_(BOOL)     PathMatchSpecW(__in LPCWSTR pszFile, __in LPCWSTR pszSpec);

#if (_WIN32_IE >= _WIN32_IE_IE70)
// Flags for PathMatchSpecEx
#define PMSF_NORMAL            0x00000000
#define PMSF_MULTIPLE          0x00000001
#define PMSF_DONT_STRIP_SPACES 0x00010000  // modifies either of the above

LWSTDAPI PathMatchSpecExA(__in LPCSTR pszFile, __in LPCSTR pszSpec, __in DWORD dwFlags);
LWSTDAPI PathMatchSpecExW(__in LPCWSTR pszFile, __in LPCWSTR pszSpec, __in DWORD dwFlags);
#endif // _WIN32_IE_IE70

LWSTDAPI_(int)      PathParseIconLocationA(__inout LPSTR pszIconFile);
LWSTDAPI_(int)      PathParseIconLocationW(__inout LPWSTR pszIconFile);
LWSTDAPI_(BOOL)     PathQuoteSpacesA(__inout_ecount(MAX_PATH) LPSTR lpsz);
LWSTDAPI_(BOOL)     PathQuoteSpacesW(__inout_ecount(MAX_PATH) LPWSTR lpsz);
LWSTDAPI_(BOOL)     PathRelativePathToA(__out_ecount(MAX_PATH) LPSTR pszPath, __in LPCSTR pszFrom, __in DWORD dwAttrFrom, __in LPCSTR pszTo, __in DWORD dwAttrTo);
LWSTDAPI_(BOOL)     PathRelativePathToW(__out_ecount(MAX_PATH) LPWSTR pszPath, __in LPCWSTR pszFrom, __in DWORD dwAttrFrom, __in LPCWSTR pszTo, __in DWORD dwAttrTo);
LWSTDAPI_(void)     PathRemoveArgsA(__inout LPSTR pszPath);
LWSTDAPI_(void)     PathRemoveArgsW(__inout LPWSTR pszPath);
LWSTDAPI_(LPSTR)  PathRemoveBackslashA(__inout LPSTR pszPath);
LWSTDAPI_(LPWSTR)  PathRemoveBackslashW(__inout LPWSTR pszPath);
#ifdef UNICODE
#define PathRemoveBackslash  PathRemoveBackslashW
#else
#define PathRemoveBackslash  PathRemoveBackslashA
#endif // !UNICODE
LWSTDAPI_(void)     PathRemoveBlanksA(__inout LPSTR pszPath);
LWSTDAPI_(void)     PathRemoveBlanksW(__inout LPWSTR pszPath);
LWSTDAPI_(void)     PathRemoveExtensionA(__inout LPSTR pszPath);
LWSTDAPI_(void)     PathRemoveExtensionW(__inout LPWSTR pszPath);
LWSTDAPI_(BOOL)     PathRemoveFileSpecA(__inout LPSTR pszPath);
LWSTDAPI_(BOOL)     PathRemoveFileSpecW(__inout LPWSTR pszPath);
LWSTDAPI_(BOOL)     PathRenameExtensionA(__inout_ecount(MAX_PATH) LPSTR pszPath, __in LPCSTR pszExt);
LWSTDAPI_(BOOL)     PathRenameExtensionW(__inout_ecount(MAX_PATH) LPWSTR pszPath, __in LPCWSTR pszExt);
LWSTDAPI_(BOOL)     PathSearchAndQualifyA(__in LPCSTR pszPath, __out_ecount(cchBuf) LPSTR pszBuf, UINT __in cchBuf);
LWSTDAPI_(BOOL)     PathSearchAndQualifyW(__in LPCWSTR pszPath, __out_ecount(cchBuf) LPWSTR pszBuf, __in UINT cchBuf);
LWSTDAPI_(void)     PathSetDlgItemPathA(__in HWND hDlg, int id, LPCSTR pszPath);
LWSTDAPI_(void)     PathSetDlgItemPathW(__in HWND hDlg, int id, LPCWSTR pszPath);
#ifdef USE_STRICT_CONST
LWSTDAPI_(LPCSTR)  PathSkipRootA(__in LPCSTR pszPath);
LWSTDAPI_(LPCWSTR)  PathSkipRootW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathSkipRoot  PathSkipRootW
#else
#define PathSkipRoot  PathSkipRootA
#endif // !UNICODE
#else
LWSTDAPI_(LPSTR)  PathSkipRootA(__in LPCSTR pszPath);
LWSTDAPI_(LPWSTR)  PathSkipRootW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathSkipRoot  PathSkipRootW
#else
#define PathSkipRoot  PathSkipRootA
#endif // !UNICODE
#endif
LWSTDAPI_(void)     PathStripPathA(__inout LPSTR pszPath);
LWSTDAPI_(void)     PathStripPathW(__inout LPWSTR pszPath);
#ifdef UNICODE
#define PathStripPath  PathStripPathW
#else
#define PathStripPath  PathStripPathA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathStripToRootA(__inout LPSTR pszPath);
LWSTDAPI_(BOOL)     PathStripToRootW(__inout LPWSTR pszPath);
#ifdef UNICODE
#define PathStripToRoot  PathStripToRootW
#else
#define PathStripToRoot  PathStripToRootA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathUnquoteSpacesA(__inout LPSTR lpsz);
LWSTDAPI_(BOOL)     PathUnquoteSpacesW(__inout LPWSTR lpsz);
LWSTDAPI_(BOOL)     PathMakeSystemFolderA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathMakeSystemFolderW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathMakeSystemFolder  PathMakeSystemFolderW
#else
#define PathMakeSystemFolder  PathMakeSystemFolderA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathUnmakeSystemFolderA(__in LPCSTR pszPath);
LWSTDAPI_(BOOL)     PathUnmakeSystemFolderW(__in LPCWSTR pszPath);
#ifdef UNICODE
#define PathUnmakeSystemFolder  PathUnmakeSystemFolderW
#else
#define PathUnmakeSystemFolder  PathUnmakeSystemFolderA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathIsSystemFolderA(__in_opt LPCSTR pszPath, __in DWORD dwAttrb);
LWSTDAPI_(BOOL)     PathIsSystemFolderW(__in_opt LPCWSTR pszPath, __in DWORD dwAttrb);
#ifdef UNICODE
#define PathIsSystemFolder  PathIsSystemFolderW
#else
#define PathIsSystemFolder  PathIsSystemFolderA
#endif // !UNICODE
LWSTDAPI_(void)     PathUndecorateA(__inout LPSTR pszPath);
LWSTDAPI_(void)     PathUndecorateW(__inout LPWSTR pszPath);
#ifdef UNICODE
#define PathUndecorate  PathUndecorateW
#else
#define PathUndecorate  PathUndecorateA
#endif // !UNICODE
LWSTDAPI_(BOOL)     PathUnExpandEnvStringsA(__in LPCSTR pszPath, __out_ecount(cchBuf) LPSTR pszBuf, __in UINT cchBuf);
LWSTDAPI_(BOOL)     PathUnExpandEnvStringsW(__in LPCWSTR pszPath, __out_ecount(cchBuf) LPWSTR pszBuf, __in UINT cchBuf);
#ifdef UNICODE
#define PathUnExpandEnvStrings  PathUnExpandEnvStringsW
#else
#define PathUnExpandEnvStrings  PathUnExpandEnvStringsA
#endif // !UNICODE


#ifdef UNICODE
#define PathAppend              PathAppendW
#define PathCanonicalize        PathCanonicalizeW
#define PathCompactPath         PathCompactPathW
#define PathCompactPathEx       PathCompactPathExW
#define PathCommonPrefix        PathCommonPrefixW
#define PathFindOnPath          PathFindOnPathW
#define PathGetCharType         PathGetCharTypeW
#define PathIsContentType       PathIsContentTypeW
#define PathIsHTMLFile          PathIsHTMLFileW
#define PathMakePretty          PathMakePrettyW
#define PathMatchSpec           PathMatchSpecW
#if (_WIN32_IE >= _WIN32_IE_IE70)
#define PathMatchSpecEx         PathMatchSpecExW
#endif // _WIN32_IE_IE70
#define PathParseIconLocation   PathParseIconLocationW
#define PathQuoteSpaces         PathQuoteSpacesW
#define PathRelativePathTo      PathRelativePathToW
#define PathRemoveArgs          PathRemoveArgsW
#define PathRemoveBlanks        PathRemoveBlanksW
#define PathRemoveExtension     PathRemoveExtensionW
#define PathRemoveFileSpec      PathRemoveFileSpecW
#define PathRenameExtension     PathRenameExtensionW
#define PathSearchAndQualify    PathSearchAndQualifyW
#define PathSetDlgItemPath      PathSetDlgItemPathW
#define PathUnquoteSpaces       PathUnquoteSpacesW
#else
#define PathAppend              PathAppendA
#define PathCanonicalize        PathCanonicalizeA
#define PathCompactPath         PathCompactPathA
#define PathCompactPathEx       PathCompactPathExA
#define PathCommonPrefix        PathCommonPrefixA
#define PathFindOnPath          PathFindOnPathA
#define PathGetCharType         PathGetCharTypeA
#define PathIsContentType       PathIsContentTypeA
#define PathIsHTMLFile          PathIsHTMLFileA
#define PathMakePretty          PathMakePrettyA
#define PathMatchSpec           PathMatchSpecA
#if (_WIN32_IE >= _WIN32_IE_IE70)
#define PathMatchSpecEx         PathMatchSpecExA
#endif // _WIN32_IE_IE70
#define PathParseIconLocation   PathParseIconLocationA
#define PathQuoteSpaces         PathQuoteSpacesA
#define PathRelativePathTo      PathRelativePathToA
#define PathRemoveArgs          PathRemoveArgsA
#define PathRemoveBlanks        PathRemoveBlanksA
#define PathRemoveExtension     PathRemoveExtensionA
#define PathRemoveFileSpec      PathRemoveFileSpecA
#define PathRenameExtension     PathRenameExtensionA
#define PathSearchAndQualify    PathSearchAndQualifyA
#define PathSetDlgItemPath      PathSetDlgItemPathA
#define PathUnquoteSpaces       PathUnquoteSpacesA
#endif

typedef enum
{
    URL_SCHEME_INVALID     = -1,
    URL_SCHEME_UNKNOWN     =  0,
    URL_SCHEME_FTP,
    URL_SCHEME_HTTP,
    URL_SCHEME_GOPHER,
    URL_SCHEME_MAILTO,
    URL_SCHEME_NEWS,
    URL_SCHEME_NNTP,
    URL_SCHEME_TELNET,
    URL_SCHEME_WAIS,
    URL_SCHEME_FILE,
    URL_SCHEME_MK,
    URL_SCHEME_HTTPS,
    URL_SCHEME_SHELL,
    URL_SCHEME_SNEWS,
    URL_SCHEME_LOCAL,
    URL_SCHEME_JAVASCRIPT,
    URL_SCHEME_VBSCRIPT,
    URL_SCHEME_ABOUT,
    URL_SCHEME_RES,
#if (_WIN32_IE >= _WIN32_IE_IE60)
    URL_SCHEME_MSSHELLROOTED,
    URL_SCHEME_MSSHELLIDLIST,
    URL_SCHEME_MSHELP,
#endif // _WIN32_IE_IE60
#if (_WIN32_IE >= _WIN32_IE_IE70)
    URL_SCHEME_MSSHELLDEVICE,
    URL_SCHEME_WILDCARD,
#endif // _WIN32_IE_IE70
#if (NTDDI_VERSION >= NTDDI_VISTA)
    URL_SCHEME_SEARCH_MS,
#endif
#if (NTDDI_VERSION >= NTDDI_VISTASP1)
    URL_SCHEME_SEARCH,
#endif
#if (NTDDI_VERSION >= NTDDI_WIN7)
    URL_SCHEME_KNOWNFOLDER,
#endif
    URL_SCHEME_MAXVALUE,
} URL_SCHEME;

typedef enum
{
    URL_PART_NONE       = 0,
    URL_PART_SCHEME     = 1,
    URL_PART_HOSTNAME,
    URL_PART_USERNAME,
    URL_PART_PASSWORD,
    URL_PART_PORT,
    URL_PART_QUERY,
} URL_PART;

typedef enum
{
    URLIS_URL,
    URLIS_OPAQUE,
    URLIS_NOHISTORY,
    URLIS_FILEURL,
    URLIS_APPLIABLE,
    URLIS_DIRECTORY,
    URLIS_HASQUERY,
} URLIS;

#define URL_UNESCAPE                    0x10000000
#define URL_ESCAPE_UNSAFE               0x20000000
#define URL_PLUGGABLE_PROTOCOL          0x40000000
#define URL_WININET_COMPATIBILITY       0x80000000
#define URL_DONT_ESCAPE_EXTRA_INFO      0x02000000
#define URL_DONT_UNESCAPE_EXTRA_INFO    URL_DONT_ESCAPE_EXTRA_INFO
#define URL_BROWSER_MODE                URL_DONT_ESCAPE_EXTRA_INFO
#define URL_ESCAPE_SPACES_ONLY          0x04000000
#define URL_DONT_SIMPLIFY               0x08000000
#define URL_NO_META                     URL_DONT_SIMPLIFY
#define URL_UNESCAPE_INPLACE            0x00100000
#define URL_CONVERT_IF_DOSPATH          0x00200000
#define URL_UNESCAPE_HIGH_ANSI_ONLY     0x00400000
#define URL_INTERNAL_PATH               0x00800000  // Will escape #'s in paths
#define URL_FILE_USE_PATHURL            0x00010000
#if (_WIN32_IE >= _WIN32_IE_IE60SP2)
#define URL_DONT_UNESCAPE               0x00020000  // Do not unescape the path/url at all
#endif // _WIN32_IE_IE60SP2
#if (NTDDI_VERSION >= NTDDI_WIN7)
#define URL_ESCAPE_AS_UTF8              0x00040000  // Percent-encode all non-ASCII characters as their UTF-8 equivalents.
#endif // (NTDDI_VERSION >= NTDDI_WIN7)
#define URL_ESCAPE_PERCENT              0x00001000
#define URL_ESCAPE_SEGMENT_ONLY         0x00002000  // Treat the entire URL param as one URL segment.

#define URL_PARTFLAG_KEEPSCHEME         0x00000001

#define URL_APPLY_DEFAULT               0x00000001
#define URL_APPLY_GUESSSCHEME           0x00000002
#define URL_APPLY_GUESSFILE             0x00000004
#define URL_APPLY_FORCEAPPLY            0x00000008


LWSTDAPI_(int)          UrlCompareA(__in LPCSTR psz1, __in LPCSTR psz2, __in BOOL fIgnoreSlash);
LWSTDAPI_(int)          UrlCompareW(__in LPCWSTR psz1, __in  LPCWSTR psz2, __in BOOL fIgnoreSlash);
LWSTDAPI                UrlCombineA(LPCSTR pszBase, LPCSTR pszRelative, __out_ecount_opt(*pcchCombined) LPSTR pszCombined, __inout LPDWORD pcchCombined, DWORD dwFlags);
LWSTDAPI                UrlCombineW(LPCWSTR pszBase, LPCWSTR pszRelative, __out_ecount_opt(*pcchCombined) LPWSTR pszCombined, __inout LPDWORD pcchCombined, DWORD dwFlags);
LWSTDAPI                UrlCanonicalizeA(__in LPCSTR pszUrl, __out_ecount(*pcchCanonicalized) LPSTR pszCanonicalized, __inout LPDWORD pcchCanonicalized, __in DWORD dwFlags);
LWSTDAPI                UrlCanonicalizeW(__in LPCWSTR pszUrl, __out_ecount(*pcchCanonicalized) LPWSTR pszCanonicalized, __inout LPDWORD pcchCanonicalized, __in DWORD dwFlags);
LWSTDAPI_(BOOL)         UrlIsOpaqueA(LPCSTR pszURL);
LWSTDAPI_(BOOL)         UrlIsOpaqueW(LPCWSTR pszURL);
LWSTDAPI_(BOOL)         UrlIsNoHistoryA(LPCSTR pszURL);
LWSTDAPI_(BOOL)         UrlIsNoHistoryW(LPCWSTR pszURL);
#define                 UrlIsFileUrlA(pszURL) UrlIsA(pszURL, URLIS_FILEURL)
#define                 UrlIsFileUrlW(pszURL) UrlIsW(pszURL, URLIS_FILEURL)
LWSTDAPI_(BOOL)         UrlIsA(LPCSTR pszUrl, __in URLIS UrlIs);
LWSTDAPI_(BOOL)         UrlIsW(LPCWSTR pszUrl, __in URLIS UrlIs);
LWSTDAPI_(LPCSTR)       UrlGetLocationA(LPCSTR psz1);
LWSTDAPI_(LPCWSTR)      UrlGetLocationW(LPCWSTR psz1);
LWSTDAPI                UrlUnescapeA(__inout LPSTR pszUrl, __out_ecount_opt(*pcchUnescaped) LPSTR pszUnescaped, __inout_opt LPDWORD pcchUnescaped, DWORD dwFlags);
LWSTDAPI                UrlUnescapeW(__inout LPWSTR pszUrl, __out_ecount_opt(*pcchUnescaped) LPWSTR pszUnescaped, __inout_opt LPDWORD pcchUnescaped, DWORD dwFlags);
LWSTDAPI                UrlEscapeA(__in LPCSTR pszUrl, __out_ecount(*pcchEscaped) LPSTR pszEscaped, __inout LPDWORD pcchEscaped, __in DWORD dwFlags);
LWSTDAPI                UrlEscapeW(__in LPCWSTR pszUrl, __out_ecount(*pcchEscaped) LPWSTR pszEscaped, __inout LPDWORD pcchEscaped, __in DWORD dwFlags);
LWSTDAPI                UrlCreateFromPathA(LPCSTR pszPath, __out_ecount(*pcchUrl) LPSTR pszUrl, __inout LPDWORD pcchUrl, DWORD dwFlags);
LWSTDAPI                UrlCreateFromPathW(LPCWSTR pszPath, __out_ecount(*pcchUrl) LPWSTR pszUrl, __inout LPDWORD pcchUrl, DWORD dwFlags);
LWSTDAPI                PathCreateFromUrlA(LPCSTR pszUrl, __out_ecount(*pcchPath) LPSTR pszPath, __inout LPDWORD pcchPath, DWORD dwFlags);
LWSTDAPI                PathCreateFromUrlW(LPCWSTR pszUrl, __out_ecount(*pcchPath) LPWSTR pszPath, __inout LPDWORD pcchPath, DWORD dwFlags);
#if (_WIN32_IE >= _WIN32_IE_IE70)
LWSTDAPI                PathCreateFromUrlAlloc(LPCWSTR pszIn, __out LPWSTR *ppszOut, DWORD dwFlags);
#endif // _WIN32_IE_IE70
LWSTDAPI                UrlHashA(LPCSTR pszUrl, __out_ecount(cbHash) LPBYTE pbHash, DWORD cbHash);
LWSTDAPI                UrlHashW(LPCWSTR pszUrl, __out_ecount(cbHash) LPBYTE pbHash, DWORD cbHash);
LWSTDAPI                UrlGetPartW(__in LPCWSTR pszIn, __out_ecount(*pcchOut) LPWSTR pszOut, __inout LPDWORD pcchOut, __in DWORD dwPart, __in DWORD dwFlags);
LWSTDAPI                UrlGetPartA(__in LPCSTR pszIn, __out_ecount(*pcchOut) LPSTR pszOut, __inout LPDWORD pcchOut, __in DWORD dwPart, __in DWORD dwFlags);
LWSTDAPI                UrlApplySchemeA(LPCSTR pszIn, __out_ecount(*pcchOut) LPSTR pszOut, __inout LPDWORD pcchOut, DWORD dwFlags);
LWSTDAPI                UrlApplySchemeW(LPCWSTR pszIn, __out_ecount(*pcchOut) LPWSTR pszOut, __inout LPDWORD pcchOut, DWORD dwFlags);
LWSTDAPI                HashData(__in_ecount(cbData) LPBYTE pbData, DWORD cbData, __out_ecount(cbHash) LPBYTE pbHash, DWORD cbHash);
LWSTDAPI                UrlFixupW(LPCWSTR pszIn, __out_ecount(cchOut) LPWSTR pszOut, DWORD cchOut);

#ifdef UNICODE
#define UrlCompare              UrlCompareW
#define UrlCombine              UrlCombineW
#define UrlCanonicalize         UrlCanonicalizeW
#define UrlIsOpaque             UrlIsOpaqueW
#define UrlIsFileUrl            UrlIsFileUrlW
#define UrlGetLocation          UrlGetLocationW
#define UrlUnescape             UrlUnescapeW
#define UrlEscape               UrlEscapeW
#define UrlCreateFromPath       UrlCreateFromPathW
#define PathCreateFromUrl       PathCreateFromUrlW
#define UrlHash                 UrlHashW
#define UrlGetPart              UrlGetPartW
#define UrlApplyScheme          UrlApplySchemeW
#define UrlIs                   UrlIsW
#define UrlFixup                UrlFixupW
#else //!UNICODE
#define UrlCompare              UrlCompareA
#define UrlCombine              UrlCombineA
#define UrlCanonicalize         UrlCanonicalizeA
#define UrlIsOpaque             UrlIsOpaqueA
#define UrlIsFileUrl            UrlIsFileUrlA
#define UrlGetLocation          UrlGetLocationA
#define UrlUnescape             UrlUnescapeA
#define UrlEscape               UrlEscapeA
#define UrlCreateFromPath       UrlCreateFromPathA
#define PathCreateFromUrl       PathCreateFromUrlA
#define UrlHash                 UrlHashA
#define UrlGetPart              UrlGetPartA
#define UrlApplyScheme          UrlApplySchemeA
#define UrlIs                   UrlIsA
// no UrlFixupA
#endif //UNICODE

#define UrlEscapeSpaces(pszUrl, pszEscaped, pcchEscaped)        UrlCanonicalize(pszUrl, pszEscaped, pcchEscaped, URL_ESCAPE_SPACES_ONLY |URL_DONT_ESCAPE_EXTRA_INFO )
#define UrlUnescapeInPlace(pszUrl, dwFlags)                     UrlUnescape(pszUrl, NULL, NULL, dwFlags | URL_UNESCAPE_INPLACE)


#if (_WIN32_IE >= _WIN32_IE_IE50)

typedef struct tagPARSEDURLA {
    DWORD     cbSize;
    // Pointers into the buffer that was provided to ParseURL
    LPCSTR    pszProtocol;
    UINT      cchProtocol;
    LPCSTR    pszSuffix;
    UINT      cchSuffix;
    UINT      nScheme;            // One of URL_SCHEME_*
    } PARSEDURLA, * PPARSEDURLA;
typedef struct tagPARSEDURLW {
    DWORD     cbSize;
    // Pointers into the buffer that was provided to ParseURL
    LPCWSTR   pszProtocol;
    UINT      cchProtocol;
    LPCWSTR   pszSuffix;
    UINT      cchSuffix;
    UINT      nScheme;            // One of URL_SCHEME_*
    } PARSEDURLW, * PPARSEDURLW;
#ifdef UNICODE
typedef PARSEDURLW PARSEDURL;
typedef PPARSEDURLW PPARSEDURL;
#else
typedef PARSEDURLA PARSEDURL;
typedef PPARSEDURLA PPARSEDURL;
#endif // UNICODE

LWSTDAPI            ParseURLA(LPCSTR pcszURL, __inout PARSEDURLA * ppu);
LWSTDAPI            ParseURLW(LPCWSTR pcszURL, __inout PARSEDURLW * ppu);
#ifdef UNICODE
#define ParseURL  ParseURLW
#else
#define ParseURL  ParseURLA
#endif // !UNICODE

#endif  // _WIN32_IE_IE50


#endif //  NO_SHLWAPI_PATH



#ifndef NO_SHLWAPI_REG
//
//=============== Registry Routines ===================================
//


// SHDeleteEmptyKey mimics RegDeleteKey as it behaves on NT.
// SHDeleteKey mimics RegDeleteKey as it behaves on Win95.

LWSTDAPI_(LSTATUS)  SHDeleteEmptyKeyA(__in HKEY hkey, __in_opt LPCSTR pszSubKey);
LWSTDAPI_(LSTATUS)  SHDeleteEmptyKeyW(__in HKEY hkey, __in_opt LPCWSTR pszSubKey);
#ifdef UNICODE
#define SHDeleteEmptyKey  SHDeleteEmptyKeyW
#else
#define SHDeleteEmptyKey  SHDeleteEmptyKeyA
#endif // !UNICODE
LWSTDAPI_(LSTATUS)  SHDeleteKeyA(__in HKEY hkey, __in_opt LPCSTR pszSubKey);
LWSTDAPI_(LSTATUS)  SHDeleteKeyW(__in HKEY hkey, __in_opt LPCWSTR pszSubKey);
#ifdef UNICODE
#define SHDeleteKey  SHDeleteKeyW
#else
#define SHDeleteKey  SHDeleteKeyA
#endif // !UNICODE
LWSTDAPI_(HKEY)     SHRegDuplicateHKey(__in HKEY hkey);


// These functions open the key, get/set/delete the value, then close
// the key.

LWSTDAPI_(LSTATUS)    SHDeleteValueA(__in HKEY hkey, __in_opt LPCSTR pszSubKey, __in_opt LPCSTR pszValue);
LWSTDAPI_(LSTATUS)    SHDeleteValueW(__in HKEY hkey, __in_opt LPCWSTR pszSubKey, __in_opt LPCWSTR pszValue);
#ifdef UNICODE
#define SHDeleteValue  SHDeleteValueW
#else
#define SHDeleteValue  SHDeleteValueA
#endif // !UNICODE
LWSTDAPI_(LSTATUS)    SHGetValueA(
    __in                       HKEY hkey,
    __in_opt                   LPCSTR  pszSubKey,
    __in_opt                   LPCSTR  pszValue,
    __out_opt                  DWORD    *pdwType,
    __out_bcount_opt(*pcbData) void     *pvData,
    __inout_opt                DWORD    *pcbData);
LWSTDAPI_(LSTATUS)    SHGetValueW(
    __in                       HKEY hkey,
    __in_opt                   LPCWSTR  pszSubKey,
    __in_opt                   LPCWSTR  pszValue,
    __out_opt                  DWORD    *pdwType,
    __out_bcount_opt(*pcbData) void     *pvData,
    __inout_opt                DWORD    *pcbData);
#ifdef UNICODE
#define SHGetValue  SHGetValueW
#else
#define SHGetValue  SHGetValueA
#endif // !UNICODE
LWSTDAPI_(LSTATUS)    SHSetValueA(__in HKEY hkey, __in_opt LPCSTR pszSubKey, __in_opt LPCSTR pszValue, __in DWORD dwType,
    __in_bcount_opt(cbData) LPCVOID pvData, __in DWORD cbData);
LWSTDAPI_(LSTATUS)    SHSetValueW(__in HKEY hkey, __in_opt LPCWSTR pszSubKey, __in_opt LPCWSTR pszValue, __in DWORD dwType,
    __in_bcount_opt(cbData) LPCVOID pvData, __in DWORD cbData);
#ifdef UNICODE
#define SHSetValue  SHSetValueW
#else
#define SHSetValue  SHSetValueA
#endif // !UNICODE

#if (_WIN32_IE >= 0x0602)
//
// SRRF - Shell Registry Routine Flags (for SHRegGetValue)
//

typedef int SRRF;

#define SRRF_RT_REG_NONE        0x00000001  // restrict type to REG_NONE      (other data types will not return ERROR_SUCCESS)
#define SRRF_RT_REG_SZ          0x00000002  // restrict type to REG_SZ        (other data types will not return ERROR_SUCCESS) (automatically converts REG_EXPAND_SZ to REG_SZ unless SRRF_NOEXPAND is specified)
#define SRRF_RT_REG_EXPAND_SZ   0x00000004  // restrict type to REG_EXPAND_SZ (other data types will not return ERROR_SUCCESS) (must specify SRRF_NOEXPAND or SHRegGetValue will fail with ERROR_INVALID_PARAMETER)
#define SRRF_RT_REG_BINARY      0x00000008  // restrict type to REG_BINARY    (other data types will not return ERROR_SUCCESS)
#define SRRF_RT_REG_DWORD       0x00000010  // restrict type to REG_DWORD     (other data types will not return ERROR_SUCCESS)
#define SRRF_RT_REG_MULTI_SZ    0x00000020  // restrict type to REG_MULTI_SZ  (other data types will not return ERROR_SUCCESS)
#define SRRF_RT_REG_QWORD       0x00000040  // restrict type to REG_QWORD     (other data types will not return ERROR_SUCCESS)

#define SRRF_RT_DWORD           (SRRF_RT_REG_BINARY | SRRF_RT_REG_DWORD) // restrict type to *32-bit* SRRF_RT_REG_BINARY or SRRF_RT_REG_DWORD (other data types will not return ERROR_SUCCESS)
#define SRRF_RT_QWORD           (SRRF_RT_REG_BINARY | SRRF_RT_REG_QWORD) // restrict type to *64-bit* SRRF_RT_REG_BINARY or SRRF_RT_REG_DWORD (other data types will not return ERROR_SUCCESS)
#define SRRF_RT_ANY             0x0000ffff                               // no type restriction

#define SRRF_RM_ANY             0x00000000  // no mode restriction (default is to allow any mode)
#define SRRF_RM_NORMAL          0x00010000  // restrict system startup mode to "normal boot"               (other startup modes will not return ERROR_SUCCESS)
#define SRRF_RM_SAFE            0x00020000  // restrict system startup mode to "safe mode"                 (other startup modes will not return ERROR_SUCCESS)
#define SRRF_RM_SAFENETWORK     0x00040000  // restrict system startup mode to "safe mode with networking" (other startup modes will not return ERROR_SUCCESS)

#define SRRF_NOEXPAND           0x10000000  // do not automatically expand environment strings if value is of type REG_EXPAND_SZ
#define SRRF_ZEROONFAILURE      0x20000000  // if pvData is not NULL, set content to all zeros on failure
#define SRRF_NOVIRT             0x40000000  // if the requested key is virtualized, then fail with ERROR_FILE_NOT_FOUND


// Function:
//
//  SHRegGetValue()
//
// Purpose:
//
//  Gets a registry value.  SHRegGetValue() provides the following benefits:
//
//  - data type checking
//  - boot mode checking
//  - auto-expansion of REG_EXPAND_SZ data
//  - guaranteed NULL termination of REG_SZ, REG_EXPAND_SZ, REG_MULTI_SZ data
//
// Parameters:
//
//  hkey        - handle to a currently open key.
//
//  pszSubKey   - pointer to a null-terminated string specifying the relative
//                path from hkey to one of its subkeys from which the data is
//                to be retrieved.  this will be opened with KEY_READ sam.
//
//                Note1: pszSubKey can be NULL or "".  In either of these two
//                       cases, the data is retrieved from the hkey itself.
//                Note2: *** PERF ***
//                       If pszSubKey is not NULL or "", the subkey will be
//                       automatically be opened and closed by this routine
//                       in order to obtain the data.  If you are retrieving
//                       multiple values from the same subkey, it is better
//                       for perf to open the subkey via RegOpenKeyEx() prior
//                       to calling this method, and using this opened key as
//                       hkey with pszSubKey set to NULL.
//
//  pszValue    - pointer to a null-terminated string specifying the name of
//                the value to query for data
//
//                Note1: pszValue can be NULL or "".  In either of these two
//                       cases, the data is retrieved from the unnamed or
//                       default value.
//
//  srrfFlags   - bitwise or of SRRF_ flags, which cannot be 0:  at least one
//                type restriction must be specified (SRRF_RT_...), or if any
//                type is desired then SRRF_RT_ANY can be specified
//
//                Note1: SRRF_RT_ANY will allow any data type to be returned.
//                Note2: The following two type restrictions have special
//                       handling semantics:
//
//                         SRRF_RT_DWORD == SRRF_RT_REG_BINARY | SRRF_RT_REG_DWORD
//                         SRRF_RT_QWORD == SRRF_RT_REG_BINARY | SRRF_RT_REG_QWORD
//
//                       If either of these are specified, with no other type
//                       restrictions, then in the prior case the restriction
//                       will limit "valid" returned data to either REG_DWORD
//                       or 32-bit REG_BINARY data, and in the latter case
//                       the restriction will limit "valid" returned data to
//                       either REG_QWORD or 64-bit REG_BINARY.
//
//  pdwType     - pointer to a dword which receives a code indicating the
//                type of data stored in the specified value
//
//                Note1: pdwType can be NULL if no type information is wanted
//                Note2: If pdwType is not NULL, and the SRRF_NOEXPAND flag
//                       has not been set, data types of REG_EXPAND_SZ will
//                       be returned as REG_SZ since they are automatically
//                       expanded in this method.
//
//  pvData      - pointer to a buffer that receives the value's data
//
//                Note1: pvData can be NULL if the data is not required.
//                       pvData is usually NULL if doing either a simple
//                       existence test, or if interested in the size only.
//                Note2: *** PERF ***
//                       Reference 'perf' note for pcbData.
//
//  pcbData     - when pvData is NULL:
//                  optional pointer to a dword that receives a size in bytes
//                  which would be sufficient to hold the registry data (note
//                  this size is not guaranteed to be exact, merely sufficient)
//                when pvData is not NULL:
//                  required pointer to a dword that specifies the size in
//                  bytes of the buffer pointed to by the pvData parameter
//                  and receives a size in bytes of:
//                  a) the number of bytes read into pvData on ERROR_SUCCESS
//                     (note this size is guaranteed to be exact)
//                  b) the number of bytes which would be sufficient to hold
//                     the registry data on ERROR_MORE_DATA -- pvData was of
//                     insufficient size (note this size is not guaranteed to
//                     be exact, merely sufficient)
//
//                Note1: pcbData can be NULL only if pvData is NULL.
//                Note2: *** PERF ***
//                       The potential for an 'extra' call to the registry to
//                       read (or re-read) in the data exists when the data
//                       type is REG_EXPAND_SZ and the SRRF_NOEXPAND flag has
//                       not been set.  The following conditions will result
//                       in this 'extra' read operation:
//                       i)  when pvData is NULL and pcbData is not NULL
//                           we must read in the data from the registry
//                           anyway in order to obtain the string and perform
//                           an expand on it to obtain and return the total
//                           required size in pcbData
//                       ii) when pvData is not NULL but is of insufficient
//                           size we must re-read in the data from the
//                           registry in order to obtain the entire string
//                           and perform an expand on it to obtain and return
//                           the total required size in pcbData
//
// Remarks:
//
//  The key identified by hkey must have been opened with KEY_QUERY_VALUE
//  access.  If pszSubKey is not NULL or "", it must be able to be opened
//  with KEY_QUERY_VALUE access in the current calling context.
//
//  If the data type is REG_SZ, REG_EXPAND_SZ or REG_MULTI_SZ then any
//  returned data is guaranteed to take into account proper null termination.
//  For example:  if pcbData is not NULL, its returned size will include the
//  bytes for a null terminator  if pvData is not NULL, its returned data
//  will be properly null terminated.
//
//  If the data type is REG_EXPAND_SZ, then unless the SRRF_NOEXPAND flag
//  is set the data will be automatically expanded prior to being returned.
//  For example:  if pdwType is not NULL, its returned type will be changed
//  to REG_SZ,  if pcbData is not NULL, its returned size will include the
//  bytes for a properly expanded string.  if pvData is not NULL, its
//  returned data will be the expanded version of the string.
//
//  Reference MSDN documentation for RegQueryValueEx() for more information
//  of the behaviour when pdwType, pvData, and/or pcbData are equal to NULL.
//
// Return Values:
//
//  If the function succeeds, the return value is ERROR_SUCCESS and all out
//  parameters requested (pdwType, pvData, pcbData) are valid.
//
//  If the function fails due to insufficient space in a provided non-NULL
//  pvData, the return value is ERROR_MORE_DATA and only pdwType and pcbData
//  can contain valid data.  The content of pvData in this case is undefined.
//
// Examples:
//
//  1) read REG_SZ (or REG_EXPAND_SZ as REG_SZ) "string" data from the (default) value of an open hkey
//
//      TCHAR szData[128]
//      DWORD cbData = sizeof(pszData)
//      if (ERROR_SUCCESS == SHRegGetValue(hkey, NULL, NULL, SRRF_RT_REG_SZ, NULL, szData, &cbData))
//      {
//          // use sz (successful read)
//      }
//
//  2) read REG_SZ (or REG_EXPAND_SZ as REG_SZ) "string" data of unknown size from the "MyValue" value of an open hkey
//
//      DWORD cbData
//      if (ERROR_SUCCESS == SHRegGetValue(hkey, NULL, TEXT("MyValue"), SRRF_RT_REG_SZ, NULL, NULL, &cbData))
//      {
//          TCHAR *pszData = new TCHAR[cbData/sizeof(TCHAR)]
//          if (pszData)
//          {
//              if (ERROR_SUCCESS == SHRegGetValue(hkey, NULL, TEXT("MyValue"), SRRF_RT_REG_SZ, NULL, pszData, &cbData))
//              {
//                  // use pszData (successful read)
//              }
//              delete[] pszData
//          }
//      }
//
//  3) read "dword" data from the "MyValue" value of the "MySubKey" subkey of an open hkey
//
//      DWORD dwData
//      DWORD cbData = sizeof(dwData)
//      if (ERROR_SUCCESS == SHRegGetValue(hkey, TEXT("MySubKey"), TEXT("MyValue"), SRRF_RT_REG_DWORD, NULL, &dwData, &cbData))
//      {
//          // use dwData (successful read)
//      }
//
//  4) read "dword" data from the "MyValue" value of the "MySubKey" subkey of an open hkey (32-bit binary data also ok)
//
//      DWORD dwData
//      DWORD cbData = sizeof(dwData)
//      if (ERROR_SUCCESS == SHRegGetValue(hkey, TEXT("MySubKey"), TEXT("MyValue"), SRRF_RT_DWORD, NULL, &dwData, &cbData))
//      {
//          // use dwData (successful read)
//      }
//
//  5) determine existence of "MyValue" value of an open hkey
//
//      BOOL bExists = ERROR_SUCCESS == SHRegGetValue(hkey, NULL, TEXT("MyValue"), SRRF_RT_ANY, NULL, NULL, NULL)

LWSTDAPI_(LSTATUS) SHRegGetValueA(__in HKEY hkey, __in_opt LPCSTR pszSubKey, __in_opt LPCSTR pszValue,
    __in SRRF srrfFlags, __out_opt DWORD *pdwType, __out_bcount_part_opt(*pcbData,*pcbData) __typefix(LPBYTE) void *pvData,
    __inout_opt DWORD *pcbData);
LWSTDAPI_(LSTATUS) SHRegGetValueW(__in HKEY hkey, __in_opt LPCWSTR pszSubKey, __in_opt LPCWSTR pszValue,
    __in SRRF srrfFlags, __out_opt DWORD *pdwType, __out_bcount_part_opt(*pcbData,*pcbData) __typefix(LPBYTE) void *pvData,
    __inout_opt DWORD *pcbData);
#ifdef UNICODE
#define SHRegGetValue  SHRegGetValueW
#else
#define SHRegGetValue  SHRegGetValueA
#endif // !UNICODE

LWSTDAPI_(LSTATUS) SHRegSetValue(__in HKEY    hkey, __in_opt LPCWSTR pszSubKey, __in_opt LPCWSTR pszValue, __in SRRF srrfFlags,
    __in DWORD dwType, __in_bcount_opt(cbData) LPCVOID pvData, __in_opt DWORD cbData);

LWSTDAPI_(LSTATUS) SHRegGetValueFromHKCUHKLM(__in PCWSTR pwszKey, __in_opt PCWSTR pwszValue, __in SRRF srrfFlags,
                                        __out_opt DWORD* pdwType, __out_bcount_part_opt(*pcbData,*pcbData) __typefix(LPBYTE) void* pvData,
                                        __inout_opt DWORD * pcbData);
STDAPI_(BOOL) SHRegGetBoolValueFromHKCUHKLM(__in PCWSTR pszKey, __in_opt PCWSTR pszValue, __in BOOL fDefault);
#endif  // (_WIN32_IE >= 0x0602)

// These functions behave just like RegQueryValueEx(), except if the data
// type is REG_SZ, REG_EXPAND_SZ or REG_MULTI_SZ then the string is
// guaranteed to be properly null terminated.
//
// Additionally, if the data type is REG_EXPAND_SZ these functions will
// go ahead and expand out the string, and "massage" the returned *pdwType
// to be REG_SZ.
LWSTDAPI_(LSTATUS) SHQueryValueExA(
    __in                       HKEY      hkey,
    __in_opt                   LPCSTR  pszValue,
    __reserved                 DWORD    *pdwReserved,
    __out_opt                  DWORD    *pdwType,
    __out_bcount_part_opt(*pcbData,*pcbData) void  *pvData,
    __inout_opt                DWORD    *pcbData);
// These functions behave just like RegQueryValueEx(), except if the data
// type is REG_SZ, REG_EXPAND_SZ or REG_MULTI_SZ then the string is
// guaranteed to be properly null terminated.
//
// Additionally, if the data type is REG_EXPAND_SZ these functions will
// go ahead and expand out the string, and "massage" the returned *pdwType
// to be REG_SZ.
LWSTDAPI_(LSTATUS) SHQueryValueExW(
    __in                       HKEY      hkey,
    __in_opt                   LPCWSTR  pszValue,
    __reserved                 DWORD    *pdwReserved,
    __out_opt                  DWORD    *pdwType,
    __out_bcount_part_opt(*pcbData,*pcbData) void  *pvData,
    __inout_opt                DWORD    *pcbData);
#ifdef UNICODE
#define SHQueryValueEx  SHQueryValueExW
#else
#define SHQueryValueEx  SHQueryValueExA
#endif // !UNICODE

// Enumeration functions support.

LWSTDAPI_(LSTATUS)     SHEnumKeyExA(__in HKEY hkey, DWORD dwIndex, __out_ecount(*pcchName) LPSTR pszName, __inout LPDWORD pcchName);
LWSTDAPI_(LSTATUS)     SHEnumKeyExW(__in HKEY hkey, DWORD dwIndex, __out_ecount(*pcchName) LPWSTR pszName, __inout LPDWORD pcchName);
LWSTDAPI_(LSTATUS)     SHEnumValueA(__in HKEY hkey, __in DWORD dwIndex, __out_ecount_opt(*pcchValueName) PSTR pszValueName,
    __inout_opt LPDWORD pcchValueName, __out_opt LPDWORD pdwType, __out_bcount_part_opt(*pcbData,*pcbData) __typefix(LPBYTE) void *pvData,
    __inout_opt LPDWORD pcbData);
LWSTDAPI_(LSTATUS)     SHEnumValueW(__in HKEY hkey, __in DWORD dwIndex, __out_ecount_opt(*pcchValueName) PWSTR pszValueName,
    __inout_opt LPDWORD pcchValueName, __out_opt LPDWORD pdwType, __out_bcount_part_opt(*pcbData,*pcbData) __typefix(LPBYTE) void *pvData,
    __inout_opt LPDWORD pcbData);
LWSTDAPI_(LSTATUS)     SHQueryInfoKeyA(__in HKEY hkey, __out_opt LPDWORD pcSubKeys, __out_opt LPDWORD pcchMaxSubKeyLen, __out_opt LPDWORD pcValues, __out_opt LPDWORD pcchMaxValueNameLen);
LWSTDAPI_(LSTATUS)     SHQueryInfoKeyW(__in HKEY hkey, __out_opt LPDWORD pcSubKeys, __out_opt LPDWORD pcchMaxSubKeyLen, __out_opt LPDWORD pcValues, __out_opt LPDWORD pcchMaxValueNameLen);

// recursive key copy
LWSTDAPI_(LSTATUS)     SHCopyKeyA(__in HKEY hkeySrc, __in_opt LPCSTR   szSrcSubKey, __in HKEY hkeyDest, __reserved DWORD fReserved);
LWSTDAPI_(LSTATUS)     SHCopyKeyW(__in HKEY hkeySrc, __in_opt LPCWSTR wszSrcSubKey, __in HKEY hkeyDest, __reserved DWORD fReserved);

// Getting and setting file system paths with environment variables

LWSTDAPI_(LSTATUS)    SHRegGetPathA(__in HKEY hKey, __in_opt LPCSTR pcszSubKey, __in_opt LPCSTR pcszValue, __out_ecount(MAX_PATH) LPSTR pszPath, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)    SHRegGetPathW(__in HKEY hKey, __in_opt LPCWSTR pcszSubKey, __in_opt LPCWSTR pcszValue, __out_ecount(MAX_PATH) LPWSTR pszPath, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)    SHRegSetPathA(__in HKEY hKey, __in_opt LPCSTR pcszSubKey, __in_opt LPCSTR pcszValue, __in LPCSTR pcszPath, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)    SHRegSetPathW(__in HKEY hKey, __in_opt LPCWSTR pcszSubKey, __in_opt LPCWSTR pcszValue, __in LPCWSTR pcszPath, __in DWORD dwFlags);

#ifdef UNICODE
#define SHEnumKeyEx           SHEnumKeyExW
#define SHEnumValue           SHEnumValueW
#define SHQueryInfoKey        SHQueryInfoKeyW
#define SHCopyKey             SHCopyKeyW
#define SHRegGetPath          SHRegGetPathW
#define SHRegSetPath          SHRegSetPathW
#else
#define SHEnumKeyEx           SHEnumKeyExA
#define SHEnumValue           SHEnumValueA
#define SHQueryInfoKey        SHQueryInfoKeyA
#define SHCopyKey             SHCopyKeyA
#define SHRegGetPath          SHRegGetPathA
#define SHRegSetPath          SHRegSetPathA
#endif


//////////////////////////////////////////////
// User Specific Registry Access Functions
//////////////////////////////////////////////

typedef enum
{
    SHREGDEL_DEFAULT = 0x00000000,       // Delete's HKCU, or HKLM if HKCU is not found.
    SHREGDEL_HKCU    = 0x00000001,       // Delete HKCU only
    SHREGDEL_HKLM    = 0x00000010,       // Delete HKLM only.
    SHREGDEL_BOTH    = 0x00000011,       // Delete both HKCU and HKLM.
} SHREGDEL_FLAGS;

typedef enum
{
    SHREGENUM_DEFAULT = 0x00000000,       // Enumerates HKCU or HKLM if not found.
    SHREGENUM_HKCU    = 0x00000001,       // Enumerates HKCU only
    SHREGENUM_HKLM    = 0x00000010,       // Enumerates HKLM only.
    SHREGENUM_BOTH    = 0x00000011,       // Enumerates both HKCU and HKLM without duplicates.
                                          // This option is NYI.
} SHREGENUM_FLAGS;

#define     SHREGSET_HKCU           0x00000001       // Write to HKCU if empty.
#define     SHREGSET_FORCE_HKCU     0x00000002       // Write to HKCU.
#define     SHREGSET_HKLM           0x00000004       // Write to HKLM if empty.
#define     SHREGSET_FORCE_HKLM     0x00000008       // Write to HKLM.
#define     SHREGSET_DEFAULT        (SHREGSET_FORCE_HKCU | SHREGSET_HKLM)          // Default is SHREGSET_FORCE_HKCU | SHREGSET_HKLM.

typedef HANDLE HUSKEY;  // HUSKEY is a Handle to a User Specific KEY.
typedef HUSKEY *PHUSKEY;

LWSTDAPI_(LSTATUS)     SHRegCreateUSKeyA(__in LPCSTR pszPath, __in REGSAM samDesired, __in_opt HUSKEY hRelativeUSKey, __out PHUSKEY phNewUSKey, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)     SHRegCreateUSKeyW(__in LPCWSTR pwzPath, __in REGSAM samDesired, __in_opt HUSKEY hRelativeUSKey, __out PHUSKEY phNewUSKey, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)     SHRegOpenUSKeyA(__in LPCSTR pszPath, __in REGSAM samDesired, __in_opt HUSKEY hRelativeUSKey, __out PHUSKEY phNewUSKey, __in BOOL fIgnoreHKCU);
LWSTDAPI_(LSTATUS)     SHRegOpenUSKeyW(__in LPCWSTR pwzPath, __in REGSAM samDesired, __in_opt HUSKEY hRelativeUSKey, __out PHUSKEY phNewUSKey, __in BOOL fIgnoreHKCU);
LWSTDAPI_(LSTATUS)     SHRegQueryUSValueA(
    __in                                      HUSKEY  hUSKey,
    __in_opt                                  LPCSTR  pszValue,
    __inout_opt                               DWORD * pdwType,
    __out_bcount_part_opt(*pcbData, *pcbData) void *  pvData,
    __inout_opt                               DWORD * pcbData,
    __in                                      BOOL    fIgnoreHKCU,
    __in_bcount_opt(dwDefaultDataSize)        void *  pvDefaultData,
    __in_opt                                  DWORD   dwDefaultDataSize);
LWSTDAPI_(LSTATUS)     SHRegQueryUSValueW(
    __in                                      HUSKEY  hUSKey,
    __in_opt                                  LPCWSTR  pszValue,
    __inout_opt                               DWORD * pdwType,
    __out_bcount_part_opt(*pcbData, *pcbData) void *  pvData,
    __inout_opt                               DWORD * pcbData,
    __in                                      BOOL    fIgnoreHKCU,
    __in_bcount_opt(dwDefaultDataSize)        void *  pvDefaultData,
    __in_opt                                  DWORD   dwDefaultDataSize);
LWSTDAPI_(LSTATUS)     SHRegWriteUSValueA(__in HUSKEY hUSKey, __in LPCSTR pszValue, __in DWORD dwType, __in_bcount(cbData) const void *pvData, __in DWORD cbData, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)     SHRegWriteUSValueW(__in HUSKEY hUSKey, __in LPCWSTR pwzValue, __in DWORD dwType, __in_bcount(cbData) const void *pvData, __in DWORD cbData, __in DWORD dwFlags);
LWSTDAPI_(LSTATUS)     SHRegDeleteUSValueA(__in HUSKEY hUSKey, __in LPCSTR pszValue, __in SHREGDEL_FLAGS delRegFlags);
LWSTDAPI_(LSTATUS)     SHRegDeleteUSValueW(__in HUSKEY hUSKey, __in LPCWSTR pwzValue, __in SHREGDEL_FLAGS delRegFlags);
LWSTDAPI_(LSTATUS)     SHRegDeleteEmptyUSKeyW(__in HUSKEY hUSKey, __in LPCWSTR pwzSubKey, __in SHREGDEL_FLAGS delRegFlags);
LWSTDAPI_(LSTATUS)     SHRegDeleteEmptyUSKeyA(__in HUSKEY hUSKey, __in LPCSTR pszSubKey, __in SHREGDEL_FLAGS delRegFlags);
LWSTDAPI_(LSTATUS)     SHRegEnumUSKeyA(__in HUSKEY hUSKey, __in DWORD dwIndex, __out_ecount_part(*pcchName,*pcchName) LPSTR pszName, __inout LPDWORD pcchName, __in SHREGENUM_FLAGS enumRegFlags);
LWSTDAPI_(LSTATUS)     SHRegEnumUSKeyW(__in HUSKEY hUSKey, __in DWORD dwIndex, __out_ecount_part(*pcchName,*pcchName) LPWSTR pwzName, __inout LPDWORD pcchName, __in SHREGENUM_FLAGS enumRegFlags);
LWSTDAPI_(LSTATUS)     SHRegEnumUSValueA(__in HUSKEY hUSkey, __in DWORD dwIndex,
    __out_ecount_part(*pcchValueName,*pcchValueName) LPSTR pszValueName, __inout LPDWORD pcchValueName, __out_opt LPDWORD pdwType,
    __out_bcount_part_opt(*pcbData, *pcbData) void *pvData, __inout_opt LPDWORD pcbData, __in SHREGENUM_FLAGS enumRegFlags);
LWSTDAPI_(LSTATUS)     SHRegEnumUSValueW(__in HUSKEY hUSkey, __in DWORD dwIndex,
    __out_ecount_part(*pcchValueName,*pcchValueName) LPWSTR pszValueName, __inout LPDWORD pcchValueName, __out_opt LPDWORD pdwType,
    __out_bcount_part_opt(*pcbData, *pcbData) void *pvData, __inout_opt LPDWORD pcbData, __in SHREGENUM_FLAGS enumRegFlags);
LWSTDAPI_(LSTATUS)     SHRegQueryInfoUSKeyA(__in HUSKEY hUSKey, __out_opt LPDWORD pcSubKeys, __out_opt LPDWORD pcchMaxSubKeyLen, __out_opt LPDWORD pcValues, __out_opt LPDWORD pcchMaxValueNameLen, __in SHREGENUM_FLAGS enumRegFlags);
LWSTDAPI_(LSTATUS)     SHRegQueryInfoUSKeyW(__in HUSKEY hUSKey, __out_opt LPDWORD pcSubKeys, __out_opt LPDWORD pcchMaxSubKeyLen, __out_opt LPDWORD pcValues, __out_opt LPDWORD pcchMaxValueNameLen, __in SHREGENUM_FLAGS enumRegFlags);
LWSTDAPI_(LSTATUS)     SHRegCloseUSKey(__in HUSKEY hUSKey);


// These calls are equal to an SHRegOpenUSKey, SHRegQueryUSValue, and then a SHRegCloseUSKey.
STDAPI_(LSTATUS) SHRegGetUSValueA(
    __in                                      LPCSTR  pszSubKey,
    __in_opt                                  LPCSTR  pszValue,
    __inout_opt                               DWORD  *pdwType,
    __out_bcount_part_opt(*pcbData, *pcbData) void   *pvData,
    __inout_opt                               DWORD  *pcbData,
    __in                                      BOOL    fIgnoreHKCU,
    __in_bcount_opt(dwDefaultDataSize)        void   *pvDefaultData,
    __in                                      DWORD   dwDefaultDataSize);
STDAPI_(LSTATUS) SHRegGetUSValueW(
    __in                                      LPCWSTR  pszSubKey,
    __in_opt                                  LPCWSTR  pszValue,
    __inout_opt                               DWORD  *pdwType,
    __out_bcount_part_opt(*pcbData, *pcbData) void   *pvData,
    __inout_opt                               DWORD  *pcbData,
    __in                                      BOOL    fIgnoreHKCU,
    __in_bcount_opt(dwDefaultDataSize)        void   *pvDefaultData,
    __in                                      DWORD   dwDefaultDataSize);
LWSTDAPI_(LSTATUS)     SHRegSetUSValueA(__in LPCSTR pszSubKey, __in LPCSTR pszValue, __in DWORD dwType, __in_bcount_opt(cbData) const void *pvData, __in_opt DWORD cbData, __in_opt DWORD dwFlags);
LWSTDAPI_(LSTATUS)     SHRegSetUSValueW(__in LPCWSTR pwzSubKey, __in LPCWSTR pwzValue, __in DWORD dwType, __in_bcount_opt(cbData) const void *pvData, __in_opt DWORD cbData, __in_opt DWORD dwFlags);
LWSTDAPI_(int)         SHRegGetIntW(__in HKEY hk, __in_opt PCWSTR pwzKey, __in int iDefault);

#ifdef UNICODE
#define SHRegCreateUSKey        SHRegCreateUSKeyW
#define SHRegOpenUSKey          SHRegOpenUSKeyW
#define SHRegQueryUSValue       SHRegQueryUSValueW
#define SHRegWriteUSValue       SHRegWriteUSValueW
#define SHRegDeleteUSValue      SHRegDeleteUSValueW
#define SHRegDeleteEmptyUSKey   SHRegDeleteEmptyUSKeyW
#define SHRegEnumUSKey          SHRegEnumUSKeyW
#define SHRegEnumUSValue        SHRegEnumUSValueW
#define SHRegQueryInfoUSKey     SHRegQueryInfoUSKeyW
#define SHRegGetUSValue         SHRegGetUSValueW
#define SHRegSetUSValue         SHRegSetUSValueW
#define SHRegGetInt             SHRegGetIntW
#else
#define SHRegCreateUSKey        SHRegCreateUSKeyA
#define SHRegOpenUSKey          SHRegOpenUSKeyA
#define SHRegQueryUSValue       SHRegQueryUSValueA
#define SHRegWriteUSValue       SHRegWriteUSValueA
#define SHRegDeleteUSValue      SHRegDeleteUSValueA
#define SHRegDeleteEmptyUSKey   SHRegDeleteEmptyUSKeyA
#define SHRegEnumUSKey          SHRegEnumUSKeyA
#define SHRegEnumUSValue        SHRegEnumUSValueA
#define SHRegQueryInfoUSKey     SHRegQueryInfoUSKeyA
#define SHRegGetUSValue         SHRegGetUSValueA
#define SHRegSetUSValue         SHRegSetUSValueA
#endif

LWSTDAPI_(BOOL) SHRegGetBoolUSValueA(__in LPCSTR pszSubKey, __in_opt LPCSTR pszValue, __in BOOL fIgnoreHKCU, __in BOOL fDefault);
LWSTDAPI_(BOOL) SHRegGetBoolUSValueW(__in LPCWSTR pszSubKey, __in_opt LPCWSTR pszValue, __in BOOL fIgnoreHKCU, __in BOOL fDefault);
#ifdef UNICODE
#define SHRegGetBoolUSValue  SHRegGetBoolUSValueW
#else
#define SHRegGetBoolUSValue  SHRegGetBoolUSValueA
#endif // !UNICODE

//
//  Association APIs
//
//  these APIs are to assist in accessing the data in HKCR
//  getting the Command strings and exe paths
//  for different verbs and extensions are simplified this way
//

enum
{
    ASSOCF_INIT_NOREMAPCLSID           = 0x00000001,  //  do not remap clsids to progids
    ASSOCF_INIT_BYEXENAME              = 0x00000002,  //  executable is being passed in
    ASSOCF_OPEN_BYEXENAME              = 0x00000002,  //  executable is being passed in
    ASSOCF_INIT_DEFAULTTOSTAR          = 0x00000004,  //  treat "*" as the BaseClass
    ASSOCF_INIT_DEFAULTTOFOLDER        = 0x00000008,  //  treat "Folder" as the BaseClass
    ASSOCF_NOUSERSETTINGS              = 0x00000010,  //  dont use HKCU
    ASSOCF_NOTRUNCATE                  = 0x00000020,  //  dont truncate the return string
    ASSOCF_VERIFY                      = 0x00000040,  //  verify data is accurate (DISK HITS)
    ASSOCF_REMAPRUNDLL                 = 0x00000080,  //  actually gets info about rundlls target if applicable
    ASSOCF_NOFIXUPS                    = 0x00000100,  //  attempt to fix errors if found
    ASSOCF_IGNOREBASECLASS             = 0x00000200,  //  dont recurse into the baseclass
    ASSOCF_INIT_IGNOREUNKNOWN          = 0x00000400,  //  dont use the "Unknown" progid, instead fail
};
typedef DWORD ASSOCF;

typedef enum
{
    ASSOCSTR_COMMAND      = 1,  //  shell\verb\command string
    ASSOCSTR_EXECUTABLE,        //  the executable part of command string
    ASSOCSTR_FRIENDLYDOCNAME,   //  friendly name of the document type
    ASSOCSTR_FRIENDLYAPPNAME,   //  friendly name of executable
    ASSOCSTR_NOOPEN,            //  noopen value
    ASSOCSTR_SHELLNEWVALUE,     //  query values under the shellnew key
    ASSOCSTR_DDECOMMAND,        //  template for DDE commands
    ASSOCSTR_DDEIFEXEC,         //  DDECOMMAND to use if just create a process
    ASSOCSTR_DDEAPPLICATION,    //  Application name in DDE broadcast
    ASSOCSTR_DDETOPIC,          //  Topic Name in DDE broadcast
    ASSOCSTR_INFOTIP,           //  info tip for an item, or list of properties to create info tip from
#if (_WIN32_IE >= _WIN32_IE_IE60)
    ASSOCSTR_QUICKTIP,          //  same as ASSOCSTR_INFOTIP, except, this list contains only quickly retrievable properties
    ASSOCSTR_TILEINFO,          //  similar to ASSOCSTR_INFOTIP - lists important properties for tileview
    ASSOCSTR_CONTENTTYPE,       //  MIME Content type
    ASSOCSTR_DEFAULTICON,       //  Default icon source
    ASSOCSTR_SHELLEXTENSION,    //  Guid string pointing to the Shellex\Shellextensionhandler value.
#endif // _WIN32_IE_IE60
#if (_WIN32_IE >= _WIN32_IE_IE80)
    ASSOCSTR_DROPTARGET,        //  The CLSID of DropTarget
    ASSOCSTR_DELEGATEEXECUTE,   //  The CLSID of DelegateExecute
#endif // _WIN32_IE_IE80
    ASSOCSTR_MAX                //  last item in enum...
} ASSOCSTR;

typedef enum
{
    ASSOCKEY_SHELLEXECCLASS = 1,  //  the key that should be passed to ShellExec(hkeyClass)
    ASSOCKEY_APP,                 //  the "Application" key for the association
    ASSOCKEY_CLASS,               //  the progid or class key
    ASSOCKEY_BASECLASS,           //  the BaseClass key
    ASSOCKEY_MAX                  //  last item in enum...
} ASSOCKEY;

typedef enum
{
    ASSOCDATA_MSIDESCRIPTOR = 1,  //  Component Descriptor to pass to MSI APIs
    ASSOCDATA_NOACTIVATEHANDLER,  //  restrict attempts to activate window
    ASSOCDATA_QUERYCLASSSTORE,    //  should check with the NT Class Store
    ASSOCDATA_HASPERUSERASSOC,    //  defaults to user specified association
#if (_WIN32_IE >= _WIN32_IE_IE60)
    ASSOCDATA_EDITFLAGS,          //  Edit flags.
    ASSOCDATA_VALUE,              //  use pszExtra as the Value name
#endif // _WIN32_IE_IE60
    ASSOCDATA_MAX
} ASSOCDATA;

typedef enum
{
    ASSOCENUM_NONE
} ASSOCENUM;

#undef INTERFACE
#define INTERFACE IQueryAssociations

DECLARE_INTERFACE_IID_( IQueryAssociations, IUnknown, "c46ca590-3c3f-11d2-bee6-0000f805ca57" )
{
    // IUnknown methods
    STDMETHOD (QueryInterface)(THIS_ __in REFIID riid, __deref_out void **ppv) PURE;
    STDMETHOD_(ULONG, AddRef) ( THIS ) PURE;
    STDMETHOD_(ULONG, Release) ( THIS ) PURE;

    // IQueryAssociations methods
    STDMETHOD (Init)(THIS_ __in ASSOCF flags, __in_opt LPCWSTR pszAssoc, __in_opt HKEY hkProgid, __in_opt HWND hwnd) PURE;
    STDMETHOD (GetString)(THIS_ __in ASSOCF flags, __in ASSOCSTR str, __in_opt LPCWSTR pszExtra, __out_ecount_opt(*pcchOut) LPWSTR pszOut, __inout DWORD *pcchOut) PURE;
    STDMETHOD (GetKey)(THIS_ __in ASSOCF flags, __in ASSOCKEY key, __in_opt LPCWSTR pszExtra, __out HKEY *phkeyOut) PURE;
    STDMETHOD (GetData)(THIS_ __in ASSOCF flags, __in ASSOCDATA data, __in_opt LPCWSTR pszExtra, __out_bcount_opt(*pcbOut) void * pvOut, __inout_opt DWORD *pcbOut) PURE;
    STDMETHOD (GetEnum)(THIS_ __in ASSOCF flags, __in ASSOCENUM assocenum, __in_opt LPCWSTR pszExtra, __in REFIID riid, __deref_out void **ppvOut) PURE;
};


// use CLSID_QueryAssociations for clsid, object implements IQueryAssociations
// AssocCreateForClasses() is the more functional version of this API
LWSTDAPI AssocCreate(__in CLSID clsid, __in REFIID riid, __deref_out void **ppv);

//  wrappers for the interface
LWSTDAPI AssocQueryStringA(__in ASSOCF flags, __in ASSOCSTR str, __in LPCSTR pszAssoc, __in_opt LPCSTR pszExtra, __out_ecount_opt(*pcchOut) LPSTR pszOut, __inout DWORD *pcchOut);
//  wrappers for the interface
LWSTDAPI AssocQueryStringW(__in ASSOCF flags, __in ASSOCSTR str, __in LPCWSTR pszAssoc, __in_opt LPCWSTR pszExtra, __out_ecount_opt(*pcchOut) LPWSTR pszOut, __inout DWORD *pcchOut);
#ifdef UNICODE
#define AssocQueryString  AssocQueryStringW
#else
#define AssocQueryString  AssocQueryStringA
#endif // !UNICODE
LWSTDAPI AssocQueryStringByKeyA(__in ASSOCF flags, __in ASSOCSTR str, __in HKEY hkAssoc, __in_opt LPCSTR pszExtra, __out_ecount_opt(*pcchOut) LPSTR pszOut, __inout DWORD *pcchOut);
LWSTDAPI AssocQueryStringByKeyW(__in ASSOCF flags, __in ASSOCSTR str, __in HKEY hkAssoc, __in_opt LPCWSTR pszExtra, __out_ecount_opt(*pcchOut) LPWSTR pszOut, __inout DWORD *pcchOut);
#ifdef UNICODE
#define AssocQueryStringByKey  AssocQueryStringByKeyW
#else
#define AssocQueryStringByKey  AssocQueryStringByKeyA
#endif // !UNICODE
LWSTDAPI AssocQueryKeyA(__in ASSOCF flags, __in ASSOCKEY key, __in LPCSTR pszAssoc, __in_opt LPCSTR pszExtra, __out HKEY *phkeyOut);
LWSTDAPI AssocQueryKeyW(__in ASSOCF flags, __in ASSOCKEY key, __in LPCWSTR pszAssoc, __in_opt LPCWSTR pszExtra, __out HKEY *phkeyOut);
#ifdef UNICODE
#define AssocQueryKey  AssocQueryKeyW
#else
#define AssocQueryKey  AssocQueryKeyA
#endif // !UNICODE

#if (_WIN32_IE >= 0x0601)
//  AssocIsDangerous() checks a file type to determine whether it is "Dangerous"
//      this maps to the IE download dialog's forcing a prompt to open or save.
//      dangerous file types should be handled more carefully than other file types.
//
//  Parameter:  pszAssoc - type to check.  may be an extension or progid.  (".exe" or "exefile" would both be valid)
//
//  Returns: TRUE if the file type is dangerous.
//
//  NOTES:
//
//      this API first checks a hardcoded list of known dangerous types.
//      then it checks the editflags for the file type looking for the FTA_AlwaysUnsafe bit.
//      then it checks Safer policies.
//
LWSTDAPI_(BOOL) AssocIsDangerous(LPCWSTR pszAssoc);

#endif  // _WIN32_IE >= 0x0601

#if (_WIN32_IE >= _WIN32_IE_IE60SP2)
LWSTDAPI AssocGetPerceivedType(__in LPCWSTR pszExt, __out PERCEIVED *ptype, __out PERCEIVEDFLAG *pflag, __out_opt LPWSTR *ppszType);
#endif



#endif //  NO_SHLWAPI_REG



#ifndef NO_SHLWAPI_STREAM
//
//=============== Stream Routines ===================================
//

// objidl.h
#ifndef __IStream_FWD_DEFINED__
#define __IStream_FWD_DEFINED__
typedef interface IStream IStream;
#endif  /* __IStream_FWD_DEFINED__ */

LWSTDAPI_(IStream *) SHOpenRegStreamA(__in HKEY hkey, __in_opt LPCSTR pszSubkey, __in_opt LPCSTR pszValue, __in DWORD grfMode);
LWSTDAPI_(IStream *) SHOpenRegStreamW(__in HKEY hkey, __in_opt LPCWSTR pszSubkey, __in_opt LPCWSTR pszValue, __in DWORD grfMode);
#ifdef UNICODE
#define SHOpenRegStream  SHOpenRegStreamW
#else
#define SHOpenRegStream  SHOpenRegStreamA
#endif // !UNICODE
LWSTDAPI_(IStream *) SHOpenRegStream2A(__in HKEY hkey, __in_opt LPCSTR pszSubkey, __in_opt LPCSTR pszValue, __in DWORD grfMode);
LWSTDAPI_(IStream *) SHOpenRegStream2W(__in HKEY hkey, __in_opt LPCWSTR pszSubkey, __in_opt LPCWSTR pszValue, __in DWORD grfMode);
#ifdef UNICODE
#define SHOpenRegStream2  SHOpenRegStream2W
#else
#define SHOpenRegStream2  SHOpenRegStream2A
#endif // !UNICODE
// New code always wants new implementation...
#undef SHOpenRegStream
#define SHOpenRegStream SHOpenRegStream2

LWSTDAPI SHCreateStreamOnFileA(__in LPCSTR pszFile, __in DWORD grfMode, __deref_out IStream **ppstm);
LWSTDAPI SHCreateStreamOnFileW(__in LPCWSTR pszFile, __in DWORD grfMode, __deref_out IStream **ppstm);
#ifdef UNICODE
#define SHCreateStreamOnFile  SHCreateStreamOnFileW
#else
#define SHCreateStreamOnFile  SHCreateStreamOnFileA
#endif // !UNICODE


#if (_WIN32_IE >= 0x0600)

LWSTDAPI SHCreateStreamOnFileEx(__in LPCWSTR pszFile, __in DWORD grfMode, __in DWORD dwAttributes, __in BOOL fCreate, __in_opt IStream *pstmTemplate, __deref_out IStream **ppstm);

#endif // (_WIN32_IE >= 0x0600)

#if (_WIN32_IE >= _WIN32_IE_IE501)

LWSTDAPI_(IStream *) SHCreateMemStream(__in_bcount_opt(cbInit) const BYTE *pInit, __in UINT cbInit);

#endif // (_WIN32_IE >= _WIN32_IE_IE501)



#endif // NO_SHLWAPI_STREAM


#ifndef NO_SHLWAPI_HTTP
//
//=============== HTTP helper Routines ===================================
//

#if (_WIN32_IE >= 0x0603)
LWSTDAPI GetAcceptLanguagesA(__out_ecount_part(*pcch, *pcch) LPSTR psz, __inout DWORD *pcch);
LWSTDAPI GetAcceptLanguagesW(__out_ecount_part(*pcch, *pcch) LPWSTR psz, __inout DWORD *pcch);
#ifdef UNICODE
#define GetAcceptLanguages  GetAcceptLanguagesW
#else
#define GetAcceptLanguages  GetAcceptLanguagesA
#endif // !UNICODE
#endif // (_WIN32_IE >= 0x0603)

#endif // NO_SHLWAPI_HTTP


#if (_WIN32_IE < _WIN32_IE_IE70) && !defined(NO_SHLWAPI_STOPWATCH)

#define SPMODE_SHELL      0x00000001
#define SPMODE_DEBUGOUT   0x00000002
#define SPMODE_TEST       0x00000004
#define SPMODE_BROWSER    0x00000008
#define SPMODE_FLUSH      0x00000010
#define SPMODE_EVENT      0x00000020
#define SPMODE_MSVM       0x00000040
#define SPMODE_FORMATTEXT 0x00000080
#define SPMODE_PROFILE    0x00000100
#define SPMODE_DEBUGBREAK 0x00000200
#define SPMODE_MSGTRACE   0x00000400
#define SPMODE_PERFTAGS   0x00000800
#define SPMODE_MEMWATCH   0x00001000
#define SPMODE_DBMON      0x00002000
#define SPMODE_MULTISTOP  0x00004000
#ifndef NO_ETW_TRACING
#define SPMODE_EVENTTRACE 0x00008000 // Event Tracing for Windows Enabled
#endif

DWORD WINAPI StopWatchMode(void);
DWORD WINAPI StopWatchFlush(void);

#endif // (_WIN32_IE < _WIN32_IE_IE70) && !defined(NO_SHLWAPI_STOPWATCH)


#if (_WIN32_IE >= _WIN32_IE_IE501)

    LWSTDAPI_(void) IUnknown_Set(__deref_inout IUnknown ** ppunk, __in_opt IUnknown * punk);
    LWSTDAPI_(void) IUnknown_AtomicRelease(__deref_opt_inout void ** ppunk);
    LWSTDAPI IUnknown_GetWindow(__in_opt IUnknown* punk, __out HWND* phwnd);
    LWSTDAPI IUnknown_SetSite(__in IUnknown *punk, __in_opt IUnknown *punkSite);
    LWSTDAPI IUnknown_GetSite(__in IUnknown *punk, __in REFIID riid, __deref_out void **ppv);
    LWSTDAPI IUnknown_QueryService(__in IUnknown* punk, __in REFGUID guidService, __in REFIID riid, __deref_out void ** ppvOut);

#endif // (_WIN32_IE >= _WIN32_IE_IE501)


#if (_WIN32_IE >= _WIN32_IE_IE501)

#if !defined(__cplusplus) && defined(COBJMACROS)
#undef IStream_Read
#undef IStream_Write
#endif

LWSTDAPI IStream_Read(__in IStream *pstm, __out_bcount_full(cb) void *pv, __in ULONG cb);
LWSTDAPI IStream_Write(__in IStream *pstm, __in_bcount(cb) const void *pv, __in ULONG cb);
LWSTDAPI IStream_Reset(__in IStream *pstm);
LWSTDAPI IStream_Size(__in IStream *pstm, __out ULARGE_INTEGER *pui);

// ocidl.h
#ifndef __IConnectionPoint_FWD_DEFINED__
#define __IConnectionPoint_FWD_DEFINED__
typedef interface IConnectionPoint IConnectionPoint;
#endif  /* __IConnectionPoint_FWD_DEFINED__ */

LWSTDAPI ConnectToConnectionPoint(__in_opt IUnknown* punk, __in REFIID riidEvent, __in BOOL fConnect, __in IUnknown* punkTarget, __out DWORD* pdwCookie, __deref_opt_out IConnectionPoint** ppcpOut);

#endif // (_WIN32_IE >= _WIN32_IE_IE501)

#if (_WIN32_IE >= _WIN32_IE_IE60)

LWSTDAPI IStream_ReadPidl(__in IStream *pstm, __deref_out PIDLIST_RELATIVE *ppidlOut);
LWSTDAPI IStream_WritePidl(__in IStream *pstm, __in PCUIDLIST_RELATIVE pidlWrite);

#endif // (_WIN32_IE >= _WIN32_IE_IE60)

#if (_WIN32_IE >= _WIN32_IE_IE70)

LWSTDAPI IStream_ReadStr(__in IStream *pstm, __deref_out PWSTR *ppsz);
LWSTDAPI IStream_WriteStr(__in IStream *pstm, __in PCWSTR psz);

LWSTDAPI IStream_Copy(__in IStream *pstmFrom, __in IStream *pstmTo, DWORD cb);

#endif // (_WIN32_IE >= _WIN32_IE_IE70)


#if (_WIN32_IE >= 0x0600)
#define SHGVSPB_PERUSER             0x00000001 // must have one of PERUSER or ALLUSERS
#define SHGVSPB_ALLUSERS            0x00000002
#define SHGVSPB_PERFOLDER           0x00000004 // must have one of PERFOLDER ALLFOLDERS or INHERIT
#define SHGVSPB_ALLFOLDERS          0x00000008
#define SHGVSPB_INHERIT             0x00000010
#define SHGVSPB_ROAM                0x00000020 // modifies the above
#define SHGVSPB_NOAUTODEFAULTS      0x80000000 // turns off read delegation to more general property bags

#define SHGVSPB_FOLDER              (SHGVSPB_PERUSER | SHGVSPB_PERFOLDER)
#define SHGVSPB_FOLDERNODEFAULTS    (SHGVSPB_PERUSER | SHGVSPB_PERFOLDER | SHGVSPB_NOAUTODEFAULTS)
#define SHGVSPB_USERDEFAULTS        (SHGVSPB_PERUSER | SHGVSPB_ALLFOLDERS)
#define SHGVSPB_GLOBALDEFAULTS      (SHGVSPB_ALLUSERS | SHGVSPB_ALLFOLDERS)

LWSTDAPI SHGetViewStatePropertyBag(__in_opt PCIDLIST_ABSOLUTE pidl, __in_opt LPCWSTR pszBagName, __in DWORD dwFlags, __in REFIID riid, __deref_out void** ppv);
#endif  // (_WIN32_IE >= 0x0600)

// SHFormatDateTime flags
//  (FDTF_SHORTDATE and FDTF_LONGDATE are mutually exclusive, as is
//   FDTF_SHORTIME and FDTF_LONGTIME.)
//
#define FDTF_SHORTTIME          0x00000001      // eg, "7:48 PM"
#define FDTF_SHORTDATE          0x00000002      // eg, "3/29/98"
#define FDTF_DEFAULT            (FDTF_SHORTDATE | FDTF_SHORTTIME) // eg, "3/29/98 7:48 PM"
#define FDTF_LONGDATE           0x00000004      // eg, "Monday, March 29, 1998"
#define FDTF_LONGTIME           0x00000008      // eg. "7:48:33 PM"
#define FDTF_RELATIVE           0x00000010      // uses "Yesterday", etc. if possible
#define FDTF_LTRDATE            0x00000100      // Left To Right reading order
#define FDTF_RTLDATE            0x00000200      // Right To Left reading order
#define FDTF_NOAUTOREADINGORDER 0x00000400      // Don't detect reading order automatically. Useful if you will be converting to Ansi and don't want Unicode reading order characters

LWSTDAPI_(int)  SHFormatDateTimeA(const FILETIME UNALIGNED * pft, __inout_opt DWORD * pdwFlags, __out_ecount(cchBuf) LPSTR pszBuf, UINT cchBuf);
LWSTDAPI_(int)  SHFormatDateTimeW(const FILETIME UNALIGNED * pft, __inout_opt DWORD * pdwFlags, __out_ecount(cchBuf) LPWSTR pszBuf, UINT cchBuf);
#ifdef UNICODE
#define SHFormatDateTime  SHFormatDateTimeW
#else
#define SHFormatDateTime  SHFormatDateTimeA
#endif // !UNICODE

#if (_WIN32_IE >= _WIN32_IE_IE501)

__success(return > 0)
LWSTDAPI_(int)  SHAnsiToUnicode(LPCSTR pszSrc, __out_ecount(cwchBuf) LPWSTR pwszDst, int cwchBuf);
__success(return > 0)
LWSTDAPI_(int)  SHAnsiToAnsi(LPCSTR pszSrc, __out_ecount(cchBuf) LPSTR pszDst, int cchBuf);
__success(return > 0)
LWSTDAPI_(int)  SHUnicodeToAnsi(LPCWSTR pwszSrc, __out_ecount(cchBuf) LPSTR pszDst, int cchBuf);
__success(return > 0)
LWSTDAPI_(int)  SHUnicodeToUnicode(LPCWSTR pwzSrc, __out_ecount(cwchBuf) LPWSTR pwzDst, int cwchBuf);

// The return value from all SH<Type>To<Type> is the size of szDest including the terminater.
#ifdef UNICODE
#define SHTCharToUnicode(wzSrc, wzDest, cchSize)                SHUnicodeToUnicode(wzSrc, wzDest, cchSize)
#define SHTCharToAnsi(wzSrc, szDest, cchSize)                   SHUnicodeToAnsi(wzSrc, szDest, cchSize)
#define SHUnicodeToTChar(wzSrc, wzDest, cchSize)                SHUnicodeToUnicode(wzSrc, wzDest, cchSize)
#define SHAnsiToTChar(szSrc, wzDest, cchSize)                   SHAnsiToUnicode(szSrc, wzDest, cchSize)
#else // UNICODE
#define SHTCharToUnicode(szSrc, wzDest, cchSize)                SHAnsiToUnicode(szSrc, wzDest, cchSize)
#define SHTCharToAnsi(szSrc, szDest, cchSize)                   SHAnsiToAnsi(szSrc, szDest, cchSize)
#define SHUnicodeToTChar(wzSrc, szDest, cchSize)                SHUnicodeToAnsi(wzSrc, szDest, cchSize)
#define SHAnsiToTChar(szSrc, szDest, cchSize)                   SHAnsiToAnsi(szSrc, szDest, cchSize)
#endif // UNICODE

#endif // (_WIN32_IE >= _WIN32_IE_IE501)


#if (_WIN32_IE >= _WIN32_IE_IE501)

LWSTDAPI_(int) SHMessageBoxCheckA(HWND hwnd, LPCSTR pszText, LPCSTR pszCaption, UINT uType, int iDefault, LPCSTR pszRegVal);
LWSTDAPI_(int) SHMessageBoxCheckW(HWND hwnd, LPCWSTR pszText, LPCWSTR pszCaption, UINT uType, int iDefault, LPCWSTR pszRegVal);
#ifdef UNICODE
#define SHMessageBoxCheck  SHMessageBoxCheckW
#else
#define SHMessageBoxCheck  SHMessageBoxCheckA
#endif // !UNICODE

#endif // (_WIN32_IE >= _WIN32_IE_IE501)


#if (_WIN32_IE >= _WIN32_IE_IE501)

// Prevents hang do to hung window on broadcast
LWSTDAPI_(LRESULT) SHSendMessageBroadcastA(__in UINT uMsg, __in WPARAM wParam, __in LPARAM lParam);
// Prevents hang do to hung window on broadcast
LWSTDAPI_(LRESULT) SHSendMessageBroadcastW(__in UINT uMsg, __in WPARAM wParam, __in LPARAM lParam);
#ifdef UNICODE
#define SHSendMessageBroadcast  SHSendMessageBroadcastW
#else
#define SHSendMessageBroadcast  SHSendMessageBroadcastA
#endif // !UNICODE

LWSTDAPI_(CHAR) SHStripMneumonicA(__inout LPSTR pszMenu);
LWSTDAPI_(WCHAR) SHStripMneumonicW(__inout LPWSTR pszMenu);
#ifdef UNICODE
#define SHStripMneumonic  SHStripMneumonicW
#else
#define SHStripMneumonic  SHStripMneumonicA
#endif // !UNICODE

#ifndef NO_SHLWAPI_ISOS

// Returns TRUE/FALSE depending on question
#define OS_WINDOWS                  0           // Windows 9x vs. NT
#define OS_NT                       1           // Windows 9x vs. NT
#define OS_WIN95ORGREATER           2           // Win95 or greater
#define OS_NT4ORGREATER             3           // NT4 or greater
#define OS_WIN98ORGREATER           5           // Win98 or greater
#define OS_WIN98_GOLD               6           // Win98 Gold (Version 4.10 build 1998)
#define OS_WIN2000ORGREATER         7           // Some derivative of Win2000

// NOTE: these flags check explicitly for (dwMajorVersion == 5)
#define OS_WIN2000PRO               8           // Windows 2000 Professional (Workstation)
#define OS_WIN2000SERVER            9           // Windows 2000 Server
#define OS_WIN2000ADVSERVER         10          // Windows 2000 Advanced Server
#define OS_WIN2000DATACENTER        11          // Windows 2000 Data Center Server
#define OS_WIN2000TERMINAL          12          // Windows 2000 Terminal Server in "Application Server" mode (now simply called "Terminal Server")

#define OS_EMBEDDED                 13          // Embedded Windows Edition
#define OS_TERMINALCLIENT           14          // Windows Terminal Client (eg user is comming in via tsclient)
#define OS_TERMINALREMOTEADMIN      15          // Terminal Server in "Remote Administration" mode
#define OS_WIN95_GOLD               16          // Windows 95 Gold (Version 4.0 Build 1995)
#define OS_MEORGREATER              17          // Windows Millennium (Version 5.0)
#define OS_XPORGREATER              18          // Windows XP or greater
#define OS_HOME                     19          // Home Edition (eg NOT Professional, Server, Advanced Server, or Datacenter)
#define OS_PROFESSIONAL             20          // Professional     (aka Workstation; eg NOT Server, Advanced Server, or Datacenter)
#define OS_DATACENTER               21          // Datacenter       (eg NOT Server, Advanced Server, Professional, or Personal)
#define OS_ADVSERVER                22          // Advanced Server  (eg NOT Datacenter, Server, Professional, or Personal)
#define OS_SERVER                   23          // Server           (eg NOT Datacenter, Advanced Server, Professional, or Personal)
#define OS_TERMINALSERVER           24          // Terminal Server - server running in what used to be called "Application Server" mode (now simply called "Terminal Server")
#define OS_PERSONALTERMINALSERVER   25          // Personal Terminal Server - per/pro machine running in single user TS mode
#define OS_FASTUSERSWITCHING        26          // Fast User Switching
#define OS_WELCOMELOGONUI           27          // New friendly logon UI
#define OS_DOMAINMEMBER             28          // Is this machine a member of a domain (eg NOT a workgroup)
#define OS_ANYSERVER                29          // is this machine any type of server? (eg datacenter or advanced server or server)?
#define OS_WOW6432                  30          // Is this process a 32-bit process running on an 64-bit platform?
#define OS_WEBSERVER                31          // Web Edition Server
#define OS_SMALLBUSINESSSERVER      32          // SBS Server
#define OS_TABLETPC                 33          // Are we running on a TabletPC?
#define OS_SERVERADMINUI            34          // Should defaults lean towards those preferred by server administrators?
#define OS_MEDIACENTER              35          // eHome Freestyle Project
#define OS_APPLIANCE                36          // Windows .NET Appliance Server

LWSTDAPI_(BOOL) IsOS(DWORD dwOS);

#endif // NO_SHLWAPI_ISOS

#endif // (_WIN32_IE >= _WIN32_IE_IE501)


typedef enum
{
    GLOBALCOUNTER_SEARCHMANAGER,
    GLOBALCOUNTER_SEARCHOPTIONS,
    GLOBALCOUNTER_FOLDERSETTINGSCHANGE,
    GLOBALCOUNTER_RATINGS,
    GLOBALCOUNTER_APPROVEDSITES,
    GLOBALCOUNTER_RESTRICTIONS,
    GLOBALCOUNTER_SHELLSETTINGSCHANGED,
    GLOBALCOUNTER_SYSTEMPIDLCHANGE,
    GLOBALCOUNTER_OVERLAYMANAGER,
    GLOBALCOUNTER_QUERYASSOCIATIONS,
    GLOBALCOUNTER_IESESSIONS,
    GLOBALCOUNTER_IEONLY_SESSIONS,
    GLOBALCOUNTER_APPLICATION_DESTINATIONS,
    __UNUSED_RECYCLE_WAS_GLOBALCOUNTER_CSCSYNCINPROGRESS,
    GLOBALCOUNTER_BITBUCKETNUMDELETERS,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_SHARES,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_A,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_B,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_C,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_D,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_E,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_F,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_G,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_H,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_I,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_J,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_K,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_L,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_M,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_N,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_O,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_P,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Q,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_R,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_S,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_T,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_U,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_V,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_W,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_X,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Y,
    GLOBALCOUNTER_RECYCLEDIRTYCOUNT_DRIVE_Z,
    __UNUSED_RECYCLE_WAS_GLOBALCOUNTER_RECYCLEDIRTYCOUNT_SERVERDRIVE,
    __UNUSED_RECYCLE_WAS_GLOBALCOUNTER_RECYCLEGLOBALDIRTYCOUNT,
    GLOBALCOUNTER_RECYCLEBINENUM,
    GLOBALCOUNTER_RECYCLEBINCORRUPTED,
    GLOBALCOUNTER_RATINGS_STATECOUNTER,
    GLOBALCOUNTER_PRIVATE_PROFILE_CACHE,
    GLOBALCOUNTER_INTERNETTOOLBAR_LAYOUT,
    GLOBALCOUNTER_FOLDERDEFINITION_CACHE,
    GLOBALCOUNTER_COMMONPLACES_LIST_CACHE,
    GLOBALCOUNTER_PRIVATE_PROFILE_CACHE_MACHINEWIDE,
    GLOBALCOUNTER_ASSOCCHANGED,  // throttles reading of the registry value "GlobalAssocChangedCounter" from HKLM\Software\Microsoft\Windows\CurrentVersion\Explorer
    GLOBALCOUNTER_MAXIMUMVALUE // should always be last value
} SHGLOBALCOUNTER;

LWSTDAPI_(long) SHGlobalCounterGetValue(const SHGLOBALCOUNTER id);
LWSTDAPI_(long) SHGlobalCounterIncrement(const SHGLOBALCOUNTER id);
LWSTDAPI_(long) SHGlobalCounterDecrement(const SHGLOBALCOUNTER id);


// Shared memory apis


#if (_WIN32_IE >= 0x0603)
LWSTDAPI_(HANDLE)   SHAllocShared(__in_bcount_opt(dwSize) const void *pvData, __in DWORD dwSize, __in DWORD dwProcessId);
LWSTDAPI_(BOOL)     SHFreeShared(__in HANDLE hData, __in DWORD dwProcessId);
LWSTDAPI_(void *)   SHLockShared(__in HANDLE hData, __in DWORD dwProcessId);
LWSTDAPI_(BOOL)     SHUnlockShared(__in_xcount("header-preceded") void *pvData);
#endif // _WIN32_IE >= 0x0603


#if (_WIN32_IE >= _WIN32_IE_IE501)

LWSTDAPI_(UINT) WhichPlatform(void);

// Return values of WhichPlatform
#define PLATFORM_UNKNOWN     0
#define PLATFORM_IE3         1      // obsolete: use PLATFORM_BROWSERONLY
#define PLATFORM_BROWSERONLY 1      // browser-only (no new shell)
#define PLATFORM_INTEGRATED  2      // integrated shell

//***   QueryInterface helpers
// NOTES
//  ATL has a fancier version of this.  if we need to extend ours, we
//  should probably just switch to ATL's rather than reinvent.
// EXAMPLE
//  Cfoo::QI(REFIID riid, void **ppv)
//  {
//      // (the IID_xxx comments make grep'ing work!)
//      static const QITAB qit = {
//          QITABENT(Cfoo, Iiface1),    // IID_Iiface1
//          ...
//          QITABENT(Cfoo, IifaceN),    // IID_IifaceN
//          { 0 },                      // n.b. don't forget the 0
//      };
//
//      // n.b. make sure you don't cast 'this'
//      hr = QISearch(this, qit, riid, ppv);
//      if (FAILED(hr))
//          hr = SUPER::QI(riid, ppv);
//      // custom code could be added here for FAILED() case
//      return hr;
//  }
//
//  If you have an interface that is implemented multiple times,
//  the compiler will claim an ambiguous cast, so you need to give
//  some help.  For example, if your class is defined as
//
//  class CClass : public IPersistStream, public IPersistFile
//
//  then you need to say
//
//      QITABENTMULTI(CClass, IPersist, IPersistStream)
//      QITABENT(CClass, IPersistStream)
//      QITABENT(CClass, IPersistFile)
//
//  The MULTI is needed for IPersist because the compiler doesn't
//  know whether you wanted the IPersist from IPersistStream
//  or the IPersist from IPersistFile.  Unless you have played weird
//  compiler tricks, they are the same implementation, so you can
//  just pick either one, doesn't matter.
//
//  Common mistake: You do not need to use MULTI if the base interface
//  can be unambiguously determined.  E.g.,
//
//  class CSimple : public IContextMenu3
//
//      QITABENT(CClass, IContextMenu)      // do not need MULTI
//      QITABENT(CClass, IContextMenu2)     // do not need MULTI
//      QITABENT(CClass, IContextMenu3)
//
//  Do not create an entry for IUnknown; the first entry in the
//  table will be used for IUnknown.
//

typedef struct
{
    const IID * piid;
    int         dwOffset;
} QITAB, *LPQITAB;
typedef const QITAB *LPCQITAB;

#ifdef __cplusplus

#define QITABENTMULTI(Cthis, Ifoo, Iimpl) \
    { &__uuidof(Ifoo), OFFSETOFCLASS(Iimpl, Cthis) }

#else

#define QITABENTMULTI(Cthis, Ifoo, Iimpl) \
    { (IID*) &IID_##Ifoo, OFFSETOFCLASS(Iimpl, Cthis) }

#endif  // __cplusplus

#define QITABENTMULTI2(Cthis, Ifoo, Iimpl) \
    { (IID*) &Ifoo, OFFSETOFCLASS(Iimpl, Cthis) }

#define QITABENT(Cthis, Ifoo) QITABENTMULTI(Cthis, Ifoo, Ifoo)

STDAPI QISearch(__inout void* that, __in LPCQITAB pqit, __in REFIID riid, __deref_out void **ppv);

#endif // (_WIN32_IE >= _WIN32_IE_IE501)

#ifndef STATIC_CAST
//***   STATIC_CAST -- 'portable' static_cast<>
// NOTES
//  do *not* use SAFE_CAST (see comment in OFFSETOFCLASS)
#define STATIC_CAST(typ)   static_cast<typ>
#ifndef _X86_
    // assume only intel compiler (>=vc5) supports static_cast for now
    // we could key off of _MSC_VER >= 1100 but i'm not sure that will work
    //
    // a straight cast will give the correct result but no error checking,
    // so we'll have to catch errors on intel.
    #undef  STATIC_CAST
    #define STATIC_CAST(typ)   (typ)
#endif
#endif

#ifndef OFFSETOFCLASS
//***   OFFSETOFCLASS -- (stolen from ATL)
// we use STATIC_CAST not SAFE_CAST because the compiler gets confused
// (it doesn't constant-fold the ,-op in SAFE_CAST so we end up generating
// code for the table!)

#define OFFSETOFCLASS(base, derived) \
    ((DWORD)(DWORD_PTR)(STATIC_CAST(base*)((derived*)8))-8)
#endif


// Types for SHIsLowMemoryMachine
#define ILMM_IE4    0       // 1997-era machine
LWSTDAPI_(BOOL) SHIsLowMemoryMachine(DWORD dwType);

// Menu Helpers
LWSTDAPI_(int)  GetMenuPosFromID(HMENU hmenu, UINT id);

LWSTDAPI        SHGetInverseCMAP(__out_bcount(cbMap) BYTE *pbMap, ULONG cbMap);


#if (_WIN32_IE >= 0x0500)

// SHAutoComplete
//      hwndEdit - HWND of editbox, ComboBox or ComboBoxEx.
//      dwFlags - Flags to indicate what to AutoAppend or AutoSuggest for the editbox.
//
// WARNING:
//    Caller needs to have called CoInitialize() or OleInitialize()
//    and cannot call CoUninit/OleUninit until after
//    WM_DESTROY on hwndEdit.
//
//  dwFlags values:
#define SHACF_DEFAULT                   0x00000000  // Currently (SHACF_FILESYSTEM | SHACF_URLALL)
#define SHACF_FILESYSTEM                0x00000001  // This includes the File System as well as the rest of the shell (Desktop\My Computer\Control Panel\)
#define SHACF_URLALL                    (SHACF_URLHISTORY | SHACF_URLMRU)
#define SHACF_URLHISTORY                0x00000002  // URLs in the User's History
#define SHACF_URLMRU                    0x00000004  // URLs in the User's Recently Used list.
#define SHACF_USETAB                    0x00000008  // Use the tab to move thru the autocomplete possibilities instead of to the next dialog/window control.
#define SHACF_FILESYS_ONLY              0x00000010  // This includes the File System
#if (_WIN32_IE >= 0x0600)
#define SHACF_FILESYS_DIRS              0x00000020  // Same as SHACF_FILESYS_ONLY except it only includes directories, UNC servers, and UNC server shares.
#endif // (_WIN32_IE >= 0x0600)
#if (_WIN32_IE >= _WIN32_IE_IE70)
#define SHACF_VIRTUAL_NAMESPACE         0x00000040  // Also include the virtual namespace
#endif // _WIN32_IE_IE70
#define SHACF_AUTOSUGGEST_FORCE_ON      0x10000000  // Ignore the registry default and force the feature on.
#define SHACF_AUTOSUGGEST_FORCE_OFF     0x20000000  // Ignore the registry default and force the feature off.
#define SHACF_AUTOAPPEND_FORCE_ON       0x40000000  // Ignore the registry default and force the feature on. (Also know as AutoComplete)
#define SHACF_AUTOAPPEND_FORCE_OFF      0x80000000  // Ignore the registry default and force the feature off. (Also know as AutoComplete)

LWSTDAPI SHAutoComplete(HWND hwndEdit, DWORD dwFlags);

#if (_WIN32_IE >= _WIN32_IE_IE60SP2)
LWSTDAPI SHCreateThreadRef(__inout LONG *pcRef, __deref_out IUnknown **ppunk);
#endif // _WIN32_IE_IE60SP2
LWSTDAPI SHSetThreadRef(__in_opt IUnknown *punk);
LWSTDAPI SHGetThreadRef(__deref_out IUnknown **ppunk);

LWSTDAPI_(BOOL) SHSkipJunction(__in_opt IBindCtx* pbc, __in const CLSID *pclsid);
#endif // (_WIN32_IE >= 0x0500)

enum
{
    CTF_INSIST              = 0x00000001,   // call pfnThreadProc synchronously if CreateThread() fails
    CTF_THREAD_REF          = 0x00000002,   // hold a reference to the creating thread
    CTF_PROCESS_REF         = 0x00000004,   // hold a reference to the creating process
    CTF_COINIT_STA          = 0x00000008,   // init COM as STA for the created thread
    CTF_COINIT              = 0x00000008,   // init COM as STA for the created thread
#if (_WIN32_IE >= _WIN32_IE_IE60)
    CTF_FREELIBANDEXIT      = 0x00000010,   // hold a ref to the DLL and call FreeLibraryAndExitThread() when done
    CTF_REF_COUNTED         = 0x00000020,   // thread supports ref counting via SHGetThreadRef() or CTF_THREAD_REF so that child threads can keep this thread alive
    CTF_WAIT_ALLOWCOM       = 0x00000040,   // while waiting for pfnCallback, allow COM marshaling to the blocked calling thread
#endif // _WIN32_IE_IE60
#if (_WIN32_IE >= _WIN32_IE_IE70)
    CTF_UNUSED              = 0x00000080,
    CTF_INHERITWOW64        = 0x00000100,   // new thread should inherit the wow64 disable state for the file system redirector
#endif // _WIN32_IE_IE70
#if (NTDDI_VERSION >= NTDDI_VISTA)
    CTF_WAIT_NO_REENTRANCY  = 0x00000200,   // don't allow re-entrancy when waiting for the sync proc, this won't work with marshalled objects or SendMessages() from the sync proc
#endif // (NTDDI_VERSION >= NTDDI_VISTA)
#if (NTDDI_VERSION >= NTDDI_WIN7)
    CTF_KEYBOARD_LOCALE     = 0x00000400,   // carry the keyboard locale from creating to created thread
    CTF_OLEINITIALIZE       = 0x00000800,   // init OLE on the created thread (this will also init COM as STA)
    CTF_COINIT_MTA          = 0x00001000,   // init COM as MTA for the created thread
    CTF_NOADDREFLIB         = 0x00002000,   // this flag is the opposite of CTF_FREELIBANDEXIT that is now implicit as of Vista
                                            // this avoids the LoadLibrary/FreeLibraryAndExitThread calls that result in contention for the loader lock
                                            // only use this when the thread being created has some other means to ensure that the code
                                            // of the thread proc will remain loaded. This should not be used in the context of COM objects as those
                                            // need to ensure that the DLL stays loaded as COM will unload DLLs

#endif // (NTDDI_VERSION >= NTDDI_WIN7)
};
typedef DWORD SHCT_FLAGS;   // SHCreateThread flags values

LWSTDAPI_(BOOL) SHCreateThread(__in LPTHREAD_START_ROUTINE pfnThreadProc, __in_opt void *pData, SHCT_FLAGS flags, __in_opt LPTHREAD_START_ROUTINE pfnCallback);
LWSTDAPI_(BOOL) SHCreateThreadWithHandle(__in LPTHREAD_START_ROUTINE pfnThreadProc, __in_opt void *pData, SHCT_FLAGS flags, __in_opt LPTHREAD_START_ROUTINE pfnCallback, __out_opt HANDLE *pHandle);

#if (_WIN32_IE >= _WIN32_IE_IE60)
LWSTDAPI SHReleaseThreadRef(); // release a CTF_THREAD_REF reference earlier than the return of pfnThreadProc
#endif // _WIN32_IE_IE60

#ifndef NO_SHLWAPI_GDI
//
//====== GDI helper functions  ================================================
//

LWSTDAPI_(HPALETTE) SHCreateShellPalette(__in_opt HDC hdc);

#if (_WIN32_IE >= 0x0500)

LWSTDAPI_(void)     ColorRGBToHLS(__in COLORREF clrRGB, __out WORD* pwHue, __out WORD* pwLuminance, __out WORD* pwSaturation);
LWSTDAPI_(COLORREF) ColorHLSToRGB(__in WORD wHue, __in WORD wLuminance, __in WORD wSaturation);
LWSTDAPI_(COLORREF) ColorAdjustLuma(__in COLORREF clrRGB, int n, BOOL fScale);


#endif  // _WIN32_IE >= 0x0500

#endif // NO_SHLWAPI_GDI

//
//====== DllGetVersion  =======================================================
//

typedef struct _DLLVERSIONINFO
{
    DWORD cbSize;
    DWORD dwMajorVersion;                   // Major version
    DWORD dwMinorVersion;                   // Minor version
    DWORD dwBuildNumber;                    // Build number
    DWORD dwPlatformID;                     // DLLVER_PLATFORM_*
} DLLVERSIONINFO;

// Platform IDs for DLLVERSIONINFO
#define DLLVER_PLATFORM_WINDOWS         0x00000001      // Windows 95
#define DLLVER_PLATFORM_NT              0x00000002      // Windows NT

#if (_WIN32_IE >= 0x0501)

typedef struct _DLLVERSIONINFO2
{
    DLLVERSIONINFO info1;
    DWORD dwFlags;                          // No flags currently defined
    ULONGLONG ullVersion;                   // Encoded as:
                                            // Major 0xFFFF 0000 0000 0000
                                            // Minor 0x0000 FFFF 0000 0000
                                            // Build 0x0000 0000 FFFF 0000
                                            // QFE   0x0000 0000 0000 FFFF
} DLLVERSIONINFO2;

#define DLLVER_MAJOR_MASK                    0xFFFF000000000000
#define DLLVER_MINOR_MASK                    0x0000FFFF00000000
#define DLLVER_BUILD_MASK                    0x00000000FFFF0000
#define DLLVER_QFE_MASK                      0x000000000000FFFF

#endif

#define MAKEDLLVERULL(major, minor, build, qfe) \
        (((ULONGLONG)(major) << 48) |        \
         ((ULONGLONG)(minor) << 32) |        \
         ((ULONGLONG)(build) << 16) |        \
         ((ULONGLONG)(  qfe) <<  0))

//
// The caller should always GetProcAddress("DllGetVersion"), not
// implicitly link to it.
//

typedef HRESULT (CALLBACK* DLLGETVERSIONPROC)(DLLVERSIONINFO *);

// DllInstall (to be implemented by self-installing DLLs)
STDAPI DllInstall(__in BOOL bInstall, __in LPCWSTR pszCmdLine);


#if (_WIN32_IE >= 0x0602)
// Function to see if Internet Explorer Enhanced Security Configuration is active for the current user
LWSTDAPI_(BOOL) IsInternetESCEnabled();
#endif // (_WIN32_IE >= 0x0602)


#ifdef __cplusplus
}


#if defined(USE_STRICT_CONST) && !defined(NO_SHLWAPI_STRFCNS)

//=============================================================================
// C++ versions to help detect "const" violations

__inline LPSTR StrChrA(__in LPSTR lpStart, WORD wMatch)
{
    return const_cast<LPSTR>(StrChrA(const_cast<LPCSTR>(lpStart), wMatch));
}
__inline LPWSTR StrChrW(__in LPWSTR lpStart, __in WCHAR wMatch)
{
    return const_cast<LPWSTR>(StrChrW(const_cast<LPCWSTR>(lpStart), wMatch));
}
__inline LPSTR StrChrIA(__in LPSTR lpStart, WORD wMatch)
{
    return const_cast<LPSTR>(StrChrIA(const_cast<LPCSTR>(lpStart), wMatch));
}
__inline LPWSTR StrChrIW(__in LPWSTR lpStart, __in WCHAR wMatch)
{
    return const_cast<LPWSTR>(StrChrIW(const_cast<LPCWSTR>(lpStart), wMatch));
}
#if (_WIN32_IE >= _WIN32_IE_IE60)
__inline LPWSTR StrChrNW(__in LPWSTR lpStart, __in WCHAR wMatch, UINT cchMax)
{
    return const_cast<LPWSTR>(StrChrNW(const_cast<LPCWSTR>(lpStart), wMatch, cchMax));
}
__inline LPWSTR StrChrNIW(__in LPWSTR lpStart, __in WCHAR wMatch, UINT cchMax)
{
    return const_cast<LPWSTR>(StrChrNIW(const_cast<LPCWSTR>(lpStart), wMatch, cchMax));
}
#endif // _WIN32_IE_IE60
__inline LPSTR StrPBrkA(__in LPSTR psz, __in LPCSTR pszSet)
{
    return const_cast<LPSTR>(StrPBrkA(const_cast<LPCSTR>(psz), pszSet));
}
__inline LPWSTR StrPBrkW(__in LPWSTR psz, __in LPCWSTR pszSet)
{
    return const_cast<LPWSTR>(StrPBrkW(const_cast<LPCWSTR>(psz), pszSet));
}
__inline LPSTR StrRChrA(__in LPSTR lpStart, __in_opt LPCSTR lpEnd, __in WORD wMatch)
{
    return const_cast<LPSTR>(StrRChrA(const_cast<LPCSTR>(lpStart), lpEnd, wMatch));
}
__inline LPWSTR StrRChrW(__in LPWSTR lpStart, __in_opt LPCWSTR lpEnd, __in WCHAR wMatch)
{
    return const_cast<LPWSTR>(StrRChrW(const_cast<LPCWSTR>(lpStart), lpEnd, wMatch));
}
__inline LPSTR StrRChrIA(__in LPSTR lpStart, __in_opt LPCSTR lpEnd, __in WORD wMatch)
{
    return const_cast<LPSTR>(StrRChrIA(const_cast<LPCSTR>(lpStart), lpEnd, wMatch));
}
__inline LPWSTR StrRChrIW(__in LPWSTR lpStart, __in_opt LPCWSTR lpEnd, __in WCHAR wMatch)
{
    return const_cast<LPWSTR>(StrRChrIW(const_cast<LPCWSTR>(lpStart), lpEnd, wMatch));
}
__inline LPSTR StrRStrIA(__in LPSTR lpSource, __in_opt LPCSTR lpLast, __in LPCSTR lpSrch)
{
    return const_cast<LPSTR>(StrRStrIA(const_cast<LPCSTR>(lpSource), lpLast, lpSrch));
}
__inline LPWSTR StrRStrIW(__in LPWSTR lpSource, __in_opt LPCWSTR lpLast, __in LPCWSTR lpSrch)
{
    return const_cast<LPWSTR>(StrRStrIW(const_cast<LPCWSTR>(lpSource), lpLast, lpSrch));
}
__inline LPSTR StrStrA(__in LPSTR lpFirst, __in LPCSTR lpSrch)
{
    return const_cast<LPSTR>(StrStrA(const_cast<LPCSTR>(lpFirst), lpSrch));
}
__inline LPWSTR StrStrW(__in LPWSTR lpFirst, __in LPCWSTR lpSrch)
{
    return const_cast<LPWSTR>(StrStrW(const_cast<LPCWSTR>(lpFirst), lpSrch));
}
__inline LPSTR StrStrIA(__in LPSTR lpFirst, __in LPCSTR lpSrch)
{
    return const_cast<LPSTR>(StrStrIA(const_cast<LPCSTR>(lpFirst), lpSrch));
}
__inline LPWSTR StrStrIW(__in LPWSTR lpFirst, __in LPCWSTR lpSrch)
{
    return const_cast<LPWSTR>(StrStrIW(const_cast<LPCWSTR>(lpFirst), lpSrch));
}
#if (_WIN32_IE >= _WIN32_IE_IE60)
__inline LPWSTR StrStrNW(__in LPWSTR lpFirst, __in LPCWSTR lpSrch, __in UINT cchMax)
{
    return const_cast<LPWSTR>(StrStrNW(const_cast<LPCWSTR>(lpFirst), lpSrch, cchMax));
}
__inline LPWSTR StrStrNIW(__in LPWSTR lpFirst, __in LPCWSTR lpSrch, __in UINT cchMax)
{
    return const_cast<LPWSTR>(StrStrNIW(const_cast<LPCWSTR>(lpFirst), lpSrch, cchMax));
}
#endif
__inline LPSTR PathFindExtensionA(__in LPSTR pszPath)
{
    return const_cast<LPSTR>(PathFindExtensionA(const_cast<LPCSTR>(pszPath)));
}
__inline LPWSTR PathFindExtensionW(__in LPWSTR pszPath)
{
    return const_cast<LPWSTR>(PathFindExtensionW(const_cast<LPCWSTR>(pszPath)));
}
__inline LPSTR PathFindFileNameA(__in LPSTR pszPath)
{
    return const_cast<LPSTR>(PathFindFileNameA(const_cast<LPCSTR>(pszPath)));
}
__inline LPWSTR PathFindFileNameW(__in LPWSTR pszPath)
{
    return const_cast<LPWSTR>(PathFindFileNameW(const_cast<LPCWSTR>(pszPath)));
}
__inline LPSTR PathFindNextComponentA(__in LPSTR pszPath)
{
    return const_cast<LPSTR>(PathFindNextComponentA(const_cast<LPCSTR>(pszPath)));
}
__inline LPWSTR PathFindNextComponentW(__in LPWSTR pszPath)
{
    return const_cast<LPWSTR>(PathFindNextComponentW(const_cast<LPCWSTR>(pszPath)));
}
__inline LPSTR PathGetArgsA(__in LPSTR pszPath)
{
    return const_cast<LPSTR>(PathGetArgsA(const_cast<LPCSTR>(pszPath)));
}
__inline LPWSTR PathGetArgsW(__in LPWSTR pszPath)
{
    return const_cast<LPWSTR>(PathGetArgsW(const_cast<LPCWSTR>(pszPath)));
}
__inline LPSTR PathSkipRootA(__in LPSTR pszPath)
{
    return const_cast<LPSTR>(PathSkipRootA(const_cast<LPCSTR>(pszPath)));
}
__inline LPWSTR PathSkipRootW(__in LPWSTR pszPath)
{
    return const_cast<LPWSTR>(PathSkipRootW(const_cast<LPCWSTR>(pszPath)));
}
#endif

#endif

#if defined(DEPRECATE_SUPPORTED)
#pragma warning(pop)
#endif

#ifdef _WIN32
#include <poppack.h>
#endif

#endif


#endif  // _INC_SHLWAPI


