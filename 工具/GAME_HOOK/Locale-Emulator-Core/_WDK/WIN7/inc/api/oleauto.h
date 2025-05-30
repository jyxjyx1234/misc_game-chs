//+---------------------------------------------------------------------------
//
//  Microsoft Windows
//  Copyright (c) Microsoft Corporation. All rights reserved.
//
//  File:       oleauto.h
//
//  Contents:   Defines Ole Automation support function prototypes, constants
//
//----------------------------------------------------------------------------

#if !defined( _OLEAUTO_H_ )
#define _OLEAUTO_H_

#if _MSC_VER > 1000
#pragma once
#endif

// Set packing to 8 for ISV, and Win95 support
#ifndef RC_INVOKED
#include <pshpack8.h>
#endif // RC_INVOKED

//  Definition of the OLE Automation APIs, and macros.

#ifdef _OLEAUT32_
#define WINOLEAUTAPI        STDAPI
#define WINOLEAUTAPI_(type) STDAPI_(type)
#else
#define WINOLEAUTAPI        EXTERN_C DECLSPEC_IMPORT HRESULT STDAPICALLTYPE
#define WINOLEAUTAPI_(type) EXTERN_C DECLSPEC_IMPORT type STDAPICALLTYPE
#endif

EXTERN_C const IID IID_StdOle;

#define STDOLE_MAJORVERNUM  0x1
#define STDOLE_MINORVERNUM  0x0
#define STDOLE_LCID         0x0000

// Version # of stdole2.tlb
#define STDOLE2_MAJORVERNUM 0x2
#define STDOLE2_MINORVERNUM 0x0
#define STDOLE2_LCID        0x0000

/* if not already picked up from olenls.h */
#ifndef _LCID_DEFINED
typedef DWORD LCID;
# define _LCID_DEFINED
#endif

#ifndef BEGIN_INTERFACE
#define BEGIN_INTERFACE
#define END_INTERFACE
#endif

/* pull in the MIDL generated header */
#include <oaidl.h>


/*---------------------------------------------------------------------*/
/*                            BSTR API                                 */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI_(BSTR) SysAllocString(__in_z_opt const OLECHAR * psz);
WINOLEAUTAPI_(INT)  SysReAllocString(__deref_inout_ecount_z(stringLength(psz)+1) BSTR* pbstr, __in_z_opt const OLECHAR* psz);
WINOLEAUTAPI_(BSTR) SysAllocStringLen(__in_ecount_opt(ui) const OLECHAR * strIn, UINT ui);
__checkReturn WINOLEAUTAPI_(INT)  SysReAllocStringLen(__deref_inout_ecount_z(len+1) BSTR* pbstr, __in_z_opt const OLECHAR* psz, __in unsigned int len);
WINOLEAUTAPI_(void) SysFreeString(__in_opt BSTR bstrString);
WINOLEAUTAPI_(UINT) SysStringLen(__in_opt BSTR);

#if (defined (_WIN32) || defined (_WIN64))
WINOLEAUTAPI_(UINT) SysStringByteLen(__in_opt BSTR bstr);
WINOLEAUTAPI_(BSTR) SysAllocStringByteLen(__in_z_opt LPCSTR psz, __in UINT len);
#endif

/*---------------------------------------------------------------------*/
/*                            Time API                                 */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI_(INT) DosDateTimeToVariantTime(__in USHORT wDosDate, __in USHORT wDosTime, __out DOUBLE * pvtime);

WINOLEAUTAPI_(INT) VariantTimeToDosDateTime(__in DOUBLE vtime, __out USHORT * pwDosDate, __out USHORT * pwDosTime);

#if (defined (_WIN32) || defined (_WIN64))
WINOLEAUTAPI_(INT) SystemTimeToVariantTime(__in LPSYSTEMTIME lpSystemTime, __out DOUBLE *pvtime);
WINOLEAUTAPI_(INT) VariantTimeToSystemTime(__in DOUBLE vtime, __out LPSYSTEMTIME lpSystemTime);
#endif


