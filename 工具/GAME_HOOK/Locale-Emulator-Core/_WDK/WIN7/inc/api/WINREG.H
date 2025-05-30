/*++ BUILD Version: 0001    // Increment this if a change has global effects

Copyright (c) Microsoft Corporation.  All rights reserved.

Module Name:

    Winreg.h

Abstract:

    This module contains the function prototypes and constant, type and
    structure definitions for the Windows 32-Bit Registry API.

--*/

#ifndef _WINREG_
#define _WINREG_


#ifdef _MAC
#include <macwin32.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#ifndef WINVER
#define WINVER 0x0500   // version 5.0
#endif /* !WINVER */

//
// RRF - Registry Routine Flags (for RegGetValue)
//

#define RRF_RT_REG_NONE        0x00000001  // restrict type to REG_NONE      (other data types will not return ERROR_SUCCESS)
#define RRF_RT_REG_SZ          0x00000002  // restrict type to REG_SZ        (other data types will not return ERROR_SUCCESS) (automatically converts REG_EXPAND_SZ to REG_SZ unless RRF_NOEXPAND is specified)
#define RRF_RT_REG_EXPAND_SZ   0x00000004  // restrict type to REG_EXPAND_SZ (other data types will not return ERROR_SUCCESS) (must specify RRF_NOEXPAND or RegGetValue will fail with ERROR_INVALID_PARAMETER)
#define RRF_RT_REG_BINARY      0x00000008  // restrict type to REG_BINARY    (other data types will not return ERROR_SUCCESS)
#define RRF_RT_REG_DWORD       0x00000010  // restrict type to REG_DWORD     (other data types will not return ERROR_SUCCESS)
#define RRF_RT_REG_MULTI_SZ    0x00000020  // restrict type to REG_MULTI_SZ  (other data types will not return ERROR_SUCCESS)
#define RRF_RT_REG_QWORD       0x00000040  // restrict type to REG_QWORD     (other data types will not return ERROR_SUCCESS)

#define RRF_RT_DWORD           (RRF_RT_REG_BINARY | RRF_RT_REG_DWORD) // restrict type to *32-bit* RRF_RT_REG_BINARY or RRF_RT_REG_DWORD (other data types will not return ERROR_SUCCESS)
#define RRF_RT_QWORD           (RRF_RT_REG_BINARY | RRF_RT_REG_QWORD) // restrict type to *64-bit* RRF_RT_REG_BINARY or RRF_RT_REG_DWORD (other data types will not return ERROR_SUCCESS)
#define RRF_RT_ANY             0x0000ffff                             // no type restriction

#define RRF_NOEXPAND           0x10000000  // do not automatically expand environment strings if value is of type REG_EXPAND_SZ
#define RRF_ZEROONFAILURE      0x20000000  // if pvData is not NULL, set content to all zeros on failure

//
// Flags for RegLoadAppKey
//
#define REG_PROCESS_APPKEY          0x00000001

//
// Flags for RegLoadMUIString
//
#define REG_MUI_STRING_TRUNCATE     0x00000001

//
// Requested Key access mask type.
//

typedef ACCESS_MASK REGSAM;

//
// Reserved Key Handles.
//

#define HKEY_CLASSES_ROOT                   (( HKEY ) (ULONG_PTR)((LONG)0x80000000) )
#define HKEY_CURRENT_USER                   (( HKEY ) (ULONG_PTR)((LONG)0x80000001) )
#define HKEY_LOCAL_MACHINE                  (( HKEY ) (ULONG_PTR)((LONG)0x80000002) )
#define HKEY_USERS                          (( HKEY ) (ULONG_PTR)((LONG)0x80000003) )
#define HKEY_PERFORMANCE_DATA               (( HKEY ) (ULONG_PTR)((LONG)0x80000004) )
#define HKEY_PERFORMANCE_TEXT               (( HKEY ) (ULONG_PTR)((LONG)0x80000050) )
#define HKEY_PERFORMANCE_NLSTEXT            (( HKEY ) (ULONG_PTR)((LONG)0x80000060) )
#if(WINVER >= 0x0400)
#define HKEY_CURRENT_CONFIG                 (( HKEY ) (ULONG_PTR)((LONG)0x80000005) )
#define HKEY_DYN_DATA                       (( HKEY ) (ULONG_PTR)((LONG)0x80000006) )
#define HKEY_CURRENT_USER_LOCAL_SETTINGS    (( HKEY ) (ULONG_PTR)((LONG)0x80000007) )


//
// RegConnectRegistryEx supported flags
//
#define REG_SECURE_CONNECTION   1

/*NOINC*/
#ifndef _PROVIDER_STRUCTS_DEFINED
#define _PROVIDER_STRUCTS_DEFINED

#define PROVIDER_KEEPS_VALUE_LENGTH 0x1
struct val_context {
    int valuelen;       // the total length of this value
    LPVOID value_context;   // provider's context
    LPVOID val_buff_ptr;    // where in the ouput buffer the value is.
};

