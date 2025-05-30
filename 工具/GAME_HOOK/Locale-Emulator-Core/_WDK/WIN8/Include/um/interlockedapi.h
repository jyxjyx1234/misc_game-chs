 
 
// begin_1_0
/********************************************************************************
*                                                                               *
* interlockedapi.h -- ApiSet Contract for api-ms-win-core-interlocked-l1        *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _INTERLOCKAPI_H_
#define _INTERLOCKAPI_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-interlocked-l1 */

#ifndef _APISET_INTERLOCKED_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION > 0x0100
#define _APISET_INTERLOCKED_VER 0x0200
#elif _APISET_MINWIN_VERSION <= 0x0100
#define _APISET_INTERLOCKED_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

// end_1_0

// begin_1_0

#ifndef NOWINBASEINTERLOCK

#ifndef _NTOS_


#if !defined(_M_AMD64) && !defined(_M_IA64) && !defined(_M_ARM)

WINBASEAPI
LONG
WINAPI
InterlockedIncrement(
    _Inout_ LONG volatile * lpAddend
    );


WINBASEAPI
LONG
WINAPI
InterlockedDecrement(
    _Inout_ LONG volatile * lpAddend
    );


WINBASEAPI
LONG
WINAPI
InterlockedExchange(
    _Inout_ LONG volatile * Target,
    _In_ LONG Value
    );


#define InterlockedExchangePointer(Target, Value) \
    (PVOID)InterlockedExchange((PLONG)(Target), ((LONG)(LONG_PTR)(Value)))

#define InterlockedExchangePointerNoFence InterlockedExchangePointer

WINBASEAPI
LONG
WINAPI
InterlockedExchangeAdd(
    _Inout_ LONG volatile * Addend,
    _In_ LONG Value
    );


WINBASEAPI
LONG
WINAPI
InterlockedCompareExchange(
    _Inout_ LONG volatile * Destination,
    _In_ LONG Exchange,
    _In_ LONG Comperand
    );



#if (_WIN32_WINNT >= 0x0502)

WINBASEAPI
LONGLONG
WINAPI
InterlockedCompareExchange64(
    _Inout_ LONGLONG volatile * Destination,
    _In_ LONGLONG Exchange,
    _In_ LONGLONG Comperand
    );


#endif

#endif /* defined(_X86_) */


#if defined(_SLIST_HEADER_) && !defined(_NTOSP_)

WINBASEAPI
VOID
WINAPI
InitializeSListHead(
    _Out_ PSLIST_HEADER ListHead
    );


WINBASEAPI
PSLIST_ENTRY
WINAPI
InterlockedPopEntrySList(
    _Inout_ PSLIST_HEADER ListHead
    );


WINBASEAPI
PSLIST_ENTRY
WINAPI
InterlockedPushEntrySList(
    _Inout_ PSLIST_HEADER ListHead,
    _Inout_ PSLIST_ENTRY ListEntry
    );



#if ((NTDDI_VERSION >= NTDDI_WIN8) && !defined(_CONTRACT_GEN)) || (_APISET_INTERLOCKED_VER > 0x0100)

#define InterlockedPushListSList InterlockedPushListSListEx

WINBASEAPI
PSLIST_ENTRY
WINAPI
InterlockedPushListSListEx(
    _Inout_ PSLIST_HEADER ListHead,
    _Inout_ PSLIST_ENTRY List,
    _Inout_ PSLIST_ENTRY ListEnd,
    _In_ ULONG Count
    );


#endif // ((NTDDI_VERSION >= NTDDI_WIN8) && !defined(_CONTRACT_GEN)) || (_APISET_INTERLOCKED_VER > 0x0100)

WINBASEAPI
PSLIST_ENTRY
WINAPI
InterlockedFlushSList(
    _Inout_ PSLIST_HEADER ListHead
    );


WINBASEAPI
USHORT
WINAPI
QueryDepthSList(
    _In_ PSLIST_HEADER ListHead
    );


#endif /* SLIST_HEADER_ */

#endif /* _NTOS_ */

#endif /* NOWINBASEINTERLOCK */

// end_1_0
// begin_1_0

#ifdef __cplusplus
}
#endif

#endif // _INTERLOCKAPI_H_
// end_1_0
