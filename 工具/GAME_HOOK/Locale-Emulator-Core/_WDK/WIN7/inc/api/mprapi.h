/*++

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    mpradmin.h

Abstract:

    This file contains the structures, defines and function prototypes for the
    following APIs:

        MprAdminIsServiceRunning
        MprAdminServerConnect
        MprAdminServerDisconnect
        MprAdminBufferFree
        MprAdminPortEnum
        MprAdminConnectionEnum
        MprAdminPortGetInfo
        MprAdminConnectionGetInfo
        MprAdminPortClearStats
        MprAdminPortReset
        MprAdminConnectionClearStats
        MprAdminPortDisconnect
        MprAdminGetErrorString

        MprAdminAcceptNewConnection
        MprAdminAcceptNewLink
        MprAdminConnectionHangupNotification
        MprAdminLinkHangupNotification
        MprAdminGetIpAddressForUser
        MprAdminReleaseIpAddress
        MprAdminInitializeDll
        MprAdminTerminateDll
        MprAdminAcceptNewConnection2
        MprAdminConnectionHangupNotification2
        MprAdminAcceptReauthentication

        MprAdminUserGetInfo
        MprAdminUserSetInfo
        MprAdminSendUserMessage
        MprAdminGetPDCServer

        MprAdminRegisterConnectionNotification
        MprAdminDeregisterConnectionNotification

        MprAdminIsServiceRunning
        MprAdminServerConnect
        MprAdminServerDisconnect
        MprAdminBufferFree
        MprAdminServerSetInfo
        MprAdminServerGetInfo        
        MprAdminGetErrorString
        MprAdminTransportCreate
        MprAdminTransportSetInfo
        MprAdminTransportGetInfo
        MprAdminInterfaceCreate
        MprAdminInterfaceDelete
        MprAdminInterfaceGetInfo
        MprAdminInterfaceTransportAdd
        MprAdminInterfaceTransportGetInfo
        MprAdminInterfaceTransportSetInfo
        MprAdminInterfaceTransportRemove
        MprAdminInterfaceGetHandle
        MprAdminInterfaceSetCredentials
        MprAdminInterfaceGetCredentials
        MprAdminInterfaceEnum
        MprAdminInterfaceConnect
        MprAdminInterfaceDisconnect
        MprAdminInterfaceUpdateRoutes
        MprAdminInterfaceQueryUpdateResult
        MprAdminInterfaceUpdatePhonebookInfo
        MprAdminEstablishDomainRasServer
        MprAdminIsDomainRasServer

        MprAdminMIBServerConnect
        MprAdminMIBServerDisconnect
        MprAdminMIBBufferFree
        MprAdminMIBEntryCreate
        MprAdminMIBEntryDelete
        MprAdminMIBEntryGet
        MprAdminMIBEntrySet
        MprAdminMIBEntryGetFirst
        MprAdminMIBEntryGetNext
        MprAdminMIBSetTrapInfo
        MprAdminMIBGetTrapInfo

    All MIB APIs operate with the conceptual MIB row.

        MprConfigServerConnect
        MprConfigServerDisconnect
        MprConfigBufferFree
        MprConfigServerSetInfo
        MprConfigServerGetInfo
        MprConfigServerBackup
        MprConfigServerRestore
        MprConfigTransportCreate
        MprConfigTransportDelete
        MprConfigTransportGetHandle
        MprConfigTransportSetInfo
        MprConfigTransportGetInfo
        MprConfigTransportEnum
        MprConfigInterfaceCreate
        MprConfigInterfaceDelete
        MprConfigInterfaceGetHandle
        MprConfigInterfaceGetInfo
        MprConfigInterfaceEnum
        MprConfigInterfaceTransportAdd
        MprConfigInterfaceTransportRemove
        MprConfigInterfaceTransportGetHandle
        MprConfigInterfaceTransportGetInfo
        MprConfigInterfaceTransportSetInfo
        MprConfigInterfaceTransportEnum
        MprConfigFilterGetInfo
        MprConfigFilterSetInfo
        
        MprSetupIpInIpInterfaceFriendlyNameEnum
        MprSetupIpInIpInterfaceFriendlyNameFree
        MprSetupIpInIpInterfaceFriendlyNameCreate
        MprSetupIpInIpInterfaceFriendlyNameDelete

--*/


#ifndef __ROUTING_MPRADMIN_H__
#define __ROUTING_MPRADMIN_H__

#if _MSC_VER > 1000
#pragma once
#endif

#include <lmcons.h>
#include <ras.h>
#include <in6addr.h>
#include <wincrypt.h>

