////////////////////////////////////////////////////////////
//
// Copyright (c) Microsoft Corporation.
//
// SYNOPSIS
//
//    NAP utilities.
//
////////////////////////////////////////////////////////////

#ifndef NAPUTIL_H
#define NAPUTIL_H

#if _MSC_VER > 1000
#pragma once
#endif
#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#include "naptypes.h"
#include "napmanagement.h"
#include "napservermanagement.h"
#include "napprotocol.h"
#include "napenforcementclient.h"


#ifdef __cplusplus
extern "C" {
#endif

// The following functions are exported in QUtil.dll.
// 
#ifndef NAPAPI
#define NAPAPI DECLSPEC_IMPORT
#endif

// All the COM interfaces supported by the NAP system
// use standard COM memory management rules and the COM
// memory allocator (CoTaskMemAlloc and CoTaskMemFree).
//    in parameters     -- allocated and freed by caller.
//    out parameters    -- allocated by callee, freed 
//                         by caller using CoTaskMem*()
//    in/out parameters -- allocated by caller, freed
//                         and reallocated by callee,
//                         ultimately freed by caller,
//                         using CoTaskMem*()
// 
// The following functions are helpers to aid with
// COM memory management of some complex structures.
// 
// In the Free() functions below, all embedded pointers
// will also be freed.
// 


// Return values of Alloc functions:
//    E_INVALIDARG
//    E_OUTOFMEMORY
//    S_OK

NAPAPI
HRESULT WINAPI
AllocFixupInfo(
   IN OUT FixupInfo** fixupInfo,
   IN UINT16 countResultCodes
   );


NAPAPI
HRESULT WINAPI
AllocConnections(
   IN OUT Connections** connections,
   IN UINT16 connectionsCount
   );


NAPAPI
HRESULT WINAPI
AllocCountedString(
   IN OUT CountedString** countedString,
   IN CONST WCHAR* string
   );
   

NAPAPI
VOID WINAPI
FreeFixupInfo(
   IN FixupInfo* fixupInfo
   );


NAPAPI
VOID WINAPI
FreeConnections(
   IN Connections* connections
   );


NAPAPI
VOID WINAPI
FreeIsolationInfo(
   IN IsolationInfo* isolationInfo
   );


NAPAPI
VOID WINAPI
FreeIsolationInfoEx(
   IN IsolationInfoEx* isolationInfo
   );


NAPAPI
VOID WINAPI
FreeCountedString(
   IN CountedString* countedString
   );
   

NAPAPI
VOID WINAPI
FreeSoH(
   IN SoH* soh
   );


NAPAPI
VOID WINAPI
FreeNetworkSoH(
   IN NetworkSoH* networkSoh
   );


NAPAPI
VOID WINAPI
FreePrivateData(
   IN PrivateData* privateData
   );


NAPAPI
VOID WINAPI
FreeSoHAttributeValue(
   IN SoHAttributeType type,
   IN SoHAttributeValue* value
   );


NAPAPI
VOID WINAPI
FreeNapComponentRegistrationInfoArray(
   IN UINT16 count,
   IN NapComponentRegistrationInfo** info
   );


NAPAPI
VOID WINAPI
FreeSystemHealthAgentState(
   IN SystemHealthAgentState* state
   );


// InitializeNapAgentNotifier and UninitializeNapAgentNotifier are used to
// subscribe to NapAgent service state change notifications and quarantine
// state change notifications.
// These functions are not thread safe and should be called once for each 
// process.

NAPAPI
HRESULT WINAPI 
InitializeNapAgentNotifier(
   IN NapNotifyType type, 
   IN HANDLE hNotifyEvent
   );

NAPAPI
VOID WINAPI 
UninitializeNapAgentNotifier(
   IN NapNotifyType type
   );

#ifdef __cplusplus
}
#endif


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // NAPUTIL_H
