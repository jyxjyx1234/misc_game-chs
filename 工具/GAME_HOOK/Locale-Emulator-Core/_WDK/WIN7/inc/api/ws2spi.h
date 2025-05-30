//$TAG BIZDEV
//  $IPCategory:     
//  $DealPointID:    118736
//  $AgreementName:  berkeley software distribution license
//  $AgreementType:  oss license
//  $ExternalOrigin: regents of the university of california
//$ENDTAG

//$TAG ENGR 
//  $Owner:    vadime
//  $Module:   published_inc
//
//$ENDTAG

/* WS2SPI.H -- definitions to be used with the WinSock service provider.
 *
 * Copyright (c) Microsoft Corporation. All rights reserved.
 *
 * This header file corresponds to version 2.2.x of the WinSock SPI
 * specification.
 *
 * This file includes parts which are Copyright (c) 1982-1986 Regents
 * of the University of California.  All rights reserved.  The
 * Berkeley Software License Agreement specifies the terms and
 * conditions for redistribution.
 */

#ifndef _WINSOCK2SPI_
#define _WINSOCK2SPI_

#if _MSC_VER > 1000
#pragma once
#endif

/*
 * Pull in WINSOCK2.H if necessary
 */

#ifndef _WINSOCK2API_
#include <winsock2.h>
#endif /* _WINSOCK2API_ */

/*
 * Ensure structures are packed consistently.
 */

#if !defined(_WIN64)
#include <pshpack4.h>
#endif

#define WSPDESCRIPTION_LEN 255

#define WSS_OPERATION_IN_PROGRESS 0x00000103L

typedef struct WSPData {
    WORD         wVersion;
    WORD         wHighVersion;
    WCHAR        szDescription[WSPDESCRIPTION_LEN+1];
} WSPDATA, FAR * LPWSPDATA;

typedef struct _WSATHREADID {
    HANDLE      ThreadHandle;
    DWORD_PTR    Reserved;
} WSATHREADID, FAR * LPWSATHREADID;

/*
 * SPI function linkage.
 */

#define WSPAPI WSAAPI


