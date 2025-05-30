#include <winapifamily.h>

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

#pragma region Application Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

EXTERN_C
_Success_(TRUE)  /* Raises status on failure */
ULONG __stdcall
StgPropertyLengthAsVariant(
            _In_reads_bytes_(cbProp) const SERIALIZEDPROPERTYVALUE* pProp,
            _In_ ULONG cbProp,
            _In_ USHORT CodePage,
            _In_ _Reserved_ BYTE bReserved);

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // ifndef _PROPAPI_H_
