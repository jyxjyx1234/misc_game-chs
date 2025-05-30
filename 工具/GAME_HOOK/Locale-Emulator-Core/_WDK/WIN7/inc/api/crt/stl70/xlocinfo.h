//$TAG BIZDEV
//  $IPCategory:     
//  $DealPointID:    46582
//  $AgreementName:  use & distribution license agreement
//  $AgreementType:  inbound license
//  $ExternalOrigin: p.j. plauger
//$ENDTAG

//$TAG ENGR 
//  $Owner:    bryant
//  $Module:   crts_crtw32
//
//$ENDTAG

/* xlocinfo.h internal header for Microsoft C */
#pragma once
#ifndef _XLOCINFO
#define _XLOCINFO
#include <ctype.h>
#include <locale.h>
#include <wchar.h>
#ifndef _YVALS
 #include <yvals.h>
#endif

#ifdef  _MSC_VER
#pragma pack(push,_CRT_PACKING)
#endif  /* _MSC_VER */

_C_STD_BEGIN
#ifndef _M_CEE_PURE
_C_LIB_DECL
#endif

		/* SUPPLEMENTAL CTYPE MACROS & DECLARATIONS */
#define _XA		0x100		/* extra alphabetic */
#define _XS		0x000		/* extra space */
#define _BB		_CONTROL	/* BEL, BS, etc. */
#define _CN		_SPACE		/* CR, FF, HT, NL, VT */
#define _DI		_DIGIT		/* '0'-'9' */
#define _LO		_LOWER		/* 'a'-'z' */
#define _PU		_PUNCT		/* punctuation */
#define _SP		_BLANK		/* space */
#define _UP		_UPPER		/* 'A'-'Z' */
#define _XD		_HEX		/* '0'-'9', 'A'-'F', 'a'-'f' */

		/* SUPPLEMENTAL LOCALE MACROS AND DECLARATIONS */
#define _X_ALL			LC_ALL
#define _X_COLLATE		LC_COLLATE
#define _X_CTYPE		LC_CTYPE
#define _X_MONETARY		LC_MONETARY
#define _X_NUMERIC		LC_NUMERIC
#define _X_TIME 		LC_TIME
#define _X_MAX			LC_MAX
#define _X_MESSAGES		6
#define _NCAT			7

#define _CATMASK(n)	((1 << (n)) >> 1)
#define _M_COLLATE	_CATMASK(_X_COLLATE)
#define _M_CTYPE	_CATMASK(_X_CTYPE)
#define _M_MONETARY	_CATMASK(_X_MONETARY)
#define _M_NUMERIC	_CATMASK(_X_NUMERIC)
#define _M_TIME		_CATMASK(_X_TIME)
#define _M_MESSAGES	_CATMASK(_X_MESSAGES)
#define _M_ALL		(_CATMASK(_NCAT) - 1)

typedef struct _Collvec
	{	/* stuff needed by _Strcoll, etc. */
	unsigned long _Hand;	// LCID
	unsigned int _Page;		// UINT
	} _Collvec;

typedef struct _Ctypevec
	{	/* stuff needed by _Tolower, etc. */
	unsigned long _Hand;	// LCID
	unsigned int _Page;		// UINT
	const short *_Table;
	int _Delfl;
	} _Ctypevec;

typedef struct _Cvtvec
	{	/* stuff needed by _Mbrtowc, etc. */
	unsigned long _Hand;	// LCID
	unsigned int _Page;		// UINT
	} _Cvtvec;

		/* FUNCTION DECLARATIONS */
_MRTIMP2_FUNCTION(_Collvec) _Getcoll();
_MRTIMP2_FUNCTION(_Ctypevec) _Getctype();
_MRTIMP2_FUNCTION(_Cvtvec) _Getcvt();

_MRTIMP2_FUNCTION(int) _Getdateorder();

_MRTIMP2_FUNCTION(float) _Stof(const char *, __deref_opt_out_z char **, long);
_MRTIMP2_FUNCTION(double) _Stod(const char *, __deref_opt_out_z char **, long);
_MRTIMP2_FUNCTION(long double) _Stold(const char *, __deref_opt_out_z char **, long);
_MRTIMP2_FUNCTION(int) _Strcoll(const char *, const char *,
	const char *, const char *, const _Collvec *);
_MRTIMP2_FUNCTION(size_t) _Strxfrm(__out_ecount(_end1-_string1) char * _string1, __in char * _end1,
	const char *, const char *, const _Collvec *);
_MRTIMP2_FUNCTION(int) _Tolower(int, const _Ctypevec *);
_MRTIMP2_FUNCTION(int) _Toupper(int, const _Ctypevec *);

#ifndef _M_CEE_PURE
_END_C_LIB_DECL
#endif

extern "C++"
{
_MRTIMP2_FUNCTION(int) _Mbrtowc(__out wchar_t *, const char *, size_t,
	mbstate_t *, const _Cvtvec *);
_MRTIMP2_FUNCTION(int) _Wcrtomb(__out char *, wchar_t, mbstate_t *,
	const _Cvtvec *);
_MRTIMP2_FUNCTION(int) _Wcscoll(const wchar_t *, const wchar_t *,
	const wchar_t *, const wchar_t *, const _Collvec *);
_MRTIMP2_FUNCTION(size_t) _Wcsxfrm(__out_ecount(_end1-_string1) wchar_t * _string1, __in wchar_t * _end1,
	const wchar_t *, const wchar_t *, const _Collvec *);

_MRTIMP2_FUNCTION(short) _Getwctype(wchar_t, const _Ctypevec *);
_MRTIMP2_FUNCTION(const wchar_t *) _Getwctypes(const wchar_t *, const wchar_t *,
	short*, const _Ctypevec*);
_MRTIMP2_FUNCTION(wchar_t) _Towlower(wchar_t, const _Ctypevec *);
_MRTIMP2_FUNCTION(wchar_t) _Towupper(wchar_t, const _Ctypevec *);
}
_C_STD_END

_C_LIB_DECL
_CRTIMP void *__cdecl _Gettnames();
_CRTIMP char *__cdecl _Getdays();
_CRTIMP char *__cdecl _Getmonths();
_CRTIMP size_t __cdecl _Strftime(__out_ecount_z(maxsize) char *, size_t maxsize, const char *,
	const struct tm *, void *);

#ifdef  _MSC_VER
#pragma pack(pop)
#endif  /* _MSC_VER */

_END_C_LIB_DECL
#endif /* _XLOCINFO */

/*
 * Copyright (c) 1992-2004 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
 V4.03:0009 */
/* 88bf0570-3001-4e78-a5f2-be5765546192 */ 

