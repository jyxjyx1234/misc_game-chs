/*++

Copyright (c) 2005 Microsoft Corporation

Module Name:

   wlanihv.h

Abstract:

   Definition of public APIs for WLAN Extensibility Framework.

--*/

#ifndef __WLAN_IHV_H__
#define __WLAN_IHV_H__

#pragma once

#include <windot11.h>
#include <wlclient.h>
#include <l2cmn.h>
#include <WlanIhvTypes.h>
#include <dot1x.h>

// Forward declaration for the
// API structure to be exchanged
// during IHV DLL initialization.
typedef
struct _DOT11EXT_APIS
DOT11EXT_APIS, *PDOT11EXT_APIS;




// Forward declaration for the
// handler structure to be exchanged
// during IHV DLL initialization.
typedef
struct _DOT11EXT_IHV_HANDLERS
DOT11EXT_IHV_HANDLERS, *PDOT11EXT_IHV_HANDLERS;




// Forward declaration for the
// API set for controlling virtual station.
typedef
struct _DOT11EXT_VIRTUAL_STATION_APIS
DOT11EXT_VIRTUAL_STATION_APIS, *PDOT11EXT_VIRTUAL_STATION_APIS;






// Version exchange between
// extensibility framework
// and IHV DLL.
typedef
struct _DOT11_IHV_VERSION_INFO
{
   DWORD    dwVerMin;
   DWORD    dwVerMax;
}
DOT11_IHV_VERSION_INFO, *PDOT11_IHV_VERSION_INFO;



// connection phase to decide
// appropriate UI request.
typedef enum
_DOT11EXT_IHV_CONNECTION_PHASE
{
   connection_phase_any,
   connection_phase_initial_connection,
   connection_phase_post_l3_connection
}
DOT11EXT_IHV_CONNECTION_PHASE, *PDOT11EXT_IHV_CONNECTION_PHASE; 


// Information to build the UI Request information.
typedef
struct _DOT11EXT_IHV_UI_REQUEST
{
   DWORD    dwSessionId;
   GUID     guidUIRequest;
   CLSID    UIPageClsid;
   DWORD    dwByteCount;
#ifdef __midl
   [size_is(dwByteCount)] 
#endif
   __field_ecount(dwByteCount) BYTE*    pvUIRequest;
}
DOT11EXT_IHV_UI_REQUEST, *PDOT11EXT_IHV_UI_REQUEST;



// Structures to support MS 802.1X extensibility
typedef enum _DOT11_MSONEX_RESULT
{
    DOT11_MSONEX_SUCCESS,
    DOT11_MSONEX_FAILURE,
    DOT11_MSONEX_IN_PROGRESS
} DOT11_MSONEX_RESULT, *PDOT11_MSONEX_RESULT;


typedef struct _DOT11_EAP_RESULT 
{
   UINT32 dwFailureReasonCode;
   EAP_ATTRIBUTES* pAttribArray;
} DOT11_EAP_RESULT, *PDOT11_EAP_RESULT;


typedef struct _DOT11_MSONEX_RESULT_PARAMS
{
    ONEX_AUTH_STATUS Dot11OnexAuthStatus;
    ONEX_REASON_CODE Dot11OneXReasonCode;
#ifdef __midl
    [size_is(dwMPPESendKeyLen)]
#endif
    __field_ecount(dwMPPESendKeyLen) PBYTE pbMPPESendKey;
    DWORD dwMPPESendKeyLen;

#ifdef __midl
    [size_is(dwMPPERecvKeyLen)]
#endif
    __field_ecount(dwMPPERecvKeyLen) PBYTE pbMPPERecvKey;
    DWORD dwMPPERecvKeyLen;
    PDOT11_EAP_RESULT pDot11EapResult;
} DOT11_MSONEX_RESULT_PARAMS, *PDOT11_MSONEX_RESULT_PARAMS;



// Structures to define Ihv profiles.

