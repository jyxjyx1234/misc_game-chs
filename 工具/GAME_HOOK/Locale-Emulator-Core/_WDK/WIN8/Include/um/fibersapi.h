 
// begin_1_0
// begin_1_1
/********************************************************************************
*                                                                               *
* fibersapi.h - ApiSet Contract for api-ms-win-core-fibers-l1                   *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _FIBERS_H_
#define _FIBERS_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-fibers-l1 */

#ifndef _APISET_FIBERS_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0101
#define _APISET_FIBERS_VER 0x0101
#elif _APISET_MINWIN_VERSION == 0x0100
#define _APISET_FIBERS_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

// end_1_0
// end_1_1

// begin_1_0

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)


#if (_WIN32_WINNT >= 0x0600)

#ifndef FLS_OUT_OF_INDEXES
#define FLS_OUT_OF_INDEXES ((DWORD)0xFFFFFFFF)
#endif

WINBASEAPI
DWORD
WINAPI
FlsAlloc(
    _In_opt_ PFLS_CALLBACK_FUNCTION lpCallback
    );


WINBASEAPI
PVOID
WINAPI
FlsGetValue(
    _In_ DWORD dwFlsIndex
    );


WINBASEAPI
BOOL
WINAPI
FlsSetValue(
    _In_ DWORD dwFlsIndex,
    _In_opt_ PVOID lpFlsData
    );


WINBASEAPI
BOOL
WINAPI
FlsFree(
    _In_ DWORD dwFlsIndex
    );


#endif // (_WIN32_WINNT >= 0x0600)

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

// end_1_0

// begin_1_1

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if ((_WIN32_WINNT >= 0x0600) && !defined(_CONTRACT_GEN)) || (_APISET_FIBERS_VER > 0x0100)

WINBASEAPI
BOOL
WINAPI
IsThreadAFiber(
    VOID
    );


#endif

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

// end_1_1

// begin_1_0
// begin_1_1

#ifdef __cplusplus
}
#endif

#endif // _FIBERS_H_
// end_1_0
// end_1_1