typedef struct val_context FAR *PVALCONTEXT;

typedef struct pvalueA {           // Provider supplied value/context.
    LPSTR   pv_valuename;          // The value name pointer
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEA, FAR *PPVALUEA;
typedef struct pvalueW {           // Provider supplied value/context.
    LPWSTR  pv_valuename;          // The value name pointer
    int pv_valuelen;
    LPVOID pv_value_context;
    DWORD pv_type;
}PVALUEW, FAR *PPVALUEW;
#ifdef UNICODE
typedef PVALUEW PVALUE;
typedef PPVALUEW PPVALUE;
#else
typedef PVALUEA PVALUE;
typedef PPVALUEA PPVALUE;
#endif // UNICODE

typedef
DWORD __cdecl
QUERYHANDLER (LPVOID keycontext, PVALCONTEXT val_list, DWORD num_vals,
          LPVOID outputbuffer, DWORD FAR *total_outlen, DWORD input_blen);

typedef QUERYHANDLER FAR *PQUERYHANDLER;

typedef struct provider_info {
    PQUERYHANDLER pi_R0_1val;
    PQUERYHANDLER pi_R0_allvals;
    PQUERYHANDLER pi_R3_1val;
    PQUERYHANDLER pi_R3_allvals;
    DWORD pi_flags;    // capability flags (none defined yet).
    LPVOID pi_key_context;
}REG_PROVIDER;

typedef struct provider_info FAR *PPROVIDER;

typedef struct value_entA {
    LPSTR   ve_valuename;
    DWORD ve_valuelen;
    DWORD_PTR ve_valueptr;
    DWORD ve_type;
}VALENTA, FAR *PVALENTA;
typedef struct value_entW {
    LPWSTR  ve_valuename;
    DWORD ve_valuelen;
    DWORD_PTR ve_valueptr;
    DWORD ve_type;
}VALENTW, FAR *PVALENTW;
#ifdef UNICODE
typedef VALENTW VALENT;
typedef PVALENTW PVALENT;
#else
typedef VALENTA VALENT;
typedef PVALENTA PVALENT;
#endif // UNICODE

#endif // not(_PROVIDER_STRUCTS_DEFINED)
/*INC*/

#endif /* WINVER >= 0x0400 */

//
// Default values for parameters that do not exist in the Win 3.1
// compatible APIs.
//

#define WIN31_CLASS                 NULL

//
// API Prototypes.
//

typedef __success(return==ERROR_SUCCESS) LONG LSTATUS;

WINADVAPI
LSTATUS
APIENTRY
RegCloseKey (
    __in HKEY hKey
    );

WINADVAPI
LSTATUS
APIENTRY
RegOverridePredefKey (
    __in HKEY hKey,
    __in_opt HKEY hNewHKey
    );

WINADVAPI
LSTATUS
APIENTRY
RegOpenUserClassesRoot(
    __in HANDLE hToken,
    __reserved DWORD dwOptions,
    __in REGSAM samDesired,
    __out PHKEY  phkResult
    );

WINADVAPI
LSTATUS
APIENTRY
RegOpenCurrentUser(
    __in REGSAM samDesired,
    __out PHKEY phkResult
    );

WINADVAPI
LSTATUS
APIENTRY
RegDisablePredefinedCache(
    VOID
    );

WINADVAPI
LSTATUS
APIENTRY
RegDisablePredefinedCacheEx(
    VOID
    );

WINADVAPI
LSTATUS
APIENTRY
RegConnectRegistryA (
    __in_opt LPCSTR lpMachineName,
    __in HKEY hKey,
    __out PHKEY phkResult
    );
WINADVAPI
LSTATUS
APIENTRY
RegConnectRegistryW (
    __in_opt LPCWSTR lpMachineName,
    __in HKEY hKey,
    __out PHKEY phkResult
    );
#ifdef UNICODE
#define RegConnectRegistry  RegConnectRegistryW
#else
#define RegConnectRegistry  RegConnectRegistryA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegConnectRegistryExA (
    __in_opt LPCSTR lpMachineName,
    __in HKEY hKey,
    __in ULONG Flags,
    __out PHKEY phkResult
    );
WINADVAPI
LSTATUS
APIENTRY
RegConnectRegistryExW (
    __in_opt LPCWSTR lpMachineName,
    __in HKEY hKey,
    __in ULONG Flags,
    __out PHKEY phkResult
    );
#ifdef UNICODE
#define RegConnectRegistryEx  RegConnectRegistryExW
#else
#define RegConnectRegistryEx  RegConnectRegistryExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegCreateKeyA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __out PHKEY phkResult
    );
WINADVAPI
LSTATUS
APIENTRY
RegCreateKeyW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __out PHKEY phkResult
    );
#ifdef UNICODE
#define RegCreateKey  RegCreateKeyW
#else
#define RegCreateKey  RegCreateKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegCreateKeyExA (
    __in HKEY hKey,
    __in LPCSTR lpSubKey,
    __reserved DWORD Reserved,
    __in_opt LPSTR lpClass,
    __in DWORD dwOptions,
    __in REGSAM samDesired,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    __out PHKEY phkResult,
    __out_opt LPDWORD lpdwDisposition
    );
