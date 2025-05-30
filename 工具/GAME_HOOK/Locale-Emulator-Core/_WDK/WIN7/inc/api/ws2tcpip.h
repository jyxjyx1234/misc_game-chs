/*
**  WS2TCPIP.H - WinSock2 Extension for TCP/IP protocols
**
**  This file contains TCP/IP specific information for use
**  by WinSock2 compatible applications.
**
**  Copyright (c) Microsoft Corporation. All rights reserved.
**
**  To provide the backward compatibility, all the TCP/IP
**  specific definitions that were included in the WINSOCK.H
**   file are now included in WINSOCK2.H file. WS2TCPIP.H
**  file includes only the definitions  introduced in the
**  "WinSock 2 Protocol-Specific Annex" document.
**
**  Rev 0.3 Nov 13, 1995
**      Rev 0.4 Dec 15, 1996
*/

#ifndef _WS2TCPIP_H_
#define _WS2TCPIP_H_

#if _MSC_VER > 1000
#pragma once
#endif

#include <winsock2.h>
#include <ws2ipdef.h>
#include <limits.h>

/* Option to use with [gs]etsockopt at the IPPROTO_UDP level */

#define UDP_NOCHECKSUM  1
#define UDP_CHECKSUM_COVERAGE   20  /* Set/get UDP-Lite checksum coverage */

#ifdef _MSC_VER
#define WS2TCPIP_INLINE __inline
#else
#define WS2TCPIP_INLINE extern inline /* GNU style */
#endif

/* Error codes from getaddrinfo() */

#define EAI_AGAIN           WSATRY_AGAIN
#define EAI_BADFLAGS        WSAEINVAL
#define EAI_FAIL            WSANO_RECOVERY
#define EAI_FAMILY          WSAEAFNOSUPPORT
#define EAI_MEMORY          WSA_NOT_ENOUGH_MEMORY
#define EAI_NOSECURENAME    WSA_SECURE_HOST_NOT_FOUND
//#define EAI_NODATA        WSANO_DATA
#define EAI_NONAME          WSAHOST_NOT_FOUND
#define EAI_SERVICE         WSATYPE_NOT_FOUND
#define EAI_SOCKTYPE        WSAESOCKTNOSUPPORT
#define EAI_IPSECPOLICY     WSA_IPSEC_NAME_POLICY_ERROR
//
//  DCR_FIX:  EAI_NODATA remove or fix
//
//  EAI_NODATA was removed from rfc2553bis
//  need to find out from the authors why and
//  determine the error for "no records of this type"
//  temporarily, we'll keep #define to avoid changing
//  code that could change back;  use NONAME
//

#define EAI_NODATA      EAI_NONAME

//  Switchable definition for GetAddrInfo()

#ifdef UNICODE
typedef ADDRINFOW       ADDRINFOT, *PADDRINFOT;
#else
typedef ADDRINFOA       ADDRINFOT, *PADDRINFOT;
#endif

//  RFC standard definition for getaddrinfo()

typedef ADDRINFOA       ADDRINFO, FAR * LPADDRINFO;

#if (_WIN32_WINNT >= 0x0600)

#ifdef UNICODE
typedef ADDRINFOEXW     ADDRINFOEX, *PADDRINFOEX;
#else
typedef ADDRINFOEXA     ADDRINFOEX, *PADDRINFOEX;
#endif

#endif

