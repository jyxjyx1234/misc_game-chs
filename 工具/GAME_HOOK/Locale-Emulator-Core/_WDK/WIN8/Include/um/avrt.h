#include <winapifamily.h>

/*++ BUILD Version: 0001    // Increment this if a change has global effects

Copyright (c) Microsoft Corporation.  All rights reserved.

Module Name:

    avrt.h

Abstract:

    This module contains the multimedia class scheduler APIs and any public data
    structures needed to call these APIs.

--*/


#ifndef _AVRT_
#define _AVRT_

#if _MSC_VER > 1000
#pragma once
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

//
// AvRt Priorities
//

typedef enum _AVRT_PRIORITY
{
    AVRT_PRIORITY_VERYLOW = -2,
    AVRT_PRIORITY_LOW,
    AVRT_PRIORITY_NORMAL,
    AVRT_PRIORITY_HIGH,
    AVRT_PRIORITY_CRITICAL
} AVRT_PRIORITY, *PAVRT_PRIORITY;


//
//  Infinite timeout for a thread order group.
//

#define THREAD_ORDER_GROUP_INFINITE_TIMEOUT     (-1I64)

//
// Define API decoration for direct importing of DLL references.
//

#if !defined(_AVRT_)
#define AVRTAPI DECLSPEC_IMPORT
#else
#define AVRTAPI
#endif


AVRTAPI
HANDLE
WINAPI
AvSetMmThreadCharacteristicsA (
    _In_ LPCSTR TaskName,
    _Inout_ LPDWORD TaskIndex
    );
AVRTAPI
HANDLE
WINAPI
AvSetMmThreadCharacteristicsW (
    _In_ LPCWSTR TaskName,
    _Inout_ LPDWORD TaskIndex
    );
#ifdef UNICODE
#define AvSetMmThreadCharacteristics  AvSetMmThreadCharacteristicsW
#else
#define AvSetMmThreadCharacteristics  AvSetMmThreadCharacteristicsA
#endif // !UNICODE
    
AVRTAPI
HANDLE
WINAPI
AvSetMmMaxThreadCharacteristicsA (
    _In_ LPCSTR FirstTask,
    _In_ LPCSTR SecondTask,
    _Inout_ LPDWORD TaskIndex
    );
AVRTAPI
HANDLE
WINAPI
AvSetMmMaxThreadCharacteristicsW (
    _In_ LPCWSTR FirstTask,
    _In_ LPCWSTR SecondTask,
    _Inout_ LPDWORD TaskIndex
    );
#ifdef UNICODE
#define AvSetMmMaxThreadCharacteristics  AvSetMmMaxThreadCharacteristicsW
#else
#define AvSetMmMaxThreadCharacteristics  AvSetMmMaxThreadCharacteristicsA
#endif // !UNICODE

AVRTAPI    
BOOL
WINAPI
AvRevertMmThreadCharacteristics (
    _In_ HANDLE AvrtHandle
    );
    
AVRTAPI
BOOL
WINAPI
AvSetMmThreadPriority (
    _In_ HANDLE AvrtHandle,
    _In_ AVRT_PRIORITY Priority
    );

AVRTAPI
BOOL
WINAPI
AvRtCreateThreadOrderingGroup (
    _Out_ PHANDLE Context,
    _In_ PLARGE_INTEGER Period,
    _Inout_ GUID *ThreadOrderingGuid,
    _In_opt_ PLARGE_INTEGER Timeout
    );
    
AVRTAPI
BOOL
WINAPI
AvRtCreateThreadOrderingGroupExA (
    _Out_ PHANDLE Context,
    _In_ PLARGE_INTEGER Period,
    _Inout_ GUID *ThreadOrderingGuid,
    _In_opt_ PLARGE_INTEGER Timeout,
    _In_ LPCSTR TaskName
    );
AVRTAPI
BOOL
WINAPI
AvRtCreateThreadOrderingGroupExW (
    _Out_ PHANDLE Context,
    _In_ PLARGE_INTEGER Period,
    _Inout_ GUID *ThreadOrderingGuid,
    _In_opt_ PLARGE_INTEGER Timeout,
    _In_ LPCWSTR TaskName
    );
#ifdef UNICODE
#define AvRtCreateThreadOrderingGroupEx  AvRtCreateThreadOrderingGroupExW
#else
#define AvRtCreateThreadOrderingGroupEx  AvRtCreateThreadOrderingGroupExA
#endif // !UNICODE

AVRTAPI
BOOL
WINAPI
AvRtJoinThreadOrderingGroup (
    _Out_ PHANDLE Context,
    _In_ GUID *ThreadOrderingGuid,
    _In_ BOOL Before
    );
    
AVRTAPI
BOOL
WINAPI
AvRtWaitOnThreadOrderingGroup (
    _In_ HANDLE Context
    );

AVRTAPI
BOOL
WINAPI
AvRtLeaveThreadOrderingGroup (
    _In_ HANDLE Context
    );

AVRTAPI
BOOL
WINAPI
AvRtDeleteThreadOrderingGroup (
    _In_ HANDLE Context
    );

AVRTAPI
BOOL
WINAPI
AvQuerySystemResponsiveness (
    _In_ HANDLE AvrtHandle,
    _Out_ PULONG SystemResponsivenessValue
    );

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _AVRT_