WINADVAPI
LSTATUS
APIENTRY
RegCreateKeyExW (
    __in HKEY hKey,
    __in LPCWSTR lpSubKey,
    __reserved DWORD Reserved,
    __in_opt LPWSTR lpClass,
    __in DWORD dwOptions,
    __in REGSAM samDesired,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    __out PHKEY phkResult,
    __out_opt LPDWORD lpdwDisposition
    );
#ifdef UNICODE
#define RegCreateKeyEx  RegCreateKeyExW
#else
#define RegCreateKeyEx  RegCreateKeyExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegCreateKeyTransactedA (
    __in HKEY hKey,
    __in LPCSTR lpSubKey,
    __reserved DWORD Reserved,
    __in_opt LPSTR lpClass,
    __in DWORD dwOptions,
    __in REGSAM samDesired,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    __out PHKEY phkResult,
    __out_opt LPDWORD lpdwDisposition,
    __in        HANDLE hTransaction,
    __reserved PVOID  pExtendedParemeter
    );
WINADVAPI
LSTATUS
APIENTRY
RegCreateKeyTransactedW (
    __in HKEY hKey,
    __in LPCWSTR lpSubKey,
    __reserved DWORD Reserved,
    __in_opt LPWSTR lpClass,
    __in DWORD dwOptions,
    __in REGSAM samDesired,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    __out PHKEY phkResult,
    __out_opt LPDWORD lpdwDisposition,
    __in        HANDLE hTransaction,
    __reserved PVOID  pExtendedParemeter
    );
#ifdef UNICODE
#define RegCreateKeyTransacted  RegCreateKeyTransactedW
#else
#define RegCreateKeyTransacted  RegCreateKeyTransactedA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyA (
    __in HKEY hKey,
    __in LPCSTR lpSubKey
    );
WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyW (
    __in HKEY hKey,
    __in LPCWSTR lpSubKey
    );
#ifdef UNICODE
#define RegDeleteKey  RegDeleteKeyW
#else
#define RegDeleteKey  RegDeleteKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyExA (
    __in HKEY hKey,
    __in LPCSTR lpSubKey,
    __in REGSAM samDesired,
    __reserved DWORD Reserved
    );
WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyExW (
    __in HKEY hKey,
    __in LPCWSTR lpSubKey,
    __in REGSAM samDesired,
    __reserved DWORD Reserved
    );
#ifdef UNICODE
#define RegDeleteKeyEx  RegDeleteKeyExW
#else
#define RegDeleteKeyEx  RegDeleteKeyExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyTransactedA (
    __in HKEY hKey,
    __in LPCSTR lpSubKey,
    __in REGSAM samDesired,
    __reserved DWORD Reserved,
    __in        HANDLE hTransaction,
    __reserved PVOID  pExtendedParameter
    );
WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyTransactedW (
    __in HKEY hKey,
    __in LPCWSTR lpSubKey,
    __in REGSAM samDesired,
    __reserved DWORD Reserved,
    __in        HANDLE hTransaction,
    __reserved PVOID  pExtendedParameter
    );
#ifdef UNICODE
#define RegDeleteKeyTransacted  RegDeleteKeyTransactedW
#else
#define RegDeleteKeyTransacted  RegDeleteKeyTransactedA
#endif // !UNICODE

WINADVAPI
LONG
APIENTRY
RegDisableReflectionKey (
    __in HKEY hBase
    );    

WINADVAPI
LONG
APIENTRY
RegEnableReflectionKey (
    __in HKEY hBase
    );    

WINADVAPI
LONG
APIENTRY
RegQueryReflectionKey (
    __in HKEY hBase,
    __out BOOL *bIsReflectionDisabled
    );    
    
WINADVAPI
LSTATUS
APIENTRY
RegDeleteValueA (
    __in HKEY hKey,
    __in_opt LPCSTR lpValueName
    );
WINADVAPI
LSTATUS
APIENTRY
RegDeleteValueW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpValueName
    );
#ifdef UNICODE
#define RegDeleteValue  RegDeleteValueW
#else
#define RegDeleteValue  RegDeleteValueA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegEnumKeyA (
    __in HKEY hKey,
    __in DWORD dwIndex,
    __out_ecount_part_opt(cchName,cchName + 1) LPSTR lpName,
    __in DWORD cchName
    );
WINADVAPI
LSTATUS
APIENTRY
RegEnumKeyW (
    __in HKEY hKey,
    __in DWORD dwIndex,
    __out_ecount_part_opt(cchName,cchName + 1) LPWSTR lpName,
    __in DWORD cchName
    );
