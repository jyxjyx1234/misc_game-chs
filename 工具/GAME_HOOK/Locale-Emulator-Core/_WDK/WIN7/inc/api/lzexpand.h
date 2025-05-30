/*++

Copyright (c) Microsoft Corporation.  All rights reserved.

Module Name:

    lzexpand.h

Abstract:

    Public interface to LZEXP?.LIB.

Author:


Revision History:

--*/

#ifndef _LZEXPAND_
#define _LZEXPAND_

#ifdef __cplusplus
extern "C" {
#endif

/*
** Error Return Codes
*/

#define LZERROR_BADINHANDLE   (-1)  /* invalid input handle */
#define LZERROR_BADOUTHANDLE  (-2)  /* invalid output handle */
#define LZERROR_READ          (-3)  /* corrupt compressed file format */
#define LZERROR_WRITE         (-4)  /* out of space for output file */
#define LZERROR_GLOBALLOC     (-5)  /* insufficient memory for LZFile struct */
#define LZERROR_GLOBLOCK      (-6)  /* bad global handle */
#define LZERROR_BADVALUE      (-7)  /* input parameter out of acceptable range*/
#define LZERROR_UNKNOWNALG    (-8)  /* compression algorithm not recognized */


/*
** Prototypes
*/

__success(return >= 0)
__checkReturn
INT
APIENTRY
LZStart(
    VOID
    );

VOID
APIENTRY
LZDone(
    VOID
    );


__success(return >= 0)
__checkReturn
LONG
APIENTRY
CopyLZFile(
    __in INT hfSource,
    __in INT hfDest
    );

__success(return >= 0)
__checkReturn
LONG
APIENTRY
LZCopy(
    __in INT hfSource,
    __in INT hfDest
    );

__success(return >= 0)
__checkReturn
INT
APIENTRY
LZInit(
    __in INT hfSource
    );

__success(return >= 0)
__checkReturn
INT
APIENTRY
GetExpandedNameA(
    __in LPSTR lpszSource,
    __out_ecount(MAX_PATH) LPSTR lpszBuffer
    );
__success(return >= 0)
__checkReturn
INT
APIENTRY
GetExpandedNameW(
    __in LPWSTR lpszSource,
    __out_ecount(MAX_PATH) LPWSTR lpszBuffer
    );
#ifdef UNICODE
#define GetExpandedName  GetExpandedNameW
#else
#define GetExpandedName  GetExpandedNameA
#endif // !UNICODE

__success(return >= 0)
__checkReturn
INT
APIENTRY
LZOpenFileA(
    __in LPSTR lpFileName,
    __inout LPOFSTRUCT lpReOpenBuf,
    __in WORD wStyle
    );
__success(return >= 0)
__checkReturn
INT
APIENTRY
LZOpenFileW(
    __in LPWSTR lpFileName,
    __inout LPOFSTRUCT lpReOpenBuf,
    __in WORD wStyle
    );
#ifdef UNICODE
#define LZOpenFile  LZOpenFileW
#else
#define LZOpenFile  LZOpenFileA
#endif // !UNICODE

__success(return >= 0)
__checkReturn
LONG
APIENTRY
LZSeek(
    __in INT hFile,
    __in LONG lOffset,
    __in INT iOrigin
    );

__success(return >= 0)
__checkReturn
INT
APIENTRY
LZRead(
    __in INT hFile,
    __out_bcount_part(cbRead, return) CHAR* lpBuffer,
    __in INT cbRead
    );

VOID
APIENTRY
LZClose(
    __in INT hFile
    );

#ifdef __cplusplus
}
#endif


#endif // _LZEXPAND_

