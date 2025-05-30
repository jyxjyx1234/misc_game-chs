//+---------------------------------------------------------------------------
//
//  Microsoft Windows
//  Copyright (C) Microsoft Corporation, 2004.
//
//  File:       ncrypt.h
//
//  Contents:   Cryptographic API Prototypes and Definitions
//
//----------------------------------------------------------------------------

#ifndef __NCRYPT_H__
#define __NCRYPT_H__

#ifdef __cplusplus
extern "C" {
#endif

#ifndef WINAPI
#define WINAPI __stdcall
#endif

#ifndef __SECSTATUS_DEFINED__
typedef LONG SECURITY_STATUS;
#define __SECSTATUS_DEFINED__
#endif

#include <bcrypt.h>

//
// Microsoft built-in providers.
//

#define MS_KEY_STORAGE_PROVIDER         L"Microsoft Software Key Storage Provider"
#define MS_SMART_CARD_KEY_STORAGE_PROVIDER L"Microsoft Smart Card Key Storage Provider"

//
// Common algorithm identifiers.
//

#define NCRYPT_RSA_ALGORITHM            BCRYPT_RSA_ALGORITHM
#define NCRYPT_RSA_SIGN_ALGORITHM       BCRYPT_RSA_SIGN_ALGORITHM
#define NCRYPT_DH_ALGORITHM             BCRYPT_DH_ALGORITHM
#define NCRYPT_DSA_ALGORITHM            BCRYPT_DSA_ALGORITHM
#define NCRYPT_MD2_ALGORITHM            BCRYPT_MD2_ALGORITHM
#define NCRYPT_MD4_ALGORITHM            BCRYPT_MD4_ALGORITHM
#define NCRYPT_MD5_ALGORITHM            BCRYPT_MD5_ALGORITHM
#define NCRYPT_SHA1_ALGORITHM           BCRYPT_SHA1_ALGORITHM
#define NCRYPT_SHA256_ALGORITHM         BCRYPT_SHA256_ALGORITHM
#define NCRYPT_SHA384_ALGORITHM         BCRYPT_SHA384_ALGORITHM
#define NCRYPT_SHA512_ALGORITHM         BCRYPT_SHA512_ALGORITHM
#define NCRYPT_ECDSA_P256_ALGORITHM     BCRYPT_ECDSA_P256_ALGORITHM
#define NCRYPT_ECDSA_P384_ALGORITHM     BCRYPT_ECDSA_P384_ALGORITHM
#define NCRYPT_ECDSA_P521_ALGORITHM     BCRYPT_ECDSA_P521_ALGORITHM
#define NCRYPT_ECDH_P256_ALGORITHM      BCRYPT_ECDH_P256_ALGORITHM
#define NCRYPT_ECDH_P384_ALGORITHM      BCRYPT_ECDH_P384_ALGORITHM
#define NCRYPT_ECDH_P521_ALGORITHM      BCRYPT_ECDH_P521_ALGORITHM

#define NCRYPT_KEY_STORAGE_ALGORITHM            L"KEY_STORAGE"

//
// Interfaces
//

#define NCRYPT_HASH_INTERFACE                   BCRYPT_HASH_INTERFACE
#define NCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE  BCRYPT_ASYMMETRIC_ENCRYPTION_INTERFACE

#define NCRYPT_SECRET_AGREEMENT_INTERFACE       BCRYPT_SECRET_AGREEMENT_INTERFACE

#define NCRYPT_SIGNATURE_INTERFACE              BCRYPT_SIGNATURE_INTERFACE

#define NCRYPT_KEY_STORAGE_INTERFACE            0x00010001
#define NCRYPT_SCHANNEL_INTERFACE               0x00010002
#define NCRYPT_SCHANNEL_SIGNATURE_INTERFACE     0x00010003

//
// algorithm groups.
//

#define NCRYPT_RSA_ALGORITHM_GROUP      NCRYPT_RSA_ALGORITHM
#define NCRYPT_DH_ALGORITHM_GROUP       NCRYPT_DH_ALGORITHM
#define NCRYPT_DSA_ALGORITHM_GROUP      NCRYPT_DSA_ALGORITHM
#define NCRYPT_ECDSA_ALGORITHM_GROUP    L"ECDSA"
#define NCRYPT_ECDH_ALGORITHM_GROUP     L"ECDH"

//
// NCrypt generic memory descriptors
//

#define NCRYPTBUFFER_VERSION                0

#define NCRYPTBUFFER_EMPTY                  0
#define NCRYPTBUFFER_DATA                   1
#define NCRYPTBUFFER_SSL_CLIENT_RANDOM      20
#define NCRYPTBUFFER_SSL_SERVER_RANDOM      21
#define NCRYPTBUFFER_SSL_HIGHEST_VERSION    22
#define NCRYPTBUFFER_SSL_CLEAR_KEY          23
#define NCRYPTBUFFER_SSL_KEY_ARG_DATA       24

#define NCRYPTBUFFER_PKCS_OID               40
#define NCRYPTBUFFER_PKCS_ALG_OID           41
#define NCRYPTBUFFER_PKCS_ALG_PARAM         42
#define NCRYPTBUFFER_PKCS_ALG_ID            43
#define NCRYPTBUFFER_PKCS_ATTRS             44
#define NCRYPTBUFFER_PKCS_KEY_NAME          45
#define NCRYPTBUFFER_PKCS_SECRET            46

#define NCRYPTBUFFER_CERT_BLOB              47

// NCRYPT shares the same BCRYPT definitions
typedef BCryptBuffer     NCryptBuffer;
typedef BCryptBuffer*    PNCryptBuffer;
typedef BCryptBufferDesc NCryptBufferDesc;
typedef BCryptBufferDesc* PNCryptBufferDesc;

//
// NCrypt handles
//

typedef ULONG_PTR NCRYPT_HANDLE;
typedef ULONG_PTR NCRYPT_PROV_HANDLE;
typedef ULONG_PTR NCRYPT_KEY_HANDLE;
typedef ULONG_PTR NCRYPT_HASH_HANDLE;
typedef ULONG_PTR NCRYPT_SECRET_HANDLE;


//
// NCrypt API Flags
//

#define NCRYPT_NO_PADDING_FLAG      BCRYPT_PAD_NONE
#define NCRYPT_PAD_PKCS1_FLAG       BCRYPT_PAD_PKCS1  // NCryptEncrypt/Decrypt NCryptSignHash/VerifySignature
#define NCRYPT_PAD_OAEP_FLAG        BCRYPT_PAD_OAEP   // BCryptEncrypt/Decrypt
#define NCRYPT_PAD_PSS_FLAG         BCRYPT_PAD_PSS    // BCryptSignHash/VerifySignature
#define NCRYPT_NO_KEY_VALIDATION    BCRYPT_NO_KEY_VALIDATION
#define NCRYPT_MACHINE_KEY_FLAG                 0x00000020  // same as CAPI CRYPT_MACHINE_KEYSET
#define NCRYPT_SILENT_FLAG                      0x00000040  // same as CAPI CRYPT_SILENT
#define NCRYPT_OVERWRITE_KEY_FLAG               0x00000080
#define NCRYPT_WRITE_KEY_TO_LEGACY_STORE_FLAG   0x00000200
#define NCRYPT_DO_NOT_FINALIZE_FLAG             0x00000400
#define NCRYPT_PERSIST_ONLY_FLAG                0x40000000
#define NCRYPT_PERSIST_FLAG                     0x80000000
#define NCRYPT_REGISTER_NOTIFY_FLAG             0x00000001
#define NCRYPT_UNREGISTER_NOTIFY_FLAG           0x00000002


//
// Functions used to manage persisted keys.
//
__checkReturn
SECURITY_STATUS
WINAPI
NCryptOpenStorageProvider(
    __out   NCRYPT_PROV_HANDLE *phProvider,
    __in_opt LPCWSTR pszProviderName,
    __in    DWORD   dwFlags);



// AlgOperations flags for use with NCryptEnumAlgorithms()
#define NCRYPT_CIPHER_OPERATION                 BCRYPT_CIPHER_OPERATION
#define NCRYPT_HASH_OPERATION                   BCRYPT_HASH_OPERATION
#define NCRYPT_ASYMMETRIC_ENCRYPTION_OPERATION  BCRYPT_ASYMMETRIC_ENCRYPTION_OPERATION
#define NCRYPT_SECRET_AGREEMENT_OPERATION       BCRYPT_SECRET_AGREEMENT_OPERATION
#define NCRYPT_SIGNATURE_OPERATION              BCRYPT_SIGNATURE_OPERATION
#define NCRYPT_RNG_OPERATION                    BCRYPT_RNG_OPERATION

// USE EXTREME CAUTION: editing comments that contain "certenrolls_*" tokens
// could break building CertEnroll idl files:
// certenrolls_begin -- NCryptAlgorithmName
typedef struct _NCryptAlgorithmName
{
    LPWSTR  pszName;
    DWORD   dwClass;            // the CNG interface that supports this algorithm
    DWORD   dwAlgOperations;    // the types of operations supported by this algorithm
    DWORD   dwFlags;
} NCryptAlgorithmName;
// certenrolls_end

__checkReturn
SECURITY_STATUS
WINAPI
NCryptEnumAlgorithms(
    __in    NCRYPT_PROV_HANDLE hProvider,
    __in    DWORD   dwAlgOperations,
    __out   DWORD * pdwAlgCount,
    __deref_out_ecount(*pdwAlgCount) NCryptAlgorithmName **ppAlgList,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptIsAlgSupported(
    __in    NCRYPT_PROV_HANDLE hProvider,
    __in    LPCWSTR pszAlgId,
    __in    DWORD   dwFlags);



// NCryptEnumKeys flags
#define NCRYPT_MACHINE_KEY_FLAG         0x00000020

typedef struct NCryptKeyName
{
    LPWSTR  pszName;
    LPWSTR  pszAlgid;
    DWORD   dwLegacyKeySpec;
    DWORD   dwFlags;
} NCryptKeyName;

__checkReturn
SECURITY_STATUS
WINAPI
NCryptEnumKeys(
    __in    NCRYPT_PROV_HANDLE hProvider,
    __in_opt LPCWSTR pszScope,
    __deref_out NCryptKeyName **ppKeyName,
    __inout PVOID * ppEnumState,
    __in    DWORD   dwFlags);



typedef struct NCryptProviderName
{
    LPWSTR  pszName;
    LPWSTR  pszComment;
} NCryptProviderName;

__checkReturn
SECURITY_STATUS
WINAPI
NCryptEnumStorageProviders(
    __out   DWORD * pdwProviderCount,
    __deref_out_ecount(*pdwProviderCount) NCryptProviderName **ppProviderList,
    __in    DWORD   dwFlags);



SECURITY_STATUS
WINAPI
NCryptFreeBuffer(
    __deref PVOID   pvInput);



// NCryptOpenKey flags
#define NCRYPT_MACHINE_KEY_FLAG         0x00000020
#define NCRYPT_SILENT_FLAG              0x00000040

__checkReturn
SECURITY_STATUS
WINAPI
NCryptOpenKey(
    __inout NCRYPT_PROV_HANDLE hProvider,
    __out   NCRYPT_KEY_HANDLE *phKey,
    __in    LPCWSTR pszKeyName,
    __in_opt DWORD  dwLegacyKeySpec,
    __in    DWORD   dwFlags);



// NCryptCreatePersistedKey flags
#define NCRYPT_MACHINE_KEY_FLAG         0x00000020
#define NCRYPT_OVERWRITE_KEY_FLAG       0x00000080

__checkReturn
SECURITY_STATUS
WINAPI
NCryptCreatePersistedKey(
    __in    NCRYPT_PROV_HANDLE hProvider,
    __out   NCRYPT_KEY_HANDLE *phKey,
    __in    LPCWSTR pszAlgId,
    __in_opt LPCWSTR pszKeyName,
    __in    DWORD   dwLegacyKeySpec,
    __in    DWORD   dwFlags);



// Standard property names.
#define NCRYPT_NAME_PROPERTY                    L"Name"
#define NCRYPT_UNIQUE_NAME_PROPERTY             L"Unique Name"
#define NCRYPT_ALGORITHM_PROPERTY               L"Algorithm Name"
#define NCRYPT_LENGTH_PROPERTY                  L"Length"
#define NCRYPT_LENGTHS_PROPERTY                 L"Lengths"
#define NCRYPT_BLOCK_LENGTH_PROPERTY            L"Block Length"
#define NCRYPT_UI_POLICY_PROPERTY               L"UI Policy"
#define NCRYPT_EXPORT_POLICY_PROPERTY           L"Export Policy"
#define NCRYPT_WINDOW_HANDLE_PROPERTY           L"HWND Handle"
#define NCRYPT_USE_CONTEXT_PROPERTY             L"Use Context"
#define NCRYPT_IMPL_TYPE_PROPERTY               L"Impl Type"
#define NCRYPT_KEY_USAGE_PROPERTY               L"Key Usage"
#define NCRYPT_KEY_TYPE_PROPERTY                L"Key Type"
#define NCRYPT_VERSION_PROPERTY                 L"Version"
#define NCRYPT_SECURITY_DESCR_SUPPORT_PROPERTY  L"Security Descr Support"
#define NCRYPT_SECURITY_DESCR_PROPERTY          L"Security Descr"
#define NCRYPT_USE_COUNT_ENABLED_PROPERTY       L"Enabled Use Count"
#define NCRYPT_USE_COUNT_PROPERTY               L"Use Count"
#define NCRYPT_LAST_MODIFIED_PROPERTY           L"Modified"
#define NCRYPT_MAX_NAME_LENGTH_PROPERTY         L"Max Name Length"
#define NCRYPT_ALGORITHM_GROUP_PROPERTY         L"Algorithm Group"
#define NCRYPT_DH_PARAMETERS_PROPERTY           BCRYPT_DH_PARAMETERS
#define NCRYPT_PROVIDER_HANDLE_PROPERTY         L"Provider Handle"
#define NCRYPT_PIN_PROPERTY                     L"SmartCardPin"
#define NCRYPT_READER_PROPERTY                  L"SmartCardReader"
#define NCRYPT_SMARTCARD_GUID_PROPERTY          L"SmartCardGuid"
#define NCRYPT_CERTIFICATE_PROPERTY             L"SmartCardKeyCertificate"
#define NCRYPT_PIN_PROMPT_PROPERTY              L"SmartCardPinPrompt"
#define NCRYPT_USER_CERTSTORE_PROPERTY          L"SmartCardUserCertStore"
#define NCRYPT_ROOT_CERTSTORE_PROPERTY          L"SmartcardRootCertStore"
#define NCRYPT_SECURE_PIN_PROPERTY              L"SmartCardSecurePin"
#define NCRYPT_ASSOCIATED_ECDH_KEY              L"SmartCardAssociatedECDHKey"
#define NCRYPT_SCARD_PIN_ID                     L"SmartCardPinId"
#define NCRYPT_SCARD_PIN_INFO                   L"SmartCardPinInfo"

// Maximum length of property name (in characters)
#define NCRYPT_MAX_PROPERTY_NAME        64

// Maximum length of property data (in bytes)
#define NCRYPT_MAX_PROPERTY_DATA        0x100000

// NCRYPT_EXPORT_POLICY_PROPERTY property flags.
#define NCRYPT_ALLOW_EXPORT_FLAG                0x00000001
#define NCRYPT_ALLOW_PLAINTEXT_EXPORT_FLAG      0x00000002
#define NCRYPT_ALLOW_ARCHIVING_FLAG             0x00000004
#define NCRYPT_ALLOW_PLAINTEXT_ARCHIVING_FLAG   0x00000008

// NCRYPT_IMPL_TYPE_PROPERTY property flags.
#define NCRYPT_IMPL_HARDWARE_FLAG               0x00000001
#define NCRYPT_IMPL_SOFTWARE_FLAG               0x00000002
#define NCRYPT_IMPL_REMOVABLE_FLAG              0x00000008
#define NCRYPT_IMPL_HARDWARE_RNG_FLAG           0x00000010

// NCRYPT_KEY_USAGE_PROPERTY property flags.
#define NCRYPT_ALLOW_DECRYPT_FLAG               0x00000001
#define NCRYPT_ALLOW_SIGNING_FLAG               0x00000002
#define NCRYPT_ALLOW_KEY_AGREEMENT_FLAG         0x00000004
#define NCRYPT_ALLOW_ALL_USAGES                 0x00ffffff

// NCRYPT_UI_POLICY_PROPERTY property flags and structure
#define NCRYPT_UI_PROTECT_KEY_FLAG              0x00000001
#define NCRYPT_UI_FORCE_HIGH_PROTECTION_FLAG    0x00000002

typedef struct __NCRYPT_UI_POLICY_BLOB
{
    DWORD   dwVersion;
    DWORD   dwFlags;
    DWORD   cbCreationTitle;
    DWORD   cbFriendlyName;
    DWORD   cbDescription;
    // creation title string
    // friendly name string
    // description string
} NCRYPT_UI_POLICY_BLOB;

typedef struct __NCRYPT_UI_POLICY
{
    DWORD   dwVersion;
    DWORD   dwFlags;
    LPCWSTR pszCreationTitle;
    LPCWSTR pszFriendlyName;
    LPCWSTR pszDescription;
} NCRYPT_UI_POLICY;


// NCRYPT_LENGTHS_PROPERTY property structure.
typedef struct __NCRYPT_SUPPORTED_LENGTHS
{
    DWORD   dwMinLength;
    DWORD   dwMaxLength;
    DWORD   dwIncrement;
    DWORD   dwDefaultLength;
} NCRYPT_SUPPORTED_LENGTHS;

// NCryptGetProperty flags
#define NCRYPT_PERSIST_ONLY_FLAG        0x40000000

__checkReturn
SECURITY_STATUS
WINAPI
NCryptGetProperty(
    __in    NCRYPT_HANDLE hObject,
    __in    LPCWSTR pszProperty,
    __out_bcount_part_opt(cbOutput, *pcbResult) PBYTE pbOutput,
    __in    DWORD   cbOutput,
    __out   DWORD * pcbResult,
    __in    DWORD   dwFlags);



// NCryptSetProperty flags
#define NCRYPT_PERSIST_FLAG             0x80000000
#define NCRYPT_PERSIST_ONLY_FLAG        0x40000000

__checkReturn
SECURITY_STATUS
WINAPI
NCryptSetProperty(
    __in    NCRYPT_HANDLE hObject,
    __in    LPCWSTR pszProperty,
    __in_bcount(cbInput) PBYTE pbInput,
    __in    DWORD   cbInput,
    __in    DWORD   dwFlags);



#define     NCRYPT_WRITE_KEY_TO_LEGACY_STORE_FLAG   0x00000200

__checkReturn
SECURITY_STATUS
WINAPI
NCryptFinalizeKey(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptEncrypt(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in_bcount_opt(cbInput) PBYTE pbInput,
    __in    DWORD   cbInput,
    __in_opt    VOID *pPaddingInfo,
    __out_bcount_part_opt(cbOutput, *pcbResult) PBYTE pbOutput,
    __in    DWORD   cbOutput,
    __out   DWORD * pcbResult,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptDecrypt(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in_bcount_opt(cbInput) PBYTE pbInput,
    __in    DWORD   cbInput,
    __in_opt    VOID *pPaddingInfo,
    __out_bcount_part_opt(cbOutput, *pcbResult) PBYTE pbOutput,
    __in    DWORD   cbOutput,
    __out   DWORD * pcbResult,
    __in    DWORD   dwFlags);



#define NCRYPT_PKCS7_ENVELOPE_BLOB      L"PKCS7_ENVELOPE"
#define NCRYPT_PKCS8_PRIVATE_KEY_BLOB   L"PKCS8_PRIVATEKEY"
#define NCRYPT_OPAQUETRANSPORT_BLOB     L"OpaqueTransport"

#define NCRYPT_MACHINE_KEY_FLAG         0x00000020
#define NCRYPT_DO_NOT_FINALIZE_FLAG     0x00000400
#define NCRYPT_EXPORT_LEGACY_FLAG       0x00000800

__checkReturn
SECURITY_STATUS
WINAPI
NCryptImportKey(
    __in    NCRYPT_PROV_HANDLE hProvider,
    __in_opt NCRYPT_KEY_HANDLE hImportKey,
    __in    LPCWSTR pszBlobType,
    __in_opt NCryptBufferDesc *pParameterList,
    __out   NCRYPT_KEY_HANDLE *phKey,
    __in_bcount(cbData) PBYTE pbData,
    __in    DWORD   cbData,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptExportKey(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in_opt NCRYPT_KEY_HANDLE hExportKey,
    __in    LPCWSTR pszBlobType,
    __in_opt NCryptBufferDesc *pParameterList,
    __out_bcount_part_opt(cbOutput, *pcbResult) PBYTE pbOutput,
    __in    DWORD   cbOutput,
    __out   DWORD * pcbResult,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptSignHash(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in_opt    VOID *pPaddingInfo,
    __in_bcount(cbHashValue) PBYTE pbHashValue,
    __in    DWORD   cbHashValue,
    __out_bcount_part_opt(cbSignature, *pcbResult) PBYTE pbSignature,
    __in    DWORD   cbSignature,
    __out   DWORD * pcbResult,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptVerifySignature(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in_opt    VOID *pPaddingInfo,
    __in_bcount(cbHashValue) PBYTE pbHashValue,
    __in    DWORD   cbHashValue,
    __in_bcount(cbSignature) PBYTE pbSignature,
    __in    DWORD   cbSignature,
    __in    DWORD   dwFlags);



SECURITY_STATUS
WINAPI
NCryptDeleteKey(
    __in    NCRYPT_KEY_HANDLE hKey,
    __in    DWORD   dwFlags);



SECURITY_STATUS
WINAPI
NCryptFreeObject(
    __in    NCRYPT_HANDLE hObject);



BOOL
WINAPI
NCryptIsKeyHandle(
    __in    NCRYPT_KEY_HANDLE hKey);

__checkReturn
SECURITY_STATUS
WINAPI
NCryptTranslateHandle(
    __out_opt NCRYPT_PROV_HANDLE *phProvider,
    __out   NCRYPT_KEY_HANDLE *phKey,
    __in    HCRYPTPROV hLegacyProv,
    __in_opt HCRYPTKEY hLegacyKey,
    __in_opt DWORD  dwLegacyKeySpec,
    __in    DWORD   dwFlags);



// NCryptNotifyChangeKey flags
#define NCRYPT_REGISTER_NOTIFY_FLAG     0x00000001
#define NCRYPT_UNREGISTER_NOTIFY_FLAG   0x00000002
#define NCRYPT_MACHINE_KEY_FLAG         0x00000020

__checkReturn
SECURITY_STATUS
WINAPI
NCryptNotifyChangeKey(
    __in    NCRYPT_PROV_HANDLE hProvider,
    __inout HANDLE *phEvent,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptSecretAgreement(
    __in    NCRYPT_KEY_HANDLE hPrivKey,
    __in    NCRYPT_KEY_HANDLE hPubKey,
    __out   NCRYPT_SECRET_HANDLE *phAgreedSecret,
    __in    DWORD   dwFlags);



__checkReturn
SECURITY_STATUS
WINAPI
NCryptDeriveKey(
    __in        NCRYPT_SECRET_HANDLE hSharedSecret,
    __in        LPCWSTR              pwszKDF,
    __in_opt    NCryptBufferDesc     *pParameterList,
    __out_bcount_part_opt(cbDerivedKey, *pcbResult) PBYTE pbDerivedKey,
    __in        DWORD                cbDerivedKey,
    __out       DWORD                *pcbResult,
    __in        ULONG                dwFlags);



#define NCRYPT_KEY_STORAGE_INTERFACE_VERSION BCRYPT_MAKE_INTERFACE_VERSION(1,0)



#ifdef __cplusplus
}       // Balance extern "C" above
#endif

#endif // __NCRYPT_H__