#ifdef UNICODE
#define RegEnumKey  RegEnumKeyW
#else
#define RegEnumKey  RegEnumKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegEnumKeyExA (
    __in HKEY hKey,
    __in DWORD dwIndex,
    __out_ecount_part_opt(*lpcchName, *lpcchName + 1) LPSTR lpName,
    __inout LPDWORD lpcchName,
    __reserved LPDWORD lpReserved,
    __out_ecount_part_opt(*lpcchClass,*lpcchClass + 1) LPSTR lpClass,
    __inout_opt LPDWORD lpcchClass,
    __out_opt PFILETIME lpftLastWriteTime
    );
WINADVAPI
LSTATUS
APIENTRY
RegEnumKeyExW (
    __in HKEY hKey,
    __in DWORD dwIndex,
    __out_ecount_part_opt(*lpcchName, *lpcchName + 1) LPWSTR lpName,
    __inout LPDWORD lpcchName,
    __reserved LPDWORD lpReserved,
    __out_ecount_part_opt(*lpcchClass,*lpcchClass + 1) LPWSTR lpClass,
    __inout_opt LPDWORD lpcchClass,
    __out_opt PFILETIME lpftLastWriteTime
    );
#ifdef UNICODE
#define RegEnumKeyEx  RegEnumKeyExW
#else
#define RegEnumKeyEx  RegEnumKeyExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegEnumValueA (
    __in HKEY hKey,
    __in DWORD dwIndex,
    __out_ecount_part_opt(*lpcchValueName, *lpcchValueName + 1) LPSTR lpValueName,
    __inout LPDWORD lpcchValueName,
    __reserved LPDWORD lpReserved,
    __out_opt LPDWORD lpType,
    __out_bcount_part_opt(*lpcbData, *lpcbData) __out_data_source(REGISTRY) LPBYTE lpData,
    __inout_opt LPDWORD lpcbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegEnumValueW (
    __in HKEY hKey,
    __in DWORD dwIndex,
    __out_ecount_part_opt(*lpcchValueName, *lpcchValueName + 1) LPWSTR lpValueName,
    __inout LPDWORD lpcchValueName,
    __reserved LPDWORD lpReserved,
    __out_opt LPDWORD lpType,
    __out_bcount_part_opt(*lpcbData, *lpcbData) __out_data_source(REGISTRY) LPBYTE lpData,
    __inout_opt LPDWORD lpcbData
    );
#ifdef UNICODE
#define RegEnumValue  RegEnumValueW
#else
#define RegEnumValue  RegEnumValueA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegFlushKey (
    __in HKEY hKey
    );

WINADVAPI
LSTATUS
APIENTRY
RegGetKeySecurity (
    __in HKEY hKey,
    __in SECURITY_INFORMATION SecurityInformation,
    __out_bcount_opt(*lpcbSecurityDescriptor) PSECURITY_DESCRIPTOR pSecurityDescriptor,
    __inout LPDWORD lpcbSecurityDescriptor
    );

WINADVAPI
LSTATUS
APIENTRY
RegLoadKeyA (
    __in HKEY    hKey,
    __in_opt LPCSTR  lpSubKey,
    __in LPCSTR  lpFile
    );
WINADVAPI
LSTATUS
APIENTRY
RegLoadKeyW (
    __in HKEY    hKey,
    __in_opt LPCWSTR  lpSubKey,
    __in LPCWSTR  lpFile
    );
#ifdef UNICODE
#define RegLoadKey  RegLoadKeyW
#else
#define RegLoadKey  RegLoadKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegNotifyChangeKeyValue (
    __in HKEY hKey,
    __in BOOL bWatchSubtree,
    __in DWORD dwNotifyFilter,
    __in_opt HANDLE hEvent,
    __in BOOL fAsynchronous
    );

WINADVAPI
LSTATUS
APIENTRY
RegOpenKeyA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __out PHKEY phkResult
    );
WINADVAPI
LSTATUS
APIENTRY
RegOpenKeyW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __out PHKEY phkResult
    );
#ifdef UNICODE
#define RegOpenKey  RegOpenKeyW
#else
#define RegOpenKey  RegOpenKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegOpenKeyExA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __in_opt DWORD ulOptions,
    __in REGSAM samDesired,
    __out PHKEY phkResult
    );
WINADVAPI
LSTATUS
APIENTRY
RegOpenKeyExW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __in_opt DWORD ulOptions,
    __in REGSAM samDesired,
    __out PHKEY phkResult
    );
#ifdef UNICODE
#define RegOpenKeyEx  RegOpenKeyExW
#else
#define RegOpenKeyEx  RegOpenKeyExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegOpenKeyTransactedA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __in_opt DWORD ulOptions,
    __in REGSAM samDesired,
    __out PHKEY phkResult,
    __in        HANDLE hTransaction,
    __reserved PVOID  pExtendedParemeter
    );
WINADVAPI
LSTATUS
APIENTRY
RegOpenKeyTransactedW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __in_opt DWORD ulOptions,
    __in REGSAM samDesired,
    __out PHKEY phkResult,
    __in        HANDLE hTransaction,
    __reserved PVOID  pExtendedParemeter
    );
