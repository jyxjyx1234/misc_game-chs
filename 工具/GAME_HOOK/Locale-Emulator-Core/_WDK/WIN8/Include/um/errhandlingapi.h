 
// begin_1_0
// begin_1_1
/********************************************************************************
*                                                                               *
* errhandlingapi.h - ApiSet Contract for api-ms-win-core-errorhandling-l1       *
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _ERRHANDLING_H_
#define _ERRHANDLING_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-errorhandling-l1 */

#ifndef _APISET_ERRORHANDLING_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0101
#define _APISET_ERRORHANDLING_VER 0x0101
#elif _APISET_MINWIN_VERSION == 0x0100
#define _APISET_ERRORHANDLING_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

// end_1_0
// end_1_1

// begin_1_0

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

//
// Typedefs
//

typedef LONG (WINAPI *PTOP_LEVEL_EXCEPTION_FILTER)(
    _In_ struct _EXCEPTION_POINTERS *ExceptionInfo
    );

typedef PTOP_LEVEL_EXCEPTION_FILTER LPTOP_LEVEL_EXCEPTION_FILTER;

//
// Prototypes
//

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
__analysis_noreturn
VOID
WINAPI
RaiseException(
    _In_ DWORD dwExceptionCode,
    _In_ DWORD dwExceptionFlags,
    _In_ DWORD nNumberOfArguments,
    _In_reads_opt_(nNumberOfArguments) CONST ULONG_PTR * lpArguments
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

__callback
WINBASEAPI
LONG
WINAPI
UnhandledExceptionFilter(
    _In_ struct _EXCEPTION_POINTERS * ExceptionInfo
    );


WINBASEAPI
LPTOP_LEVEL_EXCEPTION_FILTER
WINAPI
SetUnhandledExceptionFilter(
    _In_opt_ LPTOP_LEVEL_EXCEPTION_FILTER lpTopLevelExceptionFilter
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

#ifndef _M_CEE_PURE

WINBASEAPI
_Check_return_ _Post_equals_last_error_
DWORD
WINAPI
GetLastError(
    VOID
    );


#endif

WINBASEAPI
VOID
WINAPI
SetLastError(
    _In_ DWORD dwErrCode
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if (_WIN32_WINNT >= 0x0600)

WINBASEAPI
UINT
WINAPI
GetErrorMode(
    VOID
    );


#endif // (_WIN32_WINNT >= 0x0600)

WINBASEAPI
UINT
WINAPI
SetErrorMode(
    _In_ UINT uMode
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

// end_1_0

// begin_1_1

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if ((_WIN32_WINNT >= 0x0501) && !defined(_CONTRACT_GEN)) || (_APISET_ERRORHANDLING_VER > 0x0100)

WINBASEAPI
_Ret_maybenull_
PVOID
WINAPI
AddVectoredExceptionHandler(
    _In_ ULONG First,
    _In_ PVECTORED_EXCEPTION_HANDLER Handler
    );


WINBASEAPI
ULONG
WINAPI
RemoveVectoredExceptionHandler(
    _In_ PVOID Handle
    );


WINBASEAPI
_Ret_maybenull_
PVOID
WINAPI
AddVectoredContinueHandler(
    _In_ ULONG First,
    _In_ PVECTORED_EXCEPTION_HANDLER Handler
    );


WINBASEAPI
ULONG
WINAPI
RemoveVectoredContinueHandler(
    _In_ PVOID Handle
    );


#endif // ((_WIN32_WINNT >= 0x0501) && !defined(_CONTRACT_GEN)) || (_APISET_ERRORHANDLING_VER > 0x0100)


#if !defined(_CONTRACT_GEN) || (_APISET_ERRORHANDLING_VER > 0x0100)

// RC warns because "WINBASE_DECLARE_RESTORE_LAST_ERROR" is a bit long.
#if !defined(RC_INVOKED)
//#if _WIN32_WINNT >= 0x0501 || defined(WINBASE_DECLARE_RESTORE_LAST_ERROR)

#if defined(WINBASE_DECLARE_RESTORE_LAST_ERROR)

WINBASEAPI
VOID
WINAPI
RestoreLastError(
    _In_ DWORD dwErrCode
    );


typedef VOID (WINAPI* PRESTORE_LAST_ERROR)(DWORD);
#define RESTORE_LAST_ERROR_NAME_A      "RestoreLastError"
#define RESTORE_LAST_ERROR_NAME_W     L"RestoreLastError"
#define RESTORE_LAST_ERROR_NAME   TEXT("RestoreLastError")

#endif 
#endif

#endif // !defined(_CONTRACT_GEN) || (_APISET_ERRORHANDLING_VER > 0x0100)

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

// end_1_1

// begin_1_0
// begin_1_1

#ifdef __cplusplus
}
#endif

#endif // _ERRHANDLING_H_
// end_1_0
// end_1_1
