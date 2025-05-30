/*++ BUILD Version: 0001    // Increment this if a change has global effects

Copyright (c) 1989-1999  Microsoft Corporation

Module Name:

    ntmsv1_0.h

Abstract:

    This module contains the public data structures provided by
    the MSV1_0 authentication package.


Author:

--*/

#ifndef _NTMSV1_0_
#define _NTMSV1_0_

#if _MSC_VER > 1000
#pragma once
#endif

#include <sdkddkver.h>
#include <ntlsa.h>
#include <ntsam.h>

#ifdef __cplusplus
extern "C" {
#endif

// begin_ntifs begin_ntsecapi

/////////////////////////////////////////////////////////////////////////
//                                                                     //
// Name of the MSV1_0 authentication package                           //
//                                                                     //
/////////////////////////////////////////////////////////////////////////

#define MSV1_0_PACKAGE_NAME     "MICROSOFT_AUTHENTICATION_PACKAGE_V1_0"
#define MSV1_0_PACKAGE_NAMEW    L"MICROSOFT_AUTHENTICATION_PACKAGE_V1_0"
#define MSV1_0_PACKAGE_NAMEW_LENGTH sizeof(MSV1_0_PACKAGE_NAMEW) - sizeof(WCHAR)

//
// Location of MSV authentication package data
//
#define MSV1_0_SUBAUTHENTICATION_KEY "SYSTEM\\CurrentControlSet\\Control\\Lsa\\MSV1_0"
#define MSV1_0_SUBAUTHENTICATION_VALUE "Auth"


/////////////////////////////////////////////////////////////////////////
//                                                                     //
// Widely used MSV1_0 data types                                       //
//                                                                     //
/////////////////////////////////////////////////////////////////////////



///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//       LOGON      Related Data Structures
//
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

//
// When a LsaLogonUser() call is dispatched to the MsV1_0 authentication
// package, the beginning of the AuthenticationInformation buffer is
// cast to a MSV1_0_LOGON_SUBMIT_TYPE to determine the type of logon
// being requested.  Similarly, upon return, the type of profile buffer
// can be determined by typecasting it to a MSV_1_0_PROFILE_BUFFER_TYPE.
//

//
//  MSV1.0 LsaLogonUser() submission message types.
//

typedef enum _MSV1_0_LOGON_SUBMIT_TYPE {
    MsV1_0InteractiveLogon = 2,
    MsV1_0Lm20Logon,
    MsV1_0NetworkLogon,
    MsV1_0SubAuthLogon,
    MsV1_0WorkstationUnlockLogon = 7,
    // defined in Windows Server 2008 and up
    MsV1_0S4ULogon = 12,
    MsV1_0VirtualLogon = 82
} MSV1_0_LOGON_SUBMIT_TYPE, *PMSV1_0_LOGON_SUBMIT_TYPE;


//
//  MSV1.0 LsaLogonUser() profile buffer types.
//

typedef enum _MSV1_0_PROFILE_BUFFER_TYPE {
    MsV1_0InteractiveProfile = 2,
    MsV1_0Lm20LogonProfile,
    MsV1_0SmartCardProfile
} MSV1_0_PROFILE_BUFFER_TYPE, *PMSV1_0_PROFILE_BUFFER_TYPE;

//
// MsV1_0InteractiveLogon
//
// The AuthenticationInformation buffer of an LsaLogonUser() call to
// perform an interactive logon contains the following data structure:
//

typedef struct _MSV1_0_INTERACTIVE_LOGON {
    MSV1_0_LOGON_SUBMIT_TYPE MessageType;
    UNICODE_STRING LogonDomainName;
    UNICODE_STRING UserName;
    UNICODE_STRING Password;
} MSV1_0_INTERACTIVE_LOGON, *PMSV1_0_INTERACTIVE_LOGON;

//
// Where:
//
//     MessageType - Contains the type of logon being requested.  This
//         field must be set to MsV1_0InteractiveLogon.
//
//     UserName - Is a string representing the user's account name.  The
//         name may be up to 255 characters long.  The name is treated case
//         insensitive.
//
//     Password - Is a string containing the user's cleartext password.
//         The password may be up to 255 characters long and contain any
//         UNICODE value.
//
//


//
// The ProfileBuffer returned upon a successful logon of this type
// contains the following data structure:
//

typedef struct _MSV1_0_INTERACTIVE_PROFILE {
    MSV1_0_PROFILE_BUFFER_TYPE MessageType;
    USHORT LogonCount;
    USHORT BadPasswordCount;
    LARGE_INTEGER LogonTime;
    LARGE_INTEGER LogoffTime;
    LARGE_INTEGER KickOffTime;
    LARGE_INTEGER PasswordLastSet;
    LARGE_INTEGER PasswordCanChange;
    LARGE_INTEGER PasswordMustChange;
    UNICODE_STRING LogonScript;
    UNICODE_STRING HomeDirectory;
    UNICODE_STRING FullName;
    UNICODE_STRING ProfilePath;
    UNICODE_STRING HomeDirectoryDrive;
    UNICODE_STRING LogonServer;
    ULONG UserFlags;
} MSV1_0_INTERACTIVE_PROFILE, *PMSV1_0_INTERACTIVE_PROFILE;

//
// where:
//
//     MessageType - Identifies the type of profile data being returned.
//         Contains the type of logon being requested.  This field must
//         be set to MsV1_0InteractiveProfile.
//
//     LogonCount - Number of times the user is currently logged on.
//
//     BadPasswordCount - Number of times a bad password was applied to
//         the account since last successful logon.
//
//     LogonTime - Time when user last logged on.  This is an absolute
//         format NT standard time value.
//
//     LogoffTime - Time when user should log off.  This is an absolute
//         format NT standard time value.
//
//     KickOffTime - Time when system should force user logoff.  This is
//         an absolute format NT standard time value.
//
//     PasswordLastChanged - Time and date the password was last
//         changed.  This is an absolute format NT standard time
//         value.
//
//     PasswordCanChange - Time and date when the user can change the
//         password.  This is an absolute format NT time value.  To
//         prevent a password from ever changing, set this field to a
//         date very far into the future.
//
//     PasswordMustChange - Time and date when the user must change the
//         password.  If the user can never change the password, this
//         field is undefined.  This is an absolute format NT time
//         value.
//
//     LogonScript - The (relative) path to the account's logon
//         script.
//
//     HomeDirectory - The home directory for the user.
//


//
// MsV1_0Lm20Logon and MsV1_0NetworkLogon
//
// The AuthenticationInformation buffer of an LsaLogonUser() call to
// perform an network logon contains the following data structure:
//
// MsV1_0NetworkLogon logon differs from MsV1_0Lm20Logon in that the
// ParameterControl field exists.
//

#define MSV1_0_CHALLENGE_LENGTH 8
#define MSV1_0_USER_SESSION_KEY_LENGTH 16
#define MSV1_0_LANMAN_SESSION_KEY_LENGTH 8

//
// Values for ParameterControl.
//

#define MSV1_0_CLEARTEXT_PASSWORD_ALLOWED    0x02
#define MSV1_0_UPDATE_LOGON_STATISTICS       0x04
#define MSV1_0_RETURN_USER_PARAMETERS        0x08
#define MSV1_0_DONT_TRY_GUEST_ACCOUNT        0x10
#define MSV1_0_ALLOW_SERVER_TRUST_ACCOUNT    0x20
#define MSV1_0_RETURN_PASSWORD_EXPIRY        0x40
// this next flag says that CaseInsensitiveChallengeResponse
//  (aka LmResponse) contains a client challenge in the first 8 bytes
#define MSV1_0_USE_CLIENT_CHALLENGE          0x80
#define MSV1_0_TRY_GUEST_ACCOUNT_ONLY        0x100
#define MSV1_0_RETURN_PROFILE_PATH           0x200
#define MSV1_0_TRY_SPECIFIED_DOMAIN_ONLY     0x400
#define MSV1_0_ALLOW_WORKSTATION_TRUST_ACCOUNT 0x800
//#if (_WIN32_WINNT >= 0x0501) -- Disabled until IIS fixes their target version.
#define MSV1_0_DISABLE_PERSONAL_FALLBACK     0x00001000
#define MSV1_0_ALLOW_FORCE_GUEST             0x00002000
//#endif
#if (_WIN32_WINNT >= 0x0502)
#define MSV1_0_CLEARTEXT_PASSWORD_SUPPLIED   0x00004000
// Start
// Doesnt exist in Windows XP but does exist in Windows 2000 Security Rollup and up
#define MSV1_0_USE_DOMAIN_FOR_ROUTING_ONLY   0x00008000
#endif
#define MSV1_0_SUBAUTHENTICATION_DLL_EX      0x00100000
// Defined in Windows Server 2003 SP1 and above
#define MSV1_0_ALLOW_MSVCHAPV2               0x00010000

#if (_WIN32_WINNT >= 0x0600)

//Defined in Windows Server 2008 and up
#define MSV1_0_S4U2SELF                      0x00020000 // no password is needed
#define MSV1_0_CHECK_LOGONHOURS_FOR_S4U      0x00040000 // check logon hours for S4U logon

#endif

//
// The high order byte is a value indicating the SubAuthentication DLL.
//  Zero indicates no SubAuthentication DLL.
//
#define MSV1_0_SUBAUTHENTICATION_DLL         0xFF000000
#define MSV1_0_SUBAUTHENTICATION_DLL_SHIFT   24
#define MSV1_0_MNS_LOGON                     0x01000000

//
// This is the list of subauthentication dlls used in MS
//

#define MSV1_0_SUBAUTHENTICATION_DLL_RAS     2
#define MSV1_0_SUBAUTHENTICATION_DLL_IIS     132

typedef struct _MSV1_0_LM20_LOGON {
    MSV1_0_LOGON_SUBMIT_TYPE MessageType;
    UNICODE_STRING LogonDomainName;
    UNICODE_STRING UserName;
    UNICODE_STRING Workstation;
    UCHAR ChallengeToClient[MSV1_0_CHALLENGE_LENGTH];
    STRING CaseSensitiveChallengeResponse;
    STRING CaseInsensitiveChallengeResponse;
    ULONG ParameterControl;
} MSV1_0_LM20_LOGON, * PMSV1_0_LM20_LOGON;

//
// NT 5.0 SubAuth dlls can use this struct
//

typedef struct _MSV1_0_SUBAUTH_LOGON{
    MSV1_0_LOGON_SUBMIT_TYPE MessageType;
    UNICODE_STRING LogonDomainName;
    UNICODE_STRING UserName;
    UNICODE_STRING Workstation;
    UCHAR ChallengeToClient[MSV1_0_CHALLENGE_LENGTH];
    STRING AuthenticationInfo1;
    STRING AuthenticationInfo2;
    ULONG ParameterControl;
    ULONG SubAuthPackageId;
} MSV1_0_SUBAUTH_LOGON, * PMSV1_0_SUBAUTH_LOGON;

#if (_WIN32_WINNT >= 0x0600)

//
// s4u2self logon
//
// Defined in Windows Server 2008 and above

//
// request to enforce logon hours policy
//

#define MSV1_0_S4U_LOGON_FLAG_CHECK_LOGONHOURS 0x2

typedef struct _MSV1_0_S4U_LOGON {
    MSV1_0_LOGON_SUBMIT_TYPE MessageType;
    ULONG Flags;
    UNICODE_STRING UserPrincipalName; // username or username@domain
    UNICODE_STRING DomainName; // Optional: if missing, using the local machine
} MSV1_0_S4U_LOGON, *PMSV1_0_S4U_LOGON;

#endif 

//
// Values for UserFlags.
//

#define LOGON_GUEST                 0x01
#define LOGON_NOENCRYPTION          0x02
#define LOGON_CACHED_ACCOUNT        0x04
#define LOGON_USED_LM_PASSWORD      0x08
#define LOGON_EXTRA_SIDS            0x20
#define LOGON_SUBAUTH_SESSION_KEY   0x40
#define LOGON_SERVER_TRUST_ACCOUNT  0x80
#define LOGON_NTLMV2_ENABLED        0x100       // says DC understands NTLMv2
#define LOGON_RESOURCE_GROUPS       0x200
#define LOGON_PROFILE_PATH_RETURNED 0x400
// Defined in Windows Server 2008 and above
#define LOGON_NT_V2                 0x800   // NT response was used for validation
#define LOGON_LM_V2                 0x1000  // LM response was used for validation
#define LOGON_NTLM_V2               0x2000  // LM response was used to authenticate but NT response was used to derive the session key

#if (_WIN32_WINNT >= 0x0600)

#define LOGON_OPTIMIZED             0x4000  // this is an optimized logon
#define LOGON_WINLOGON              0x8000  // the logon session was created for winlogon
#define LOGON_PKINIT               0x10000  // Kerberos PKINIT extension was used to authenticate the user
#define LOGON_NO_OPTIMIZED         0x20000  // optimized logon has been disabled for this account

#endif

//
// The high order byte is reserved for return by SubAuthentication DLLs.
//

#define MSV1_0_SUBAUTHENTICATION_FLAGS 0xFF000000

// Values returned by the MSV1_0_MNS_LOGON SubAuthentication DLL
#define LOGON_GRACE_LOGON              0x01000000

typedef struct _MSV1_0_LM20_LOGON_PROFILE {
    MSV1_0_PROFILE_BUFFER_TYPE MessageType;
    LARGE_INTEGER KickOffTime;
    LARGE_INTEGER LogoffTime;
    ULONG UserFlags;
    UCHAR UserSessionKey[MSV1_0_USER_SESSION_KEY_LENGTH];
    UNICODE_STRING LogonDomainName;
    UCHAR LanmanSessionKey[MSV1_0_LANMAN_SESSION_KEY_LENGTH];
    UNICODE_STRING LogonServer;
    UNICODE_STRING UserParameters;
} MSV1_0_LM20_LOGON_PROFILE, * PMSV1_0_LM20_LOGON_PROFILE;


//
// Supplemental credentials structure used for passing credentials into
// MSV1_0 from other packages
//

#define MSV1_0_OWF_PASSWORD_LENGTH 16
#define MSV1_0_CRED_LM_PRESENT 0x1
#define MSV1_0_CRED_NT_PRESENT 0x2
#define MSV1_0_CRED_VERSION 0

typedef struct _MSV1_0_SUPPLEMENTAL_CREDENTIAL {
    ULONG Version;
    ULONG Flags;
    UCHAR LmPassword[MSV1_0_OWF_PASSWORD_LENGTH];
    UCHAR NtPassword[MSV1_0_OWF_PASSWORD_LENGTH];
} MSV1_0_SUPPLEMENTAL_CREDENTIAL, *PMSV1_0_SUPPLEMENTAL_CREDENTIAL;


//
// NTLM3 definitions.
//

#define MSV1_0_NTLM3_RESPONSE_LENGTH 16
#define MSV1_0_NTLM3_OWF_LENGTH 16

//
// this is the longest amount of time we'll allow challenge response
// pairs to be used. Note that this also has to allow for worst case clock skew
//
#if (_WIN32_WINNT == 0x0500)
#define MSV1_0_MAX_NTLM3_LIFE 1800     // 30 minutes (in seconds)
#else
#define MSV1_0_MAX_NTLM3_LIFE 129600     // 36 hours (in seconds)
#endif
#define MSV1_0_MAX_AVL_SIZE 64000

#if (_WIN32_WINNT >= 0x0501)
//
// MsvAvFlags bit values
//
// Exists only after Windows 2000
//

#define MSV1_0_AV_FLAG_FORCE_GUEST                  0x00000001
#if (_WIN32_WINNT >= 0x0600)
#define MSV1_0_AV_FLAG_MIC_HANDSHAKE_MESSAGES       0x00000002 // the client supports
                                                               // hand-shake messages integrity
#endif
#endif

// this is an MSV1_0 private data structure, defining the layout of an NTLM3 response, as sent by a
//  client in the NtChallengeResponse field of the NETLOGON_NETWORK_INFO structure. If can be differentiated
//  from an old style NT response by its length. This is crude, but it needs to pass through servers and
//  the servers' DCs that do not understand NTLM3 but that are willing to pass longer responses.
typedef struct _MSV1_0_NTLM3_RESPONSE {
    UCHAR Response[MSV1_0_NTLM3_RESPONSE_LENGTH]; // hash of OWF of password with all the following fields
    UCHAR RespType;     // id number of response; current is 1
    UCHAR HiRespType;   // highest id number understood by client
    USHORT Flags;       // reserved; must be sent as zero at this version
    ULONG MsgWord;      // 32 bit message from client to server (for use by auth protocol)
    ULONGLONG TimeStamp;    // time stamp when client generated response -- NT system time, quad part
    UCHAR ChallengeFromClient[MSV1_0_CHALLENGE_LENGTH];
    ULONG AvPairsOff;   // offset to start of AvPairs (to allow future expansion)
    UCHAR Buffer[1];    // start of buffer with AV pairs (or future stuff -- so use the offset)
} MSV1_0_NTLM3_RESPONSE, *PMSV1_0_NTLM3_RESPONSE;

#define MSV1_0_NTLM3_INPUT_LENGTH (sizeof(MSV1_0_NTLM3_RESPONSE) - MSV1_0_NTLM3_RESPONSE_LENGTH)
#if(_WIN32_WINNT >= 0x0502)
#define MSV1_0_NTLM3_MIN_NT_RESPONSE_LENGTH RTL_SIZEOF_THROUGH_FIELD(MSV1_0_NTLM3_RESPONSE, AvPairsOff)
#endif

typedef enum {
    MsvAvEOL,                 // end of list
    MsvAvNbComputerName,      // server's computer name -- NetBIOS
    MsvAvNbDomainName,        // server's domain name -- NetBIOS
    MsvAvDnsComputerName,     // server's computer name -- DNS
    MsvAvDnsDomainName,       // server's domain name -- DNS
#if (_WIN32_WINNT >= 0x0501)
    MsvAvDnsTreeName,         // server's tree name -- DNS
    MsvAvFlags,               // server's extended flags -- DWORD mask
#if (_WIN32_WINNT >= 0x0600)
    MsvAvTimestamp,           // contains the server's local time in FILETIME,
                              // (64 bit 100 ns ticks since 1602
                              // (UTC)) in little endian byte order
    MsvAvRestrictions,        // token restrictions                              
    MsvAvTargetName,
    MsvAvChannelBindings,
#endif
#endif
} MSV1_0_AVID;

typedef struct  _MSV1_0_AV_PAIR {
    USHORT AvId;
    USHORT AvLen;
    // Data is treated as byte array following structure
} MSV1_0_AV_PAIR, *PMSV1_0_AV_PAIR;



///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//       CALL PACKAGE Related Data Structures                                //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////


//
//  MSV1.0 LsaCallAuthenticationPackage() submission and response
//  message types.
//

typedef enum _MSV1_0_PROTOCOL_MESSAGE_TYPE {
    MsV1_0Lm20ChallengeRequest = 0,          // Both submission and response
    MsV1_0Lm20GetChallengeResponse,          // Both submission and response
    MsV1_0EnumerateUsers,                    // Both submission and response
    MsV1_0GetUserInfo,                       // Both submission and response
    MsV1_0ReLogonUsers,                      // Submission only
    MsV1_0ChangePassword,                    // Both submission and response
    MsV1_0ChangeCachedPassword,              // Both submission and response
    MsV1_0GenericPassthrough,                // Both submission and response
    MsV1_0CacheLogon,                        // Submission only, no response
    MsV1_0SubAuth,                           // Both submission and response
    MsV1_0DeriveCredential,                  // Both submission and response
    MsV1_0CacheLookup,                       // Both submission and response
#if (_WIN32_WINNT >= 0x0501)
    MsV1_0SetProcessOption,                  // Submission only, no response
#endif
#if (_WIN32_WINNT >= 0x0600)
    MsV1_0ConfigLocalAliases,
    MsV1_0ClearCachedCredentials,
#endif    
} MSV1_0_PROTOCOL_MESSAGE_TYPE, *PMSV1_0_PROTOCOL_MESSAGE_TYPE;

// end_ntsecapi

//
// MsV1_0Lm20ChallengeRequest submit buffer and response
//

typedef struct _MSV1_0_LM20_CHALLENGE_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
} MSV1_0_LM20_CHALLENGE_REQUEST, *PMSV1_0_LM20_CHALLENGE_REQUEST;