#ifdef UNICODE
#define RegOpenKeyTransacted  RegOpenKeyTransactedW
#else
#define RegOpenKeyTransacted  RegOpenKeyTransactedA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegQueryInfoKeyA (
    __in HKEY hKey,
    __out_ecount_part_opt(*lpcchClass, *lpcchClass + 1) LPSTR lpClass,
    __inout_opt LPDWORD lpcchClass,
    __reserved LPDWORD lpReserved,
    __out_opt LPDWORD lpcSubKeys,
    __out_opt LPDWORD lpcbMaxSubKeyLen,
    __out_opt LPDWORD lpcbMaxClassLen,
    __out_opt LPDWORD lpcValues,
    __out_opt LPDWORD lpcbMaxValueNameLen,
    __out_opt LPDWORD lpcbMaxValueLen,
    __out_opt LPDWORD lpcbSecurityDescriptor,
    __out_opt PFILETIME lpftLastWriteTime
    );
WINADVAPI
LSTATUS
APIENTRY
RegQueryInfoKeyW (
    __in HKEY hKey,
    __out_ecount_part_opt(*lpcchClass, *lpcchClass + 1) LPWSTR lpClass,
    __inout_opt LPDWORD lpcchClass,
    __reserved LPDWORD lpReserved,
    __out_opt LPDWORD lpcSubKeys,
    __out_opt LPDWORD lpcbMaxSubKeyLen,
    __out_opt LPDWORD lpcbMaxClassLen,
    __out_opt LPDWORD lpcValues,
    __out_opt LPDWORD lpcbMaxValueNameLen,
    __out_opt LPDWORD lpcbMaxValueLen,
    __out_opt LPDWORD lpcbSecurityDescriptor,
    __out_opt PFILETIME lpftLastWriteTime
    );
#ifdef UNICODE
#define RegQueryInfoKey  RegQueryInfoKeyW
#else
#define RegQueryInfoKey  RegQueryInfoKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegQueryValueA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __out_bcount_part_opt(*lpcbData, *lpcbData) __out_data_source(REGISTRY) LPSTR lpData,
    __inout_opt PLONG lpcbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegQueryValueW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __out_bcount_part_opt(*lpcbData, *lpcbData) __out_data_source(REGISTRY) LPWSTR lpData,
    __inout_opt PLONG lpcbData
    );
#ifdef UNICODE
#define RegQueryValue  RegQueryValueW
#else
#define RegQueryValue  RegQueryValueA
#endif // !UNICODE

#if(WINVER >= 0x0400)

WINADVAPI
LSTATUS
APIENTRY
RegQueryMultipleValuesA (
    __in HKEY hKey,
    __out_ecount(num_vals) PVALENTA val_list,
    __in DWORD num_vals,
    __out_bcount_part_opt(*ldwTotsize, *ldwTotsize) __out_data_source(REGISTRY) LPSTR lpValueBuf,
    __inout_opt LPDWORD ldwTotsize
    );
WINADVAPI
LSTATUS
APIENTRY
RegQueryMultipleValuesW (
    __in HKEY hKey,
    __out_ecount(num_vals) PVALENTW val_list,
    __in DWORD num_vals,
    __out_bcount_part_opt(*ldwTotsize, *ldwTotsize) __out_data_source(REGISTRY) LPWSTR lpValueBuf,
    __inout_opt LPDWORD ldwTotsize
    );
#ifdef UNICODE
#define RegQueryMultipleValues  RegQueryMultipleValuesW
#else
#define RegQueryMultipleValues  RegQueryMultipleValuesA
#endif // !UNICODE
#endif /* WINVER >= 0x0400 */

WINADVAPI
LSTATUS
APIENTRY
RegQueryValueExA (
    __in HKEY hKey,
    __in_opt LPCSTR lpValueName,
    __reserved LPDWORD lpReserved,
    __out_opt LPDWORD lpType,
    __out_bcount_part_opt(*lpcbData, *lpcbData) __out_data_source(REGISTRY) LPBYTE lpData,
    __inout_opt LPDWORD lpcbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegQueryValueExW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpValueName,
    __reserved LPDWORD lpReserved,
    __out_opt LPDWORD lpType,
    __out_bcount_part_opt(*lpcbData, *lpcbData) __out_data_source(REGISTRY) LPBYTE lpData,
    __inout_opt LPDWORD lpcbData
    );
#ifdef UNICODE
#define RegQueryValueEx  RegQueryValueExW
#else
#define RegQueryValueEx  RegQueryValueExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegReplaceKeyA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __in LPCSTR lpNewFile,
    __in LPCSTR lpOldFile
    );
WINADVAPI
LSTATUS
APIENTRY
RegReplaceKeyW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __in LPCWSTR lpNewFile,
    __in LPCWSTR lpOldFile
    );
#ifdef UNICODE
#define RegReplaceKey  RegReplaceKeyW
#else
#define RegReplaceKey  RegReplaceKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegRestoreKeyA (
    __in HKEY hKey,
    __in LPCSTR lpFile,
    __in DWORD dwFlags
    );
