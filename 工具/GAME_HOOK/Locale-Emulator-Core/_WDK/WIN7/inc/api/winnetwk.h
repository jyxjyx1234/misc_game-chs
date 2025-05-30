/*++

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    winnetwk.h

Abstract:

    Standard WINNET Header File for WIN32

Environment:

    User Mode -Win32

Notes:

    optional-notes

--*/

#ifndef _WINNETWK_
#define _WINNETWK_


#pragma once

#ifdef __cplusplus
extern "C" {
#endif


//
// Network types
//

#include <wnnc.h>

//
//  Network Resources.
//

#define RESOURCE_CONNECTED      0x00000001
#define RESOURCE_GLOBALNET      0x00000002
#define RESOURCE_REMEMBERED     0x00000003
#if(WINVER >= 0x0400)
#define RESOURCE_RECENT         0x00000004
#define RESOURCE_CONTEXT        0x00000005
#endif /* WINVER >= 0x0400 */

#define RESOURCETYPE_ANY        0x00000000
#define RESOURCETYPE_DISK       0x00000001
#define RESOURCETYPE_PRINT      0x00000002
#if(WINVER >= 0x0400)
#define RESOURCETYPE_RESERVED   0x00000008
#endif /* WINVER >= 0x0400 */
#define RESOURCETYPE_UNKNOWN    0xFFFFFFFF

#define RESOURCEUSAGE_CONNECTABLE   0x00000001
#define RESOURCEUSAGE_CONTAINER     0x00000002
#if(WINVER >= 0x0400)
#define RESOURCEUSAGE_NOLOCALDEVICE 0x00000004
#define RESOURCEUSAGE_SIBLING       0x00000008
#define RESOURCEUSAGE_ATTACHED      0x00000010
#define RESOURCEUSAGE_ALL           (RESOURCEUSAGE_CONNECTABLE | RESOURCEUSAGE_CONTAINER | RESOURCEUSAGE_ATTACHED)
#endif /* WINVER >= 0x0400 */
#define RESOURCEUSAGE_RESERVED      0x80000000

#define RESOURCEDISPLAYTYPE_GENERIC        0x00000000
#define RESOURCEDISPLAYTYPE_DOMAIN         0x00000001
#define RESOURCEDISPLAYTYPE_SERVER         0x00000002
#define RESOURCEDISPLAYTYPE_SHARE          0x00000003
#define RESOURCEDISPLAYTYPE_FILE           0x00000004
#define RESOURCEDISPLAYTYPE_GROUP          0x00000005
#if(WINVER >= 0x0400)
#define RESOURCEDISPLAYTYPE_NETWORK        0x00000006
#define RESOURCEDISPLAYTYPE_ROOT           0x00000007
#define RESOURCEDISPLAYTYPE_SHAREADMIN     0x00000008
#define RESOURCEDISPLAYTYPE_DIRECTORY      0x00000009
#endif /* WINVER >= 0x0400 */
#define RESOURCEDISPLAYTYPE_TREE           0x0000000A
#if(WINVER >= 0x0400)
#define RESOURCEDISPLAYTYPE_NDSCONTAINER   0x0000000B
#endif /* WINVER >= 0x0400 */

typedef struct  _NETRESOURCEA {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPSTR    lpLocalName;
    LPSTR    lpRemoteName;
    LPSTR    lpComment ;
    LPSTR    lpProvider;
}NETRESOURCEA, *LPNETRESOURCEA;
typedef struct  _NETRESOURCEW {
    DWORD    dwScope;
    DWORD    dwType;
    DWORD    dwDisplayType;
    DWORD    dwUsage;
    LPWSTR   lpLocalName;
    LPWSTR   lpRemoteName;
    LPWSTR   lpComment ;
    LPWSTR   lpProvider;
}NETRESOURCEW, *LPNETRESOURCEW;
#ifdef UNICODE
typedef NETRESOURCEW NETRESOURCE;
typedef LPNETRESOURCEW LPNETRESOURCE;
#else
typedef NETRESOURCEA NETRESOURCE;
typedef LPNETRESOURCEA LPNETRESOURCE;
#endif // UNICODE


//
//  Network Connections.
//

#define NETPROPERTY_PERSISTENT       1

#define CONNECT_UPDATE_PROFILE      0x00000001
#define CONNECT_UPDATE_RECENT       0x00000002
#define CONNECT_TEMPORARY           0x00000004
#define CONNECT_INTERACTIVE         0x00000008
#define CONNECT_PROMPT              0x00000010
#define CONNECT_NEED_DRIVE          0x00000020
#if(WINVER >= 0x0400)
#define CONNECT_REFCOUNT            0x00000040
#define CONNECT_REDIRECT            0x00000080
#define CONNECT_LOCALDRIVE          0x00000100
#define CONNECT_CURRENT_MEDIA       0x00000200
#define CONNECT_DEFERRED            0x00000400
#define CONNECT_RESERVED            0xFF000000
#endif /* WINVER >= 0x0400 */
#if(WINVER >= 0x0500)
#define CONNECT_COMMANDLINE         0x00000800
#define CONNECT_CMD_SAVECRED        0x00001000
#endif /* WINVER >= 0x0500 */
#if(WINVER >= 0x0600)
#define CONNECT_CRED_RESET          0x00002000
#endif /* WINVER >= 0x0600 */

__checkReturn
DWORD APIENTRY
WNetAddConnectionA(
    __in     LPCSTR   lpRemoteName,
    __in_opt LPCSTR   lpPassword,
    __in_opt LPCSTR   lpLocalName
    );
__checkReturn
DWORD APIENTRY
WNetAddConnectionW(
    __in     LPCWSTR   lpRemoteName,
    __in_opt LPCWSTR   lpPassword,
    __in_opt LPCWSTR   lpLocalName
    );
#ifdef UNICODE
#define WNetAddConnection  WNetAddConnectionW
#else
#define WNetAddConnection  WNetAddConnectionA
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetAddConnection2A(
    __in     LPNETRESOURCEA lpNetResource,
    __in_opt LPCSTR       lpPassword,
    __in_opt LPCSTR       lpUserName,
    __in     DWORD          dwFlags
    );
__checkReturn
DWORD APIENTRY
WNetAddConnection2W(
    __in     LPNETRESOURCEW lpNetResource,
    __in_opt LPCWSTR       lpPassword,
    __in_opt LPCWSTR       lpUserName,
    __in     DWORD          dwFlags
    );
#ifdef UNICODE
#define WNetAddConnection2  WNetAddConnection2W
#else
#define WNetAddConnection2  WNetAddConnection2A
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetAddConnection3A(
    __in_opt HWND           hwndOwner,
    __in     LPNETRESOURCEA lpNetResource,
    __in_opt LPCSTR       lpPassword,
    __in_opt LPCSTR       lpUserName,
    __in     DWORD          dwFlags
    );
__checkReturn
DWORD APIENTRY
WNetAddConnection3W(
    __in_opt HWND           hwndOwner,
    __in     LPNETRESOURCEW lpNetResource,
    __in_opt LPCWSTR       lpPassword,
    __in_opt LPCWSTR       lpUserName,
    __in     DWORD          dwFlags
    );
#ifdef UNICODE
#define WNetAddConnection3  WNetAddConnection3W
#else
#define WNetAddConnection3  WNetAddConnection3A
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetCancelConnectionA(
    __in LPCSTR lpName,
    __in BOOL     fForce
    );
__checkReturn
DWORD APIENTRY
WNetCancelConnectionW(
    __in LPCWSTR lpName,
    __in BOOL     fForce
    );
#ifdef UNICODE
#define WNetCancelConnection  WNetCancelConnectionW
#else
#define WNetCancelConnection  WNetCancelConnectionA
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetCancelConnection2A(
    __in LPCSTR lpName,
    __in DWORD    dwFlags,
    __in BOOL     fForce
    );
__checkReturn
DWORD APIENTRY
WNetCancelConnection2W(
    __in LPCWSTR lpName,
    __in DWORD    dwFlags,
    __in BOOL     fForce
    );
#ifdef UNICODE
#define WNetCancelConnection2  WNetCancelConnection2W
#else
#define WNetCancelConnection2  WNetCancelConnection2A
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetGetConnectionA(
    __in LPCSTR lpLocalName,
    __out_ecount_opt(*lpnLength) LPSTR  lpRemoteName,
    __inout LPDWORD lpnLength
    );
__checkReturn
DWORD APIENTRY
WNetGetConnectionW(
    __in LPCWSTR lpLocalName,
    __out_ecount_opt(*lpnLength) LPWSTR  lpRemoteName,
    __inout LPDWORD lpnLength
    );
#ifdef UNICODE
#define WNetGetConnection  WNetGetConnectionW
#else
#define WNetGetConnection  WNetGetConnectionA
#endif // !UNICODE


#if (_WIN32_WINNT >= _WIN32_WINNT_LONGHORN)
__checkReturn
DWORD APIENTRY
WNetRestoreSingleConnectionW(
    __in_opt HWND    hwndParent,
    __in     LPCWSTR lpDevice,
    __in     BOOL    fUseUI
    );

#else
__checkReturn
DWORD APIENTRY
WNetRestoreConnectionW(
    __in_opt HWND    hWnd,
    __in     LPCWSTR lpDevice
    );

#endif


#if(WINVER >= 0x0400)
__checkReturn
DWORD APIENTRY
WNetUseConnectionA(
    __in_opt HWND            hwndOwner,
    __in     LPNETRESOURCEA  lpNetResource,
    __in_opt LPCSTR        lpPassword,
    __in_opt LPCSTR        lpUserId,
    __in     DWORD           dwFlags,
    __out_ecount_opt(*lpBufferSize) LPSTR lpAccessName,
    __inout_opt LPDWORD lpBufferSize,
    __out_opt LPDWORD   lpResult
    );
__checkReturn
DWORD APIENTRY
WNetUseConnectionW(
    __in_opt HWND            hwndOwner,
    __in     LPNETRESOURCEW  lpNetResource,
    __in_opt LPCWSTR        lpPassword,
    __in_opt LPCWSTR        lpUserId,
    __in     DWORD           dwFlags,
    __out_ecount_opt(*lpBufferSize) LPWSTR lpAccessName,
    __inout_opt LPDWORD lpBufferSize,
    __out_opt LPDWORD   lpResult
    );
#ifdef UNICODE
#define WNetUseConnection  WNetUseConnectionW
#else
#define WNetUseConnection  WNetUseConnectionA
#endif // !UNICODE
#endif /* WINVER >= 0x0400 */


//
//  Network Connection Dialogs.
//
__checkReturn
DWORD APIENTRY
WNetConnectionDialog(
    __in HWND  hwnd,
    __in DWORD dwType
    );

__checkReturn
DWORD APIENTRY
WNetDisconnectDialog(
    __in_opt HWND hwnd,
    __in DWORD dwType
    );

#if(WINVER >= 0x0400)
typedef struct _CONNECTDLGSTRUCTA{
    DWORD cbStructure;       /* size of this structure in bytes */
    HWND hwndOwner;          /* owner window for the dialog */
    LPNETRESOURCEA lpConnRes;/* Requested Resource info    */
    DWORD dwFlags;           /* flags (see below) */
    DWORD dwDevNum;          /* number of devices connected to */
} CONNECTDLGSTRUCTA, FAR *LPCONNECTDLGSTRUCTA;
typedef struct _CONNECTDLGSTRUCTW{
    DWORD cbStructure;       /* size of this structure in bytes */
    HWND hwndOwner;          /* owner window for the dialog */
    LPNETRESOURCEW lpConnRes;/* Requested Resource info    */
    DWORD dwFlags;           /* flags (see below) */
    DWORD dwDevNum;          /* number of devices connected to */
} CONNECTDLGSTRUCTW, FAR *LPCONNECTDLGSTRUCTW;
#ifdef UNICODE
typedef CONNECTDLGSTRUCTW CONNECTDLGSTRUCT;
typedef LPCONNECTDLGSTRUCTW LPCONNECTDLGSTRUCT;
#else
typedef CONNECTDLGSTRUCTA CONNECTDLGSTRUCT;
typedef LPCONNECTDLGSTRUCTA LPCONNECTDLGSTRUCT;
#endif // UNICODE

#define CONNDLG_RO_PATH     0x00000001 /* Resource path should be read-only    */
#define CONNDLG_CONN_POINT  0x00000002 /* Netware -style movable connection point enabled */
#define CONNDLG_USE_MRU     0x00000004 /* Use MRU combobox  */
#define CONNDLG_HIDE_BOX    0x00000008 /* Hide persistent connect checkbox  */

/*
 * NOTE:  Set at most ONE of the below flags.  If neither flag is set,
 *        then the persistence is set to whatever the user chose during
 *        a previous connection
 */
#define CONNDLG_PERSIST     0x00000010 /* Force persistent connection */
#define CONNDLG_NOT_PERSIST 0x00000020 /* Force connection NOT persistent */

__checkReturn
DWORD APIENTRY
WNetConnectionDialog1A(
    __inout LPCONNECTDLGSTRUCTA lpConnDlgStruct
    );
__checkReturn
DWORD APIENTRY
WNetConnectionDialog1W(
    __inout LPCONNECTDLGSTRUCTW lpConnDlgStruct
    );
#ifdef UNICODE
#define WNetConnectionDialog1  WNetConnectionDialog1W
#else
#define WNetConnectionDialog1  WNetConnectionDialog1A
#endif // !UNICODE

typedef struct _DISCDLGSTRUCTA{
    DWORD           cbStructure;      /* size of this structure in bytes */
    HWND            hwndOwner;        /* owner window for the dialog */
    LPSTR           lpLocalName;      /* local device name */
    LPSTR           lpRemoteName;     /* network resource name */
    DWORD           dwFlags;          /* flags */
} DISCDLGSTRUCTA, FAR *LPDISCDLGSTRUCTA;
typedef struct _DISCDLGSTRUCTW{
    DWORD           cbStructure;      /* size of this structure in bytes */
    HWND            hwndOwner;        /* owner window for the dialog */
    LPWSTR          lpLocalName;      /* local device name */
    LPWSTR          lpRemoteName;     /* network resource name */
    DWORD           dwFlags;          /* flags */
} DISCDLGSTRUCTW, FAR *LPDISCDLGSTRUCTW;
#ifdef UNICODE
typedef DISCDLGSTRUCTW DISCDLGSTRUCT;
typedef LPDISCDLGSTRUCTW LPDISCDLGSTRUCT;
#else
typedef DISCDLGSTRUCTA DISCDLGSTRUCT;
typedef LPDISCDLGSTRUCTA LPDISCDLGSTRUCT;
#endif // UNICODE

#define DISC_UPDATE_PROFILE         0x00000001
#define DISC_NO_FORCE               0x00000040

__checkReturn
DWORD APIENTRY
WNetDisconnectDialog1A(
    __in LPDISCDLGSTRUCTA lpConnDlgStruct
    );
__checkReturn
DWORD APIENTRY
WNetDisconnectDialog1W(
    __in LPDISCDLGSTRUCTW lpConnDlgStruct
    );
#ifdef UNICODE
#define WNetDisconnectDialog1  WNetDisconnectDialog1W
#else
#define WNetDisconnectDialog1  WNetDisconnectDialog1A
#endif // !UNICODE
#endif /* WINVER >= 0x0400 */

//
//  Network Browsing.
//

__checkReturn
DWORD APIENTRY
WNetOpenEnumA(
    __in  DWORD          dwScope,
    __in  DWORD          dwType,
    __in  DWORD          dwUsage,
    __in_opt LPNETRESOURCEA lpNetResource,
    __out LPHANDLE       lphEnum
    );
__checkReturn
DWORD APIENTRY
WNetOpenEnumW(
    __in  DWORD          dwScope,
    __in  DWORD          dwType,
    __in  DWORD          dwUsage,
    __in_opt LPNETRESOURCEW lpNetResource,
    __out LPHANDLE       lphEnum
    );
#ifdef UNICODE
#define WNetOpenEnum  WNetOpenEnumW
#else
#define WNetOpenEnum  WNetOpenEnumA
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetEnumResourceA(
    __in    HANDLE  hEnum,
    __inout LPDWORD lpcCount,
    __out_bcount(*lpBufferSize) LPVOID  lpBuffer,
    __inout LPDWORD lpBufferSize
    );
__checkReturn
DWORD APIENTRY
WNetEnumResourceW(
    __in    HANDLE  hEnum,
    __inout LPDWORD lpcCount,
    __out_bcount(*lpBufferSize) LPVOID  lpBuffer,
    __inout LPDWORD lpBufferSize
    );
#ifdef UNICODE
#define WNetEnumResource  WNetEnumResourceW
#else
#define WNetEnumResource  WNetEnumResourceA
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetCloseEnum(
    __in HANDLE   hEnum
    );

#if(WINVER >= 0x0400)
__checkReturn
DWORD APIENTRY
WNetGetResourceParentA(
    __in LPNETRESOURCEA lpNetResource,
    __out_bcount(*lpcbBuffer) LPVOID lpBuffer,
    __inout LPDWORD lpcbBuffer
    );
__checkReturn
DWORD APIENTRY
WNetGetResourceParentW(
    __in LPNETRESOURCEW lpNetResource,
    __out_bcount(*lpcbBuffer) LPVOID lpBuffer,
    __inout LPDWORD lpcbBuffer
    );
#ifdef UNICODE
#define WNetGetResourceParent  WNetGetResourceParentW
#else
#define WNetGetResourceParent  WNetGetResourceParentA
#endif // !UNICODE

__checkReturn
DWORD APIENTRY
WNetGetResourceInformationA(
    __in LPNETRESOURCEA  lpNetResource,
    __out_bcount(*lpcbBuffer) LPVOID lpBuffer,
    __inout LPDWORD lpcbBuffer,
    __deref_out LPSTR *lplpSystem
    );
__checkReturn
DWORD APIENTRY
WNetGetResourceInformationW(
    __in LPNETRESOURCEW  lpNetResource,
    __out_bcount(*lpcbBuffer) LPVOID lpBuffer,
    __inout LPDWORD lpcbBuffer,
    __deref_out LPWSTR *lplpSystem
    );
#ifdef UNICODE
#define WNetGetResourceInformation  WNetGetResourceInformationW
#else
#define WNetGetResourceInformation  WNetGetResourceInformationA
#endif // !UNICODE
#endif /* WINVER >= 0x0400 */

//
//  Universal Naming.
//

#define UNIVERSAL_NAME_INFO_LEVEL   0x00000001
#define REMOTE_NAME_INFO_LEVEL      0x00000002

typedef struct  _UNIVERSAL_NAME_INFOA {
    LPSTR    lpUniversalName;
}UNIVERSAL_NAME_INFOA, *LPUNIVERSAL_NAME_INFOA;
typedef struct  _UNIVERSAL_NAME_INFOW {
    LPWSTR   lpUniversalName;
}UNIVERSAL_NAME_INFOW, *LPUNIVERSAL_NAME_INFOW;
#ifdef UNICODE
typedef UNIVERSAL_NAME_INFOW UNIVERSAL_NAME_INFO;
typedef LPUNIVERSAL_NAME_INFOW LPUNIVERSAL_NAME_INFO;
#else
typedef UNIVERSAL_NAME_INFOA UNIVERSAL_NAME_INFO;
typedef LPUNIVERSAL_NAME_INFOA LPUNIVERSAL_NAME_INFO;
#endif // UNICODE

typedef struct  _REMOTE_NAME_INFOA {
    LPSTR    lpUniversalName;
    LPSTR    lpConnectionName;
    LPSTR    lpRemainingPath;
}REMOTE_NAME_INFOA, *LPREMOTE_NAME_INFOA;
typedef struct  _REMOTE_NAME_INFOW {
    LPWSTR   lpUniversalName;
    LPWSTR   lpConnectionName;
    LPWSTR   lpRemainingPath;
}REMOTE_NAME_INFOW, *LPREMOTE_NAME_INFOW;
#ifdef UNICODE
typedef REMOTE_NAME_INFOW REMOTE_NAME_INFO;
typedef LPREMOTE_NAME_INFOW LPREMOTE_NAME_INFO;
#else
typedef REMOTE_NAME_INFOA REMOTE_NAME_INFO;
typedef LPREMOTE_NAME_INFOA LPREMOTE_NAME_INFO;
#endif // UNICODE

__checkReturn
DWORD APIENTRY
WNetGetUniversalNameA(
    __in LPCSTR lpLocalPath,
    __in DWORD    dwInfoLevel,
    __out_bcount(*lpBufferSize) LPVOID lpBuffer,
    __inout LPDWORD lpBufferSize
    );
__checkReturn
DWORD APIENTRY
WNetGetUniversalNameW(
    __in LPCWSTR lpLocalPath,
    __in DWORD    dwInfoLevel,
    __out_bcount(*lpBufferSize) LPVOID lpBuffer,
    __inout LPDWORD lpBufferSize
    );
#ifdef UNICODE
#define WNetGetUniversalName  WNetGetUniversalNameW
#else
#define WNetGetUniversalName  WNetGetUniversalNameA
#endif // !UNICODE

//
//  Authentication and Logon/Logoff.
//
__checkReturn
DWORD APIENTRY
WNetGetUserA(
    __in_opt LPCSTR  lpName,
    __out_ecount(*lpnLength) LPSTR lpUserName,
    __inout  LPDWORD lpnLength
    );
//
//  Authentication and Logon/Logoff.
//
__checkReturn
DWORD APIENTRY
WNetGetUserW(
    __in_opt LPCWSTR  lpName,
    __out_ecount(*lpnLength) LPWSTR lpUserName,
    __inout  LPDWORD lpnLength
    );
#ifdef UNICODE
#define WNetGetUser  WNetGetUserW
#else
#define WNetGetUser  WNetGetUserA
#endif // !UNICODE



//
// Other.
//

#if(WINVER >= 0x0400)
#define WNFMT_MULTILINE         0x01
#define WNFMT_ABBREVIATED       0x02
#define WNFMT_INENUM            0x10
#define WNFMT_CONNECTION        0x20
#endif /* WINVER >= 0x0400 */


#if(WINVER >= 0x0400)
__checkReturn
DWORD APIENTRY
WNetGetProviderNameA(
    __in    DWORD   dwNetType,
    __out_ecount(*lpBufferSize) LPSTR lpProviderName,
    __inout LPDWORD lpBufferSize
    );
__checkReturn
DWORD APIENTRY
WNetGetProviderNameW(
    __in    DWORD   dwNetType,
    __out_ecount(*lpBufferSize) LPWSTR lpProviderName,
    __inout LPDWORD lpBufferSize
    );
#ifdef UNICODE
#define WNetGetProviderName  WNetGetProviderNameW
#else
#define WNetGetProviderName  WNetGetProviderNameA
#endif // !UNICODE

typedef struct _NETINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwProviderVersion;
    DWORD dwStatus;
    DWORD dwCharacteristics;
    ULONG_PTR dwHandle;
    WORD  wNetType;
    DWORD dwPrinters;
    DWORD dwDrives;
} NETINFOSTRUCT, FAR *LPNETINFOSTRUCT;