typedef struct _MSV1_0_LM20_CHALLENGE_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    UCHAR ChallengeToClient[MSV1_0_CHALLENGE_LENGTH];
} MSV1_0_LM20_CHALLENGE_RESPONSE, *PMSV1_0_LM20_CHALLENGE_RESPONSE;

//
// MsV1_0Lm20GetChallengeResponse submit buffer and response
//

#define USE_PRIMARY_PASSWORD            0x01
#define RETURN_PRIMARY_USERNAME         0x02
#define RETURN_PRIMARY_LOGON_DOMAINNAME 0x04
#define RETURN_NON_NT_USER_SESSION_KEY  0x08
#define GENERATE_CLIENT_CHALLENGE       0x10
#define GCR_NTLM3_PARMS                 0x20
#define GCR_TARGET_INFO                 0x40    // ServerName field contains target info AV pairs
#define RETURN_RESERVED_PARAMETER       0x80    // was 0x10
#define GCR_ALLOW_NTLM                 0x100    // allow the use of NTLM
// Exists in Windows XPSP2 and later
#define GCR_USE_OEM_SET                0x200    // response uses oem character set
#define GCR_MACHINE_CREDENTIAL         0x400
#define GCR_USE_OWF_PASSWORD           0x800    // use owf passwords
#define GCR_ALLOW_LM                  0x1000    // allow the use of LM
// Defined in Windows Server 2003 and above
#define GCR_ALLOW_NO_TARGET           0x2000    // allow no target server or target domain name

