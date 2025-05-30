 
/********************************************************************************
*                                                                               *
* wow64app.h - ApiSet Contract for api-ms-win-core-wow64-l1                     *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _WOW64APISET_H_
#define _WOW64APISET_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-wow64-l1 */

#ifndef _APISET_WOW64_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0100
#define _APISET_WOW64_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

// RC warns because "WINBASE_DECLARE_GET_SYSTEM_WOW64_DIRECTORY" is a bit long.
#if !defined(RC_INVOKED)


#if _WIN32_WINNT >= 0x0501 || defined(WINBASE_DECLARE_GET_SYSTEM_WOW64_DIRECTORY)

WINBASEAPI
BOOL
WINAPI
Wow64DisableWow64FsRedirection(
    _Out_ PVOID * OldValue
    );


WINBASEAPI
BOOL
WINAPI
Wow64RevertWow64FsRedirection(
    _In_ PVOID OlValue
    );


#endif // _WIN32_WINNT >= 0x0501

#endif // !defined(RC_INVOKED)


#if (_WIN32_WINNT >= 0x0501)

WINBASEAPI
BOOL
WINAPI
IsWow64Process(
    _In_ HANDLE hProcess,
    _Out_ PBOOL Wow64Process
    );


#endif

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _WOW64APISET_H_