typedef
struct _DOT11EXT_IHV_CONNECTIVITY_PROFILE
{
#ifdef __midl
    [string]
#endif
    LPWSTR      pszXmlFragmentIhvConnectivity;
    
}
DOT11EXT_IHV_CONNECTIVITY_PROFILE, *PDOT11EXT_IHV_CONNECTIVITY_PROFILE;


typedef
struct _DOT11EXT_IHV_SECURITY_PROFILE
{
#ifdef __midl
    [string]
#endif
    LPWSTR      pszXmlFragmentIhvSecurity;
    BOOL        bUseMSOnex;
}
DOT11EXT_IHV_SECURITY_PROFILE, *PDOT11EXT_IHV_SECURITY_PROFILE;


typedef
struct _DOT11EXT_IHV_DISCOVERY_PROFILE
{
    DOT11EXT_IHV_CONNECTIVITY_PROFILE   IhvConnectivityProfile;
    DOT11EXT_IHV_SECURITY_PROFILE       IhvSecurityProfile;
}
DOT11EXT_IHV_DISCOVERY_PROFILE, *PDOT11EXT_IHV_DISCOVERY_PROFILE;




typedef
struct _DOT11EXT_IHV_DISCOVERY_PROFILE_LIST
{
    DWORD                           dwCount;
#ifdef __midl
    [size_is(dwCount)]
#endif
    PDOT11EXT_IHV_DISCOVERY_PROFILE  pIhvDiscoveryProfiles;
}
DOT11EXT_IHV_DISCOVERY_PROFILE_LIST, *PDOT11EXT_IHV_DISCOVERY_PROFILE_LIST;

//
// Enum to distinguish between received Ihv notification types.
//
typedef enum
_DOT11EXT_IHV_INDICATION_TYPE
{
    IndicationTypeNicSpecificNotification,
    IndicationTypePmkidCandidateList,
    IndicationTypeTkipMicFailure,
    IndicationTypePhyStateChange,
    IndicationTypeLinkQuality
}
DOT11EXT_IHV_INDICATION_TYPE, *PDOT11EXT_IHV_INDICATION_TYPE;



// 
// Structure to represent the virtual station
// access point property.
//
#define DOT11EXT_PSK_MAX_LENGTH 64

typedef
struct _DOT11EXT_VIRTUAL_STATION_AP_PROPERTY
{
    DOT11_SSID              dot11SSID;
    DOT11_AUTH_ALGORITHM    dot11AuthAlgo;
    DOT11_CIPHER_ALGORITHM  dot11CipherAlgo;
    BOOL                    bIsPassPhrase;
    DWORD                   dwKeyLength;
    UCHAR                   ucKeyData[DOT11EXT_PSK_MAX_LENGTH];
}
DOT11EXT_VIRTUAL_STATION_AP_PROPERTY, *PDOT11EXT_VIRTUAL_STATION_AP_PROPERTY;

//
// Diagnostics Helper Class class parameter
//
#define WDIAG_IHV_WLAN_ID_FLAG_SECURITY_ENABLED               0x00000001

typedef
struct _WDIAG_IHV_WLAN_ID
{
    WCHAR                           strProfileName [MS_MAX_PROFILE_NAME_LENGTH];
    DOT11_SSID                      Ssid;
    DOT11_BSS_TYPE                  BssType;
    DWORD                           dwFlags;           // Flags define above
    DWORD                           dwReasonCode;      // Set only when an applicable reason code is available
}
WDIAG_IHV_WLAN_ID, *PWDIAG_IHV_WLAN_ID;



typedef
DWORD
(WINAPI *DOT11EXT_ALLOCATE_BUFFER)
(
                                    DWORD       dwByteCount,
    __deref_out_bcount(dwByteCount) LPVOID*     ppvBuffer
);