//
// version 1 of the GETCHALLENRESP structure, which was used by RAS and others.
// compiled before the additional fields added to GETCHALLENRESP_REQUEST.
// here to allow sizing operations for backwards compatibility.
//

typedef struct _MSV1_0_GETCHALLENRESP_REQUEST_V1 {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG ParameterControl;
    LUID LogonId;
    UNICODE_STRING Password;
    UCHAR ChallengeToClient[MSV1_0_CHALLENGE_LENGTH];
} MSV1_0_GETCHALLENRESP_REQUEST_V1, *PMSV1_0_GETCHALLENRESP_REQUEST_V1;

typedef struct _MSV1_0_GETCHALLENRESP_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG ParameterControl;
    LUID LogonId;
    UNICODE_STRING Password;
    UCHAR ChallengeToClient[MSV1_0_CHALLENGE_LENGTH];

    //
    // the following 3 fields are only present if GCR_NTLM3_PARMS is set in ParameterControl
    //

    UNICODE_STRING UserName;
    UNICODE_STRING LogonDomainName;
    UNICODE_STRING ServerName;      // server domain or target info AV pairs
} MSV1_0_GETCHALLENRESP_REQUEST, *PMSV1_0_GETCHALLENRESP_REQUEST;

typedef struct _MSV1_0_GETCHALLENRESP_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    STRING CaseSensitiveChallengeResponse;
    STRING CaseInsensitiveChallengeResponse;
    UNICODE_STRING UserName;
    UNICODE_STRING LogonDomainName;
    UCHAR UserSessionKey[MSV1_0_USER_SESSION_KEY_LENGTH];
    UCHAR LanmanSessionKey[MSV1_0_LANMAN_SESSION_KEY_LENGTH];
} MSV1_0_GETCHALLENRESP_RESPONSE, *PMSV1_0_GETCHALLENRESP_RESPONSE;