#ifdef __cplusplus
extern "C" {
#endif

/*
 * Pointer to a blocking callback. A pointer to a blocking callback is
 * returned from the WPUQueryBlockingCallback() upcall. Note that this
 * function's signature is not identical to an application's blocking
 * hook function.
 */

typedef
BOOL
(CALLBACK FAR * LPBLOCKINGCALLBACK)(
    DWORD_PTR dwContext
    );

/*
 * Pointer to a user APC function. This is used as a parameter to the
 * WPUQueueUserApc() upcall. Note that this function's signature is not
 * identical to an application's completion routine.
 */

typedef
VOID
(CALLBACK FAR * LPWSAUSERAPC)(
    DWORD_PTR dwContext
    );

/*
 * Pointers to the individual entries in a service provider's proc table.
 */

typedef
__checkReturn
SOCKET
(WSPAPI * LPWSPACCEPT)(
    __in SOCKET s,
    __out_bcount_part_opt(*addrlen, *addrlen) struct sockaddr FAR * addr,
    __inout_opt LPINT addrlen,
    __in_opt LPCONDITIONPROC lpfnCondition,
    __in_opt DWORD_PTR dwCallbackData,
    __out LPINT lpErrno
    );

typedef
INT
(WSPAPI * LPWSPADDRESSTOSTRING)(
    __in_bcount(dwAddressLength) LPSOCKADDR lpsaAddress,
    __in DWORD dwAddressLength,
    __in_opt LPWSAPROTOCOL_INFOW lpProtocolInfo,
    __out_ecount_part(*lpdwAddressStringLength, *lpdwAddressStringLength) LPWSTR lpszAddressString,
    __inout LPDWORD lpdwAddressStringLength,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPASYNCSELECT)(
    __in SOCKET s,
    __in HWND hWnd,
    __in unsigned int wMsg,
    __in long lEvent,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPBIND)(
    __in SOCKET s,
    __in_bcount(namelen) const struct sockaddr FAR * name,
    __in int namelen,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPCANCELBLOCKINGCALL)(
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPCLEANUP)(
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPCLOSESOCKET)(
    __in SOCKET s,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPCONNECT)(
    __in SOCKET s,
    __in_bcount(namelen) const struct sockaddr FAR * name,
    __in int namelen,
    __in_opt LPWSABUF lpCallerData,
    __out_opt LPWSABUF lpCalleeData,
    __in_opt LPQOS lpSQOS,
    __in_opt LPQOS lpGQOS,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPDUPLICATESOCKET)(
    __in SOCKET s,
    __in DWORD dwProcessId,
    __out LPWSAPROTOCOL_INFOW lpProtocolInfo,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPENUMNETWORKEVENTS)(
    __in SOCKET s,
    __in WSAEVENT hEventObject,
    __out LPWSANETWORKEVENTS lpNetworkEvents,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPEVENTSELECT)(
    __in SOCKET s,
    __in WSAEVENT hEventObject,
    __in long lNetworkEvents,
    __out LPINT lpErrno
    );

typedef
BOOL
(WSPAPI * LPWSPGETOVERLAPPEDRESULT)(
    __in SOCKET s,
    __in LPWSAOVERLAPPED lpOverlapped,
    __out LPDWORD lpcbTransfer,
    __in BOOL fWait,
    __out LPDWORD lpdwFlags,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPGETPEERNAME)(
    __in SOCKET s,
    __out_bcount_part(*namelen, *namelen) struct sockaddr FAR * name,
    __inout LPINT namelen,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPGETSOCKNAME)(
    __in SOCKET s,
    __out_bcount_part(*namelen, *namelen) struct sockaddr FAR * name,
    __inout LPINT namelen,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPGETSOCKOPT)(
    __in SOCKET s,
    __in int level,
    __in int optname,
    __out_bcount(*optlen) char FAR * optval,
    __inout LPINT optlen,
    __out LPINT lpErrno
    );

typedef
BOOL
(WSPAPI * LPWSPGETQOSBYNAME)(
    __in SOCKET s,
    __in LPWSABUF lpQOSName,
    __out LPQOS lpQOS,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPIOCTL)(
    __in SOCKET s,
    __in DWORD dwIoControlCode,
    __in_bcount_opt(cbInBuffer) LPVOID lpvInBuffer,
    __in DWORD cbInBuffer,
    __out_bcount_part_opt(cbOutBuffer, *lpcbBytesReturned) LPVOID lpvOutBuffer,
    __in DWORD cbOutBuffer,
    __out LPDWORD lpcbBytesReturned,
    __inout_opt LPWSAOVERLAPPED lpOverlapped,
    __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine,
    __in_opt LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );

typedef
SOCKET
(WSPAPI * LPWSPJOINLEAF)(
    __in SOCKET s,
    __in_bcount(namelen) const struct sockaddr FAR * name,
    __in int namelen,
    __in_opt LPWSABUF lpCallerData,
    __out_opt LPWSABUF lpCalleeData,
    __in_opt LPQOS lpSQOS,
    __in_opt LPQOS lpGQOS,
    __in DWORD dwFlags,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPLISTEN)(
    __in SOCKET s,
    __in int backlog,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPRECV)(
    __in SOCKET s,
    __in_ecount(dwBufferCount) LPWSABUF lpBuffers,
    __in DWORD dwBufferCount,
    __out_opt LPDWORD lpNumberOfBytesRecvd,
    __inout LPDWORD lpFlags,
    __inout_opt LPWSAOVERLAPPED lpOverlapped,
    __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine,
    __in_opt LPWSATHREADID lpThreadId,
    __in LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPRECVDISCONNECT)(
    __in SOCKET s,
    __in_opt LPWSABUF lpInboundDisconnectData,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPRECVFROM)(
    __in SOCKET s,
    __in_ecount(dwBufferCount) LPWSABUF lpBuffers,
    __in DWORD dwBufferCount,
    __out_opt LPDWORD lpNumberOfBytesRecvd,
    __inout LPDWORD lpFlags,
    __out_bcount_part_opt(*lpFromLen, *lpFromLen) struct sockaddr FAR * lpFrom,
    __inout_opt LPINT lpFromlen,
    __inout_opt LPWSAOVERLAPPED lpOverlapped,
    __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine,
    __in_opt LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPSELECT)(
    __in int nfds,
    __inout_opt fd_set FAR * readfds,
    __inout_opt fd_set FAR * writefds,
    __inout_opt fd_set FAR * exceptfds,
    __in_opt const struct timeval FAR * timeout,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPSEND)(
    __in SOCKET s,
    __in_ecount(dwBufferCount) LPWSABUF lpBuffers,
    __in DWORD dwBufferCount,
    __out_opt LPDWORD lpNumberOfBytesSent,
    __in DWORD dwFlags,
    __inout_opt LPWSAOVERLAPPED lpOverlapped,
    __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine,
    __in_opt LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPSENDDISCONNECT)(
    __in SOCKET s,
    __in_opt LPWSABUF lpOutboundDisconnectData,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPSENDTO)(
    __in SOCKET s,
    __in_ecount(dwBufferCount) LPWSABUF lpBuffers,
    __in DWORD dwBufferCount,
    __out_opt LPDWORD lpNumberOfBytesSent,
    __in DWORD dwFlags,
    __in_bcount_opt(iToLen) const struct sockaddr FAR * lpTo,
    __in int iTolen,
    __inout_opt LPWSAOVERLAPPED lpOverlapped,
    __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine,
    __in_opt LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPSETSOCKOPT)(
    __in SOCKET s,
    __in int level,
    __in int optname,
    __in_bcount_opt(optlen) const char FAR * optval,
    __in int optlen,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSPSHUTDOWN)(
    __in SOCKET s,
    __in int how,
    __out LPINT lpErrno
    );

typedef
__checkReturn
SOCKET
(WSPAPI * LPWSPSOCKET)(
    __in int af,
    __in int type,
    __in int protocol,
    __in_opt LPWSAPROTOCOL_INFOW lpProtocolInfo,
    __in GROUP g,
    __in DWORD dwFlags,
    __out LPINT lpErrno
    );

typedef
INT
(WSPAPI * LPWSPSTRINGTOADDRESS)(
    __in LPWSTR AddressString,
    __in INT AddressFamily,
    __in_opt LPWSAPROTOCOL_INFOW lpProtocolInfo,
    __out_bcount_part(*lpAddressLength, *lpAddressLength) LPSOCKADDR lpAddress,
    __inout LPINT lpAddressLength,
    __out LPINT lpErrno
    );

/*
 * A service provider proc table. This structure is returned by value
 * from the service provider's WSPStartup() entrypoint.
 */

typedef struct _WSPPROC_TABLE {

    LPWSPACCEPT              lpWSPAccept;
    LPWSPADDRESSTOSTRING     lpWSPAddressToString;
    LPWSPASYNCSELECT         lpWSPAsyncSelect;
    LPWSPBIND                lpWSPBind;
    LPWSPCANCELBLOCKINGCALL  lpWSPCancelBlockingCall;
    LPWSPCLEANUP             lpWSPCleanup;
    LPWSPCLOSESOCKET         lpWSPCloseSocket;
    LPWSPCONNECT             lpWSPConnect;
    LPWSPDUPLICATESOCKET     lpWSPDuplicateSocket;
    LPWSPENUMNETWORKEVENTS   lpWSPEnumNetworkEvents;
    LPWSPEVENTSELECT         lpWSPEventSelect;
    LPWSPGETOVERLAPPEDRESULT lpWSPGetOverlappedResult;
    LPWSPGETPEERNAME         lpWSPGetPeerName;
    LPWSPGETSOCKNAME         lpWSPGetSockName;
    LPWSPGETSOCKOPT          lpWSPGetSockOpt;
    LPWSPGETQOSBYNAME        lpWSPGetQOSByName;
    LPWSPIOCTL               lpWSPIoctl;
    LPWSPJOINLEAF            lpWSPJoinLeaf;
    LPWSPLISTEN              lpWSPListen;
    LPWSPRECV                lpWSPRecv;
    LPWSPRECVDISCONNECT      lpWSPRecvDisconnect;
    LPWSPRECVFROM            lpWSPRecvFrom;
    LPWSPSELECT              lpWSPSelect;
    LPWSPSEND                lpWSPSend;
    LPWSPSENDDISCONNECT      lpWSPSendDisconnect;
    LPWSPSENDTO              lpWSPSendTo;
    LPWSPSETSOCKOPT          lpWSPSetSockOpt;
    LPWSPSHUTDOWN            lpWSPShutdown;
    LPWSPSOCKET              lpWSPSocket;
    LPWSPSTRINGTOADDRESS     lpWSPStringToAddress;

} WSPPROC_TABLE, FAR * LPWSPPROC_TABLE;

/*
 * Pointers to the individual entries in the upcall table.
 */

typedef
BOOL
(WSPAPI * LPWPUCLOSEEVENT)(
    __in WSAEVENT hEvent,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWPUCLOSESOCKETHANDLE)(
    __in SOCKET s,
    __out LPINT lpErrno
    );

typedef
WSAEVENT
(WSPAPI * LPWPUCREATEEVENT)(
    __out LPINT lpErrno
    );

typedef
__checkReturn
SOCKET
(WSPAPI * LPWPUCREATESOCKETHANDLE)(
    __in DWORD dwCatalogEntryId,
    __in DWORD_PTR dwContext,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWPUFDISSET)(
    __in SOCKET s,
    __in fd_set FAR * fdset
    );

typedef
int
(WSPAPI * LPWPUGETPROVIDERPATH)(
    __in LPGUID lpProviderId,
    __out_ecount(*lpProviderDllPathLen) WCHAR FAR * lpszProviderDllPath,
    __inout LPINT lpProviderDllPathLen,
    __out LPINT lpErrno
    );

typedef
SOCKET
(WSPAPI * LPWPUMODIFYIFSHANDLE)(
    __in DWORD dwCatalogEntryId,
    __in SOCKET ProposedHandle,
    __out LPINT lpErrno
    );

typedef
BOOL
(WSPAPI * LPWPUPOSTMESSAGE)(
    __in HWND hWnd,
    __in UINT Msg,
    __in WPARAM wParam,
    __in LPARAM lParam
    );

typedef
int
(WSPAPI * LPWPUQUERYBLOCKINGCALLBACK)(
    __in DWORD dwCatalogEntryId,
    __out LPBLOCKINGCALLBACK FAR * lplpfnCallback,
    __out PDWORD_PTR lpdwContext,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWPUQUERYSOCKETHANDLECONTEXT)(
    __in SOCKET s,
    __out PDWORD_PTR lpContext,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWPUQUEUEAPC)(
    __in LPWSATHREADID lpThreadId,
    __in LPWSAUSERAPC lpfnUserApc,
    __in DWORD_PTR dwContext,
    __out LPINT lpErrno
    );

typedef
BOOL
(WSPAPI * LPWPURESETEVENT)(
    __in WSAEVENT hEvent,
    __out LPINT lpErrno
    );

typedef
BOOL
(WSPAPI * LPWPUSETEVENT)(
    __in WSAEVENT hEvent,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWPUOPENCURRENTTHREAD)(
    __out LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWPUCLOSETHREAD)(
    __in LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );


// Available only directly from ws2_32.dll
typedef
int
(WSPAPI * LPWPUCOMPLETEOVERLAPPEDREQUEST) (
    __in SOCKET s,
    __inout LPWSAOVERLAPPED lpOverlapped,
    __in DWORD dwError,
    __in DWORD cbTransferred,
    __out LPINT lpErrno
);

/*
 * The upcall table. This structure is passed by value to the service
 * provider's WSPStartup() entrypoint.
 */

typedef struct _WSPUPCALLTABLE {

    LPWPUCLOSEEVENT               lpWPUCloseEvent;
    LPWPUCLOSESOCKETHANDLE        lpWPUCloseSocketHandle;
    LPWPUCREATEEVENT              lpWPUCreateEvent;
    LPWPUCREATESOCKETHANDLE       lpWPUCreateSocketHandle;
    LPWPUFDISSET                  lpWPUFDIsSet;
    LPWPUGETPROVIDERPATH          lpWPUGetProviderPath;
    LPWPUMODIFYIFSHANDLE          lpWPUModifyIFSHandle;
    LPWPUPOSTMESSAGE              lpWPUPostMessage;
    LPWPUQUERYBLOCKINGCALLBACK    lpWPUQueryBlockingCallback;
    LPWPUQUERYSOCKETHANDLECONTEXT lpWPUQuerySocketHandleContext;
    LPWPUQUEUEAPC                 lpWPUQueueApc;
    LPWPURESETEVENT               lpWPUResetEvent;
    LPWPUSETEVENT                 lpWPUSetEvent;
    LPWPUOPENCURRENTTHREAD        lpWPUOpenCurrentThread;
    LPWPUCLOSETHREAD              lpWPUCloseThread;

} WSPUPCALLTABLE, FAR * LPWSPUPCALLTABLE;

/*
 *  WinSock 2 SPI socket function prototypes
 */

__control_entrypoint(DllExport)
__checkReturn
int
WSPAPI
WSPStartup(
    __in WORD wVersionRequested,
    __in LPWSPDATA lpWSPData,
    __in LPWSAPROTOCOL_INFOW lpProtocolInfo,
    __in WSPUPCALLTABLE UpcallTable,
    __out LPWSPPROC_TABLE lpProcTable
    );

typedef
__checkReturn
int
(WSPAPI * LPWSPSTARTUP)(
    __in WORD wVersionRequested,
    __in LPWSPDATA lpWSPData,
    __in LPWSAPROTOCOL_INFOW lpProtocolInfo,
    __in WSPUPCALLTABLE UpcallTable,
    __out LPWSPPROC_TABLE lpProcTable
    );

/*
 * Installation and configuration entrypoints.
 */

__control_entrypoint(DllExport)
int
WSPAPI
WSCEnumProtocols(
    __in_opt LPINT lpiProtocols,
    __out_bcount_part_opt(*lpdwBufferLength, *lpdwBufferLength) LPWSAPROTOCOL_INFOW lpProtocolBuffer,
    __inout LPDWORD lpdwBufferLength,
    __out   LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSCENUMPROTOCOLS)(
    __in_opt LPINT   lpiProtocols,
    __out_bcount_part_opt(*lpdwBufferLength, *lpdwBufferlength) LPWSAPROTOCOL_INFOW lpProtocolBuffer,
    __inout LPDWORD lpdwBufferLength,
    __out   LPINT   lpErrno
    );

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

/*
 * 64-bit architectures capable of running 32-bit code have
 * separate 64-bit and 32-bit catalogs.  API with '32' prefix
 * allow 32 bit catalog manipulations by 64 bit process.
 */
__control_entrypoint(DllExport)
int
WSPAPI
WSCEnumProtocols32(
    __in_opt LPINT   lpiProtocols,
    __out_bcount(*lpdwBufferLength) LPWSAPROTOCOL_INFOW lpProtocolBuffer,
    __inout  LPDWORD lpdwBufferLength,
    __out    LPINT   lpErrno
    );
#endif //(defined(_WIN64) && _WIN32_WINNT >= 0x0501)

__control_entrypoint(DllExport)
int
WSPAPI
WSCDeinstallProvider(
    __in LPGUID lpProviderId,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSCDEINSTALLPROVIDER)(
    __in  LPGUID lpProviderId,
    __out LPINT lpErrno
    );

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

__control_entrypoint(DllExport)
int
WSPAPI
WSCDeinstallProvider32(
    __in   LPGUID lpProviderId,
    __out  LPINT lpErrno
    );
#endif //(defined(_WIN64) && _WIN32_WINNT >= 0x0501)

__control_entrypoint(DllExport)
int
WSPAPI
WSCInstallProvider(
    __in LPGUID lpProviderId,
    __in_z const WCHAR FAR * lpszProviderDllPath,
    __in_ecount(dwNumberOfEntries) const LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in  DWORD dwNumberOfEntries,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSCINSTALLPROVIDER)(
    __in LPGUID lpProviderId,
    __in_z const WCHAR FAR * lpszProviderDllPath,
    __in_ecount(dwNumberOfEntries) const LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in DWORD dwNumberOfEntries,
    __out LPINT lpErrno
    );

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

/*
 * This API manipulates 64-bit and 32-bit catalogs simulteneously.
 * It is needed to guarantee the same catalog IDs for provider catalog
 * entries in both 64-bit and 32-bit catalogs.
 */
__control_entrypoint(DllExport)
int
WSPAPI
WSCInstallProvider64_32(
    __in LPGUID lpProviderId,
    __in_z const WCHAR FAR * lpszProviderDllPath,
    __in_ecount(dwNumberOfEntries) const LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in DWORD dwNumberOfEntries,
    __out LPINT lpErrno
    );
#endif //(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

__control_entrypoint(DllExport)
int
WSPAPI
WSCGetProviderPath(
    __in LPGUID lpProviderId,
    __out_ecount_part(*lpProviderDllPathLen, *lpProviderDllPathLen) WCHAR FAR * lpszProviderDllPath,
    __inout LPINT lpProviderDllPathLen,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSCGETPROVIDERPATH)(
    __in LPGUID lpProviderId,
    __out_ecount_part(*lpProviderDllPathLen, *lpProviderDllPathLen) WCHAR FAR * lpszProviderDllPath,
    __inout LPINT lpProviderDllPathLen,
    __out LPINT lpErrno
    );

#if(_WIN32_WINNT >= 0x0501)
#if defined(_WIN64)
__control_entrypoint(DllExport)
int
WSPAPI
WSCGetProviderPath32(
    __in LPGUID lpProviderId,
    __out_ecount_part(*lpProviderDllPathLen, *lpProviderDllPathLen) WCHAR FAR * lpszProviderDllPath,
    __inout LPINT lpProviderDllPathLen,
    __out LPINT lpErrno
    );
#endif

__control_entrypoint(DllExport)
int
WSPAPI
WSCUpdateProvider(
    __in  LPGUID lpProviderId,
    __in_z const WCHAR FAR * lpszProviderDllPath,
    __in_ecount(dwNumberOfEntries) const LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in  DWORD dwNumberOfEntries,
    __out LPINT lpErrno
    );

typedef
int
(WSPAPI * LPWSCUPDATEPROVIDER)(
    __in  LPGUID lpProviderId,
    __in_z  const WCHAR FAR * lpszProviderDllPath,
    __in_ecount(dwNumberOfEntries) const LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in  DWORD dwNumberOfEntries,
    __out LPINT lpErrno
    );

#if defined(_WIN64)
__control_entrypoint(DllExport)
int
WSPAPI
WSCUpdateProvider32(
    __in  LPGUID lpProviderId,
    __in_z  const WCHAR FAR * lpszProviderDllPath,
    __in_ecount(dwNumberOfEntries) const LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in  DWORD dwNumberOfEntries,
    __out LPINT lpErrno
    );
#endif
#endif //(_WIN32_WINNT >= 0x0501)

#if (_WIN32_WINNT < 0x0600)
int
WSPAPI
WSCInstallQOSTemplate (
    __in  const LPGUID    Guid,
    __in  LPWSABUF        QosName,
    __in  LPQOS           Qos
    );

typedef
int
(WSPAPI * LPWSCINSTALLQOSTEMPLATE)(
    __in const LPGUID    Guid,
    __in LPWSABUF        QosName,
    __in LPQOS           Qos
    );

int
WSPAPI
WSCRemoveQOSTemplate (
    __in  const LPGUID    Guid,
    __in  LPWSABUF        QosName
    );

typedef
int
(WSPAPI * LPWSCREMOVEQOSTEMPLATE)(
    __in const LPGUID    Guid,
    __in LPWSABUF        QosName
    );

#endif //(_WIN32_WINNT < 0x0600)

#if(_WIN32_WINNT >= 0x0600)

//
// LSP Categorization
//

#define LSP_SYSTEM             0x80000000
#define LSP_INSPECTOR          0x00000001
#define LSP_REDIRECTOR         0x00000002
#define LSP_PROXY              0x00000004
#define LSP_FIREWALL           0x00000008
#define LSP_INBOUND_MODIFY     0x00000010
#define LSP_OUTBOUND_MODIFY    0x00000020
#define LSP_CRYPTO_COMPRESS    0x00000040
#define LSP_LOCAL_CACHE        0x00000080

//
// Provider Information APIs
//

typedef enum _WSC_PROVIDER_INFO_TYPE {
//  InfoType is:                  Info points to:
    ProviderInfoLspCategories, // DWORD (LspCategories)
    ProviderInfoAudit,         // struct WSC_PROVIDER_AUDIT_INFO
} WSC_PROVIDER_INFO_TYPE ;

typedef struct _WSC_PROVIDER_AUDIT_INFO {
    DWORD   RecordSize;     // Size of this audit record, in bytes (includes this field)
    PVOID   Reserved;       // Reserved
    // Install Time (GMT)
    // User SID of account performing install
    // Length (in characters) of Full Path
    // Full Path of EXE performing install
} WSC_PROVIDER_AUDIT_INFO;

__control_entrypoint(DllExport)
int
WSPAPI
WSCSetProviderInfo( 
    __in LPGUID lpProviderId,
    __in WSC_PROVIDER_INFO_TYPE InfoType,
    __in_bcount(InfoSize) PBYTE Info,
    __in size_t InfoSize,
    __in DWORD Flags,
    __out LPINT lpErrno
    );

__control_entrypoint(DllExport)
int
WSPAPI
WSCGetProviderInfo( 
    __in LPGUID lpProviderId,
    __in WSC_PROVIDER_INFO_TYPE InfoType,
    __out_bcount_part(*InfoSize, *InfoSize) PBYTE Info,
    __inout size_t *InfoSize,
    __in DWORD Flags,
    __out LPINT lpErrno
    );

#if defined(_WIN64)

__control_entrypoint(DllExport)
int
WSPAPI
WSCSetProviderInfo32( 
    __in LPGUID lpProviderId,
    __in WSC_PROVIDER_INFO_TYPE InfoType,
    __in_bcount(InfoSize) PBYTE Info,
    __in size_t InfoSize,
    __in DWORD Flags,
    __out LPINT lpErrno
    );

__control_entrypoint(DllExport)
int
WSPAPI
WSCGetProviderInfo32( 
    __in LPGUID lpProviderId,
    __in WSC_PROVIDER_INFO_TYPE InfoType,
    __out_bcount_part(*InfoSize, *InfoSize) PBYTE Info,
    __inout size_t *InfoSize,
    __in DWORD Flags,
    __out LPINT lpErrno
    );

#endif // (_WIN64)

//
// App Permitted LSP Categorization APIs
//

__control_entrypoint(DllExport)
int
WSPAPI
WSCSetApplicationCategory(
    __in_ecount(PathLength) LPCWSTR Path,
    __in DWORD PathLength,
    __in_ecount_opt(ExtraLength) LPCWSTR Extra,
    __in DWORD ExtraLength,
    __in DWORD PermittedLspCategories,
    __out_opt DWORD * pPrevPermLspCat,
    __out LPINT lpErrno
    );

__control_entrypoint(DllExport)
int
WSPAPI
WSCGetApplicationCategory(
    __in_ecount(PathLength) LPCWSTR Path,
    __in DWORD PathLength,
    __in_ecount_opt(ExtraLength) LPCWSTR Extra,
    __in DWORD ExtraLength,
    __out DWORD * pPermittedLspCategories,
    __out LPINT lpErrno
    );

#endif //(_WIN32_WINNT >= 0x0600)


/*
 *  The following upcall function prototypes are only used by WinSock 2 DLL and
 *  should not be used by any service providers.
 */

BOOL
WSPAPI
WPUCloseEvent(
    __in WSAEVENT hEvent,
    __out LPINT lpErrno
    );

int
WSPAPI
WPUCloseSocketHandle(
    __in SOCKET s,
    __out LPINT lpErrno
    );

WSAEVENT
WSPAPI
WPUCreateEvent(
    __out LPINT lpErrno
    );

SOCKET
WSPAPI
WPUCreateSocketHandle(
    __in DWORD dwCatalogEntryId,
    __in DWORD_PTR dwContext,
    __out LPINT lpErrno
    );

__control_entrypoint(DispatchTable)
int
WSPAPI
WPUFDIsSet(
    __in SOCKET s,
    __in fd_set FAR * fdset
    );

int
WSPAPI
WPUGetProviderPath(
    __in LPGUID lpProviderId,
    __out_ecount(*lpProviderDllPathLen) WCHAR FAR * lpszProviderDllPath,
    __inout LPINT lpProviderDllPathLen,
    __out LPINT lpErrno
    );

SOCKET
WSPAPI
WPUModifyIFSHandle(
    __in DWORD dwCatalogEntryId,
    __in SOCKET ProposedHandle,
    __out LPINT lpErrno
    );

__control_entrypoint(DispatchTable)
BOOL
WSPAPI
WPUPostMessage(
    __in HWND hWnd,
    __in UINT Msg,
    __in WPARAM wParam,
    __in LPARAM lParam
    );

int
WSPAPI
WPUQueryBlockingCallback(
    __in DWORD dwCatalogEntryId,
    __out LPBLOCKINGCALLBACK FAR * lplpfnCallback,
    __out PDWORD_PTR lpdwContext,
    __out LPINT lpErrno
    );

int
WSPAPI
WPUQuerySocketHandleContext(
    __in SOCKET s,
    __out PDWORD_PTR lpContext,
    __out LPINT lpErrno
    );

__control_entrypoint(DispatchTable)
int
WSPAPI
WPUQueueApc(
    __in LPWSATHREADID lpThreadId,
    __in LPWSAUSERAPC lpfnUserApc,
    __in DWORD_PTR dwContext,
    __out LPINT lpErrno
    );

BOOL
WSPAPI
WPUResetEvent(
    __in WSAEVENT hEvent,
    __out LPINT lpErrno
    );

BOOL
WSPAPI
WPUSetEvent(
    __in WSAEVENT hEvent,
    __out LPINT lpErrno
    );

__control_entrypoint(DispatchTable)
int
WSPAPI
WPUCompleteOverlappedRequest (
    __in SOCKET s, 	
    __inout LPWSAOVERLAPPED lpOverlapped, 	
    __in DWORD dwError, 	
    __in DWORD cbTransferred, 	
    __out LPINT lpErrno
);

#if(_WIN32_WINNT >= 0x0501)
__control_entrypoint(DispatchTable)
int
WSPAPI
WPUOpenCurrentThread(
    __out LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );

__control_entrypoint(DispatchTable)
int
WSPAPI
WPUCloseThread(
    __in LPWSATHREADID lpThreadId,
    __out LPINT lpErrno
    );
#endif //(_WIN32_WINNT >= 0x0501)

/*
 * Installing and uninstalling name space providers.
 */

#if(_WIN32_WINNT >= 0x0501)
/*
 * SPI and API for enumerating name space providers are
 * currently equivalent since there is no concept of a hidden
 * name space provider
 */
#define WSCEnumNameSpaceProviders WSAEnumNameSpaceProvidersW
#define LPFN_WSCENUMNAMESPACEPROVIDERS LPFN_WSAENUMNAMESPACEPROVIDERSW

#if defined(_WIN64)
INT
WSAAPI
WSCEnumNameSpaceProviders32(
    __inout LPDWORD             lpdwBufferLength,
    __out_bcount(*lpdwBufferLength) LPWSANAMESPACE_INFOW lpnspBuffer
    );
#endif
#endif //(_WIN32_WINNT >= 0x0501)

#if(_WIN32_WINNT >= 0x0600)
#define WSCEnumNameSpaceProvidersEx WSAEnumNameSpaceProvidersExW
#define LPFN_WSCENUMNAMESPACEPROVIDERSEX LPFN_WSAENUMNAMESPACEPROVIDERSEXW

#if defined(_WIN64)
INT
WSAAPI
WSCEnumNameSpaceProvidersEx32(
    __inout LPDWORD     lpdwBufferLength,
    __out_bcount(*lpdwBufferLength) LPWSANAMESPACE_INFOEXW lpnspBuffer
    );
#endif //(_WIN64)
#endif //(_WIN32_WINNT >= 0x0600)

INT
WSPAPI
WSCInstallNameSpace (
    __in LPWSTR lpszIdentifier,
    __in LPWSTR lpszPathName,
    __in DWORD dwNameSpace,
    __in DWORD dwVersion,
    __in LPGUID lpProviderId
    );

typedef
INT
(WSPAPI * LPWSCINSTALLNAMESPACE)(
    __in LPWSTR lpszIdentifier,
    __in LPWSTR lpszPathName,
    __in DWORD dwNameSpace,
    __in DWORD dwVersion,
    __in LPGUID lpProviderId
    );

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))
INT
WSPAPI
WSCInstallNameSpace32 (
    __in LPWSTR lpszIdentifier,
    __in LPWSTR lpszPathName,
    __in DWORD dwNameSpace,
    __in DWORD dwVersion,
    __in LPGUID lpProviderId
    );