#ifdef __cplusplus
extern "C" {
#endif

//
// Name of the Routing and RemoteAccess Service
//

#define RRAS_SERVICE_NAME       TEXT("RemoteAccess")

//
// Protocol IDs
//

#define PID_IPX                 0x0000002B
#define PID_IP                  0x00000021
#define PID_IPV6                0x00000057
#define PID_NBF                 0x0000003F
#define PID_ATALK               0x00000029


#define MAX_INTERFACE_NAME_LEN  256
#define MAX_TRANSPORT_NAME_LEN  40
#define MAX_MEDIA_NAME          16
#define MAX_PORT_NAME           16
#define MAX_DEVICE_NAME         128
#define MAX_PHONE_NUMBER_LEN    128
#define MAX_DEVICETYPE_NAME     16

//
// MPR Interface structures and definitions.
//

//
// MPR Interface types
//

typedef enum _ROUTER_INTERFACE_TYPE
{
    ROUTER_IF_TYPE_CLIENT,
    ROUTER_IF_TYPE_HOME_ROUTER,
    ROUTER_IF_TYPE_FULL_ROUTER,
    ROUTER_IF_TYPE_DEDICATED,
    ROUTER_IF_TYPE_INTERNAL,
    ROUTER_IF_TYPE_LOOPBACK,
    ROUTER_IF_TYPE_TUNNEL1,
    ROUTER_IF_TYPE_DIALOUT,
    ROUTER_IF_TYPE_MAX // do not use.Illegal
}
ROUTER_INTERFACE_TYPE;

typedef enum _ROUTER_CONNECTION_STATE
{
    ROUTER_IF_STATE_UNREACHABLE,
    ROUTER_IF_STATE_DISCONNECTED,
    ROUTER_IF_STATE_CONNECTING,
    ROUTER_IF_STATE_CONNECTED
}
ROUTER_CONNECTION_STATE;

#define MPR_INTERFACE_OUT_OF_RESOURCES              0x00000001
#define MPR_INTERFACE_ADMIN_DISABLED                0x00000002
#define MPR_INTERFACE_CONNECTION_FAILURE            0x00000004
#define MPR_INTERFACE_SERVICE_PAUSED                0x00000008
#define MPR_INTERFACE_DIALOUT_HOURS_RESTRICTION     0x00000010
#define MPR_INTERFACE_NO_MEDIA_SENSE                0x00000020
#define MPR_INTERFACE_NO_DEVICE                     0x00000040

typedef struct _MPR_INTERFACE_0
{
    IN OUT  WCHAR                   wszInterfaceName[MAX_INTERFACE_NAME_LEN+1];
    OUT     HANDLE                  hInterface;
    IN OUT  BOOL                    fEnabled;
    IN OUT  ROUTER_INTERFACE_TYPE   dwIfType;
    OUT     ROUTER_CONNECTION_STATE dwConnectionState;
    OUT     DWORD                   fUnReachabilityReasons;
    OUT     DWORD                   dwLastError;

}
MPR_INTERFACE_0, *PMPR_INTERFACE_0;

typedef struct _MPR_IPINIP_INTERFACE_0
{
    WCHAR   wszFriendlyName[MAX_INTERFACE_NAME_LEN+1];

    GUID    Guid;

}MPR_IPINIP_INTERFACE_0, *PMPR_IPINIP_INTERFACE_0;

#if(WINVER >= 0x0500)

typedef struct _MPR_INTERFACE_1
{
    IN OUT  WCHAR                   wszInterfaceName[MAX_INTERFACE_NAME_LEN+1];
    OUT     HANDLE                  hInterface;
    IN OUT  BOOL                    fEnabled;
    IN OUT  ROUTER_INTERFACE_TYPE   dwIfType;
    OUT     ROUTER_CONNECTION_STATE dwConnectionState;
    OUT     DWORD                   fUnReachabilityReasons;
    OUT     DWORD                   dwLastError;
    OUT     LPWSTR                  lpwsDialoutHoursRestriction;

}
MPR_INTERFACE_1, *PMPR_INTERFACE_1;

//
// MPR_INTERFACE_2 definitions
//

#define MPR_MaxDeviceType     RAS_MaxDeviceType
#define MPR_MaxPhoneNumber    RAS_MaxPhoneNumber
#define MPR_MaxIpAddress      RAS_MaxIpAddress
#define MPR_MaxIpxAddress     RAS_MaxIpxAddress

#define MPR_MaxEntryName      RAS_MaxEntryName
#define MPR_MaxDeviceName     RAS_MaxDeviceName
#define MPR_MaxCallbackNumber RAS_MaxCallbackNumber

#define MPR_MaxAreaCode       RAS_MaxAreaCode
#define MPR_MaxPadType        RAS_MaxPadType
#define MPR_MaxX25Address     RAS_MaxX25Address
#define MPR_MaxFacilities     RAS_MaxFacilities
#define MPR_MaxUserData       RAS_MaxUserData

//
// MPR_INTERFACE_2 'dwfOptions' bit flags.
//

#define MPRIO_SpecificIpAddr            RASEO_SpecificIpAddr
#define MPRIO_SpecificNameServers       RASEO_SpecificNameServers
#define MPRIO_IpHeaderCompression       RASEO_IpHeaderCompression
#define MPRIO_RemoteDefaultGateway      RASEO_RemoteDefaultGateway
#define MPRIO_DisableLcpExtensions      RASEO_DisableLcpExtensions
#define MPRIO_SwCompression             RASEO_SwCompression
#define MPRIO_RequireEncryptedPw        RASEO_RequireEncryptedPw
#define MPRIO_RequireMsEncryptedPw      RASEO_RequireMsEncryptedPw
#define MPRIO_RequireDataEncryption     RASEO_RequireDataEncryption
#define MPRIO_NetworkLogon              RASEO_NetworkLogon
#define MPRIO_PromoteAlternates         RASEO_PromoteAlternates
#define MPRIO_SecureLocalFiles          RASEO_SecureLocalFiles
#define MPRIO_RequireEAP                RASEO_RequireEAP
#define MPRIO_RequirePAP                RASEO_RequirePAP
#define MPRIO_RequireSPAP               RASEO_RequireSPAP
#define MPRIO_SharedPhoneNumbers        RASEO_SharedPhoneNumbers
#define MPRIO_RequireCHAP               RASEO_RequireCHAP
#define MPRIO_RequireMsCHAP             RASEO_RequireMsCHAP
#define MPRIO_RequireMsCHAP2            RASEO_RequireMsCHAP2

#if (WINVER >= 0x501)
#define MPRIO_IpSecPreSharedKey         0x80000000
#endif

//
// MPR_INTERFACE_2 'dwProtocols' bit flags.
//

#define MPRNP_Ipx                       RASNP_Ipx
#define MPRNP_Ip                        RASNP_Ip
#if (WINVER >= 0x600)
#define MPRNP_Ipv6                      RASNP_Ipv6
#endif

//
// MPR_INTERFACE_2 'szDeviceType' default strings.
//

#define MPRDT_Modem                     RASDT_Modem
#define MPRDT_Isdn                      RASDT_Isdn
#define MPRDT_X25                       RASDT_X25
#define MPRDT_Vpn                       RASDT_Vpn
#define MPRDT_Pad                       RASDT_Pad
#define MPRDT_Generic                   RASDT_Generic
#define MPRDT_Serial                    RASDT_Serial        			
#define MPRDT_FrameRelay                RASDT_FrameRelay
#define MPRDT_Atm                       RASDT_Atm
#define MPRDT_Sonet                     RASDT_Sonet
#define MPRDT_SW56                      RASDT_SW56
#define MPRDT_Irda                      RASDT_Irda
#define MPRDT_Parallel                  RASDT_Parallel

//
// MPR_INTERFACE_2 'dwType' settings
//

#define MPRET_Phone    RASET_Phone
#define MPRET_Vpn      RASET_Vpn
#define MPRET_Direct   RASET_Direct

//
// MPR_INTERFACE_2 'dwDialMode' values.
//

#define MPRDM_DialFirst                0
#define MPRDM_DialAll                  RASEDM_DialAll
#define MPRDM_DialAsNeeded             RASEDM_DialAsNeeded

//
// MPR_INTERFACE_2 'dwIdleDisconnectSeconds' constants.
//

#define MPRIDS_Disabled                 RASIDS_Disabled
#define MPRIDS_UseGlobalValue           RASIDS_UseGlobalValue

//
// MPR_INTERFACE_2 encryption types.
//

#define MPR_ET_None         ET_None         
#define MPR_ET_Require      ET_Require      
#define MPR_ET_RequireMax   ET_RequireMax   
#define MPR_ET_Optional     ET_Optional     

//
// MPR_INTERFACE_2 Vpn strategies
//

#define MPR_VS_Default	        VS_Default		
#define MPR_VS_PptpOnly	        VS_PptpOnly	
#define MPR_VS_PptpFirst        VS_PptpFirst	
#define MPR_VS_L2tpOnly         VS_L2tpOnly 	
#define MPR_VS_L2tpFirst        VS_L2tpFirst	

//
// Used to create/get/set a demand dial interface plus its
// ras configuration.
//

typedef struct _MPR_INTERFACE_2
{
    IN OUT  WCHAR                   wszInterfaceName[MAX_INTERFACE_NAME_LEN+1];
    OUT     HANDLE                  hInterface;
    IN OUT  BOOL                    fEnabled;
    IN OUT  ROUTER_INTERFACE_TYPE   dwIfType;
    OUT     ROUTER_CONNECTION_STATE dwConnectionState;
    OUT     DWORD                   fUnReachabilityReasons;
    OUT     DWORD                   dwLastError;

    //
    // Demand dial-specific properties
    //

    DWORD       dwfOptions;

    //
    // Location/phone number
    //

    WCHAR       szLocalPhoneNumber[ RAS_MaxPhoneNumber + 1 ];
    PWCHAR      szAlternates;

    //
    // PPP/Ip
    //

    DWORD       ipaddr;
    DWORD       ipaddrDns;
    DWORD       ipaddrDnsAlt;
    DWORD       ipaddrWins;
    DWORD       ipaddrWinsAlt;

    //
    // NetProtocols
    //

    DWORD       dwfNetProtocols;

    //
    // Device
    //

    WCHAR       szDeviceType[ MPR_MaxDeviceType + 1 ];
    WCHAR       szDeviceName[ MPR_MaxDeviceName + 1 ];

    //
    // X.25
    //

    WCHAR       szX25PadType[ MPR_MaxPadType + 1 ];
    WCHAR       szX25Address[ MPR_MaxX25Address + 1 ];
    WCHAR       szX25Facilities[ MPR_MaxFacilities + 1 ];
    WCHAR       szX25UserData[ MPR_MaxUserData + 1 ];
    DWORD       dwChannels;

    //
    // Multilink
    //

    DWORD       dwSubEntries;
    DWORD       dwDialMode;
    DWORD       dwDialExtraPercent;
    DWORD       dwDialExtraSampleSeconds;
    DWORD       dwHangUpExtraPercent;
    DWORD       dwHangUpExtraSampleSeconds;

    //
    // Idle timeout
    //

    DWORD       dwIdleDisconnectSeconds;

    //
    // Entry Type
    //

    DWORD       dwType;

    //
    // EncryptionType
    //

    DWORD       dwEncryptionType;

    //
    // EAP information
    //

    DWORD       dwCustomAuthKey;
    DWORD       dwCustomAuthDataSize;
    LPBYTE      lpbCustomAuthData;

    //
    // Guid of the connection
    //

    GUID        guidId;

    //
    // Vpn Strategy
    //

    DWORD       dwVpnStrategy;

} MPR_INTERFACE_2, *PMPR_INTERFACE_2;

#if(WINVER >= 0x0600)

typedef struct _MPR_INTERFACE_3
{
    IN OUT  WCHAR                   wszInterfaceName[MAX_INTERFACE_NAME_LEN+1];
    OUT     HANDLE                  hInterface;
    IN OUT  BOOL                    fEnabled;
    IN OUT  ROUTER_INTERFACE_TYPE   dwIfType;
    OUT     ROUTER_CONNECTION_STATE dwConnectionState;
    OUT     DWORD                   fUnReachabilityReasons;
    OUT     DWORD                   dwLastError;

    //
    // Demand dial-specific properties
    //

    DWORD       dwfOptions;

    //
    // Location/phone number
    //

    WCHAR       szLocalPhoneNumber[ RAS_MaxPhoneNumber + 1 ];
    PWCHAR      szAlternates;

    //
    // PPP/Ip
    //

    DWORD       ipaddr;
    DWORD       ipaddrDns;
    DWORD       ipaddrDnsAlt;
    DWORD       ipaddrWins;
    DWORD       ipaddrWinsAlt;

   
    
   

    //
    // NetProtocols
    //

    DWORD       dwfNetProtocols;

    //
    // Device
    //

    WCHAR       szDeviceType[ MPR_MaxDeviceType + 1 ];
    WCHAR       szDeviceName[ MPR_MaxDeviceName + 1 ];

    //
    // X.25
    //

    WCHAR       szX25PadType[ MPR_MaxPadType + 1 ];
    WCHAR       szX25Address[ MPR_MaxX25Address + 1 ];
    WCHAR       szX25Facilities[ MPR_MaxFacilities + 1 ];
    WCHAR       szX25UserData[ MPR_MaxUserData + 1 ];
    DWORD       dwChannels;

    //
    // Multilink
    //

    DWORD       dwSubEntries;
    DWORD       dwDialMode;
    DWORD       dwDialExtraPercent;
    DWORD       dwDialExtraSampleSeconds;
    DWORD       dwHangUpExtraPercent;
    DWORD       dwHangUpExtraSampleSeconds;

    //
    // Idle timeout
    //

    DWORD       dwIdleDisconnectSeconds;

    //
    // Entry Type
    //

    DWORD       dwType;

    //
    // EncryptionType
    //

    DWORD       dwEncryptionType;

    //
    // EAP information
    //

    DWORD       dwCustomAuthKey;
    DWORD       dwCustomAuthDataSize;
    LPBYTE      lpbCustomAuthData;

    //
    // Guid of the connection
    //

    GUID        guidId;

    //
    // Vpn Strategy
    //

    DWORD       dwVpnStrategy;

    ULONG          AddressCount;
    IN6_ADDR      ipv6addrDns;
    IN6_ADDR       ipv6addrDnsAlt;
    IN6_ADDR       *ipv6addr; 

} MPR_INTERFACE_3, *PMPR_INTERFACE_3;

#endif /* WINVER >= 0x0600 */

//
// Used to set/get per-link information for multilinked demand
// dial interfaces.
//

typedef struct _MPR_DEVICE_0
{
    //
    // Device
    //

    WCHAR       szDeviceType[ MPR_MaxDeviceType + 1 ];
    WCHAR       szDeviceName[ MPR_MaxDeviceName + 1 ];

}
MPR_DEVICE_0, *PMPR_DEVICE_0;

typedef struct _MPR_DEVICE_1
{
    //
    // Device
    //

    WCHAR       szDeviceType[ MPR_MaxDeviceType + 1 ];
    WCHAR       szDeviceName[ MPR_MaxDeviceName + 1 ];

    //
    // Phone numbers
    //

    WCHAR       szLocalPhoneNumber[ MPR_MaxPhoneNumber + 1 ];
    PWCHAR      szAlternates;

}
MPR_DEVICE_1, *PMPR_DEVICE_1;

//
// Used to get/set extended credentials information such as
// eap credentials info.
//

typedef __struct_bcount(dwSize + sizeof(MPR_CREDENTIALSEX_0)) struct _MPR_CREDENTIALSEX_0
{
    DWORD  dwSize;
    LPBYTE lpbCredentialsInfo;
}
MPR_CREDENTIALSEX_0, *PMPR_CREDENTIALSEX_0;

typedef __struct_bcount(dwSize + sizeof(MPR_CREDENTIALSEX_1)) struct _MPR_CREDENTIALSEX_1
{
    DWORD  dwSize;
    LPBYTE lpbCredentialsInfo;
}
MPR_CREDENTIALSEX_1, *PMPR_CREDENTIALSEX_1;

#endif /* WINVER >= 0x0500 */

typedef struct _MPR_TRANSPORT_0
{
    OUT     DWORD                   dwTransportId;
    OUT     HANDLE                  hTransport;
    OUT     WCHAR                   wszTransportName[MAX_TRANSPORT_NAME_LEN+1];

}
MPR_TRANSPORT_0, *PMPR_TRANSPORT_0;

typedef struct _MPR_IFTRANSPORT_0
{
    OUT     DWORD                  dwTransportId;
    OUT     HANDLE                 hIfTransport;
    OUT     WCHAR                  wszIfTransportName[MAX_TRANSPORT_NAME_LEN+1];

}
MPR_IFTRANSPORT_0, *PMPR_IFTRANSPORT_0;

typedef struct _MPR_SERVER_0
{
    OUT BOOL                    fLanOnlyMode;
    OUT DWORD                   dwUpTime;           // In seconds
    OUT DWORD                   dwTotalPorts;
    OUT DWORD                   dwPortsInUse;

}
MPR_SERVER_0, *PMPR_SERVER_0;


#if (WINVER >= 0x501)

//
// values for dwFlags in MPR_SERVER_1. This enables the ports for Ras or Routing.
//

#define MPR_ENABLE_RAS_ON_DEVICE            0x00000001
#define MPR_ENABLE_ROUTING_ON_DEVICE        0x00000002

typedef struct _MPR_SERVER_1
{

    IN OUT DWORD                   dwNumPptpPorts;
    IN OUT DWORD                   dwPptpPortFlags;
    IN OUT DWORD                   dwNumL2tpPorts;
    IN OUT DWORD                   dwL2tpPortFlags;
}
MPR_SERVER_1, *PMPR_SERVER_1;

#endif


#if (WINVER >= 0x600)

//
// MPR_SERVER_2 structure.
//

typedef struct _MPR_SERVER_2
{
    IN OUT DWORD                   dwNumPptpPorts;
    IN OUT DWORD                   dwPptpPortFlags;
    IN OUT DWORD                   dwNumL2tpPorts;
    IN OUT DWORD                   dwL2tpPortFlags;
    IN OUT DWORD                   dwNumSstpPorts;
    IN OUT DWORD                   dwSstpPortFlags;
}
MPR_SERVER_2, *PMPR_SERVER_2;

#endif


//
// Port condition codes
//

typedef enum _RAS_PORT_CONDITION
{
    RAS_PORT_NON_OPERATIONAL,
    RAS_PORT_DISCONNECTED,	
    RAS_PORT_CALLING_BACK,
    RAS_PORT_LISTENING,
    RAS_PORT_AUTHENTICATING,
    RAS_PORT_AUTHENTICATED,	
    RAS_PORT_INITIALIZING

}
RAS_PORT_CONDITION;

//
// Hardware condition codes
//

typedef enum _RAS_HARDWARE_CONDITION
{
    RAS_HARDWARE_OPERATIONAL,
    RAS_HARDWARE_FAILURE

}
RAS_HARDWARE_CONDITION;

typedef struct _RAS_PORT_0
{
    OUT HANDLE                  hPort;
    OUT HANDLE                  hConnection;
    OUT RAS_PORT_CONDITION      dwPortCondition;
    OUT DWORD                   dwTotalNumberOfCalls;
    OUT DWORD                   dwConnectDuration;      // In seconds
    OUT WCHAR                   wszPortName[ MAX_PORT_NAME + 1 ];
    OUT WCHAR                   wszMediaName[ MAX_MEDIA_NAME + 1 ];
    OUT WCHAR                   wszDeviceName[ MAX_DEVICE_NAME + 1 ];
    OUT WCHAR                   wszDeviceType[ MAX_DEVICETYPE_NAME + 1 ];

}
RAS_PORT_0, *PRAS_PORT_0;

typedef struct _RAS_PORT_1
{
    OUT HANDLE                  hPort;
    OUT HANDLE                  hConnection;
    OUT RAS_HARDWARE_CONDITION  dwHardwareCondition;
    OUT DWORD                   dwLineSpeed;            // in bits/second
    OUT DWORD                   dwBytesXmited;
    OUT DWORD                   dwBytesRcved;
    OUT DWORD                   dwFramesXmited;
    OUT DWORD                   dwFramesRcved;
    OUT DWORD                   dwCrcErr;
    OUT DWORD                   dwTimeoutErr;
    OUT DWORD                   dwAlignmentErr;
    OUT DWORD                   dwHardwareOverrunErr;
    OUT DWORD                   dwFramingErr;
    OUT DWORD                   dwBufferOverrunErr;
    OUT DWORD                   dwCompressionRatioIn;
    OUT DWORD                   dwCompressionRatioOut;
}
RAS_PORT_1, *PRAS_PORT_1;

//
// Maximum length of address string, e.g. "255.255.255.255" for IP.
//

#define IPADDRESSLEN  15
#define IPXADDRESSLEN 22
#define ATADDRESSLEN  32
#define MAXIPADRESSLEN 64


typedef struct _PPP_NBFCP_INFO
{
    OUT DWORD           dwError;
    OUT WCHAR           wszWksta[ NETBIOS_NAME_LEN + 1 ];
}
PPP_NBFCP_INFO;

typedef struct _PPP_IPCP_INFO
{
    OUT DWORD           dwError;
    OUT WCHAR           wszAddress[ IPADDRESSLEN + 1 ];
    OUT WCHAR           wszRemoteAddress[ IPADDRESSLEN + 1 ];
}
PPP_IPCP_INFO;

//
// PPP_IPCP_INFO2 dwOptions values.
//

#define PPP_IPCP_VJ             0x00000001

typedef struct _PPP_IPCP_INFO2
{
    OUT DWORD           dwError;
    OUT WCHAR           wszAddress[ IPADDRESSLEN + 1 ];
    OUT WCHAR           wszRemoteAddress[ IPADDRESSLEN + 1 ];
    OUT DWORD           dwOptions;
    OUT DWORD           dwRemoteOptions;
}
PPP_IPCP_INFO2;

typedef struct _PPP_IPXCP_INFO
{
    OUT DWORD           dwError;
    OUT WCHAR           wszAddress[ IPXADDRESSLEN + 1 ];
}
PPP_IPXCP_INFO;

typedef struct _PPP_ATCP_INFO
{
    OUT DWORD           dwError;
    OUT WCHAR           wszAddress[ ATADDRESSLEN + 1 ];
}
PPP_ATCP_INFO;

#if(WINVER >= 0x0600)

typedef struct _PPP_IPV6_CP_INFO
{
    OUT DWORD           dwVersion;
    OUT DWORD           dwSize;
    OUT DWORD           dwError;
    OUT BYTE            bInterfaceIdentifier[8];
    OUT BYTE            bRemoteInterfaceIdentifier[8];
    OUT DWORD           dwOptions;
    OUT DWORD           dwRemoteOptions;
    OUT BYTE		bPrefix[8];
    OUT DWORD		dwPrefixLength;
}
PPP_IPV6_CP_INFO;

#endif /* WINVER >= 0x0600 */

typedef struct _PPP_INFO
{
    OUT PPP_NBFCP_INFO  nbf;
    OUT PPP_IPCP_INFO   ip;
    OUT PPP_IPXCP_INFO  ipx;
    OUT PPP_ATCP_INFO   at;

} PPP_INFO;

#if(WINVER >= 0x0500)

//
// PPP_CCP dwCompressionAlgorithm values.
//

#define RASCCPCA_MPPC         0x00000006
#define RASCCPCA_STAC         0x00000005

//
// PPP_CCP dwOptions values.
//

#define PPP_CCP_COMPRESSION         0x00000001
#define PPP_CCP_ENCRYPTION40BITOLD  0x00000010
#define PPP_CCP_ENCRYPTION40BIT     0x00000020
#define PPP_CCP_ENCRYPTION128BIT    0x00000040
#define PPP_CCP_ENCRYPTION56BIT     0x00000080
#define PPP_CCP_HISTORYLESS         0x01000000

typedef struct _PPP_CCP_INFO
{
    OUT DWORD           dwError;
    OUT DWORD           dwCompressionAlgorithm;
    OUT DWORD           dwOptions;
    OUT DWORD           dwRemoteCompressionAlgorithm;
    OUT DWORD           dwRemoteOptions;
}
PPP_CCP_INFO;

//
// PPP_LCP dwAuthenticatonProtocol values.
//

#define PPP_LCP_PAP          0xC023
#define PPP_LCP_SPAP         0xC027
#define PPP_LCP_CHAP         0xC223
#define PPP_LCP_EAP          0xC227

//
// PPP_LCP dwAuthenticatonData values.
//

#define PPP_LCP_CHAP_MD5     0x05
#define PPP_LCP_CHAP_MS      0x80
#define PPP_LCP_CHAP_MSV2    0x81

//
// PPP_LCP dwOption values
//

#define PPP_LCP_MULTILINK_FRAMING   0x00000001
#define PPP_LCP_PFC                 0x00000002
#define PPP_LCP_ACFC                0x00000004
#define PPP_LCP_SSHF                0x00000008
#define PPP_LCP_DES_56              0x00000010
#define PPP_LCP_3_DES               0x00000020

#if(WINVER >= 0x0600)
#define PPP_LCP_AES_128             0x00000040
#define PPP_LCP_AES_256             0x00000080
#endif /* WINVER >= 0x0600 */

typedef struct _PPP_LCP_INFO
{
    OUT DWORD dwError;
    OUT DWORD dwAuthenticationProtocol;
    OUT DWORD dwAuthenticationData;
    OUT DWORD dwRemoteAuthenticationProtocol;
    OUT DWORD dwRemoteAuthenticationData;
    OUT DWORD dwTerminateReason;
    OUT DWORD dwRemoteTerminateReason;
    OUT DWORD dwOptions;
    OUT DWORD dwRemoteOptions;
    OUT DWORD dwEapTypeId;
    OUT DWORD dwRemoteEapTypeId;
}
PPP_LCP_INFO;

typedef struct _PPP_INFO_2
{
    OUT PPP_NBFCP_INFO  nbf;
    OUT PPP_IPCP_INFO2  ip;
    OUT PPP_IPXCP_INFO  ipx;
    OUT PPP_ATCP_INFO   at;
    OUT PPP_CCP_INFO    ccp;
    OUT PPP_LCP_INFO    lcp;
}
PPP_INFO_2;
#endif /* WINVER >= 0x0500 */

#if(WINVER >= 0x0600)
typedef struct _PPP_INFO_3
{
    OUT PPP_NBFCP_INFO  nbf;
    OUT PPP_IPCP_INFO2  ip;
    OUT PPP_IPV6_CP_INFO  ipv6;
    OUT PPP_CCP_INFO    ccp;
    OUT PPP_LCP_INFO    lcp;
}
PPP_INFO_3;

#endif /* WINVER >= 0x0600 */

//
// Possible bits set in Connection Flags field
//

#define RAS_FLAGS_PPP_CONNECTION        0x00000001
#define RAS_FLAGS_MESSENGER_PRESENT     0x00000002

#if(WINVER < 0x0501)
#define RAS_FLAGS_RAS_CONNECTION        0x00000004
#endif

#define RAS_FLAGS_QUARANTINE_PRESENT    0x00000008

#if(WINVER >= 0x0601)
#define RAS_FLAGS_DORMANT               0x00000020
#endif

typedef struct _RAS_CONNECTION_0
{
    OUT HANDLE                  hConnection;
    OUT HANDLE                  hInterface;
    OUT DWORD                   dwConnectDuration;      // In seconds
    OUT ROUTER_INTERFACE_TYPE   dwInterfaceType;
    OUT DWORD                   dwConnectionFlags;
    OUT WCHAR                   wszInterfaceName[ MAX_INTERFACE_NAME_LEN + 1 ];
    OUT WCHAR                   wszUserName[ UNLEN + 1 ];
    OUT WCHAR                   wszLogonDomain[ DNLEN + 1 ];
    OUT WCHAR                   wszRemoteComputer[ NETBIOS_NAME_LEN + 1 ];
}
RAS_CONNECTION_0, *PRAS_CONNECTION_0;

typedef struct _RAS_CONNECTION_1
{
    OUT HANDLE                  hConnection;
    OUT HANDLE                  hInterface;
    OUT PPP_INFO                PppInfo;
    OUT DWORD                   dwBytesXmited;
    OUT DWORD                   dwBytesRcved;
    OUT DWORD                   dwFramesXmited;
    OUT DWORD                   dwFramesRcved;
    OUT DWORD                   dwCrcErr;
    OUT DWORD                   dwTimeoutErr;
    OUT DWORD                   dwAlignmentErr;
    OUT DWORD                   dwHardwareOverrunErr;
    OUT DWORD                   dwFramingErr;
    OUT DWORD                   dwBufferOverrunErr;
    OUT DWORD                   dwCompressionRatioIn;
    OUT DWORD                   dwCompressionRatioOut;
}
RAS_CONNECTION_1, *PRAS_CONNECTION_1;

#if(WINVER >= 0x0500)

typedef struct _RAS_CONNECTION_2
{
    OUT HANDLE                  hConnection;
    OUT WCHAR                   wszUserName[ UNLEN + 1 ];
    OUT ROUTER_INTERFACE_TYPE   dwInterfaceType;
    OUT GUID                    guid;
    OUT PPP_INFO_2              PppInfo2;
}
RAS_CONNECTION_2, *PRAS_CONNECTION_2;

//indicates quarantine state of a client connection
typedef enum _RAS_QUARANTINE_STATE
{
      RAS_QUAR_STATE_NORMAL     = 0,
      RAS_QUAR_STATE_QUARANTINE = 1,
      RAS_QUAR_STATE_PROBATION  = 2,
      RAS_QUAR_STATE_NOT_CAPABLE    = 3
}RAS_QUARANTINE_STATE;
#endif /* WINVER >= 0x0500 */

#if(WINVER >= 0x0600)
typedef struct _RAS_CONNECTION_3
{
       OUT DWORD     dwVersion;
       OUT DWORD     dwSize;
	OUT HANDLE     hConnection;   //connection handle
	WCHAR                   wszUserName[ UNLEN + 1 ];
       ROUTER_INTERFACE_TYPE   dwInterfaceType;
       GUID                    guid;
       PPP_INFO_3           PppInfo3;
	OUT RAS_QUARANTINE_STATE    rasQuarState;  //Quarantine state of the connection
	OUT FILETIME                timer;         //Probation timer in UTC
}RAS_CONNECTION_3, *PRAS_CONNECTION_3;

#endif /* WINVER >= 0x0600 */

//
// Structures used by the MPRADMIN USER APIs. Use level 0 to get/set this
// structure.
//
//
// Bits indicating user's Remote Access privileges and mask to isolate
// call back privilege.
//
// Note: Bit 0 MUST represent NoCallback due to a quirk of the "userparms"
//       storage method.  When a new LAN Manager user is created, bit 0 of the
//       userparms field is set to 1 and all other bits are 0.  These bits are
//       arranged so this "no Dial-In info" state maps to the "default Dial-In
//       privilege" state.

#define RASPRIV_NoCallback        0x01
#define RASPRIV_AdminSetCallback  0x02
#define RASPRIV_CallerSetCallback 0x04
#define RASPRIV_DialinPrivilege   0x08

// 
// The following are flags for the bfPrivilege2 member of RAS_USER_1
// structure
//
#define RASPRIV2_DialinPolicy      0x1  

#define RASPRIV_CallbackType (RASPRIV_AdminSetCallback \
                              | RASPRIV_CallerSetCallback \
                              | RASPRIV_NoCallback)

