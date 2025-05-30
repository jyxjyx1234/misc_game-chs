 
/********************************************************************************
*                                                                               *
* handleapi.h -- ApiSet Contract for api-ms-win-core-handle-l1-1-0              *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _APISETHANDLE_
#define _APISETHANDLE_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-handle-l1 */

#ifndef _APISET_HANDLE_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0100
#define _APISET_HANDLE_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

//
// Constants
//
#define INVALID_HANDLE_VALUE ((HANDLE)(LONG_PTR)-1)

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

//
// Prototypes
//
WINBASEAPI
BOOL
WINAPI
CloseHandle(
    _In_ HANDLE hObject
    );


WINBASEAPI
BOOL
WINAPI
DuplicateHandle(
    _In_ HANDLE hSourceProcessHandle,
    _In_ HANDLE hSourceHandle,
    _In_ HANDLE hTargetProcessHandle,
    _Outptr_ LPHANDLE lpTargetHandle,
    _In_ DWORD dwDesiredAccess,
    _In_ BOOL bInheritHandle,
    _In_ DWORD dwOptions
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
BOOL
WINAPI
GetHandleInformation(
    _In_ HANDLE hObject,
    _Out_ LPDWORD lpdwFlags
    );


WINBASEAPI
BOOL
WINAPI
SetHandleInformation(
    _In_ HANDLE hObject,
    _In_ DWORD dwMask,
    _In_ DWORD dwFlags
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _APISETHANDLE_