#endif //(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

INT
WSPAPI
WSCUnInstallNameSpace (
    __in LPGUID lpProviderId
    );

typedef
INT
(WSPAPI * LPWSCUNINSTALLNAMESPACE)(
    __in LPGUID lpProviderId
    );

#if (_WIN32_WINNT >= 0x0600 )
INT
WSPAPI
WSCInstallNameSpaceEx(
    __in LPWSTR lpszIdentifier,
    __in LPWSTR lpszPathName,
    __in DWORD dwNameSpace,
    __in DWORD dwVersion,
    __in LPGUID lpProviderId,
    __in LPBLOB lpProviderSpecific
    );
#endif //(defined(_WIN32_WINNT >= 0x0600)

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0600))
INT
WSPAPI
WSCInstallNameSpaceEx32(
    __in LPWSTR lpszIdentifier,
    __in LPWSTR lpszPathName,
    __in DWORD dwNameSpace,
    __in DWORD dwVersion,
    __in LPGUID lpProviderId,
    __in LPBLOB lpProviderSpecific
    );
#endif //(defined(_WIN64) && (_WIN32_WINNT >= 0x0600))

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))
INT
WSPAPI
WSCUnInstallNameSpace32 (
    __in LPGUID lpProviderId
    );
#endif //(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

INT
WSPAPI
WSCEnableNSProvider (
    __in LPGUID lpProviderId,
    __in BOOL fEnable
    );

