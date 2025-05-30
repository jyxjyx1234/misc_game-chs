 
// begin_1_0
// begin_1_1
/********************************************************************************
*                                                                               *
* memoryapi.h -- ApiSet Contract for api-ms-win-core-memory-l1-1-0              *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _MEMORYAPI_H_
#define _MEMORYAPI_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-memory-l1 */

#ifndef _APISET_MEMORY_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0101
#define _APISET_MEMORY_VER 0x0101
#elif _APISET_MINWIN_VERSION == 0x0100
#define _APISET_MEMORY_VER 0x0100
#endif
#endif
#endif


#ifdef __cplusplus
extern "C" {
#endif

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

//
// Constants
//
#define FILE_MAP_WRITE      SECTION_MAP_WRITE
#define FILE_MAP_READ       SECTION_MAP_READ
#define FILE_MAP_ALL_ACCESS SECTION_ALL_ACCESS

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#define FILE_MAP_EXECUTE    SECTION_MAP_EXECUTE_EXPLICIT    // not included in FILE_MAP_ALL_ACCESS

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

#define FILE_MAP_COPY       0x00000001
#define FILE_MAP_RESERVE    0x80000000

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

// end_1_0
// end_1_1

// begin_1_0

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

//
// Prototypes
//
WINBASEAPI
_Ret_maybenull_ _Post_writable_byte_size_(dwSize)
LPVOID
WINAPI
VirtualAlloc(
    _In_opt_ LPVOID lpAddress,
    _In_ SIZE_T dwSize,
    _In_ DWORD flAllocationType,
    _In_ DWORD flProtect
    );


_When_(((dwFreeType&(MEM_RELEASE|MEM_DECOMMIT)))==(MEM_RELEASE|MEM_DECOMMIT),
    __drv_reportError("Passing both MEM_RELEASE and MEM_DECOMMIT to VirtualFree is not allowed. This results in the failure of this call"))

_When_(dwFreeType==0,
    __drv_reportError("Passing zero as the dwFreeType parameter to VirtualFree is not allowed. This results in the failure of this call"))

_When_(((dwFreeType&MEM_RELEASE))!=0 && dwSize!=0,
    __drv_reportError("Passing MEM_RELEASE and a non-zero dwSize parameter to VirtualFree is not allowed. This results in the failure of this call"))
WINBASEAPI
BOOL
WINAPI
VirtualFree(
    _In_ LPVOID lpAddress,
    _In_ SIZE_T dwSize,
    _In_ DWORD dwFreeType
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
VirtualProtect(
    _In_ LPVOID lpAddress,
    _In_ SIZE_T dwSize,
    _In_ DWORD flNewProtect,
    _Out_ PDWORD lpflOldProtect
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
SIZE_T
WINAPI
VirtualQuery(
    _In_opt_ LPCVOID lpAddress,
    _Out_writes_bytes_to_(dwLength, return) PMEMORY_BASIC_INFORMATION lpBuffer,
    _In_ SIZE_T dwLength
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
_Ret_maybenull_ _Post_writable_byte_size_(dwSize)
LPVOID
WINAPI
VirtualAllocEx(
    _In_ HANDLE hProcess,
    _In_opt_ LPVOID lpAddress,
    _In_ SIZE_T dwSize,
    _In_ DWORD flAllocationType,
    _In_ DWORD flProtect
    );


_When_(((dwFreeType&(MEM_RELEASE|MEM_DECOMMIT)))==(MEM_RELEASE|MEM_DECOMMIT),
    __drv_reportError("Passing both MEM_RELEASE and MEM_DECOMMIT to VirtualFree is not allowed. This results in the failure of this call"))

_When_(dwFreeType==0,
    __drv_reportError("Passing zero as the dwFreeType parameter to VirtualFree is not allowed. This results in the failure of this call"))

_When_(((dwFreeType&MEM_RELEASE))!=0 && dwSize!=0,
    __drv_reportError("Passing MEM_RELEASE and a non-zero dwSize parameter to VirtualFree is not allowed. This results in the failure of this call"))

_When_(((dwFreeType&MEM_DECOMMIT))!=0,
    __drv_reportError("Calling VirtualFreeEx without the MEM_RELEASE flag frees memory but not address descriptors (VADs); results in address space leaks"))
WINBASEAPI
BOOL
WINAPI
VirtualFreeEx(
    _In_ HANDLE hProcess,
    _In_ LPVOID lpAddress,
    _In_ SIZE_T dwSize,
    _In_ DWORD dwFreeType
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
VirtualProtectEx(
    _In_ HANDLE hProcess,
    _In_ LPVOID lpAddress,
    _In_ SIZE_T dwSize,
    _In_ DWORD flNewProtect,
    _Out_ PDWORD lpflOldProtect
    );


WINBASEAPI
SIZE_T
WINAPI
VirtualQueryEx(
    _In_ HANDLE hProcess,
    _In_opt_ LPCVOID lpAddress,
    _Out_writes_bytes_to_(dwLength, return) PMEMORY_BASIC_INFORMATION lpBuffer,
    _In_ SIZE_T dwLength
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
ReadProcessMemory(
    _In_ HANDLE hProcess,
    _In_ LPCVOID lpBaseAddress,
    _Out_writes_bytes_to_(nSize, *lpNumberOfBytesRead) LPVOID lpBuffer,
    _In_ SIZE_T nSize,
    _Out_opt_ SIZE_T * lpNumberOfBytesRead
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
WriteProcessMemory(
    _In_ HANDLE hProcess,
    _In_ LPVOID lpBaseAddress,
    _In_reads_bytes_(nSize) LPCVOID lpBuffer,
    _In_ SIZE_T nSize,
    _Out_opt_ SIZE_T * lpNumberOfBytesWritten
    );


WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateFileMappingW(
    _In_ HANDLE hFile,
    _In_opt_ LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
    _In_ DWORD flProtect,
    _In_ DWORD dwMaximumSizeHigh,
    _In_ DWORD dwMaximumSizeLow,
    _In_opt_ LPCWSTR lpName
    );


#ifdef UNICODE
#define CreateFileMapping  CreateFileMappingW
#endif

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
OpenFileMappingW(
    _In_ DWORD dwDesiredAccess,
    _In_ BOOL bInheritHandle,
    _In_ LPCWSTR lpName
    );


#ifdef UNICODE
#define OpenFileMapping  OpenFileMappingW
#endif

WINBASEAPI
_Ret_maybenull_  __out_data_source(FILE)
LPVOID
WINAPI
MapViewOfFile(
    _In_ HANDLE hFileMappingObject,
    _In_ DWORD dwDesiredAccess,
    _In_ DWORD dwFileOffsetHigh,
    _In_ DWORD dwFileOffsetLow,
    _In_ SIZE_T dwNumberOfBytesToMap
    );


WINBASEAPI
_Ret_maybenull_  __out_data_source(FILE)
LPVOID
WINAPI
MapViewOfFileEx(
    _In_ HANDLE hFileMappingObject,
    _In_ DWORD dwDesiredAccess,
    _In_ DWORD dwFileOffsetHigh,
    _In_ DWORD dwFileOffsetLow,
    _In_ SIZE_T dwNumberOfBytesToMap,
    _In_opt_ LPVOID lpBaseAddress
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
BOOL
WINAPI
FlushViewOfFile(
    _In_ LPCVOID lpBaseAddress,
    _In_ SIZE_T dwNumberOfBytesToFlush
    );


WINBASEAPI
BOOL
WINAPI
UnmapViewOfFile(
    _In_ LPCVOID lpBaseAddress
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

// end_1_0

// begin_1_1


#if (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
SIZE_T
WINAPI
GetLargePageMinimum(
    VOID
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
GetProcessWorkingSetSizeEx(
    _In_ HANDLE hProcess,
    _Out_ PSIZE_T lpMinimumWorkingSetSize,
    _Out_ PSIZE_T lpMaximumWorkingSetSize,
    _Out_ PDWORD Flags
    );


WINBASEAPI
BOOL
WINAPI
SetProcessWorkingSetSizeEx(
    _In_ HANDLE hProcess,
    _In_ SIZE_T dwMinimumWorkingSetSize,
    _In_ SIZE_T dwMaximumWorkingSetSize,
    _In_ DWORD Flags
    );


WINBASEAPI
BOOL
WINAPI
VirtualLock(
    _In_ LPVOID lpAddress,
    _In_ SIZE_T dwSize
    );


WINBASEAPI
BOOL
WINAPI
VirtualUnlock(
    _In_ LPVOID lpAddress,
    _In_ SIZE_T dwSize
    );


WINBASEAPI
_Success_(return == 0)
UINT
WINAPI
GetWriteWatch(
    _In_ DWORD dwFlags,
    _In_ PVOID lpBaseAddress,
    _In_ SIZE_T dwRegionSize,
    _Out_writes_to_opt_(*lpdwCount, *lpdwCount) PVOID * lpAddresses,
    _Inout_opt_ ULONG_PTR * lpdwCount,
    _Out_opt_ LPDWORD lpdwGranularity
    );


WINBASEAPI
UINT
WINAPI
ResetWriteWatch(
    _In_ LPVOID lpBaseAddress,
    _In_ SIZE_T dwRegionSize
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#endif  // (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)


#if ((_WIN32_WINNT >= _WIN32_WINNT_WINXP) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

typedef enum _MEMORY_RESOURCE_NOTIFICATION_TYPE {
    LowMemoryResourceNotification,
    HighMemoryResourceNotification
} MEMORY_RESOURCE_NOTIFICATION_TYPE;

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateMemoryResourceNotification(
    _In_ MEMORY_RESOURCE_NOTIFICATION_TYPE NotificationType
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
QueryMemoryResourceNotification(
    _In_ HANDLE ResourceNotificationHandle,
    _Out_ PBOOL ResourceState
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#endif // ((_WIN32_WINNT >= _WIN32_WINNT_WINXP) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)


#if ((_WIN32_WINNT >= _WIN32_WINNT_WS03) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#define FILE_CACHE_FLAGS_DEFINED
#define FILE_CACHE_MAX_HARD_ENABLE      0x00000001
#define FILE_CACHE_MAX_HARD_DISABLE     0x00000002
#define FILE_CACHE_MIN_HARD_ENABLE      0x00000004
#define FILE_CACHE_MIN_HARD_DISABLE     0x00000008

WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
GetSystemFileCacheSize(
    _Out_ PSIZE_T lpMinimumFileCacheSize,
    _Out_ PSIZE_T lpMaximumFileCacheSize,
    _Out_ PDWORD lpFlags
    );


WINBASEAPI
BOOL
WINAPI
SetSystemFileCacheSize(
    _In_ SIZE_T MinimumFileCacheSize,
    _In_ SIZE_T MaximumFileCacheSize,
    _In_ DWORD Flags
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#endif // ((_WIN32_WINNT >= _WIN32_WINNT_WS03) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)


#if ((_WIN32_WINNT >= _WIN32_WINNT_VISTA) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateFileMappingNumaW(
    _In_ HANDLE hFile,
    _In_opt_ LPSECURITY_ATTRIBUTES lpFileMappingAttributes,
    _In_ DWORD flProtect,
    _In_ DWORD dwMaximumSizeHigh,
    _In_ DWORD dwMaximumSizeLow,
    _In_opt_ LPCWSTR lpName,
    _In_ DWORD nndPreferred
    );


#ifdef UNICODE
#define CreateFileMappingNuma CreateFileMappingNumaW
#endif

#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#endif // ((_WIN32_WINNT >= _WIN32_WINNT_VISTA) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)


#if ((_WIN32_WINNT >= _WIN32_WINNT_WIN8) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

typedef struct _WIN32_MEMORY_RANGE_ENTRY {
    PVOID VirtualAddress;
    SIZE_T NumberOfBytes;
} WIN32_MEMORY_RANGE_ENTRY, *PWIN32_MEMORY_RANGE_ENTRY;

WINBASEAPI
BOOL
WINAPI
PrefetchVirtualMemory(
    _In_ HANDLE hProcess,
    _In_ ULONG_PTR NumberOfEntries,
    _In_reads_(NumberOfEntries) PWIN32_MEMORY_RANGE_ENTRY VirtualAddresses,
    _In_ ULONG Flags
    );


WINBASEAPI
BOOL
WINAPI
UnmapViewOfFileEx(
    _In_ PVOID BaseAddress,
    _In_ ULONG UnmapFlags
    );


#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateFileMappingFromApp(
    _In_ HANDLE hFile,
    _In_opt_ PSECURITY_ATTRIBUTES SecurityAttributes,
    _In_ ULONG PageProtection,
    _In_ ULONG64 MaximumSize,
    _In_opt_ PCWSTR Name
    );


WINBASEAPI
_Ret_maybenull_  __out_data_source(FILE)
PVOID
WINAPI
MapViewOfFileFromApp(
    _In_ HANDLE hFileMappingObject,
    _In_ ULONG DesiredAccess,
    _In_ ULONG64 FileOffset,
    _In_ SIZE_T NumberOfBytesToMap
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#endif // ((_WIN32_WINNT >= _WIN32_WINNT_WIN8) && !defined(_CONTRACT_GEN)) || (_APISET_MEMORY_VER > 0x0100)

// end_1_1

// begin_1_0
// begin_1_1

#ifdef __cplusplus
}
#endif

#endif // _MEMORYAPI_H_

// end_1_0
// end_1_1