WINADVAPI
LSTATUS
APIENTRY
RegRestoreKeyW (
    __in HKEY hKey,
    __in LPCWSTR lpFile,
    __in DWORD dwFlags
    );
#ifdef UNICODE
#define RegRestoreKey  RegRestoreKeyW
#else
#define RegRestoreKey  RegRestoreKeyA
#endif // !UNICODE

#if(WINVER >= 0x0600)

WINADVAPI
LSTATUS
APIENTRY
RegRenameKey(
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKeyName,
    __in LPCWSTR lpNewKeyName
    );

#endif /* WINVER >= 0x0600 */

WINADVAPI
LSTATUS
APIENTRY
RegSaveKeyA (
    __in HKEY hKey,
    __in LPCSTR lpFile,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
WINADVAPI
LSTATUS
APIENTRY
RegSaveKeyW (
    __in HKEY hKey,
    __in LPCWSTR lpFile,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes
    );
#ifdef UNICODE
#define RegSaveKey  RegSaveKeyW
#else
#define RegSaveKey  RegSaveKeyA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegSetKeySecurity (
    __in HKEY hKey,
    __in SECURITY_INFORMATION SecurityInformation,
    __in PSECURITY_DESCRIPTOR pSecurityDescriptor
    );

WINADVAPI
LSTATUS
APIENTRY
RegSetValueA (
    __in HKEY hKey,
    __in_opt LPCSTR lpSubKey,
    __in DWORD dwType,
    __in_bcount_opt(cbData) LPCSTR lpData,
    __in DWORD cbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegSetValueW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpSubKey,
    __in DWORD dwType,
    __in_bcount_opt(cbData) LPCWSTR lpData,
    __in DWORD cbData
    );
#ifdef UNICODE
#define RegSetValue  RegSetValueW
#else
#define RegSetValue  RegSetValueA
#endif // !UNICODE


WINADVAPI
LSTATUS
APIENTRY
RegSetValueExA (
    __in HKEY hKey,
    __in_opt LPCSTR lpValueName,
    __reserved DWORD Reserved,
    __in DWORD dwType,
    __in_bcount_opt(cbData) CONST BYTE* lpData,
    __in DWORD cbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegSetValueExW (
    __in HKEY hKey,
    __in_opt LPCWSTR lpValueName,
    __reserved DWORD Reserved,
    __in DWORD dwType,
    __in_bcount_opt(cbData) CONST BYTE* lpData,
    __in DWORD cbData
    );
#ifdef UNICODE
#define RegSetValueEx  RegSetValueExW
#else
#define RegSetValueEx  RegSetValueExA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegUnLoadKeyA (
    __in HKEY    hKey,
    __in_opt LPCSTR lpSubKey
    );
WINADVAPI
LSTATUS
APIENTRY
RegUnLoadKeyW (
    __in HKEY    hKey,
    __in_opt LPCWSTR lpSubKey
    );
#ifdef UNICODE
#define RegUnLoadKey  RegUnLoadKeyW
#else
#define RegUnLoadKey  RegUnLoadKeyA
#endif // !UNICODE

//
// Utils wrappers
//
#if _WIN32_WINNT >= 0x0600

WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyValueA (
    __in      HKEY     hKey,
    __in_opt  LPCSTR lpSubKey,
    __in_opt  LPCSTR lpValueName
    );
WINADVAPI
LSTATUS
APIENTRY
RegDeleteKeyValueW (
    __in      HKEY     hKey,
    __in_opt  LPCWSTR lpSubKey,
    __in_opt  LPCWSTR lpValueName
    );
#ifdef UNICODE
#define RegDeleteKeyValue  RegDeleteKeyValueW
#else
#define RegDeleteKeyValue  RegDeleteKeyValueA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegSetKeyValueA (
    __in        HKEY     hKey,
    __in_opt    LPCSTR  lpSubKey,
    __in_opt    LPCSTR  lpValueName,
    __in        DWORD    dwType,
    __in_bcount_opt(cbData) LPCVOID  lpData,
    __in        DWORD    cbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegSetKeyValueW (
    __in        HKEY     hKey,
    __in_opt    LPCWSTR  lpSubKey,
    __in_opt    LPCWSTR  lpValueName,
    __in        DWORD    dwType,
    __in_bcount_opt(cbData) LPCVOID  lpData,
    __in        DWORD    cbData
    );
#ifdef UNICODE
#define RegSetKeyValue  RegSetKeyValueW
#else
#define RegSetKeyValue  RegSetKeyValueA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegDeleteTreeA (
    __in        HKEY     hKey,
    __in_opt    LPCSTR  lpSubKey
    );
WINADVAPI
LSTATUS
APIENTRY
RegDeleteTreeW (
    __in        HKEY     hKey,
    __in_opt    LPCWSTR  lpSubKey
    );
#ifdef UNICODE
#define RegDeleteTree  RegDeleteTreeW
#else
#define RegDeleteTree  RegDeleteTreeA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegCopyTreeA (
    __in        HKEY     hKeySrc,
    __in_opt    LPCSTR  lpSubKey,
    __in        HKEY     hKeyDest
    );
