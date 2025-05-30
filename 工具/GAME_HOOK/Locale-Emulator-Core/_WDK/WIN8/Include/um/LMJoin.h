/*++

Copyright (c) 1998-1999  Microsoft Corporation

Module Name:

    netsetup.h

Abstract:

    Definitions and prototypes for the Net setup apis, for joining/unjoinging
    domains and promoting/demoting servers

Environment:

    User Mode - Win32
    Portable to any flat, 32-bit environment.  (Uses Win32 typedefs.)
    Requires ANSI C extensions: slash-slash comments, long external names.

Notes:

--*/

#ifndef __LMJOIN_H__
#define __LMJOIN_H__

#if _MSC_VER > 1000
#pragma once
#endif
#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#ifdef __cplusplus
extern "C" {
#endif

//
// Types of name that can be validated
//
typedef enum  _NETSETUP_NAME_TYPE {

    NetSetupUnknown = 0,
    NetSetupMachine,
    NetSetupWorkgroup,
    NetSetupDomain,
    NetSetupNonExistentDomain,
#if(_WIN32_WINNT >= 0x0500)
    NetSetupDnsMachine
#endif

} NETSETUP_NAME_TYPE, *PNETSETUP_NAME_TYPE;


//
// Status of a workstation
//
typedef enum _NETSETUP_JOIN_STATUS {

    NetSetupUnknownStatus = 0,
    NetSetupUnjoined,
    NetSetupWorkgroupName,
    NetSetupDomainName

} NETSETUP_JOIN_STATUS, *PNETSETUP_JOIN_STATUS;

//
// Flags to determine the behavior of the join/unjoin APIs
//
#define NETSETUP_JOIN_DOMAIN    0x00000001      // If not present, workgroup is joined
#define NETSETUP_ACCT_CREATE    0x00000002      // Do the server side account creation/rename
#define NETSETUP_ACCT_DELETE    0x00000004      // Delete the account when a domain is left
#define NETSETUP_WIN9X_UPGRADE  0x00000010      // Invoked during upgrade of Windows 9x to
                                                // Windows NT
#define NETSETUP_DOMAIN_JOIN_IF_JOINED  0x00000020  // Allow the client to join a new domain
                                                // even if it is already joined to a domain
#define NETSETUP_JOIN_UNSECURE  0x00000040      // Performs an unsecure join
#define NETSETUP_MACHINE_PWD_PASSED 0x00000080  // Indicates that the machine (not user) password
                                                //  is passed. Valid only for unsecure joins
#define NETSETUP_DEFER_SPN_SET  0x00000100      // Specifies that writting SPN and DnsHostName
                                                //  attributes on the computer object should be
                                                //  defered until rename that will follow join

#define NETSETUP_JOIN_DC_ACCOUNT    0x00000200  // Allow join if existing account is a DC
#define NETSETUP_JOIN_WITH_NEW_NAME 0x00000400  // Check for computer name change
#define NETSETUP_JOIN_READONLY      0x00000800  // Perform join using a pre-created account w/o requiring a writable DC
#define NETSETUP_DNS_NAME_CHANGES_ONLY 0x00001000      // When performing machine rename only update DNS based names

#define NETSETUP_INSTALL_INVOCATION 0x00040000  // The APIs were invoked during install

#define NETSETUP_AMBIGUOUS_DC       0x00001000  // When joiing the domain don't try to set the
                                                // preferred DC in the registry.
#define NETSETUP_NO_NETLOGON_CACHE  0x00002000  // Don't create the netlogon cache
#define NETSETUP_DONT_CONTROL_SERVICES 0x00004000 // Don't force netlogon to start
#define NETSETUP_SET_MACHINE_NAME   0x00008000  // For offline join only, set target machine hostname and NB name.
#define NETSETUP_FORCE_SPN_SET      0x00010000  // Override other settings during domain join
                                                // and attempt to set the SPN.
#define NETSETUP_NO_ACCT_REUSE      0x00020000  // Do not reuse an existing account

#define NETSETUP_IGNORE_UNSUPPORTED_FLAGS  0x10000000  // If this bit is set, unrecognized flags
                                                       //  will be ignored by the NetJoin API and
                                                       //  the API will behave as if the flags
                                                       //  were not set.

#define NETSETUP_VALID_UNJOIN_FLAGS (NETSETUP_ACCT_DELETE | NETSETUP_IGNORE_UNSUPPORTED_FLAGS | NETSETUP_JOIN_DC_ACCOUNT)

// The following flags are used when the system is processing information left from a prior offline
// join.  We want to force DC discovery and we don't want to create the netlogon cache.  We also
// don't want to immediately force netlogon to start, let it start on its own.
#define NETSETUP_PROCESS_OFFLINE_FLAGS ( NETSETUP_JOIN_DOMAIN |                     \
                                         NETSETUP_DOMAIN_JOIN_IF_JOINED |           \
                                         NETSETUP_JOIN_WITH_NEW_NAME |              \
                                         NETSETUP_DONT_CONTROL_SERVICES |           \
                                         NETSETUP_MACHINE_PWD_PASSED)

