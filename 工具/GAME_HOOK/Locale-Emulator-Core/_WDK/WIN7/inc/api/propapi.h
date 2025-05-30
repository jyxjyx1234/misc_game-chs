//+-------------------------------------------------------------------------
//
//  Microsoft Windows
//  Copyright (C) Microsoft Corporation, 1992-2006.
//
//  File:       propapi.h
//
//  Contents:   Structured storage properties APIs
//
//--------------------------------------------------------------------------


#ifndef _PROPAPI_H_
#define _PROPAPI_H_

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

typedef VOID* NTPROP;

#include <propidl.h>

EXTERN_C
__success(TRUE)  /* Raises status on failure */
ULONG __stdcall
StgPropertyLengthAsVariant(
            __in_bcount(cbProp) const SERIALIZEDPROPERTYVALUE* pProp,
            __in ULONG cbProp,
            __in USHORT CodePage,
            __in __reserved BYTE bReserved);


#ifdef __cplusplus
}
#endif

#endif // ifndef _PROPAPI_H_