WINADVAPI
LSTATUS
APIENTRY
RegCopyTreeW (
    __in        HKEY     hKeySrc,
    __in_opt    LPCWSTR  lpSubKey,
    __in        HKEY     hKeyDest
    );
#ifdef UNICODE
#define RegCopyTree  RegCopyTreeW
#else
#define RegCopyTree  RegCopyTreeA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegGetValueA (
    __in HKEY    hkey,
    __in_opt LPCSTR  lpSubKey,
    __in_opt LPCSTR  lpValue,
    __in_opt DWORD    dwFlags,
    __out_opt LPDWORD pdwType,
    __out_bcount_part_opt(*pcbData,*pcbData) PVOID   pvData,
    __inout_opt LPDWORD pcbData
    );
WINADVAPI
LSTATUS
APIENTRY
RegGetValueW (
    __in HKEY    hkey,
    __in_opt LPCWSTR  lpSubKey,
    __in_opt LPCWSTR  lpValue,
    __in_opt DWORD    dwFlags,
    __out_opt LPDWORD pdwType,
    __out_bcount_part_opt(*pcbData,*pcbData) PVOID   pvData,
    __inout_opt LPDWORD pcbData
    );
#ifdef UNICODE
#define RegGetValue  RegGetValueW
#else
#define RegGetValue  RegGetValueA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegLoadMUIStringA (
                    __in                    HKEY        hKey,
                    __in_opt                LPCSTR    pszValue,
                    __out_bcount_opt(cbOutBuf)  LPSTR     pszOutBuf,
                    __in                    DWORD       cbOutBuf,
                    __out_opt               LPDWORD     pcbData,
                    __in                    DWORD       Flags,   
                    __in_opt                LPCSTR    pszDirectory
                    );
WINADVAPI
LSTATUS
APIENTRY
RegLoadMUIStringW (
                    __in                    HKEY        hKey,
                    __in_opt                LPCWSTR    pszValue,
                    __out_bcount_opt(cbOutBuf)  LPWSTR     pszOutBuf,
                    __in                    DWORD       cbOutBuf,
                    __out_opt               LPDWORD     pcbData,
                    __in                    DWORD       Flags,   
                    __in_opt                LPCWSTR    pszDirectory
                    );
#ifdef UNICODE
#define RegLoadMUIString  RegLoadMUIStringW
#else
#define RegLoadMUIString  RegLoadMUIStringA
#endif // !UNICODE


WINADVAPI
LSTATUS
APIENTRY
RegLoadAppKeyA (
        __in        LPCSTR    lpFile,
        __out       PHKEY       phkResult,
        __in        REGSAM      samDesired, 
        __in        DWORD       dwOptions,
        __reserved  DWORD       Reserved
    );
WINADVAPI
LSTATUS
APIENTRY
RegLoadAppKeyW (
        __in        LPCWSTR    lpFile,
        __out       PHKEY       phkResult,
        __in        REGSAM      samDesired, 
        __in        DWORD       dwOptions,
        __reserved  DWORD       Reserved
    );
#ifdef UNICODE
#define RegLoadAppKey  RegLoadAppKeyW
#else
#define RegLoadAppKey  RegLoadAppKeyA
#endif // !UNICODE

#endif // _WIN32_WINNT >= 0x0600

//
// Remoteable System Shutdown APIs
//

__drv_preferredFunction("InitiateSystemShutdownEx", "Legacy API. Rearchitect to avoid Reboot")
WINADVAPI
BOOL
APIENTRY
InitiateSystemShutdownA(
    __in_opt LPSTR lpMachineName,
    __in_opt LPSTR lpMessage,
    __in DWORD dwTimeout,
    __in BOOL bForceAppsClosed,
    __in BOOL bRebootAfterShutdown
    );
__drv_preferredFunction("InitiateSystemShutdownEx", "Legacy API. Rearchitect to avoid Reboot")
WINADVAPI
BOOL
APIENTRY
InitiateSystemShutdownW(
    __in_opt LPWSTR lpMachineName,
    __in_opt LPWSTR lpMessage,
    __in DWORD dwTimeout,
    __in BOOL bForceAppsClosed,
    __in BOOL bRebootAfterShutdown
    );
#ifdef UNICODE
#define InitiateSystemShutdown  InitiateSystemShutdownW
#else
#define InitiateSystemShutdown  InitiateSystemShutdownA
#endif // !UNICODE


WINADVAPI
BOOL
APIENTRY
AbortSystemShutdownA(
    __in_opt LPSTR lpMachineName
    );
WINADVAPI
BOOL
APIENTRY
AbortSystemShutdownW(
    __in_opt LPWSTR lpMachineName
    );
#ifdef UNICODE
#define AbortSystemShutdown  AbortSystemShutdownW
#else
#define AbortSystemShutdown  AbortSystemShutdownA
#endif // !UNICODE

//
// defines for InitiateSystemShutdownEx reason codes
//

