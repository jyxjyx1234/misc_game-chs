
/***
*new.h - declarations and definitions for C++ memory allocation functions
*
*       Copyright (c) Microsoft Corporation. All rights reserved.
*
*Purpose:
*       Contains the declarations for C++ memory allocation functions.
*
*       [Public]
*
****/

#if     _MSC_VER > 1000
#pragma once
#endif

#ifndef _INC_NEW
#define _INC_NEW

#ifdef  __cplusplus

#ifndef _MSC_EXTENSIONS
#include <new>
#endif

#include <crtdefs.h>

/* Protect against #define of new */
#pragma push_macro("new")
#undef  new

#if !defined (_MANAGED)

#ifdef  _MSC_EXTENSIONS
typedef void (__cdecl * new_handler) ();
_CRTIMP new_handler __cdecl set_new_handler(__in_opt new_handler _NewHandler);
#endif

#endif

#ifndef __NOTHROW_T_DEFINED
#define __NOTHROW_T_DEFINED
namespace std {
        /* placement new tag type to suppress exceptions */
        struct nothrow_t {};

        /* constant for placement new tag */
        extern _CRTIMP2 const nothrow_t nothrow;
};

__bcount_opt(_Size) void *__CRTDECL operator new(size_t _Size, const std::nothrow_t&) throw();
__bcount_opt(_Size) void *__CRTDECL operator new[](size_t _Size, const std::nothrow_t&) throw();
void __CRTDECL operator delete(void *, const std::nothrow_t&) throw();
void __CRTDECL operator delete[](void *, const std::nothrow_t&) throw();
#endif

#ifndef __PLACEMENT_NEW_INLINE
#define __PLACEMENT_NEW_INLINE
inline void *__CRTDECL operator new(size_t, void *_Where)
        {return (_Where); }
#if     _MSC_VER >= 1200
inline void __CRTDECL operator delete(void *, void *)
        {return; }
#endif
#endif


#if !defined (_MANAGED)

/* 
 * new mode flag -- when set, makes malloc() behave like new()
 */

_CRTIMP int __cdecl _query_new_mode( void );
_CRTIMP int __cdecl _set_new_mode( __in int _NewMode);

#ifndef _PNH_DEFINED
#ifdef _M_CEE_PURE
typedef int (__clrcall * _PNH)( size_t );
#else
typedef int (__cdecl * _PNH)( size_t );
#endif
#define _PNH_DEFINED
#endif

_CRTIMP _PNH __cdecl _query_new_handler( void );
_CRTIMP _PNH __cdecl _set_new_handler( __in_opt _PNH _NewHandler);

#if _MSC_VER >= 1400 && defined(_M_CEE)
#ifndef __MPNH_DEFINED
typedef int (__clrcall * __MPNH)( size_t );
#define __MPNH_DEFINED
#endif

_MRTIMP_FUNCTION(__MPNH) __query_new_handler_m( void );
#ifdef _M_CEE_MIXED
/* _set_new_handler(int) is used to disambiguate NULL/0 */
_CRTIMP _PNH __cdecl _set_new_handler( __in int _NewHandler);
extern "C++" _MRTIMP_FUNCTION(__MPNH) _set_new_handler( __MPNH );
#endif
#endif

/*
 * Microsoft extension: 
 *
 * _NO_ANSI_NEW_HANDLER de-activates the ANSI new_handler. Use this special value
 * to support old style (_set_new_handler) behavior.
 */

#ifndef _NO_ANSI_NH_DEFINED
#define _NO_ANSI_NEW_HANDLER  ((new_handler)-1)
#define _NO_ANSI_NEW_HANDLER_M  ((_new_handler_m)-1)
#define _NO_ANSI_NH_DEFINED
#endif

#endif

#pragma pop_macro("new")

#endif  /* __cplusplus */

#endif  /* _INC_NEW */
/* 88bf0570-3001-4e78-a5f2-be5765546192 */ 