#ifdef __cplusplus
extern "C" {
#endif

WINSOCK_API_LINKAGE
INT
WSAAPI
getaddrinfo(
    __in_opt        PCSTR               pNodeName,
    __in_opt        PCSTR               pServiceName,
    __in_opt        const ADDRINFOA *   pHints,
    __deref_out     PADDRINFOA *        ppResult
    );

#if (NTDDI_VERSION >= NTDDI_WINXPSP2) || (_WIN32_WINNT >= 0x0502)
WINSOCK_API_LINKAGE
INT
WSAAPI
GetAddrInfoW(
    __in_opt        PCWSTR              pNodeName,
    __in_opt        PCWSTR              pServiceName,
    __in_opt        const ADDRINFOW *   pHints,
    __deref_out     PADDRINFOW *        ppResult
    );

#define GetAddrInfoA    getaddrinfo

#ifdef UNICODE
#define GetAddrInfo     GetAddrInfoW
#else
#define GetAddrInfo     GetAddrInfoA
#endif
#endif

#if INCL_WINSOCK_API_TYPEDEFS
typedef
INT
(WSAAPI * LPFN_GETADDRINFO)(
    __in_opt        PCSTR               pNodeName,
    __in_opt        PCSTR               pServiceName,
    __in_opt        const ADDRINFOA *   pHints,
    __deref_out     PADDRINFOA *        ppResult
    );

typedef
INT
(WSAAPI * LPFN_GETADDRINFOW)(
    __in_opt        PCWSTR              pNodeName,
    __in_opt        PCWSTR              pServiceName,
    __in_opt        const ADDRINFOW *   pHints,
    __deref_out     PADDRINFOW *        ppResult
    );

#define LPFN_GETADDRINFOA      LPFN_GETADDRINFO

#ifdef UNICODE
#define LPFN_GETADDRINFOT      LPFN_GETADDRINFOW
#else
#define LPFN_GETADDRINFOT      LPFN_GETADDRINFOA
#endif
#endif

#if (_WIN32_WINNT >= 0x0600)

typedef
void
(CALLBACK * LPLOOKUPSERVICE_COMPLETION_ROUTINE)(
    __in      DWORD    dwError,
    __in      DWORD    dwBytes,
    __in      LPWSAOVERLAPPED lpOverlapped
    );

WINSOCK_API_LINKAGE
INT
WSAAPI
GetAddrInfoExA(
    __in_opt    PCSTR           pName,
    __in_opt    PCSTR           pServiceName,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    const ADDRINFOEXA *hints,
    __deref_out PADDRINFOEXA *  ppResult,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpNameHandle
    );

WINSOCK_API_LINKAGE
INT
WSAAPI
GetAddrInfoExW(
    __in_opt    PCWSTR          pName,
    __in_opt    PCWSTR          pServiceName,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    const ADDRINFOEXW *hints,
    __deref_out PADDRINFOEXW *  ppResult,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpHandle
    );

#ifdef UNICODE
#define GetAddrInfoEx       GetAddrInfoExW
#else
#define GetAddrInfoEx       GetAddrInfoExA
#endif

#if INCL_WINSOCK_API_TYPEDEFS

typedef
INT
(WSAAPI *LPFN_GETADDRINFOEXA)(
    __in        PCSTR           pName,
    __in_opt    PCSTR           pServiceName,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    const ADDRINFOEXA *hints,
    __deref_out PADDRINFOEXA   *ppResult,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpNameHandle
    );

typedef
INT
(WSAAPI *LPFN_GETADDRINFOEXW)(
    __in        PCWSTR          pName,
    __in_opt    PCWSTR          pServiceName,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    const ADDRINFOEXW *hints,
    __deref_out PADDRINFOEXW   *ppResult,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpHandle
    );

#ifdef UNICODE
#define LPFN_GETADDRINFOEX      LPFN_GETADDRINFOEXW
#else
#define LPFN_GETADDRINFOEX      LPFN_GETADDRINFOEXA
#endif
#endif

#endif

#if (_WIN32_WINNT >= 0x0600)

WINSOCK_API_LINKAGE
INT
WSAAPI
SetAddrInfoExA(
    __in        PCSTR           pName,
    __in_opt    PCSTR           pServiceName,
    __in_opt    SOCKET_ADDRESS *pAddresses,
    __in        DWORD           dwAddressCount,
    __in_opt    LPBLOB          lpBlob,
    __in        DWORD           dwFlags,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpNameHandle
    );

WINSOCK_API_LINKAGE
INT
WSAAPI
SetAddrInfoExW(
    __in        PCWSTR          pName,
    __in_opt    PCWSTR          pServiceName,
    __in_opt    SOCKET_ADDRESS *pAddresses,
    __in        DWORD           dwAddressCount,
    __in_opt    LPBLOB          lpBlob,
    __in        DWORD           dwFlags,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpNameHandle
    );

#ifdef UNICODE
#define SetAddrInfoEx       SetAddrInfoExW
#else
#define SetAddrInfoEx       SetAddrInfoExA
#endif

#if INCL_WINSOCK_API_TYPEDEFS
typedef
INT
(WSAAPI *LPFN_SETADDRINFOEXA)(
    __in        PCSTR           pName,
    __in_opt    PCSTR           pServiceName,
    __in_opt    SOCKET_ADDRESS *pAddresses,
    __in        DWORD           dwAddressCount,
    __in_opt    LPBLOB          lpBlob,
    __in        DWORD           dwFlags,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpNameHandle
    );

typedef
INT
(WSAAPI *LPFN_SETADDRINFOEXW)(
    __in        PCWSTR          pName,
    __in_opt    PCWSTR          pServiceName,
    __in_opt    SOCKET_ADDRESS *pAddresses,
    __in        DWORD           dwAddressCount,
    __in_opt    LPBLOB          lpBlob,
    __in        DWORD           dwFlags,
    __in        DWORD           dwNameSpace,
    __in_opt    LPGUID          lpNspId,
    __in_opt    struct timeval *timeout,
    __in_opt    LPOVERLAPPED    lpOverlapped,
    __in_opt    LPLOOKUPSERVICE_COMPLETION_ROUTINE  lpCompletionRoutine,
    __out_opt   LPHANDLE        lpNameHandle
    );

#ifdef UNICODE
#define LPFN_SETADDRINFOEX      LPFN_SETADDRINFOEXW
#else
#define LPFN_SETADDRINFOEX      LPFN_SETADDRINFOEXA
#endif
#endif

#endif

WINSOCK_API_LINKAGE
VOID
WSAAPI
freeaddrinfo(
    __in_opt        PADDRINFOA      pAddrInfo
    );

#if (NTDDI_VERSION >= NTDDI_WINXPSP2) || (_WIN32_WINNT >= 0x0502)
WINSOCK_API_LINKAGE
VOID
WSAAPI
FreeAddrInfoW(
    __in_opt        PADDRINFOW      pAddrInfo
    );

#define FreeAddrInfoA   freeaddrinfo

#ifdef UNICODE
#define FreeAddrInfo    FreeAddrInfoW
#else
#define FreeAddrInfo    FreeAddrInfoA
#endif
#endif


#if INCL_WINSOCK_API_TYPEDEFS
typedef
VOID
(WSAAPI * LPFN_FREEADDRINFO)(
    __in_opt        PADDRINFOA      pAddrInfo
    );
typedef
VOID
(WSAAPI * LPFN_FREEADDRINFOW)(
    __in_opt        PADDRINFOW      pAddrInfo
    );

#define LPFN_FREEADDRINFOA      LPFN_FREEADDRINFO

#ifdef UNICODE
#define LPFN_FREEADDRINFOT      LPFN_FREEADDRINFOW
#else
#define LPFN_FREEADDRINFOT      LPFN_FREEADDRINFOA
#endif
#endif

#if (_WIN32_WINNT >= 0x0600)

WINSOCK_API_LINKAGE
void
WSAAPI
FreeAddrInfoEx(
    __in_opt  PADDRINFOEXA    pAddrInfoEx
    );

WINSOCK_API_LINKAGE
void
WSAAPI
FreeAddrInfoExW(
    __in_opt  PADDRINFOEXW    pAddrInfoEx
    );

#define FreeAddrInfoExA     FreeAddrInfoEx

#ifdef UNICODE
#define FreeAddrInfoEx      FreeAddrInfoExW
#endif

#ifdef INCL_WINSOCK_API_TYPEDEFS
typedef
void
(WSAAPI *LPFN_FREEADDRINFOEXA)(
    __in    PADDRINFOEXA    pAddrInfoEx
    );

typedef
void
(WSAAPI *LPFN_FREEADDRINFOEXW)(
    __in    PADDRINFOEXW    pAddrInfoEx
    );


#ifdef UNICODE
#define LPFN_FREEADDRINFOEX     LPFN_FREEADDRINFOEXW
#else
#define LPFN_FREEADDRINFOEX     LPFN_FREEADDRINFOEXA
#endif

#endif
#endif

typedef int socklen_t;

WINSOCK_API_LINKAGE
INT
WSAAPI
getnameinfo(
    __in_bcount(SockaddrLength)         const SOCKADDR *    pSockaddr,
    __in                                socklen_t           SockaddrLength,
    __out_ecount_opt(NodeBufferSize)    PCHAR               pNodeBuffer,
    __in                                DWORD               NodeBufferSize,
    __out_ecount_opt(ServiceBufferSize) PCHAR               pServiceBuffer,
    __in                                DWORD               ServiceBufferSize,
    __in                                INT                 Flags
    );

#if (NTDDI_VERSION >= NTDDI_WINXPSP2) || (_WIN32_WINNT >= 0x0502)
WINSOCK_API_LINKAGE
INT
WSAAPI
GetNameInfoW(
    __in_bcount(SockaddrLength)         const SOCKADDR *    pSockaddr,
    __in                                socklen_t           SockaddrLength,
    __out_ecount_opt(NodeBufferSize)    PWCHAR              pNodeBuffer,
    __in                                DWORD               NodeBufferSize,
    __out_ecount_opt(ServiceBufferSize) PWCHAR              pServiceBuffer,
    __in                                DWORD               ServiceBufferSize,
    __in                                INT                 Flags
    );

#define GetNameInfoA    getnameinfo

#ifdef UNICODE
#define GetNameInfo     GetNameInfoW
#else
#define GetNameInfo     GetNameInfoA
#endif
#endif

#if INCL_WINSOCK_API_TYPEDEFS
typedef
int
(WSAAPI * LPFN_GETNAMEINFO)(
    __in_bcount(SockaddrLength)         const SOCKADDR *    pSockaddr,
    __in                                socklen_t           SockaddrLength,
    __out_ecount_opt(NodeBufferSize)    PCHAR               pNodeBuffer,
    __in                                DWORD               NodeBufferSize,
    __out_ecount_opt(ServiceBufferSize) PCHAR               pServiceBuffer,
    __in                                DWORD               ServiceBufferSize,
    __in                                INT                 Flags
    );

typedef
INT
(WSAAPI * LPFN_GETNAMEINFOW)(
    __in_bcount(SockaddrLength)         const SOCKADDR *    pSockaddr,
    __in                                socklen_t           SockaddrLength,
    __out_ecount_opt(NodeBufferSize)    PWCHAR              pNodeBuffer,
    __in                                DWORD               NodeBufferSize,
    __out_ecount_opt(ServiceBufferSize) PWCHAR              pServiceBuffer,
    __in                                DWORD               ServiceBufferSize,
    __in                                INT                 Flags
    );

#define LPFN_GETNAMEINFOA      LPFN_GETNAMEINFO

#ifdef UNICODE
#define LPFN_GETNAMEINFOT      LPFN_GETNAMEINFOW
#else
#define LPFN_GETNAMEINFOT      LPFN_GETNAMEINFOA
#endif
#endif


#if (NTDDI_VERSION >= NTDDI_VISTA)
WINSOCK_API_LINKAGE
INT
WSAAPI
inet_pton(
    __in                                INT             Family,
    __in                                PCSTR           pszAddrString,
    __out_bcount(sizeof(IN6_ADDR))      PVOID           pAddrBuf
    );

INT
WSAAPI
InetPtonW(
    __in                                INT             Family,
    __in                                PCWSTR          pszAddrString,
    __out_bcount(sizeof(IN6_ADDR))      PVOID           pAddrBuf
    );

PCSTR
WSAAPI
inet_ntop(
    __in                                INT             Family,
    __in                                PVOID           pAddr,
    __out_ecount(StringBufSize)         PSTR            pStringBuf,
    __in                                size_t          StringBufSize
    );

PCWSTR
WSAAPI
InetNtopW(
    __in                                INT             Family,
    __in                                PVOID           pAddr,
    __out_ecount(StringBufSize)         PWSTR           pStringBuf,
    __in                                size_t          StringBufSize
    );

#define InetPtonA       inet_pton
#define InetNtopA       inet_ntop

#ifdef UNICODE
#define InetPton        InetPtonW
#define InetNtop        InetNtopW
#else
#define InetPton        InetPtonA
#define InetNtop        InetNtopA
#endif

#if INCL_WINSOCK_API_TYPEDEFS
typedef
INT
(WSAAPI * LPFN_INET_PTONA)(
    __in                                INT             Family,
    __in                                PCSTR           pszAddrString,
    __out_bcount(sizeof(IN6_ADDR))      PVOID           pAddrBuf
    );

typedef
INT
(WSAAPI * LPFN_INET_PTONW)(
    __in                                INT             Family,
    __in                                PCWSTR          pszAddrString,
    __out_bcount(sizeof(IN6_ADDR))      PVOID           pAddrBuf
    );

typedef
PCSTR
(WSAAPI * LPFN_INET_NTOPA)(
    __in                                INT             Family,
    __in                                PVOID           pAddr,
    __out_ecount(StringBufSize)         PSTR            pStringBuf,
    __in                                size_t          StringBufSize
    );

typedef
PCWSTR
(WSAAPI * LPFN_INET_NTOPW)(
    __in                                INT             Family,
    __in                                PVOID           pAddr,
    __out_ecount(StringBufSize)         PWSTR           pStringBuf,
    __in                                size_t          StringBufSize
    );

#ifdef UNICODE
#define LPFN_INET_PTON          LPFN_INET_PTONW
#define LPFN_INET_NTOP          LPFN_INET_NTOPW
#else
#define LPFN_INET_PTON          LPFN_INET_PTONA
#define LPFN_INET_NTOP          LPFN_INET_NTOPA
#endif

#endif  //  TYPEDEFS
#endif  //  (NTDDI_VERSION >= NTDDI_VISTA)



#if INCL_WINSOCK_API_PROTOTYPES
#ifdef UNICODE
#define gai_strerror   gai_strerrorW
#else
#define gai_strerror   gai_strerrorA
#endif  /* UNICODE */

// WARNING: The gai_strerror inline functions below use static buffers,
// and hence are not thread-safe.  We'll use buffers long enough to hold
// 1k characters.  Any system error messages longer than this will be
// returned as empty strings.  However 1k should work for the error codes
// used by getaddrinfo().
#define GAI_STRERROR_BUFFER_SIZE 1024

WS2TCPIP_INLINE
char *
gai_strerrorA(
    __in int ecode)
{
    DWORD dwMsgLen;
    static char buff[GAI_STRERROR_BUFFER_SIZE + 1];

    dwMsgLen = FormatMessageA(FORMAT_MESSAGE_FROM_SYSTEM
                             |FORMAT_MESSAGE_IGNORE_INSERTS
                             |FORMAT_MESSAGE_MAX_WIDTH_MASK,
                              NULL,
                              ecode,
                              MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                              (LPSTR)buff,
                              GAI_STRERROR_BUFFER_SIZE,
                              NULL);

    return buff;
}

WS2TCPIP_INLINE
WCHAR *
gai_strerrorW(
    __in int ecode
    )
{
    DWORD dwMsgLen;
    static WCHAR buff[GAI_STRERROR_BUFFER_SIZE + 1];

    dwMsgLen = FormatMessageW(FORMAT_MESSAGE_FROM_SYSTEM
                             |FORMAT_MESSAGE_IGNORE_INSERTS
                             |FORMAT_MESSAGE_MAX_WIDTH_MASK,
                              NULL,
                              ecode,
                              MAKELANGID(LANG_NEUTRAL, SUBLANG_DEFAULT),
                              (LPWSTR)buff,
                              GAI_STRERROR_BUFFER_SIZE,
                              NULL);

    return buff;
}
#endif /* INCL_WINSOCK_API_PROTOTYPES */


/* Multicast source filter APIs from RFC 3678. */

WS2TCPIP_INLINE
int
setipv4sourcefilter(
    __in SOCKET Socket,
    __in IN_ADDR Interface,
    __in IN_ADDR Group,
    __in MULTICAST_MODE_TYPE FilterMode,
    __in ULONG SourceCount,
    __in CONST IN_ADDR *SourceList
    )
{
    int Error;
    DWORD Size, Returned;
    PIP_MSFILTER Filter;

    if (SourceCount >
        (((ULONG) (ULONG_MAX - sizeof(*Filter))) / sizeof(*SourceList))) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Size = IP_MSFILTER_SIZE(SourceCount);
    Filter = (PIP_MSFILTER) HeapAlloc(GetProcessHeap(), 0, Size);
    if (Filter == NULL) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Filter->imsf_multiaddr = Group;
    Filter->imsf_interface = Interface;
    Filter->imsf_fmode = FilterMode;
    Filter->imsf_numsrc = SourceCount;
    if (SourceCount > 0) {
        CopyMemory(Filter->imsf_slist, SourceList,
                   SourceCount * sizeof(*SourceList));
    }

    Error = WSAIoctl(Socket, SIOCSIPMSFILTER, Filter, Size, NULL, 0,
                     &Returned, NULL, NULL);

    HeapFree(GetProcessHeap(), 0, Filter);

    return Error;
}

WS2TCPIP_INLINE
int
getipv4sourcefilter(
    __in SOCKET Socket,
    __in IN_ADDR Interface,
    __in IN_ADDR Group,
    __out MULTICAST_MODE_TYPE *FilterMode,
    __inout ULONG *SourceCount,
    __out IN_ADDR *SourceList
    )
{
    int Error;
    DWORD Size, Returned;
    PIP_MSFILTER Filter;

    if (*SourceCount >
        (((ULONG) (ULONG_MAX - sizeof(*Filter))) / sizeof(*SourceList))) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Size = IP_MSFILTER_SIZE(*SourceCount);
    Filter = (PIP_MSFILTER) HeapAlloc(GetProcessHeap(), 0, Size);
    if (Filter == NULL) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Filter->imsf_multiaddr = Group;
    Filter->imsf_interface = Interface;
    Filter->imsf_numsrc = *SourceCount;

    Error = WSAIoctl(Socket, SIOCGIPMSFILTER, Filter, Size, Filter, Size,
                     &Returned, NULL, NULL);

    if (Error == 0) {
        if (*SourceCount > 0) {
            CopyMemory(SourceList, Filter->imsf_slist,
                       *SourceCount * sizeof(*SourceList));
            *SourceCount = Filter->imsf_numsrc;
        }
        *FilterMode = Filter->imsf_fmode;
    }

    HeapFree(GetProcessHeap(), 0, Filter);

    return Error;
}

#if (NTDDI_VERSION >= NTDDI_WINXP)
WS2TCPIP_INLINE
int
setsourcefilter(
    __in SOCKET Socket,
    __in ULONG Interface,
    __in CONST SOCKADDR *Group,
    __in int GroupLength,
    __in MULTICAST_MODE_TYPE FilterMode,
    __in ULONG SourceCount,
    __in CONST SOCKADDR_STORAGE *SourceList
    )
{
    int Error;
    DWORD Size, Returned;
    PGROUP_FILTER Filter;

    if (SourceCount >=
        (((ULONG) (ULONG_MAX - sizeof(*Filter))) / sizeof(*SourceList))) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Size = GROUP_FILTER_SIZE(SourceCount);
    Filter = (PGROUP_FILTER) HeapAlloc(GetProcessHeap(), 0, Size);
    if (Filter == NULL) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Filter->gf_interface = Interface;
    ZeroMemory(&Filter->gf_group, sizeof(Filter->gf_group));
    CopyMemory(&Filter->gf_group, Group, GroupLength);
    Filter->gf_fmode = FilterMode;
    Filter->gf_numsrc = SourceCount;
    if (SourceCount > 0) {
        CopyMemory(Filter->gf_slist, SourceList,
                   SourceCount * sizeof(*SourceList));
    }

    Error = WSAIoctl(Socket, SIOCSMSFILTER, Filter, Size, NULL, 0,
                     &Returned, NULL, NULL);

    HeapFree(GetProcessHeap(), 0, Filter);

    return Error;
}

WS2TCPIP_INLINE
int
getsourcefilter(
    __in SOCKET Socket,
    __in ULONG Interface,
    __in CONST SOCKADDR *Group,
    __in int GroupLength,
    __out MULTICAST_MODE_TYPE *FilterMode,
    __inout ULONG *SourceCount,
    __out SOCKADDR_STORAGE *SourceList
    )
{
    int Error;
    DWORD Size, Returned;
    PGROUP_FILTER Filter;

    if (*SourceCount >
        (((ULONG) (ULONG_MAX - sizeof(*Filter))) / sizeof(*SourceList))) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Size = GROUP_FILTER_SIZE(*SourceCount);
    Filter = (PGROUP_FILTER) HeapAlloc(GetProcessHeap(), 0, Size);
    if (Filter == NULL) {
        WSASetLastError(WSAENOBUFS);
        return SOCKET_ERROR;
    }

    Filter->gf_interface = Interface;
    ZeroMemory(&Filter->gf_group, sizeof(Filter->gf_group));
    CopyMemory(&Filter->gf_group, Group, GroupLength);
    Filter->gf_numsrc = *SourceCount;

    Error = WSAIoctl(Socket, SIOCGMSFILTER, Filter, Size, Filter, Size,
                     &Returned, NULL, NULL);

    if (Error == 0) {
        if (*SourceCount > 0) {
            CopyMemory(SourceList, Filter->gf_slist,
                       *SourceCount * sizeof(*SourceList));
            *SourceCount = Filter->gf_numsrc;
        }
        *FilterMode = Filter->gf_fmode;
    }

    HeapFree(GetProcessHeap(), 0, Filter);

    return Error;
}
#endif

#ifdef IDEAL_SEND_BACKLOG_IOCTLS

//
// Wrapper functions for the ideal send backlog query and change notification
// ioctls
//

WS2TCPIP_INLINE 
int  
idealsendbacklogquery(
    __in SOCKET s,
    __out ULONG *pISB
    )
{
    DWORD bytes;

    return WSAIoctl(s, SIO_IDEAL_SEND_BACKLOG_QUERY, 
                    NULL, 0, pISB, sizeof(*pISB), &bytes, NULL, NULL);
}


WS2TCPIP_INLINE 
int  
idealsendbacklognotify(
    __in SOCKET s,
    __in_opt LPWSAOVERLAPPED lpOverlapped,
    __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE lpCompletionRoutine
    )
{
    DWORD bytes;

    return WSAIoctl(s, SIO_IDEAL_SEND_BACKLOG_CHANGE, 
                    NULL, 0, NULL, 0, &bytes, 
                    lpOverlapped, lpCompletionRoutine);
}

#endif

#if (_WIN32_WINNT >= 0x0600)
#ifdef _SECURE_SOCKET_TYPES_DEFINED_

//
// Secure socket API definitions
//

WINSOCK_API_LINKAGE
INT
WSAAPI
WSASetSocketSecurity (
   __in SOCKET Socket,
   __in_bcount_opt(SecuritySettingsLen) const SOCKET_SECURITY_SETTINGS* SecuritySettings,
   __in ULONG SecuritySettingsLen,
   __in_opt LPWSAOVERLAPPED Overlapped,
   __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine
);

WINSOCK_API_LINKAGE
INT
WSAAPI
WSAQuerySocketSecurity (
   __in SOCKET Socket,
   __in_bcount_opt(SecurityQueryTemplateLen) const SOCKET_SECURITY_QUERY_TEMPLATE* SecurityQueryTemplate,
   __in ULONG SecurityQueryTemplateLen,
   __out_bcount_part_opt(*SecurityQueryInfoLen, *SecurityQueryInfoLen) SOCKET_SECURITY_QUERY_INFO* SecurityQueryInfo,
   __inout ULONG* SecurityQueryInfoLen,
   __in_opt LPWSAOVERLAPPED Overlapped,
   __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine
);

WINSOCK_API_LINKAGE
INT
WSAAPI
WSASetSocketPeerTargetName (
   __in SOCKET Socket,
   __in_bcount(PeerTargetNameLen) const SOCKET_PEER_TARGET_NAME* PeerTargetName,
   __in ULONG PeerTargetNameLen,
   __in_opt LPWSAOVERLAPPED Overlapped,
   __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine
);

WINSOCK_API_LINKAGE
INT
WSAAPI
WSADeleteSocketPeerTargetName (
   __in SOCKET Socket,
   __in_bcount(PeerAddrLen) const struct sockaddr* PeerAddr,
   __in ULONG PeerAddrLen,
   __in_opt LPWSAOVERLAPPED Overlapped,
   __in_opt LPWSAOVERLAPPED_COMPLETION_ROUTINE CompletionRoutine
);

WINSOCK_API_LINKAGE
INT
WSAAPI
WSAImpersonateSocketPeer (
   __in SOCKET Socket,
   __in_bcount_opt(PeerAddrLen) const struct sockaddr* PeerAddr,
   __in ULONG PeerAddrLen
);

WINSOCK_API_LINKAGE
INT
WSAAPI
WSARevertImpersonation ();

#endif //_SECURE_SOCKET_TYPES_DEFINED_
#endif //(_WIN32_WINNT >= 0x0600)

#ifdef __cplusplus
}
#endif

//
// Unless the build environment is explicitly targeting only
// platforms that include built-in getaddrinfo() support, include
// the backwards-compatibility version of the relevant APIs.
//
#if !defined(_WIN32_WINNT) || (_WIN32_WINNT <= 0x0500)
#include <wspiapi.h>
#endif

#endif  /* _WS2TCPIP_H_ */

