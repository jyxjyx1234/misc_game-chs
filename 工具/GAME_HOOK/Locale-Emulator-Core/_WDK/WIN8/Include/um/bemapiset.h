 
/********************************************************************************
*                                                                               *
* bemapiset.h - ApiSet Contract for api-ms-win-core-bem-l1                      *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _BEM_H_
#define _BEM_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-bem-l1 */

#ifndef _APISET_BEM_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0100
#define _APISET_BEM_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if !defined(MIDL_PASS)

typedef struct _CONTRACT_DESCRIPTION CONTRACT_DESCRIPTION;

typedef struct _BEM_REFERENCE BEM_REFERENCE;

typedef void (CALLBACK* BEM_FREE_INTERFACE_CALLBACK)(_In_ void* interfaceInstance);

HRESULT
WINAPI
BemCreateReference(
    _In_ REFGUID iid,
    _In_ void * interfaceInstance,
    _In_ BEM_FREE_INTERFACE_CALLBACK freeCallback,
    _Outptr_ BEM_REFERENCE ** reference
    );


HRESULT
WINAPI
BemCreateContractFrom(
    _In_ LPCWSTR dllPath,
    _In_ REFGUID extensionId,
    _In_ const CONTRACT_DESCRIPTION * contractDescription,
    _In_ void * hostContract,
    _Outptr_ void ** contract
    );


HRESULT
WINAPI
BemCopyReference(
    _In_ BEM_REFERENCE * reference,
    _Outptr_ BEM_REFERENCE ** copiedReference
    );

        
void
WINAPI
BemFreeReference(
    _In_opt_ BEM_REFERENCE * reference
    );

    
void
WINAPI
BemFreeContract(
    _In_opt_ void * contract
    );

    
#endif // defined(MIDL_PASS)

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#ifdef __cplusplus
}
#endif

#endif // _BEM_H_