typedef struct _RAS_USER_0
{
    OUT BYTE                    bfPrivilege;
    OUT WCHAR                   wszPhoneNumber[ MAX_PHONE_NUMBER_LEN + 1];
}
RAS_USER_0, *PRAS_USER_0;

typedef struct _RAS_USER_1
{
    OUT BYTE                    bfPrivilege;
    OUT WCHAR                   wszPhoneNumber[ MAX_PHONE_NUMBER_LEN + 1];
    OUT BYTE                    bfPrivilege2;
} 
RAS_USER_1, *PRAS_USER_1;

#if(WINVER >= 0x0600)
typedef struct _MPR_FILTER_0
{
    IN BOOL fEnable;
}
MPR_FILTER_0, *PMPR_FILTER_0;

#endif /* WINVER >= 0x0600 */

//
// Used as RPC binding handle to server
//

typedef HANDLE RAS_SERVER_HANDLE;
typedef HANDLE MPR_SERVER_HANDLE;
typedef HANDLE MIB_SERVER_HANDLE;

#if(WINVER >= 0x0601)

typedef struct _MPRAPI_OBJECT_HEADER {
    UCHAR                       revision;
    UCHAR                       type;
    USHORT                      size;
} MPRAPI_OBJECT_HEADER, *PMPRAPI_OBJECT_HEADER ;