typedef
VOID
(WINAPI *DOT11EXT_FREE_BUFFER)
(
    __in_opt    LPVOID      pvMemory
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_PROFILE_CUSTOM_USER_DATA)
(
    __in_opt                HANDLE  hDot11SvcHandle,
    __in_opt                HANDLE  hConnectSession,
                            DWORD   dwSessionID,
                            DWORD   dwDataSize,
    __in_bcount(dwDataSize) LPVOID  pvData
);




typedef
DWORD
(WINAPI *DOT11EXT_GET_PROFILE_CUSTOM_USER_DATA)
(
    __in_opt                            HANDLE      hDot11SvcHandle,
    __in_opt                            HANDLE      hConnectSession,
                                        DWORD       dwSessionID,
    __out                               DWORD*      pdwDataSize,
    __deref_out_bcount(*pdwDataSize)    LPVOID*     ppvData
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_CURRENT_PROFILE)
(
    __in_opt    HANDLE                                  hDot11SvcHandle,
    __in_opt    HANDLE                                  hConnectSession,
    __in_opt    PDOT11EXT_IHV_CONNECTIVITY_PROFILE      pIhvConnProfile,
    __in_opt    PDOT11EXT_IHV_SECURITY_PROFILE          pIhvSecProfile
);




typedef
DWORD
(WINAPI *DOT11EXT_SEND_UI_REQUEST)
(
    __in_opt    HANDLE                      hDot11SvcHandle,
    __in        PDOT11EXT_IHV_UI_REQUEST    pIhvUIRequest
);




typedef
DWORD
(WINAPI *DOT11EXT_PRE_ASSOCIATE_COMPLETION)
(
    __in_opt    HANDLE      hDot11SvcHandle,
    __in_opt    HANDLE      hConnectSession,
                DWORD       dwReasonCode,
                DWORD       dwWin32Error
);




typedef
DWORD
(WINAPI *DOT11EXT_POST_ASSOCIATE_COMPLETION)
(
    __in_opt    HANDLE              hDot11SvcHandle,
    __in_opt    HANDLE              hSecuritySessionID,
    __in_opt    PDOT11_MAC_ADDRESS  pPeer,
                DWORD               dwReasonCode,
                DWORD               dwWin32Error
);




typedef
DWORD
(WINAPI *DOT11EXT_SEND_NOTIFICATION)
(
    __in_opt    HANDLE                  hDot11SvcHandle,
    __in        PL2_NOTIFICATION_DATA   pNotificationData
);




typedef
DWORD
(WINAPI *DOT11EXT_SEND_PACKET)
(
    __in_opt                HANDLE      hDot11SvcHandle,
                            ULONG       uPacketLen,
    __in_bcount(uPacketLen) LPVOID      pvPacket,
    __in_opt                HANDLE      hSendCompletion
);





typedef
DWORD
(WINAPI *DOT11EXT_SET_ETHERTYPE_HANDLING)
(
    __in_opt                            HANDLE                      hDot11SvcHandle,
                                        ULONG                       uMaxBackLog,
                                        ULONG                       uNumOfExemption,
    __in_ecount_opt(uNumOfExemption)    PDOT11_PRIVACY_EXEMPTION    pExemption,
                                        ULONG                       uNumOfRegistration,
    __in_ecount_opt(uNumOfRegistration) USHORT*                     pusRegistration
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_AUTH_ALGORITHM)
(
    __in_opt    HANDLE      hDot11SvcHandle,
                DWORD       dwAuthAlgo
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_UNICAST_CIPHER_ALGORITHM)
(
    __in_opt    HANDLE      hDot11SvcHandle,
                DWORD       dwUnicastCipherAlgo
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_MULTICAST_CIPHER_ALGORITHM)
(
    __in_opt    HANDLE      hDot11SvcHandle,
                DWORD       dwMulticastCipherAlgo
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_DEFAULT_KEY)
(
    __in_opt    HANDLE                              hDot11SvcHandle,
    __in        PDOT11_CIPHER_DEFAULT_KEY_VALUE     pKey,
                DOT11_DIRECTION                     dot11Direction
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_KEY_MAPPING_KEY)
(
    __in_opt    HANDLE                                  hDot11SvcHandle,
    __in        PDOT11_CIPHER_KEY_MAPPING_KEY_VALUE     pKey
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_DEFAULT_KEY_ID)
(
    __in_opt    HANDLE      hDot11SvcHandle,
                ULONG       uDefaultKeyId
);




