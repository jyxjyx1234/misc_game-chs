//+---------------------------------------------------------------------------
//
//  Microsoft Windows
//  Copyright (C) Microsoft Corporation, 1992-1999.
//
//  File:       winefs.h
//
//  Contents:   EFS Data and prototypes.
//
//----------------------------------------------------------------------------

#ifndef __WINEFS_H__
#define __WINEFS_H__

// winefs.h was not available at all pre-W2K
#if (NTDDI_VERSION >= NTDDI_WIN2K)


#if _MSC_VER > 1000
#pragma once
#endif


#ifdef __cplusplus
extern "C" {
#endif


#define WINEFS_SETUSERKEY_SET_CAPABILITIES      0x00000001

//+---------------------------------------------------------------------------------/
//                                                                                  /
//                                                                                  /
//                          Data Structures                                         /
//                                                                                  /
//                                                                                  /
//----------------------------------------------------------------------------------/

// ALG_ID define is used as part of EFS_KEY_INFO (not available pre-WXP)
#if (NTDDI_VERSION >= NTDDI_WINXP)

#ifndef ALGIDDEF
#define ALGIDDEF
typedef unsigned int ALG_ID;
#endif

#endif

//
//  Encoded Certificate
//


typedef struct _CERTIFICATE_BLOB {

    DWORD   dwCertEncodingType;

#ifdef MIDL_PASS
    [range(0,32768)] 
#endif // MIDL_PASS

    DWORD   cbData;

#ifdef MIDL_PASS
    [size_is(cbData)]
#endif // MIDL_PASS
    PBYTE    pbData;

} EFS_CERTIFICATE_BLOB, *PEFS_CERTIFICATE_BLOB;

//
//  Certificate Hash
//

typedef struct _EFS_HASH_BLOB {

#ifdef MIDL_PASS
    [range(0,100)] 
#endif // MIDL_PASS
    DWORD   cbData;

#ifdef MIDL_PASS
    [size_is(cbData)]
#endif // MIDL_PASS
    PBYTE    pbData;

} EFS_HASH_BLOB, *PEFS_HASH_BLOB;


// EFS_RPC_BLOB was not available pre-WXP
#if (NTDDI_VERSION >= NTDDI_WINXP)

//
//  RPC blob
//

typedef struct _EFS_RPC_BLOB {

#ifdef MIDL_PASS
    [range(0,266240)] 
#endif // MIDL_PASS
    DWORD   cbData;

#ifdef MIDL_PASS
    [size_is(cbData)]
#endif // MIDL_PASS
    PBYTE    pbData;

} EFS_RPC_BLOB, *PEFS_RPC_BLOB;

#endif // #if (NTDDI_VERSION >= NTDDI_WINXP)

// EFS_PIN_BLOB was not available pre-LH
#if (NTDDI_VERSION >= NTDDI_VISTA) 

typedef struct _EFS_PIN_BLOB {
    
#ifdef MIDL_PASS
    [range(0,8)] 
#endif // MIDL_PASS  
    DWORD   cbPadding; 

#ifdef MIDL_PASS
    [range(0,2048)] 
#endif // MIDL_PASS
    DWORD   cbData;

#ifdef MIDL_PASS
    [size_is(cbData+cbPadding)]
#endif // MIDL_PASS
    PBYTE    pbData;

} EFS_PIN_BLOB, *PEFS_PIN_BLOB;

#endif // #if (NTDDI_VERSION >= NTDDI_VISTA) 


// EFS_KEY_INFO was not available pre-WXP
#if (NTDDI_VERSION >= NTDDI_WINXP)

typedef struct _EFS_KEY_INFO {

    DWORD   dwVersion;
    ULONG   Entropy;
    ALG_ID  Algorithm;
    ULONG   KeyLength;
    
} EFS_KEY_INFO, *PEFS_KEY_INFO;

#endif // #if (NTDDI_VERSION >= NTDDI_WINXP)

// EFS_COMPATIBILITY_INFO was not available pre-Windows 7
#if (NTDDI_VERSION >= NTDDI_WIN7)

typedef struct _EFS_COMPATIBILITY_INFO {

    DWORD EfsVersion;
    
} EFS_COMPATIBILITY_INFO, *PEFS_COMPATIBILITY_INFO;

#endif // #if (NTDDI_VERSION >= NTDDI_WIN7)


// EFS_(EN/DE)CRYPTION_STATUS_INFO was not available pre-LH
#if (NTDDI_VERSION >= NTDDI_VISTA) 

typedef struct _EFS_DECRYPTION_STATUS_INFO { 

    DWORD   dwDecryptionError;
    DWORD   dwHashOffset;
    DWORD   cbHash;

} EFS_DECRYPTION_STATUS_INFO, *PEFS_DECRYPTION_STATUS_INFO;

typedef struct _EFS_ENCRYPTION_STATUS_INFO { 

    BOOL    bHasCurrentKey;
    DWORD   dwEncryptionError;

} EFS_ENCRYPTION_STATUS_INFO, *PEFS_ENCRYPTION_STATUS_INFO;

#endif // #if (NTDDI_VERSION >= NTDDI_VISTA) 

//
// Input to add a user to an encrypted file
//

typedef struct _ENCRYPTION_CERTIFICATE {
    DWORD cbTotalLength;
    SID * pUserSid;
    PEFS_CERTIFICATE_BLOB pCertBlob;
} ENCRYPTION_CERTIFICATE, *PENCRYPTION_CERTIFICATE;

#define MAX_SID_SIZE 256


typedef struct _ENCRYPTION_CERTIFICATE_HASH {
    DWORD cbTotalLength;
    SID * pUserSid;
    PEFS_HASH_BLOB  pHash;

#ifdef MIDL_PASS
    [string]
#endif // MIDL_PASS
    LPWSTR lpDisplayInformation;

} ENCRYPTION_CERTIFICATE_HASH, *PENCRYPTION_CERTIFICATE_HASH;

typedef struct _ENCRYPTION_CERTIFICATE_HASH_LIST {
#ifdef MIDL_PASS
    [range(0,500)] 
#endif // MIDL_PASS
    DWORD nCert_Hash;
#ifdef MIDL_PASS
    [size_is(nCert_Hash)]
#endif // MIDL_PASS
     PENCRYPTION_CERTIFICATE_HASH * pUsers;
} ENCRYPTION_CERTIFICATE_HASH_LIST, *PENCRYPTION_CERTIFICATE_HASH_LIST;



typedef struct _ENCRYPTION_CERTIFICATE_LIST {    
#ifdef MIDL_PASS
    [range(0,500)] 
#endif // MIDL_PASS
    DWORD nUsers;
#ifdef MIDL_PASS
    [size_is(nUsers)]
#endif // MIDL_PASS
     PENCRYPTION_CERTIFICATE * pUsers;
} ENCRYPTION_CERTIFICATE_LIST, *PENCRYPTION_CERTIFICATE_LIST;

// ENCRYPTED_FILE_METADATA_SIGNATURE was not available pre-LH
#if (NTDDI_VERSION >= NTDDI_VISTA) 

#define		EFS_METADATA_ADD_USER		0x00000001
#define		EFS_METADATA_REMOVE_USER	0x00000002
#define		EFS_METADATA_REPLACE_USER	0x00000004
#define		EFS_METADATA_GENERAL_OP		0x00000008

typedef struct _ENCRYPTED_FILE_METADATA_SIGNATURE { 

	DWORD								dwEfsAccessType;	
	PENCRYPTION_CERTIFICATE_HASH_LIST	pCertificatesAdded;
    PENCRYPTION_CERTIFICATE				pEncryptionCertificate;
    PEFS_RPC_BLOB						pEfsStreamSignature;

} ENCRYPTED_FILE_METADATA_SIGNATURE, *PENCRYPTED_FILE_METADATA_SIGNATURE;

#endif // #if (NTDDI_VERSION >= NTDDI_VISTA) 

//+---------------------------------------------------------------------------------/
//                                                                                  /
//                                                                                  /
//                               Prototypes                                         /
//                                                                                  /
//                                                                                  /
//----------------------------------------------------------------------------------/


WINADVAPI
DWORD
WINAPI
QueryUsersOnEncryptedFile(
    __in            LPCWSTR                                 lpFileName,
    __deref_out     PENCRYPTION_CERTIFICATE_HASH_LIST      *pUsers
    );


WINADVAPI
DWORD
WINAPI
QueryRecoveryAgentsOnEncryptedFile(
    __in            LPCWSTR                                 lpFileName,
    __deref_out     PENCRYPTION_CERTIFICATE_HASH_LIST      *pRecoveryAgents
    );


WINADVAPI
DWORD
WINAPI
RemoveUsersFromEncryptedFile(
    __in    LPCWSTR                             lpFileName,
    __in    PENCRYPTION_CERTIFICATE_HASH_LIST   pHashes
    );

WINADVAPI
DWORD
WINAPI
AddUsersToEncryptedFile(
    __in    LPCWSTR                         lpFileName,
    __in    PENCRYPTION_CERTIFICATE_LIST    pEncryptionCertificates
    );

//
// SetUserFileEncryptionKey signature change in Vista to allow NULL certificate
//

#if (NTDDI_VERSION >= NTDDI_VISTA)

WINADVAPI
DWORD
WINAPI
SetUserFileEncryptionKey(
    __in_opt    PENCRYPTION_CERTIFICATE     pEncryptionCertificate
    );

#else

WINADVAPI
DWORD
WINAPI
SetUserFileEncryptionKey(
    __in    PENCRYPTION_CERTIFICATE     pEncryptionCertificate
    );

#endif

// SetUserFileEncryptionKeyEx was not available pre-LH
#if (NTDDI_VERSION >= NTDDI_VISTA) 

WINADVAPI
DWORD
WINAPI
SetUserFileEncryptionKeyEx(
    __in_opt        PENCRYPTION_CERTIFICATE     pEncryptionCertificate,
                    DWORD                       dwCapabilities, 
                    DWORD                       dwFlags,
    __reserved      LPVOID                      pvReserved
    );

#endif // #if (NTDDI_VERSION >= NTDDI_VISTA) 

WINADVAPI
VOID
WINAPI
FreeEncryptionCertificateHashList(
    __in    PENCRYPTION_CERTIFICATE_HASH_LIST       pUsers
    );

WINADVAPI
BOOL
WINAPI
EncryptionDisable(
    __in LPCWSTR DirPath,
         BOOL        Disable
    );



// DuplicateEncryptionInfoFile signature changed
// in WS03 to use a CONST SECURITY_ATTRIBUTES structure
#if (NTDDI_VERSION >= NTDDI_WS03)

WINADVAPI
DWORD
WINAPI
DuplicateEncryptionInfoFile(
     __in       LPCWSTR SrcFileName,
     __in       LPCWSTR DstFileName, 
                DWORD                           dwCreationDistribution, 
                DWORD                           dwAttributes, 
     __in_opt   CONST LPSECURITY_ATTRIBUTES     lpSecurityAttributes
     );

// DuplicateEncryptionInfoFile didn't exist pre-WXP
#elif (NTDDI_VERSION >= NTDDI_WINXP)


WINADVAPI
DWORD
WINAPI
DuplicateEncryptionInfoFile(
     __in       LPCWSTR SrcFileName,
     __in       LPCWSTR DstFileName, 
                DWORD                   dwCreationDistribution, 
                DWORD                   dwAttributes, 
     __in_opt   LPSECURITY_ATTRIBUTES   lpSecurityAttributes
     );


#endif 

// *EncryptedFileMetadata routines were not available pre-LH
#if (NTDDI_VERSION >= NTDDI_VISTA) 

__declspec(deprecated)
WINADVAPI
DWORD
WINAPI
GetEncryptedFileMetadata(
    __in                                LPCWSTR     lpFileName,
    __out                               PDWORD      pcbMetadata, 
    __deref_out_bcount(*pcbMetadata)    PBYTE      *ppbMetadata
    );

__declspec(deprecated)
WINADVAPI
DWORD
WINAPI
SetEncryptedFileMetadata(
    __in        LPCWSTR                             lpFileName,
    __in_opt    PBYTE                               pbOldMetadata,
    __in        PBYTE                               pbNewMetadata,
    __in        PENCRYPTION_CERTIFICATE_HASH        pOwnerHash,
                DWORD                               dwOperation,
    __in_opt    PENCRYPTION_CERTIFICATE_HASH_LIST   pCertificatesAdded
    ); 
    
__declspec(deprecated)
WINADVAPI
VOID
WINAPI
FreeEncryptedFileMetadata(
    __in    PBYTE   pbMetadata
    ); 

#endif // #if (NTDDI_VERSION >= NTDDI_VISTA) 

#ifdef __cplusplus
}       // Balance extern "C" above
#endif

#endif // #if (NTDDI_VERSION >= NTDDI_WIN2K)

#endif // __WINEFS_H__