typedef enum _MPRAPI_OBJECT_TYPE
{
    MPRAPI_OBJECT_TYPE_RAS_CONNECTION_OBJECT               = 1,
    MPRAPI_OBJECT_TYPE_MPR_SERVER_OBJECT                   = 2,
    MPRAPI_OBJECT_TYPE_MPR_SERVER_SET_CONFIG_OBJECT        = 3,
    MPRAPI_OBJECT_TYPE_AUTH_VALIDATION_OBJECT              = 4,
    MPRAPI_OBJECT_TYPE_UPDATE_CONNECTION_OBJECT            = 5,
}MPRAPI_OBJECT_TYPE, *PMPRAPI_OBJECT_TYPE;


typedef struct _PPP_PROJECTION_INFO {

    // IPv4 Projection Parameters
    DWORD                       dwIPv4NegotiationError;
    WCHAR                       wszAddress[IPADDRESSLEN + 1];
    WCHAR                       wszRemoteAddress[IPADDRESSLEN + 1];
    DWORD                       dwIPv4Options;
    DWORD                       dwIPv4RemoteOptions; 
    ULONG64                     IPv4SubInterfaceIndex;

    // IPv6 Projection Parameters
    DWORD                       dwIPv6NegotiationError;
    BYTE                        bInterfaceIdentifier[8];
    BYTE                        bRemoteInterfaceIdentifier[8];
    BYTE                        bPrefix[8];
    DWORD                       dwPrefixLength; 
    ULONG64                     IPv6SubInterfaceIndex;
    // LCP Options
    DWORD                       dwLcpError;
    DWORD                       dwAuthenticationProtocol;  
    DWORD                       dwAuthenticationData;  
    DWORD                       dwRemoteAuthenticationProtocol;  
    DWORD                       dwRemoteAuthenticationData;  
    DWORD                       dwLcpTerminateReason;  
    DWORD                       dwLcpRemoteTerminateReason;  
    DWORD                       dwLcpOptions;  
    DWORD                       dwLcpRemoteOptions;  
    DWORD                       dwEapTypeId;  
    DWORD                       dwRemoteEapTypeId;
    
    // CCP options:
    DWORD                       dwCcpError;  
    DWORD                       dwCompressionAlgorithm;  
    DWORD                       dwCcpOptions;  
    DWORD                       dwRemoteCompressionAlgorithm;  
    DWORD                       dwCcpRemoteOptions;

}PPP_PROJECTION_INFO, *PPPP_PROJECTION_INFO;

#define MPRAPI_IKEV2_AUTH_USING_CERT                1
#define MPRAPI_IKEV2_AUTH_USING_EAP                 2

typedef struct _IKEV2_PROJECTION_INFO {

    DWORD                       dwIPv4NegotiationError;
    WCHAR                       wszAddress[IPADDRESSLEN + 1];
    WCHAR                       wszRemoteAddress[IPADDRESSLEN + 1];
    ULONG64                     IPv4SubInterfaceIndex;

    DWORD                       dwIPv6NegotiationError;
    BYTE                        bInterfaceIdentifier[8];
    BYTE                        bRemoteInterfaceIdentifier[8];
    BYTE                        bPrefix[8];
    DWORD                       dwPrefixLength; 
    ULONG64                     IPv6SubInterfaceIndex;

    DWORD                       dwOptions;

    DWORD                       dwAuthenticationProtocol;
    DWORD                       dwEapTypeId;
    DWORD                       dwCompressionAlgorithm;
    DWORD		                dwEncryptionMethod;
    
}IKEV2_PROJECTION_INFO, *PIKEV2_PROJECTION_INFO;

#define    MPRAPI_PPP_PROJECTION_INFO_TYPE          1
#define    MPRAPI_IKEV2_PROJECTION_INFO_TYPE        2