//
// MsV1_0EnumerateUsers submit buffer and response
//

typedef struct _MSV1_0_ENUMUSERS_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
} MSV1_0_ENUMUSERS_REQUEST, *PMSV1_0_ENUMUSERS_REQUEST;

typedef struct _MSV1_0_ENUMUSERS_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG NumberOfLoggedOnUsers;
    PLUID LogonIds;
    PULONG EnumHandles;
} MSV1_0_ENUMUSERS_RESPONSE, *PMSV1_0_ENUMUSERS_RESPONSE;

//
// MsV1_0GetUserInfo submit buffer and response
//

typedef struct _MSV1_0_GETUSERINFO_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    LUID LogonId;
} MSV1_0_GETUSERINFO_REQUEST, *PMSV1_0_GETUSERINFO_REQUEST;

typedef struct _MSV1_0_GETUSERINFO_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    PSID UserSid;
    UNICODE_STRING UserName;
    UNICODE_STRING LogonDomainName;
    UNICODE_STRING LogonServer;
    SECURITY_LOGON_TYPE LogonType;
} MSV1_0_GETUSERINFO_RESPONSE, *PMSV1_0_GETUSERINFO_RESPONSE;

// end_ntifs

//
// MsV1_0RelogonUsers submit buffer
//

typedef struct _MSV1_0_RELOGON_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    UNICODE_STRING LogonServer;
} MSV1_0_RELOGON_REQUEST, *PMSV1_0_RELOGON_REQUEST;

