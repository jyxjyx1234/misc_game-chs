/*++

Copyright (c) 1991-1999  Microsoft Corporation

Module Name:

    nspapip.h

Abstract:

    Internel Name Space Provider API prototypes and manifests.  This
    header file should only be included by name space providers.  NSPAPI
    users should include only nspapi.h See the "Windows NT NameSpace
    Provider Specification" document for details.

Environment:

    User Mode -Win32

Notes:

--*/

#ifndef _NSPAPIP_INCLUDED
#define _NSPAPIP_INCLUDED

#if _MSC_VER > 1000
#pragma once
#endif

//
// Standard priority values for the dwPriority field of NS_ROUTINE.
//
#define NS_STANDARD_FAST_PRIORITY   (500)
#define NS_MAX_FAST_PRIORITY        (999)
#define NS_STANDARD_PRIORITY        (2000)

//
// Indices for the alpfnFunctions array field of NS_ROUTINE.
//
#define NSPAPI_GET_ADDRESS_BY_NAME  (0x00000000)
#define NSPAPI_GET_SERVICE          (0x00000001)
#define NSPAPI_SET_SERVICE          (0x00000002)

//
// Structures used by the provider interface.
//

typedef
INT
(APIENTRY *LPGET_ADDR_BY_NAME_PROC) (
    __in     LPGUID          lpServiceType,
    __in_z   LPWSTR          lpServiceName,
    __in     LPDWORD         lpdwProtocols,
    __in     DWORD           dwResolution,
    __out_bcount(*lpdwBufferLength)      LPVOID      lpCsaddrBuffer,
    __inout  LPDWORD     lpdwBufferLength,
    __out_bcount(*lpdwAliasBufferlength) LPWSTR          lpAliasBuffer,
    __inout  LPDWORD         lpdwAliasBufferLength,
    __in     HANDLE          hCancellationEvent
    );

typedef struct _NS_ROUTINE {
    DWORD        dwFunctionCount;
    LPFN_NSPAPI *alpfnFunctions;
    DWORD        dwNameSpace;
    DWORD        dwPriority;
} NS_ROUTINE, *PNS_ROUTINE, * FAR LPNS_ROUTINE;

typedef
DWORD

(APIENTRY *LPLOAD_NAME_SPACE_PROC) (
    __inout LPDWORD         lpdwVersion,
    __inout_bcount(*lpdwBufferLength) LPNS_ROUTINE    nsrBuffer,
    __inout LPDWORD         lpdwBufferLength
    );

typedef
INT
(APIENTRY *LPGET_SERVICE_PROC) (
    __in     LPGUID          lpServiceType,
    __in_z   LPWSTR          lpServiceName,
    __in     DWORD           dwProperties,
    __in     BOOL            fUnicodeBlob,
    __out_bcount(*lpdwBufferLen)    LPSERVICE_INFO  lpServiceInfo,
    __inout  LPDWORD         lpdwBufferLen
    );

typedef
DWORD
(APIENTRY *LPSET_SERVICE_PROC) (
    __in     DWORD           dwOperation,
    __in     DWORD           dwFlags,
    __in     BOOL            fUnicodeBlob,
    __in     LPSERVICE_INFO  lpServiceInfo
    );

//
// Internal Functions
//
DWORD
APIENTRY
NPGetService (
    __in     LPGUID          lpServiceType,
    __in_z   LPWSTR          lpServiceName,
    __in     DWORD           dwProperties,
    __in     BOOL            fUnicodeBlob,
    __out_bcount(*lpdwBufferLen)    LPSERVICE_INFO  lpServiceInfo,
    __inout  LPDWORD         lpdwBufferLen
    );

DWORD
APIENTRY
NPSetService (
    __in     DWORD           dwOperation,
    __in     DWORD           dwFlags,
    __in     BOOL            fUnicodeBlob,
    __in     LPSERVICE_INFO  lpServiceInfo
    );

INT
APIENTRY
NPGetAddressByName (
    __in     LPGUID          lpServiceType,
    __in_z   LPWSTR          lpServiceName,
    __in     LPDWORD         lpdwProtocols,
    __in     DWORD           dwResolution,
    __out_bcount(*lpdwBufferLength) LPVOID          lpCsaddrBuffer,
    __inout  LPDWORD         lpdwBufferLength,
    __out_bcount(*lpdwAliasBufferlength) LPWSTR          lpAliasBuffer,
    __inout  LPDWORD         lpdwAliasBufferLength,
    __in     HANDLE          hCancellationEvent
    );

INT
APIENTRY
NPLoadNameSpaces (
    __inout LPDWORD         lpdwVersion,
    __inout_bcount(*lpdwBufferLength) LPNS_ROUTINE    nsrBuffer,
    __inout LPDWORD         lpdwBufferLength
    );

#endif  // _NSPAPIP_INCLUDED