typedef struct _PROJECTION_INFO { 
    UCHAR     projectionInfoType;
    // Based on the connectionFlags, it should use appropriate projection info 
    union {
        PPP_PROJECTION_INFO     PppProjectionInfo;
        IKEV2_PROJECTION_INFO   Ikev2ProjectionInfo;
    };

}PROJECTION_INFO, *PPROJECTION_INFO;

#define MPRAPI_RAS_CONNECTION_OBJECT_REVISION_1     0x1 
typedef struct _RAS_CONNECTION_EX {

    MPRAPI_OBJECT_HEADER        Header;
    DWORD                       dwConnectDuration;
    ROUTER_INTERFACE_TYPE       dwInterfaceType;
    DWORD                       dwConnectionFlags;
    WCHAR                       wszInterfaceName[MAX_INTERFACE_NAME_LEN + 1];
    WCHAR                       wszUserName[UNLEN + 1];
    WCHAR                       wszLogonDomain[DNLEN + 1];
    WCHAR                       wszRemoteComputer[NETBIOS_NAME_LEN + 1]; 
    GUID                        guid;
    RAS_QUARANTINE_STATE        rasQuarState;
    FILETIME                    probationTime; 

    // Statistics: 
    DWORD                       dwBytesXmited;
    DWORD                       dwBytesRcved;
    DWORD                       dwFramesXmited;
    DWORD                       dwFramesRcved;
    DWORD                       dwCrcErr;
    DWORD                       dwTimeoutErr;
    DWORD                       dwAlignmentErr;
    DWORD                       dwHardwareOverrunErr;
    DWORD                       dwFramingErr;
    DWORD                       dwBufferOverrunErr;
    DWORD                       dwCompressionRatioIn;
    DWORD                       dwCompressionRatioOut; 

    // Currently valid only for IKEV2:
    DWORD                       dwNumSwitchOvers;

    // Endpoint Information:
    WCHAR                       wszRemoteEndpointAddress[MAXIPADRESSLEN+1];
    WCHAR                       wszLocalEndpointAddress[MAXIPADRESSLEN+1];


    //Projection result: 
    PROJECTION_INFO             ProjectionInfo;

    HANDLE                      hConnection;
    HANDLE                      hInterface;

}RAS_CONNECTION_EX, *PRAS_CONNECTION_EX;

//----------- MPR_SERVER_EX object 

typedef struct _IKEV2_TUNNEL_CONFIG_PARAMS {
    DWORD                       dwIdleTimeout;
    DWORD                       dwNetworkBlackoutTime;
    DWORD                       dwSaLifeTime;
    DWORD                       dwSaDataSizeForRenegotiation;
    DWORD                       dwConfigOptions;
    DWORD 	                    dwTotalCertificates;
    CERT_NAME_BLOB *            certificateNames;

}IKEV2_TUNNEL_CONFIG_PARAMS, *PIKEV2_TUNNEL_CONFIG_PARAMS;

#define MPRAPI_IKEV2_SET_TUNNEL_CONFIG_PARAMS   0x1
typedef struct _IKEV2_CONFIG_PARAMS {

    DWORD                       dwNumPorts;
    DWORD                       dwPortFlags;
    DWORD                       dwTunnelConfigParamFlags;
    IKEV2_TUNNEL_CONFIG_PARAMS  TunnelConfigParams;
 
}IKEV2_CONFIG_PARAMS, *PIKEV2_CONFIG_PARAMS;


typedef struct _PPTP_CONFIG_PARAMS {

    DWORD                       dwNumPorts;
    DWORD                       dwPortFlags;
    

}PPTP_CONFIG_PARAMS, *PPPTP_CONFIG_PARAMS;

typedef struct _L2TP_CONFIG_PARAMS {

    DWORD                       dwNumPorts;
    DWORD                       dwPortFlags;
    
}L2TP_CONFIG_PARAMS, *PL2TP_CONFIG_PARAMS;

#define MAX_SSTP_HASH_SIZE       32 // SHA-256 Certificate hash size

typedef struct _SSTP_CERT_INFO
{
    // Whether it is the default node [no cert config]
    BOOL                isDefault;
    CRYPT_HASH_BLOB      certBlob;
}SSTP_CERT_INFO, *PSSTP_CERT_INFO;

typedef struct _SSTP_CONFIG_PARAMS {

    DWORD                       dwNumPorts;
    DWORD                       dwPortFlags;
    BOOL                        isUseHttps;
    DWORD                       certAlgorithm; // Should always be CALG_SHA_256
    SSTP_CERT_INFO              sstpCertDetails;

}SSTP_CONFIG_PARAMS, *PSSTP_CONFIG_PARAMS;

typedef struct _MPRAPI_TUNNEL_CONFIG_PARAMS {

    IKEV2_CONFIG_PARAMS         IkeConfigParams;

    PPTP_CONFIG_PARAMS          PptpConfigParams;

    L2TP_CONFIG_PARAMS          L2tpConfigParams;

    SSTP_CONFIG_PARAMS          SstpConfigParams;

}MPRAPI_TUNNEL_CONFIG_PARAMS, *PMPRAPI_TUNNEL_CONFIG_PARAMS;

#define MPRAPI_MPR_SERVER_OBJECT_REVISION_1     0x1 
typedef struct _MPR_SERVER_EX {
    MPRAPI_OBJECT_HEADER        Header;
    DWORD                       fLanOnlyMode;
    DWORD                       dwUpTime;
    DWORD                       dwTotalPorts;
    DWORD                       dwPortsInUse; 
    DWORD                       Reserved; // Added so that the structure is 8 byte aligned
    MPRAPI_TUNNEL_CONFIG_PARAMS ConfigParams;
}MPR_SERVER_EX, *PMPR_SERVER_EX;

#define MPRAPI_MPR_SERVER_SET_CONFIG_OBJECT_REVISION_1      0x1 

#define MPRAPI_SET_CONFIG_PROTOCOL_FOR_PPTP                 0x1
#define MPRAPI_SET_CONFIG_PROTOCOL_FOR_L2TP                 0x2
#define MPRAPI_SET_CONFIG_PROTOCOL_FOR_SSTP                 0x4
#define MPRAPI_SET_CONFIG_PROTOCOL_FOR_IKEV2                0x8


typedef struct _MPR_SERVER_SET_CONFIG_EX {
    MPRAPI_OBJECT_HEADER        Header;
    DWORD                       setConfigForProtocols;
    MPRAPI_TUNNEL_CONFIG_PARAMS ConfigParams;
}MPR_SERVER_SET_CONFIG_EX, *PMPR_SERVER_SET_CONFIG_EX;

#define ALLOW_NO_AUTH         1
#define DO_NOT_ALLOW_NO_AUTH  0

typedef struct _AUTH_VALIDATION_EX {
    MPRAPI_OBJECT_HEADER        Header;
    HANDLE                      hRasConnection;
    WCHAR                       wszUserName[UNLEN + 1 ];
    WCHAR                       wszLogonDomain[DNLEN + 1 ];
    DWORD                       AuthInfoSize;
    BYTE                        AuthInfo[1];
    
} AUTH_VALIDATION_EX;

#define MPRAPI_RAS_UPDATE_CONNECTION_OBJECT_REVISION_1     0x1
typedef struct RAS_UPDATE_CONNECTION_
{
    MPRAPI_OBJECT_HEADER    Header;
    DWORD                   dwIfIndex;
    WCHAR                   wszLocalEndpointAddress[MAXIPADRESSLEN+1];
    WCHAR                   wszRemoteEndpointAddress[MAXIPADRESSLEN+1];
} 
RAS_UPDATE_CONNECTION,*PRAS_UPDATE_CONNECTION;

// RAS Admin Functions:
DWORD APIENTRY
MprAdminConnectionEnumEx(
     __in      RAS_SERVER_HANDLE       hRasServer,
     __in      PMPRAPI_OBJECT_HEADER   pObjectHeader,
     __in      DWORD                   dwPreferedMaxLen,
     __out     LPDWORD                 lpdwEntriesRead,
     __out     LPDWORD                 lpdwTotalEntries,
     __out     PRAS_CONNECTION_EX      *ppRasConn,
     __in      LPDWORD                 lpdwResumeHandle);


DWORD APIENTRY MprAdminConnectionGetInfoEx(
   __in       RAS_SERVER_HANDLE       hRasServer,
   __in       HANDLE                  hRasConnection,
   __out      PRAS_CONNECTION_EX      pRasConnection
); // Use MprAdminBufferFree for freeing pRASCONN

// Router Admin Functions:
DWORD APIENTRY MprAdminServerGetInfoEx(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __out     MPR_SERVER_EX*          pServerInfo);


DWORD APIENTRY MprAdminServerSetInfoEx(
    __in      MPR_SERVER_HANDLE           hMprServer,
    __in      MPR_SERVER_SET_CONFIG_EX*   pServerInfo);


// Router Config Functions:

DWORD APIENTRY MprConfigServerGetInfoEx(
    __in      HANDLE                  hMprConfig,
    __out     MPR_SERVER_EX*          pServerInfo);


DWORD APIENTRY MprConfigServerSetInfoEx(
    __in      HANDLE                      hMprConfig,
    __in      MPR_SERVER_SET_CONFIG_EX*   pSetServerConfig);

DWORD APIENTRY MprAdminUpdateConnection(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      HANDLE                  hRasConnection,
    __in      PRAS_UPDATE_CONNECTION  pRasUpdateConnection);

// Admin DLL's:
#define MPRAPI_ADMIN_DLL_VERSION_1          0x1 
#define MPRAPI_ADMIN_DLL_VERSION_2          0x2 // If the version is 2: it can use RAS_CONNECTION_EX supported in Windows 7.0

typedef DWORD (APIENTRY * PMPRADMINGETIPADDRESSFORUSER)(WCHAR *, WCHAR *, DWORD *, BOOL *);

typedef VOID  (APIENTRY * PMPRADMINRELEASEIPADRESS)(WCHAR *, WCHAR *, DWORD *);

typedef DWORD (APIENTRY * PMPRADMINGETIPV6ADDRESSFORUSER)(WCHAR *, WCHAR *, IN6_ADDR *, BOOL *);

typedef VOID  (APIENTRY * PMPRADMINRELEASEIPV6ADDRESSFORUSER)(WCHAR *, WCHAR *, IN6_ADDR *);

