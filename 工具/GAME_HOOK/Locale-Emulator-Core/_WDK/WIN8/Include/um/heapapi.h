 
/********************************************************************************
*                                                                               *
* HeapApi.h -- ApiSet Contract for api-ms-win-core-heap-l1                      *  
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _HEAPAPI_H_
#define _HEAPAPI_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-heap-l1 */

#ifndef _APISET_HEAP_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION > 0x0100
#define _APISET_HEAP_VER 0x0200
#elif _APISET_MINWIN_VERSION <= 0x0100
#define _APISET_HEAP_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

//
// typdefs
//

typedef struct _HEAP_SUMMARY {
    DWORD cb;
    SIZE_T cbAllocated;
    SIZE_T cbCommitted;
    SIZE_T cbReserved;
    SIZE_T cbMaxReserve;
} HEAP_SUMMARY, *PHEAP_SUMMARY;
typedef PHEAP_SUMMARY LPHEAP_SUMMARY;

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

//
// Prototypes
//

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
HeapCreate(
    _In_ DWORD flOptions,
    _In_ SIZE_T dwInitialSize,
    _In_ SIZE_T dwMaximumSize
    );


WINBASEAPI
BOOL
WINAPI
HeapDestroy(
    _In_ HANDLE hHeap
    );

    
#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
_Ret_maybenull_
_Post_writable_byte_size_(dwBytes)
LPVOID
WINAPI
HeapAlloc(
    _In_ HANDLE hHeap,
    _In_ DWORD dwFlags,
    _In_ SIZE_T dwBytes
    );


WINBASEAPI
_Success_(return!=0)
_Ret_maybenull_
_Post_writable_byte_size_(dwBytes)
LPVOID
WINAPI
HeapReAlloc(
    _Inout_ HANDLE hHeap,
    _In_ DWORD dwFlags,
    _Frees_ptr_opt_ LPVOID lpMem,
    _In_ SIZE_T dwBytes
    );


WINBASEAPI
BOOL
WINAPI
HeapFree(
    _Inout_ HANDLE hHeap,
    _In_ DWORD dwFlags,
    __drv_freesMem(Mem) _Frees_ptr_opt_ LPVOID lpMem
    );


WINBASEAPI
SIZE_T
WINAPI
HeapSize(
    _In_ HANDLE hHeap,
    _In_ DWORD dwFlags,
    _In_ LPCVOID lpMem
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
BOOL
WINAPI
HeapValidate(
    _In_ HANDLE hHeap,
    _In_ DWORD dwFlags,
    _In_opt_ LPCVOID lpMem
    );


WINBASEAPI
SIZE_T
WINAPI
HeapCompact(
    _In_ HANDLE hHeap,
    _In_ DWORD dwFlags
    );



#if (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_HEAP_VER <= 0x0100)

BOOL
WINAPI
HeapSummary(
    _In_ HANDLE hHeap,
    _In_ DWORD dwFlags,
    _Out_ LPHEAP_SUMMARY lpSummary
    );


#endif

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
HANDLE
WINAPI
GetProcessHeap(
    VOID
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
DWORD
WINAPI
GetProcessHeaps(
    _In_ DWORD NumberOfHeaps,
    _Out_writes_to_(NumberOfHeaps, return) PHANDLE ProcessHeaps
    );


WINBASEAPI
BOOL
WINAPI
HeapLock(
    _In_ HANDLE hHeap
    );


WINBASEAPI
BOOL
WINAPI
HeapUnlock(
    _In_ HANDLE hHeap
    );


WINBASEAPI
BOOL
WINAPI
HeapWalk(
    _In_ HANDLE hHeap,
    _Inout_ LPPROCESS_HEAP_ENTRY lpEntry
    );


WINBASEAPI
BOOL
WINAPI
HeapSetInformation(
    _In_opt_ HANDLE HeapHandle,
    _In_ HEAP_INFORMATION_CLASS HeapInformationClass,
    _In_reads_bytes_opt_(HeapInformationLength) PVOID HeapInformation,
    _In_ SIZE_T HeapInformationLength
    );


WINBASEAPI
BOOL
WINAPI
HeapQueryInformation(
    _In_opt_ HANDLE HeapHandle,
    _In_ HEAP_INFORMATION_CLASS HeapInformationClass,
    _Out_writes_bytes_to_opt_(HeapInformationLength, *ReturnLength) PVOID HeapInformation,
    _In_ SIZE_T HeapInformationLength,
    _Out_opt_ PSIZE_T ReturnLength
    );

    
#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

//
// HeapSummary() is in minwinbase.w within ;beg_internal tags. Has to stay there for downlevel reasons.
// 

#ifdef __cplusplus
}
#endif

#endif // _HEAPAPI_H_
