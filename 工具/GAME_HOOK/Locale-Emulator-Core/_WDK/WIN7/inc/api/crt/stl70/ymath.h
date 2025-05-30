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

/* ymath.h internal header */
#pragma once
#ifndef _YMATH
#define _YMATH
#include <yvals.h>
_C_STD_BEGIN
#ifndef _M_CEE_PURE
_C_LIB_DECL
#endif

#ifdef  _MSC_VER
#pragma pack(push,_CRT_PACKING)
#endif  /* _MSC_VER */

		/* MACROS FOR _Dtest RETURN (0 => ZERO) */
#define _DENORM		(-2)	/* C9X only */
#define _FINITE		(-1)
#define _INFCODE	1
#define _NANCODE	2

		/* MACROS FOR _Feraise ARGUMENT */
#define _FE_DIVBYZERO	0x04
#define _FE_INEXACT		0x20
#define _FE_INVALID		0x01
#define _FE_OVERFLOW	0x08
#define _FE_UNDERFLOW	0x10

		/* TYPE DEFINITIONS */
typedef union
	{	/* pun float types as integer array */
	unsigned short _Word[8];
	float _Float;
	double _Double;
	long double _Long_double;
	} _Dconst;

		/* ERROR REPORTING */
#if defined(_M_CEE_PURE) && defined(_STATIC_MGDLIB)
#define _FERAISE_CALLING_CONVENTION __clrcall
#else
#define _FERAISE_CALLING_CONVENTION __cdecl
#endif

void _FERAISE_CALLING_CONVENTION _Feraise(int);

		/* double DECLARATIONS */
_MRTIMP2_FUNCTION(double) _Cosh(double, double);
_MRTIMP2_FUNCTION(short) _Dtest(double *);
_MRTIMP2_FUNCTION(short) _Exp(double *, double, short);
_MRTIMP2_FUNCTION(double) _Log(double, int);
_MRTIMP2_FUNCTION(double) _Sin(double, unsigned int);
_MRTIMP2_FUNCTION(double) _Sinh(double, double);
extern _CRTIMP2_PURE /* const */ _Dconst _Denorm, _Hugeval, _Inf,
	_Nan, _Snan;

		/* float DECLARATIONS */
_MRTIMP2_FUNCTION(float) _FCosh(float, float);
_MRTIMP2_FUNCTION(short) _FDtest(float *);
_MRTIMP2_FUNCTION(short) _FExp(float *, float, short);
_MRTIMP2_FUNCTION(float) _FLog(float, int);
_MRTIMP2_FUNCTION(float) _FSin(float, unsigned int);
_MRTIMP2_FUNCTION(float) _FSinh(float, float);
extern _CRTIMP2_PURE /* const */ _Dconst _FDenorm, _FInf, _FNan, _FSnan;

		/* long double DECLARATIONS */
_MRTIMP2_FUNCTION(long double) _LCosh(long double, long double);
_MRTIMP2_FUNCTION(short) _LDtest(long double *);
_MRTIMP2_FUNCTION(short) _LExp(long double *, long double, short);
_MRTIMP2_FUNCTION(long double) _LLog(long double, int);
_MRTIMP2_FUNCTION(long double) _LSin(long double, unsigned int);
_MRTIMP2_FUNCTION(long double) _LSinh(long double, long double);
extern _CRTIMP2_PURE /* const */ _Dconst _LDenorm, _LInf, _LNan, _LSnan;
#ifndef _M_CEE_PURE
_END_C_LIB_DECL
#endif
_C_STD_END

#ifdef  _MSC_VER
#pragma pack(pop)
#endif  /* _MSC_VER */

#endif /* _YMATH */

/*
 * Copyright (c) 1992-2004 by P.J. Plauger.  ALL RIGHTS RESERVED.
 * Consult your license regarding permissions and restrictions.
 V4.03:0009 */
/* 88bf0570-3001-4e78-a5f2-be5765546192 */ 

