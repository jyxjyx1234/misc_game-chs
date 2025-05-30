 
/********************************************************************************
*                                                                               *
* jobapiset.h -- ApiSet Contract for api-ms-win-core-job-l1                     *  
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _JOBAPISET_H_
#define _JOBAPISET_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-job-l1 */

#ifndef _APISET_JOB_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0100
#define _APISET_JOB_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if (_WIN32_WINNT >= 0x0501)

WINBASEAPI
BOOL
WINAPI
IsProcessInJob(
    _In_ HANDLE ProcessHandle,
    _In_opt_ HANDLE JobHandle,
    _Out_ PBOOL Result
    );


#endif

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _JOBAPISET_H_
