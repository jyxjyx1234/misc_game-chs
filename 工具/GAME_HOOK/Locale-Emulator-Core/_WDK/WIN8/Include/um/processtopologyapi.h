 
/********************************************************************************
*                                                                               *
* processtopologyapi.h -- ApiSet Contract for api-ms-win-core-processtopology-l1*
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _PROCESSTOPOLOGYAPI_H_
#define _PROCESSTOPOLOGYAPI_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-processtopology-l1 */

#ifndef _APISET_PROCESSTOPOLOGY_VER
#ifdef _APISET_MINCORE_VERSION
#if _APISET_MINCORE_VERSION >= 0x0100
#define _APISET_PROCESSTOPOLOGY_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if _WIN32_WINNT >= 0x0601

WINBASEAPI
BOOL
WINAPI
GetProcessGroupAffinity(
    _In_ HANDLE hProcess,
    _Inout_ PUSHORT GroupCount,
    _Out_writes_(*GroupCount) PUSHORT GroupArray
    );



WINBASEAPI
BOOL
WINAPI
SetProcessGroupAffinity(
    _In_ HANDLE hProcess,
    _In_ CONST GROUP_AFFINITY * GroupAffinity,
    _Out_opt_ PGROUP_AFFINITY PreviousGroupAffinity
    );


WINBASEAPI
BOOL
WINAPI
GetThreadGroupAffinity(
    _In_ HANDLE hThread,
    _Out_ PGROUP_AFFINITY GroupAffinity
    );


WINBASEAPI
BOOL
WINAPI
SetThreadGroupAffinity(
    _In_ HANDLE hThread,
    _In_ CONST GROUP_AFFINITY * GroupAffinity,
    _Out_opt_ PGROUP_AFFINITY PreviousGroupAffinity
    );


#endif // _WIN32_WINNT >= 0x0601

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _PROCESSTOPOLOGYAPI_H_
