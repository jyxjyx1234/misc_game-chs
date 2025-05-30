 
/********************************************************************************
*                                                                               *
* securityappcontainer.h -- ApiSet Contract for api-ms-win-security-appcontainer-l1 *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _APIAPPCONTAINER_
#define _APIAPPCONTAINER_

#include <apiset.h>
#include <apisetcconv.h>


#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-security-appcontainer-l1 */

#ifndef _APISET_APPCONTAINER_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0101
#define _APISET_APPCONTAINER_VER 0x0100
#endif
#endif
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#ifdef __cplusplus
extern "C" {
#endif


#if NTDDI_VERSION >= NTDDI_WIN8

//
// Token Extension APIs
//

BOOL
GetAppContainerNamedObjectPath(
    _In_opt_ HANDLE Token,
    _In_opt_ PSID AppContainerSid,
    _In_ ULONG ObjectPathLength,
    _Out_writes_opt_(ObjectPathLength) LPWSTR ObjectPath,
    _Out_ PULONG ReturnLength
    );


#endif

#ifdef __cplusplus
}
#endif

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // _APIAPPCONTAINER_