//
// 0x80000000 is reserved for internal use only
//


//
// Joins a machine to the domain.
//
NET_API_STATUS
NET_API_FUNCTION
NetJoinDomain(
    _In_opt_ LPCWSTR lpServer,
    _In_ LPCWSTR lpDomain,
    _In_opt_ LPCWSTR lpMachineAccountOU,
    _In_opt_ LPCWSTR lpAccount,
    _In_opt_ LPCWSTR lpPassword,
    _In_ DWORD   fJoinOptions
    );


#if(_WIN32_WINNT >= _WIN32_WINNT_WIN7)

//
// Flags to determine the behavior of NetProvisionComputerAccount and
// NetCreateProvisioningPackage.
//

// The caller requires account creation by privilege, this option will cause a retry
// on failure using down level account creation APIs.
//
#define NETSETUP_PROVISION_DOWNLEVEL_PRIV_SUPPORT 0x00000001

// If the named account already exists an attempt will be made to reuse. Requires
// sufficient credentials i.e. Domain Administrator or the object owner.
//
#define NETSETUP_PROVISION_REUSE_ACCOUNT          0x00000002

// Use the default machine account password which is the machine name in lowercase.
//
#define NETSETUP_PROVISION_USE_DEFAULT_PASSWORD   0x00000004

// Do not try to find the account on any DC in the domain. This is faster but
// should only be used when the caller is certain that an account by the same
// name hasn't recently been created. Only valid when specifying the target DC.
// When the pre-requisites are met, this option allows for must faster provisioning
// useful for scenarios such as batch processing.
//
#define NETSETUP_PROVISION_SKIP_ACCOUNT_SEARCH    0x00000008

// Include root Certificate Authority certificates in provisioning package.
//
#define NETSETUP_PROVISION_ROOT_CA_CERTS          0x00000010


//
// The following are reserved for internal use.
//

// The operation is online.
// This is an internal option not available through the API.
//
#define NETSETUP_PROVISION_ONLINE_CALLER          0x40000000

// Validate the machine password only. This is an internal option not available
// through the API.
//
#define NETSETUP_PROVISION_CHECK_PWD_ONLY         0x80000000



NET_API_STATUS
NET_API_FUNCTION
NetProvisionComputerAccount(
   _In_z_          LPCWSTR lpDomain,
   _In_z_          LPCWSTR lpMachineName,
   _In_opt_z_      LPCWSTR lpMachineAccountOU,
   _In_opt_z_      LPCWSTR lpDcName,
   _In_            DWORD   dwOptions,
   _Outptr_opt_result_bytebuffer_maybenull_(*pdwProvisionBinDataSize)
                   PBYTE  *pProvisionBinData,
   _Out_opt_       DWORD  *pdwProvisionBinDataSize,
   _Outptr_opt_result_maybenull_z_
                   LPWSTR *pProvisionTextData
);

NET_API_STATUS
NET_API_FUNCTION
NetRequestOfflineDomainJoin(
    _In_reads_bytes_(cbProvisionBinDataSize) BYTE *pProvisionBinData,
    _In_    DWORD   cbProvisionBinDataSize,
    _In_    DWORD   dwOptions,
    _In_z_  LPCWSTR lpWindowsPath
);

#endif // (_WIN32_WINNT >= _WIN32_WINNT_WIN7)

#if(_WIN32_WINNT >= _WIN32_WINNT_WIN8)

#define NETSETUP_PROVISIONING_PARAMS_CURRENT_VERSION 0x00000001

typedef struct _NETSETUP_PROVISIONING_PARAMS
{
    DWORD   dwVersion;              //  _In_
    LPCWSTR lpDomain;               //  _In_z_
    LPCWSTR lpMachineName;          //  _In_z_
    LPCWSTR lpMachineAccountOU;     //  _In_opt_z_
    LPCWSTR lpDcName;               //  _In_opt_z_
    DWORD   dwProvisionOptions;     //  _In_
    LPCWSTR *aCertTemplateNames;    //  _In_reads_opt_(cCertTemplateNames)
    DWORD   cCertTemplateNames;     //  _In_
    LPCWSTR *aMachinePolicyNames;   //  _In_reads_opt_(cMachinePolicyNames)
    DWORD   cMachinePolicyNames;    //  _In_
    LPCWSTR *aMachinePolicyPaths;   //  _In_reads_opt_(cMachinePolicyPaths)
    DWORD   cMachinePolicyPaths;    //  _In_

} NETSETUP_PROVISIONING_PARAMS, *PNETSETUP_PROVISIONING_PARAMS;