typedef
DWORD
(WINAPI *DOT11EXT_SET_EXCLUDE_UNENCRYPTED)
(
    __in_opt    HANDLE      hDot11SvcHandle,
                BOOL        bExcludeUnencrypted
);




typedef
DWORD
(WINAPI *DOT11EXT_NIC_SPECIFIC_EXTENSION)
(
    __in_opt                                                    HANDLE      hDot11SvcHandle,
                                                                DWORD       dwInBufferSize,
    __in_bcount(dwInBufferSize)                                 LPVOID      pvInBuffer,
    __inout                                                     DWORD*      pdwOutBufferSize,
    __out_bcount_part_opt(*pdwOutBufferSize, *pdwOutBufferSize) LPVOID      pvOutBuffer
);


/*
     IHV should allocate EAP attributes using DOT11EXT_ALLOCATE_BUFFER
     The IHV framework will free them.                      
*/

typedef
DWORD
(WINAPI *DOT11EXT_ONEX_START)
(
    __in_opt    HANDLE              hDot11SvcHandle,
    __in_opt    EAP_ATTRIBUTES*     pEapAttributes
);



typedef
DWORD
(WINAPI *DOT11EXT_ONEX_STOP)
(
    __in_opt    HANDLE  hDot11SvcHandle
);



typedef
DWORD
(WINAPI *DOT11EXT_PROCESS_ONEX_PACKET)
(
    __in_opt                    HANDLE      hDot11SvcHandle,
                                DWORD       dwInPacketSize,
    __in_bcount(dwInPacketSize) LPVOID      pvInPacket
);


//
// APIs to control Virtual Station.
//

typedef
DWORD
(WINAPI *DOT11EXT_REQUEST_VIRTUAL_STATION)
(
    __in_opt    HANDLE  hDot11PrimaryHandle,
    __reserved  LPVOID  pvReserved
);


typedef
DWORD
(WINAPI *DOT11EXT_RELEASE_VIRTUAL_STATION)
(
    __in_opt    HANDLE  hDot11PrimaryHandle,
    __reserved  LPVOID  pvReserved
);



typedef
DWORD
(WINAPI *DOT11EXT_QUERY_VIRTUAL_STATION_PROPERTIES)
(
    __in_opt    HANDLE  hDot11SvcHandle,
    __out       BOOL*   pbIsVirtualStation,
    __out       GUID*   pgPrimary,
    __reserved  LPVOID  pvReserved
);



typedef
DWORD
(WINAPI *DOT11EXT_SET_VIRTUAL_STATION_AP_PROPERTIES)
(
    __in_opt                        HANDLE                                  hDot11SvcHandle,
    __in_opt                        HANDLE                                  hConnectSession,
                                    DWORD                                   dwNumProperties,
    __in_ecount(dwNumProperties)    PDOT11EXT_VIRTUAL_STATION_AP_PROPERTY   pProperties,
    __reserved                      LPVOID                                  pvReserved
);



#define  IHV_VERSION_FUNCTION_NAME  "Dot11ExtIhvGetVersionInfo"
#define  IHV_INIT_FUNCTION_NAME     "Dot11ExtIhvInitService"
#define  IHV_INIT_VS_FUNCTION_NAME  "Dot11ExtIhvInitVirtualStation"




