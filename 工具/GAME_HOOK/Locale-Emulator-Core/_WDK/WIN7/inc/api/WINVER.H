
/*****************************************************************************\
*                                                                             *
* winver.h -    Version management functions, types, and definitions          *
*                                                                             *
*               Include file for VER.DLL.  This library is                    *
*               designed to allow version stamping of Windows executable files*
*               and of special .VER files for DOS executable files.           *
*                                                                             *
*               Copyright (c) Microsoft Corporation. All rights reserved.     *
*                                                                             *
\*****************************************************************************/

#ifndef VER_H
#define VER_H

#include <SpecStrings.h>
#include <verrsrc.h>


#ifdef __cplusplus
extern "C" {
#endif

#ifndef RC_INVOKED              /* RC doesn't need to see the rest of this */


/* ----- Function prototypes ----- */

DWORD
APIENTRY
VerFindFileA(
        __in                         DWORD uFlags,
        __in                         LPCSTR szFileName,
        __in_opt                     LPCSTR szWinDir,
        __in                         LPCSTR szAppDir,
        __out_ecount(*lpuCurDirLen)  LPSTR szCurDir,
        __inout                      PUINT lpuCurDirLen,
        __out_ecount(*lpuDestDirLen) LPSTR szDestDir,
        __inout                      PUINT lpuDestDirLen
        );
DWORD
APIENTRY
VerFindFileW(
        __in                         DWORD uFlags,
        __in                         LPCWSTR szFileName,
        __in_opt                     LPCWSTR szWinDir,
        __in                         LPCWSTR szAppDir,
        __out_ecount(*lpuCurDirLen)  LPWSTR szCurDir,
        __inout                      PUINT lpuCurDirLen,
        __out_ecount(*lpuDestDirLen) LPWSTR szDestDir,
        __inout                      PUINT lpuDestDirLen
        );
#ifdef UNICODE
#define VerFindFile  VerFindFileW
#else
#define VerFindFile  VerFindFileA
#endif // !UNICODE

DWORD
APIENTRY
VerInstallFileA(
        __in                         DWORD uFlags,
        __in                         LPCSTR szSrcFileName,
        __in                         LPCSTR szDestFileName,
        __in                         LPCSTR szSrcDir,
        __in                         LPCSTR szDestDir,
        __in                         LPCSTR szCurDir,
        __out_ecount(*lpuTmpFileLen) LPSTR szTmpFile,
        __inout                      PUINT lpuTmpFileLen
        );
DWORD
APIENTRY
VerInstallFileW(
        __in                         DWORD uFlags,
        __in                         LPCWSTR szSrcFileName,
        __in                         LPCWSTR szDestFileName,
        __in                         LPCWSTR szSrcDir,
        __in                         LPCWSTR szDestDir,
        __in                         LPCWSTR szCurDir,
        __out_ecount(*lpuTmpFileLen) LPWSTR szTmpFile,
        __inout                      PUINT lpuTmpFileLen
        );
#ifdef UNICODE
#define VerInstallFile  VerInstallFileW
#else
#define VerInstallFile  VerInstallFileA
#endif // !UNICODE

/* Returns size of version info in bytes */
DWORD
APIENTRY
GetFileVersionInfoSizeA(
        __in        LPCSTR lptstrFilename, /* Filename of version stamped file */
        __out_opt LPDWORD lpdwHandle       /* Information for use by GetFileVersionInfo */
        );
/* Returns size of version info in bytes */
DWORD
APIENTRY
GetFileVersionInfoSizeW(
        __in        LPCWSTR lptstrFilename, /* Filename of version stamped file */
        __out_opt LPDWORD lpdwHandle       /* Information for use by GetFileVersionInfo */
        );
#ifdef UNICODE
#define GetFileVersionInfoSize  GetFileVersionInfoSizeW
#else
#define GetFileVersionInfoSize  GetFileVersionInfoSizeA
#endif // !UNICODE

/* Read version info into buffer */
BOOL
APIENTRY
GetFileVersionInfoA(
        __in                LPCSTR lptstrFilename, /* Filename of version stamped file */
        __reserved          DWORD dwHandle,          /* Information from GetFileVersionSize */
        __in                DWORD dwLen,             /* Length of buffer for info */
        __out_bcount(dwLen) LPVOID lpData            /* Buffer to place the data structure */
        );
/* Read version info into buffer */
BOOL
APIENTRY
GetFileVersionInfoW(
        __in                LPCWSTR lptstrFilename, /* Filename of version stamped file */
        __reserved          DWORD dwHandle,          /* Information from GetFileVersionSize */
        __in                DWORD dwLen,             /* Length of buffer for info */
        __out_bcount(dwLen) LPVOID lpData            /* Buffer to place the data structure */
        );
#ifdef UNICODE
#define GetFileVersionInfo  GetFileVersionInfoW
#else
#define GetFileVersionInfo  GetFileVersionInfoA
#endif // !UNICODE

DWORD APIENTRY GetFileVersionInfoSizeExA(__in DWORD dwFlags, __in LPCSTR lpwstrFilename, __out LPDWORD lpdwHandle);
DWORD APIENTRY GetFileVersionInfoSizeExW(__in DWORD dwFlags, __in LPCWSTR lpwstrFilename, __out LPDWORD lpdwHandle);
#ifdef UNICODE
#define GetFileVersionInfoSizeEx  GetFileVersionInfoSizeExW
#else
#define GetFileVersionInfoSizeEx  GetFileVersionInfoSizeExA
#endif // !UNICODE

BOOL APIENTRY GetFileVersionInfoExA(__in DWORD dwFlags,
                                    __in LPCSTR lpwstrFilename,
                                    __reserved DWORD dwHandle,
                                    __in DWORD dwLen,
                                    __out_bcount(dwLen) LPVOID lpData);
BOOL APIENTRY GetFileVersionInfoExW(__in DWORD dwFlags,
                                    __in LPCWSTR lpwstrFilename,
                                    __reserved DWORD dwHandle,
                                    __in DWORD dwLen,
                                    __out_bcount(dwLen) LPVOID lpData);
#ifdef UNICODE
#define GetFileVersionInfoEx  GetFileVersionInfoExW
#else
#define GetFileVersionInfoEx  GetFileVersionInfoExA
#endif // !UNICODE


DWORD
APIENTRY
VerLanguageNameA(
        __in                  DWORD wLang,
        __out_ecount(cchLang) LPSTR szLang,
        __in                  DWORD cchLang
        );
DWORD
APIENTRY
VerLanguageNameW(
        __in                  DWORD wLang,
        __out_ecount(cchLang) LPWSTR szLang,
        __in                  DWORD cchLang
        );
#ifdef UNICODE
#define VerLanguageName  VerLanguageNameW
#else
#define VerLanguageName  VerLanguageNameA
#endif // !UNICODE

BOOL
APIENTRY
VerQueryValueA(
        __in LPCVOID pBlock,
        __in LPCSTR lpSubBlock,
        __deref_out_xcount("buffer can be PWSTR or DWORD*") LPVOID * lplpBuffer,
        __out PUINT puLen
        );
BOOL
APIENTRY
VerQueryValueW(
        __in LPCVOID pBlock,
        __in LPCWSTR lpSubBlock,
        __deref_out_xcount("buffer can be PWSTR or DWORD*") LPVOID * lplpBuffer,
        __out PUINT puLen
        );
#ifdef UNICODE
#define VerQueryValue  VerQueryValueW
#else
#define VerQueryValue  VerQueryValueA
#endif // !UNICODE


#endif  /* !RC_INVOKED */

#ifdef __cplusplus
}
#endif


#endif  /* !VER_H */