/*---------------------------------------------------------------------*/
/*                          SafeArray API                              */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI SafeArrayAllocDescriptor(__in UINT cDims, __deref_out SAFEARRAY ** ppsaOut);
WINOLEAUTAPI SafeArrayAllocDescriptorEx(__in VARTYPE vt, __in UINT cDims, __deref_out SAFEARRAY ** ppsaOut);
WINOLEAUTAPI SafeArrayAllocData(__in SAFEARRAY * psa);
WINOLEAUTAPI_(SAFEARRAY *) SafeArrayCreate(__in VARTYPE vt, __in UINT cDims, __in SAFEARRAYBOUND * rgsabound);
WINOLEAUTAPI_(SAFEARRAY *) SafeArrayCreateEx(__in VARTYPE vt, __in UINT cDims, __in SAFEARRAYBOUND * rgsabound, __in PVOID pvExtra);
WINOLEAUTAPI SafeArrayCopyData(__in SAFEARRAY *psaSource, __in SAFEARRAY *psaTarget);
WINOLEAUTAPI SafeArrayDestroyDescriptor(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayDestroyData(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayDestroy(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayRedim(__inout SAFEARRAY * psa, __in SAFEARRAYBOUND * psaboundNew);
WINOLEAUTAPI_(UINT) SafeArrayGetDim(__in SAFEARRAY * psa);
WINOLEAUTAPI_(UINT) SafeArrayGetElemsize(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayGetUBound(__in SAFEARRAY * psa, __in UINT nDim, __out LONG * plUbound);
WINOLEAUTAPI SafeArrayGetLBound(__in SAFEARRAY * psa, __in UINT nDim, __out LONG * plLbound);
WINOLEAUTAPI SafeArrayLock(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayUnlock(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayAccessData(__in SAFEARRAY * psa, __deref_out void HUGEP** ppvData);
WINOLEAUTAPI SafeArrayUnaccessData(__in SAFEARRAY * psa);
WINOLEAUTAPI SafeArrayGetElement(__in SAFEARRAY * psa, __in_xcount(psa->cDims) LONG * rgIndices, __out void * pv);
WINOLEAUTAPI SafeArrayPutElement(__in SAFEARRAY * psa, __in_xcount(psa->cDims) LONG * rgIndices, __in void * pv);
WINOLEAUTAPI SafeArrayCopy(__in SAFEARRAY * psa, __deref_out SAFEARRAY ** ppsaOut);
WINOLEAUTAPI SafeArrayPtrOfIndex(__in SAFEARRAY * psa, __in LONG * rgIndices, __deref_out void ** ppvData);
WINOLEAUTAPI SafeArraySetRecordInfo(__in SAFEARRAY * psa, __in IRecordInfo * prinfo);
WINOLEAUTAPI SafeArrayGetRecordInfo(__in SAFEARRAY * psa, __deref_out IRecordInfo ** prinfo);
WINOLEAUTAPI SafeArraySetIID(__in SAFEARRAY * psa, __in REFGUID guid);
WINOLEAUTAPI SafeArrayGetIID(__in SAFEARRAY * psa, __out GUID * pguid);
WINOLEAUTAPI SafeArrayGetVartype(__in SAFEARRAY * psa, __out VARTYPE * pvt);
WINOLEAUTAPI_(SAFEARRAY *) SafeArrayCreateVector(__in VARTYPE vt, __in LONG lLbound, __in ULONG cElements);
WINOLEAUTAPI_(SAFEARRAY *) SafeArrayCreateVectorEx(__in VARTYPE vt, __in LONG lLbound, __in ULONG cElements, __in PVOID pvExtra);

/*---------------------------------------------------------------------*/
/*                           VARIANT API                               */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI_(void) VariantInit(__out VARIANTARG * pvarg);
WINOLEAUTAPI VariantClear(__inout VARIANTARG * pvarg);
WINOLEAUTAPI VariantCopy(__out VARIANTARG * pvargDest, __in const VARIANTARG * pvargSrc);
WINOLEAUTAPI VariantCopyInd(__out VARIANT * pvarDest, __in const VARIANTARG * pvargSrc);
WINOLEAUTAPI VariantChangeType(__out VARIANTARG * pvargDest,
               __in const VARIANTARG * pvarSrc, __in USHORT wFlags, __in VARTYPE vt);
WINOLEAUTAPI VariantChangeTypeEx(__out VARIANTARG * pvargDest,
               __in const VARIANTARG * pvarSrc, __in LCID lcid, __in USHORT wFlags, __in VARTYPE vt);

// Flags for VariantChangeType/VariantChangeTypeEx
#define VARIANT_NOVALUEPROP      0x01
#define VARIANT_ALPHABOOL        0x02 // For VT_BOOL to VT_BSTR conversions,
                                      // convert to "True"/"False" instead of
                                      // "-1"/"0"
#define VARIANT_NOUSEROVERRIDE   0x04 // For conversions to/from VT_BSTR,
				      // passes LOCALE_NOUSEROVERRIDE
				      // to core coercion routines
#define VARIANT_CALENDAR_HIJRI   0x08
#define VARIANT_LOCALBOOL        0x10 // For VT_BOOL to VT_BSTR and back,
                                      // convert to local language rather than
                                      // English
#define VARIANT_CALENDAR_THAI		0x20  // SOUTHASIA calendar support
#define VARIANT_CALENDAR_GREGORIAN	0x40  // SOUTHASIA calendar support
#define VARIANT_USE_NLS                 0x80  // NLS function call support
/*---------------------------------------------------------------------*/
/*                Vector <-> Bstr conversion APIs                      */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI VectorFromBstr (__in BSTR bstr, __deref_out SAFEARRAY ** ppsa);
WINOLEAUTAPI BstrFromVector (__in SAFEARRAY *psa, __out BSTR *pbstr);

/*---------------------------------------------------------------------*/
/*                     Variant API Flags                               */
/*---------------------------------------------------------------------*/

/* Any of the coersion functions that converts either from or to a string
 * takes an additional lcid and dwFlags arguments. The lcid argument allows
 * locale specific parsing to occur.  The dwFlags allow additional function
 * specific condition to occur.  All function that accept the dwFlags argument
 * can include either 0 or LOCALE_NOUSEROVERRIDE flag.
 */

/* The VarDateFromStr and VarBstrFromDate functions also accept the
 * VAR_TIMEVALUEONLY and VAR_DATEVALUEONLY flags
 */
#define VAR_TIMEVALUEONLY       ((DWORD)0x00000001)    /* return time value */
#define VAR_DATEVALUEONLY       ((DWORD)0x00000002)    /* return date value */

/* VarDateFromUdate() only */
#define VAR_VALIDDATE           ((DWORD)0x00000004)

/* Accepted by all date & format APIs */
#define VAR_CALENDAR_HIJRI      ((DWORD)0x00000008)    /* use Hijri calender */

/* Booleans can optionally be accepted in localized form. Pass VAR_LOCALBOOL
 * into VarBoolFromStr and VarBstrFromBool to use localized boolean names
 */
#define VAR_LOCALBOOL           ((DWORD)0x00000010)

/* When passed into VarFormat and VarFormatFromTokens, prevents substitution
 * of formats in the case where a string is passed in that can not be
 * coverted into the desired type. (for ex, 'Format("Hello", "General Number")')
 */
#define VAR_FORMAT_NOSUBSTITUTE ((DWORD)0x00000020)

/*
 * For VarBstrFromDate only - forces years to be 4 digits rather than shortening
 * to 2-digits when the years is in the date window.
 */
#define VAR_FOURDIGITYEARS	((DWORD)0x00000040)

/*
 * Use NLS functions to format date, currency, time, and number.
 */
#ifndef LOCALE_USE_NLS
#define LOCALE_USE_NLS 0x10000000
#endif

// SOUTHASIA START
/* SOUTHASIA 
 * For VarBstrFromDate only - forces years to be 4 digits rather than shortening
 * to 2-digits when the years is in the date window.
 */
#define VAR_CALENDAR_THAI	   ((DWORD)0x00000080)
#define	VAR_CALENDAR_GREGORIAN ((DWORD)0x00000100)
//SOUTHASIA END

#define VTDATEGRE_MAX 2958465   /* Dec 31, 9999, 0:0:0 in Gregorain Calendar */
#define VTDATEGRE_MIN -657434   /* Jan  1,  100, 0:0:0 in Gregorain Calendar */
/*---------------------------------------------------------------------*/
/*                     VARTYPE Coercion API                            */
/*---------------------------------------------------------------------*/

/* Note: The routines that convert *from* a string are defined
 * to take a OLECHAR* rather than a BSTR because no allocation is
 * required, and this makes the routines a bit more generic.
 * They may of course still be passed a BSTR as the strIn param.
 */

WINOLEAUTAPI VarUI1FromI2(SHORT sIn, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromI4(LONG lIn, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromI8(LONG64 i64In, __out BYTE FAR* pbOut);
WINOLEAUTAPI VarUI1FromR4(FLOAT fltIn, BYTE * pbOut);
WINOLEAUTAPI VarUI1FromR8(DOUBLE dblIn, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromCy(CY cyIn, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromDate(DATE dateIn, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromStr(__in LPCOLESTR strIn, LCID lcid, ULONG dwFlags, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromDisp(IDispatch * pdispIn, LCID lcid, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromBool(VARIANT_BOOL boolIn, __out BYTE * pbOut);
WINOLEAUTAPI VarUI1FromI1(CHAR cIn, __out BYTE *pbOut);
WINOLEAUTAPI VarUI1FromUI2(USHORT uiIn, __out BYTE *pbOut);
WINOLEAUTAPI VarUI1FromUI4(ULONG ulIn, __out BYTE *pbOut);
WINOLEAUTAPI VarUI1FromUI8(ULONG64 ui64In, __out BYTE FAR* pbOut);
WINOLEAUTAPI VarUI1FromDec(__in const DECIMAL *pdecIn, __out BYTE *pbOut);

WINOLEAUTAPI VarI2FromUI1(BYTE bIn, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromI4(LONG lIn, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromI8(LONG64 i64In, __out SHORT FAR* psOut);
WINOLEAUTAPI VarI2FromR4(FLOAT fltIn, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromR8(DOUBLE dblIn, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromCy(CY cyIn, SHORT * psOut);
WINOLEAUTAPI VarI2FromDate(DATE dateIn, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromStr(__in LPCOLESTR strIn, LCID lcid, ULONG dwFlags, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromDisp(IDispatch * pdispIn, LCID lcid, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromBool(VARIANT_BOOL boolIn, __out SHORT * psOut);
WINOLEAUTAPI VarI2FromI1(CHAR cIn, __out SHORT *psOut);
WINOLEAUTAPI VarI2FromUI2(USHORT uiIn, __out SHORT *psOut);
WINOLEAUTAPI VarI2FromUI4(ULONG ulIn, __out SHORT *psOut);
WINOLEAUTAPI VarI2FromUI8(ULONG64 ui64In, __out SHORT FAR* psOut);
WINOLEAUTAPI VarI2FromDec(__in const DECIMAL *pdecIn, __out SHORT *psOut);

WINOLEAUTAPI VarI4FromUI1(BYTE bIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromI2(SHORT sIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromI8(LONG64 i64In, __out LONG FAR* plOut);
WINOLEAUTAPI VarI4FromR4(FLOAT fltIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromR8(DOUBLE dblIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromCy(CY cyIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromDate(DATE dateIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromStr(__in LPCOLESTR strIn, LCID lcid, ULONG dwFlags, __out LONG * plOut);
WINOLEAUTAPI VarI4FromDisp(IDispatch * pdispIn, __in LCID lcid, __out LONG * plOut);
WINOLEAUTAPI VarI4FromBool(VARIANT_BOOL boolIn, __out LONG * plOut);
WINOLEAUTAPI VarI4FromI1(CHAR cIn, __out LONG *plOut);
WINOLEAUTAPI VarI4FromUI2(USHORT uiIn, __out LONG *plOut);
WINOLEAUTAPI VarI4FromUI4(ULONG ulIn, __out LONG *plOut);
WINOLEAUTAPI VarI4FromUI8(ULONG64 ui64In, __out LONG FAR* plOut);
WINOLEAUTAPI VarI4FromDec(__in const DECIMAL *pdecIn, __out LONG *plOut);
WINOLEAUTAPI VarI4FromInt(INT intIn, __out LONG *plOut);

/******************************************/

WINOLEAUTAPI VarI8FromUI1(BYTE bIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromI2(SHORT sIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromI4(LONG lIn, LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromR4(FLOAT fltIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromR8(DOUBLE dblIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromCy(__in CY cyIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromDate(DATE dateIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromStr(__in LPCOLESTR strIn, __in LCID lcid, __in unsigned long dwFlags, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromDisp(IDispatch FAR* pdispIn, __in LCID lcid, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromBool(VARIANT_BOOL boolIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromI1(CHAR cIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromUI2(USHORT uiIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromUI4(ULONG ulIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromUI8(ULONG64 ui64In, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromDec(__in const DECIMAL *pdecIn, __out LONG64 FAR* pi64Out);
WINOLEAUTAPI VarI8FromInt(INT intIn, LONG64 FAR* pi64Out);

/*********************/



WINOLEAUTAPI VarR4FromUI1(BYTE bIn, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromI2(SHORT sIn, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromI4(LONG lIn, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromI8(LONG64 i64In, __out FLOAT FAR* pfltOut);
WINOLEAUTAPI VarR4FromR8(DOUBLE dblIn, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromCy(CY cyIn, FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromDate(DATE dateIn, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromStr(__in LPCOLESTR strIn, LCID lcid, ULONG dwFlags, __out FLOAT *pfltOut);
WINOLEAUTAPI VarR4FromDisp(IDispatch * pdispIn, LCID lcid, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromBool(VARIANT_BOOL boolIn, __out FLOAT * pfltOut);
WINOLEAUTAPI VarR4FromI1(CHAR cIn, __out FLOAT *pfltOut);
WINOLEAUTAPI VarR4FromUI2(USHORT uiIn, __out FLOAT *pfltOut);
WINOLEAUTAPI VarR4FromUI4(ULONG ulIn, __out FLOAT *pfltOut);
WINOLEAUTAPI VarR4FromUI8(ULONG64 ui64In, __out FLOAT FAR* pfltOut);
WINOLEAUTAPI VarR4FromDec(__in const DECIMAL *pdecIn, __out FLOAT *pfltOut);

WINOLEAUTAPI VarR8FromUI1(BYTE bIn, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromI2(SHORT sIn, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromI4(LONG lIn, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromI8(LONG64 i64In, __out DOUBLE FAR* pdblOut);
WINOLEAUTAPI VarR8FromR4(FLOAT fltIn, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromCy(CY cyIn, DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromDate(DATE dateIn, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromStr(__in LPCOLESTR strIn, LCID lcid, ULONG dwFlags, __out DOUBLE *pdblOut);
WINOLEAUTAPI VarR8FromDisp(IDispatch * pdispIn, LCID lcid, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromBool(VARIANT_BOOL boolIn, __out DOUBLE * pdblOut);
WINOLEAUTAPI VarR8FromI1(CHAR cIn, DOUBLE *pdblOut);
WINOLEAUTAPI VarR8FromUI2(USHORT uiIn, __out DOUBLE *pdblOut);
WINOLEAUTAPI VarR8FromUI4(ULONG ulIn, __out DOUBLE *pdblOut);
WINOLEAUTAPI VarR8FromUI8(ULONG64 ui64In, __out DOUBLE FAR* pdblOut);
WINOLEAUTAPI VarR8FromDec(__in const DECIMAL *pdecIn, __out DOUBLE *pdblOut);

WINOLEAUTAPI VarDateFromUI1(BYTE bIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromI2(SHORT sIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromI4(LONG lIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromI8(LONG64 i64In, __out DATE FAR* pdateOut);
WINOLEAUTAPI VarDateFromR4(FLOAT fltIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromR8(DOUBLE dblIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromCy(CY cyIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromStr(__in LPCOLESTR strIn, __in LCID lcid, __in ULONG dwFlags, __out DATE *pdateOut);
WINOLEAUTAPI VarDateFromDisp(IDispatch * pdispIn, LCID lcid, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromBool(VARIANT_BOOL boolIn, __out DATE * pdateOut);
WINOLEAUTAPI VarDateFromI1(CHAR cIn, __out DATE *pdateOut);
WINOLEAUTAPI VarDateFromUI2(USHORT uiIn, __out DATE *pdateOut);
WINOLEAUTAPI VarDateFromUI4(ULONG ulIn, __out DATE *pdateOut);
WINOLEAUTAPI VarDateFromUI8(ULONG64 ui64In, __out DATE FAR* pdateOut);
WINOLEAUTAPI VarDateFromDec(__in const DECIMAL *pdecIn, __out DATE *pdateOut);

WINOLEAUTAPI VarCyFromUI1(BYTE bIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromI2(SHORT sIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromI4(LONG lIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromI8(LONG64 i64In, __out CY FAR* pcyOut);
WINOLEAUTAPI VarCyFromR4(FLOAT fltIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromR8(DOUBLE dblIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromDate(DATE dateIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromStr(__in LPCOLESTR strIn, __in LCID lcid, __in ULONG dwFlags, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromDisp(__in IDispatch * pdispIn, LCID lcid, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromBool(VARIANT_BOOL boolIn, __out CY * pcyOut);
WINOLEAUTAPI VarCyFromI1(CHAR cIn, __out CY *pcyOut);
WINOLEAUTAPI VarCyFromUI2(USHORT uiIn, __out CY *pcyOut);
WINOLEAUTAPI VarCyFromUI4(ULONG ulIn, __out CY *pcyOut);
WINOLEAUTAPI VarCyFromUI8(ULONG64 ui64In, __out CY FAR* pcyOut);
WINOLEAUTAPI VarCyFromDec(__in const DECIMAL *pdecIn, __out CY *pcyOut);

WINOLEAUTAPI VarBstrFromUI1(BYTE bVal, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromI2(SHORT iVal, LCID lcid, ULONG dwFlags, BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromI4(LONG lIn, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromI8(LONG64 i64In, LCID lcid, unsigned long dwFlags, __out BSTR FAR* pbstrOut);
WINOLEAUTAPI VarBstrFromR4(FLOAT fltIn, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromR8(DOUBLE dblIn, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromCy(CY cyIn, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromDate(__in DATE dateIn, __in LCID lcid, __in ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromDisp(IDispatch * pdispIn, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromBool(VARIANT_BOOL boolIn, LCID lcid, ULONG dwFlags, __out BSTR * pbstrOut);
WINOLEAUTAPI VarBstrFromI1(CHAR cIn, LCID lcid, ULONG dwFlags, __out BSTR *pbstrOut);
WINOLEAUTAPI VarBstrFromUI2(USHORT uiIn, LCID lcid, ULONG dwFlags, __out BSTR *pbstrOut);
WINOLEAUTAPI VarBstrFromUI4(ULONG ulIn, LCID lcid, ULONG dwFlags, __out BSTR *pbstrOut);
WINOLEAUTAPI VarBstrFromUI8(ULONG64 ui64In, LCID lcid, unsigned long dwFlags, __out BSTR FAR* pbstrOut);
WINOLEAUTAPI VarBstrFromDec(__in const DECIMAL *pdecIn, __in LCID lcid, __in ULONG dwFlags, __out BSTR *pbstrOut);

WINOLEAUTAPI VarBoolFromUI1(BYTE bIn, __out VARIANT_BOOL * pboolOut);
__checkReturn WINOLEAUTAPI VarBoolFromI2(__in SHORT sIn, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromI4(LONG lIn, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromI8(LONG64 i64In, __out VARIANT_BOOL FAR* pboolOut);
WINOLEAUTAPI VarBoolFromR4(FLOAT fltIn, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromR8(DOUBLE dblIn, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromDate(DATE dateIn, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromCy(CY cyIn, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromStr(__in LPCOLESTR strIn, LCID lcid, ULONG dwFlags, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromDisp(IDispatch * pdispIn, LCID lcid, __out VARIANT_BOOL * pboolOut);
WINOLEAUTAPI VarBoolFromI1(CHAR cIn, __out VARIANT_BOOL *pboolOut);
WINOLEAUTAPI VarBoolFromUI2(USHORT uiIn, __out VARIANT_BOOL *pboolOut);
WINOLEAUTAPI VarBoolFromUI4(ULONG ulIn, __out VARIANT_BOOL *pboolOut);
WINOLEAUTAPI VarBoolFromUI8(ULONG64 i64In, __out VARIANT_BOOL FAR* pboolOut);
WINOLEAUTAPI VarBoolFromDec(__in const DECIMAL *pdecIn, __out VARIANT_BOOL *pboolOut);

WINOLEAUTAPI 
VarI1FromUI1(
    __in BYTE bIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromI2(
    __in SHORT uiIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromI4(
    __in LONG lIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromI8(
    __in LONG64 i64In,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromR4(
    __in FLOAT fltIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromR8(
    __in DOUBLE dblIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromDate(
    __in DATE dateIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromCy(
    __in CY cyIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromStr(
    __in LPCOLESTR strIn,
    __in LCID lcid,
    __in ULONG dwFlags,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromDisp(
    __in IDispatch *pdispIn,
    __in LCID lcid,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromBool(
    __in VARIANT_BOOL boolIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromUI2(
    __in USHORT uiIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromUI4(
    __in ULONG ulIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromUI8(
    __in ULONG64 i64In,
    __out CHAR *pcOut
    );

WINOLEAUTAPI 
VarI1FromDec(
    __in const DECIMAL *pdecIn,
    __out CHAR *pcOut
    );

WINOLEAUTAPI VarUI2FromUI1(BYTE bIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromI2(SHORT uiIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromI4(LONG lIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromI8(LONG64 i64In, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromR4(FLOAT fltIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromR8(DOUBLE dblIn, USHORT *puiOut);
WINOLEAUTAPI VarUI2FromDate(DATE dateIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromCy(CY cyIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromStr(__in LPCOLESTR strIn, __in LCID lcid, __in ULONG dwFlags, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromDisp(__in IDispatch *pdispIn, LCID lcid, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromBool(VARIANT_BOOL boolIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromI1(CHAR cIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromUI4(ULONG ulIn, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromUI8(ULONG64 i64In, __out USHORT *puiOut);
WINOLEAUTAPI VarUI2FromDec(__in const DECIMAL *pdecIn, __out USHORT *puiOut);

WINOLEAUTAPI VarUI4FromUI1(BYTE bIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromI2(__in SHORT uiIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromI4(LONG lIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromI8(LONG64 i64In, __out ULONG *plOut);
WINOLEAUTAPI VarUI4FromR4(FLOAT fltIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromR8(DOUBLE dblIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromDate(DATE dateIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromCy(CY cyIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromStr(__in LPCOLESTR strIn, __in LCID lcid, __in ULONG dwFlags, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromDisp(__in IDispatch *pdispIn, LCID lcid, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromBool(VARIANT_BOOL boolIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromI1(CHAR cIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromUI2(USHORT uiIn, __out ULONG *pulOut);
WINOLEAUTAPI VarUI4FromUI8(ULONG64 ui64In, __out ULONG *plOut);
WINOLEAUTAPI VarUI4FromDec(__in const DECIMAL *pdecIn, __out ULONG *pulOut);

/******************************************/

WINOLEAUTAPI VarUI8FromUI1(BYTE bIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromI2(SHORT sIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromI4(LONG lIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromI8(LONG64 ui64In, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromR4(FLOAT fltIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromR8(DOUBLE dblIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromCy(CY cyIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromDate(DATE dateIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromStr(__in LPCOLESTR strIn, __in LCID lcid, __in unsigned long dwFlags, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromDisp(__in IDispatch FAR* pdispIn, LCID lcid, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromBool(VARIANT_BOOL boolIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromI1(CHAR cIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromUI2(USHORT uiIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromUI4(ULONG ulIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromDec(__in const DECIMAL *pdecIn, __out ULONG64 FAR* pi64Out);
WINOLEAUTAPI VarUI8FromInt(INT intIn, ULONG64 FAR* pi64Out);

/*********************/



WINOLEAUTAPI VarDecFromUI1(__in BYTE bIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromI2(__in SHORT uiIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromI4(__in LONG lIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromI8(LONG64 i64In, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromR4(__in FLOAT fltIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromR8(__in DOUBLE dblIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromDate(__in DATE dateIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromCy(__in CY cyIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromStr(__in LPCOLESTR strIn, __in LCID lcid, __in ULONG dwFlags, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromDisp(__in IDispatch *pdispIn, __in LCID lcid, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromBool(__in VARIANT_BOOL boolIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromI1(__in CHAR cIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromUI2(__in USHORT uiIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromUI4(__in ULONG ulIn, __out DECIMAL *pdecOut);
WINOLEAUTAPI VarDecFromUI8(ULONG64 ui64In, __out DECIMAL *pdecOut);

#define VarUI4FromUI4(in, pOut) (*(pOut) = (in))
#define VarI4FromI4(in, pOut)   (*(pOut) = (in))

WINOLEAUTAPI VarI4FromI8(LONG64 i64In, __out LONG *plOut);
WINOLEAUTAPI VarI4FromUI8(ULONG64 ui64In, __out LONG *plOut);

#define VarUI8FromUI8(in, pOut) (*(pOut) = (in))
#define VarI8FromI8(in, pOut)   (*(pOut) = (in))


#define VarUI1FromInt       VarUI1FromI4
#define VarUI1FromUint      VarUI1FromUI4
#define VarI2FromInt        VarI2FromI4
#define VarI2FromUint       VarI2FromUI4
#define VarI4FromInt        VarI4FromI4
#define VarI4FromUint       VarI4FromUI4
#define VarI8FromInt        VarI8FromI4
#define VarI8FromUint       VarI8FromUI4
#define VarR4FromInt        VarR4FromI4
#define VarR4FromUint       VarR4FromUI4
#define VarR8FromInt        VarR8FromI4
#define VarR8FromUint       VarR8FromUI4
#define VarDateFromInt      VarDateFromI4
#define VarDateFromUint     VarDateFromUI4
#define VarCyFromInt        VarCyFromI4
#define VarCyFromUint       VarCyFromUI4
#define VarBstrFromInt      VarBstrFromI4
#define VarBstrFromUint     VarBstrFromUI4
#define VarBoolFromInt      VarBoolFromI4
#define VarBoolFromUint     VarBoolFromUI4
#define VarI1FromInt        VarI1FromI4
#define VarI1FromUint       VarI1FromUI4
#define VarUI2FromInt       VarUI2FromI4
#define VarUI2FromUint      VarUI2FromUI4
#define VarUI4FromInt       VarUI4FromI4
#define VarUI4FromUint      VarUI4FromUI4
#define VarDecFromInt       VarDecFromI4
#define VarDecFromUint      VarDecFromUI4
#define VarIntFromUI1       VarI4FromUI1
#define VarIntFromI2        VarI4FromI2
#define VarIntFromI4        VarI4FromI4
#define VarIntFromI8        VarI4FromI8
#define VarIntFromR4        VarI4FromR4
#define VarIntFromR8        VarI4FromR8
#define VarIntFromDate      VarI4FromDate
#define VarIntFromCy        VarI4FromCy
#define VarIntFromStr       VarI4FromStr
#define VarIntFromDisp      VarI4FromDisp
#define VarIntFromBool      VarI4FromBool
#define VarIntFromI1        VarI4FromI1
#define VarIntFromUI2       VarI4FromUI2
#define VarIntFromUI4       VarI4FromUI4
#define VarIntFromUI8       VarI4FromUI8
#define VarIntFromDec       VarI4FromDec
#define VarIntFromUint      VarI4FromUI4
#define VarUintFromUI1      VarUI4FromUI1
#define VarUintFromI2       VarUI4FromI2
#define VarUintFromI4       VarUI4FromI4
#define VarUintFromI8       VarUI4FromI8
#define VarUintFromR4       VarUI4FromR4
#define VarUintFromR8       VarUI4FromR8
#define VarUintFromDate     VarUI4FromDate
#define VarUintFromCy       VarUI4FromCy
#define VarUintFromStr      VarUI4FromStr
#define VarUintFromDisp     VarUI4FromDisp
#define VarUintFromBool     VarUI4FromBool
#define VarUintFromI1       VarUI4FromI1
#define VarUintFromUI2      VarUI4FromUI2
#define VarUintFromUI4      VarUI4FromUI4
#define VarUintFromUI8      VarUI4FromUI8
#define VarUintFromDec      VarUI4FromDec
#define VarUintFromInt      VarUI4FromI4

/* Mac Note: On the Mac, the coersion functions support the
 * Symantec C++ calling convention for float/double. To support
 * float/double arguments compiled with the MPW C compiler,
 * use the following APIs to move MPW float/double values into
 * a VARIANT.
 */

/*---------------------------------------------------------------------*/
/*            New VARIANT <-> string parsing functions                 */
/*---------------------------------------------------------------------*/

typedef struct {
    INT   cDig;
    ULONG dwInFlags;
    ULONG dwOutFlags;
    INT   cchUsed;
    INT   nBaseShift;
    INT   nPwr10;
} NUMPARSE;

/* flags used by both dwInFlags and dwOutFlags:
 */
#define NUMPRS_LEADING_WHITE    0x0001
#define NUMPRS_TRAILING_WHITE   0x0002
#define NUMPRS_LEADING_PLUS     0x0004
#define NUMPRS_TRAILING_PLUS    0x0008
#define NUMPRS_LEADING_MINUS    0x0010
#define NUMPRS_TRAILING_MINUS   0x0020
#define NUMPRS_HEX_OCT          0x0040
#define NUMPRS_PARENS           0x0080
#define NUMPRS_DECIMAL          0x0100
#define NUMPRS_THOUSANDS        0x0200
#define NUMPRS_CURRENCY         0x0400
#define NUMPRS_EXPONENT         0x0800
#define NUMPRS_USE_ALL          0x1000
#define NUMPRS_STD              0x1FFF

/* flags used by dwOutFlags only:
 */
#define NUMPRS_NEG              0x10000
#define NUMPRS_INEXACT          0x20000

/* flags used by VarNumFromParseNum to indicate acceptable result types:
 */
#define VTBIT_I1        (1 << VT_I1)
#define VTBIT_UI1       (1 << VT_UI1)
#define VTBIT_I2        (1 << VT_I2)
#define VTBIT_UI2       (1 << VT_UI2)
#define VTBIT_I4        (1 << VT_I4)
#define VTBIT_UI4       (1 << VT_UI4)
#define VTBIT_I8		(1 << VT_I8)
#define VTBIT_UI8		(1 << VT_UI8)
#define VTBIT_R4        (1 << VT_R4)
#define VTBIT_R8        (1 << VT_R8)
#define VTBIT_CY        (1 << VT_CY)
#define VTBIT_DECIMAL   (1 << VT_DECIMAL)


WINOLEAUTAPI VarParseNumFromStr(__in LPCOLESTR strIn, __in LCID lcid, __in ULONG dwFlags,
            __out NUMPARSE * pnumprs, __out BYTE * rgbDig);

WINOLEAUTAPI VarNumFromParseNum(__in NUMPARSE * pnumprs, __in BYTE * rgbDig,
            __in ULONG dwVtBits, __out VARIANT * pvar);

/*---------------------------------------------------------------------*/
/*                     VARTYPE Math API                                */
/*---------------------------------------------------------------------*/

STDAPI VarAdd(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarAnd(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarCat(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarDiv(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarEqv(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarIdiv(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarImp(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarMod(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarMul(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarOr(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarPow(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarSub(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);
STDAPI VarXor(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __out LPVARIANT pvarResult);

STDAPI VarAbs(__in LPVARIANT pvarIn, __out LPVARIANT pvarResult);
STDAPI VarFix(__in LPVARIANT pvarIn, __out LPVARIANT pvarResult);
STDAPI VarInt(__in LPVARIANT pvarIn, __out LPVARIANT pvarResult);
STDAPI VarNeg(__in LPVARIANT pvarIn, __out LPVARIANT pvarResult);
STDAPI VarNot(__in LPVARIANT pvarIn, __out LPVARIANT pvarResult);

STDAPI VarRound(__in LPVARIANT pvarIn, __in int cDecimals, __out LPVARIANT pvarResult);

// dwFlags passed to CompareString if a string compare
STDAPI VarCmp(__in LPVARIANT pvarLeft, __in LPVARIANT pvarRight, __in LCID lcid, __in ULONG dwFlags);

#ifdef __cplusplus
extern "C++" {
// Add wrapper for old ATL headers to call
__inline
HRESULT
#if !defined(_M_CEE_PURE)
STDAPICALLTYPE
#endif
VarCmp(LPVARIANT pvarLeft, LPVARIANT pvarRight, LCID lcid) {
    return VarCmp(pvarLeft, pvarRight, lcid, 0);
}
} // extern "C++"
#endif


// Decimal math
//
STDAPI VarDecAdd(__in LPDECIMAL pdecLeft, __in LPDECIMAL pdecRight, __out LPDECIMAL pdecResult);
STDAPI VarDecDiv(__in LPDECIMAL pdecLeft, __in LPDECIMAL pdecRight, __out LPDECIMAL pdecResult);
STDAPI VarDecMul(__in LPDECIMAL pdecLeft, __in LPDECIMAL pdecRight, __out LPDECIMAL pdecResult);
STDAPI VarDecSub(__in LPDECIMAL pdecLeft, __in LPDECIMAL pdecRight, __out LPDECIMAL pdecResult);

STDAPI VarDecAbs(__in LPDECIMAL pdecIn, __out LPDECIMAL pdecResult);
STDAPI VarDecFix(__in LPDECIMAL pdecIn, __out LPDECIMAL pdecResult);
STDAPI VarDecInt(__in LPDECIMAL pdecIn, __out LPDECIMAL pdecResult);
STDAPI VarDecNeg(__in LPDECIMAL pdecIn, __out LPDECIMAL pdecResult);

STDAPI VarDecRound(__in LPDECIMAL pdecIn, int cDecimals, __out LPDECIMAL pdecResult);

STDAPI VarDecCmp(__in LPDECIMAL pdecLeft, __in LPDECIMAL pdecRight);
STDAPI VarDecCmpR8(__in LPDECIMAL pdecLeft, __in double dblRight);


// Currency math
//
STDAPI VarCyAdd(__in CY cyLeft, __in CY cyRight, __out LPCY pcyResult);
STDAPI VarCyMul(__in CY cyLeft, __in CY cyRight, __out LPCY pcyResult);
STDAPI VarCyMulI4(__in CY cyLeft, __in long lRight, __out LPCY pcyResult);
STDAPI VarCyMulI8(__in CY cyLeft, __in LONG64 lRight, __out LPCY pcyResult);
STDAPI VarCySub(__in CY cyLeft, __in CY cyRight, __out LPCY pcyResult);

STDAPI VarCyAbs(__in CY cyIn, __out LPCY pcyResult);
STDAPI VarCyFix(__in CY cyIn, __out LPCY pcyResult);
STDAPI VarCyInt(__in CY cyIn, __out LPCY pcyResult);
STDAPI VarCyNeg(__in CY cyIn, __out LPCY pcyResult);

STDAPI VarCyRound(__in CY cyIn, __in int cDecimals, __out LPCY pcyResult);

STDAPI VarCyCmp(__in CY cyLeft, __in CY cyRight);
STDAPI VarCyCmpR8(__in CY cyLeft, __in double dblRight);


// Misc support functions
//
STDAPI VarBstrCat(__in BSTR bstrLeft, __in BSTR bstrRight, __out LPBSTR pbstrResult);
STDAPI VarBstrCmp(__in BSTR bstrLeft, __in BSTR bstrRight, __in LCID lcid, __in ULONG dwFlags); // dwFlags passed to CompareString
STDAPI VarR8Pow(__in double dblLeft, __in double dblRight, __out double *pdblResult);
STDAPI VarR4CmpR8(__in float fltLeft, __in double dblRight);
STDAPI VarR8Round(__in double dblIn, __in int cDecimals, __out double *pdblResult);


// Compare results.  These are returned as a SUCCESS HResult.  Subtracting
// one gives the usual values of -1 for Less Than, 0 for Equal To, +1 for
// Greater Than.
//
#define VARCMP_LT   0
#define VARCMP_EQ   1
#define VARCMP_GT   2
#define VARCMP_NULL 3

// VT_HARDTYPE tells the compare routine that the argument is a literal or
// otherwise declared of that specific type.  It causes comparison rules to 
// change. For example, if a hard-type string is compared to a variant (not hard
// -type) number, the number is converted to string.  If a hard-type number is 
// compared to a variant string, the string is converted to number.  If they're 
// both variant, then number < string.
#define VT_HARDTYPE VT_RESERVED

/*---------------------------------------------------------------------*/
/*                   New date functions                                */
/*---------------------------------------------------------------------*/

/* The UDATE structure is used with VarDateFromUdate() and VarUdateFromDate().
 * It represents an "unpacked date".
 */
typedef struct {
    SYSTEMTIME st;
    USHORT  wDayOfYear;
} UDATE;

/* APIs to "pack" and "unpack" dates.
 * NOTE: Ex version of VarDateFromUdate obeys 2 digit year setting in
 * control panel.
 */
WINOLEAUTAPI VarDateFromUdate(__in UDATE *pudateIn, __in ULONG dwFlags, __out DATE *pdateOut);
WINOLEAUTAPI VarDateFromUdateEx(__in UDATE *pudateIn, __in LCID lcid, __in ULONG dwFlags, __out DATE *pdateOut);
WINOLEAUTAPI VarUdateFromDate(__in DATE dateIn, __in ULONG dwFlags, __out UDATE *pudateOut);

/* API to retrieve the secondary(altername) month names
   Useful for Hijri, Polish and Russian alternate month names
*/   
WINOLEAUTAPI GetAltMonthNames(LCID lcid, __deref_out_ecount_opt(13) LPOLESTR * * prgp);

/*---------------------------------------------------------------------*/
/*                 Format                                              */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI VarFormat(
	__in LPVARIANT pvarIn,
	__in_opt LPOLESTR pstrFormat, 
	int iFirstDay, 
	int iFirstWeek, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);
	
WINOLEAUTAPI VarFormatDateTime(
	__in LPVARIANT pvarIn, 
	int iNamedFormat, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);
	
WINOLEAUTAPI VarFormatNumber(
	__in LPVARIANT pvarIn, 
	int iNumDig, 
	int iIncLead, 
	int iUseParens, 
	int iGroup, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);
	
WINOLEAUTAPI VarFormatPercent(
	__in LPVARIANT pvarIn, 
	int iNumDig, 
	int iIncLead, 
	int iUseParens, 
	int iGroup, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);
	
WINOLEAUTAPI VarFormatCurrency(
	__in LPVARIANT pvarIn, 
	int iNumDig, 
	int iIncLead,  
	int iUseParens, 
	int iGroup, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);

WINOLEAUTAPI VarWeekdayName(
	int iWeekday, 
	int fAbbrev, 
	int iFirstDay, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);
	
WINOLEAUTAPI VarMonthName(
	int iMonth, 
	int fAbbrev, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut
	);

WINOLEAUTAPI VarFormatFromTokens(
	__in LPVARIANT pvarIn, 
	__in_opt LPOLESTR pstrFormat, 
	LPBYTE pbTokCur, 
	ULONG dwFlags, 
	__out BSTR *pbstrOut, 
	LCID lcid
	);
	
WINOLEAUTAPI VarTokenizeFormatString(
	__in_opt LPOLESTR pstrFormat, 
	__inout LPBYTE rgbTok, 
	int cbTok, 
	int iFirstDay, 
	int iFirstWeek, 
	LCID lcid, 
	__in_opt int *pcbActual
	);

/*---------------------------------------------------------------------*/
/*                 ITypeLib                                            */
/*---------------------------------------------------------------------*/

typedef /* [unique] */  __RPC_unique_pointer ITypeLib *LPTYPELIB;


/*---------------------------------------------------------------------*/
/*                ITypeInfo                                            */
/*---------------------------------------------------------------------*/


typedef LONG DISPID;
typedef DISPID MEMBERID;

#define MEMBERID_NIL DISPID_UNKNOWN
#define ID_DEFAULTINST  -2


/* Flags for IDispatch::Invoke */
#define DISPATCH_METHOD         0x1
#define DISPATCH_PROPERTYGET    0x2
#define DISPATCH_PROPERTYPUT    0x4
#define DISPATCH_PROPERTYPUTREF 0x8

typedef /* [unique] */  __RPC_unique_pointer ITypeInfo *LPTYPEINFO;


/*---------------------------------------------------------------------*/
/*                ITypeComp                                            */
/*---------------------------------------------------------------------*/

typedef /* [unique] */  __RPC_unique_pointer ITypeComp *LPTYPECOMP;


/*---------------------------------------------------------------------*/
/*             ICreateTypeLib                                          */
/*---------------------------------------------------------------------*/

typedef ICreateTypeLib * LPCREATETYPELIB;

typedef ICreateTypeInfo * LPCREATETYPEINFO;

/*---------------------------------------------------------------------*/
/*             TypeInfo API                                            */
/*---------------------------------------------------------------------*/

/* compute a 16bit hash value for the given name
 */
#if (defined (_WIN32) || defined (_WIN64))
WINOLEAUTAPI_(ULONG) LHashValOfNameSysA(SYSKIND syskind, LCID lcid,
            LPCSTR szName);
#endif

WINOLEAUTAPI_(ULONG)
LHashValOfNameSys(SYSKIND syskind, LCID lcid, const OLECHAR * szName);

#define LHashValOfName(lcid, szName) \
            LHashValOfNameSys(SYS_WIN32, lcid, szName)

#define WHashValOfLHashVal(lhashval) \
            ((USHORT) (0x0000ffff & (lhashval)))

#define IsHashValCompatible(lhashval1, lhashval2) \
            ((BOOL) ((0x00ff0000 & (lhashval1)) == (0x00ff0000 & (lhashval2))))

/* load the typelib from the file with the given filename
 */
WINOLEAUTAPI LoadTypeLib(__nullterminated LPCOLESTR szFile, ITypeLib ** pptlib);

/* Control how a type library is registered
 */
typedef enum tagREGKIND
{
    REGKIND_DEFAULT,
    REGKIND_REGISTER,
    REGKIND_NONE
} REGKIND;


// Constants for specifying format in which TLB should be loaded 
// (the default format is 32-bit on WIN32 and 64-bit on WIN64)
#define LOAD_TLB_AS_32BIT	0x20
#define LOAD_TLB_AS_64BIT	0x40
#define MASK_TO_RESET_TLB_BITS		~(LOAD_TLB_AS_32BIT | LOAD_TLB_AS_64BIT)

WINOLEAUTAPI LoadTypeLibEx(LPCOLESTR szFile, REGKIND regkind,
            ITypeLib ** pptlib);

/* load registered typelib
 */
WINOLEAUTAPI LoadRegTypeLib(REFGUID rguid, WORD wVerMajor, WORD wVerMinor,
            LCID lcid, ITypeLib ** pptlib);

/* get path to registered typelib
 */
WINOLEAUTAPI QueryPathOfRegTypeLib(REFGUID guid, USHORT wMaj, USHORT wMin,
            LCID lcid, __out LPBSTR lpbstrPathName);

/* add typelib to registry
 */
WINOLEAUTAPI RegisterTypeLib(ITypeLib * ptlib, __in LPCOLESTR szFullPath,
            __in_opt LPCOLESTR szHelpDir);

/* remove typelib from registry
 */

WINOLEAUTAPI UnRegisterTypeLib(REFGUID libID, WORD wVerMajor,
            WORD wVerMinor, LCID lcid, SYSKIND syskind);

/* Registers a type library for use by the calling user.
*/
WINOLEAUTAPI RegisterTypeLibForUser(ITypeLib *ptlib,__in OLECHAR  *szFullPath,
			__in_opt OLECHAR  *szHelpDir);

/* Removes type library information that was registered by using RegisterTypeLibForUser. 
*/
WINOLEAUTAPI UnRegisterTypeLibForUser(
    REFGUID         libID,
    WORD   wMajorVerNum, 
    WORD   wMinorVerNum, 
    LCID            lcid, 
    SYSKIND         syskind);
			
WINOLEAUTAPI CreateTypeLib(SYSKIND syskind, LPCOLESTR szFile,
            ICreateTypeLib ** ppctlib);

WINOLEAUTAPI CreateTypeLib2(SYSKIND syskind, LPCOLESTR szFile,
            ICreateTypeLib2 **ppctlib);


/*---------------------------------------------------------------------*/
/*           IDispatch implementation support                          */
/*---------------------------------------------------------------------*/

typedef /* [unique] */  __RPC_unique_pointer IDispatch *LPDISPATCH;

typedef struct tagPARAMDATA {
    OLECHAR * szName;   /* parameter name */
    VARTYPE vt;         /* parameter type */
} PARAMDATA, * LPPARAMDATA;

typedef struct tagMETHODDATA {
    OLECHAR * szName;   /* method name */
    PARAMDATA * ppdata; /* pointer to an array of PARAMDATAs */
    DISPID dispid;      /* method ID */
    UINT iMeth;         /* method index */
    CALLCONV cc;        /* calling convention */
    UINT cArgs;         /* count of arguments */
    WORD wFlags;        /* same wFlags as on IDispatch::Invoke() */
    VARTYPE vtReturn;
} METHODDATA, * LPMETHODDATA;

typedef struct tagINTERFACEDATA {
    METHODDATA * pmethdata;  /* pointer to an array of METHODDATAs */
    UINT cMembers;      /* count of members */
} INTERFACEDATA, * LPINTERFACEDATA;



/* Locate the parameter indicated by the given position, and
 * return it coerced to the given target VARTYPE (vtTarg).
 */
WINOLEAUTAPI DispGetParam(
	__in DISPPARAMS * pdispparams, 
	UINT position,
	VARTYPE vtTarg, 
	__out VARIANT * pvarResult, 
	__out_opt UINT * puArgErr
	);

/* Automatic TypeInfo driven implementation of IDispatch::GetIDsOfNames()
 */
__checkReturn WINOLEAUTAPI DispGetIDsOfNames(ITypeInfo * ptinfo, __in_ecount(cNames) OLECHAR ** rgszNames,
            UINT cNames, __out_ecount(cNames) DISPID * rgdispid);

/* Automatic TypeInfo driven implementation of IDispatch::Invoke()
 */
WINOLEAUTAPI DispInvoke(void * _this, ITypeInfo * ptinfo, DISPID dispidMember,
            WORD wFlags, DISPPARAMS * pparams, VARIANT * pvarResult,
            EXCEPINFO * pexcepinfo, UINT * puArgErr);

/* Construct a TypeInfo from an interface data description
 */
WINOLEAUTAPI CreateDispTypeInfo(INTERFACEDATA * pidata, LCID lcid,
            ITypeInfo ** pptinfo);

/* Create an instance of the standard TypeInfo driven IDispatch
 * implementation.
 */
WINOLEAUTAPI CreateStdDispatch(IUnknown * punkOuter, void * pvThis,
            ITypeInfo * ptinfo, IUnknown ** ppunkStdDisp);

/* Low-level helper for IDispatch::Invoke() provides machine independence
 * for customized Invoke().
 */
WINOLEAUTAPI DispCallFunc(void * pvInstance, ULONG_PTR oVft, CALLCONV cc,
            VARTYPE vtReturn, UINT  cActuals, VARTYPE * prgvt,
            VARIANTARG ** prgpvarg, VARIANT * pvargResult);


/*---------------------------------------------------------------------*/
/*            Active Object Registration API                           */
/*---------------------------------------------------------------------*/

/* flags for RegisterActiveObject */
#define ACTIVEOBJECT_STRONG 0x0
#define ACTIVEOBJECT_WEAK 0x1

WINOLEAUTAPI RegisterActiveObject(IUnknown * punk, REFCLSID rclsid,
            DWORD dwFlags, DWORD * pdwRegister);

WINOLEAUTAPI RevokeActiveObject(DWORD dwRegister, void * pvReserved);

WINOLEAUTAPI GetActiveObject(REFCLSID rclsid, void * pvReserved,
            IUnknown ** ppunk);

/*---------------------------------------------------------------------*/
/*                           ErrorInfo API                             */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI SetErrorInfo(__in ULONG dwReserved, __in_opt IErrorInfo * perrinfo);
WINOLEAUTAPI GetErrorInfo(__in ULONG dwReserved, __deref_out IErrorInfo ** pperrinfo);
WINOLEAUTAPI CreateErrorInfo(__deref_out ICreateErrorInfo ** pperrinfo);

/*---------------------------------------------------------------------*/
/*           User Defined Data types support                           */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI GetRecordInfoFromTypeInfo(ITypeInfo * pTypeInfo,
            IRecordInfo ** ppRecInfo);

WINOLEAUTAPI GetRecordInfoFromGuids(REFGUID rGuidTypeLib,
            ULONG uVerMajor, ULONG uVerMinor, LCID lcid,
            REFGUID rGuidTypeInfo, IRecordInfo ** ppRecInfo);

/*---------------------------------------------------------------------*/
/*                           MISC API                                  */
/*---------------------------------------------------------------------*/

WINOLEAUTAPI_(ULONG) OaBuildVersion(void);

WINOLEAUTAPI_(void) ClearCustData(LPCUSTDATA pCustData);

#if (NTDDI_VERSION >= NTDDI_VISTASP1)
WINOLEAUTAPI_(void) OaEnablePerUserTLibRegistration(void);
#endif


// Declare variant access functions.

#if __STDC__ || defined(NONAMELESSUNION)
#define V_UNION(X, Y)   ((X)->n1.n2.n3.Y)
#define V_VT(X)         ((X)->n1.n2.vt)
#define V_RECORDINFO(X) ((X)->n1.n2.n3.brecVal.pRecInfo)
#define V_RECORD(X)     ((X)->n1.n2.n3.brecVal.pvRecord)
#else
#define V_UNION(X, Y)   ((X)->Y)
#define V_VT(X)         ((X)->vt)
#define V_RECORDINFO(X) ((X)->pRecInfo)
#define V_RECORD(X)     ((X)->pvRecord)
#endif

/* Variant access macros
 */
#define V_ISBYREF(X)     (V_VT(X)&VT_BYREF)
#define V_ISARRAY(X)     (V_VT(X)&VT_ARRAY)
#define V_ISVECTOR(X)    (V_VT(X)&VT_VECTOR)
#define V_NONE(X)        V_I2(X)

#define V_UI1(X)         V_UNION(X, bVal)
#define V_UI1REF(X)      V_UNION(X, pbVal)
#define V_I2(X)          V_UNION(X, iVal)
#define V_I2REF(X)       V_UNION(X, piVal)
#define V_I4(X)          V_UNION(X, lVal)
#define V_I4REF(X)       V_UNION(X, plVal)
#define V_I8(X)          V_UNION(X, llVal)
#define V_I8REF(X)       V_UNION(X, pllVal)
#define V_R4(X)          V_UNION(X, fltVal)
#define V_R4REF(X)       V_UNION(X, pfltVal)
#define V_R8(X)          V_UNION(X, dblVal)
#define V_R8REF(X)       V_UNION(X, pdblVal)
#define V_I1(X)          V_UNION(X, cVal)
#define V_I1REF(X)       V_UNION(X, pcVal)
#define V_UI2(X)         V_UNION(X, uiVal)
#define V_UI2REF(X)      V_UNION(X, puiVal)
#define V_UI4(X)         V_UNION(X, ulVal)
#define V_UI4REF(X)      V_UNION(X, pulVal)
#define V_UI8(X)         V_UNION(X, ullVal)
#define V_UI8REF(X)      V_UNION(X, pullVal)
#define V_INT(X)         V_UNION(X, intVal)
#define V_INTREF(X)      V_UNION(X, pintVal)
#define V_UINT(X)        V_UNION(X, uintVal)
#define V_UINTREF(X)     V_UNION(X, puintVal)

#ifdef _WIN64
#define V_INT_PTR(X)        V_UNION(X, llVal)
#define V_UINT_PTR(X)       V_UNION(X, ullVal)
#define V_INT_PTRREF(X)     V_UNION(X, pllVal)
#define V_UINT_PTRREF(X)    V_UNION(X, pullVal)
#else
#define V_INT_PTR(X)        V_UNION(X, lVal)
#define V_UINT_PTR(X)       V_UNION(X, ulVal)
#define V_INT_PTRREF(X)     V_UNION(X, plVal)
#define V_UINT_PTRREF(X)    V_UNION(X, pulVal)
#endif

#define V_CY(X)          V_UNION(X, cyVal)
#define V_CYREF(X)       V_UNION(X, pcyVal)
#define V_DATE(X)        V_UNION(X, date)
#define V_DATEREF(X)     V_UNION(X, pdate)
#define V_BSTR(X)        V_UNION(X, bstrVal)
#define V_BSTRREF(X)     V_UNION(X, pbstrVal)
#define V_DISPATCH(X)    V_UNION(X, pdispVal)
#define V_DISPATCHREF(X) V_UNION(X, ppdispVal)
#define V_ERROR(X)       V_UNION(X, scode)
#define V_ERRORREF(X)    V_UNION(X, pscode)
#define V_BOOL(X)        V_UNION(X, boolVal)
#define V_BOOLREF(X)     V_UNION(X, pboolVal)
#define V_UNKNOWN(X)     V_UNION(X, punkVal)
#define V_UNKNOWNREF(X)  V_UNION(X, ppunkVal)
#define V_VARIANTREF(X)  V_UNION(X, pvarVal)
#define V_ARRAY(X)       V_UNION(X, parray)
#define V_ARRAYREF(X)    V_UNION(X, pparray)
#define V_BYREF(X)       V_UNION(X, byref)

#define V_DECIMAL(X)     V_UNION(X, decVal)
#define V_DECIMALREF(X)  V_UNION(X, pdecVal)

#ifndef RC_INVOKED
#include <poppack.h>
#endif // RC_INVOKED

#endif     // __OLEAUTO_H__

