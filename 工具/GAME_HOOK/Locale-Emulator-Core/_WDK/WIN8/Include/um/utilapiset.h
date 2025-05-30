 
/********************************************************************************
*                                                                               *
* UtilApiSet.h -- ApiSet Contract for api-ms-win-core-util-l1-1-0               *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _APISETUTIL_
#define _APISETUTIL_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-util-l1 */

#ifndef _APISET_UTIL_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0100
#define _APISET_UTIL_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
_Ret_maybenull_
PVOID
WINAPI
EncodePointer(
    _In_opt_ PVOID Ptr
    );


WINBASEAPI
_Ret_maybenull_
PVOID
WINAPI
DecodePointer(
    _In_opt_ PVOID Ptr
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
_Ret_maybenull_
PVOID
WINAPI
EncodeSystemPointer(
    _In_opt_ PVOID Ptr
    );


WINBASEAPI
_Ret_maybenull_
PVOID
WINAPI
DecodeSystemPointer(
    _In_opt_ PVOID Ptr
    );


WINBASEAPI
BOOL
WINAPI
Beep(
    _In_ DWORD dwFreq,
    _In_ DWORD dwDuration
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _APISETUTIL_