typedef
DWORD
(WINAPI *DOT11EXTIHV_GET_VERSION_INFO)
(
    __out   PDOT11_IHV_VERSION_INFO     pDot11IHVVersionInfo
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_INIT_SERVICE)
(
                DWORD                      dwVerNumUsed,
    __in        PDOT11EXT_APIS             pDot11ExtAPI,
    __reserved  LPVOID                     pvReserved,
    __out       PDOT11EXT_IHV_HANDLERS     pDot11IHVHandlers
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_INIT_VIRTUAL_STATION)
(
    __in        PDOT11EXT_VIRTUAL_STATION_APIS      pDot11ExtVSAPI,
    __reserved  LPVOID                              pvReserved
);




typedef
VOID
(WINAPI *DOT11EXTIHV_DEINIT_SERVICE)
(
    VOID
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_INIT_ADAPTER)
(
    __in        PDOT11_ADAPTER    pDot11Adapter,
    __in_opt    HANDLE            hDot11SvcHandle,
    __out       PHANDLE           phIhvExtAdapter
);




typedef
VOID
(WINAPI *DOT11EXTIHV_DEINIT_ADAPTER)
(
    __in_opt    HANDLE      hIhvExtAdapter
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_PERFORM_PRE_ASSOCIATE)
(
    __in_opt    HANDLE                                 hIhvExtAdapter,
    __in_opt    HANDLE                                 hConnectSession,
    __in_opt    PDOT11EXT_IHV_PROFILE_PARAMS           pIhvProfileParams,
    __in        PDOT11EXT_IHV_CONNECTIVITY_PROFILE     pIhvConnProfile,
    __in        PDOT11EXT_IHV_SECURITY_PROFILE         pIhvSecProfile,
    __in        PDOT11_BSS_LIST                        pConnectableBssid,
    __out       PDWORD                                 pdwReasonCode
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_ADAPTER_RESET)
(
    __in_opt    HANDLE      hIhvExtAdapter
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_PERFORM_POST_ASSOCIATE)
(
    __in_opt                            HANDLE                                      hIhvExtAdapter,
    __in_opt                            HANDLE                                      hSecuritySessionID,
    __in                                PDOT11_PORT_STATE                           pPortState,
                                        ULONG                                       uDot11AssocParamsBytes,
    __in_bcount(uDot11AssocParamsBytes) PDOT11_ASSOCIATION_COMPLETION_PARAMETERS    pDot11AssocParams
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_STOP_POST_ASSOCIATE)
(
    __in_opt    HANDLE                  hIhvExtAdapter,
    __in        PDOT11_MAC_ADDRESS      pPeer,
                DOT11_ASSOC_STATUS      dot11AssocStatus
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_VALIDATE_PROFILE)
(
    __in_opt    HANDLE                              hIhvExtAdapter,
    __in_opt    PDOT11EXT_IHV_PROFILE_PARAMS        pIhvProfileParams,
    __in        PDOT11EXT_IHV_CONNECTIVITY_PROFILE  pIhvConnProfile,
    __in        PDOT11EXT_IHV_SECURITY_PROFILE      pIhvSecProfile,
    __out       PDWORD                              pdwReasonCode
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_PERFORM_CAPABILITY_MATCH)
(
    __in_opt    HANDLE                              hIhvExtAdapter,
    __in_opt    PDOT11EXT_IHV_PROFILE_PARAMS        pIhvProfileParams,
    __in        PDOT11EXT_IHV_CONNECTIVITY_PROFILE  pIhvConnProfile,
    __in        PDOT11EXT_IHV_SECURITY_PROFILE      pIhvSecProfile,
    __in_opt    PDOT11_BSS_LIST                     pConnectableBssid,
    __out       PDWORD                              pdwReasonCode
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_CREATE_DISCOVERY_PROFILES)
(
    __in_opt    HANDLE                                  hIhvExtAdapter,
                BOOL                                    bInsecure,
    __in_opt    PDOT11EXT_IHV_PROFILE_PARAMS            pIhvProfileParams,
    __in_opt    PDOT11_BSS_LIST                         pConnectableBssid,
    __out       PDOT11EXT_IHV_DISCOVERY_PROFILE_LIST    pIhvDiscoveryProfileList,
    __out       PDWORD                                  pdwReasonCode
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_PROCESS_SESSION_CHANGE)
(
            ULONG                         uEventType,
    __in    PWTSSESSION_NOTIFICATION      pSessionNotification
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_RECEIVE_INDICATION)
(
    __in_opt                        HANDLE                          hIhvExtAdapter,
                                    DOT11EXT_IHV_INDICATION_TYPE    indicationType,
                                    ULONG                           uBufferLength,
    __in_bcount_opt(uBufferLength)  LPVOID                          pvBuffer
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_RECEIVE_PACKET)
(
    __in_opt                    HANDLE   hIhvExtAdapter,
                                DWORD    dwInBufferSize,
    __in_bcount(dwInBufferSize) LPVOID   pvInBuffer
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_SEND_PACKET_COMPLETION)
(
    __in_opt    HANDLE  hSendCompletion
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_IS_UI_REQUEST_PENDING)
(
            GUID    guidUIRequest,
    __out   PBOOL   pbIsRequestPending
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_PROCESS_UI_RESPONSE)
(
                                    GUID        guidUIRequest,
                                    DWORD       dwByteCount,
    __in_bcount_opt(dwByteCount)    LPVOID      pvResponseBuffer
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_QUERY_UI_REQUEST)
(
    __in_opt        HANDLE                          hIhvExtAdapter,
                    DOT11EXT_IHV_CONNECTION_PHASE   connectionPhase,
    __deref_out     PDOT11EXT_IHV_UI_REQUEST*       ppIhvUIRequest
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_ONEX_INDICATE_RESULT)
(
    __in_opt    HANDLE                          hIhvExtAdapter,
                DOT11_MSONEX_RESULT             msOneXResult,
    __in_opt    PDOT11_MSONEX_RESULT_PARAMS     pDot11MsOneXResultParams
);