#define NETINFO_DLL16       0x00000001  /* Provider running as 16 bit Winnet Driver */
#define NETINFO_DISKRED     0x00000004  /* Provider requires disk redirections to connect */
#define NETINFO_PRINTERRED  0x00000008  /* Provider requires printer redirections to connect */

__checkReturn
DWORD APIENTRY
WNetGetNetworkInformationA(
    __in  LPCSTR        lpProvider,
    __out LPNETINFOSTRUCT lpNetInfoStruct
    );
__checkReturn
DWORD APIENTRY
WNetGetNetworkInformationW(
    __in  LPCWSTR        lpProvider,
    __out LPNETINFOSTRUCT lpNetInfoStruct
    );
#ifdef UNICODE
#define WNetGetNetworkInformation  WNetGetNetworkInformationW
#else
#define WNetGetNetworkInformation  WNetGetNetworkInformationA
#endif // !UNICODE

#endif /* WINVER >= 0x0400 */

//
//  Error handling.
//

__checkReturn
DWORD APIENTRY
WNetGetLastErrorA(
    __out LPDWORD    lpError,
    __out_ecount(nErrorBufSize) LPSTR lpErrorBuf,
    __in DWORD      nErrorBufSize,
    __out_ecount(nNameBufSize) LPSTR  lpNameBuf,
    __in DWORD      nNameBufSize
    );