//
// MsV1_0ChangePassword and MsV1_0ChangeCachedPassword submit buffer
//
// MsV1_0ChangePassword changes the password on the SAM account plus
//  the password cache and logon credentials if applicable.
//
// MsV1_0ChangeCachedPassword only changes the password cache and the logon
//  credentials.
//

// begin_ntsecapi

typedef struct _MSV1_0_CHANGEPASSWORD_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    UNICODE_STRING DomainName;
    UNICODE_STRING AccountName;
    UNICODE_STRING OldPassword;
    UNICODE_STRING NewPassword;
    BOOLEAN        Impersonating;
} MSV1_0_CHANGEPASSWORD_REQUEST, *PMSV1_0_CHANGEPASSWORD_REQUEST;

typedef struct _MSV1_0_CHANGEPASSWORD_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    BOOLEAN PasswordInfoValid;
    DOMAIN_PASSWORD_INFORMATION DomainPasswordInfo;
} MSV1_0_CHANGEPASSWORD_RESPONSE, *PMSV1_0_CHANGEPASSWORD_RESPONSE;


#if(_WIN32_WINNT >= 0x0502)
//
// MsV1_0GenericPassthrough - for remoting a CallPackage to
// a domain controller on the specified domain
//

typedef struct _MSV1_0_PASSTHROUGH_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    UNICODE_STRING DomainName;
    UNICODE_STRING PackageName;
    ULONG DataLength;
    PUCHAR LogonData;
    ULONG Pad ;
} MSV1_0_PASSTHROUGH_REQUEST, *PMSV1_0_PASSTHROUGH_REQUEST;