typedef
INT
(WSPAPI * LPWSCENABLENSPROVIDER)(
    __in LPGUID lpProviderId,
    __in BOOL fEnable
    );

#if(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))
INT
WSPAPI
WSCEnableNSProvider32 (
    __in LPGUID lpProviderId,
    __in BOOL fEnable
    );
#endif //(defined(_WIN64) && (_WIN32_WINNT >= 0x0501))

#if (_WIN32_WINNT >= 0x0600)

#if defined(_WIN64)
int WSPAPI WSCInstallProviderAndChains64_32(
#else
int WSPAPI WSCInstallProviderAndChains(
#endif
    __in LPGUID lpProviderId,
    __in const LPWSTR lpszProviderDllPath,
#if defined(_WIN64)
    __in const LPWSTR lpszProviderDllPath32,
#endif
    __in const LPWSTR lpszLspName,
    __in DWORD dwServiceFlags,
    __inout_ecount(dwNumberOfEntries) LPWSAPROTOCOL_INFOW lpProtocolInfoList,
    __in DWORD dwNumberOfEntries,
    __out_opt LPDWORD lpdwCatalogEntryId,
    __out LPINT lpErrno);

#endif //(_WIN32_WINNT >= 0x0600)


/*
 * Pointers to the individual entries in the namespace proc table.
 */

typedef
INT
(WSAAPI * LPNSPCLEANUP)(
    __in LPGUID lpProviderId
    );

typedef
INT
(WSAAPI * LPNSPLOOKUPSERVICEBEGIN)(
    __in LPGUID lpProviderId,
    __in LPWSAQUERYSETW lpqsRestrictions,
    __in LPWSASERVICECLASSINFOW lpServiceClassInfo,
    __in DWORD dwControlFlags,
    __out LPHANDLE lphLookup
    );

typedef
INT
(WSAAPI * LPNSPLOOKUPSERVICENEXT)(
    __in HANDLE hLookup,
    __in DWORD dwControlFlags,
    __inout LPDWORD lpdwBufferLength,
    __out_bcount_part(*lpdwBufferLength, *lpdwBufferlength) LPWSAQUERYSETW lpqsResults
    );

#if(_WIN32_WINNT >= 0x0501)
typedef
INT
(WSAAPI * LPNSPIOCTL)(
    __in     HANDLE          hLookup,
    __in     DWORD           dwControlCode,
    __in_bcount(cbInBuffer) LPVOID          lpvInBuffer,
    __in     DWORD           cbInBuffer,
    __out_bcount_part(cbOutBuffer, *lpcbBytesreturned) LPVOID          lpvOutBuffer,
    __in     DWORD           cbOutBuffer,
    __out    LPDWORD         lpcbBytesReturned,
    __in_opt LPWSACOMPLETION lpCompletion,
    __in     LPWSATHREADID   lpThreadId
    );
#endif //(_WIN32_WINNT >= 0x0501)

typedef
INT
(WSAAPI * LPNSPLOOKUPSERVICEEND)(
    __in HANDLE hLookup
    );

typedef
INT
(WSAAPI * LPNSPSETSERVICE)(
    __in LPGUID lpProviderId,
    __in LPWSASERVICECLASSINFOW lpServiceClassInfo,
    __in LPWSAQUERYSETW lpqsRegInfo,
    __in WSAESETSERVICEOP essOperation,
    __in DWORD dwControlFlags
    );

typedef
INT
(WSAAPI * LPNSPINSTALLSERVICECLASS)(
    __in LPGUID lpProviderId,
    __in LPWSASERVICECLASSINFOW lpServiceClassInfo
    );

typedef
INT
(WSAAPI * LPNSPREMOVESERVICECLASS)(
    __in LPGUID lpProviderId,
    __in LPGUID lpServiceClassId
    );

typedef
INT
(WSAAPI * LPNSPGETSERVICECLASSINFO)(
    __in LPGUID lpProviderId,
    __in LPDWORD lpdwBufSize,
    __in LPWSASERVICECLASSINFOW lpServiceClassInfo
    );

/*
 * The name space service provider procedure table.
 */

typedef struct _NSP_ROUTINE {

    /* Structure version information: */
    DWORD           cbSize;
    DWORD           dwMajorVersion;
    DWORD           dwMinorVersion;

    /* Procedure-pointer table: */

    LPNSPCLEANUP             NSPCleanup;
    LPNSPLOOKUPSERVICEBEGIN  NSPLookupServiceBegin;
    LPNSPLOOKUPSERVICENEXT   NSPLookupServiceNext;
    LPNSPLOOKUPSERVICEEND    NSPLookupServiceEnd;
    LPNSPSETSERVICE          NSPSetService;
    LPNSPINSTALLSERVICECLASS NSPInstallServiceClass;
    LPNSPREMOVESERVICECLASS  NSPRemoveServiceClass;
    LPNSPGETSERVICECLASSINFO NSPGetServiceClassInfo;

#if(_WIN32_WINNT >= 0x0501)
    // These APIs were added later, so must appear here
    // to keep the pointers in the structure in order.
    // Namespaces unaware of these APIs will set cbSize
    // to match the size of FIELD_OFFSET(NSP_ROUTINE, NSPIoctl).
    LPNSPIOCTL               NSPIoctl;
#endif //(_WIN32_WINNT >= 0x0501)

} NSP_ROUTINE, FAR * LPNSP_ROUTINE;

/*
 * Startup procedures.
 */

__checkReturn
INT
WSAAPI
NSPStartup(
    __in LPGUID lpProviderId,
    __inout LPNSP_ROUTINE lpnspRoutines
    );

typedef
__checkReturn
INT
(WSAAPI * LPNSPSTARTUP)(
    __in LPGUID lpProviderId,
    __inout LPNSP_ROUTINE lpnspRoutines
    );

typedef
__checkReturn
INT
(WSAAPI * LPNSPV2STARTUP)(
    __in LPGUID lpProviderId,
    __deref_out LPVOID * ppvClientSessionArg
    );

typedef
INT
(WSAAPI * LPNSPV2CLEANUP)(
    __in LPGUID lpProviderId,
    __in LPVOID pvClientSessionArg
    );

typedef
INT
(WSAAPI * LPNSPV2LOOKUPSERVICEBEGIN)(
    __in LPGUID lpProviderId,
    __in LPWSAQUERYSET2W lpqsRestrictions,
    __in DWORD dwControlFlags,
    __in LPVOID lpvClientSessionArg,
    __out LPHANDLE lphLookup
    );

typedef
VOID
(WSAAPI * LPNSPV2LOOKUPSERVICENEXTEX)(
    __in HANDLE hAsyncCall,
    __in HANDLE hLookup,
    __in DWORD dwControlFlags,
    __in LPDWORD lpdwBufferLength,
    __out LPWSAQUERYSET2W lpqsResults
    );

typedef
INT
(WSAAPI * LPNSPV2LOOKUPSERVICEEND)(
    __in HANDLE hLookup
    );

typedef
VOID
(WSAAPI * LPNSPV2SETSERVICEEX)(
    __in HANDLE hAsyncCall,
    __in LPGUID lpProviderId,
    __in LPWSAQUERYSET2W lpqsRegInfo,
    __in WSAESETSERVICEOP essOperation,
    __in DWORD dwControlFlags,
    __in LPVOID lpvClientSessionArg 
    );

typedef
VOID
(WSAAPI * LPNSPV2CLIENTSESSIONRUNDOWN)(
    __in LPGUID lpProviderId,
    __in LPVOID pvClientSessionArg
    );

typedef struct _NSPV2_ROUTINE {  
    DWORD cbSize;
    DWORD dwMajorVersion;
    DWORD dwMinorVersion;
    LPNSPV2STARTUP NSPv2Startup;
    LPNSPV2CLEANUP NSPv2Cleanup;
    LPNSPV2LOOKUPSERVICEBEGIN NSPv2LookupServiceBegin;  
    LPNSPV2LOOKUPSERVICENEXTEX NSPv2LookupServiceNextEx;
    LPNSPV2LOOKUPSERVICEEND NSPv2LookupServiceEnd;  
    LPNSPV2SETSERVICEEX NSPv2SetServiceEx;
    LPNSPV2CLIENTSESSIONRUNDOWN NSPv2ClientSessionRundown;
} NSPV2_ROUTINE, *PNSPV2_ROUTINE, *LPNSPV2_ROUTINE;
typedef const NSPV2_ROUTINE * PCNSPV2_ROUTINE, * LPCNSPV2_ROUTINE;

#if(_WIN32_WINNT >= 0x0600)

INT WSAAPI WSAAdvertiseProvider(
        __in                const GUID *                    puuidProviderId,
        __in                const LPCNSPV2_ROUTINE          pNSPv2Routine);

INT WSAAPI WSAUnadvertiseProvider(
        __in                const GUID *                    puuidProviderId);

INT WSAAPI WSAProviderCompleteAsyncCall(
        __in                HANDLE                          hAsyncCall,
        __in                INT                             iRetCode);

#endif //(_WIN32_WINNT >= 0x0600)

#ifdef __cplusplus
}
#endif

#if !defined(_WIN64)
#include <poppack.h>
#endif

#endif  /* _WINSOCK2SPI_ */


