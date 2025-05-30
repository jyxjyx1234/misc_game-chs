/***
*sys/stat.h - defines structure used by stat() and fstat()
*
*       Copyright (c) Microsoft Corporation. All rights reserved.
*
*Purpose:
*       This file defines the structure used by the _stat() and _fstat()
*       routines.
*       [System V]
*
*       [Public]
*
****/

#if     _MSC_VER > 1000
#pragma once
#endif

#ifndef _INC_STAT
#define _INC_STAT

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


#include <sys/types.h>

#ifndef _TIME_T_DEFINED
#ifdef  _WIN64
typedef __int64 time_t;         /* time value */
#else
typedef long    time_t;         /* time value */
#endif
#endif

/* define structure for returning status information */

#ifndef _STAT_DEFINED

struct _stat32 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        __time32_t st_atime;
        __time32_t st_mtime;
        __time32_t st_ctime;
        };

#if     !__STDC__
/* Non-ANSI names for compatibility */
struct stat {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        time_t st_atime;
        time_t st_mtime;
        time_t st_ctime;
        };

#endif  /* __STDC__ */

#if     _INTEGRAL_MAX_BITS >= 64

struct _stat32i64 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        __int64    st_size;
        __time32_t st_atime;
        __time32_t st_mtime;
        __time32_t st_ctime;
        };

struct _stat64i32 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        __time64_t st_atime;
        __time64_t st_mtime;
        __time64_t st_ctime;
        };

struct _stat64 {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        __int64    st_size;
        __time64_t st_atime;
        __time64_t st_mtime;
        __time64_t st_ctime;
        };

struct _stat {
        _dev_t     st_dev;
        _ino_t     st_ino;
        unsigned short st_mode;
        short      st_nlink;
        short      st_uid;
        short      st_gid;
        _dev_t     st_rdev;
        _off_t     st_size;
        time_t     st_atime;
        time_t     st_mtime;
        time_t     st_ctime;
        };

#if     _INTEGRAL_MAX_BITS >= 64
struct _stati64 {
        _dev_t st_dev;
        _ino_t st_ino;
        unsigned short st_mode;
        short st_nlink;
        short st_uid;
        short st_gid;
        _dev_t st_rdev;
        __int64 st_size;
        time_t st_atime;
        time_t st_mtime;
        time_t st_ctime;
        };
#endif

#endif /* _STAT_DEFINED */

/*
 * We have to have same name for structure and the fuction so as to do the
 * macro magic.we need the structure name and function name the same.
 */
#define __stat64    _stat64


#define _STAT_DEFINED
#endif


#define _S_IFMT         0xF000          /* file type mask */
#define _S_IFDIR        0x4000          /* directory */
#define _S_IFCHR        0x2000          /* character special */
#define _S_IFIFO        0x1000          /* pipe */
#define _S_IFREG        0x8000          /* regular */
#define _S_IREAD        0x0100          /* read permission, owner */
#define _S_IWRITE       0x0080          /* write permission, owner */
#define _S_IEXEC        0x0040          /* execute/search permission, owner */


/* Function prototypes */

_CRTIMP int __cdecl _fstat(__in int _FileDes, __out struct _stat * _Stat);
_CRTIMP int __cdecl _stat(__in_z const char *_Name, __out struct _stat * _Stat);

#if     _INTEGRAL_MAX_BITS >= 64
_CRTIMP int __cdecl _fstati64(__in int _FileDes, __out struct _stati64 *_Stat);
_CRTIMP int __cdecl _stati64(__in_z const char *_Name, __out struct _stati64 *_Stat);
#endif

_CRTIMP int __cdecl _fstat32(__in int _FileDes, __out struct _stat32 * _Stat);
_CRTIMP int __cdecl _stat32(__in_z const char * _Name, __out struct _stat32 * _Stat);

#if     _INTEGRAL_MAX_BITS >= 64
_CRTIMP int __cdecl _fstat32i64(__in int _FileDes, __out struct _stat32i64 * _Stat);
_CRTIMP int __cdecl _fstat64i32(__in int _FileDes, __out struct _stat64i32 * _Stat);
_CRTIMP int __cdecl _fstat64(__in int _FileDes, __out struct _stat64 * _Stat);
_CRTIMP int __cdecl _stat32i64(__in_z const char * _Name, __out struct _stat32i64 * _Stat);
_CRTIMP int __cdecl _stat64i32(__in_z const char * _Name, __out struct _stat64i32 * _Stat);
_CRTIMP int __cdecl _stat64(__in_z const char * _Name, __out struct _stat64 * _Stat);
#endif

#ifndef _WSTAT_DEFINED

/* also declared in wchar.h */

_CRTIMP int __cdecl _wstat(__in_z const wchar_t *_Name, __out struct _stat * _Stat);
_CRTIMP int __cdecl _wstati64(__in_z const wchar_t *_Name, __out struct _stati64 *_Stat);

_CRTIMP int __cdecl _wstat32(__in_z const wchar_t * _Name, __out struct _stat32 * _Stat);

#if     _INTEGRAL_MAX_BITS >= 64
_CRTIMP int __cdecl _wstat32i64(__in_z const wchar_t * _Name, __out struct _stat32i64 * _Stat);
_CRTIMP int __cdecl _wstat64i32(__in_z const wchar_t * _Name, __out struct _stat64i32 * _Stat);
_CRTIMP int __cdecl _wstat64(__in_z const wchar_t * _Name, __out struct _stat64 * _Stat);
#endif

#define _WSTAT_DEFINED
#endif

#if     !__STDC__

/* Non-ANSI names for compatibility */

#define S_IFMT   _S_IFMT
#define S_IFDIR  _S_IFDIR
#define S_IFCHR  _S_IFCHR
#define S_IFREG  _S_IFREG
#define S_IREAD  _S_IREAD
#define S_IWRITE _S_IWRITE
#define S_IEXEC  _S_IEXEC

#endif  /* __STDC__ */

/*
 * This file is included for __inlined non stdc functions. i.e. stat and fstat
 */
#if !defined(RC_INVOKED) && !defined(__midl)
#include <sys/stat.inl>
#endif

#ifdef  __cplusplus
}
#endif

#ifdef  _MSC_VER
#pragma pack(pop)
#endif  /* _MSC_VER */

#endif  /* _INC_STAT */
/* 88bf0570-3001-4e78-a5f2-be5765546192 */ 