__checkReturn
DWORD APIENTRY
WNetGetLastErrorW(
    __out LPDWORD    lpError,
    __out_ecount(nErrorBufSize) LPWSTR lpErrorBuf,
    __in DWORD      nErrorBufSize,
    __out_ecount(nNameBufSize) LPWSTR  lpNameBuf,
    __in DWORD      nNameBufSize
    );
#ifdef UNICODE
#define WNetGetLastError  WNetGetLastErrorW
#else
#define WNetGetLastError  WNetGetLastErrorA
#endif // !UNICODE

//
//  STATUS CODES
//

// General

#define WN_SUCCESS                      NO_ERROR
#define WN_NO_ERROR                     NO_ERROR
#define WN_NOT_SUPPORTED                ERROR_NOT_SUPPORTED
#define WN_CANCEL                       ERROR_CANCELLED
#define WN_RETRY                        ERROR_RETRY
#define WN_NET_ERROR                    ERROR_UNEXP_NET_ERR
#define WN_MORE_DATA                    ERROR_MORE_DATA
#define WN_BAD_POINTER                  ERROR_INVALID_ADDRESS
#define WN_BAD_VALUE                    ERROR_INVALID_PARAMETER
#define WN_BAD_USER                     ERROR_BAD_USERNAME
#define WN_BAD_PASSWORD                 ERROR_INVALID_PASSWORD
#define WN_ACCESS_DENIED                ERROR_ACCESS_DENIED
#define WN_FUNCTION_BUSY                ERROR_BUSY
#define WN_WINDOWS_ERROR                ERROR_UNEXP_NET_ERR
#define WN_OUT_OF_MEMORY                ERROR_NOT_ENOUGH_MEMORY
#define WN_NO_NETWORK                   ERROR_NO_NETWORK
#define WN_EXTENDED_ERROR               ERROR_EXTENDED_ERROR
#define WN_BAD_LEVEL                    ERROR_INVALID_LEVEL
#define WN_BAD_HANDLE                   ERROR_INVALID_HANDLE
#if(WINVER >= 0x0400)
#define WN_NOT_INITIALIZING             ERROR_ALREADY_INITIALIZED
#define WN_NO_MORE_DEVICES              ERROR_NO_MORE_DEVICES
#endif /* WINVER >= 0x0400 */