typedef BOOL  (APIENTRY * PMPRADMINACCEPTNEWCONNECTION)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *);

typedef BOOL  (APIENTRY * PMPRADMINACCEPTNEWCONNECTION2)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *, RAS_CONNECTION_2 *);

typedef BOOL  (APIENTRY * PMPRADMINACCEPTNEWCONNECTION3)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *, RAS_CONNECTION_2 *, RAS_CONNECTION_3 *);

typedef BOOL  (APIENTRY * PMPRADMINACCEPTNEWLINK)(RAS_PORT_0 *, RAS_PORT_1 *);

typedef VOID  (APIENTRY * PMPRADMINCONNECTIONHANGUPNOTIFICATION)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *);

typedef VOID  (APIENTRY * PMPRADMINCONNECTIONHANGUPNOTIFICATION2)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *, RAS_CONNECTION_2 *);

typedef VOID  (APIENTRY * PMPRADMINCONNECTIONHANGUPNOTIFICATION3)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *, RAS_CONNECTION_2 *, RAS_CONNECTION_3);

typedef VOID  (APIENTRY * PMPRADMINLINKHANGUPNOTIFICATION)(RAS_PORT_0 *, RAS_PORT_1 *);

typedef DWORD (APIENTRY * PMPRADMINTERMINATEDLL)();

typedef BOOL  (APIENTRY * PMPRADMINACCEPTREAUTHENTICATION)(RAS_CONNECTION_0 *, RAS_CONNECTION_1 *, RAS_CONNECTION_2 *, RAS_CONNECTION_3 *);


typedef BOOL  (APIENTRY *PMPRADMINACCEPTNEWCONNECTIONEX)(RAS_CONNECTION_EX*);

typedef BOOL  (APIENTRY *PMPRADMINACCEPTREAUTHENTICATIONEX)(RAS_CONNECTION_EX*);

typedef BOOL  (APIENTRY *PMPRADMINACCEPTTUNNELENDPOINTCHANGEEX)(RAS_CONNECTION_EX*); 

typedef VOID  (APIENTRY *PMPRADMINCONNECTIONHANGUPNOTIFICATIONEX)(RAS_CONNECTION_EX*);

typedef DWORD (APIENTRY *PMPRADMINRASVALIDATEPREAUTHENTICATEDCONNECTIONEX) (AUTH_VALIDATION_EX *);


typedef struct _MPRAPI_ADMIN_DLL_CALLBACKS
{

    UCHAR                                           revision;

    PMPRADMINGETIPADDRESSFORUSER                    lpfnMprAdminGetIpAddressForUser;

    PMPRADMINRELEASEIPADRESS                        lpfnMprAdminReleaseIpAddress;

    PMPRADMINGETIPV6ADDRESSFORUSER                  lpfnMprAdminGetIpv6AddressForUser;

    PMPRADMINRELEASEIPV6ADDRESSFORUSER              lpfnMprAdminReleaseIpV6AddressForUser;

    PMPRADMINACCEPTNEWLINK                          lpfnRasAdminAcceptNewLink;

    PMPRADMINLINKHANGUPNOTIFICATION                 lpfnRasAdminLinkHangupNotification;

    PMPRADMINTERMINATEDLL                           lpfnRasAdminTerminateDll;

    PMPRADMINACCEPTNEWCONNECTIONEX                  lpfnRasAdminAcceptNewConnectionEx;

    PMPRADMINACCEPTTUNNELENDPOINTCHANGEEX           lpfnRasAdminAcceptEndpointChangeEx;

    PMPRADMINACCEPTREAUTHENTICATIONEX               lpfnRasAdminAcceptReauthenticationEx;

    PMPRADMINCONNECTIONHANGUPNOTIFICATIONEX         lpfnRasAdminConnectionHangupNotificationEx;
    
    PMPRADMINRASVALIDATEPREAUTHENTICATEDCONNECTIONEX lpfnRASValidatePreAuthenticatedConnectionEx;
    
} MPRAPI_ADMIN_DLL_CALLBACKS, *PMPRAPI_ADMIN_DLL_CALLBACKS;


BOOL APIENTRY MprAdminAcceptNewConnectionEx(
    RAS_CONNECTION_EX*                    pRasConn
);

BOOL APIENTRY MprAdminAcceptReauthenticationEx(
    RAS_CONNECTION_EX*                    pRasConn
);

void APIENTRY MprAdminConnectionHangupNotificationEx(
    RAS_CONNECTION_EX*                    pRasConn
);

DWORD APIENTRY MprAdminInitializeDllEx(
    PMPRAPI_ADMIN_DLL_CALLBACKS           pAdminCallbacks
);

DWORD APIENTRY MprAdminIsServiceInitialized(
    __in LPWSTR  lpwsServerName,
    __in BOOL    *fIsServiceInitialized
);

#endif /* WINVER >= 0x0601 */

//
//  RAS ADMIN APIs
//

DWORD APIENTRY
MprAdminConnectionEnum(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      DWORD                   dwLevel,
    __out     LPBYTE *                lplpbBuffer,
    __in      DWORD                   dwPrefMaxLen,
    __out     LPDWORD                 lpdwEntriesRead,
    __out     LPDWORD                 lpdwTotalEntries,
    __in_opt  LPDWORD                 lpdwResumeHandle
);

DWORD APIENTRY
MprAdminPortEnum(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      DWORD                   dwLevel,
    __in      HANDLE                  hRasConnection,
    __out     LPBYTE *                lplpbBuffer,
    __in      DWORD                   dwPrefMaxLen,
    __out     LPDWORD                 lpdwEntriesRead,
    __out     LPDWORD                 lpdwTotalEntries,
    __in_opt  LPDWORD                 lpdwResumeHandle
);

DWORD APIENTRY
MprAdminConnectionGetInfo(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      DWORD                   dwLevel,
    __in      HANDLE                  hRasConnection,
    __out     LPBYTE *                lplpbBuffer
);

DWORD APIENTRY
MprAdminPortGetInfo(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      DWORD                   dwLevel,
    __in      HANDLE                  hPort,
    __out     LPBYTE *                lplpbBuffer
);

DWORD APIENTRY
MprAdminConnectionClearStats(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      HANDLE                  hRasConnection
);

DWORD APIENTRY
MprAdminPortClearStats(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      HANDLE                  hPort
);

DWORD APIENTRY
MprAdminPortReset(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      HANDLE                  hPort
);

DWORD APIENTRY
MprAdminPortDisconnect(
    __in      RAS_SERVER_HANDLE       hRasServer,
    __in      HANDLE                  hPort
);

BOOL APIENTRY
MprAdminAcceptNewConnection(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1
    );

#if(WINVER >= 0x0500)

BOOL APIENTRY
MprAdminAcceptNewConnection2(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1,
    __in      RAS_CONNECTION_2 *      pRasConnection2
    );

#endif /* WINVER >= 0x0500 */

#if(WINVER >= 0x0600)

BOOL APIENTRY
MprAdminAcceptNewConnection3(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1,
    __in      RAS_CONNECTION_2 *      pRasConnection2,
    __in      RAS_CONNECTION_3 *      pRasConnection3
    );

BOOL APIENTRY
MprAdminAcceptReauthentication(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1,
    __in      RAS_CONNECTION_2 *      pRasConnection2,
    __in      RAS_CONNECTION_3 *      pRasConnection3
    );
#endif /* WINVER >= 0x0600 */

BOOL APIENTRY
MprAdminAcceptNewLink (
    __in      RAS_PORT_0 *            pRasPort0,
    __in      RAS_PORT_1 *            pRasPort1
    );

VOID APIENTRY
MprAdminConnectionHangupNotification(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1
    );

#if(WINVER >= 0x0500)

VOID APIENTRY
MprAdminConnectionHangupNotification2(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1,
    __in      RAS_CONNECTION_2 *      pRasConnection2
    );

#endif /* WINVER >= 0x0500 */

#if(WINVER >= 0x0600)

VOID APIENTRY
MprAdminConnectionHangupNotification3(
    __in      RAS_CONNECTION_0 *      pRasConnection0,
    __in      RAS_CONNECTION_1 *      pRasConnection1,
    __in      RAS_CONNECTION_2 *      pRasConnection2,
    __in      RAS_CONNECTION_3 *      pRasConnection3
    );

#endif /* WINVER >= 0x0600 */

#if (WINVER >= 0x501)

DWORD APIENTRY
MprAdminConnectionRemoveQuarantine(
    __in      HANDLE          hRasServer,    
    __in      HANDLE          hRasConnection,
    __in      BOOL            fIsIpAddress
    );

#endif

VOID APIENTRY
MprAdminLinkHangupNotification (
    __in      RAS_PORT_0 *            pRasPort0,
    __in      RAS_PORT_1 *            pRasPort1
    );

DWORD APIENTRY
MprAdminGetIpAddressForUser (
    __in      WCHAR *                 lpwszUserName,
    __in      WCHAR *                 lpwszPortName,
    __inout  DWORD *                  lpdwIpAddress,
    __out     BOOL *                  bNotifyRelease
    );


    
VOID APIENTRY
MprAdminReleaseIpAddress (
    __in      WCHAR *                 lpszUserName,
    __in      WCHAR *                 lpszPortName,
    __in      DWORD *                 lpdwIpAddress
    );


#if(WINVER >= 0x0600)

DWORD APIENTRY 
MprAdminGetIpv6AddressForUser (
    __in      WCHAR *                 lpwszUserName,
    __in      WCHAR *                 lpwszPortName,
    __inout  IN6_ADDR *               lpdwIpv6Address, /* Currently Only 64 Bit Identifier is supported */
    __out     BOOL *                  bNotifyRelease
    );

VOID MprAdminReleaseIpv6AddressForUser (
    __in      WCHAR *                 lpszUserName,
    __in      WCHAR *                 lpszPortName,
    __in      IN6_ADDR *              lpdwIpv6Address 
    );

#endif /* WINVER >= 0x0600 */

#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminInitializeDll(
    VOID
);

DWORD APIENTRY
MprAdminTerminateDll(
    VOID
);

#endif

//
// MprAdminUser APIs
//

DWORD APIENTRY
MprAdminUserGetInfo(
    __in      const WCHAR *           lpszServer,
    __in      const WCHAR *           lpszUser,
    __in      DWORD                   dwLevel,
    __out     LPBYTE                  lpbBuffer
);