typedef
DWORD
(WINAPI *DOT11EXTIHV_CONTROL)
(
    __in_opt                                                    HANDLE    hIhvExtAdapter,
                                                                DWORD     dwInBufferSize,
    __in_bcount_opt(dwInBufferSize)                             PBYTE     pInBuffer,
                                                                DWORD     dwOutBufferSize,
    __out_bcount_part_opt(dwOutBufferSize,*pdwBytesReturned)    PBYTE     pOutBuffer,
    __out                                                       PDWORD    pdwBytesReturned
);


struct _DOT11EXT_APIS
{
   DOT11EXT_ALLOCATE_BUFFER                     Dot11ExtAllocateBuffer;
   DOT11EXT_FREE_BUFFER                         Dot11ExtFreeBuffer;
   DOT11EXT_SET_PROFILE_CUSTOM_USER_DATA        Dot11ExtSetProfileCustomUserData;
   DOT11EXT_GET_PROFILE_CUSTOM_USER_DATA        Dot11ExtGetProfileCustomUserData;
   DOT11EXT_SET_CURRENT_PROFILE                 Dot11ExtSetCurrentProfile;
   DOT11EXT_SEND_UI_REQUEST                     Dot11ExtSendUIRequest;
   DOT11EXT_PRE_ASSOCIATE_COMPLETION            Dot11ExtPreAssociateCompletion;
   DOT11EXT_POST_ASSOCIATE_COMPLETION           Dot11ExtPostAssociateCompletion;
   DOT11EXT_SEND_NOTIFICATION                   Dot11ExtSendNotification;
   DOT11EXT_SEND_PACKET                         Dot11ExtSendPacket;
   DOT11EXT_SET_ETHERTYPE_HANDLING              Dot11ExtSetEtherTypeHandling;
   DOT11EXT_SET_AUTH_ALGORITHM                  Dot11ExtSetAuthAlgorithm;
   DOT11EXT_SET_UNICAST_CIPHER_ALGORITHM        Dot11ExtSetUnicastCipherAlgorithm;
   DOT11EXT_SET_MULTICAST_CIPHER_ALGORITHM      Dot11ExtSetMulticastCipherAlgorithm;
   DOT11EXT_SET_DEFAULT_KEY                     Dot11ExtSetDefaultKey;
   DOT11EXT_SET_KEY_MAPPING_KEY                 Dot11ExtSetKeyMappingKey;
   DOT11EXT_SET_DEFAULT_KEY_ID                  Dot11ExtSetDefaultKeyId;
   DOT11EXT_NIC_SPECIFIC_EXTENSION              Dot11ExtNicSpecificExtension;
   DOT11EXT_SET_EXCLUDE_UNENCRYPTED             Dot11ExtSetExcludeUnencrypted;
   DOT11EXT_ONEX_START                          Dot11ExtStartOneX;
   DOT11EXT_ONEX_STOP                           Dot11ExtStopOneX;
   DOT11EXT_PROCESS_ONEX_PACKET                 Dot11ExtProcessSecurityPacket;
};




