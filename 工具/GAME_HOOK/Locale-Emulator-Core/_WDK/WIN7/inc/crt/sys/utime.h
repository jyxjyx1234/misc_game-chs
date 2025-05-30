/***
*sys/utime.h - definitions/declarations for utime()
*
*       Copyright (c) Microsoft Corporation. All rights reserved.
*
*Purpose:
*       This file defines the structure used by the utime routine to set
*       new file access and modification times.  NOTE - MS-DOS
*       does not recognize access time, so this field will
*       always be ignored and the modification time field will be
*       used to set the new time.
*
*       [Public]
*
****/

#if     _MSC_VER > 1000
#pragma once
#endif

#include <crtdefs.h>

#ifndef _INC_UTIME
#define _INC_UTIME

#if     !defined(_WIN32)
#error ERROR: Only Win32 target supported!
#endif

#include <crtdefs.h>


#ifdef  _MSC_VER
#pragma pack(push,_CRT_PACKING)
#endif  /* _MSC_VER */

#ifdef  __cplusplus
extern "C" {
#endif



/* define struct used by _utime() function */

#ifndef _UTIMBUF_DEFINED

struct _utimbuf {
        time_t actime;          /* access time */
        time_t modtime;         /* modification time */
        };

struct __utimbuf32 {
        __time32_t actime;      /* access time */
        __time32_t modtime;     /* modification time */
        };

#if     _INTEGRAL_MAX_BITS >= 64
struct __utimbuf64 {
        __time64_t actime;      /* access time */
        __time64_t modtime;     /* modification time */
        };
#endif

#if     !__STDC__
/* Non-ANSI name for compatibility */
struct utimbuf {
        time_t actime;          /* access time */
        time_t modtime;         /* modification time */
        };
        
struct utimbuf32 {
        __time32_t actime;      /* access time */
        __time32_t modtime;     /* modification time */
        };

#endif /* !__STDC__ */

#define _UTIMBUF_DEFINED
#endif


/* Function Prototypes */

_CRTIMP int __cdecl _utime32(__in_z const char * _Filename, __in_opt struct __utimbuf32 * _Time);

_CRTIMP int __cdecl _futime32(__in int _FileDes, __in_opt struct __utimbuf32 * _Time);

/* Wide Function Prototypes */
_CRTIMP int __cdecl _wutime32(__in_z const wchar_t * _Filename, __in_opt struct __utimbuf32 * _Time);

#if     _INTEGRAL_MAX_BITS >= 64
_CRTIMP int __cdecl _utime64(__in_z const char * _Filename, __in_opt struct __utimbuf64 * _Time);
_CRTIMP int __cdecl _futime64(__in int _FileDes, __in_opt struct __utimbuf64 * _Time);
_CRTIMP int __cdecl _wutime64(__in_z const wchar_t * _Filename, __in_opt struct __utimbuf64 * _Time);
#endif


_CRTIMP int __cdecl _utime(__in_z const char *_Filename, __in_opt struct _utimbuf * _Time);

_CRTIMP int __cdecl _futime(__in int _FileDes, __in_opt struct _utimbuf * _Time);

/* Wide Function Prototypes */
_CRTIMP int __cdecl _wutime(__in_z const wchar_t * _Filename, __in_opt struct _utimbuf * _Time);


#if !defined(RC_INVOKED) && !defined(__midl)
#include <sys/utime.inl>
#endif

#ifdef  __cplusplus
}
#endif

#ifdef  _MSC_VER
#pragma pack(pop)
#endif  /* _MSC_VER */

#endif  /* _INC_UTIME */
/* 88bf0570-3001-4e78-a5f2-be5765546192 */ 

