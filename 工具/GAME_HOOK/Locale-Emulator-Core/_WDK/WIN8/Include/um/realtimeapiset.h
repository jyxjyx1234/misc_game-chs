 
/********************************************************************************
*                                                                               *
* realtimeapi.h -- ApiSet Contract for api-ms-win-core-realtime-l1              *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _APISETREALTIME_
#define _APISETREALTIME_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-realtime-l1 */

#ifndef _APISET_REALTIME_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0100
#define _APISET_REALTIME_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if (_WIN32_WINNT >= 0x0600)

WINBASEAPI
BOOL
WINAPI
QueryThreadCycleTime(
    _In_ HANDLE ThreadHandle,
    _Out_ PULONG64 CycleTime
    );


WINBASEAPI
BOOL
WINAPI
QueryProcessCycleTime(
    _In_ HANDLE ProcessHandle,
    _Out_ PULONG64 CycleTime
    );


WINBASEAPI
BOOL
WINAPI
QueryIdleProcessorCycleTime(
    _Inout_ PULONG BufferLength,
    _Out_writes_bytes_opt_(*BufferLength) PULONG64 ProcessorIdleCycleTime
    );


#endif


#if (_WIN32_WINNT >= 0x0601)

WINBASEAPI
BOOL
WINAPI
QueryIdleProcessorCycleTimeEx(
    _In_ USHORT Group,
    _Inout_ PULONG BufferLength,
    _Out_writes_bytes_opt_(*BufferLength) PULONG64 ProcessorIdleCycleTime
    );

    
#endif // (_WIN32_WINNT >= 0x0601)

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)


#if (_WIN32_WINNT >= 0x0601)

WINBASEAPI
BOOL
WINAPI
QueryUnbiasedInterruptTime(
    _Out_ PULONGLONG UnbiasedTime
    );


#endif // (_WIN32_WINNT >= 0x0601)

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _APISETREALTIME_
