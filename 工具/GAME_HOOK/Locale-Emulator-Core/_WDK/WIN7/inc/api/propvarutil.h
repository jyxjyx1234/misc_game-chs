
//===========================================================================
//
// Copyright (c) Microsoft Corporation. All rights reserved.
//
// propvarutil.h - Variant and PropVariant helpers
//
//===========================================================================

#pragma once

typedef __success(return >= 0) LONG NTSTATUS;
#include <propapi.h>
#include <shtypes.h>
#include <shlwapi.h>

#ifndef PSSTDAPI
#if defined(_PROPSYS_)
#define PSSTDAPI          STDAPI
#define PSSTDAPI_(type)   STDAPI_(type)
#else
#define PSSTDAPI          EXTERN_C DECLSPEC_IMPORT HRESULT STDAPICALLTYPE
#define PSSTDAPI_(type)   EXTERN_C DECLSPEC_IMPORT type STDAPICALLTYPE
#endif
#endif // PSSTDAPI

enum tagPSTIME_FLAGS
{
    PSTF_UTC   = 0x00000000,
    PSTF_LOCAL = 0x00000001,
};
typedef int PSTIME_FLAGS;

//====================
//
// PropVariant Helpers
//
//====================

// Initialize a propvariant
PSSTDAPI InitPropVariantFromResource(__in HINSTANCE hinst, __in UINT id, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromBuffer(__in_bcount(cb) const void *pv, __in UINT cb, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromCLSID(__in REFCLSID clsid, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromGUIDAsString(__in REFGUID guid, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromFileTime(__in const FILETIME *pftIn, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromPropVariantVectorElem(__in REFPROPVARIANT propvarIn, __in ULONG iElem, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantVectorFromPropVariant(__in REFPROPVARIANT propvarSingle, __out PROPVARIANT *ppropvarVector);
PSSTDAPI InitPropVariantFromStrRet(__inout STRRET *pstrret, __in_opt PCUITEMID_CHILD pidl, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromBooleanVector(__in_ecount_opt(cElems) const BOOL *prgf, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromInt16Vector(__in_ecount_opt(cElems) const SHORT *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromUInt16Vector(__in_ecount_opt(cElems) const USHORT *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromInt32Vector(__in_ecount_opt(cElems) const LONG *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromUInt32Vector(__in_ecount_opt(cElems) const ULONG *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromInt64Vector(__in_ecount_opt(cElems) const LONGLONG *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromUInt64Vector(__in_ecount_opt(cElems) const ULONGLONG *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromDoubleVector(__in_ecount_opt(cElems) const DOUBLE *prgn, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromFileTimeVector(__in_ecount_opt(cElems) const FILETIME *prgft, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromStringVector(__in_ecount_opt(cElems) PCWSTR *prgsz, __in ULONG cElems, __out PROPVARIANT *ppropvar);
PSSTDAPI InitPropVariantFromStringAsVector(__in_opt PCWSTR psz, __out PROPVARIANT *ppropvar);
#ifdef __cplusplus
HRESULT  InitPropVariantFromBoolean(__in BOOL fVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromInt16(__in SHORT nVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromUInt16(__in USHORT uiVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromInt32(__in LONG lVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromUInt32(__in ULONG ulVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromInt64(__in LONGLONG llVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromUInt64(__in ULONGLONG ullVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromDouble(__in DOUBLE dblVal, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromString(__in PCWSTR psz, __out PROPVARIANT *ppropvar);
HRESULT  InitPropVariantFromGUIDAsBuffer(__in REFGUID guid, __out PROPVARIANT *ppropvar);
BOOL     IsPropVariantVector(__in REFPROPVARIANT propvar);
BOOL     IsPropVariantString(__in REFPROPVARIANT propvar);
#endif

// Extract data from a propvariant
PSSTDAPI_(BOOL)      PropVariantToBooleanWithDefault(__in REFPROPVARIANT propvarIn, __in BOOL fDefault);
PSSTDAPI_(SHORT)     PropVariantToInt16WithDefault(__in REFPROPVARIANT propvarIn, __in SHORT iDefault);
PSSTDAPI_(USHORT)    PropVariantToUInt16WithDefault(__in REFPROPVARIANT propvarIn, __in USHORT uiDefault);
PSSTDAPI_(LONG)      PropVariantToInt32WithDefault(__in REFPROPVARIANT propvarIn, __in LONG lDefault);
PSSTDAPI_(ULONG)     PropVariantToUInt32WithDefault(__in REFPROPVARIANT propvarIn, __in ULONG ulDefault);
PSSTDAPI_(LONGLONG)  PropVariantToInt64WithDefault(__in REFPROPVARIANT propvarIn, __in LONGLONG llDefault);
PSSTDAPI_(ULONGLONG) PropVariantToUInt64WithDefault(__in REFPROPVARIANT propvarIn, __in ULONGLONG ullDefault);
PSSTDAPI_(DOUBLE)    PropVariantToDoubleWithDefault(__in REFPROPVARIANT propvarIn, __in DOUBLE dblDefault);
PSSTDAPI_(PCWSTR)    PropVariantToStringWithDefault(__in REFPROPVARIANT propvarIn, __in_opt LPCWSTR pszDefault);

PSSTDAPI             PropVariantToBoolean(__in REFPROPVARIANT propvarIn, __out BOOL *pfRet);
PSSTDAPI             PropVariantToInt16(__in REFPROPVARIANT propvarIn, __out SHORT *piRet);
PSSTDAPI             PropVariantToUInt16(__in REFPROPVARIANT propvarIn, __out USHORT *puiRet);
PSSTDAPI             PropVariantToInt32(__in REFPROPVARIANT propvarIn, __out LONG *plRet);
PSSTDAPI             PropVariantToUInt32(__in REFPROPVARIANT propvarIn, __out ULONG *pulRet);
PSSTDAPI             PropVariantToInt64(__in REFPROPVARIANT propvarIn, __out LONGLONG *pllRet);
PSSTDAPI             PropVariantToUInt64(__in REFPROPVARIANT propvarIn, __out ULONGLONG *pullRet);
PSSTDAPI             PropVariantToDouble(__in REFPROPVARIANT propvarIn, __out DOUBLE *pdblRet);
PSSTDAPI             PropVariantToBuffer(__in REFPROPVARIANT propvar, __out_bcount(cb) void *pv, __in UINT cb);
PSSTDAPI             PropVariantToString(__in REFPROPVARIANT propvar, __out_ecount(cch) PWSTR psz, __in UINT cch);
PSSTDAPI             PropVariantToGUID(__in REFPROPVARIANT propvar, __out GUID *pguid);
__checkReturn PSSTDAPI PropVariantToStringAlloc(__in REFPROPVARIANT propvar, __deref_out PWSTR *ppszOut);
__checkReturn PSSTDAPI PropVariantToBSTR(__in REFPROPVARIANT propvar, __deref_out BSTR *pbstrOut);
__checkReturn PSSTDAPI PropVariantToStrRet(__in REFPROPVARIANT propvar, __out STRRET *pstrret);
PSSTDAPI             PropVariantToFileTime(__in REFPROPVARIANT propvar, __in PSTIME_FLAGS pstfOut, __out FILETIME* pftOut);
#ifdef __cplusplus
HRESULT              PropVariantToCLSID(__in REFPROPVARIANT propvar, __out CLSID *pclsid);
#endif

// Returns element count of a VT_VECTOR or VT_ARRAY value; or 1 otherwise
PSSTDAPI_(ULONG) PropVariantGetElementCount(__in REFPROPVARIANT propvar);

// Extract data from a propvariant into a vector
PSSTDAPI PropVariantToBooleanVector(__in REFPROPVARIANT propvar, __out_ecount_part(crgf, *pcElem) BOOL *prgf, __in ULONG crgf, __out ULONG *pcElem);
PSSTDAPI PropVariantToInt16Vector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) SHORT *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToUInt16Vector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) USHORT *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToInt32Vector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) LONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToUInt32Vector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) ULONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToInt64Vector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) LONGLONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToUInt64Vector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) ULONGLONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToDoubleVector(__in REFPROPVARIANT propvar, __out_ecount_part(crgn, *pcElem) DOUBLE *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI PropVariantToFileTimeVector(__in REFPROPVARIANT propvar, __out_ecount_part(crgft, *pcElem) FILETIME *prgft, __in ULONG crgft, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToStringVector(__in REFPROPVARIANT propvar, __out_ecount_part(crgsz, *pcElem) PWSTR *prgsz, __in ULONG crgsz, __out ULONG *pcElem);


// Extract data from a propvariant and return an newly allocated vector (free with CoTaskMemFree)
__checkReturn PSSTDAPI PropVariantToBooleanVectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) BOOL **pprgf, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToInt16VectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) SHORT **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToUInt16VectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) USHORT **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToInt32VectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) LONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToUInt32VectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) ULONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToInt64VectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) LONGLONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToUInt64VectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) ULONGLONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToDoubleVectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) DOUBLE **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToFileTimeVectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) FILETIME **pprgft, __out ULONG *pcElem);
__checkReturn PSSTDAPI PropVariantToStringVectorAlloc(__in REFPROPVARIANT propvar, __deref_out_ecount(*pcElem) PWSTR **pprgsz, __out ULONG *pcElem);

// Extract a single element from a propvariant.  If it is a VT_VECTOR or VT_ARRAY, returns the element you request.
// Otherwise iElem must equal 0 and the function will returns the value.
PSSTDAPI PropVariantGetBooleanElem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out BOOL *pfVal);
PSSTDAPI PropVariantGetInt16Elem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out SHORT *pnVal);
PSSTDAPI PropVariantGetUInt16Elem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out USHORT *pnVal);
PSSTDAPI PropVariantGetInt32Elem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out LONG *pnVal);
PSSTDAPI PropVariantGetUInt32Elem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out ULONG *pnVal);
PSSTDAPI PropVariantGetInt64Elem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out LONGLONG *pnVal);
PSSTDAPI PropVariantGetUInt64Elem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out ULONGLONG *pnVal);
PSSTDAPI PropVariantGetDoubleElem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out DOUBLE *pnVal);
PSSTDAPI PropVariantGetFileTimeElem(__in REFPROPVARIANT propvar, __in ULONG iElem, __out FILETIME *pftVal);
__checkReturn PSSTDAPI PropVariantGetStringElem(__in REFPROPVARIANT propvar, __in ULONG iElem, __deref_out PWSTR *ppszVal);
#ifdef __cplusplus
HRESULT  PropVariantGetElem(__in REFPROPVARIANT propvarIn, __in ULONG iElem, __out PROPVARIANT *ppropvar);
#endif

// Helpers
PSSTDAPI_(void) ClearPropVariantArray(__inout_ecount(cVars) PROPVARIANT *rgPropVar, __in UINT cVars);

typedef enum 
{
    PVCU_DEFAULT = 0,
    PVCU_SECOND  = 1,
    PVCU_MINUTE  = 2,
    PVCU_HOUR    = 3,
    PVCU_DAY     = 4,
    PVCU_MONTH   = 5,
    PVCU_YEAR    = 6
} PROPVAR_COMPARE_UNIT;

enum tagPROPVAR_COMPARE_FLAGS
{
    PVCF_DEFAULT                 = 0x00000000,   // When comparing strings, use StrCmpLogical
    PVCF_TREATEMPTYASGREATERTHAN = 0x00000001,   // Empty/null values are greater-than non-empty values
    PVCF_USESTRCMP               = 0x00000002,   // When comparing strings, use StrCmp
    PVCF_USESTRCMPC              = 0x00000004,   // When comparing strings, use StrCmpC
    PVCF_USESTRCMPI              = 0x00000008,   // When comparing strings, use StrCmpI
    PVCF_USESTRCMPIC             = 0x00000010,   // When comparing strings, use StrCmpIC
};
typedef int PROPVAR_COMPARE_FLAGS;

// Comparisons
PSSTDAPI_(int) PropVariantCompareEx(__in REFPROPVARIANT propvar1, __in REFPROPVARIANT propvar2, __in PROPVAR_COMPARE_UNIT unit, __in PROPVAR_COMPARE_FLAGS flags);
#ifdef __cplusplus
int PropVariantCompare(__in REFPROPVARIANT propvar1, __in REFPROPVARIANT propvar2);
#endif

enum tagPROPVAR_CHANGE_FLAGS
{
    PVCHF_DEFAULT           = 0x00000000,
    PVCHF_NOVALUEPROP       = 0x00000001,       // Maps to VARIANT_NOVALUEPROP for VariantChangeType
    PVCHF_ALPHABOOL         = 0x00000002,       // Maps to VARIANT_ALPHABOOL for VariantChangeType
    PVCHF_NOUSEROVERRIDE    = 0x00000004,       // Maps to VARIANT_NOUSEROVERRIDE for VariantChangeType
    PVCHF_LOCALBOOL         = 0x00000008,       // Maps to VARIANT_LOCALBOOL for VariantChangeType
    PVCHF_NOHEXSTRING       = 0x00000010,       // Don't convert a string that looks like hexadecimal (0xABCD) to the numerical equivalent
};
typedef int PROPVAR_CHANGE_FLAGS;

// Coersions
PSSTDAPI PropVariantChangeType(__out PROPVARIANT *ppropvarDest, __in REFPROPVARIANT propvarSrc, __in PROPVAR_CHANGE_FLAGS flags, __in VARTYPE vt);

// Conversions
PSSTDAPI PropVariantToVariant(__in const PROPVARIANT *pPropVar, __out VARIANT *pVar);
PSSTDAPI VariantToPropVariant(__in const VARIANT* pVar, __out PROPVARIANT* pPropVar);

// Stg functions
__checkReturn PSSTDAPI StgSerializePropVariant(
            __in const PROPVARIANT* ppropvar,
            __deref_out_bcount(*pcb) SERIALIZEDPROPERTYVALUE** ppProp,
            __out ULONG* pcb);
    
PSSTDAPI StgDeserializePropVariant(
            __in const SERIALIZEDPROPERTYVALUE* pprop,
            __in ULONG cbMax,
            __out PROPVARIANT* ppropvar);



//================
//
// Variant Helpers
//
//================

#ifdef __cplusplus
BOOL IsVarTypeFloat(__in VARTYPE vt);
BOOL IsVariantArray(__in REFVARIANT var);
BOOL IsVariantString(__in REFVARIANT var);
BOOL IsVarTypeNumber(__in VARTYPE vt);
BOOL IsVarTypeInteger(__in VARTYPE vt);
#endif

// Initialize a VARIANT
PSSTDAPI InitVariantFromResource(__in HINSTANCE hinst, __in UINT id, __out VARIANT *pvar);
PSSTDAPI InitVariantFromBuffer(__in_bcount(cb) const void *pv, __in UINT cb, __out VARIANT *pvar);
PSSTDAPI InitVariantFromGUIDAsString(__in REFGUID guid, __out VARIANT *pvar);
PSSTDAPI InitVariantFromFileTime(__in const FILETIME *pft, __out VARIANT *pvar);
PSSTDAPI InitVariantFromFileTimeArray(__in_ecount_opt(cElems) const FILETIME *prgft, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromStrRet(__in STRRET *pstrret, __in PCUITEMID_CHILD pidl, __out VARIANT *pvar);
PSSTDAPI InitVariantFromVariantArrayElem(__in REFVARIANT varIn, __in ULONG iElem, __out VARIANT *pvar);
PSSTDAPI InitVariantFromBooleanArray(__in_ecount(cElems) const BOOL *prgf, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromInt16Array(__in_ecount(cElems) const SHORT *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromUInt16Array(__in_ecount(cElems) const USHORT *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromInt32Array(__in_ecount(cElems) const LONG *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromUInt32Array(__in_ecount(cElems) const ULONG *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromInt64Array(__in_ecount(cElems) const LONGLONG *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromUInt64Array(__in_ecount(cElems) const ULONGLONG *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromDoubleArray(__in_ecount(cElems) const DOUBLE *prgn, __in ULONG cElems, __out VARIANT *pvar);
PSSTDAPI InitVariantFromStringArray(__in_ecount(cElems) PCWSTR *prgsz, __in ULONG cElems, __out VARIANT *pvar);
#ifdef __cplusplus
HRESULT  InitVariantFromBoolean(__in BOOL fVal, __out VARIANT *pvar);
HRESULT  InitVariantFromInt16(__in SHORT iVal, __out VARIANT *pvar);
HRESULT  InitVariantFromUInt16(__in USHORT uiVal, __out VARIANT *pvar);
HRESULT  InitVariantFromInt32(__in LONG lVal, __out VARIANT *pvar);
HRESULT  InitVariantFromUInt32(__in ULONG ulVal, __out VARIANT *pvar);
HRESULT  InitVariantFromInt64(__in LONGLONG llVal, __out VARIANT *pvar);
HRESULT  InitVariantFromUInt64(__in ULONGLONG ullVal, __out VARIANT *pvar);
HRESULT  InitVariantFromDouble(__in DOUBLE dblVal, __out VARIANT *pvar);
HRESULT  InitVariantFromString(__in PCWSTR psz, __out VARIANT *pvar);
HRESULT  InitVariantFromDispatch(__in_opt IDispatch* pdisp, __out VARIANT *pvar);
HRESULT  InitVariantFromDosDateTime(__in WORD wDate, __in WORD wTime, __out VARIANT *pvar);
HRESULT  InitVariantFromGUIDAsBuffer(__in REFGUID guid, __out VARIANT *pvar);
#endif

// Extract data from a VARIANT
PSSTDAPI_(BOOL)       VariantToBooleanWithDefault(__in REFVARIANT varIn, __in BOOL fDefault);
PSSTDAPI_(SHORT)      VariantToInt16WithDefault(__in REFVARIANT varIn, __in SHORT iDefault);
PSSTDAPI_(USHORT)     VariantToUInt16WithDefault(__in REFVARIANT varIn, __in USHORT uiDefault);
PSSTDAPI_(LONG)       VariantToInt32WithDefault(__in REFVARIANT varIn, __in LONG lDefault);
PSSTDAPI_(ULONG)      VariantToUInt32WithDefault(__in REFVARIANT varIn, __in ULONG ulDefault);
PSSTDAPI_(LONGLONG)   VariantToInt64WithDefault(__in REFVARIANT varIn, __in LONGLONG llDefault);
PSSTDAPI_(ULONGLONG)  VariantToUInt64WithDefault(__in REFVARIANT varIn, __in ULONGLONG ullDefault);
PSSTDAPI_(DOUBLE)     VariantToDoubleWithDefault(__in REFVARIANT varIn, __in DOUBLE dblDefault);
PSSTDAPI_(PCWSTR)     VariantToStringWithDefault(__in REFVARIANT varIn, __in_opt LPCWSTR pszDefault);

PSSTDAPI              VariantToBoolean(__in REFVARIANT varIn, __out BOOL *pfRet);
PSSTDAPI              VariantToInt16(__in REFVARIANT varIn, __out SHORT *piRet);
PSSTDAPI              VariantToUInt16(__in REFVARIANT varIn, __out USHORT *puiRet);
PSSTDAPI              VariantToInt32(__in REFVARIANT varIn, __out LONG *plRet);
PSSTDAPI              VariantToUInt32(__in REFVARIANT varIn, __out ULONG *pulRet);
PSSTDAPI              VariantToInt64(__in REFVARIANT varIn, __out LONGLONG *pllRet);
PSSTDAPI              VariantToUInt64(__in REFVARIANT varIn, __out ULONGLONG *pullRet);
PSSTDAPI              VariantToDouble(__in REFVARIANT varIn, __out DOUBLE *pdblRet);
PSSTDAPI              VariantToBuffer(__in REFVARIANT varIn, __out_bcount(cb) void *pv, __in UINT cb);
PSSTDAPI              VariantToGUID(__in REFVARIANT varIn, __out GUID *pguid);
PSSTDAPI              VariantToString(__in REFVARIANT varIn, __out_ecount(cchBuf) PWSTR pszBuf, __in UINT cchBuf);
__checkReturn PSSTDAPI VariantToStringAlloc(__in REFVARIANT varIn, __deref_out PWSTR *ppszBuf);
PSSTDAPI              VariantToDosDateTime(__in REFVARIANT varIn, __out WORD *pwDate, __out WORD *pwTime);
__checkReturn PSSTDAPI VariantToStrRet(__in REFVARIANT varIn, __out STRRET *pstrret);
PSSTDAPI              VariantToFileTime(__in REFVARIANT varIn, __in PSTIME_FLAGS stfOut, __out FILETIME* pftOut);

// Get the element count.  Returns number of elements for values of type VT_ARRAY; returns 1 otherwise.
PSSTDAPI_(ULONG) VariantGetElementCount(__in REFVARIANT varIn);

// Extract data from a VARIANT into a vector
PSSTDAPI VariantToBooleanArray(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) BOOL *prgf, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToInt16Array(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) SHORT *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToUInt16Array(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) USHORT *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToInt32Array(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) LONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToUInt32Array(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) ULONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToInt64Array(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) LONGLONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToUInt64Array(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) ULONGLONG *prgn, __in ULONG crgn, __out ULONG *pcElem);
PSSTDAPI VariantToDoubleArray(__in REFVARIANT var, __out_ecount_part(crgn, *pcElem) DOUBLE *prgn, __in ULONG crgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToStringArray(__in REFVARIANT var, __out_ecount_part(crgsz, *pcElem) PWSTR *prgsz, __in ULONG crgsz, __out ULONG *pcElem);

// Extract data from a VARIANT into a newly allocated vector (free with CoTaskMemFree)
__checkReturn PSSTDAPI VariantToBooleanArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) BOOL **pprgf, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToInt16ArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) SHORT **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToUInt16ArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) USHORT **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToInt32ArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) LONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToUInt32ArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) ULONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToInt64ArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) LONGLONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToUInt64ArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) ULONGLONG **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToDoubleArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) DOUBLE **pprgn, __out ULONG *pcElem);
__checkReturn PSSTDAPI VariantToStringArrayAlloc(__in REFVARIANT var, __deref_out_ecount(*pcElem) PWSTR **pprgsz, __out ULONG *pcElem);

// Get a single element of a VARIANT.  If it is type VT_ARRAY, returns a the requested element.  Otherwise
// iElem must equal 0 and the function returns the value.
PSSTDAPI VariantGetBooleanElem(__in REFVARIANT var, __in ULONG iElem, __out BOOL *pfVal);
PSSTDAPI VariantGetInt16Elem(__in REFVARIANT var, __in ULONG iElem, __out SHORT *pnVal);
PSSTDAPI VariantGetUInt16Elem(__in REFVARIANT var, __in ULONG iElem, __out USHORT *pnVal);
PSSTDAPI VariantGetInt32Elem(__in REFVARIANT var, __in ULONG iElem, __out LONG *pnVal);
PSSTDAPI VariantGetUInt32Elem(__in REFVARIANT var, __in ULONG iElem, __out ULONG *pnVal);
PSSTDAPI VariantGetInt64Elem(__in REFVARIANT var, __in ULONG iElem, __out LONGLONG *pnVal);
PSSTDAPI VariantGetUInt64Elem(__in REFVARIANT var, __in ULONG iElem, __out ULONGLONG *pnVal);
PSSTDAPI VariantGetDoubleElem(__in REFVARIANT var, __in ULONG iElem, __out DOUBLE *pnVal);
__checkReturn PSSTDAPI VariantGetStringElem(__in REFVARIANT var, __in ULONG iElem, __deref_out PWSTR *ppszVal);
#ifdef __cplusplus
HRESULT  VariantGetElem(__in REFVARIANT varIn, __in ULONG iElem, __out VARIANT *pvar);
#endif

// Helpers
PSSTDAPI_(void) ClearVariantArray(__inout_ecount(cvars) VARIANT *pvars, __in UINT cvars);
PSSTDAPI_(int) VariantCompare(__in REFVARIANT var1, __in REFVARIANT var2);

//===========================
//
// Property-specific notions
//
//===========================


// The progress bar property control uses a specially formatted PROPVARIANT to convey the look of the progress bar
// propvar.vt = VT_UI4
// propvar.caul.pElems[0] = current progress
// propvar.caul.pElems[1] = total progress
// propvar.caul.pElems[2] = DRAWPROGRESSFLAGS (see below);
typedef enum DRAWPROGRESSFLAGS
{
    DPF_NONE                = 0x0,  // No progress flags.
    DPF_MARQUEE             = 0x1,  // The progress bar should draw in marquee mode.
    DPF_MARQUEE_COMPLETE    = 0x2,  // The marquee format progress bar has completed.
    DPF_ERROR               = 0x4,  // The progress bar should be drawn in the error state.
    DPF_WARNING             = 0x8,  // The progress bar should be drawn in the warning state.
    DPF_STOPPED             = 0x10, // The progress bar is stopped.
} DRAWPROGRESSFLAGS;

//================
//
// Inline Helpers
//
//================

#if defined(__cplusplus) && !defined(NO_PROPVAR_INLINES)
inline HRESULT InitPropVariantFromBoolean(__in BOOL fVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_BOOL;
    ppropvar->boolVal = fVal ? VARIANT_TRUE : VARIANT_FALSE;
    return S_OK;
}

inline HRESULT InitPropVariantFromInt16(__in SHORT nVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_I2;
    ppropvar->iVal = nVal;
    return S_OK;
}

inline HRESULT InitPropVariantFromUInt16(__in USHORT uiVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_UI2;
    ppropvar->uiVal = uiVal;
    return S_OK;
}

inline HRESULT InitPropVariantFromInt32(__in LONG lVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_I4;
    ppropvar->lVal = lVal;
    return S_OK;
}

inline HRESULT InitPropVariantFromUInt32(__in ULONG ulVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_UI4;
    ppropvar->ulVal = ulVal;
    return S_OK;
}

inline HRESULT InitPropVariantFromInt64(__in LONGLONG llVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_I8;
    ppropvar->hVal.QuadPart = llVal;
    return S_OK;
}

inline HRESULT InitPropVariantFromUInt64(__in ULONGLONG ullVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_UI8;
    ppropvar->uhVal.QuadPart = ullVal;
    return S_OK;
}

inline HRESULT InitPropVariantFromDouble(__in DOUBLE dblVal, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_R8;
    ppropvar->dblVal = dblVal;
    return S_OK;
}

// Creates a VT_LPWSTR propvariant.
inline HRESULT InitPropVariantFromString(__in PCWSTR psz, __out PROPVARIANT *ppropvar)
{
    ppropvar->vt = VT_LPWSTR;
    HRESULT hr = SHStrDupW(psz, &ppropvar->pwszVal);
    if (FAILED(hr))
    {
        PropVariantInit(ppropvar);
    }
    return hr;
}

// Creates a VT_VECTOR | VT_UI1 propvariant.
inline HRESULT InitPropVariantFromGUIDAsBuffer(__in REFGUID guid, __out PROPVARIANT *ppropvar)
{
    return InitPropVariantFromBuffer(&guid, sizeof(GUID), ppropvar);
}

inline BOOL IsPropVariantVector(__in REFPROPVARIANT propvar)
{
    return (propvar.vt & (VT_ARRAY | VT_VECTOR));
}

// If TRUE, propvar contains a unicode string.  Use PropVariantToStringWithDefault(propvar, NULL) to retrieve it.
inline BOOL IsPropVariantString(__in REFPROPVARIANT propvar)
{
    return (PropVariantToStringWithDefault(propvar, NULL) != NULL);
}

// Handles int instead of LONG
inline HRESULT PropVariantToInt32(__in REFPROPVARIANT propvarIn, __out int *piRet)
{
    return PropVariantToInt32(propvarIn, (LONG*)piRet);
}

// Handles UINT instead of ULONG
inline HRESULT PropVariantToUInt32(__in REFPROPVARIANT propvarIn, __out UINT *piRet)
{
    return PropVariantToUInt32(propvarIn, (ULONG*)piRet);
}

inline HRESULT PropVariantToCLSID(__in REFPROPVARIANT propvarIn, __out CLSID *pclsid)
{ 
    return PropVariantToGUID(propvarIn, (GUID*)pclsid);
}  


inline int PropVariantCompare(__in REFPROPVARIANT propvar1, __in REFPROPVARIANT propvar2)
{
    return PropVariantCompareEx(propvar1, propvar2, PVCU_DEFAULT, PVCF_DEFAULT);
}

inline HRESULT PropVariantGetElem(__in REFPROPVARIANT propvarIn, __in ULONG iElem, __out PROPVARIANT *ppropvar)
{
    return InitPropVariantFromPropVariantVectorElem(propvarIn, iElem, ppropvar);
}

inline HRESULT InitVariantFromBoolean(__in BOOL fVal, __out VARIANT *pvar)
{
    pvar->vt = VT_BOOL;
    pvar->boolVal = fVal ? VARIANT_TRUE : VARIANT_FALSE;
    return S_OK;
}

inline HRESULT InitVariantFromInt16(__in short iVal, __out VARIANT *pvar)
{
    pvar->vt = VT_I2;
    pvar->iVal = iVal;
    return S_OK;
}

inline HRESULT InitVariantFromUInt16(__in USHORT uiVal, __out VARIANT *pvar)
{
    pvar->vt = VT_UI2;
    pvar->uiVal = uiVal;
    return S_OK;
}

inline HRESULT InitVariantFromInt32(__in LONG lVal, __out VARIANT *pvar)
{
    pvar->vt = VT_I4;
    pvar->lVal = lVal;
    return S_OK;
}

inline HRESULT InitVariantFromUInt32(__in ULONG ulVal, __out VARIANT *pvar)
{
    pvar->vt = VT_UI4;
    pvar->ulVal = ulVal;
    return S_OK;
}

inline HRESULT InitVariantFromInt64(__in LONGLONG llVal, __out VARIANT *pvar)
{
    pvar->vt = VT_I8;
    pvar->llVal = llVal;
    return S_OK;
}

inline HRESULT InitVariantFromUInt64(__in ULONGLONG ullVal, __out VARIANT *pvar)
{
    pvar->vt = VT_UI8;
    pvar->ullVal = ullVal;
    return S_OK;
}

inline HRESULT InitVariantFromDouble(__in DOUBLE dblVal, __out VARIANT *pvar)
{
    pvar->vt = VT_R8;
    pvar->dblVal = dblVal;
    return S_OK;
}

inline HRESULT InitVariantFromString(__in PCWSTR psz, __out VARIANT *pvar)
{
    pvar->vt = VT_BSTR;
    pvar->bstrVal = SysAllocString(psz);
    HRESULT hr =  pvar->bstrVal ? S_OK : (psz ? E_OUTOFMEMORY : E_INVALIDARG);
    if (FAILED(hr))
    {
        VariantInit(pvar);
    }
    return hr;
}

inline HRESULT InitVariantFromDispatch(__in_opt IDispatch* pdisp, __out VARIANT *pvar)
{
    pvar->vt = VT_DISPATCH;
    pvar->pdispVal = pdisp;
    if (pvar->pdispVal)
    {
        (pvar->pdispVal)->AddRef();
    }
    return S_OK;
}

// Creates a VT_DATE variant
inline HRESULT InitVariantFromDosDateTime(__in WORD wDate, __in WORD wTime, __out VARIANT *pvar)
{
    pvar->vt = VT_DATE;
    return DosDateTimeToVariantTime(wDate, wTime, &pvar->date) ? S_OK : S_FALSE;
}

inline BOOL IsVarTypeFloat(__in VARTYPE vt)
{
    return (vt == VT_R4 || vt == VT_R8);
}

inline BOOL IsVariantArray(__in REFVARIANT var)
{
    return (var.vt & VT_ARRAY);
}

// if TRUE, you can use VariantToStringCast to obtain the string pointer
inline BOOL IsVariantString(__in REFVARIANT var)
{
    return (VariantToStringWithDefault(var, NULL) != NULL);
}

inline BOOL IsVarTypeNumber(__in VARTYPE vt)
{
    return IsVarTypeInteger(vt) || IsVarTypeFloat(vt);
}

inline BOOL IsVarTypeSignedInteger(__in VARTYPE vt)
{
    BOOL fRet = FALSE;
    switch (vt)
    {
        case VT_I1:
        case VT_I2:
        case VT_I4:
        case VT_I8:
        fRet = TRUE;
    }
    return fRet;
}

inline BOOL IsVarTypeUnsignedInteger(__in VARTYPE vt)
{
    BOOL fRet = FALSE;
    switch (vt)
    {
        case VT_UI1:
        case VT_UI2:
        case VT_UI4:
        case VT_UI8:
        fRet = TRUE;
    }
    return fRet;
}

inline BOOL IsVarTypeInteger(__in VARTYPE vt)
{
    return IsVarTypeSignedInteger(vt) || IsVarTypeUnsignedInteger(vt);
}

// Creates a VT_ARRAY | VT_UI1 variant.
inline HRESULT InitVariantFromGUIDAsBuffer(__in REFGUID guid, __out VARIANT *pvar)
{
    return InitVariantFromBuffer(&guid, sizeof(GUID), pvar);
}

// Handles int instead of LONG
inline HRESULT VariantToInt32(__in REFVARIANT varIn, __out int *piRet)
{
    return VariantToInt32(varIn, (LONG*)piRet);
}

// Handles UINT instead of ULONG
inline HRESULT VariantToUInt32(__in REFVARIANT varIn, __out UINT *piRet)
{
    return VariantToUInt32(varIn, (ULONG*)piRet);
}

inline HRESULT VariantGetElem(__in REFVARIANT varIn, __in ULONG iElem, __out VARIANT *pvar)
{
    return InitVariantFromVariantArrayElem(varIn, iElem, pvar);
}
#endif // __cplusplus