NET_API_STATUS
NET_API_FUNCTION
NetCreateProvisioningPackage(
    _In_    PNETSETUP_PROVISIONING_PARAMS   pProvisioningParams,
    _Outptr_opt_result_bytebuffer_maybenull_(*pdwPackageBinDataSize)
                                    PBYTE  *ppPackageBinData,
    _Out_opt_                       DWORD  *pdwPackageBinDataSize,
    _Outptr_opt_result_maybenull_z_ LPWSTR *ppPackageTextData
    );

NET_API_STATUS
NET_API_FUNCTION
NetRequestProvisioningPackageInstall(
    _In_reads_bytes_(dwPackageBinDataSize) BYTE *pPackageBinData,
    _In_ DWORD dwPackageBinDataSize,
    _In_ DWORD dwProvisionOptions,
    _In_z_ LPCWSTR lpWindowsPath,
    _Reserved_ PVOID pvReserved
    );

#endif // (_WIN32_WINNT >= _WIN32_WINNT_WIN8)

NET_API_STATUS
NET_API_FUNCTION
NetUnjoinDomain(
    _In_opt_ LPCWSTR lpServer,
    _In_opt_ LPCWSTR lpAccount,
    _In_opt_ LPCWSTR lpPassword,
    _In_ DWORD   fUnjoinOptions
    );

NET_API_STATUS
NET_API_FUNCTION
NetRenameMachineInDomain(
    _In_opt_ LPCWSTR lpServer,
    _In_opt_ LPCWSTR lpNewMachineName,
    _In_opt_ LPCWSTR lpAccount,
    _In_opt_ LPCWSTR lpPassword,
    _In_ DWORD   fRenameOptions
    );


//
// Determine the validity of a name
//
NET_API_STATUS
NET_API_FUNCTION
NetValidateName(
    _In_opt_ LPCWSTR         lpServer,
    _In_     LPCWSTR         lpName,
    _In_opt_ LPCWSTR         lpAccount,
    _In_opt_ LPCWSTR         lpPassword,
    _In_ NETSETUP_NAME_TYPE  NameType
    );

//
// Determines whether a workstation is joined to a domain or not
//
NET_API_STATUS
NET_API_FUNCTION
NetGetJoinInformation(
    _In_opt_ LPCWSTR             lpServer,
    _Outptr_ LPWSTR             *lpNameBuffer,
    _Out_ PNETSETUP_JOIN_STATUS  BufferType
    );


//
// Determines the list of OUs that the client can create a machine account in
//
NET_API_STATUS
NET_API_FUNCTION
NetGetJoinableOUs(
    _In_ LPCWSTR lpServer,
    _In_ LPCWSTR lpDomain,
    _In_opt_ LPCWSTR lpAccount,
    _In_opt_ LPCWSTR lpPassword,
    _Out_ DWORD *OUCount,
    _Outptr_result_buffer_(*OUCount) LPWSTR **OUs
    );

#if(_WIN32_WINNT >= 0x0501)

//
// Computer rename preparation APIs
//

#define NET_IGNORE_UNSUPPORTED_FLAGS  0x01

NET_API_STATUS
NET_API_FUNCTION
NetAddAlternateComputerName(
    _In_opt_ LPCWSTR Server,
    _In_ LPCWSTR AlternateName,
    _In_opt_ LPCWSTR DomainAccount,
    _In_opt_ LPCWSTR DomainAccountPassword,
    _In_ ULONG Reserved
    );

NET_API_STATUS
NET_API_FUNCTION
NetRemoveAlternateComputerName(
    _In_opt_ LPCWSTR Server,
    _In_ LPCWSTR AlternateName,
    _In_opt_ LPCWSTR DomainAccount,
    _In_opt_ LPCWSTR DomainAccountPassword,
    _In_ ULONG Reserved
    );

NET_API_STATUS
NET_API_FUNCTION
NetSetPrimaryComputerName(
    _In_opt_ LPCWSTR Server,
    _In_ LPCWSTR PrimaryName,
    _In_opt_ LPCWSTR DomainAccount,
    _In_opt_ LPCWSTR DomainAccountPassword,
    _In_ ULONG Reserved
    );

//
// The following enumeration must be kept
// in sync with COMPUTER_NAME_TYPE defined
// in winbase.h
//

typedef enum _NET_COMPUTER_NAME_TYPE {
    NetPrimaryComputerName,
    NetAlternateComputerNames,
    NetAllComputerNames,
    NetComputerNameTypeMax
} NET_COMPUTER_NAME_TYPE, *PNET_COMPUTER_NAME_TYPE;

NET_API_STATUS
NET_API_FUNCTION
NetEnumerateComputerNames(
    _In_opt_ LPCWSTR Server,
    _In_ NET_COMPUTER_NAME_TYPE NameType,
    _In_ ULONG Reserved,
    _Out_ PDWORD EntryCount,
    _Outptr_result_buffer_(*EntryCount) LPWSTR **ComputerNames     
    );

#endif // (_WIN32_WINNT >= 0x0501)

#ifdef __cplusplus
}
#endif


#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif // __LMJOIN_H__