// Connection

#define WN_NOT_CONNECTED                       ERROR_NOT_CONNECTED
#define WN_OPEN_FILES                          ERROR_OPEN_FILES
#define WN_DEVICE_IN_USE                       ERROR_DEVICE_IN_USE
#define WN_BAD_NETNAME                         ERROR_BAD_NET_NAME
#define WN_BAD_LOCALNAME                       ERROR_BAD_DEVICE
#define WN_ALREADY_CONNECTED                   ERROR_ALREADY_ASSIGNED
#define WN_DEVICE_ERROR                        ERROR_GEN_FAILURE
#define WN_CONNECTION_CLOSED                   ERROR_CONNECTION_UNAVAIL
#define WN_NO_NET_OR_BAD_PATH                  ERROR_NO_NET_OR_BAD_PATH
#define WN_BAD_PROVIDER                        ERROR_BAD_PROVIDER
#define WN_CANNOT_OPEN_PROFILE                 ERROR_CANNOT_OPEN_PROFILE
#define WN_BAD_PROFILE                         ERROR_BAD_PROFILE
#define WN_BAD_DEV_TYPE                        ERROR_BAD_DEV_TYPE
#define WN_DEVICE_ALREADY_REMEMBERED           ERROR_DEVICE_ALREADY_REMEMBERED
#define WN_CONNECTED_OTHER_PASSWORD            ERROR_CONNECTED_OTHER_PASSWORD
#if(WINVER >= 0x0501)
#define WN_CONNECTED_OTHER_PASSWORD_DEFAULT    ERROR_CONNECTED_OTHER_PASSWORD_DEFAULT
#endif /* WINVER >= 0x0501 */