DWORD APIENTRY
MprAdminUserSetInfo(
    __in      const WCHAR *           lpszServer,
    __in      const WCHAR *           lpszUser,
    __in      DWORD                   dwLevel,
    __in      const LPBYTE            lpbBuffer
);


#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminSendUserMessage(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hConnection,
    __in      LPWSTR                  lpwszMessage
);

#endif /* WINVER >= 0x0500 */

DWORD APIENTRY
MprAdminGetPDCServer(
    __in       const WCHAR *          lpszDomain,
    __in       const WCHAR *          lpszServer,
    __out_ecount(UNCLEN+1) LPWSTR     lpszPDCServer
);

//
// Router APIs
//

BOOL APIENTRY
MprAdminIsServiceRunning(
    __in  LPWSTR  lpwsServerName
);

DWORD APIENTRY
MprAdminServerConnect(
    __in_opt  LPWSTR                  lpwsServerName,
    __out     MPR_SERVER_HANDLE *     phMprServer
);

VOID APIENTRY
MprAdminServerDisconnect(
    __in      MPR_SERVER_HANDLE       hMprServer
);

#if (WINVER >= 0x501)
DWORD APIENTRY
MprAdminServerGetCredentials(
    __in  MPR_SERVER_HANDLE       hMprServer,
    __in  DWORD                   dwLevel,
    __in  LPBYTE *                lplpbBuffer
);

DWORD APIENTRY
MprAdminServerSetCredentials(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);


#endif

DWORD APIENTRY
MprAdminBufferFree(
    __in      LPVOID                  pBuffer
);

DWORD APIENTRY
MprAdminGetErrorString(
    __in      DWORD                   dwError,
    __out     LPWSTR *                lplpwsErrorString
);

DWORD APIENTRY
MprAdminServerGetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __out     LPBYTE *                lplpbBuffer
);

#if (WINVER >= 0x501)
DWORD APIENTRY
MprAdminServerSetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);


DWORD  APIENTRY
MprAdminEstablishDomainRasServer (
    __in      LPWSTR                 pszDomain,
    __in      LPWSTR                 pszMachine,
    __in      BOOL                   bEnable
);

DWORD  APIENTRY
MprAdminIsDomainRasServer (
    __in     LPWSTR                  pszDomain,
    __in     LPWSTR                  pszMachine,
    __out    PBOOL                   pbIsRasServer
);

#endif

#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminTransportCreate(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwTransportId,
    __in_opt  LPWSTR                  lpwsTransportName,
    __in      LPBYTE                  pGlobalInfo,
    __in      DWORD                   dwGlobalInfoSize,
    __in_opt  LPBYTE                  pClientInterfaceInfo,
    __in_opt  DWORD                   dwClientInterfaceInfoSize,
    __in      LPWSTR                  lpwsDLLPath
);

#endif /* WINVER >= 0x0500 */

DWORD APIENTRY
MprAdminTransportSetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwTransportId,
    __in_opt  LPBYTE                  pGlobalInfo,
    __in      DWORD                   dwGlobalInfoSize,
    __in_opt  LPBYTE                  pClientInterfaceInfo,
    __in      DWORD                   dwClientInterfaceInfoSize
);

DWORD APIENTRY
MprAdminTransportGetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwTransportId,
    __out_opt LPBYTE *                ppGlobalInfo,
    __out_opt LPDWORD                 lpdwGlobalInfoSize,
    __out_opt LPBYTE *                ppClientInterfaceInfo,
    __out_opt LPDWORD                 lpdwClientInterfaceInfoSize
);

#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminDeviceEnum(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __out     LPBYTE*                 lplpbBuffer,
    __out     LPDWORD                 lpdwTotalEntries);

#endif /* WINVER >= 0x0500 */

DWORD APIENTRY
MprAdminInterfaceGetHandle(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      LPWSTR                  lpwsInterfaceName,
    __out     HANDLE *                phInterface,
    __in      BOOL                    fIncludeClientInterfaces
);

DWORD APIENTRY
MprAdminInterfaceCreate(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer,
    __out     HANDLE *                phInterface
);

DWORD APIENTRY
MprAdminInterfaceGetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwLevel,
    __in      LPBYTE *                lplpbBuffer
);

DWORD APIENTRY
MprAdminInterfaceSetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);

DWORD APIENTRY
MprAdminInterfaceDelete(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface
);

#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminInterfaceDeviceGetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwIndex,
    __in      DWORD                   dwLevel,
    __out     LPBYTE*                 lplpBuffer
);

DWORD APIENTRY
MprAdminInterfaceDeviceSetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwIndex,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);

#endif /* WINVER >= 0x0500 */

DWORD APIENTRY
MprAdminInterfaceTransportRemove(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwTransportId
);

DWORD APIENTRY
MprAdminInterfaceTransportAdd(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwTransportId,
    __in      LPBYTE                  pInterfaceInfo,
    __in      DWORD                   dwInterfaceInfoSize
);

DWORD APIENTRY
MprAdminInterfaceTransportGetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwTransportId,
    __out     LPBYTE *                ppInterfaceInfo,
    __out_opt LPDWORD                 lpdwInterfaceInfoSize
);

DWORD APIENTRY
MprAdminInterfaceTransportSetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwTransportId,
    __in      LPBYTE                  pInterfaceInfo,
    __in      DWORD                   dwInterfaceInfoSize
);

DWORD APIENTRY
MprAdminInterfaceEnum(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __out     LPBYTE *                lplpbBuffer,
    __in      DWORD                   dwPrefMaxLen,
    __out     LPDWORD                 lpdwEntriesRead,
    __out     LPDWORD                 lpdwTotalEntries,
    __in_opt  LPDWORD                 lpdwResumeHandle
);

DWORD APIENTRY
MprSetupIpInIpInterfaceFriendlyNameEnum(
    __in PWCHAR  pwszMachineName,
    __out LPBYTE* lplpBuffer,
    __out LPDWORD lpdwEntriesRead
    );

DWORD APIENTRY
MprSetupIpInIpInterfaceFriendlyNameFree(
    __in  LPVOID  lpBuffer
    );

DWORD APIENTRY
MprSetupIpInIpInterfaceFriendlyNameCreate(
    PWCHAR                  pwszMachineName,
    PMPR_IPINIP_INTERFACE_0 pNameInformation
    );

DWORD APIENTRY
MprSetupIpInIpInterfaceFriendlyNameDelete(
    __in  PWCHAR  pwszMachineName,
    __in  GUID    *pGuid
    );

DWORD APIENTRY
MprAdminInterfaceSetCredentials(
    __in_opt       LPWSTR                  lpwsServer,
    __in           LPWSTR                  lpwsInterfaceName,
    __in_opt       LPWSTR                  lpwsUserName,
    __in_opt       LPWSTR                  lpwsDomainName,
    __in_opt       LPWSTR                  lpwsPassword
);

DWORD APIENTRY
MprAdminInterfaceGetCredentials(
    __in_opt         LPWSTR                  lpwsServer,
    __in             LPWSTR                  lpwsInterfaceName,
    __out_ecount_opt(UNLEN+1)       LPWSTR   lpwsUserName,
    __out_ecount_opt(PWLEN+1)       LPWSTR   lpwsPassword,
    __out_ecount_opt(DNLEN+1)       LPWSTR   lpwsDomainName

);

#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminInterfaceSetCredentialsEx(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);

DWORD APIENTRY
MprAdminInterfaceGetCredentialsEx(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwLevel,
    __out     LPBYTE *                lplpbBuffer
);

#endif /* WINVER >= 0x0500 */

DWORD APIENTRY
MprAdminInterfaceConnect(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      HANDLE                  hEvent,
    __in      BOOL                    fSynchronous
);

DWORD APIENTRY
MprAdminInterfaceDisconnect(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface
);

DWORD APIENTRY
MprAdminInterfaceUpdateRoutes(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwProtocolId,
    __in      HANDLE                  hEvent
);

DWORD APIENTRY
MprAdminInterfaceQueryUpdateResult(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface,
    __in      DWORD                   dwProtocolId,
    __out     LPDWORD                 lpdwUpdateResult
);

DWORD APIENTRY
MprAdminInterfaceUpdatePhonebookInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hInterface
);

#if(WINVER >= 0x0500)

DWORD APIENTRY
MprAdminRegisterConnectionNotification(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hEventNotification
);

DWORD APIENTRY
MprAdminDeregisterConnectionNotification(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      HANDLE                  hEventNotification
);

#endif /* WINVER >= 0x0500 */

//
// MIB APIs
//

DWORD APIENTRY
MprAdminMIBServerConnect(
    __in_opt  LPWSTR                  lpwsServerName,
    __out     MIB_SERVER_HANDLE *     phMibServer
);

VOID APIENTRY
MprAdminMIBServerDisconnect(
    __in      MIB_SERVER_HANDLE       hMibServer
);

DWORD APIENTRY
MprAdminMIBEntryCreate(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwPid,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpEntry,
    __in      DWORD                   dwEntrySize
);

DWORD APIENTRY
MprAdminMIBEntryDelete(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpEntry,
    __in      DWORD                   dwEntrySize
);

DWORD APIENTRY
MprAdminMIBEntrySet(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpEntry,
    __in      DWORD                   dwEntrySize
);

DWORD APIENTRY
MprAdminMIBEntryGet(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpInEntry,
    __in      DWORD                   dwInEntrySize,
    __out     LPVOID*                 lplpOutEntry,
    __out     LPDWORD                 lpOutEntrySize
);

DWORD APIENTRY
MprAdminMIBEntryGetFirst(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpInEntry,
    __in      DWORD                   dwInEntrySize,
    __out     LPVOID*                 lplpOutEntry,
    __out     LPDWORD                 lpOutEntrySize
);

DWORD APIENTRY
MprAdminMIBEntryGetNext(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpInEntry,
    __in      DWORD                   dwInEntrySize,
    __out     LPVOID*                 lplpOutEntry,
    __out     LPDWORD                 lpOutEntrySize
);

DWORD APIENTRY
MprAdminMIBGetTrapInfo(
    __in      MIB_SERVER_HANDLE       hMibServer,
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      LPVOID                  lpInData,
    __in      DWORD                   dwInDataSize,
    __out     LPVOID*                 lplpOutData,
    __inout  LPDWORD                 lpOutDataSize
);