struct _DOT11EXT_IHV_HANDLERS
{
   DOT11EXTIHV_DEINIT_SERVICE                   Dot11ExtIhvDeinitService;
   DOT11EXTIHV_INIT_ADAPTER                     Dot11ExtIhvInitAdapter;
   DOT11EXTIHV_DEINIT_ADAPTER                   Dot11ExtIhvDeinitAdapter;
   DOT11EXTIHV_PERFORM_PRE_ASSOCIATE            Dot11ExtIhvPerformPreAssociate;
   DOT11EXTIHV_ADAPTER_RESET                    Dot11ExtIhvAdapterReset;
   DOT11EXTIHV_PERFORM_POST_ASSOCIATE           Dot11ExtIhvPerformPostAssociate;
   DOT11EXTIHV_STOP_POST_ASSOCIATE              Dot11ExtIhvStopPostAssociate;
   DOT11EXTIHV_VALIDATE_PROFILE                 Dot11ExtIhvValidateProfile;
   DOT11EXTIHV_PERFORM_CAPABILITY_MATCH         Dot11ExtIhvPerformCapabilityMatch;
   DOT11EXTIHV_CREATE_DISCOVERY_PROFILES        Dot11ExtIhvCreateDiscoveryProfiles;
   DOT11EXTIHV_PROCESS_SESSION_CHANGE           Dot11ExtIhvProcessSessionChange;
   DOT11EXTIHV_RECEIVE_INDICATION               Dot11ExtIhvReceiveIndication;
   DOT11EXTIHV_RECEIVE_PACKET                   Dot11ExtIhvReceivePacket;
   DOT11EXTIHV_SEND_PACKET_COMPLETION           Dot11ExtIhvSendPacketCompletion;
   DOT11EXTIHV_IS_UI_REQUEST_PENDING            Dot11ExtIhvIsUIRequestPending;
   DOT11EXTIHV_PROCESS_UI_RESPONSE              Dot11ExtIhvProcessUIResponse;
   DOT11EXTIHV_QUERY_UI_REQUEST                 Dot11ExtIhvQueryUIRequest;
   DOT11EXTIHV_ONEX_INDICATE_RESULT             Dot11ExtIhvOnexIndicateResult;
   DOT11EXTIHV_CONTROL                          Dot11ExtIhvControl;
};


struct _DOT11EXT_VIRTUAL_STATION_APIS
{
    DOT11EXT_REQUEST_VIRTUAL_STATION                Dot11ExtRequestVirtualStation;
    DOT11EXT_RELEASE_VIRTUAL_STATION                Dot11ExtReleaseVirtualStation;
    DOT11EXT_QUERY_VIRTUAL_STATION_PROPERTIES       Dot11ExtQueryVirtualStationProperties;
    DOT11EXT_SET_VIRTUAL_STATION_AP_PROPERTIES      Dot11ExtSetVirtualStationAPProperties;
};


#endif // __WLAN_IHV_H__