typedef struct _MSV1_0_PASSTHROUGH_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG Pad;
    ULONG DataLength;
    PUCHAR ValidationData;
} MSV1_0_PASSTHROUGH_RESPONSE, *PMSV1_0_PASSTHROUGH_RESPONSE;
#endif

// end_ntsecapi


//
// MsV1_0CacheLogon submit buffer
//

// Values for RequestFlags
#define MSV1_0_CACHE_LOGON_REQUEST_MIT_LOGON        0x00000001
#define MSV1_0_CACHE_LOGON_REQUEST_INFO4            0x00000002
#define MSV1_0_CACHE_LOGON_DELETE_ENTRY             0x00000004
#define MSV1_0_CACHE_LOGON_REQUEST_SMARTCARD        0x00000008
#define MSV1_0_CACHE_LOGON_DELETE_ALL               0x00000010 // delete all entries for a particular user
#define MSV1_0_CACHE_LOGON_NO_OPTIMIZED_LOGON       0x00000020 // disable optimized logon

typedef struct _MSV1_0_CACHE_LOGON_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    PVOID LogonInformation;
    PVOID ValidationInformation;
    PVOID SupplementalCacheData;
    ULONG SupplementalCacheDataLength;
    ULONG RequestFlags;
} MSV1_0_CACHE_LOGON_REQUEST, *PMSV1_0_CACHE_LOGON_REQUEST;