// Enumeration

#define WN_NO_MORE_ENTRIES              ERROR_NO_MORE_ITEMS
#define WN_NOT_CONTAINER                ERROR_NOT_CONTAINER

#if(WINVER >= 0x0400)
// Authentication

#define WN_NOT_AUTHENTICATED            ERROR_NOT_AUTHENTICATED
#define WN_NOT_LOGGED_ON                ERROR_NOT_LOGGED_ON
#define WN_NOT_VALIDATED                ERROR_NO_LOGON_SERVERS
#endif /* WINVER >= 0x0400 */

//
//  For Shell
//

#if(WINVER >= 0x0400)
typedef struct _NETCONNECTINFOSTRUCT{
    DWORD cbStructure;
    DWORD dwFlags;
    DWORD dwSpeed;
    DWORD dwDelay;
    DWORD dwOptDataSize;
} NETCONNECTINFOSTRUCT,  *LPNETCONNECTINFOSTRUCT;

#define WNCON_FORNETCARD        0x00000001
#define WNCON_NOTROUTED         0x00000002
#define WNCON_SLOWLINK          0x00000004
#define WNCON_DYNAMIC           0x00000008

__checkReturn
DWORD APIENTRY
MultinetGetConnectionPerformanceA(
    __in  LPNETRESOURCEA lpNetResource,
    __out LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
    );
__checkReturn
DWORD APIENTRY
MultinetGetConnectionPerformanceW(
    __in  LPNETRESOURCEW lpNetResource,
    __out LPNETCONNECTINFOSTRUCT lpNetConnectInfoStruct
    );
#ifdef UNICODE
#define MultinetGetConnectionPerformance  MultinetGetConnectionPerformanceW
#else
#define MultinetGetConnectionPerformance  MultinetGetConnectionPerformanceA
#endif // !UNICODE
#endif /* WINVER >= 0x0400 */


#ifdef __cplusplus
}
#endif

#endif  // _WINNETWK_


