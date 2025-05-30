/*++

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    iphlpapi.h

Abstract:
    Header file for functions to interact with the IP Stack for MIB-II and
    related functionality

--*/

#ifndef __IPHLPAPI_H__
#define __IPHLPAPI_H__

#if _MSC_VER > 1000
#pragma once
#endif

#ifdef __cplusplus
extern "C" {
#endif

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// IPRTRMIB.H has the definitions of the structures used to set and get     //
// information                                                              //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

#include <iprtrmib.h>
#include <ipexport.h>
#include <iptypes.h>
#include <tcpestats.h>

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// The GetXXXTable APIs take a buffer and a size of buffer.  If the buffer  //
// is not large enough, the APIs return ERROR_INSUFFICIENT_BUFFER  and      //
// *pdwSize is the required buffer size                                     //
// The bOrder is a BOOLEAN, which if TRUE sorts the table according to      //
// MIB-II (RFC XXXX)                                                        //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Retrieves the number of interfaces in the system. These include LAN and  //
// WAN interfaces                                                           //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////


DWORD
WINAPI
GetNumberOfInterfaces(
    __out PDWORD  pdwNumIf
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the MIB-II ifEntry                                                  //
// The dwIndex field of the MIB_IFROW should be set to the index of the     //
// interface being queried                                                  //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
GetIfEntry(
    __inout PMIB_IFROW   pIfRow
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the MIB-II IfTable                                                  //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
GetIfTable(
    __out_bcount_opt(*pdwSize) PMIB_IFTABLE pIfTable,
    __inout                    PULONG       pdwSize,
    __in                       BOOL         bOrder
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the Interface to IP Address mapping                                 //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
GetIpAddrTable(
    __out_bcount_opt(*pdwSize)    PMIB_IPADDRTABLE pIpAddrTable,
    __inout                       PULONG           pdwSize,
    __in                          BOOL             bOrder
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the current IP Address to Physical Address (ARP) mapping            //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

ULONG
WINAPI
GetIpNetTable(
    __out_bcount_opt(*SizePointer) PMIB_IPNETTABLE IpNetTable,
    __inout                        PULONG          SizePointer,
    __in                           BOOL            Order
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the IP Routing Table  (RFX XXXX)                                    //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
GetIpForwardTable(
    __out_bcount_opt(*pdwSize)    PMIB_IPFORWARDTABLE pIpForwardTable,
    __inout                       PULONG              pdwSize,
    __in                          BOOL                bOrder
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets TCP Connection/UDP Listener Table                                   //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

ULONG
WINAPI
GetTcpTable(
    __out_bcount_opt(*SizePointer)   PMIB_TCPTABLE TcpTable,
    __inout                          PULONG        SizePointer,
    __in                             BOOL          Order
    );

DWORD
WINAPI
GetExtendedTcpTable(
    __out_bcount_opt(*pdwSize)    PVOID           pTcpTable,
    __inout                       PDWORD          pdwSize,
    __in                          BOOL            bOrder,
    __in                          ULONG           ulAf,
    __in                          TCP_TABLE_CLASS TableClass,
    __in                          ULONG           Reserved
    );    

DWORD
WINAPI
GetOwnerModuleFromTcpEntry(
    __in                   PMIB_TCPROW_OWNER_MODULE      pTcpEntry,
    __in                   TCPIP_OWNER_MODULE_INFO_CLASS Class,
    __out_bcount(*pdwSize) PVOID                         pBuffer,
    __inout                PDWORD                        pdwSize
    );

ULONG
WINAPI
GetUdpTable(
    __out_bcount_opt(*SizePointer)   PMIB_UDPTABLE UdpTable,
    __inout                          PULONG        SizePointer,
    __in                             BOOL          Order
    );

DWORD
WINAPI
GetExtendedUdpTable(
    __out_bcount_opt(*pdwSize)    PVOID           pUdpTable,
    __inout                       PDWORD          pdwSize,
    __in                          BOOL            bOrder,
    __in                          ULONG           ulAf,
    __in                          UDP_TABLE_CLASS TableClass,
    __in                          ULONG           Reserved
    );

DWORD
WINAPI
GetOwnerModuleFromUdpEntry(
    __in                      PMIB_UDPROW_OWNER_MODULE      pUdpEntry,
    __in                      TCPIP_OWNER_MODULE_INFO_CLASS Class,
    __out_bcount(*pdwSize)    PVOID                         pBuffer,
    __inout                   PDWORD                        pdwSize
    );
    
#if (NTDDI_VERSION >= NTDDI_VISTA)
ULONG
WINAPI
GetTcpTable2(
    __out_bcount_opt(*SizePointer)   PMIB_TCPTABLE2 TcpTable,
    __inout                          PULONG         SizePointer,
    __in                             BOOL           Order
    );
#endif // (NTDDI_VERSION >= NTDDI_VISTA)  

#if (NTDDI_VERSION < NTDDI_VISTA)
//
// Deprecated APIs, Added for documentation.
//

DWORD
AllocateAndGetTcpExTableFromStack(
    __deref_out PVOID         *ppTcpTable,
    __in        BOOL          bOrder,
    __in        HANDLE        hHeap,
    __in        DWORD         dwFlags,
    __in        DWORD         dwFamily
    );

DWORD
AllocateAndGetUdpExTableFromStack(
    __deref_out PVOID         *ppUdpTable,
    __in        BOOL          bOrder,
    __in        HANDLE        hHeap,
    __in        DWORD         dwFlags,
    __in        DWORD         dwFamily
    );

#endif // (NTDDI_VERSION < NTDDI_VISTA) 

#ifdef _WS2IPDEF_
//
// The following definitions require Winsock2.
//

#if (NTDDI_VERSION >= NTDDI_VISTA)
ULONG
WINAPI
GetTcp6Table(
    __out_bcount(*SizePointer)   PMIB_TCP6TABLE TcpTable,
    __inout                      PULONG         SizePointer,
    __in                         BOOL           Order
    );

ULONG
WINAPI
GetTcp6Table2(
    __out_bcount(*SizePointer)   PMIB_TCP6TABLE2 TcpTable,
    __inout                      PULONG          SizePointer,
    __in                         BOOL            Order
    );

#endif // (NTDDI_VERSION >= NTDDI_VISTA)  

#ifdef WINAPI

ULONG
WINAPI
GetPerTcpConnectionEStats(
    __in PMIB_TCPROW Row,
    __in TCP_ESTATS_TYPE EstatsType,
    __out_bcount_opt(RwSize) PUCHAR Rw,
    __in ULONG RwVersion,
    __in ULONG RwSize,
    __out_bcount_opt(RosSize) PUCHAR Ros,
    __in ULONG RosVersion,
    __in ULONG RosSize,
    __out_bcount_opt(RodSize) PUCHAR Rod,
    __in ULONG RodVersion,
    __in ULONG RodSize
    );

ULONG
WINAPI
SetPerTcpConnectionEStats(
    __in PMIB_TCPROW Row,
    __in TCP_ESTATS_TYPE EstatsType,
    __in_bcount(RwSize) PUCHAR Rw,
    __in ULONG RwVersion,
    __in ULONG RwSize,
    __in ULONG Offset
    );

#ifdef _WS2IPDEF_

ULONG
WINAPI
GetPerTcp6ConnectionEStats(
    __in PMIB_TCP6ROW Row,
    __in TCP_ESTATS_TYPE EstatsType,
    __out_bcount_opt(RwSize) PUCHAR Rw,
    __in  ULONG RwVersion,
    __in  ULONG RwSize,
    __out_bcount_opt(RosSize) PUCHAR Ros,
    __in  ULONG RosVersion,
    __in  ULONG RosSize,
    __out_bcount_opt(RodSize) PUCHAR Rod,
    __in  ULONG RodVersion,
    __in  ULONG RodSize
    );

ULONG
WINAPI
SetPerTcp6ConnectionEStats(
    __in PMIB_TCP6ROW Row,
    __in TCP_ESTATS_TYPE EstatsType,
    __in_bcount(RwSize) PUCHAR Rw,
    __in ULONG RwVersion,
    __in ULONG RwSize,
    __in ULONG Offset
    );	

#endif // _WS2IPDEF_

#endif // WINAPI    

DWORD
WINAPI
GetOwnerModuleFromTcp6Entry(
    __in                      PMIB_TCP6ROW_OWNER_MODULE     pTcpEntry,
    __in                      TCPIP_OWNER_MODULE_INFO_CLASS Class,
    __out_bcount(*pdwSize)    PVOID                         pBuffer,
    __inout                   PDWORD                        pdwSize
    );    

ULONG
WINAPI
GetUdp6Table(
    __out_bcount(*SizePointer)   PMIB_UDP6TABLE Udp6Table,
    __inout                      PULONG         SizePointer,
    __in                         BOOL           Order
    );

DWORD
WINAPI
GetOwnerModuleFromUdp6Entry(
    __in                      PMIB_UDP6ROW_OWNER_MODULE     pUdpEntry,
    __in                      TCPIP_OWNER_MODULE_INFO_CLASS Class,
    __out_bcount(*pdwSize)    PVOID                         pBuffer,
    __inout                   PDWORD                        pdwSize
    );    

#endif // _WS2IPDEF_

DWORD
GetOwnerModuleFromPidAndInfo(
    __in                     ULONG                         ulPid,
    __in                     ULONGLONG                     *pInfo,
    __in                     TCPIP_OWNER_MODULE_INFO_CLASS Class,
    __out_bcount(*pdwSize)   PVOID                         pBuffer,
    __inout                  PDWORD                        pdwSize
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets IP/ICMP/TCP/UDP Statistics                                          //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

#if (NTDDI_VERSION >= NTDDI_WIN2K)
ULONG
WINAPI
GetIpStatistics(
    __out PMIB_IPSTATS Statistics
    );

ULONG
WINAPI
GetIcmpStatistics(
    __out PMIB_ICMP Statistics
    );


ULONG
WINAPI
GetTcpStatistics(
    __out PMIB_TCPSTATS Statistics
    );

ULONG
WINAPI
GetUdpStatistics(
    __out PMIB_UDPSTATS Stats
    );
#endif 

#if (NTDDI_VERSION >= NTDDI_XP)
ULONG
WINAPI
GetIpStatisticsEx(
    __out PMIB_IPSTATS Statistics,
    __in  ULONG Family
    );

ULONG
WINAPI
SetIpStatisticsEx(
    __in PMIB_IPSTATS Statistics,
    __in ULONG Family
    );

ULONG
WINAPI
GetIcmpStatisticsEx(
    __out PMIB_ICMP_EX Statistics,
    __in  ULONG Family
    );

ULONG
WINAPI
GetTcpStatisticsEx(
    __out PMIB_TCPSTATS Statistics,
    __in  ULONG Family
    );

ULONG
WINAPI
GetUdpStatisticsEx(
    __out PMIB_UDPSTATS Statistics,
    __in  ULONG Family
    );
#endif

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to set the ifAdminStatus on an interface.  The only fields of the   //
// MIB_IFROW that are relevant are the dwIndex (index of the interface      //
// whose status needs to be set) and the dwAdminStatus which can be either  //
// MIB_IF_ADMIN_STATUS_UP or MIB_IF_ADMIN_STATUS_DOWN                       //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
SetIfEntry(
    __in PMIB_IFROW pIfRow
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to create, modify or delete a route.  In all cases the              //
// dwForwardIfIndex, dwForwardDest, dwForwardMask, dwForwardNextHop and     //
// dwForwardPolicy MUST BE SPECIFIED. Currently dwForwardPolicy is unused   //
// and MUST BE 0.                                                           //
// For a set, the complete MIB_IPFORWARDROW structure must be specified     //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
CreateIpForwardEntry(
    __in PMIB_IPFORWARDROW pRoute
    );

DWORD
WINAPI
SetIpForwardEntry(
    __in PMIB_IPFORWARDROW pRoute
    );

DWORD
WINAPI
DeleteIpForwardEntry(
    __in PMIB_IPFORWARDROW pRoute
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to set the ipForwarding to ON or OFF (currently only ON->OFF is     //
// allowed) and to set the defaultTTL.  If only one of the fields needs to  //
// be modified and the other needs to be the same as before the other field //
// needs to be set to MIB_USE_CURRENT_TTL or MIB_USE_CURRENT_FORWARDING as  //
// the case may be                                                          //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

#if (NTDDI_VERSION >= NTDDI_WIN2K)
DWORD
WINAPI
SetIpStatistics(
    __in PMIB_IPSTATS pIpStats
    );
#endif

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to set the defaultTTL.                                              //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
SetIpTTL(
    __in UINT nTTL
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to create, modify or delete an ARP entry.  In all cases the dwIndex //
// dwAddr field MUST BE SPECIFIED.                                          //
// For a set, the complete MIB_IPNETROW structure must be specified         //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
CreateIpNetEntry(
    __in PMIB_IPNETROW    pArpEntry
    );

DWORD
WINAPI
SetIpNetEntry(
    __in PMIB_IPNETROW    pArpEntry
    );

DWORD
WINAPI
DeleteIpNetEntry(
    __in PMIB_IPNETROW    pArpEntry
    );

DWORD
WINAPI
FlushIpNetTable(
    __in DWORD   dwIfIndex
    );


//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to create or delete a Proxy ARP entry. The dwIndex is the index of  //
// the interface on which to PARP for the dwAddress.  If the interface is   //
// of a type that doesnt support ARP, e.g. PPP, then the call will fail     //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
CreateProxyArpEntry(
    __in  DWORD   dwAddress,
    __in  DWORD   dwMask,
    __in  DWORD   dwIfIndex
    );

DWORD
WINAPI
DeleteProxyArpEntry(
    __in  DWORD   dwAddress,
    __in  DWORD   dwMask,
    __in  DWORD   dwIfIndex
    );

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Used to set the state of a TCP Connection. The only state that it can be //
// set to is MIB_TCP_STATE_DELETE_TCB.  The complete MIB_TCPROW structure   //
// MUST BE SPECIFIED                                                        //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
SetTcpEntry(
    __in PMIB_TCPROW pTcpRow
    );


DWORD
WINAPI
GetInterfaceInfo(
    __out_bcount_opt(*dwOutBufLen) PIP_INTERFACE_INFO  pIfTable,
    __inout                        PULONG              dwOutBufLen
    );

DWORD
WINAPI
GetUniDirectionalAdapterInfo(
    __out_bcount_opt(*dwOutBufLen) PIP_UNIDIRECTIONAL_ADAPTER_ADDRESS pIPIfInfo,
    __inout                        PULONG                             dwOutBufLen
    );

#if (NTDDI_VERSION >= NTDDI_WIN2KSP1)
#ifndef NHPALLOCATEANDGETINTERFACEINFOFROMSTACK_DEFINED
#define NHPALLOCATEANDGETINTERFACEINFOFROMSTACK_DEFINED

DWORD
WINAPI
NhpAllocateAndGetInterfaceInfoFromStack(
    __deref_out IP_INTERFACE_NAME_INFO  **ppTable,
    __out       PDWORD                  pdwCount,
    __in        BOOL                    bOrder,
    __in        HANDLE                  hHeap,
    __in        DWORD                   dwFlags
    );

#endif
#endif // (NTDDI_VERSION >= NTDDI_WIN2KSP1)

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the "best" outgoing interface for the specified destination address //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
GetBestInterface(
    __in  IPAddr  dwDestAddr,
    __out PDWORD  pdwBestIfIndex
    );

#pragma warning(push)
#pragma warning(disable:4115)
DWORD
WINAPI
GetBestInterfaceEx(
    __in  struct sockaddr *pDestAddr,
    __out PDWORD           pdwBestIfIndex
    );
#pragma warning(pop)

//////////////////////////////////////////////////////////////////////////////
//                                                                          //
// Gets the best (longest matching prefix) route for the given destination  //
// If the source address is also specified (i.e. is not 0x00000000), and    //
// there are multiple "best" routes to the given destination, the returned  //
// route will be one that goes out over the interface which has an address  //
// that matches the source address                                          //
//                                                                          //
//////////////////////////////////////////////////////////////////////////////

DWORD
WINAPI
GetBestRoute(
    __in      DWORD               dwDestAddr,
    __in_opt  DWORD               dwSourceAddr,
    __out     PMIB_IPFORWARDROW   pBestRoute
    );

DWORD
WINAPI
NotifyAddrChange(
    __out PHANDLE      Handle,
    __in  LPOVERLAPPED overlapped
    );


DWORD
WINAPI
NotifyRouteChange(
    __out PHANDLE      Handle,
    __in  LPOVERLAPPED overlapped
    );

BOOL
WINAPI
CancelIPChangeNotify(
    __in  LPOVERLAPPED notifyOverlapped
    );

DWORD
WINAPI
GetAdapterIndex(
    __in    LPWSTR  AdapterName,
    __inout PULONG IfIndex
    );

DWORD
WINAPI
AddIPAddress(
    __in IPAddr  Address,
    __in IPMask  IpMask,
    __in DWORD   IfIndex,
    __out PULONG  NTEContext,
    __out PULONG  NTEInstance
    );

DWORD
WINAPI
DeleteIPAddress(
    __in ULONG NTEContext
    );

#if (NTDDI_VERSION >= NTDDI_WIN2KSP1)
DWORD
WINAPI
GetNetworkParams(
    __out_bcount_opt(*pOutBufLen)   PFIXED_INFO pFixedInfo, 
    __inout                         PULONG      pOutBufLen
    );
#endif

ULONG
WINAPI
GetAdaptersInfo(
    __out_bcount_opt(*SizePointer)  PIP_ADAPTER_INFO AdapterInfo, 
    __inout                         PULONG           SizePointer
    );

PIP_ADAPTER_ORDER_MAP 
WINAPI
GetAdapterOrderMap(
    VOID
    );

#ifdef _WINSOCK2API_

//
// The following functions require Winsock2.
//

ULONG
WINAPI
GetAdaptersAddresses(
    __in ULONG Family,
    __in ULONG Flags,
    __reserved PVOID Reserved,
    __out_bcount_opt(*SizePointer) PIP_ADAPTER_ADDRESSES AdapterAddresses, 
    __inout PULONG SizePointer
    );

#endif

#if (NTDDI_VERSION >= NTDDI_WIN2KSP1)
DWORD
WINAPI
GetPerAdapterInfo(
    __in                            ULONG                IfIndex, 
    __out_bcount_opt(*pOutBufLen)   PIP_PER_ADAPTER_INFO pPerAdapterInfo, 
    __inout                         PULONG               pOutBufLen
    );
#endif

DWORD
WINAPI
IpReleaseAddress(
    __in PIP_ADAPTER_INDEX_MAP  AdapterInfo
    );


DWORD
WINAPI
IpRenewAddress(
    __in PIP_ADAPTER_INDEX_MAP  AdapterInfo
    );

DWORD
WINAPI
SendARP(
    __in IPAddr DestIP,
    __in IPAddr SrcIP,
    __out_bcount(*PhyAddrLen) PVOID pMacAddr,
    __inout PULONG  PhyAddrLen
    );

BOOL
WINAPI
GetRTTAndHopCount(
    __in  IPAddr DestIpAddress,
    __out PULONG HopCount,
    __in  ULONG  MaxHops,
    __out PULONG RTT
    );

DWORD
WINAPI
GetFriendlyIfIndex(
    __in DWORD IfIndex
    );

DWORD
WINAPI
EnableRouter(
    __out HANDLE* pHandle,
    __out OVERLAPPED* pOverlapped
    );

DWORD
WINAPI
UnenableRouter(
    __in      OVERLAPPED* pOverlapped,
    __out_opt LPDWORD lpdwEnableCount
    );
DWORD
WINAPI
DisableMediaSense(
    __out HANDLE *pHandle,
    __in  OVERLAPPED *pOverLapped
    );

DWORD
WINAPI
RestoreMediaSense(
    __in      OVERLAPPED* pOverlapped,
    __out_opt LPDWORD lpdwEnableCount
    );

#if (NTDDI_VERSION >= NTDDI_VISTA)

DWORD
WINAPI
GetIpErrorString(
    __in    IP_STATUS ErrorCode,
    __out_ecount_opt(*Size + 1) PWSTR Buffer,
    __inout PDWORD Size
    );

#if (NTDDI_VERSION >= NTDDI_VISTA)
#ifdef _WS2DEF_
ULONG
WINAPI
ResolveNeighbor(
    __in    SOCKADDR *NetworkAddress,
    __out_bcount(*PhysicalAddressLength) PVOID PhysicalAddress,
    __inout PULONG PhysicalAddressLength
    );
#endif
#endif  
//
// Port reservation API routines.
//

ULONG
WINAPI
CreatePersistentTcpPortReservation(
    __in  USHORT StartPort,
    __in  USHORT NumberOfPorts,
    __out PULONG64 Token
    );

ULONG
WINAPI
CreatePersistentUdpPortReservation(
    __in  USHORT StartPort,
    __in  USHORT NumberOfPorts,
    __out PULONG64 Token
    );

ULONG
WINAPI
DeletePersistentTcpPortReservation(
    __in USHORT StartPort,
    __in USHORT NumberOfPorts
    );

ULONG
WINAPI
DeletePersistentUdpPortReservation(
    __in USHORT StartPort,
    __in USHORT NumberOfPorts
    );

ULONG
WINAPI
LookupPersistentTcpPortReservation(
    __in  USHORT StartPort,
    __in  USHORT NumberOfPorts,
    __out PULONG64 Token
    );

ULONG
WINAPI
LookupPersistentUdpPortReservation(
    __in  USHORT StartPort,
    __in  USHORT NumberOfPorts,
    __out PULONG64 Token
    );


//
// Network String parsing API
//

#define NET_STRING_IPV4_ADDRESS           0x00000001
   // The string identifies an IPv4 Host/router using literal address.
   // (port or prefix not allowed) 
#define NET_STRING_IPV4_SERVICE           0x00000002
   // The string identifies an IPv4 service using literal address.
   // (port required; prefix not allowed) 
#define NET_STRING_IPV4_NETWORK           0x00000004
   // The string identifies an IPv4 network.
   // (prefix required; port not allowed) 
#define NET_STRING_IPV6_ADDRESS           0x00000008
   // The string identifies an IPv6 Host/router using literal address.
   // (port or prefix not allowed; scope-id allowed) 
#define NET_STRING_IPV6_ADDRESS_NO_SCOPE  0x00000010
   // The string identifies an IPv6 Host/router using literal address
   // where the interface context is already known.
   // (port or prefix not allowed; scope-id not allowed) 
#define NET_STRING_IPV6_SERVICE           0x00000020
   // The string identifies an IPv6 service using literal address.
   // (port required; prefix not allowed; scope-id allowed) 
#define NET_STRING_IPV6_SERVICE_NO_SCOPE  0x00000040
   // The string identifies an IPv6 service using literal address
   // where the interface context is already known.
   // (port required; prefix not allowed; scope-id not allowed) 
#define NET_STRING_IPV6_NETWORK           0x00000080
   // The string identifies an IPv6 network.
   // (prefix required; port or scope-id not allowed) 
#define NET_STRING_NAMED_ADDRESS          0x00000100
   // The string identifies an Internet Host using DNS.
   // (port or prefix or scope-id not allowed) 
#define NET_STRING_NAMED_SERVICE          0x00000200
   // The string identifies an Internet service using DNS.
   // (port required; prefix or scope-id not allowed)

#define NET_STRING_IP_ADDRESS             (NET_STRING_IPV4_ADDRESS   | \
                                           NET_STRING_IPV6_ADDRESS)

#define NET_STRING_IP_ADDRESS_NO_SCOPE    (NET_STRING_IPV4_ADDRESS   | \
                                           NET_STRING_IPV6_ADDRESS_NO_SCOPE)

#define NET_STRING_IP_SERVICE             (NET_STRING_IPV4_SERVICE   | \
                                           NET_STRING_IPV6_SERVICE)

#define NET_STRING_IP_SERVICE_NO_SCOPE    (NET_STRING_IPV4_SERVICE   | \
                                           NET_STRING_IPV6_SERVICE_NO_SCOPE)

#define NET_STRING_IP_NETWORK             (NET_STRING_IPV4_NETWORK   | \
                                           NET_STRING_IPV6_NETWORK)

#define NET_STRING_ANY_ADDRESS            (NET_STRING_NAMED_ADDRESS  | \
                                           NET_STRING_IP_ADDRESS)

#define NET_STRING_ANY_ADDRESS_NO_SCOPE   (NET_STRING_NAMED_ADDRESS  | \
                                           NET_STRING_IP_ADDRESS_NO_SCOPE)

#define NET_STRING_ANY_SERVICE            (NET_STRING_NAMED_SERVICE  | \
                                           NET_STRING_IP_SERVICE)

#define NET_STRING_ANY_SERVICE_NO_SCOPE   (NET_STRING_NAMED_SERVICE  | \
                                           NET_STRING_IP_SERVICE_NO_SCOPE)

typedef enum NET_ADDRESS_FORMAT_
{
   NET_ADDRESS_FORMAT_UNSPECIFIED = 0,

   NET_ADDRESS_DNS_NAME,
   NET_ADDRESS_IPV4,
   NET_ADDRESS_IPV6

} NET_ADDRESS_FORMAT;

#if defined (_WS2DEF_) && defined (_WS2IPDEF_) && defined(_WINDNS_INCLUDED_)
	// app must include winsock2.h, ws2ipdef.h, and windns.h to use this API

typedef struct NET_ADDRESS_INFO_
{
   NET_ADDRESS_FORMAT Format;

   union
   {
      struct {
         WCHAR Address[DNS_MAX_NAME_BUFFER_LENGTH];   
         WCHAR Port[6];
      } NamedAddress;

      SOCKADDR_IN Ipv4Address;
      SOCKADDR_IN6 Ipv6Address;
      SOCKADDR IpAddress;
   };

} NET_ADDRESS_INFO, *PNET_ADDRESS_INFO;

DWORD
WINAPI
ParseNetworkString(
   __in      CONST WCHAR* NetworkString,
   __in      DWORD Types,
   __out_opt PNET_ADDRESS_INFO AddressInfo,
   __out_opt USHORT* PortNumber,
   __out_opt BYTE* PrefixLength
   );

#endif


#endif // (NTDDI_VERSION >= NTDDI_VISTA)

#if (NTDDI_VERSION >= NTDDI_VISTA)

#include <netioapi.h>

#endif // (NTDDI_VERSION >= NTDDI_VISTA)

#ifdef __cplusplus
}
#endif

#endif //__IPHLPAPI_H__