//
// MsV1_0CacheLookup submit buffer
//

// values for CredentialType
#define MSV1_0_CACHE_LOOKUP_CREDTYPE_NONE                    0
#define MSV1_0_CACHE_LOOKUP_CREDTYPE_RAW                     1
#define MSV1_0_CACHE_LOOKUP_CREDTYPE_NTOWF                   2

typedef struct _MSV1_0_CACHE_LOOKUP_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    UNICODE_STRING UserName;
    UNICODE_STRING DomainName;
    ULONG CredentialType;
    ULONG CredentialInfoLength;
    UCHAR CredentialSubmitBuffer[1];    // in-place array of length CredentialInfoLength
} MSV1_0_CACHE_LOOKUP_REQUEST, *PMSV1_0_CACHE_LOOKUP_REQUEST;

typedef struct _MSV1_0_CACHE_LOOKUP_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    PVOID ValidationInformation;
    PVOID SupplementalCacheData;
    ULONG SupplementalCacheDataLength;
} MSV1_0_CACHE_LOOKUP_RESPONSE, *PMSV1_0_CACHE_LOOKUP_RESPONSE;


//
// MsV1_0ConfigLocalAliases submit buffer
//

#define MSV1_0_CONFIG_LOCAL_ALIASES_ADD                        1
#define MSV1_0_CONFIG_LOCAL_ALIASES_DEL                        2
#define MSV1_0_CONFIG_LOCAL_ALIASES_ENUM                       4

typedef struct _MSV1_0_CONFIG_LOCAL_ALIASES_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG Flags;    // this indicates actions to perform
    UNICODE_STRING Alias;
} MSV1_0_CONFIG_LOCAL_ALIASES_REQUEST, *PMSV1_0_CONFIG_LOCAL_ALIASES_REQUEST;