#include <reason.h>             // get the public reasons
//
// Then for Historical reasons support some old symbols, internal only

#define REASON_SWINSTALL    (SHTDN_REASON_MAJOR_SOFTWARE|SHTDN_REASON_MINOR_INSTALLATION)
#define REASON_HWINSTALL    (SHTDN_REASON_MAJOR_HARDWARE|SHTDN_REASON_MINOR_INSTALLATION)
#define REASON_SERVICEHANG  (SHTDN_REASON_MAJOR_SOFTWARE|SHTDN_REASON_MINOR_HUNG)
#define REASON_UNSTABLE     (SHTDN_REASON_MAJOR_SYSTEM|SHTDN_REASON_MINOR_UNSTABLE)
#define REASON_SWHWRECONF   (SHTDN_REASON_MAJOR_SOFTWARE|SHTDN_REASON_MINOR_RECONFIG)
#define REASON_OTHER        (SHTDN_REASON_MAJOR_OTHER|SHTDN_REASON_MINOR_OTHER)
#define REASON_UNKNOWN      SHTDN_REASON_UNKNOWN
#define REASON_LEGACY_API   SHTDN_REASON_LEGACY_API
#define REASON_PLANNED_FLAG SHTDN_REASON_FLAG_PLANNED

//
// MAX Shutdown TimeOut == 10 Years in seconds
//
#define MAX_SHUTDOWN_TIMEOUT (10*365*24*60*60)

__drv_preferredFunction("a design alternative", "Rearchitect to avoid Reboot") 
__drv_when(((dwReason==0 && lpMessage==0)) || dwReason>=0xd0000000, 
    __drv_reportError("Requires a valid dwReason or lpMessage"))
WINADVAPI
BOOL
APIENTRY
InitiateSystemShutdownExA(
    __in_opt LPSTR lpMachineName,
    __in_opt LPSTR lpMessage,
    __in DWORD dwTimeout,
    __in BOOL bForceAppsClosed,
    __in BOOL bRebootAfterShutdown,
    __in DWORD dwReason
    );
__drv_preferredFunction("a design alternative", "Rearchitect to avoid Reboot") 
__drv_when(((dwReason==0 && lpMessage==0)) || dwReason>=0xd0000000, 
    __drv_reportError("Requires a valid dwReason or lpMessage"))
WINADVAPI
BOOL
APIENTRY
InitiateSystemShutdownExW(
    __in_opt LPWSTR lpMachineName,
    __in_opt LPWSTR lpMessage,
    __in DWORD dwTimeout,
    __in BOOL bForceAppsClosed,
    __in BOOL bRebootAfterShutdown,
    __in DWORD dwReason
    );
#ifdef UNICODE
#define InitiateSystemShutdownEx  InitiateSystemShutdownExW
#else
#define InitiateSystemShutdownEx  InitiateSystemShutdownExA
#endif // !UNICODE

//
// Shutdown flags
//

#define SHUTDOWN_FORCE_OTHERS           0x00000001
#define SHUTDOWN_FORCE_SELF             0x00000002
#define SHUTDOWN_RESTART                0x00000004
#define SHUTDOWN_POWEROFF               0x00000008
#define SHUTDOWN_NOREBOOT               0x00000010
#define SHUTDOWN_GRACE_OVERRIDE         0x00000020
#define SHUTDOWN_INSTALL_UPDATES        0x00000040
#define SHUTDOWN_RESTARTAPPS            0x00000080
#define SHUTDOWN_SKIP_SVC_PRESHUTDOWN   0x00000100


WINADVAPI
DWORD
APIENTRY
InitiateShutdownA(
    __in_opt LPSTR lpMachineName,
    __in_opt LPSTR lpMessage,
    __in     DWORD dwGracePeriod,
    __in     DWORD dwShutdownFlags,
    __in     DWORD dwReason
    );
WINADVAPI
DWORD
APIENTRY
InitiateShutdownW(
    __in_opt LPWSTR lpMachineName,
    __in_opt LPWSTR lpMessage,
    __in     DWORD dwGracePeriod,
    __in     DWORD dwShutdownFlags,
    __in     DWORD dwReason
    );
#ifdef UNICODE
#define InitiateShutdown  InitiateShutdownW
#else
#define InitiateShutdown  InitiateShutdownA
#endif // !UNICODE

WINADVAPI
LSTATUS
APIENTRY
RegSaveKeyExA (
    __in HKEY hKey,
    __in LPCSTR lpFile,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    __in DWORD Flags
    );
WINADVAPI
LSTATUS
APIENTRY
RegSaveKeyExW (
    __in HKEY hKey,
    __in LPCWSTR lpFile,
    __in_opt CONST LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    __in DWORD Flags
    );
#ifdef UNICODE
#define RegSaveKeyEx  RegSaveKeyExW
#else
#define RegSaveKeyEx  RegSaveKeyExA
#endif // !UNICODE

#ifdef __cplusplus
}
#endif


#endif // _WINREG_