DWORD APIENTRY
MprAdminMIBSetTrapInfo(
    __in      DWORD                   dwProtocolId,
    __in      DWORD                   dwRoutingPid,
    __in      HANDLE                  hEvent,
    __in      LPVOID                  lpInData,
    __in      DWORD                   dwInDataSize,
    __out     LPVOID*                 lplpOutData,
    __inout  LPDWORD                 lpOutDataSize
);

DWORD APIENTRY
MprAdminMIBBufferFree(
    __in      LPVOID                  pBuffer
);

//
// Configuration APIs
//

DWORD APIENTRY
MprConfigServerInstall(
    __in      DWORD                   dwLevel,
    __in      PVOID                   pBuffer
);

DWORD APIENTRY
MprConfigServerConnect(
    __in      LPWSTR                  lpwsServerName,
    __out     HANDLE*                 phMprConfig
);

VOID APIENTRY
MprConfigServerDisconnect(
    __in      HANDLE                  hMprConfig
);

DWORD APIENTRY
MprConfigServerRefresh(
    __in      HANDLE                  hMprConfig
    );

DWORD APIENTRY
MprConfigBufferFree(
    __in      LPVOID                  pBuffer
);

DWORD APIENTRY
MprConfigServerGetInfo(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwLevel,
    __out     LPBYTE *                lplpbBuffer
);

#if (WINVER >= 0x501)
DWORD APIENTRY
MprConfigServerSetInfo(
    __in      MPR_SERVER_HANDLE       hMprServer,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);
#endif

DWORD APIENTRY
MprConfigServerBackup(
    __in      HANDLE                  hMprConfig,
    __in      LPWSTR                  lpwsPath
);

DWORD APIENTRY
MprConfigServerRestore(
    __in      HANDLE                  hMprConfig,
    __in IN      LPWSTR                  lpwsPath
);

DWORD APIENTRY
MprConfigTransportCreate(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwTransportId,
    __in_opt  LPWSTR                  lpwsTransportName,
    __in_bcount(dwGlobalInfoSize)               LPBYTE                  pGlobalInfo,
    __in      DWORD                   dwGlobalInfoSize,
    __in_bcount_opt(dwClientInterfaceInfoSize)  LPBYTE                  pClientInterfaceInfo,
    __in_opt  DWORD                   dwClientInterfaceInfoSize,
    __in_opt  LPWSTR                  lpwsDLLPath,
    __out     HANDLE*                 phRouterTransport
);

DWORD APIENTRY
MprConfigTransportDelete(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterTransport
);

DWORD APIENTRY
MprConfigTransportGetHandle(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwTransportId,
    __out     HANDLE*                 phRouterTransport
);

DWORD APIENTRY
MprConfigTransportSetInfo(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterTransport,
    __in_bcount_opt(dwGlobalInfoSize)          LPBYTE                pGlobalInfo,
    __in_opt      DWORD               dwGlobalInfoSize,
    __in_bcount_opt(dwClientInterfaceInfoSize) LPBYTE                pClientInterfaceInfo,
    __in_opt      DWORD               dwClientInterfaceInfoSize,
    __in_opt      LPWSTR              lpwsDLLPath
);

DWORD APIENTRY
MprConfigTransportGetInfo(
    __in          HANDLE                 hMprConfig,
    __in          HANDLE                 hRouterTransport,
    __inout_opt   LPBYTE*                ppGlobalInfo,
    __out_opt     LPDWORD                lpdwGlobalInfoSize,
    __inout_opt   LPBYTE*                ppClientInterfaceInfo,
    __out_opt     LPDWORD                lpdwClientInterfaceInfoSize,
    __deref_opt_out __inout LPWSTR*      lplpwsDLLPath 
);

DWORD APIENTRY
MprConfigTransportEnum(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwLevel,
    __inout   LPBYTE*                 lplpBuffer,
    __in      DWORD                   dwPrefMaxLen,
    __out     LPDWORD                 lpdwEntriesRead,
    __out     LPDWORD                 lpdwTotalEntries,
    __inout_opt LPDWORD               lpdwResumeHandle
);

DWORD APIENTRY
MprConfigInterfaceCreate(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer,
    __out     HANDLE*                 phRouterInterface
);

DWORD APIENTRY
MprConfigInterfaceDelete(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface
);

DWORD APIENTRY
MprConfigInterfaceGetHandle(
    __in      HANDLE                  hMprConfig,
    __in      LPWSTR                  lpwsInterfaceName,
    __out     HANDLE*                 phRouterInterface
);

DWORD APIENTRY
MprConfigInterfaceGetInfo(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      DWORD                   dwLevel,
    __inout   LPBYTE*                 lplpBuffer,
    __out     LPDWORD                 lpdwBufferSize
);

DWORD APIENTRY
MprConfigInterfaceSetInfo(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      DWORD                   dwLevel,
    __in      LPBYTE                  lpbBuffer
);

DWORD APIENTRY
MprConfigInterfaceEnum(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwLevel,
    __inout   LPBYTE*                 lplpBuffer,
    __in      DWORD                   dwPrefMaxLen,
    __out     LPDWORD                 lpdwEntriesRead,
    __out     LPDWORD                 lpdwTotalEntries,
    __inout_opt LPDWORD               lpdwResumeHandle
);

DWORD APIENTRY
MprConfigInterfaceTransportAdd(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      DWORD                   dwTransportId,
    __in_opt  LPWSTR                  lpwsTransportName,
    __in      LPBYTE                  pInterfaceInfo,
    __in      DWORD                   dwInterfaceInfoSize,
    __out     HANDLE*                 phRouterIfTransport
);

DWORD APIENTRY
MprConfigInterfaceTransportRemove(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      HANDLE                  hRouterIfTransport
);

DWORD APIENTRY
MprConfigInterfaceTransportGetHandle(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      DWORD                   dwTransportId,
    __out     HANDLE*                 phRouterIfTransport
);

DWORD APIENTRY
MprConfigInterfaceTransportGetInfo(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      HANDLE                  hRouterIfTransport,
    __inout   LPBYTE*                 ppInterfaceInfo,
    __out_opt LPDWORD                 lpdwInterfaceInfoSize
);

DWORD APIENTRY
MprConfigInterfaceTransportSetInfo(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      HANDLE                  hRouterIfTransport,
    __in_opt  LPBYTE                  pInterfaceInfo,         
    __in_opt  DWORD                   dwInterfaceInfoSize         
);

DWORD APIENTRY
MprConfigInterfaceTransportEnum(
    __in      HANDLE                  hMprConfig,
    __in      HANDLE                  hRouterInterface,
    __in      DWORD                   dwLevel,
    __inout   LPBYTE*                 lplpBuffer,     // MPR_IFTRANSPORT_0
    __in      DWORD                   dwPrefMaxLen,
    __out     LPDWORD                 lpdwEntriesRead,
    __out     LPDWORD                 lpdwTotalEntries,
    __inout_opt LPDWORD               lpdwResumeHandle            
);

DWORD APIENTRY
MprConfigGetFriendlyName(
    __in      HANDLE                  hMprConfig,
    __in      PWSTR                   pszGuidName,
    __out_bcount(dwBufferSize) PWCHAR pszBuffer,
    __in      DWORD                   dwBufferSize);

DWORD APIENTRY
MprConfigGetGuidName(
    __in      HANDLE                  hMprConfig,
    __in      PWSTR                   pszFriendlyName,
    __out_bcount(dwBufferSize) PWCHAR pszBuffer,
    __in      DWORD                   dwBufferSize);

#if(WINVER >= 0x0600)
DWORD APIENTRY
MprConfigFilterGetInfo(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwLevel,
    __in      DWORD                   dwTransportId, 
    __out     LPBYTE                  lpBuffer);

DWORD APIENTRY
MprConfigFilterSetInfo(
    __in      HANDLE                  hMprConfig,
    __in      DWORD                   dwLevel,
    __in      DWORD                   dwTransportId, 
    __in      LPBYTE                  lpBuffer);
#endif /* WINVER >= 0x0600 */

//
// Information block APIs
//

DWORD APIENTRY
MprInfoCreate(
    __in      DWORD                   dwVersion,
    __out     LPVOID*                 lplpNewHeader
);

DWORD APIENTRY
MprInfoDelete(
   __in     LPVOID                    lpHeader
);

DWORD APIENTRY
MprInfoRemoveAll(
    __in      LPVOID                  lpHeader,
    __out     LPVOID*                 lplpNewHeader
);

DWORD APIENTRY
MprInfoDuplicate(
    __in      LPVOID                  lpHeader,
    __out     LPVOID*                 lplpNewHeader
);

DWORD APIENTRY
MprInfoBlockAdd(
    __in      LPVOID                  lpHeader,
    __in      DWORD                   dwInfoType,
    __in      DWORD                   dwItemSize,
    __in      DWORD                   dwItemCount,
    __in      LPBYTE                  lpItemData,
    __out     LPVOID*                 lplpNewHeader
);

DWORD APIENTRY
MprInfoBlockRemove(
    __in      LPVOID                  lpHeader,
    __in      DWORD                   dwInfoType,
    __out     LPVOID*                 lplpNewHeader
);

DWORD APIENTRY
MprInfoBlockSet(
    __in      LPVOID                  lpHeader,
    __in      DWORD                   dwInfoType,
    __in      DWORD                   dwItemSize,
    __in      DWORD                   dwItemCount,
    __in      LPBYTE                  lpItemData,
    __out     LPVOID*                 lplpNewHeader
);

DWORD APIENTRY
MprInfoBlockFind(
    __in      LPVOID                  lpHeader,
    __in      DWORD                   dwInfoType,
    __out     LPDWORD                 lpdwItemSize,       // OPTIONAL
    __out     LPDWORD                 lpdwItemCount,      // OPTIONAL
    __out     LPBYTE*                 lplpItemData        // OPTIONAL
);

DWORD APIENTRY
MprInfoBlockQuerySize(
    __in      LPVOID                  lpHeader
);

//
// BOOL APIENTRY
// MprInfoBlockExists(
//     __in      LPVOID                  lpHeader,
//     __in      DWORD                   dwInfoType
// );
//


#define MprInfoBlockExists(h,t) \
    (MprInfoBlockFind((h),(t),NULL,NULL,NULL) == NO_ERROR)

#ifdef __cplusplus
}
#endif

#endif // __ROUTING_MPRADMIN_H__