typedef struct _MSV1_0_CONFIG_LOCAL_ALIASES_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    UNICODE_STRING MultszAliases;
} MSV1_0_CONFIG_LOCAL_ALIASES_RESPONSE, *PMSV1_0_CONFIG_LOCAL_ALIASES_RESPONSE;


//
// MsV1_0ClearCachedCredentials submit buffer
//

typedef struct _MSV1_0_CLEAR_CACHED_CREDENTIALS_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG Flags;
} MSV1_0_CLEAR_CACHED_CREDENTIALS_REQUEST, *PMSV1_0_CLEAR_CACHED_CREDENTIALS_REQUEST;


// begin_ntsecapi

//
// MsV1_0SubAuthInfo submit buffer and response - for submitting a buffer to a
// specified Subauthentication Package during an LsaCallAuthenticationPackage().
// If this Subauthentication is to be done locally, then package this message
// in LsaCallAuthenticationPackage(). If this SubAuthentication needs to be done
// on the domain controller, then call LsaCallauthenticationPackage with the
// message type being MsV1_0GenericPassThrough and the LogonData in this struct
// should be a PMSV1_0_SUBAUTH_REQUEST
//

typedef struct _MSV1_0_SUBAUTH_REQUEST{
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG SubAuthPackageId;
    ULONG SubAuthInfoLength;
    PUCHAR SubAuthSubmitBuffer;
} MSV1_0_SUBAUTH_REQUEST, *PMSV1_0_SUBAUTH_REQUEST;

typedef struct _MSV1_0_SUBAUTH_RESPONSE{
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG SubAuthInfoLength;
    PUCHAR SubAuthReturnBuffer;
} MSV1_0_SUBAUTH_RESPONSE, *PMSV1_0_SUBAUTH_RESPONSE;


// end_ntsecapi

//
// Credential Derivation types for MsV1_0DeriveCredential Submit DeriveCredType
//

//
// Derive Credential using SHA-1 and Request buffer DeriveCredSubmitBuffer of
// length DeriveCredInfoLength mixing bytes.
// Response buffer DeriveCredReturnBuffer will contain SHA-1 hash of size
// A_SHA_DIGEST_LEN (20)
//

#define MSV1_0_DERIVECRED_TYPE_SHA1     0
#define MSV1_0_DERIVECRED_TYPE_SHA1_V2  1

//
// MsV1_0DeriveCredential submit buffer and response - for submitting a buffer
// an call to LsaCallAuthenticationPackage().
//

typedef struct _MSV1_0_DERIVECRED_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    LUID LogonId;
    ULONG DeriveCredType;
    ULONG DeriveCredInfoLength;
    UCHAR DeriveCredSubmitBuffer[1];    // in-place array of length DeriveCredInfoLength
} MSV1_0_DERIVECRED_REQUEST, *PMSV1_0_DERIVECRED_REQUEST;

typedef struct _MSV1_0_DERIVECRED_RESPONSE {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG DeriveCredInfoLength;
    UCHAR DeriveCredReturnBuffer[1];    // in-place array of length DeriveCredInfoLength
} MSV1_0_DERIVECRED_RESPONSE, *PMSV1_0_DERIVECRED_RESPONSE;


//
// MsV1_0SetProcessOption submit buffer - for submitting a buffer
// an call to LsaCallAuthenticationPackage().
//

#define MSV1_0_OPTION_ALLOW_BLANK_PASSWORD      0x01
#define MSV1_0_OPTION_DISABLE_ADMIN_LOCKOUT     0x02
#define MSV1_0_OPTION_DISABLE_FORCE_GUEST       0x04
#define MSV1_0_OPTION_ALLOW_OLD_PASSWORD        0x08
#define MSV1_0_OPTION_TRY_CACHE_FIRST           0x10

typedef struct _MSV1_0_SETPROCESSOPTION_REQUEST {
    MSV1_0_PROTOCOL_MESSAGE_TYPE MessageType;
    ULONG ProcessOptions;
    BOOLEAN DisableOptions;
} MSV1_0_SETPROCESSOPTION_REQUEST, *PMSV1_0_SETPROCESSOPTION_REQUEST;


#ifdef __cplusplus
}
#endif

#endif  //_NTMSV1_0_

