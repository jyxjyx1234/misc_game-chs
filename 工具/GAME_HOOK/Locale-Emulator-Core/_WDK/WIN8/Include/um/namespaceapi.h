 
/********************************************************************************
*                                                                               *
* consoleapi.h -- ApiSet Contract for api-ms-win-core-namespace-l1              *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _APISETNAMESPACE_
#define _APISETNAMESPACE_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-namespace-l1 */

#ifndef _APISET_NAMESPACE_VER
#ifdef _APISET_MINCORE_VERSION
#if _APISET_MINCORE_VERSION >= 0x0100
#define _APISET_NAMESPACE_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#define PRIVATE_NAMESPACE_FLAG_DESTROY      0x00000001

WINBASEAPI
HANDLE
WINAPI
CreatePrivateNamespaceW(
    _In_opt_ LPSECURITY_ATTRIBUTES lpPrivateNamespaceAttributes,
    _In_ LPVOID lpBoundaryDescriptor,
    _In_ LPCWSTR lpAliasPrefix
    );


WINBASEAPI
HANDLE
WINAPI
OpenPrivateNamespaceW(
    _In_ LPVOID lpBoundaryDescriptor,
    _In_ LPCWSTR lpAliasPrefix
    );


WINBASEAPI
BOOLEAN
WINAPI
ClosePrivateNamespace(
    _In_ HANDLE Handle,
    _In_ ULONG Flags
    );


WINBASEAPI
HANDLE
WINAPI
CreateBoundaryDescriptorW(
    _In_ LPCWSTR Name,
    _In_ ULONG Flags
    );


WINBASEAPI
BOOL
WINAPI
AddSIDToBoundaryDescriptor(
    _Inout_ HANDLE * BoundaryDescriptor,
    _In_ PSID RequiredSid
    );


WINBASEAPI
VOID
WINAPI
DeleteBoundaryDescriptor(
    _In_ HANDLE BoundaryDescriptor
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _APISETNAMESPACE_
