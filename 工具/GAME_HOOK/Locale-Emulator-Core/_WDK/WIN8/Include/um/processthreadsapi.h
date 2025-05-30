 
// begin_1_0
// begin_1_1
/***********************************************************************************
*                                                                                  *
* processthreadsapi.h -- ApiSet Contract for api-ms-win-core-processthreads-l1     *
*                                                                                  *
* Copyright (c) Microsoft Corporation. All rights reserved.                        *
*                                                                                  *
***********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _PROCESSTHREADSAPI_H_
#define _PROCESSTHREADSAPI_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>
#include <minwinbase.h>

/* APISET_NAME: api-ms-win-core-processthreads-l1 */

#ifndef _APISET_PROCESSTHREADS_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0101
#define _APISET_PROCESSTHREADS_VER 0x0101
#elif _APISET_MINWIN_VERSION == 0x0100
#define _APISET_PROCESSTHREADS_VER 0x0100
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

typedef struct _PROCESS_INFORMATION {
    HANDLE hProcess;
    HANDLE hThread;
    DWORD dwProcessId;
    DWORD dwThreadId;
} PROCESS_INFORMATION, *PPROCESS_INFORMATION, *LPPROCESS_INFORMATION;

typedef struct _STARTUPINFOA {
    DWORD   cb;
    LPSTR   lpReserved;
    LPSTR   lpDesktop;
    LPSTR   lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOA, *LPSTARTUPINFOA;
typedef struct _STARTUPINFOW {
    DWORD   cb;
    LPWSTR  lpReserved;
    LPWSTR  lpDesktop;
    LPWSTR  lpTitle;
    DWORD   dwX;
    DWORD   dwY;
    DWORD   dwXSize;
    DWORD   dwYSize;
    DWORD   dwXCountChars;
    DWORD   dwYCountChars;
    DWORD   dwFillAttribute;
    DWORD   dwFlags;
    WORD    wShowWindow;
    WORD    cbReserved2;
    LPBYTE  lpReserved2;
    HANDLE  hStdInput;
    HANDLE  hStdOutput;
    HANDLE  hStdError;
} STARTUPINFOW, *LPSTARTUPINFOW;
#ifdef UNICODE
typedef STARTUPINFOW STARTUPINFO;
typedef LPSTARTUPINFOW LPSTARTUPINFO;
#else
typedef STARTUPINFOA STARTUPINFO;
typedef LPSTARTUPINFOA LPSTARTUPINFO;
#endif // UNICODE


#if (_WIN32_WINNT >= 0x0400) || (_WIN32_WINDOWS > 0x0400)

WINBASEAPI
DWORD
WINAPI
QueueUserAPC(
    _In_ PAPCFUNC pfnAPC,
    _In_ HANDLE hThread,
    _In_ ULONG_PTR dwData
    );


#endif /* _WIN32_WINNT >= 0x0400 || _WIN32_WINDOWS > 0x0400 */

WINBASEAPI
BOOL
WINAPI
GetProcessTimes(
    _In_ HANDLE hProcess,
    _Out_ LPFILETIME lpCreationTime,
    _Out_ LPFILETIME lpExitTime,
    _Out_ LPFILETIME lpKernelTime,
    _Out_ LPFILETIME lpUserTime
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
HANDLE
WINAPI
GetCurrentProcess(
    VOID
    );


WINBASEAPI
DWORD
WINAPI
GetCurrentProcessId(
    VOID
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
DECLSPEC_NORETURN
VOID
WINAPI
ExitProcess(
    _In_ UINT uExitCode
    );


WINBASEAPI
BOOL
WINAPI
TerminateProcess(
    _In_ HANDLE hProcess,
    _In_ UINT uExitCode
    );


WINBASEAPI
BOOL
WINAPI
GetExitCodeProcess(
    _In_ HANDLE hProcess,
    _Out_ LPDWORD lpExitCode
    );


WINBASEAPI
BOOL
WINAPI
SwitchToThread(
    VOID
    );


WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateThread(
    _In_opt_ LPSECURITY_ATTRIBUTES lpThreadAttributes,
    _In_ SIZE_T dwStackSize,
    _In_ LPTHREAD_START_ROUTINE lpStartAddress,
    _In_opt_ __drv_aliasesMem LPVOID lpParameter,
    _In_ DWORD dwCreationFlags,
    _Out_opt_ LPDWORD lpThreadId
    );


WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateRemoteThread(
    _In_ HANDLE hProcess,
    _In_opt_ LPSECURITY_ATTRIBUTES lpThreadAttributes,
    _In_ SIZE_T dwStackSize,
    _In_ LPTHREAD_START_ROUTINE lpStartAddress,
    _In_opt_ LPVOID lpParameter,
    _In_ DWORD dwCreationFlags,
    _Out_opt_ LPDWORD lpThreadId
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
HANDLE
WINAPI
GetCurrentThread(
    VOID
    );


WINBASEAPI
DWORD
WINAPI
GetCurrentThreadId(
    VOID
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
OpenThread(
    _In_ DWORD dwDesiredAccess,
    _In_ BOOL bInheritHandle,
    _In_ DWORD dwThreadId
    );


WINBASEAPI
BOOL
WINAPI
SetThreadPriority(
    _In_ HANDLE hThread,
    _In_ int nPriority
    );


WINBASEAPI
BOOL
WINAPI
SetThreadPriorityBoost(
    _In_ HANDLE hThread,
    _In_ BOOL bDisablePriorityBoost
    );


WINBASEAPI
BOOL
WINAPI
GetThreadPriorityBoost(
    _In_ HANDLE hThread,
    _Out_ PBOOL pDisablePriorityBoost
    );


WINBASEAPI
int
WINAPI
GetThreadPriority(
    _In_ HANDLE hThread
    );


WINBASEAPI
DECLSPEC_NORETURN
VOID
WINAPI
ExitThread(
    _In_ DWORD dwExitCode
    );


WINBASEAPI
BOOL
WINAPI
TerminateThread(
    _In_ HANDLE hThread,
    _In_ DWORD dwExitCode
    );


WINBASEAPI
_Success_(return != 0)
BOOL
WINAPI
GetExitCodeThread(
    _In_ HANDLE hThread,
    _Out_ LPDWORD lpExitCode
    );


WINBASEAPI
DWORD
WINAPI
SuspendThread(
    _In_ HANDLE hThread
    );


WINBASEAPI
DWORD
WINAPI
ResumeThread(
    _In_ HANDLE hThread
    );


#ifndef FLS_OUT_OF_INDEXES
#define FLS_OUT_OF_INDEXES ((DWORD)0xFFFFFFFF)
#endif

#define TLS_OUT_OF_INDEXES ((DWORD)0xFFFFFFFF)

_Must_inspect_result_
WINBASEAPI
DWORD
WINAPI
TlsAlloc(
    VOID
    );


WINBASEAPI
LPVOID
WINAPI
TlsGetValue(
    _In_ DWORD dwTlsIndex
    );


WINBASEAPI
BOOL
WINAPI
TlsSetValue(
    _In_ DWORD dwTlsIndex,
    _In_opt_ LPVOID lpTlsValue
    );


WINBASEAPI
BOOL
WINAPI
TlsFree(
    _In_ DWORD dwTlsIndex
    );


#ifndef _APISET_EXPORTS_FILTER

WINBASEAPI
BOOL
WINAPI
CreateProcessA(
    _In_opt_ LPCSTR lpApplicationName,
    _Inout_opt_ LPSTR lpCommandLine,
    _In_opt_ LPSECURITY_ATTRIBUTES lpProcessAttributes,
    _In_opt_ LPSECURITY_ATTRIBUTES lpThreadAttributes,
    _In_ BOOL bInheritHandles,
    _In_ DWORD dwCreationFlags,
    _In_opt_ LPVOID lpEnvironment,
    _In_opt_ LPCSTR lpCurrentDirectory,
    _In_ LPSTARTUPINFOA lpStartupInfo,
    _Out_ LPPROCESS_INFORMATION lpProcessInformation
    );

WINBASEAPI
BOOL
WINAPI
CreateProcessW(
    _In_opt_ LPCWSTR lpApplicationName,
    _Inout_opt_ LPWSTR lpCommandLine,
    _In_opt_ LPSECURITY_ATTRIBUTES lpProcessAttributes,
    _In_opt_ LPSECURITY_ATTRIBUTES lpThreadAttributes,
    _In_ BOOL bInheritHandles,
    _In_ DWORD dwCreationFlags,
    _In_opt_ LPVOID lpEnvironment,
    _In_opt_ LPCWSTR lpCurrentDirectory,
    _In_ LPSTARTUPINFOW lpStartupInfo,
    _Out_ LPPROCESS_INFORMATION lpProcessInformation
    );

#ifdef UNICODE
#define CreateProcess  CreateProcessW
#else
#define CreateProcess  CreateProcessA
#endif // !UNICODE

#endif // _APISET_EXPORTS_FILTER

WINBASEAPI
BOOL
WINAPI
SetProcessShutdownParameters(
    _In_ DWORD dwLevel,
    _In_ DWORD dwFlags
    );


WINBASEAPI
DWORD
WINAPI
GetProcessVersion(
    _In_ DWORD ProcessId
    );


WINBASEAPI
VOID
WINAPI
GetStartupInfoW(
    _Out_ LPSTARTUPINFOW lpStartupInfo
    );

#ifdef UNICODE
#define GetStartupInfo  GetStartupInfoW
#endif

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

// end_1_0

#ifndef _APISET_EXPORTS_FILTER

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINADVAPI
BOOL
WINAPI
CreateProcessAsUserW(
    _In_opt_ HANDLE hToken,
    _In_opt_ LPCWSTR lpApplicationName,
    _Inout_opt_ LPWSTR lpCommandLine,
    _In_opt_ LPSECURITY_ATTRIBUTES lpProcessAttributes,
    _In_opt_ LPSECURITY_ATTRIBUTES lpThreadAttributes,
    _In_ BOOL bInheritHandles,
    _In_ DWORD dwCreationFlags,
    _In_opt_ LPVOID lpEnvironment,
    _In_opt_ LPCWSTR lpCurrentDirectory,
    _In_ LPSTARTUPINFOW lpStartupInfo,
    _Out_ LPPROCESS_INFORMATION lpProcessInformation
    );


#ifdef UNICODE
#define CreateProcessAsUser  CreateProcessAsUserW
#endif

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // _APISET_EXPORTS_FILTER

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINADVAPI
_Must_inspect_result_
BOOL
APIENTRY
SetThreadToken(
    _In_opt_ PHANDLE Thread,
    _In_opt_ HANDLE Token
    );


WINADVAPI
BOOL
WINAPI
OpenProcessToken(
    _In_ HANDLE ProcessHandle,
    _In_ DWORD DesiredAccess,
    _Outptr_ PHANDLE TokenHandle
    );


WINADVAPI
BOOL
WINAPI
OpenThreadToken(
    _In_ HANDLE ThreadHandle,
    _In_ DWORD DesiredAccess,
    _In_ BOOL OpenAsSelf,
    _Outptr_ PHANDLE TokenHandle
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

// begin_1_0

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
BOOL
WINAPI
SetPriorityClass(
    _In_ HANDLE hProcess,
    _In_ DWORD dwPriorityClass
    );


WINBASEAPI
BOOL
WINAPI
SetThreadStackGuarantee(
    _Inout_ PULONG StackSizeInBytes
    );


WINBASEAPI
DWORD
WINAPI
GetPriorityClass(
    _In_ HANDLE hProcess
    );


WINBASEAPI
BOOL
WINAPI
ProcessIdToSessionId(
    _In_ DWORD dwProcessId,
    _Out_ DWORD * pSessionId
    );




#if (_WIN32_WINNT >= 0x0501)

WINBASEAPI
DWORD
WINAPI
GetProcessId(
    _In_ HANDLE Process
    );


#endif // _WIN32_WINNT >= 0x0501


#if (_WIN32_WINNT >= 0x0502)

WINBASEAPI
DWORD
WINAPI
GetThreadId(
    _In_ HANDLE Thread
    );


#endif // _WIN32_WINNT >= 0x0502


typedef struct _PROC_THREAD_ATTRIBUTE_LIST *PPROC_THREAD_ATTRIBUTE_LIST, *LPPROC_THREAD_ATTRIBUTE_LIST;

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


#if (_WIN32_WINNT >= 0x0600)

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

WINBASEAPI
VOID
WINAPI
FlushProcessWriteBuffers(
    VOID
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
DWORD
WINAPI
GetProcessIdOfThread(
    _In_ HANDLE Thread
    );


WINBASEAPI
_Success_(return != FALSE)
BOOL
WINAPI
InitializeProcThreadAttributeList(
    _Out_writes_bytes_to_opt_(*lpSize, *lpSize) LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
    _In_ DWORD dwAttributeCount,
    _Reserved_ DWORD dwFlags,
    _Inout_ PSIZE_T lpSize
    );


WINBASEAPI
VOID
WINAPI
DeleteProcThreadAttributeList(
    _Inout_ LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList
    );


#define PROCESS_AFFINITY_ENABLE_AUTO_UPDATE 0x00000001UL

WINBASEAPI
BOOL
WINAPI
SetProcessAffinityUpdateMode(
    _In_ HANDLE hProcess,
    _In_ DWORD dwFlags
    );


WINBASEAPI
BOOL
WINAPI
QueryProcessAffinityUpdateMode(
    _In_ HANDLE hProcess,
    _Out_opt_ LPDWORD lpdwFlags
    );


#define PROC_THREAD_ATTRIBUTE_REPLACE_VALUE     0x00000001

WINBASEAPI
BOOL
WINAPI
UpdateProcThreadAttribute(
    _Inout_ LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
    _In_ DWORD dwFlags,
    _In_ DWORD_PTR Attribute,
    _In_reads_bytes_opt_(cbSize) PVOID lpValue,
    _In_ SIZE_T cbSize,
    _Out_writes_bytes_opt_(cbSize) PVOID lpPreviousValue,
    _In_opt_ PSIZE_T lpReturnSize
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // (_WIN32_WINNT >= 0x0600)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
_Ret_maybenull_
HANDLE
WINAPI
CreateRemoteThreadEx(
    _In_ HANDLE hProcess,
    _In_opt_ LPSECURITY_ATTRIBUTES lpThreadAttributes,
    _In_ SIZE_T dwStackSize,
    _In_ LPTHREAD_START_ROUTINE lpStartAddress,
    _In_opt_ LPVOID lpParameter,
    _In_ DWORD dwCreationFlags,
    _In_opt_ LPPROC_THREAD_ATTRIBUTE_LIST lpAttributeList,
    _Out_opt_ LPDWORD lpThreadId
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

// end_1_0
// begin_1_1


#if !defined(MIDL_PASS)

#if (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#if (_WIN32_WINNT >= 0x0602)

WINBASEAPI
VOID
WINAPI
GetCurrentThreadStackLimits(
    _Out_ PULONG_PTR LowLimit,
    _Out_ PULONG_PTR HighLimit
    );


#endif

WINBASEAPI
BOOL
WINAPI
GetThreadContext(
    _In_ HANDLE hThread,
    _Inout_ LPCONTEXT lpContext
    );


WINBASEAPI
BOOL
WINAPI
SetThreadContext(
    _In_ HANDLE hThread,
    _In_ CONST CONTEXT * lpContext
    );



#if (_WIN32_WINNT >= 0x0602)

WINBASEAPI
BOOL
WINAPI
SetProcessMitigationPolicy(
    _In_ PROCESS_MITIGATION_POLICY MitigationPolicy,
    _In_reads_bytes_(dwLength) PVOID lpBuffer,
    _In_ SIZE_T dwLength
    );


WINBASEAPI
BOOL
WINAPI
GetProcessMitigationPolicy(
    _In_ HANDLE hProcess,
    _In_ PROCESS_MITIGATION_POLICY MitigationPolicy,
    _Out_writes_bytes_(dwLength) PVOID lpBuffer,
    _In_ SIZE_T dwLength
    );


#endif

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)
#endif // defined(MIDL_PASS)


#if (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
BOOL
WINAPI
FlushInstructionCache(
    _In_ HANDLE hProcess,
    _In_reads_bytes_opt_(dwSize) LPCVOID lpBaseAddress,
    _In_ SIZE_T dwSize
    );


WINBASEAPI
BOOL
WINAPI
GetThreadTimes(
    _In_ HANDLE hThread,
    _Out_ LPFILETIME lpCreationTime,
    _Out_ LPFILETIME lpExitTime,
    _Out_ LPFILETIME lpKernelTime,
    _Out_ LPFILETIME lpUserTime
    );


WINBASEAPI
HANDLE
WINAPI
OpenProcess(
    _In_ DWORD dwDesiredAccess,
    _In_ BOOL bInheritHandle,
    _In_ DWORD dwProcessId
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#pragma region Application Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)

BOOL
WINAPI
IsProcessorFeaturePresent(
    _In_ DWORD ProcessorFeature
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion

#endif // (defined(_WIN32_WINNT) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)


#if ((_WIN32_WINNT >= 0x0501) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
BOOL
WINAPI
GetProcessHandleCount(
    _In_ HANDLE hProcess,
    _Out_ PDWORD pdwHandleCount
    );

    
#endif // WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#pragma endregion

#endif // ((_WIN32_WINNT >= 0x0501) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)


#if ((_WIN32_WINNT >= 0x0502) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
DWORD
WINAPI
GetCurrentProcessorNumber(
    VOID
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // ((_WIN32_WINNT >= 0x0502) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)


#if ((_WIN32_WINNT >= 0x0601) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)

#pragma region Desktop Family

#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

WINBASEAPI
BOOL
WINAPI
SetThreadIdealProcessorEx(
    _In_ HANDLE hThread,
    _In_ PPROCESSOR_NUMBER lpIdealProcessor,
    _Out_opt_ PPROCESSOR_NUMBER lpPreviousIdealProcessor
    );


WINBASEAPI
BOOL
WINAPI
GetThreadIdealProcessorEx(
    _In_ HANDLE hThread,
    _Out_ PPROCESSOR_NUMBER lpIdealProcessor
    );


WINBASEAPI
VOID
WINAPI
GetCurrentProcessorNumberEx(
    _Out_ PPROCESSOR_NUMBER ProcNumber
    );


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // ((_WIN32_WINNT >= 0x0601) && !defined(_CONTRACT_GEN)) || (_APISET_PROCESSTHREADS_VER > 0x0100)


// end_1_1

// begin_1_0
// begin_1_1

#ifdef __cplusplus
}
#endif

#endif // _PROCESSTHREADSAPI_H_
// end_1_0
// end_1_1

