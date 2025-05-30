 /*++ BUILD Version: 0001        // Increment this if a change has global effects

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    ntddndis.h

Abstract:

    This is the include file that defines all constants and types for
    accessing the Network driver interface device.

Author:

    NDIS/ATM Development Team

Revision History:

    added the correct values for NDIS 3.0.
    added Pnp IoCTLs and structures
    added general co ndis oids.
    added PnP and PM OIDs.

--*/

#ifndef _NTDDNDIS_
#define _NTDDNDIS_

#if _MSC_VER > 1000
#pragma once
#endif

//disable warnings
#if _MSC_VER >= 1200

#pragma warning(push)

#endif

#pragma warning(disable:4201) // named type definition in parentheses

#ifdef __cplusplus
extern "C" {
#endif

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
#include <ifdef.h>
#include <devpkey.h>
#include <pciprop.h>
#endif // (NTDDI_VERSION >= NTDDI_VISTA)

//
// Something to identify new (Win7 and up) applications. 
// User-mode only. For drivers, NDIS_SUPPORT_NDIS620 is already
// defined in ndismain.w.
//
#if !defined(NDIS_SUPPORT_NDIS620)
#if  (defined (UM_NDIS620))
#define NDIS_SUPPORT_NDIS620      1
#else
#define NDIS_SUPPORT_NDIS620      0
#endif
#endif // !defined(NDIS_SUPPORT_NDIS620)

//
// Something to identify new (LH Server and up) applications. 
// User-mode only. For drivers, NDIS_SUPPORT_NDIS61 is already
// defined in ndismain.w.
//
#if !defined(NDIS_SUPPORT_NDIS61)
#if  (defined (UM_NDIS61) || defined (UM_NDIS620))
#define NDIS_SUPPORT_NDIS61      1
#else
#define NDIS_SUPPORT_NDIS61      0
#endif
#endif // !defined(NDIS_SUPPORT_NDIS61)

//
// Device Name - this string is the name of the device. It is the name
// that should be passed to NtOpenFile when accessing the device.

//
// Note: For devices that support multiple units, it should be suffixed
//       with the Ascii representation of the unit number.
//

#define DD_NDIS_DEVICE_NAME "\\Device\\UNKNOWN"


//
// NtDeviceIoControlFile IoControlCode values for this device.
//
// Warning: Remember that the low two bits of the code specify how the
//          buffers are passed to the driver!
//

#define _NDIS_CONTROL_CODE(request,method) \
            CTL_CODE(FILE_DEVICE_PHYSICAL_NETCARD, request, method, FILE_ANY_ACCESS)

#define IOCTL_NDIS_QUERY_GLOBAL_STATS   _NDIS_CONTROL_CODE(0, METHOD_OUT_DIRECT)
#define IOCTL_NDIS_QUERY_ALL_STATS      _NDIS_CONTROL_CODE(1, METHOD_OUT_DIRECT)
#define IOCTL_NDIS_DO_PNP_OPERATION     _NDIS_CONTROL_CODE(2, METHOD_BUFFERED)
#define IOCTL_NDIS_QUERY_SELECTED_STATS _NDIS_CONTROL_CODE(3, METHOD_OUT_DIRECT)
#define IOCTL_NDIS_ENUMERATE_INTERFACES _NDIS_CONTROL_CODE(4, METHOD_BUFFERED)
#define IOCTL_NDIS_ADD_TDI_DEVICE       _NDIS_CONTROL_CODE(5, METHOD_BUFFERED)
#define IOCTL_NDIS_GET_LOG_DATA         _NDIS_CONTROL_CODE(7, METHOD_OUT_DIRECT)
#define IOCTL_NDIS_GET_VERSION          _NDIS_CONTROL_CODE(8, METHOD_BUFFERED)

#define IOCTL_NDIS_RESERVED1            _NDIS_CONTROL_CODE(9, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED2            _NDIS_CONTROL_CODE(0xA, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED3            _NDIS_CONTROL_CODE(0xB, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED4            _NDIS_CONTROL_CODE(0xC, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED5    CTL_CODE(FILE_DEVICE_PHYSICAL_NETCARD, 0xD, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_NDIS_RESERVED6    CTL_CODE(FILE_DEVICE_PHYSICAL_NETCARD, 0xE, METHOD_BUFFERED, FILE_WRITE_ACCESS)
#define IOCTL_NDIS_RESERVED7            _NDIS_CONTROL_CODE(0xF, METHOD_OUT_DIRECT)
#define IOCTL_NDIS_RESERVED8            _NDIS_CONTROL_CODE(0x10, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED9            _NDIS_CONTROL_CODE(0x11, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED10           _NDIS_CONTROL_CODE(0x12, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED11           _NDIS_CONTROL_CODE(0x13, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED12           _NDIS_CONTROL_CODE(0x14, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED13           _NDIS_CONTROL_CODE(0x15, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED14           _NDIS_CONTROL_CODE(0x16, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED15           _NDIS_CONTROL_CODE(0x17, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED16           _NDIS_CONTROL_CODE(0x18, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED17           _NDIS_CONTROL_CODE(0x19, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED18           _NDIS_CONTROL_CODE(0x1A, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED19           _NDIS_CONTROL_CODE(0x1B, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED20           _NDIS_CONTROL_CODE(0x1C, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED21           _NDIS_CONTROL_CODE(0x1D, METHOD_BUFFERED)
#define IOCTL_NDIS_RESERVED22           _NDIS_CONTROL_CODE(0x1E, METHOD_BUFFERED)


//
// NtDeviceIoControlFile InputBuffer/OutputBuffer record structures for
// this device.
//

//
// This is the type of an NDIS OID value.
//

typedef ULONG NDIS_OID, *PNDIS_OID;

//
// IOCTL_NDIS_QUERY_ALL_STATS returns a sequence of these, packed
// together.  This structure is unaligned because not all statistics
// have a length that is a ULONG multiple.
//

typedef struct _NDIS_STATISTICS_VALUE
{
    NDIS_OID    Oid;
    ULONG       DataLength;
    UCHAR       Data[1];            // variable length
} NDIS_STATISTICS_VALUE;

typedef NDIS_STATISTICS_VALUE UNALIGNED *PNDIS_STATISTICS_VALUE;

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
typedef struct _NDIS_STATISTICS_VALUE_EX
{
    NDIS_OID    Oid;
    ULONG       DataLength;         // the length of the OID data
    ULONG       Length;             // the length of this instance of NDIS_STATISTICS_VALUE_EX
    UCHAR       Data[1];            // variable length
} NDIS_STATISTICS_VALUE_EX;

typedef NDIS_STATISTICS_VALUE_EX UNALIGNED *PNDIS_STATISTICS_VALUE_EX;
#endif // (NTDDI_VERSION >= NTDDI_VISTA)


//
// Structure used to define a self-contained variable data structure
//
typedef struct _NDIS_VAR_DATA_DESC
{
    USHORT      Length;         // # of octects of data
    USHORT      MaximumLength;  // # of octects available
    ULONG_PTR   Offset;         // Offset of data relative to the descriptor
} NDIS_VAR_DATA_DESC, *PNDIS_VAR_DATA_DESC;

#ifndef GUID_DEFINED
#include <guiddef.h>
#endif // !GUID_DEFINED

//
// NDIS Object Types used in NDIS_OBJECT_HEADER
//
#define NDIS_OBJECT_TYPE_DEFAULT                            0x80    // used when object type is implicit in the API call
#define NDIS_OBJECT_TYPE_MINIPORT_INIT_PARAMETERS           0x81    // used by NDIS in NDIS_MINIPORT_INIT_PARAMETERS
#define NDIS_OBJECT_TYPE_SG_DMA_DESCRIPTION                 0x83    // used by miniport drivers in NDIS_SG_DMA_DESCRIPTION
#define NDIS_OBJECT_TYPE_MINIPORT_INTERRUPT                 0x84    // used by miniport drivers in NDIS_MINIPORT_INTERRUPT_EX
#define NDIS_OBJECT_TYPE_DEVICE_OBJECT_ATTRIBUTES           0x85    // used by miniport or filter drivers in NDIS_DEVICE_OBJECT_ATTRIBUTES
#define NDIS_OBJECT_TYPE_BIND_PARAMETERS                    0x86    // used by NDIS in NDIS_BIND_PARAMETERS
#define NDIS_OBJECT_TYPE_OPEN_PARAMETERS                    0x87    // used by protocols in NDIS_OPEN_PARAMETERS
#define NDIS_OBJECT_TYPE_RSS_CAPABILITIES                   0x88    // used by miniport in NDIS_RECEIVE_SCALE_CAPABILITIES
#define NDIS_OBJECT_TYPE_RSS_PARAMETERS                     0x89    // used by miniport and protocol in NDIS_RECEIVE_SCALE_PARAMETERS
#define NDIS_OBJECT_TYPE_MINIPORT_DRIVER_CHARACTERISTICS    0x8A
#define NDIS_OBJECT_TYPE_FILTER_DRIVER_CHARACTERISTICS      0x8B
#define NDIS_OBJECT_TYPE_FILTER_PARTIAL_CHARACTERISTICS     0x8C
#define NDIS_OBJECT_TYPE_FILTER_ATTRIBUTES                  0x8D
#define NDIS_OBJECT_TYPE_CLIENT_CHIMNEY_OFFLOAD_GENERIC_CHARACTERISTICS     0x8E
#define NDIS_OBJECT_TYPE_PROVIDER_CHIMNEY_OFFLOAD_GENERIC_CHARACTERISTICS   0x8F
#define NDIS_OBJECT_TYPE_CO_PROTOCOL_CHARACTERISTICS        0x90
#define NDIS_OBJECT_TYPE_CO_MINIPORT_CHARACTERISTICS        0x91
#define NDIS_OBJECT_TYPE_MINIPORT_PNP_CHARACTERISTICS       0x92
#define NDIS_OBJECT_TYPE_CLIENT_CHIMNEY_OFFLOAD_CHARACTERISTICS     0x93
#define NDIS_OBJECT_TYPE_PROVIDER_CHIMNEY_OFFLOAD_CHARACTERISTICS   0x94
#define NDIS_OBJECT_TYPE_PROTOCOL_DRIVER_CHARACTERISTICS    0x95
#define NDIS_OBJECT_TYPE_REQUEST_EX                         0x96
#define NDIS_OBJECT_TYPE_OID_REQUEST                        0x96
#define NDIS_OBJECT_TYPE_TIMER_CHARACTERISTICS              0x97
#define NDIS_OBJECT_TYPE_STATUS_INDICATION                  0x98
#define NDIS_OBJECT_TYPE_FILTER_ATTACH_PARAMETERS           0x99
#define NDIS_OBJECT_TYPE_FILTER_PAUSE_PARAMETERS            0x9A
#define NDIS_OBJECT_TYPE_FILTER_RESTART_PARAMETERS          0x9B
#define NDIS_OBJECT_TYPE_PORT_CHARACTERISTICS               0x9C
#define NDIS_OBJECT_TYPE_PORT_STATE                         0x9D
#define NDIS_OBJECT_TYPE_MINIPORT_ADAPTER_REGISTRATION_ATTRIBUTES       0x9E
#define NDIS_OBJECT_TYPE_MINIPORT_ADAPTER_GENERAL_ATTRIBUTES            0x9F
#define NDIS_OBJECT_TYPE_MINIPORT_ADAPTER_OFFLOAD_ATTRIBUTES            0xA0
#define NDIS_OBJECT_TYPE_MINIPORT_ADAPTER_NATIVE_802_11_ATTRIBUTES      0xA1
#define NDIS_OBJECT_TYPE_RESTART_GENERAL_ATTRIBUTES                     0xA2
#define NDIS_OBJECT_TYPE_PROTOCOL_RESTART_PARAMETERS                    0xA3
#define NDIS_OBJECT_TYPE_MINIPORT_ADD_DEVICE_REGISTRATION_ATTRIBUTES    0xA4
#define NDIS_OBJECT_TYPE_CO_CALL_MANAGER_OPTIONAL_HANDLERS              0xA5
#define NDIS_OBJECT_TYPE_CO_CLIENT_OPTIONAL_HANDLERS                    0xA6
#define NDIS_OBJECT_TYPE_OFFLOAD                                        0xA7
#define NDIS_OBJECT_TYPE_OFFLOAD_ENCAPSULATION                          0xA8
#define NDIS_OBJECT_TYPE_CONFIGURATION_OBJECT                           0xA9
#define NDIS_OBJECT_TYPE_DRIVER_WRAPPER_OBJECT                          0xAA
#if (NDIS_SUPPORT_NDIS61)
#define NDIS_OBJECT_TYPE_HD_SPLIT_ATTRIBUTES                            0xAB
#endif // (NDIS_SUPPORT_NDIS61)
#define NDIS_OBJECT_TYPE_NSI_NETWORK_RW_STRUCT                          0xAC
#define NDIS_OBJECT_TYPE_NSI_COMPARTMENT_RW_STRUCT                      0xAD
#define NDIS_OBJECT_TYPE_NSI_INTERFACE_PERSIST_RW_STRUCT                0xAE
#if (NDIS_SUPPORT_NDIS61)
#define NDIS_OBJECT_TYPE_MINIPORT_ADAPTER_HARDWARE_ASSIST_ATTRIBUTES    0xAF
#endif // (NDIS_SUPPORT_NDIS61)
#if (NDIS_SUPPORT_NDIS620)
#define NDIS_OBJECT_TYPE_SHARED_MEMORY_PROVIDER_CHARACTERISTICS         0xB0
#define NDIS_OBJECT_TYPE_RSS_PROCESSOR_INFO                             0xB1
#endif // (NDIS_SUPPORT_NDIS620)



typedef struct _NDIS_OBJECT_HEADER
{
    UCHAR   Type;
    UCHAR   Revision;
    USHORT  Size;
} NDIS_OBJECT_HEADER, *PNDIS_OBJECT_HEADER;

#define NDIS_OBJECT_REVISION_1                  1

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)

//
// flags for NDIS_STATISTICS_INFO->SupportedStatistics structure
//
#define NDIS_STATISTICS_FLAGS_VALID_DIRECTED_FRAMES_RCV             0x00000001
#define NDIS_STATISTICS_FLAGS_VALID_MULTICAST_FRAMES_RCV            0x00000002
#define NDIS_STATISTICS_FLAGS_VALID_BROADCAST_FRAMES_RCV            0x00000004
#define NDIS_STATISTICS_FLAGS_VALID_BYTES_RCV                       0x00000008
#define NDIS_STATISTICS_FLAGS_VALID_RCV_DISCARDS                    0x00000010
#define NDIS_STATISTICS_FLAGS_VALID_RCV_ERROR                       0x00000020
#define NDIS_STATISTICS_FLAGS_VALID_DIRECTED_FRAMES_XMIT            0x00000040
#define NDIS_STATISTICS_FLAGS_VALID_MULTICAST_FRAMES_XMIT           0x00000080
#define NDIS_STATISTICS_FLAGS_VALID_BROADCAST_FRAMES_XMIT           0x00000100
#define NDIS_STATISTICS_FLAGS_VALID_BYTES_XMIT                      0x00000200
#define NDIS_STATISTICS_FLAGS_VALID_XMIT_ERROR                      0x00000400
#define NDIS_STATISTICS_FLAGS_VALID_XMIT_DISCARDS                   0x00008000
#define NDIS_STATISTICS_FLAGS_VALID_DIRECTED_BYTES_RCV              0x00010000
#define NDIS_STATISTICS_FLAGS_VALID_MULTICAST_BYTES_RCV             0x00020000
#define NDIS_STATISTICS_FLAGS_VALID_BROADCAST_BYTES_RCV             0x00040000
#define NDIS_STATISTICS_FLAGS_VALID_DIRECTED_BYTES_XMIT             0x00080000
#define NDIS_STATISTICS_FLAGS_VALID_MULTICAST_BYTES_XMIT            0x00100000
#define NDIS_STATISTICS_FLAGS_VALID_BROADCAST_BYTES_XMIT            0x00200000


#define NDIS_STATISTICS_INFO_REVISION_1  1

//
// structure used in OID_GEN_STATISTICS
//
typedef struct _NDIS_STATISTICS_INFO
{
    NDIS_OBJECT_HEADER          Header;
    ULONG                       SupportedStatistics;
    ULONG64                     ifInDiscards;           // OID_GEN_RCV_ERROR + OID_GEN_RCV_NO_BUFFER = OID_GEN_RCV_DISCARDS
    ULONG64                     ifInErrors;             // OID_GEN_RCV_ERROR
    ULONG64                     ifHCInOctets;           // OID_GEN_BYTES_RCV = OID_GEN_DIRECTED_BYTES_RCV + OID_GEN_MULTICAST_BYTES_RCV + OID_GEN_BROADCAST_BYTES_RCV
    ULONG64                     ifHCInUcastPkts;        // OID_GEN_DIRECTED_FRAMES_RCV
    ULONG64                     ifHCInMulticastPkts;    // OID_GEN_MULTICAST_FRAMES_RCV
    ULONG64                     ifHCInBroadcastPkts;    // OID_GEN_BROADCAST_FRAMES_RCV
    ULONG64                     ifHCOutOctets;          // OID_GEN_BYTES_XMIT = OID_GEN_DIRECTED_BYTES_XMIT + OID_GEN_MULTICAST_BYTES_XMIT + OID_GEN_BROADCAST_BYTES_XMIT
    ULONG64                     ifHCOutUcastPkts;       // OID_GEN_DIRECTED_FRAMES_XMIT
    ULONG64                     ifHCOutMulticastPkts;   // OID_GEN_MULTICAST_FRAMES_XMIT
    ULONG64                     ifHCOutBroadcastPkts;   // OID_GEN_BROADCAST_FRAMES_XMIT
    ULONG64                     ifOutErrors;            // OID_GEN_XMIT_ERROR
    ULONG64                     ifOutDiscards;          // OID_GEN_XMIT_DISCARDS
    ULONG64                     ifHCInUcastOctets;      // OID_GEN_DIRECTED_BYTES_RCV    
    ULONG64                     ifHCInMulticastOctets;  // OID_GEN_MULTICAST_BYTES_RCV
    ULONG64                     ifHCInBroadcastOctets;  // OID_GEN_BROADCAST_BYTES_RCV        
    ULONG64                     ifHCOutUcastOctets;     // OID_GEN_DIRECTED_BYTES_XMIT    
    ULONG64                     ifHCOutMulticastOctets; // OID_GEN_MULTICAST_BYTES_XMIT
    ULONG64                     ifHCOutBroadcastOctets; // OID_GEN_BROADCAST_BYTES_XMIT                

}NDIS_STATISTICS_INFO, *PNDIS_STATISTICS_INFO;

#define NDIS_SIZEOF_STATISTICS_INFO_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_STATISTICS_INFO, ifHCOutBroadcastOctets)



//
//  interrupt moderation structures and definitions
//

//
// enum value used in NDIS_INTERRUPT_MODERATION_PARAMETERS structure
//
typedef enum _NDIS_INTERRUPT_MODERATION
{
    NdisInterruptModerationUnknown,
    NdisInterruptModerationNotSupported,
    NdisInterruptModerationEnabled,
    NdisInterruptModerationDisabled
} NDIS_INTERRUPT_MODERATION, *PNDIS_INTERRUPT_MODERATION;

//
// Bits used in Flags parameter of NDIS_INTERRUPT_MODERATION_PARAMETERS structure:
//    
#define NDIS_INTERRUPT_MODERATION_CHANGE_NEEDS_RESET            0x00000001
#define NDIS_INTERRUPT_MODERATION_CHANGE_NEEDS_REINITIALIZE     0x00000002


//
// structure used in OID_GEN_INTERRUPT_MODERATION
//

#define NDIS_INTERRUPT_MODERATION_PARAMETERS_REVISION_1    1

typedef struct _NDIS_INTERRUPT_MODERATION_PARAMETERS
{
    NDIS_OBJECT_HEADER Header;
    ULONG Flags;
    NDIS_INTERRUPT_MODERATION InterruptModeration;
}NDIS_INTERRUPT_MODERATION_PARAMETERS, *PNDIS_INTERRUPT_MODERATION_PARAMETERS;

#define NDIS_SIZEOF_INTERRUPT_MODERATION_PARAMETERS_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_INTERRUPT_MODERATION_PARAMETERS, InterruptModeration)

//
// structure used in OID_GEN_TIMEOUT_DPC_REQUEST_CAPABILITIES
//

#define NDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES_REVISION_1  1

typedef struct _NDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES
{
    NDIS_OBJECT_HEADER      Header;
    ULONG                   Flags;
    ULONG                   TimeoutArrayLength;
    ULONG                   TimeoutArray[1];
}NDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES, *PNDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES;

#define NDIS_SIZEOF_TIMEOUT_DPC_REQUEST_CAPABILITIES_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_TIMEOUT_DPC_REQUEST_CAPABILITIES, TimeoutArray)

//
// PCI custom properties. used in OID_GEN_PCI_DEVICE_CUSTOM_PROPERTIES
//

#define NDIS_OBJECT_TYPE_PCI_DEVICE_CUSTOM_PROPERTIES_REVISION_1  1

#if ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)
#define NDIS_OBJECT_TYPE_PCI_DEVICE_CUSTOM_PROPERTIES_REVISION_2  2
#endif
    
typedef struct _NDIS_PCI_DEVICE_CUSTOM_PROPERTIES
{
    NDIS_OBJECT_HEADER              Header;
    UINT32                          DeviceType;             // conventional, PCI-X, PCI-E, etc.
    UINT32                          CurrentSpeedAndMode;    // PCI_DEVICE_CONVENTIONAL_xx or PCIX_MODExxx. valid only for conventional and PCI-X devices
    UINT32                          CurrentPayloadSize;     // PCI_EXPRESS_MAX_PAYLOAD_SIZE, valid only for PCI-E devices
    UINT32                          MaxPayloadSize;         // PCI_EXPRESS_MAX_PAYLOAD_SIZE, valid only for PCI-E devices
    UINT32                          MaxReadRequestSize;     // PCI_EXPRESS_MAX_PAYLOAD_SIZE, valid only for PCI-E devices
    UINT32                          CurrentLinkSpeed;       // PCI_EXPRESS_LINK_SPEED_xxx. valid only for PCI-E devices 
    UINT32                          CurrentLinkWidth;       // PCI_EXPRESS_LINK_WIDTH_xx. valid only for PCI-E devices
    UINT32                          MaxLinkSpeed;           // PCI_EXPRESS_LINK_SPEED_xxx. valid only for PCI-E devices
    UINT32                          MaxLinkWidth;           // PCI_EXPRESS_LINK_WIDTH_xx. valid only for PCI-E devices
#if ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)
    UINT32                          PciExpressVersion;      // DevProp_PciExpressDevice_Spec_Version_xx, valid for PCI -E devices
    UINT32                          InterruptType;          // DevProp_PciDevice_InterruptType_xx
    UINT32                          MaxInterruptMessages;
#endif
} NDIS_PCI_DEVICE_CUSTOM_PROPERTIES, *PNDIS_PCI_DEVICE_CUSTOM_PROPERTIES;

#define NDIS_SIZEOF_PCI_DEVICE_CUSTOM_PROPERTIES_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_PCI_DEVICE_CUSTOM_PROPERTIES, MaxLinkWidth)

#if ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)
#define NDIS_SIZEOF_PCI_DEVICE_CUSTOM_PROPERTIES_REVISION_2    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_PCI_DEVICE_CUSTOM_PROPERTIES, MaxInterruptMessages)
#endif

#endif // (NTDDI_VERSION >= NTDDI_VISTA)



//
// General Objects
//

//
//  Required OIDs
//
#define OID_GEN_SUPPORTED_LIST                  0x00010101
#define OID_GEN_HARDWARE_STATUS                 0x00010102
#define OID_GEN_MEDIA_SUPPORTED                 0x00010103
#define OID_GEN_MEDIA_IN_USE                    0x00010104
#define OID_GEN_MAXIMUM_LOOKAHEAD               0x00010105
#define OID_GEN_MAXIMUM_FRAME_SIZE              0x00010106
#define OID_GEN_LINK_SPEED                      0x00010107
#define OID_GEN_TRANSMIT_BUFFER_SPACE           0x00010108
#define OID_GEN_RECEIVE_BUFFER_SPACE            0x00010109
#define OID_GEN_TRANSMIT_BLOCK_SIZE             0x0001010A
#define OID_GEN_RECEIVE_BLOCK_SIZE              0x0001010B
#define OID_GEN_VENDOR_ID                       0x0001010C
#define OID_GEN_VENDOR_DESCRIPTION              0x0001010D
#define OID_GEN_CURRENT_PACKET_FILTER           0x0001010E
#define OID_GEN_CURRENT_LOOKAHEAD               0x0001010F
#define OID_GEN_DRIVER_VERSION                  0x00010110
#define OID_GEN_MAXIMUM_TOTAL_SIZE              0x00010111
#define OID_GEN_PROTOCOL_OPTIONS                0x00010112
#define OID_GEN_MAC_OPTIONS                     0x00010113
#define OID_GEN_MEDIA_CONNECT_STATUS            0x00010114
#define OID_GEN_MAXIMUM_SEND_PACKETS            0x00010115

//
//  Optional OIDs
//
#define OID_GEN_VENDOR_DRIVER_VERSION           0x00010116
#define OID_GEN_SUPPORTED_GUIDS                 0x00010117
#define OID_GEN_NETWORK_LAYER_ADDRESSES         0x00010118  // Set only
#define OID_GEN_TRANSPORT_HEADER_OFFSET         0x00010119  // Set only
#define OID_GEN_MEDIA_CAPABILITIES              0x00010201
#define OID_GEN_PHYSICAL_MEDIUM                 0x00010202

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
//
// new optional for NDIS 6.0
//
#define OID_GEN_RECEIVE_SCALE_CAPABILITIES      0x00010203  // query only
#define OID_GEN_RECEIVE_SCALE_PARAMETERS        0x00010204  // query and set

//
// new for NDIS 6.0. NDIS will handle on behalf of the miniports
//
#define OID_GEN_MAC_ADDRESS                     0x00010205  // query and set
#define OID_GEN_MAX_LINK_SPEED                  0x00010206  // query only
#define OID_GEN_LINK_STATE                      0x00010207  // query only

//
// new and required for NDIS 6 miniports
//
#define OID_GEN_LINK_PARAMETERS                 0x00010208  // set only
#define OID_GEN_INTERRUPT_MODERATION            0x00010209  // query and set
#define OID_GEN_NDIS_RESERVED_3                 0x0001020A
#define OID_GEN_NDIS_RESERVED_4                 0x0001020B
#define OID_GEN_NDIS_RESERVED_5                 0x0001020C


//
// Port related OIDs
//
#define OID_GEN_ENUMERATE_PORTS                 0x0001020D  // query only, handled by NDIS
#define OID_GEN_PORT_STATE                      0x0001020E  // query only, handled by NDIS
#define OID_GEN_PORT_AUTHENTICATION_PARAMETERS  0x0001020F  // Set only

//
// optional OID for NDIS 6 miniports
//
#define OID_GEN_TIMEOUT_DPC_REQUEST_CAPABILITIES 0x00010210 // query only

//
// this OID is handled by NDIS for PCI devices
//
#define OID_GEN_PCI_DEVICE_CUSTOM_PROPERTIES    0x00010211  // query only
#define OID_GEN_NDIS_RESERVED_6                 0x00010212
#define OID_GEN_PHYSICAL_MEDIUM_EX              0x00010213  // query only


#endif // (NTDDI_VERSION >= NTDDI_VISTA)

#define OID_GEN_MACHINE_NAME                    0x0001021A  // set only
#define OID_GEN_RNDIS_CONFIG_PARAMETER          0x0001021B  // Set only
#define OID_GEN_VLAN_ID                         0x0001021C

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
#define OID_GEN_RECEIVE_HASH                    0x0001021F  // query and set
#define OID_GEN_MINIPORT_RESTART_ATTRIBUTES     0x0001021D

#if (NDIS_SUPPORT_NDIS61)
//
// Optional OID for header data/split
//
#define OID_GEN_HD_SPLIT_PARAMETERS             0x0001021E  // Set only
#define OID_GEN_HD_SPLIT_CURRENT_CONFIG         0x00010220  // Query only
#endif // (NDIS_SUPPORT_NDIS61)

//
// the following OIDs are used in querying interfaces
//
#define OID_GEN_PROMISCUOUS_MODE                0x00010280  // used in querying interfaces
#define OID_GEN_LAST_CHANGE                     0x00010281  // used in querying interfaces
#define OID_GEN_DISCONTINUITY_TIME              0x00010282  // used in querying interfaces
#define OID_GEN_OPERATIONAL_STATUS              0x00010283  // used in querying interfaces
#define OID_GEN_XMIT_LINK_SPEED                 0x00010284  // used in querying interfaces
#define OID_GEN_RCV_LINK_SPEED                  0x00010285  // used in querying interfaces
#define OID_GEN_UNKNOWN_PROTOS                  0x00010286  // used in querying interfaces
#define OID_GEN_INTERFACE_INFO                  0x00010287  // used in querying interfaces
#define OID_GEN_ADMIN_STATUS                    0x00010288  // used in querying interfaces
#define OID_GEN_ALIAS                           0x00010289  // used in querying interfaces
#define OID_GEN_MEDIA_CONNECT_STATUS_EX         0x0001028A  // used in querying interfaces
#define OID_GEN_LINK_SPEED_EX                   0x0001028B  // used in querying interfaces
#define OID_GEN_MEDIA_DUPLEX_STATE              0x0001028C  // used in querying interfaces
#define OID_GEN_IP_OPER_STATUS                  0x0001028D  // used in querying interfaces

//
// WWAN specific oids
//
#define OID_WWAN_DRIVER_CAPS			0x0e010100
#define OID_WWAN_DEVICE_CAPS			0x0e010101
#define OID_WWAN_READY_INFO			0x0e010102
#define OID_WWAN_RADIO_STATE			0x0e010103
#define OID_WWAN_PIN				0x0e010104
#define OID_WWAN_PIN_LIST			0x0e010105
#define OID_WWAN_HOME_PROVIDER			0x0e010106
#define OID_WWAN_PREFERRED_PROVIDERS		0x0e010107
#define OID_WWAN_VISIBLE_PROVIDERS		0x0e010108
#define OID_WWAN_REGISTER_STATE			0x0e010109
#define OID_WWAN_PACKET_SERVICE			0x0e01010a
#define OID_WWAN_SIGNAL_STATE			0x0e01010b
#define OID_WWAN_CONNECT			0x0e01010c
#define OID_WWAN_PROVISIONED_CONTEXTS		0x0e01010d
#define OID_WWAN_SERVICE_ACTIVATION		0x0e01010e
#define OID_WWAN_SMS_CONFIGURATION		0x0e01010f
#define OID_WWAN_SMS_READ			0x0e010110
#define OID_WWAN_SMS_SEND			0x0e010111
#define OID_WWAN_SMS_DELETE			0x0e010112
#define OID_WWAN_SMS_STATUS			0x0e010113
#define OID_WWAN_VENDOR_SPECIFIC		0x0e010114

#endif // (NTDDI_VERSION >= NTDDI_VISTA)

//
//  Required statistics
//
#define OID_GEN_XMIT_OK                         0x00020101
#define OID_GEN_RCV_OK                          0x00020102
#define OID_GEN_XMIT_ERROR                      0x00020103
#define OID_GEN_RCV_ERROR                       0x00020104
#define OID_GEN_RCV_NO_BUFFER                   0x00020105

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
//
// mandatory for NDIS 6.0 and higher miniports
//
#define OID_GEN_STATISTICS                      0x00020106
#endif // (NTDDI_VERSION >= NTDDI_VISTA)


//
//  Optional statistics
//
#define OID_GEN_DIRECTED_BYTES_XMIT             0x00020201
#define OID_GEN_DIRECTED_FRAMES_XMIT            0x00020202
#define OID_GEN_MULTICAST_BYTES_XMIT            0x00020203
#define OID_GEN_MULTICAST_FRAMES_XMIT           0x00020204
#define OID_GEN_BROADCAST_BYTES_XMIT            0x00020205
#define OID_GEN_BROADCAST_FRAMES_XMIT           0x00020206
#define OID_GEN_DIRECTED_BYTES_RCV              0x00020207
#define OID_GEN_DIRECTED_FRAMES_RCV             0x00020208
#define OID_GEN_MULTICAST_BYTES_RCV             0x00020209
#define OID_GEN_MULTICAST_FRAMES_RCV            0x0002020A
#define OID_GEN_BROADCAST_BYTES_RCV             0x0002020B
#define OID_GEN_BROADCAST_FRAMES_RCV            0x0002020C
#define OID_GEN_RCV_CRC_ERROR                   0x0002020D
#define OID_GEN_TRANSMIT_QUEUE_LENGTH           0x0002020E

#define OID_GEN_GET_TIME_CAPS                   0x0002020F
#define OID_GEN_GET_NETCARD_TIME                0x00020210
#define OID_GEN_NETCARD_LOAD                    0x00020211
#define OID_GEN_DEVICE_PROFILE                  0x00020212

//
// The following are exported by NDIS itself and are only queryable. 
//

//
// the time in milliseconds a driver took to initialize.
//
#define OID_GEN_INIT_TIME_MS                    0x00020213

//
// the number of times the miniport adapter was reset
//
#define OID_GEN_RESET_COUNTS                    0x00020214

//
// the number of timer the miniport reported a media state change
//
#define OID_GEN_MEDIA_SENSE_COUNTS              0x00020215

//
// the friendly name of the adapter
//
#define OID_GEN_FRIENDLY_NAME                   0x00020216

//
// returns miniport information such as whether the driver is serialized or not
// if it supports sending multiple packets, etc. refer to NDIS_MINIPORT_XXX flags
//
#define OID_GEN_NDIS_RESERVED_1                 0x00020217

//
// handled by NDIS to reset the test verification paramters on the
// miniport
//
#define OID_GEN_NDIS_RESERVED_2                 0x00020218
#define OID_GEN_NDIS_RESERVED_5                 0x0001020C

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
//
// more optional OIDs new for NDIS 6.0
//

#define OID_GEN_BYTES_RCV                       0x00020219
#define OID_GEN_BYTES_XMIT                      0x0002021A
#define OID_GEN_RCV_DISCARDS                    0x0002021B
#define OID_GEN_XMIT_DISCARDS                   0x0002021C
#endif // (NTDDI_VERSION >= NTDDI_VISTA)


//
//  These are connection-oriented general OIDs.
//  These replace the above OIDs for connection-oriented media.
//
#define OID_GEN_CO_SUPPORTED_LIST               OID_GEN_SUPPORTED_LIST
#define OID_GEN_CO_HARDWARE_STATUS              OID_GEN_HARDWARE_STATUS
#define OID_GEN_CO_MEDIA_SUPPORTED              OID_GEN_MEDIA_SUPPORTED
#define OID_GEN_CO_MEDIA_IN_USE                 OID_GEN_MEDIA_IN_USE
#define OID_GEN_CO_LINK_SPEED                   OID_GEN_LINK_SPEED
#define OID_GEN_CO_VENDOR_ID                    OID_GEN_VENDOR_ID
#define OID_GEN_CO_VENDOR_DESCRIPTION           OID_GEN_VENDOR_DESCRIPTION
#define OID_GEN_CO_DRIVER_VERSION               OID_GEN_DRIVER_VERSION
#define OID_GEN_CO_PROTOCOL_OPTIONS             OID_GEN_PROTOCOL_OPTIONS
#define OID_GEN_CO_MAC_OPTIONS                  OID_GEN_MAC_OPTIONS
#define OID_GEN_CO_MEDIA_CONNECT_STATUS         OID_GEN_MEDIA_CONNECT_STATUS
#define OID_GEN_CO_VENDOR_DRIVER_VERSION        OID_GEN_VENDOR_DRIVER_VERSION
#define OID_GEN_CO_SUPPORTED_GUIDS              OID_GEN_SUPPORTED_GUIDS
#define OID_GEN_CO_GET_TIME_CAPS                OID_GEN_GET_TIME_CAPS
#define OID_GEN_CO_GET_NETCARD_TIME             OID_GEN_GET_NETCARD_TIME
#define OID_GEN_CO_MINIMUM_LINK_SPEED           0x00020120

//
//  These are connection-oriented statistics OIDs.
//
#define OID_GEN_CO_XMIT_PDUS_OK                 OID_GEN_XMIT_OK
#define OID_GEN_CO_RCV_PDUS_OK                  OID_GEN_RCV_OK
#define OID_GEN_CO_XMIT_PDUS_ERROR              OID_GEN_XMIT_ERROR
#define OID_GEN_CO_RCV_PDUS_ERROR               OID_GEN_RCV_ERROR
#define OID_GEN_CO_RCV_PDUS_NO_BUFFER           OID_GEN_RCV_NO_BUFFER


#define OID_GEN_CO_RCV_CRC_ERROR                OID_GEN_RCV_CRC_ERROR
#define OID_GEN_CO_TRANSMIT_QUEUE_LENGTH        OID_GEN_TRANSMIT_QUEUE_LENGTH
#define OID_GEN_CO_BYTES_XMIT                   OID_GEN_DIRECTED_BYTES_XMIT
#define OID_GEN_CO_BYTES_RCV                    OID_GEN_DIRECTED_BYTES_RCV
#define OID_GEN_CO_NETCARD_LOAD                 OID_GEN_NETCARD_LOAD
#define OID_GEN_CO_DEVICE_PROFILE               OID_GEN_DEVICE_PROFILE
#define OID_GEN_CO_BYTES_XMIT_OUTSTANDING       0x00020221


//
// 802.3 Objects (Ethernet)
//
#define OID_802_3_PERMANENT_ADDRESS             0x01010101
#define OID_802_3_CURRENT_ADDRESS               0x01010102
#define OID_802_3_MULTICAST_LIST                0x01010103
#define OID_802_3_MAXIMUM_LIST_SIZE             0x01010104
//
// This OID has been deprecated for NDIS 6 drivers. 
//
#define OID_802_3_MAC_OPTIONS                   0x01010105  // deprecated


//
// This Flag has been deprecated for NDIS 6 drivers.
//
#define NDIS_802_3_MAC_OPTION_PRIORITY          0x00000001  // deprecated

#define OID_802_3_RCV_ERROR_ALIGNMENT           0x01020101
#define OID_802_3_XMIT_ONE_COLLISION            0x01020102
#define OID_802_3_XMIT_MORE_COLLISIONS          0x01020103

#define OID_802_3_XMIT_DEFERRED                 0x01020201
#define OID_802_3_XMIT_MAX_COLLISIONS           0x01020202
#define OID_802_3_RCV_OVERRUN                   0x01020203
#define OID_802_3_XMIT_UNDERRUN                 0x01020204
#define OID_802_3_XMIT_HEARTBEAT_FAILURE        0x01020205
#define OID_802_3_XMIT_TIMES_CRS_LOST           0x01020206
#define OID_802_3_XMIT_LATE_COLLISIONS          0x01020207

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
//
// new for NDIS 6
//
#define OID_802_3_ADD_MULTICAST_ADDRESS         0x01010208
#define OID_802_3_DELETE_MULTICAST_ADDRESS      0x01010209
#endif // (NTDDI_VERSION >= NTDDI_VISTA)


//
// 802.5 Objects (Token-Ring)
//
#define OID_802_5_PERMANENT_ADDRESS             0x02010101
#define OID_802_5_CURRENT_ADDRESS               0x02010102
#define OID_802_5_CURRENT_FUNCTIONAL            0x02010103
#define OID_802_5_CURRENT_GROUP                 0x02010104
#define OID_802_5_LAST_OPEN_STATUS              0x02010105
#define OID_802_5_CURRENT_RING_STATUS           0x02010106
#define OID_802_5_CURRENT_RING_STATE            0x02010107


#define OID_802_5_LINE_ERRORS                   0x02020101
#define OID_802_5_LOST_FRAMES                   0x02020102

#define OID_802_5_BURST_ERRORS                  0x02020201
#define OID_802_5_AC_ERRORS                     0x02020202
#define OID_802_5_ABORT_DELIMETERS              0x02020203
#define OID_802_5_FRAME_COPIED_ERRORS           0x02020204
#define OID_802_5_FREQUENCY_ERRORS              0x02020205
#define OID_802_5_TOKEN_ERRORS                  0x02020206
#define OID_802_5_INTERNAL_ERRORS               0x02020207


//
// FDDI Objects
//
#define OID_FDDI_LONG_PERMANENT_ADDR            0x03010101
#define OID_FDDI_LONG_CURRENT_ADDR              0x03010102
#define OID_FDDI_LONG_MULTICAST_LIST            0x03010103
#define OID_FDDI_LONG_MAX_LIST_SIZE             0x03010104
#define OID_FDDI_SHORT_PERMANENT_ADDR           0x03010105
#define OID_FDDI_SHORT_CURRENT_ADDR             0x03010106
#define OID_FDDI_SHORT_MULTICAST_LIST           0x03010107
#define OID_FDDI_SHORT_MAX_LIST_SIZE            0x03010108

#define OID_FDDI_ATTACHMENT_TYPE                0x03020101
#define OID_FDDI_UPSTREAM_NODE_LONG             0x03020102
#define OID_FDDI_DOWNSTREAM_NODE_LONG           0x03020103
#define OID_FDDI_FRAME_ERRORS                   0x03020104
#define OID_FDDI_FRAMES_LOST                    0x03020105
#define OID_FDDI_RING_MGT_STATE                 0x03020106
#define OID_FDDI_LCT_FAILURES                   0x03020107
#define OID_FDDI_LEM_REJECTS                    0x03020108
#define OID_FDDI_LCONNECTION_STATE              0x03020109

#define OID_FDDI_SMT_STATION_ID                 0x03030201
#define OID_FDDI_SMT_OP_VERSION_ID              0x03030202
#define OID_FDDI_SMT_HI_VERSION_ID              0x03030203
#define OID_FDDI_SMT_LO_VERSION_ID              0x03030204
#define OID_FDDI_SMT_MANUFACTURER_DATA          0x03030205
#define OID_FDDI_SMT_USER_DATA                  0x03030206
#define OID_FDDI_SMT_MIB_VERSION_ID             0x03030207
#define OID_FDDI_SMT_MAC_CT                     0x03030208
#define OID_FDDI_SMT_NON_MASTER_CT              0x03030209
#define OID_FDDI_SMT_MASTER_CT                  0x0303020A
#define OID_FDDI_SMT_AVAILABLE_PATHS            0x0303020B
#define OID_FDDI_SMT_CONFIG_CAPABILITIES        0x0303020C
#define OID_FDDI_SMT_CONFIG_POLICY              0x0303020D
#define OID_FDDI_SMT_CONNECTION_POLICY          0x0303020E
#define OID_FDDI_SMT_T_NOTIFY                   0x0303020F
#define OID_FDDI_SMT_STAT_RPT_POLICY            0x03030210
#define OID_FDDI_SMT_TRACE_MAX_EXPIRATION       0x03030211
#define OID_FDDI_SMT_PORT_INDEXES               0x03030212
#define OID_FDDI_SMT_MAC_INDEXES                0x03030213
#define OID_FDDI_SMT_BYPASS_PRESENT             0x03030214
#define OID_FDDI_SMT_ECM_STATE                  0x03030215
#define OID_FDDI_SMT_CF_STATE                   0x03030216
#define OID_FDDI_SMT_HOLD_STATE                 0x03030217
#define OID_FDDI_SMT_REMOTE_DISCONNECT_FLAG     0x03030218
#define OID_FDDI_SMT_STATION_STATUS             0x03030219
#define OID_FDDI_SMT_PEER_WRAP_FLAG             0x0303021A
#define OID_FDDI_SMT_MSG_TIME_STAMP             0x0303021B
#define OID_FDDI_SMT_TRANSITION_TIME_STAMP      0x0303021C
#define OID_FDDI_SMT_SET_COUNT                  0x0303021D
#define OID_FDDI_SMT_LAST_SET_STATION_ID        0x0303021E
#define OID_FDDI_MAC_FRAME_STATUS_FUNCTIONS     0x0303021F
#define OID_FDDI_MAC_BRIDGE_FUNCTIONS           0x03030220
#define OID_FDDI_MAC_T_MAX_CAPABILITY           0x03030221
#define OID_FDDI_MAC_TVX_CAPABILITY             0x03030222
#define OID_FDDI_MAC_AVAILABLE_PATHS            0x03030223
#define OID_FDDI_MAC_CURRENT_PATH               0x03030224
#define OID_FDDI_MAC_UPSTREAM_NBR               0x03030225
#define OID_FDDI_MAC_DOWNSTREAM_NBR             0x03030226
#define OID_FDDI_MAC_OLD_UPSTREAM_NBR           0x03030227
#define OID_FDDI_MAC_OLD_DOWNSTREAM_NBR         0x03030228
#define OID_FDDI_MAC_DUP_ADDRESS_TEST           0x03030229
#define OID_FDDI_MAC_REQUESTED_PATHS            0x0303022A
#define OID_FDDI_MAC_DOWNSTREAM_PORT_TYPE       0x0303022B
#define OID_FDDI_MAC_INDEX                      0x0303022C
#define OID_FDDI_MAC_SMT_ADDRESS                0x0303022D
#define OID_FDDI_MAC_LONG_GRP_ADDRESS           0x0303022E
#define OID_FDDI_MAC_SHORT_GRP_ADDRESS          0x0303022F
#define OID_FDDI_MAC_T_REQ                      0x03030230
#define OID_FDDI_MAC_T_NEG                      0x03030231
#define OID_FDDI_MAC_T_MAX                      0x03030232
#define OID_FDDI_MAC_TVX_VALUE                  0x03030233
#define OID_FDDI_MAC_T_PRI0                     0x03030234
#define OID_FDDI_MAC_T_PRI1                     0x03030235
#define OID_FDDI_MAC_T_PRI2                     0x03030236
#define OID_FDDI_MAC_T_PRI3                     0x03030237
#define OID_FDDI_MAC_T_PRI4                     0x03030238
#define OID_FDDI_MAC_T_PRI5                     0x03030239
#define OID_FDDI_MAC_T_PRI6                     0x0303023A
#define OID_FDDI_MAC_FRAME_CT                   0x0303023B
#define OID_FDDI_MAC_COPIED_CT                  0x0303023C
#define OID_FDDI_MAC_TRANSMIT_CT                0x0303023D
#define OID_FDDI_MAC_TOKEN_CT                   0x0303023E
#define OID_FDDI_MAC_ERROR_CT                   0x0303023F
#define OID_FDDI_MAC_LOST_CT                    0x03030240
#define OID_FDDI_MAC_TVX_EXPIRED_CT             0x03030241
#define OID_FDDI_MAC_NOT_COPIED_CT              0x03030242
#define OID_FDDI_MAC_LATE_CT                    0x03030243
#define OID_FDDI_MAC_RING_OP_CT                 0x03030244
#define OID_FDDI_MAC_FRAME_ERROR_THRESHOLD      0x03030245
#define OID_FDDI_MAC_FRAME_ERROR_RATIO          0x03030246
#define OID_FDDI_MAC_NOT_COPIED_THRESHOLD       0x03030247
#define OID_FDDI_MAC_NOT_COPIED_RATIO           0x03030248
#define OID_FDDI_MAC_RMT_STATE                  0x03030249
#define OID_FDDI_MAC_DA_FLAG                    0x0303024A
#define OID_FDDI_MAC_UNDA_FLAG                  0x0303024B
#define OID_FDDI_MAC_FRAME_ERROR_FLAG           0x0303024C
#define OID_FDDI_MAC_NOT_COPIED_FLAG            0x0303024D
#define OID_FDDI_MAC_MA_UNITDATA_AVAILABLE      0x0303024E
#define OID_FDDI_MAC_HARDWARE_PRESENT           0x0303024F
#define OID_FDDI_MAC_MA_UNITDATA_ENABLE         0x03030250
#define OID_FDDI_PATH_INDEX                     0x03030251
#define OID_FDDI_PATH_RING_LATENCY              0x03030252
#define OID_FDDI_PATH_TRACE_STATUS              0x03030253
#define OID_FDDI_PATH_SBA_PAYLOAD               0x03030254
#define OID_FDDI_PATH_SBA_OVERHEAD              0x03030255
#define OID_FDDI_PATH_CONFIGURATION             0x03030256
#define OID_FDDI_PATH_T_R_MODE                  0x03030257
#define OID_FDDI_PATH_SBA_AVAILABLE             0x03030258
#define OID_FDDI_PATH_TVX_LOWER_BOUND           0x03030259
#define OID_FDDI_PATH_T_MAX_LOWER_BOUND         0x0303025A
#define OID_FDDI_PATH_MAX_T_REQ                 0x0303025B
#define OID_FDDI_PORT_MY_TYPE                   0x0303025C
#define OID_FDDI_PORT_NEIGHBOR_TYPE             0x0303025D
#define OID_FDDI_PORT_CONNECTION_POLICIES       0x0303025E
#define OID_FDDI_PORT_MAC_INDICATED             0x0303025F
#define OID_FDDI_PORT_CURRENT_PATH              0x03030260
#define OID_FDDI_PORT_REQUESTED_PATHS           0x03030261
#define OID_FDDI_PORT_MAC_PLACEMENT             0x03030262
#define OID_FDDI_PORT_AVAILABLE_PATHS           0x03030263
#define OID_FDDI_PORT_MAC_LOOP_TIME             0x03030264
#define OID_FDDI_PORT_PMD_CLASS                 0x03030265
#define OID_FDDI_PORT_CONNECTION_CAPABILITIES   0x03030266
#define OID_FDDI_PORT_INDEX                     0x03030267
#define OID_FDDI_PORT_MAINT_LS                  0x03030268
#define OID_FDDI_PORT_BS_FLAG                   0x03030269
#define OID_FDDI_PORT_PC_LS                     0x0303026A
#define OID_FDDI_PORT_EB_ERROR_CT               0x0303026B
#define OID_FDDI_PORT_LCT_FAIL_CT               0x0303026C
#define OID_FDDI_PORT_LER_ESTIMATE              0x0303026D
#define OID_FDDI_PORT_LEM_REJECT_CT             0x0303026E
#define OID_FDDI_PORT_LEM_CT                    0x0303026F
#define OID_FDDI_PORT_LER_CUTOFF                0x03030270
#define OID_FDDI_PORT_LER_ALARM                 0x03030271
#define OID_FDDI_PORT_CONNNECT_STATE            0x03030272
#define OID_FDDI_PORT_PCM_STATE                 0x03030273
#define OID_FDDI_PORT_PC_WITHHOLD               0x03030274
#define OID_FDDI_PORT_LER_FLAG                  0x03030275
#define OID_FDDI_PORT_HARDWARE_PRESENT          0x03030276
#define OID_FDDI_SMT_STATION_ACTION             0x03030277
#define OID_FDDI_PORT_ACTION                    0x03030278
#define OID_FDDI_IF_DESCR                       0x03030279
#define OID_FDDI_IF_TYPE                        0x0303027A
#define OID_FDDI_IF_MTU                         0x0303027B
#define OID_FDDI_IF_SPEED                       0x0303027C
#define OID_FDDI_IF_PHYS_ADDRESS                0x0303027D
#define OID_FDDI_IF_ADMIN_STATUS                0x0303027E
#define OID_FDDI_IF_OPER_STATUS                 0x0303027F
#define OID_FDDI_IF_LAST_CHANGE                 0x03030280
#define OID_FDDI_IF_IN_OCTETS                   0x03030281
#define OID_FDDI_IF_IN_UCAST_PKTS               0x03030282
#define OID_FDDI_IF_IN_NUCAST_PKTS              0x03030283
#define OID_FDDI_IF_IN_DISCARDS                 0x03030284
#define OID_FDDI_IF_IN_ERRORS                   0x03030285
#define OID_FDDI_IF_IN_UNKNOWN_PROTOS           0x03030286
#define OID_FDDI_IF_OUT_OCTETS                  0x03030287
#define OID_FDDI_IF_OUT_UCAST_PKTS              0x03030288
#define OID_FDDI_IF_OUT_NUCAST_PKTS             0x03030289
#define OID_FDDI_IF_OUT_DISCARDS                0x0303028A
#define OID_FDDI_IF_OUT_ERRORS                  0x0303028B
#define OID_FDDI_IF_OUT_QLEN                    0x0303028C
#define OID_FDDI_IF_SPECIFIC                    0x0303028D

//
// WAN objects
//
#define OID_WAN_PERMANENT_ADDRESS               0x04010101
#define OID_WAN_CURRENT_ADDRESS                 0x04010102
#define OID_WAN_QUALITY_OF_SERVICE              0x04010103
#define OID_WAN_PROTOCOL_TYPE                   0x04010104
#define OID_WAN_MEDIUM_SUBTYPE                  0x04010105
#define OID_WAN_HEADER_FORMAT                   0x04010106

#define OID_WAN_GET_INFO                        0x04010107
#define OID_WAN_SET_LINK_INFO                   0x04010108
#define OID_WAN_GET_LINK_INFO                   0x04010109

#define OID_WAN_LINE_COUNT                      0x0401010A
#define OID_WAN_PROTOCOL_CAPS                   0x0401010B

#define OID_WAN_GET_BRIDGE_INFO                 0x0401020A
#define OID_WAN_SET_BRIDGE_INFO                 0x0401020B
#define OID_WAN_GET_COMP_INFO                   0x0401020C
#define OID_WAN_SET_COMP_INFO                   0x0401020D
#define OID_WAN_GET_STATS_INFO                  0x0401020E

//
//  These are connection-oriented WAN OIDs.
//  These replace the above OIDs for CoNDIS WAN Miniports
//
#define OID_WAN_CO_GET_INFO                     0x04010180
#define OID_WAN_CO_SET_LINK_INFO                0x04010181
#define OID_WAN_CO_GET_LINK_INFO                0x04010182
#define OID_WAN_CO_GET_COMP_INFO                0x04010280
#define OID_WAN_CO_SET_COMP_INFO                0x04010281
#define OID_WAN_CO_GET_STATS_INFO               0x04010282


//
// LocalTalk objects
//
#define OID_LTALK_CURRENT_NODE_ID               0x05010102

#define OID_LTALK_IN_BROADCASTS                 0x05020101
#define OID_LTALK_IN_LENGTH_ERRORS              0x05020102

#define OID_LTALK_OUT_NO_HANDLERS               0x05020201
#define OID_LTALK_COLLISIONS                    0x05020202
#define OID_LTALK_DEFERS                        0x05020203
#define OID_LTALK_NO_DATA_ERRORS                0x05020204
#define OID_LTALK_RANDOM_CTS_ERRORS             0x05020205
#define OID_LTALK_FCS_ERRORS                    0x05020206


//
// Arcnet objects
//
#define OID_ARCNET_PERMANENT_ADDRESS            0x06010101
#define OID_ARCNET_CURRENT_ADDRESS              0x06010102

#define OID_ARCNET_RECONFIGURATIONS             0x06020201

//
// TAPI objects
//
#define OID_TAPI_ACCEPT                         0x07030101
#define OID_TAPI_ANSWER                         0x07030102
#define OID_TAPI_CLOSE                          0x07030103
#define OID_TAPI_CLOSE_CALL                     0x07030104
#define OID_TAPI_CONDITIONAL_MEDIA_DETECTION    0x07030105
#define OID_TAPI_CONFIG_DIALOG                  0x07030106
#define OID_TAPI_DEV_SPECIFIC                   0x07030107
#define OID_TAPI_DIAL                           0x07030108
#define OID_TAPI_DROP                           0x07030109
#define OID_TAPI_GET_ADDRESS_CAPS               0x0703010A
#define OID_TAPI_GET_ADDRESS_ID                 0x0703010B
#define OID_TAPI_GET_ADDRESS_STATUS             0x0703010C
#define OID_TAPI_GET_CALL_ADDRESS_ID            0x0703010D
#define OID_TAPI_GET_CALL_INFO                  0x0703010E
#define OID_TAPI_GET_CALL_STATUS                0x0703010F
#define OID_TAPI_GET_DEV_CAPS                   0x07030110
#define OID_TAPI_GET_DEV_CONFIG                 0x07030111
#define OID_TAPI_GET_EXTENSION_ID               0x07030112
#define OID_TAPI_GET_ID                         0x07030113
#define OID_TAPI_GET_LINE_DEV_STATUS            0x07030114
#define OID_TAPI_MAKE_CALL                      0x07030115
#define OID_TAPI_NEGOTIATE_EXT_VERSION          0x07030116
#define OID_TAPI_OPEN                           0x07030117
#define OID_TAPI_PROVIDER_INITIALIZE            0x07030118
#define OID_TAPI_PROVIDER_SHUTDOWN              0x07030119
#define OID_TAPI_SECURE_CALL                    0x0703011A
#define OID_TAPI_SELECT_EXT_VERSION             0x0703011B
#define OID_TAPI_SEND_USER_USER_INFO            0x0703011C
#define OID_TAPI_SET_APP_SPECIFIC               0x0703011D
#define OID_TAPI_SET_CALL_PARAMS                0x0703011E
#define OID_TAPI_SET_DEFAULT_MEDIA_DETECTION    0x0703011F
#define OID_TAPI_SET_DEV_CONFIG                 0x07030120
#define OID_TAPI_SET_MEDIA_MODE                 0x07030121
#define OID_TAPI_SET_STATUS_MESSAGES            0x07030122
#define OID_TAPI_GATHER_DIGITS                  0x07030123
#define OID_TAPI_MONITOR_DIGITS                 0x07030124

//
// ATM Connection Oriented OIDs
//
#define OID_ATM_SUPPORTED_VC_RATES              0x08010101
#define OID_ATM_SUPPORTED_SERVICE_CATEGORY      0x08010102
#define OID_ATM_SUPPORTED_AAL_TYPES             0x08010103
#define OID_ATM_HW_CURRENT_ADDRESS              0x08010104
#define OID_ATM_MAX_ACTIVE_VCS                  0x08010105
#define OID_ATM_MAX_ACTIVE_VCI_BITS             0x08010106
#define OID_ATM_MAX_ACTIVE_VPI_BITS             0x08010107
#define OID_ATM_MAX_AAL0_PACKET_SIZE            0x08010108
#define OID_ATM_MAX_AAL1_PACKET_SIZE            0x08010109
#define OID_ATM_MAX_AAL34_PACKET_SIZE           0x0801010A
#define OID_ATM_MAX_AAL5_PACKET_SIZE            0x0801010B

#define OID_ATM_SIGNALING_VPIVCI                0x08010201
#define OID_ATM_ASSIGNED_VPI                    0x08010202
#define OID_ATM_ACQUIRE_ACCESS_NET_RESOURCES    0x08010203
#define OID_ATM_RELEASE_ACCESS_NET_RESOURCES    0x08010204
#define OID_ATM_ILMI_VPIVCI                     0x08010205
#define OID_ATM_DIGITAL_BROADCAST_VPIVCI        0x08010206
#define OID_ATM_GET_NEAREST_FLOW                0x08010207
#define OID_ATM_ALIGNMENT_REQUIRED              0x08010208
#define OID_ATM_LECS_ADDRESS                    0x08010209
#define OID_ATM_SERVICE_ADDRESS                 0x0801020A

#define OID_ATM_CALL_PROCEEDING                 0x0801020B  // UNI 4.0
#define OID_ATM_CALL_ALERTING                   0x0801020C  // UNI 4.0
#define OID_ATM_PARTY_ALERTING                  0x0801020D  // UNI 4.0
#define OID_ATM_CALL_NOTIFY                     0x0801020E  // UNI 4.0

#define OID_ATM_MY_IP_NM_ADDRESS                0x0801020F


//
//  ATM specific statistics OIDs.
//
#define OID_ATM_RCV_CELLS_OK                    0x08020101
#define OID_ATM_XMIT_CELLS_OK                   0x08020102
#define OID_ATM_RCV_CELLS_DROPPED               0x08020103

#define OID_ATM_RCV_INVALID_VPI_VCI             0x08020201
#define OID_ATM_CELLS_HEC_ERROR                 0x08020202
#define OID_ATM_RCV_REASSEMBLY_ERROR            0x08020203


//
// IEEE 802.11 OIDs
//
#define OID_802_11_BSSID                        0x0D010101
#define OID_802_11_SSID                         0x0D010102
#define OID_802_11_NETWORK_TYPES_SUPPORTED      0x0D010203
#define OID_802_11_NETWORK_TYPE_IN_USE          0x0D010204
#define OID_802_11_TX_POWER_LEVEL               0x0D010205
#define OID_802_11_RSSI                         0x0D010206
#define OID_802_11_RSSI_TRIGGER                 0x0D010207
#define OID_802_11_INFRASTRUCTURE_MODE          0x0D010108
#define OID_802_11_FRAGMENTATION_THRESHOLD      0x0D010209
#define OID_802_11_RTS_THRESHOLD                0x0D01020A
#define OID_802_11_NUMBER_OF_ANTENNAS           0x0D01020B
#define OID_802_11_RX_ANTENNA_SELECTED          0x0D01020C
#define OID_802_11_TX_ANTENNA_SELECTED          0x0D01020D
#define OID_802_11_SUPPORTED_RATES              0x0D01020E
#define OID_802_11_DESIRED_RATES                0x0D010210
#define OID_802_11_CONFIGURATION                0x0D010211
#define OID_802_11_STATISTICS                   0x0D020212
#define OID_802_11_ADD_WEP                      0x0D010113
#define OID_802_11_REMOVE_WEP                   0x0D010114
#define OID_802_11_DISASSOCIATE                 0x0D010115
#define OID_802_11_POWER_MODE                   0x0D010216
#define OID_802_11_BSSID_LIST                   0x0D010217
#define OID_802_11_AUTHENTICATION_MODE          0x0D010118
#define OID_802_11_PRIVACY_FILTER               0x0D010119
#define OID_802_11_BSSID_LIST_SCAN              0x0D01011A
#define OID_802_11_WEP_STATUS                   0x0D01011B
// Renamed to reflect better the extended set of encryption status
#define OID_802_11_ENCRYPTION_STATUS            OID_802_11_WEP_STATUS
#define OID_802_11_RELOAD_DEFAULTS              0x0D01011C
// Added to allow key mapping and default keys
#define OID_802_11_ADD_KEY                      0x0D01011D
#define OID_802_11_REMOVE_KEY                   0x0D01011E
#define OID_802_11_ASSOCIATION_INFORMATION      0x0D01011F
#define OID_802_11_TEST                         0x0D010120
#define OID_802_11_MEDIA_STREAM_MODE            0x0D010121
#define OID_802_11_CAPABILITY                   0x0D010122
#define OID_802_11_PMKID                        0x0D010123
#define OID_802_11_NON_BCAST_SSID_LIST          0x0D010124
#define OID_802_11_RADIO_STATUS                 0x0D010125


//
// some of well known Ethernet frame types (in big endian notation)
//
#define NDIS_ETH_TYPE_IPV4              0x0800  // IPV4
#define NDIS_ETH_TYPE_ARP               0x0806  // ARP
#define NDIS_ETH_TYPE_IPV6              0x86dd  // IPV6
#define NDIS_ETH_TYPE_802_1X            0x888e  // 802.1x
#define NDIS_ETH_TYPE_802_1Q            0x8100  // 802.1p
#define NDIS_ETH_TYPE_SLOW_PROTOCOL     0x8809  // Slow protocols (LACP, etc.)

#define NDIS_802_11_LENGTH_SSID         32
#define NDIS_802_11_LENGTH_RATES        8
#define NDIS_802_11_LENGTH_RATES_EX     16

//
// IEEE 802.11 Structures and definitions
//
// new types for Media Specific Indications
typedef enum _NDIS_802_11_STATUS_TYPE
{
    Ndis802_11StatusType_Authentication,
    Ndis802_11StatusType_MediaStreamMode,
    Ndis802_11StatusType_PMKID_CandidateList,
    Ndis802_11StatusTypeMax    // not a real type, defined as an upper bound
} NDIS_802_11_STATUS_TYPE, *PNDIS_802_11_STATUS_TYPE;

typedef UCHAR   NDIS_802_11_MAC_ADDRESS[6];

typedef struct _NDIS_802_11_STATUS_INDICATION
{
    NDIS_802_11_STATUS_TYPE StatusType;
} NDIS_802_11_STATUS_INDICATION, *PNDIS_802_11_STATUS_INDICATION;

// mask for authentication/integrity fields
#define NDIS_802_11_AUTH_REQUEST_AUTH_FIELDS		0x0f

#define NDIS_802_11_AUTH_REQUEST_REAUTH				0x01
#define NDIS_802_11_AUTH_REQUEST_KEYUPDATE			0x02
#define NDIS_802_11_AUTH_REQUEST_PAIRWISE_ERROR		0x06
#define NDIS_802_11_AUTH_REQUEST_GROUP_ERROR		0x0E

typedef struct _NDIS_802_11_AUTHENTICATION_REQUEST
{
    ULONG Length;            // Length of structure
    NDIS_802_11_MAC_ADDRESS Bssid;
    ULONG Flags;
} NDIS_802_11_AUTHENTICATION_REQUEST, *PNDIS_802_11_AUTHENTICATION_REQUEST;

//Added new types for PMKID Candidate lists.
typedef struct _PMKID_CANDIDATE {
    NDIS_802_11_MAC_ADDRESS BSSID;
    ULONG Flags;
} PMKID_CANDIDATE, *PPMKID_CANDIDATE;

typedef struct _NDIS_802_11_PMKID_CANDIDATE_LIST
{
    ULONG Version;       // Version of the structure
    ULONG NumCandidates; // No. of pmkid candidates
    PMKID_CANDIDATE CandidateList[1];
} NDIS_802_11_PMKID_CANDIDATE_LIST, *PNDIS_802_11_PMKID_CANDIDATE_LIST;

//Flags for PMKID Candidate list structure
#define NDIS_802_11_PMKID_CANDIDATE_PREAUTH_ENABLED	0x01

// Added new types for OFDM 5G and 2.4G
typedef enum _NDIS_802_11_NETWORK_TYPE
{
    Ndis802_11FH,
    Ndis802_11DS,
    Ndis802_11OFDM5,
    Ndis802_11OFDM24,
    Ndis802_11Automode,
    Ndis802_11NetworkTypeMax    // not a real type, defined as an upper bound
} NDIS_802_11_NETWORK_TYPE, *PNDIS_802_11_NETWORK_TYPE;

typedef struct _NDIS_802_11_NETWORK_TYPE_LIST
{
    ULONG                       NumberOfItems;  // in list below, at least 1
    NDIS_802_11_NETWORK_TYPE    NetworkType [1];
} NDIS_802_11_NETWORK_TYPE_LIST, *PNDIS_802_11_NETWORK_TYPE_LIST;

typedef enum _NDIS_802_11_POWER_MODE
{
    Ndis802_11PowerModeCAM,
    Ndis802_11PowerModeMAX_PSP,
    Ndis802_11PowerModeFast_PSP,
    Ndis802_11PowerModeMax      // not a real mode, defined as an upper bound
} NDIS_802_11_POWER_MODE, *PNDIS_802_11_POWER_MODE;

typedef ULONG   NDIS_802_11_TX_POWER_LEVEL; // in milliwatts

//
// Received Signal Strength Indication
//
typedef LONG   NDIS_802_11_RSSI;           // in dBm

typedef struct _NDIS_802_11_CONFIGURATION_FH
{
    ULONG           Length;             // Length of structure
    ULONG           HopPattern;         // As defined by 802.11, MSB set
    ULONG           HopSet;             // to one if non-802.11
    ULONG           DwellTime;          // units are Kusec
} NDIS_802_11_CONFIGURATION_FH, *PNDIS_802_11_CONFIGURATION_FH;

typedef struct _NDIS_802_11_CONFIGURATION
{
    ULONG           Length;             // Length of structure
    ULONG           BeaconPeriod;       // units are Kusec
    ULONG           ATIMWindow;         // units are Kusec
    ULONG           DSConfig;           // Frequency, units are kHz
    NDIS_802_11_CONFIGURATION_FH    FHConfig;
} NDIS_802_11_CONFIGURATION, *PNDIS_802_11_CONFIGURATION;

typedef struct _NDIS_802_11_STATISTICS
{
    ULONG           Length;             // Length of structure
    LARGE_INTEGER   TransmittedFragmentCount;
    LARGE_INTEGER   MulticastTransmittedFrameCount;
    LARGE_INTEGER   FailedCount;
    LARGE_INTEGER   RetryCount;
    LARGE_INTEGER   MultipleRetryCount;
    LARGE_INTEGER   RTSSuccessCount;
    LARGE_INTEGER   RTSFailureCount;
    LARGE_INTEGER   ACKFailureCount;
    LARGE_INTEGER   FrameDuplicateCount;
    LARGE_INTEGER   ReceivedFragmentCount;
    LARGE_INTEGER   MulticastReceivedFrameCount;
    LARGE_INTEGER   FCSErrorCount;
    LARGE_INTEGER   TKIPLocalMICFailures;
    LARGE_INTEGER   TKIPICVErrorCount;
    LARGE_INTEGER   TKIPCounterMeasuresInvoked;
    LARGE_INTEGER   TKIPReplays;
    LARGE_INTEGER   CCMPFormatErrors;
    LARGE_INTEGER   CCMPReplays;
    LARGE_INTEGER   CCMPDecryptErrors;
    LARGE_INTEGER   FourWayHandshakeFailures;
    LARGE_INTEGER   WEPUndecryptableCount;
    LARGE_INTEGER   WEPICVErrorCount;
    LARGE_INTEGER   DecryptSuccessCount;
    LARGE_INTEGER   DecryptFailureCount;
} NDIS_802_11_STATISTICS, *PNDIS_802_11_STATISTICS;

typedef  ULONG  NDIS_802_11_KEY_INDEX;
typedef ULONGLONG   NDIS_802_11_KEY_RSC;

// Key mapping keys require a BSSID
typedef struct _NDIS_802_11_KEY
{
    ULONG           Length;             // Length of this structure
    ULONG           KeyIndex;
    ULONG           KeyLength;          // length of key in bytes
    NDIS_802_11_MAC_ADDRESS BSSID;
    NDIS_802_11_KEY_RSC KeyRSC;
    UCHAR           KeyMaterial[1];     // variable length depending on above field
} NDIS_802_11_KEY, *PNDIS_802_11_KEY;

typedef struct _NDIS_802_11_REMOVE_KEY
{
    ULONG           Length;             // Length of this structure
    ULONG           KeyIndex;
    NDIS_802_11_MAC_ADDRESS BSSID;
} NDIS_802_11_REMOVE_KEY, *PNDIS_802_11_REMOVE_KEY;

typedef struct _NDIS_802_11_WEP
{
    ULONG           Length;             // Length of this structure
    ULONG           KeyIndex;           // 0 is the per-client key, 1-N are the
                                        // global keys
    ULONG           KeyLength;          // length of key in bytes
    UCHAR           KeyMaterial[1];     // variable length depending on above field
} NDIS_802_11_WEP, *PNDIS_802_11_WEP;


typedef enum _NDIS_802_11_NETWORK_INFRASTRUCTURE
{
    Ndis802_11IBSS,
    Ndis802_11Infrastructure,
    Ndis802_11AutoUnknown,
    Ndis802_11InfrastructureMax         // Not a real value, defined as upper bound
} NDIS_802_11_NETWORK_INFRASTRUCTURE, *PNDIS_802_11_NETWORK_INFRASTRUCTURE;

// Add new authentication modes
typedef enum _NDIS_802_11_AUTHENTICATION_MODE
{
    Ndis802_11AuthModeOpen,
    Ndis802_11AuthModeShared,
    Ndis802_11AuthModeAutoSwitch,
    Ndis802_11AuthModeWPA,
    Ndis802_11AuthModeWPAPSK,
    Ndis802_11AuthModeWPANone,
    Ndis802_11AuthModeWPA2,
    Ndis802_11AuthModeWPA2PSK,
    Ndis802_11AuthModeMax               // Not a real mode, defined as upper bound
} NDIS_802_11_AUTHENTICATION_MODE, *PNDIS_802_11_AUTHENTICATION_MODE;

typedef UCHAR   NDIS_802_11_RATES[NDIS_802_11_LENGTH_RATES];        // Set of 8 data rates
typedef UCHAR   NDIS_802_11_RATES_EX[NDIS_802_11_LENGTH_RATES_EX];  // Set of 16 data rates

typedef struct _NDIS_802_11_SSID
{
    ULONG   SsidLength;         // length of SSID field below, in bytes;
                                // this can be zero.
    UCHAR   Ssid[NDIS_802_11_LENGTH_SSID];           // SSID information field
} NDIS_802_11_SSID, *PNDIS_802_11_SSID;


typedef struct _NDIS_WLAN_BSSID
{
    ULONG                               Length;             // Length of this structure
    NDIS_802_11_MAC_ADDRESS             MacAddress;         // BSSID
    UCHAR                               Reserved[2];
    NDIS_802_11_SSID                    Ssid;               // SSID
    ULONG                               Privacy;            // WEP encryption requirement
    NDIS_802_11_RSSI                    Rssi;               // receive signal
                                                            // strength in dBm
    NDIS_802_11_NETWORK_TYPE            NetworkTypeInUse;
    NDIS_802_11_CONFIGURATION           Configuration;
    NDIS_802_11_NETWORK_INFRASTRUCTURE  InfrastructureMode;
    NDIS_802_11_RATES                   SupportedRates;
} NDIS_WLAN_BSSID, *PNDIS_WLAN_BSSID;

typedef struct _NDIS_802_11_BSSID_LIST
{
    ULONG           NumberOfItems;      // in list below, at least 1
    NDIS_WLAN_BSSID Bssid[1];
} NDIS_802_11_BSSID_LIST, *PNDIS_802_11_BSSID_LIST;

// Added Capabilities, IELength and IEs for each BSSID
typedef struct _NDIS_WLAN_BSSID_EX
{
    ULONG                               Length;             // Length of this structure
    NDIS_802_11_MAC_ADDRESS             MacAddress;         // BSSID
    UCHAR                               Reserved[2];
    NDIS_802_11_SSID                    Ssid;               // SSID
    ULONG                               Privacy;            // WEP encryption requirement
    NDIS_802_11_RSSI                    Rssi;               // receive signal
                                                            // strength in dBm
    NDIS_802_11_NETWORK_TYPE            NetworkTypeInUse;
    NDIS_802_11_CONFIGURATION           Configuration;
    NDIS_802_11_NETWORK_INFRASTRUCTURE  InfrastructureMode;
    NDIS_802_11_RATES_EX                SupportedRates;
    ULONG                               IELength;
    UCHAR                               IEs[1];
} NDIS_WLAN_BSSID_EX, *PNDIS_WLAN_BSSID_EX;

typedef struct _NDIS_802_11_BSSID_LIST_EX
{
    ULONG           NumberOfItems;      // in list below, at least 1
    NDIS_WLAN_BSSID_EX Bssid[1];
} NDIS_802_11_BSSID_LIST_EX, *PNDIS_802_11_BSSID_LIST_EX;

typedef struct _NDIS_802_11_FIXED_IEs
{
	UCHAR Timestamp[8];
	USHORT BeaconInterval;
	USHORT Capabilities;
} NDIS_802_11_FIXED_IEs, *PNDIS_802_11_FIXED_IEs;

typedef struct _NDIS_802_11_VARIABLE_IEs
{
	UCHAR ElementID;
	UCHAR Length;	// Number of bytes in data field
	UCHAR data[1];
} NDIS_802_11_VARIABLE_IEs, *PNDIS_802_11_VARIABLE_IEs;

typedef  ULONG   NDIS_802_11_FRAGMENTATION_THRESHOLD;

typedef  ULONG   NDIS_802_11_RTS_THRESHOLD;

typedef  ULONG   NDIS_802_11_ANTENNA;

typedef enum _NDIS_802_11_PRIVACY_FILTER
{
    Ndis802_11PrivFilterAcceptAll,
    Ndis802_11PrivFilter8021xWEP
} NDIS_802_11_PRIVACY_FILTER, *PNDIS_802_11_PRIVACY_FILTER;

// Added new encryption types
// Also aliased typedef to new name
typedef enum _NDIS_802_11_WEP_STATUS
{
    Ndis802_11WEPEnabled,
    Ndis802_11Encryption1Enabled = Ndis802_11WEPEnabled,
    Ndis802_11WEPDisabled,
    Ndis802_11EncryptionDisabled = Ndis802_11WEPDisabled,
    Ndis802_11WEPKeyAbsent,
    Ndis802_11Encryption1KeyAbsent = Ndis802_11WEPKeyAbsent,
    Ndis802_11WEPNotSupported,
    Ndis802_11EncryptionNotSupported = Ndis802_11WEPNotSupported,
    Ndis802_11Encryption2Enabled,
    Ndis802_11Encryption2KeyAbsent,
    Ndis802_11Encryption3Enabled,
    Ndis802_11Encryption3KeyAbsent
} NDIS_802_11_WEP_STATUS, *PNDIS_802_11_WEP_STATUS,
  NDIS_802_11_ENCRYPTION_STATUS, *PNDIS_802_11_ENCRYPTION_STATUS;

typedef enum _NDIS_802_11_RELOAD_DEFAULTS
{
    Ndis802_11ReloadWEPKeys
} NDIS_802_11_RELOAD_DEFAULTS, *PNDIS_802_11_RELOAD_DEFAULTS;

#define NDIS_802_11_AI_REQFI_CAPABILITIES      1
#define NDIS_802_11_AI_REQFI_LISTENINTERVAL    2
#define NDIS_802_11_AI_REQFI_CURRENTAPADDRESS  4

#define NDIS_802_11_AI_RESFI_CAPABILITIES      1
#define NDIS_802_11_AI_RESFI_STATUSCODE        2
#define NDIS_802_11_AI_RESFI_ASSOCIATIONID     4

typedef struct _NDIS_802_11_AI_REQFI
{
    USHORT Capabilities;
    USHORT ListenInterval;
    NDIS_802_11_MAC_ADDRESS  CurrentAPAddress;
} NDIS_802_11_AI_REQFI, *PNDIS_802_11_AI_REQFI;

typedef struct _NDIS_802_11_AI_RESFI
{
    USHORT Capabilities;
    USHORT StatusCode;
    USHORT AssociationId;
} NDIS_802_11_AI_RESFI, *PNDIS_802_11_AI_RESFI;

typedef struct _NDIS_802_11_ASSOCIATION_INFORMATION
{
    ULONG Length;
    USHORT AvailableRequestFixedIEs;
    NDIS_802_11_AI_REQFI    RequestFixedIEs;
    ULONG RequestIELength;
    ULONG OffsetRequestIEs;
    USHORT AvailableResponseFixedIEs;
    NDIS_802_11_AI_RESFI    ResponseFixedIEs;
    ULONG ResponseIELength;
    ULONG OffsetResponseIEs;
} NDIS_802_11_ASSOCIATION_INFORMATION, *PNDIS_802_11_ASSOCIATION_INFORMATION;

typedef struct _NDIS_802_11_AUTHENTICATION_EVENT
{
    NDIS_802_11_STATUS_INDICATION       Status;
    NDIS_802_11_AUTHENTICATION_REQUEST  Request[1];
} NDIS_802_11_AUTHENTICATION_EVENT, *PNDIS_802_11_AUTHENTICATION_EVENT;

typedef struct _NDIS_802_11_TEST
{
    ULONG Length;
    ULONG Type;
    union
    {
        NDIS_802_11_AUTHENTICATION_EVENT AuthenticationEvent;
        NDIS_802_11_RSSI RssiTrigger;
    };
} NDIS_802_11_TEST, *PNDIS_802_11_TEST;

// 802.11 Media stream constraints, associated with OID_802_11_MEDIA_STREAM_MODE
typedef enum _NDIS_802_11_MEDIA_STREAM_MODE
{
    Ndis802_11MediaStreamOff,
    Ndis802_11MediaStreamOn,
} NDIS_802_11_MEDIA_STREAM_MODE, *PNDIS_802_11_MEDIA_STREAM_MODE;

// PMKID Structures
typedef UCHAR   NDIS_802_11_PMKID_VALUE[16];

typedef struct _BSSID_INFO
{
    NDIS_802_11_MAC_ADDRESS BSSID;
    NDIS_802_11_PMKID_VALUE PMKID;
} BSSID_INFO, *PBSSID_INFO;

typedef struct _NDIS_802_11_PMKID
{
    ULONG Length;
    ULONG BSSIDInfoCount;
    BSSID_INFO BSSIDInfo[1];
} NDIS_802_11_PMKID, *PNDIS_802_11_PMKID;

typedef struct _NDIS_802_11_AUTHENTICATION_ENCRYPTION
{
    NDIS_802_11_AUTHENTICATION_MODE AuthModeSupported;
    NDIS_802_11_ENCRYPTION_STATUS EncryptStatusSupported;
} NDIS_802_11_AUTHENTICATION_ENCRYPTION, *PNDIS_802_11_AUTHENTICATION_ENCRYPTION;

typedef struct _NDIS_802_11_CAPABILITY
{
    ULONG Length;
    ULONG Version;
    ULONG NoOfPMKIDs;
    ULONG NoOfAuthEncryptPairsSupported;
    NDIS_802_11_AUTHENTICATION_ENCRYPTION AuthenticationEncryptionSupported[1];
} NDIS_802_11_CAPABILITY, *PNDIS_802_11_CAPABILITY;

typedef struct _NDIS_802_11_NON_BCAST_SSID_LIST
{
    ULONG               NumberOfItems;
    NDIS_802_11_SSID    Non_Bcast_Ssid[1];
} NDIS_802_11_NON_BCAST_SSID_LIST, *PNDIS_802_11_NON_BCAST_SSID_LIST;

// for OID_802_11_RADIO_STATUS
typedef enum _NDIS_802_11_RADIO_STATUS
{
    Ndis802_11RadioStatusOn,
    Ndis802_11RadioStatusHardwareOff,
    Ndis802_11RadioStatusSoftwareOff,
    Ndis802_11RadioStatusHardwareSoftwareOff,
    Ndis802_11RadioStatusMax      // not a real mode, defined as an upper bound
}
NDIS_802_11_RADIO_STATUS, *PNDIS_802_11_RADIO_STATUS;

//
// IRDA objects
//
#define OID_IRDA_RECEIVING                      0x0A010100
#define OID_IRDA_TURNAROUND_TIME                0x0A010101
#define OID_IRDA_SUPPORTED_SPEEDS               0x0A010102
#define OID_IRDA_LINK_SPEED                     0x0A010103
#define OID_IRDA_MEDIA_BUSY                     0x0A010104

#define OID_IRDA_EXTRA_RCV_BOFS                 0x0A010200
#define OID_IRDA_RATE_SNIFF                     0x0A010201
#define OID_IRDA_UNICAST_LIST                   0x0A010202
#define OID_IRDA_MAX_UNICAST_LIST_SIZE          0x0A010203
#define OID_IRDA_MAX_RECEIVE_WINDOW_SIZE        0x0A010204
#define OID_IRDA_MAX_SEND_WINDOW_SIZE           0x0A010205
#define OID_IRDA_RESERVED1                      0x0A01020A  // The range between OID_IRDA_RESERVED1
#define OID_IRDA_RESERVED2                      0x0A01020F  // and OID_IRDA_RESERVED2 is reserved


//
// IEEE1394 mandatory general OIDs.
//
#define OID_1394_LOCAL_NODE_INFO                0x0C010101
#define OID_1394_VC_INFO                        0x0C010102

//
// The following OIDs are not specific to a media.
//

//
// These are objects for Connection-oriented media call-managers.
//
#define OID_CO_ADD_PVC                          0xFE000001
#define OID_CO_DELETE_PVC                       0xFE000002
#define OID_CO_GET_CALL_INFORMATION             0xFE000003
#define OID_CO_ADD_ADDRESS                      0xFE000004
#define OID_CO_DELETE_ADDRESS                   0xFE000005
#define OID_CO_GET_ADDRESSES                    0xFE000006
#define OID_CO_ADDRESS_CHANGE                   0xFE000007
#define OID_CO_SIGNALING_ENABLED                0xFE000008
#define OID_CO_SIGNALING_DISABLED               0xFE000009
#define OID_CO_AF_CLOSE                         0xFE00000A

//
// Objects for call-managers and MCMs that support TAPI access.
//
#define OID_CO_TAPI_CM_CAPS                     0xFE001001
#define OID_CO_TAPI_LINE_CAPS                   0xFE001002
#define OID_CO_TAPI_ADDRESS_CAPS                0xFE001003
#define OID_CO_TAPI_TRANSLATE_TAPI_CALLPARAMS   0xFE001004
#define OID_CO_TAPI_TRANSLATE_NDIS_CALLPARAMS   0xFE001005
#define OID_CO_TAPI_TRANSLATE_TAPI_SAP          0xFE001006
#define OID_CO_TAPI_GET_CALL_DIAGNOSTICS        0xFE001007
#define OID_CO_TAPI_REPORT_DIGITS               0xFE001008
#define OID_CO_TAPI_DONT_REPORT_DIGITS          0xFE001009

//
//  PnP and PM OIDs
//
#define OID_PNP_CAPABILITIES                    0xFD010100
#define OID_PNP_SET_POWER                       0xFD010101
#define OID_PNP_QUERY_POWER                     0xFD010102
#define OID_PNP_ADD_WAKE_UP_PATTERN             0xFD010103
#define OID_PNP_REMOVE_WAKE_UP_PATTERN          0xFD010104
#define OID_PNP_WAKE_UP_PATTERN_LIST            0xFD010105
#define OID_PNP_ENABLE_WAKE_UP                  0xFD010106

//
//  PnP/PM Statistics (Optional).
//
#define OID_PNP_WAKE_UP_OK                      0xFD020200
#define OID_PNP_WAKE_UP_ERROR                   0xFD020201

#if ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)
//
// new power management OIDs for NDIS 6.20 drivers
//

#define OID_PM_CURRENT_CAPABILITIES             0xFD010107
#define OID_PM_HARDWARE_CAPABILITIES            0xFD010108
#define OID_PM_PARAMETERS                       0xFD010109
#define OID_PM_ADD_WOL_PATTERN                  0xFD01010A
#define OID_PM_REMOVE_WOL_PATTERN               0xFD01010B
#define OID_PM_WOL_PATTERN_LIST                 0xFD01010C
#define OID_PM_ADD_PROTOCOL_OFFLOAD             0xFD01010D 
#define OID_PM_GET_PROTOCOL_OFFLOAD             0xFD01010E 
#define OID_PM_REMOVE_PROTOCOL_OFFLOAD          0xFD01010F
#define OID_PM_PROTOCOL_OFFLOAD_LIST            0xFD010110

//
// new NDIS 6.20 OIDs for generic packet filtering
//
#define OID_RECEIVE_FILTER_HARDWARE_CAPABILITIES        0x00010221  // query only
#define OID_RECEIVE_FILTER_GLOBAL_PARAMETERS            0x00010222  // query only
#define OID_RECEIVE_FILTER_ALLOCATE_QUEUE               0x00010223  // method only
#define OID_RECEIVE_FILTER_FREE_QUEUE                   0x00010224  // set only 
#define OID_RECEIVE_FILTER_ENUM_QUEUES                  0x00010225  // query only
#define OID_RECEIVE_FILTER_QUEUE_PARAMETERS             0x00010226  // method and set
#define OID_RECEIVE_FILTER_SET_FILTER                   0x00010227  // method only
#define OID_RECEIVE_FILTER_CLEAR_FILTER                 0x00010228  // set only
#define OID_RECEIVE_FILTER_ENUM_FILTERS                 0x00010229  // method only
#define OID_RECEIVE_FILTER_PARAMETERS                   0x0001022A  // method only
#define OID_RECEIVE_FILTER_QUEUE_ALLOCATION_COMPLETE    0x0001022B  // method only
#define OID_RECEIVE_FILTER_CURRENT_CAPABILITIES         0x0001022D  // query only
#define OID_NIC_SWITCH_HARDWARE_CAPABILITIES            0x0001022E  // query only
#define OID_NIC_SWITCH_CURRENT_CAPABILITIES             0x0001022F  // query only


#define OID_VLAN_RESERVED1                              0x00010231  
#define OID_VLAN_RESERVED2                              0x00010232  
#define OID_VLAN_RESERVED3                              0x00010233  
#define OID_VLAN_RESERVED4                              0x00010234  

#endif // ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)


//
//  The following bits are defined for OID_PNP_ENABLE_WAKE_UP
//
#define NDIS_PNP_WAKE_UP_MAGIC_PACKET           0x00000001
#define NDIS_PNP_WAKE_UP_PATTERN_MATCH          0x00000002
#define NDIS_PNP_WAKE_UP_LINK_CHANGE            0x00000004

//
//  TCP/IP OIDs
//
#define OID_TCP_TASK_OFFLOAD                    0xFC010201
#define OID_TCP_TASK_IPSEC_ADD_SA               0xFC010202
#define OID_TCP_TASK_IPSEC_DELETE_SA            0xFC010203
#define OID_TCP_SAN_SUPPORT                     0xFC010204
#define OID_TCP_TASK_IPSEC_ADD_UDPESP_SA        0xFC010205
#define OID_TCP_TASK_IPSEC_DELETE_UDPESP_SA     0xFC010206
#define OID_TCP4_OFFLOAD_STATS                  0xFC010207
#define OID_TCP6_OFFLOAD_STATS                  0xFC010208
#define OID_IP4_OFFLOAD_STATS                   0xFC010209
#define OID_IP6_OFFLOAD_STATS                   0xFC01020A

//
// new offload OIDs for NDIS 6
//
#define OID_TCP_OFFLOAD_CURRENT_CONFIG          0xFC01020B          // query only, handled by NDIS
#define OID_TCP_OFFLOAD_PARAMETERS              0xFC01020C          // set only
#define OID_TCP_OFFLOAD_HARDWARE_CAPABILITIES   0xFC01020D          // query only
#define OID_TCP_CONNECTION_OFFLOAD_CURRENT_CONFIG 0xFC01020E        // query only
#define OID_TCP_CONNECTION_OFFLOAD_HARDWARE_CAPABILITIES 0xFC01020F // query only
#define OID_OFFLOAD_ENCAPSULATION               0x0101010A

#if (NDIS_SUPPORT_NDIS61)
//
// IPsec Task offload V2 OIDs
//
#define OID_TCP_TASK_IPSEC_OFFLOAD_V2_ADD_SA    0xFC030202
#define OID_TCP_TASK_IPSEC_OFFLOAD_V2_DELETE_SA 0xFC030203
#define OID_TCP_TASK_IPSEC_OFFLOAD_V2_UPDATE_SA 0xFC030204
#endif // (NDIS_SUPPORT_NDIS61)

//
//  Defines for FFP, obsolete
//
#define OID_FFP_SUPPORT                         0xFC010210
#define OID_FFP_FLUSH                           0xFC010211
#define OID_FFP_CONTROL                         0xFC010212
#define OID_FFP_PARAMS                          0xFC010213
#define OID_FFP_DATA                            0xFC010214

#define OID_FFP_DRIVER_STATS                    0xFC020210
#define OID_FFP_ADAPTER_STATS                   0xFC020211


//
// TCP Connection offload OID
//
#define OID_TCP_CONNECTION_OFFLOAD_PARAMETERS   0xFC030201

#if ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)
//
// New Tunnel driver direct OIDs for NDIS 6.20
//
#define OID_TUNNEL_INTERFACE_SET_OID            0x0f010106
#define OID_TUNNEL_INTERFACE_RELEASE_OID        0x0f010107
#endif // ((NTDDI_VERSION >= NTDDI_WIN7) || NDIS_SUPPORT_NDIS620)


//
//  Defines for QOS
//
#define OID_QOS_RESERVED1                       0xFB010100
#define OID_QOS_RESERVED2                       0xFB010101
#define OID_QOS_RESERVED3                       0xFB010102
#define OID_QOS_RESERVED4                       0xFB010103
#define OID_QOS_RESERVED5                       0xFB010104
#define OID_QOS_RESERVED6                       0xFB010105
#define OID_QOS_RESERVED7                       0xFB010106
#define OID_QOS_RESERVED8                       0xFB010107
#define OID_QOS_RESERVED9                       0xFB010108
#define OID_QOS_RESERVED10                      0xFB010109
#define OID_QOS_RESERVED11                      0xFB01010A
#define OID_QOS_RESERVED12                      0xFB01010B
#define OID_QOS_RESERVED13                      0xFB01010C
#define OID_QOS_RESERVED14                      0xFB01010D
#define OID_QOS_RESERVED15                      0xFB01010E
#define OID_QOS_RESERVED16                      0xFB01010F
#define OID_QOS_RESERVED17                      0xFB010110
#define OID_QOS_RESERVED18                      0xFB010111
#define OID_QOS_RESERVED19                      0xFB010112
#define OID_QOS_RESERVED20                      0xFB010113


//
// NDIS Proxy OID_GEN_CO_DEVICE_PROFILE structure. The optional OID and
// this structure is a generic means of describing a CO device's
// capabilites, and is used by the NDIS Proxy to construct a TAPI device
// capabilities structure.
//
typedef struct NDIS_CO_DEVICE_PROFILE
{
    NDIS_VAR_DATA_DESC  DeviceDescription;  // e.g. 'GigabitATMNet'
    NDIS_VAR_DATA_DESC  DevSpecificInfo;    // special features

    ULONG   ulTAPISupplementaryPassThru;// reserved in NT5
    ULONG   ulAddressModes;
    ULONG   ulNumAddresses;
    ULONG   ulBearerModes;
    ULONG   ulMaxTxRate; // bytes per second
    ULONG   ulMinTxRate; // bytes per second
    ULONG   ulMaxRxRate; // bytes per second
    ULONG   ulMinRxRate; // bytes per second
    ULONG   ulMediaModes;

    //
    // Tone/digit generation and recognition capabilities
    //
    ULONG   ulGenerateToneModes;
    ULONG   ulGenerateToneMaxNumFreq;
    ULONG   ulGenerateDigitModes;
    ULONG   ulMonitorToneMaxNumFreq;
    ULONG   ulMonitorToneMaxNumEntries;
    ULONG   ulMonitorDigitModes;
    ULONG   ulGatherDigitsMinTimeout;// milliseconds
    ULONG   ulGatherDigitsMaxTimeout;// milliseconds

    ULONG   ulDevCapFlags;          // Misc. capabilities
    ULONG   ulMaxNumActiveCalls;    // (This * ulMinRate) = total bandwidth (which may equal ulMaxRate)
    ULONG   ulAnswerMode;           // Effect of answering a new call when an
                                    // existing call is non-idle
    //
    // User-User info sizes allowed to accompany each operation
    //
    ULONG   ulUUIAcceptSize;    // bytes
    ULONG   ulUUIAnswerSize;    // bytes
    ULONG   ulUUIMakeCallSize;  // bytes
    ULONG   ulUUIDropSize;      // bytes
    ULONG   ulUUISendUserUserInfoSize; // bytes
    ULONG   ulUUICallInfoSize;  // bytes

} NDIS_CO_DEVICE_PROFILE, *PNDIS_CO_DEVICE_PROFILE;

//
//  Structures for TCP IPsec.
//
#ifndef IP_EXPORT_INCLUDED
typedef ULONG   IPAddr, IPMask;
#endif
typedef ULONG   SPI_TYPE;

typedef enum    _OFFLOAD_OPERATION_E
{
    AUTHENTICATE = 1,
    ENCRYPT
}
    OFFLOAD_OPERATION_E;

typedef struct _OFFLOAD_ALGO_INFO
{
    ULONG   algoIdentifier;
    ULONG   algoKeylen;
    ULONG   algoRounds;
}
    OFFLOAD_ALGO_INFO,
    *POFFLOAD_ALGO_INFO;

typedef enum _OFFLOAD_CONF_ALGO
{
    OFFLOAD_IPSEC_CONF_NONE,
    OFFLOAD_IPSEC_CONF_DES,
    OFFLOAD_IPSEC_CONF_RESERVED,
    OFFLOAD_IPSEC_CONF_3_DES,
    OFFLOAD_IPSEC_CONF_MAX
}
    OFFLOAD_CONF_ALGO;

typedef enum _OFFLOAD_INTEGRITY_ALGO
{
    OFFLOAD_IPSEC_INTEGRITY_NONE,
    OFFLOAD_IPSEC_INTEGRITY_MD5,
    OFFLOAD_IPSEC_INTEGRITY_SHA,
    OFFLOAD_IPSEC_INTEGRITY_MAX
}
    OFFLOAD_INTEGRITY_ALGO;

typedef struct _OFFLOAD_SECURITY_ASSOCIATION
{
    OFFLOAD_OPERATION_E     Operation;
    SPI_TYPE                SPI;
    OFFLOAD_ALGO_INFO       IntegrityAlgo;
    OFFLOAD_ALGO_INFO       ConfAlgo;
    OFFLOAD_ALGO_INFO       Reserved;
}
    OFFLOAD_SECURITY_ASSOCIATION,
    *POFFLOAD_SECURITY_ASSOCIATION;

#define OFFLOAD_MAX_SAS             3

#define OFFLOAD_INBOUND_SA          0x0001
#define OFFLOAD_OUTBOUND_SA         0x0002

typedef struct _OFFLOAD_IPSEC_ADD_SA
{
    IPAddr                          SrcAddr;
    IPMask                          SrcMask;
    IPAddr                          DestAddr;
    IPMask                          DestMask;
    ULONG                           Protocol;
    USHORT                          SrcPort;
    USHORT                          DestPort;
    IPAddr                          SrcTunnelAddr;
    IPAddr                          DestTunnelAddr;
    USHORT                          Flags;
    SHORT                           NumSAs;
    OFFLOAD_SECURITY_ASSOCIATION    SecAssoc[OFFLOAD_MAX_SAS];
    HANDLE                          OffloadHandle;
    ULONG                           KeyLen;
    UCHAR                           KeyMat[1];
} OFFLOAD_IPSEC_ADD_SA, *POFFLOAD_IPSEC_ADD_SA;

typedef struct _OFFLOAD_IPSEC_DELETE_SA
{
    HANDLE                          OffloadHandle;
} OFFLOAD_IPSEC_DELETE_SA, *POFFLOAD_IPSEC_DELETE_SA;


typedef enum _UDP_ENCAP_TYPE
{
    OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_IKE,
    OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_OTHER
} UDP_ENCAP_TYPE, * PUDP_ENCAP_TYPE;


typedef struct _OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY
{
    UDP_ENCAP_TYPE                  UdpEncapType;
    USHORT                          DstEncapPort;
} OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY, * POFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY;


typedef struct _OFFLOAD_IPSEC_ADD_UDPESP_SA
{
    IPAddr                                  SrcAddr;
    IPMask                                  SrcMask;
    IPAddr                                  DstAddr;
    IPMask                                  DstMask;
    ULONG                                   Protocol;
    USHORT                                  SrcPort;
    USHORT                                  DstPort;
    IPAddr                                  SrcTunnelAddr;
    IPAddr                                  DstTunnelAddr;
    USHORT                                  Flags;
    SHORT                                   NumSAs;
    OFFLOAD_SECURITY_ASSOCIATION            SecAssoc[OFFLOAD_MAX_SAS];
    HANDLE                                  OffloadHandle;
    OFFLOAD_IPSEC_UDPESP_ENCAPTYPE_ENTRY    EncapTypeEntry;
    HANDLE                                  EncapTypeEntryOffldHandle;
    ULONG                                   KeyLen;
    UCHAR                                   KeyMat[1];
} OFFLOAD_IPSEC_ADD_UDPESP_SA, * POFFLOAD_IPSEC_ADD_UDPESP_SA;


typedef struct _OFFLOAD_IPSEC_DELETE_UDPESP_SA
{
    HANDLE                                  OffloadHandle;
    HANDLE                                  EncapTypeEntryOffldHandle;
} OFFLOAD_IPSEC_DELETE_UDPESP_SA, * POFFLOAD_IPSEC_DELETE_UDPESP_SA;


//
// Type to go with OID_GEN_VLAN_ID: the least significant 12 bits are
// used as the VLAN ID (VID) per IEEE 802.1Q. Higher order bits are
// reserved and must be set to 0.
//
typedef ULONG NDIS_VLAN_ID;

//
// Medium the Ndis Driver is running on (OID_GEN_MEDIA_SUPPORTED/ OID_GEN_MEDIA_IN_USE).
//
typedef enum _NDIS_MEDIUM
{
    NdisMedium802_3,
    NdisMedium802_5,
    NdisMediumFddi,
    NdisMediumWan,
    NdisMediumLocalTalk,
    NdisMediumDix,              // defined for convenience, not a real medium
    NdisMediumArcnetRaw,
    NdisMediumArcnet878_2,
    NdisMediumAtm,
    NdisMediumWirelessWan,
    NdisMediumIrda,
    NdisMediumBpc,
    NdisMediumCoWan,
    NdisMedium1394,
    NdisMediumInfiniBand,
#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
    NdisMediumTunnel,
    NdisMediumNative802_11,
    NdisMediumLoopback,
#endif // (NTDDI_VERSION >= NTDDI_VISTA)

#if (NTDDI_VERSION >= NTDDI_WIN7)
    NdisMediumWiMAX,
    NdisMediumIP,
#endif

    NdisMediumMax               // Not a real medium, defined as an upper-bound
} NDIS_MEDIUM, *PNDIS_MEDIUM;


//
// Physical Medium Type definitions. Used with OID_GEN_PHYSICAL_MEDIUM.
//
typedef enum _NDIS_PHYSICAL_MEDIUM
{
    NdisPhysicalMediumUnspecified,
    NdisPhysicalMediumWirelessLan,
    NdisPhysicalMediumCableModem,
    NdisPhysicalMediumPhoneLine,
    NdisPhysicalMediumPowerLine,
    NdisPhysicalMediumDSL,      // includes ADSL and UADSL (G.Lite)
    NdisPhysicalMediumFibreChannel,
    NdisPhysicalMedium1394,
    NdisPhysicalMediumWirelessWan,
    NdisPhysicalMediumNative802_11,
    NdisPhysicalMediumBluetooth,
    NdisPhysicalMediumInfiniband,
    NdisPhysicalMediumWiMax,
    NdisPhysicalMediumUWB,
    NdisPhysicalMedium802_3,
    NdisPhysicalMedium802_5,
    NdisPhysicalMediumIrda,
    NdisPhysicalMediumWiredWAN,
    NdisPhysicalMediumWiredCoWan,
    NdisPhysicalMediumOther,
    NdisPhysicalMediumMax       // Not a real physical type, defined as an upper-bound
} NDIS_PHYSICAL_MEDIUM, *PNDIS_PHYSICAL_MEDIUM;


//
//  Protocol types supported by ndis. These values need to be consistent with ADDRESS_TYPE_XXX defined in TDI.H
//
#define NDIS_PROTOCOL_ID_DEFAULT        0x00
#define NDIS_PROTOCOL_ID_TCP_IP         0x02
#define NDIS_PROTOCOL_ID_IPX            0x06
#define NDIS_PROTOCOL_ID_NBF            0x07
#define NDIS_PROTOCOL_ID_MAX            0x0F
#define NDIS_PROTOCOL_ID_MASK           0x0F

//
// The following is used with OID_GEN_TRANSPORT_HEADER_OFFSET to indicate the length of the layer-2 header
// for packets sent by a particular protocol.
//
typedef struct _TRANSPORT_HEADER_OFFSET
{
    USHORT      ProtocolType;       // The protocol that is sending this OID (NDIS_PROTOCOL_ID_XXX above)
    USHORT      HeaderOffset;       // The header offset
} TRANSPORT_HEADER_OFFSET, *PTRANSPORT_HEADER_OFFSET;


//
// The structures below need to be consistent with TRANSPORT_ADDRESS structures in TDI.H
//
typedef struct _NETWORK_ADDRESS
{
    USHORT      AddressLength;      // length in bytes of Address[] in this
    USHORT      AddressType;        // type of this address (NDIS_PROTOCOL_ID_XXX above)
    UCHAR       Address[1];         // actually AddressLength bytes long
} NETWORK_ADDRESS, *PNETWORK_ADDRESS;

//
// The following is used with OID_GEN_NETWORK_LAYER_ADDRESSES to set network layer addresses on an interface
//
typedef struct _NETWORK_ADDRESS_LIST
{
    LONG        AddressCount;       // number of addresses following
    USHORT      AddressType;        // type of this address (NDIS_PROTOCOL_ID_XXX above)
    NETWORK_ADDRESS Address[1];     // actually AddressCount elements long
} NETWORK_ADDRESS_LIST, *PNETWORK_ADDRESS_LIST;

//
// IP address - This must remain consistent with TDI_ADDRESS_IP in tdi.h
//
typedef struct _NETWORK_ADDRESS_IP
{
    USHORT      sin_port;
    ULONG       in_addr;
    UCHAR       sin_zero[8];
} NETWORK_ADDRESS_IP, *PNETWORK_ADDRESS_IP;

#define NETWORK_ADDRESS_LENGTH_IP sizeof (NETWORK_ADDRESS_IP)

//
// IPX address - This must remain consistent with TDI_ADDRESS_IPX in tdi.h.
//
typedef struct _NETWORK_ADDRESS_IPX
{
    ULONG       NetworkAddress;
    UCHAR       NodeAddress[6];
    USHORT      Socket;
} NETWORK_ADDRESS_IPX, *PNETWORK_ADDRESS_IPX;

#define NETWORK_ADDRESS_LENGTH_IPX sizeof (NETWORK_ADDRESS_IPX)

//
// Hardware status codes (OID_GEN_HARDWARE_STATUS).
//

typedef enum _NDIS_HARDWARE_STATUS
{
    NdisHardwareStatusReady,
    NdisHardwareStatusInitializing,
    NdisHardwareStatusReset,
    NdisHardwareStatusClosing,
    NdisHardwareStatusNotReady
} NDIS_HARDWARE_STATUS, *PNDIS_HARDWARE_STATUS;


//
// this is the type passed in the OID_GEN_GET_TIME_CAPS request
//
typedef struct _GEN_GET_TIME_CAPS
{
    ULONG                       Flags;  // Bits defined below
    ULONG                       ClockPrecision;
} GEN_GET_TIME_CAPS, *PGEN_GET_TIME_CAPS;

#define READABLE_LOCAL_CLOCK                    0x00000001
#define CLOCK_NETWORK_DERIVED                   0x00000002
#define CLOCK_PRECISION                         0x00000004
#define RECEIVE_TIME_INDICATION_CAPABLE         0x00000008
#define TIMED_SEND_CAPABLE                      0x00000010
#define TIME_STAMP_CAPABLE                      0x00000020

//
// this is the type passed in the OID_GEN_GET_NETCARD_TIME request
//
typedef struct _GEN_GET_NETCARD_TIME
{
    ULONGLONG                   ReadTime;
} GEN_GET_NETCARD_TIME, *PGEN_GET_NETCARD_TIME;

//
//  NDIS PnP routines and definitions.
//
typedef struct _NDIS_PM_PACKET_PATTERN
{
    ULONG   Priority;                   // Importance of the given pattern.
    ULONG   Reserved;                   // Context information for transports.
    ULONG   MaskSize;                   // Size in bytes of the pattern mask.
    ULONG   PatternOffset;              // Offset from beginning of this
                                        // structure to the pattern bytes.
    ULONG   PatternSize;                // Size in bytes of the pattern.
    ULONG   PatternFlags;               // Flags (TBD).
} NDIS_PM_PACKET_PATTERN, *PNDIS_PM_PACKET_PATTERN;


//
//  The following structure defines the device power states.
//
typedef enum _NDIS_DEVICE_POWER_STATE
{
    NdisDeviceStateUnspecified = 0,
    NdisDeviceStateD0,
    NdisDeviceStateD1,
    NdisDeviceStateD2,
    NdisDeviceStateD3,
    NdisDeviceStateMaximum
} NDIS_DEVICE_POWER_STATE, *PNDIS_DEVICE_POWER_STATE;

//
//  The following structure defines the wake-up capabilities of the device.
//
typedef struct _NDIS_PM_WAKE_UP_CAPABILITIES
{
    NDIS_DEVICE_POWER_STATE MinMagicPacketWakeUp;
    NDIS_DEVICE_POWER_STATE MinPatternWakeUp;
    NDIS_DEVICE_POWER_STATE MinLinkChangeWakeUp;
} NDIS_PM_WAKE_UP_CAPABILITIES, *PNDIS_PM_WAKE_UP_CAPABILITIES;

//
// the following flags define the -enabled- wake-up capabilities of the device
// passed in the Flags field of NDIS_PNP_CAPABILITIES structure
//
#define NDIS_DEVICE_WAKE_UP_ENABLE                          0x00000001
#define NDIS_DEVICE_WAKE_ON_PATTERN_MATCH_ENABLE            0x00000002
#define NDIS_DEVICE_WAKE_ON_MAGIC_PACKET_ENABLE             0x00000004

//
//  This structure defines general PnP capabilities of the miniport driver.
//
typedef struct _NDIS_PNP_CAPABILITIES
{
    ULONG                           Flags;
    NDIS_PM_WAKE_UP_CAPABILITIES    WakeUpCapabilities;
} NDIS_PNP_CAPABILITIES, *PNDIS_PNP_CAPABILITIES;

//
// Defines the attachment types for FDDI (OID_FDDI_ATTACHMENT_TYPE).
//
typedef enum _NDIS_FDDI_ATTACHMENT_TYPE
{
    NdisFddiTypeIsolated = 1,
    NdisFddiTypeLocalA,
    NdisFddiTypeLocalB,
    NdisFddiTypeLocalAB,
    NdisFddiTypeLocalS,
    NdisFddiTypeWrapA,
    NdisFddiTypeWrapB,
    NdisFddiTypeWrapAB,
    NdisFddiTypeWrapS,
    NdisFddiTypeCWrapA,
    NdisFddiTypeCWrapB,
    NdisFddiTypeCWrapS,
    NdisFddiTypeThrough
} NDIS_FDDI_ATTACHMENT_TYPE, *PNDIS_FDDI_ATTACHMENT_TYPE;


//
// Defines the ring management states for FDDI (OID_FDDI_RING_MGT_STATE).
//
typedef enum _NDIS_FDDI_RING_MGT_STATE
{
    NdisFddiRingIsolated = 1,
    NdisFddiRingNonOperational,
    NdisFddiRingOperational,
    NdisFddiRingDetect,
    NdisFddiRingNonOperationalDup,
    NdisFddiRingOperationalDup,
    NdisFddiRingDirected,
    NdisFddiRingTrace
} NDIS_FDDI_RING_MGT_STATE, *PNDIS_FDDI_RING_MGT_STATE;


//
// Defines the Lconnection state for FDDI (OID_FDDI_LCONNECTION_STATE).
//
typedef enum _NDIS_FDDI_LCONNECTION_STATE
{
    NdisFddiStateOff = 1,
    NdisFddiStateBreak,
    NdisFddiStateTrace,
    NdisFddiStateConnect,
    NdisFddiStateNext,
    NdisFddiStateSignal,
    NdisFddiStateJoin,
    NdisFddiStateVerify,
    NdisFddiStateActive,
    NdisFddiStateMaintenance
} NDIS_FDDI_LCONNECTION_STATE, *PNDIS_FDDI_LCONNECTION_STATE;


//
// Defines the medium subtypes for WAN medium (OID_WAN_MEDIUM_SUBTYPE).
// Sub-medium used only by connection-oriented WAN devices
// i.e. NdisMediumWan, NdisMediumCoWan.
//
typedef enum _NDIS_WAN_MEDIUM_SUBTYPE
{
    NdisWanMediumHub,
    NdisWanMediumX_25,
    NdisWanMediumIsdn,
    NdisWanMediumSerial,
    NdisWanMediumFrameRelay,
    NdisWanMediumAtm,
    NdisWanMediumSonet,
    NdisWanMediumSW56K,
    NdisWanMediumPPTP,
    NdisWanMediumL2TP,
    NdisWanMediumIrda,
    NdisWanMediumParallel,
    NdisWanMediumPppoe,
#if (NTDDI_VERSION >= NTDDI_VISTA)
    NdisWanMediumSSTP,
    NdisWanMediumAgileVPN,
#endif //(NTDDI_VERSION >= NTDDI_VISTA)

} NDIS_WAN_MEDIUM_SUBTYPE, *PNDIS_WAN_MEDIUM_SUBTYPE;


//
// Defines the header format for WAN medium (OID_WAN_HEADER_FORMAT).
//
typedef enum _NDIS_WAN_HEADER_FORMAT
{
    NdisWanHeaderNative,        // src/dest based on subtype, followed by NLPID
    NdisWanHeaderEthernet       // emulation of ethernet header
} NDIS_WAN_HEADER_FORMAT, *PNDIS_WAN_HEADER_FORMAT;


//
// Defines the line quality on a WAN line (OID_WAN_QUALITY_OF_SERVICE).
//
typedef enum _NDIS_WAN_QUALITY
{
    NdisWanRaw,
    NdisWanErrorControl,
    NdisWanReliable
} NDIS_WAN_QUALITY, *PNDIS_WAN_QUALITY;


//
// Defines a protocol's WAN specific capabilities (OID_WAN_PROTOCOL_CAPS).
//
typedef struct _NDIS_WAN_PROTOCOL_CAPS
{
    __in  ULONG   Flags;
    __in  ULONG   Reserved;
} NDIS_WAN_PROTOCOL_CAPS, *PNDIS_WAN_PROTOCOL_CAPS;


//
// Flags used in NDIS_WAN_PROTOCOL_CAPS
//
#define WAN_PROTOCOL_KEEPS_STATS    0x00000001


//
// Defines the state of a token-ring adapter (OID_802_5_CURRENT_RING_STATE).
//
typedef enum _NDIS_802_5_RING_STATE
{
    NdisRingStateOpened = 1,
    NdisRingStateClosed,
    NdisRingStateOpening,
    NdisRingStateClosing,
    NdisRingStateOpenFailure,
    NdisRingStateRingFailure
} NDIS_802_5_RING_STATE, *PNDIS_802_5_RING_STATE;

//
// Defines the state of the LAN media
//
typedef enum _NDIS_MEDIA_STATE
{
    NdisMediaStateConnected,
    NdisMediaStateDisconnected
} NDIS_MEDIA_STATE, *PNDIS_MEDIA_STATE;

//
// The following is set on a per-packet basis as OOB data with NdisClass802_3Priority
//
typedef ULONG   Priority_802_3;         // 0-7 priority levels

//
//  The following structure is used to query OID_GEN_CO_LINK_SPEED and
//  OID_GEN_CO_MINIMUM_LINK_SPEED. The first OID will return the current
//  link speed of the adapter. The second will return the minimum link speed
//  the adapter is capable of.
//
typedef struct _NDIS_CO_LINK_SPEED
{
    ULONG   Outbound;
    ULONG   Inbound;
} NDIS_CO_LINK_SPEED, *PNDIS_CO_LINK_SPEED;

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)

//
// The following structure is used in OID_GEN_LINK_SPEED_EX for interfaces
// and is expressed in bits per second.
//
typedef struct _NDIS_LINK_SPEED
{
    ULONG64     XmitLinkSpeed;
    ULONG64     RcvLinkSpeed;
} NDIS_LINK_SPEED, *PNDIS_LINK_SPEED;



// miniports or interfaces that do not know their current link speed
// can report NDIS_LINK_SPEED_UNKNOWN == ((ULONG64)-1)
#define NDIS_LINK_SPEED_UNKNOWN NET_IF_LINK_SPEED_UNKNOWN
#endif

#ifndef _NDIS_
typedef int NDIS_STATUS, *PNDIS_STATUS;
#endif

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)
// Native 802.11 Definitions
#ifndef __WINDOT11_H__
#include <windot11.h>
#endif
#endif // (NTDDI_VERSION >= NTDDI_VISTA)


//
//  Structure to be used for OID_GEN_SUPPORTED_GUIDS.
//  This structure describes an OID to GUID mapping.
//  Or a Status to GUID mapping.
//  When ndis receives a request for a give GUID it will
//  query the miniport with the supplied OID.
//
typedef struct _NDIS_GUID
{
    GUID            Guid;
    union
    {
        NDIS_OID    Oid;
        NDIS_STATUS Status;
    };
    ULONG       Size;               //  Size of the data element. If the GUID
                                    //  represents an array then this is the
                                    //  size of an element in the array.
                                    //  This is -1 for strings.
    ULONG       Flags;
} NDIS_GUID, *PNDIS_GUID;

#define fNDIS_GUID_TO_OID                   0x00000001
#define fNDIS_GUID_TO_STATUS                0x00000002
#define fNDIS_GUID_ANSI_STRING              0x00000004
#define fNDIS_GUID_UNICODE_STRING           0x00000008
#define fNDIS_GUID_ARRAY                    0x00000010
#define fNDIS_GUID_ALLOW_READ               0x00000020
#define fNDIS_GUID_ALLOW_WRITE              0x00000040
#define fNDIS_GUID_METHOD                   0x00000080
#define fNDIS_GUID_NDIS_RESERVED            0x00000100 
#define fNDIS_GUID_SUPPORT_COMMON_HEADER    0x00000200

//
// Ndis Packet Filter Bits (OID_GEN_CURRENT_PACKET_FILTER).
//
#define NDIS_PACKET_TYPE_DIRECTED               0x00000001
#define NDIS_PACKET_TYPE_MULTICAST              0x00000002
#define NDIS_PACKET_TYPE_ALL_MULTICAST          0x00000004
#define NDIS_PACKET_TYPE_BROADCAST              0x00000008
#define NDIS_PACKET_TYPE_SOURCE_ROUTING         0x00000010
#define NDIS_PACKET_TYPE_PROMISCUOUS            0x00000020
#define NDIS_PACKET_TYPE_SMT                    0x00000040
#define NDIS_PACKET_TYPE_ALL_LOCAL              0x00000080
#define NDIS_PACKET_TYPE_GROUP                  0x00001000
#define NDIS_PACKET_TYPE_ALL_FUNCTIONAL         0x00002000
#define NDIS_PACKET_TYPE_FUNCTIONAL             0x00004000
#define NDIS_PACKET_TYPE_MAC_FRAME              0x00008000
#define NDIS_PACKET_TYPE_NO_LOCAL               0x00010000


//
// Ndis Token-Ring Ring Status Codes (OID_802_5_CURRENT_RING_STATUS).
//
#define NDIS_RING_SIGNAL_LOSS                   0x00008000
#define NDIS_RING_HARD_ERROR                    0x00004000
#define NDIS_RING_SOFT_ERROR                    0x00002000
#define NDIS_RING_TRANSMIT_BEACON               0x00001000
#define NDIS_RING_LOBE_WIRE_FAULT               0x00000800
#define NDIS_RING_AUTO_REMOVAL_ERROR            0x00000400
#define NDIS_RING_REMOVE_RECEIVED               0x00000200
#define NDIS_RING_COUNTER_OVERFLOW              0x00000100
#define NDIS_RING_SINGLE_STATION                0x00000080
#define NDIS_RING_RING_RECOVERY                 0x00000040


//
// Ndis protocol option bits (OID_GEN_PROTOCOL_OPTIONS).
//
#define NDIS_PROT_OPTION_ESTIMATED_LENGTH               0x00000001
#define NDIS_PROT_OPTION_NO_LOOPBACK                    0x00000002
#define NDIS_PROT_OPTION_NO_RSVD_ON_RCVPKT              0x00000004
#define NDIS_PROT_OPTION_SEND_RESTRICTED                0x00000008

//
// Ndis MAC option bits (OID_GEN_MAC_OPTIONS).
//
#define NDIS_MAC_OPTION_COPY_LOOKAHEAD_DATA             0x00000001
#define NDIS_MAC_OPTION_RECEIVE_SERIALIZED              0x00000002
#define NDIS_MAC_OPTION_TRANSFERS_NOT_PEND              0x00000004
#define NDIS_MAC_OPTION_NO_LOOPBACK                     0x00000008

//
// This flag has been deprecated. Deserialized drivers are
// full duplex drivers
//
#define NDIS_MAC_OPTION_FULL_DUPLEX                     0x00000010  // deprecated


#define NDIS_MAC_OPTION_EOTX_INDICATION                 0x00000020
#define NDIS_MAC_OPTION_8021P_PRIORITY                  0x00000040
#define NDIS_MAC_OPTION_SUPPORTS_MAC_ADDRESS_OVERWRITE  0x00000080
#define NDIS_MAC_OPTION_RECEIVE_AT_DPC                  0x00000100
#define NDIS_MAC_OPTION_8021Q_VLAN                      0x00000200
#define NDIS_MAC_OPTION_RESERVED                        0x80000000

//
//  NDIS media capabilities bits (OID_GEN_MEDIA_CAPABILITIES).
//
#define NDIS_MEDIA_CAP_TRANSMIT                 0x00000001  // Supports sending data
#define NDIS_MEDIA_CAP_RECEIVE                  0x00000002  // Supports receiving data

//
//  NDIS MAC option bits for OID_GEN_CO_MAC_OPTIONS.
//
#define NDIS_CO_MAC_OPTION_DYNAMIC_LINK_SPEED   0x00000001

//
// The following is set on a per-packet basis as OOB data with NdisClassIrdaPacketInfo
// This is the per-packet info specified on a per-packet basis
//
typedef struct _NDIS_IRDA_PACKET_INFO
{
    ULONG                       ExtraBOFs;
    ULONG                       MinTurnAroundTime;
} NDIS_IRDA_PACKET_INFO, *PNDIS_IRDA_PACKET_INFO;



#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6)

//
// The following macro is used to build a NET_LUID
//

#define NDIS_MAKE_NET_LUID(_pNetLuid, _IfType, _NetLuidIndex)       \
{                                                                   \
    (_pNetLuid)->Info.IfType = _IfType;                             \
    (_pNetLuid)->Info.NetLuidIndex = _NetLuidIndex;                 \
    (_pNetLuid)->Info.Reserved = 0;                                 \
}

#define NDIS_IF_MAX_STRING_SIZE IF_MAX_STRING_SIZE
typedef IF_COUNTED_STRING NDIS_IF_COUNTED_STRING, *PNDIS_IF_COUNTED_STRING;

#define NDIS_MAX_PHYS_ADDRESS_LENGTH IF_MAX_PHYS_ADDRESS_LENGTH
typedef IF_PHYSICAL_ADDRESS NDIS_IF_PHYSICAL_ADDRESS, *PNDIS_IF_PHYSICAL_ADDRESS;

//
// NDIS_MEDIA_CONNECT_STATE enum type is used in OID_GEN_MEDIA_CONNECT_STATUS_EX
//
typedef NET_IF_MEDIA_CONNECT_STATE NDIS_MEDIA_CONNECT_STATE, *PNDIS_MEDIA_CONNECT_STATE;

//
// NET_IF_MEDIA_DUPLEX_STATE enum type is used in OID_GEN_MEDIA_DUPLEX_STATE
//
typedef NET_IF_MEDIA_DUPLEX_STATE NDIS_MEDIA_DUPLEX_STATE, *PNDIS_MEDIA_DUPLEX_STATE;

typedef enum _NDIS_SUPPORTED_PAUSE_FUNCTIONS
{
    NdisPauseFunctionsUnsupported,
    NdisPauseFunctionsSendOnly,
    NdisPauseFunctionsReceiveOnly,
    NdisPauseFunctionsSendAndReceive,
    NdisPauseFunctionsUnknown
} NDIS_SUPPORTED_PAUSE_FUNCTIONS, *PNDIS_SUPPORTED_PAUSE_FUNCTIONS;

#define NDIS_LINK_STATE_XMIT_LINK_SPEED_AUTO_NEGOTIATED         0x00000001
#define NDIS_LINK_STATE_RCV_LINK_SPEED_AUTO_NEGOTIATED          0x00000002
#define NDIS_LINK_STATE_DUPLEX_AUTO_NEGOTIATED                  0x00000004
#define NDIS_LINK_STATE_PAUSE_FUNCTIONS_AUTO_NEGOTIATED         0x00000008

    

//
// structure used in NDIS_STATUS_LINK_STATE and OID_GEN_LINK_STATE
//

#define NDIS_LINK_STATE_REVISION_1      1

typedef struct _NDIS_LINK_STATE
{
    NDIS_OBJECT_HEADER              Header;
    NDIS_MEDIA_CONNECT_STATE        MediaConnectState;
    NDIS_MEDIA_DUPLEX_STATE         MediaDuplexState;
    ULONG64                         XmitLinkSpeed;
    ULONG64                         RcvLinkSpeed;
    NDIS_SUPPORTED_PAUSE_FUNCTIONS  PauseFunctions;
    ULONG                           AutoNegotiationFlags;
} NDIS_LINK_STATE, *PNDIS_LINK_STATE;

#define NDIS_SIZEOF_LINK_STATE_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_LINK_STATE, AutoNegotiationFlags)

//
// the following structure is used in OID_GEN_LINK_PARAMETERS
//

#define NDIS_LINK_PARAMETERS_REVISION_1      1

typedef struct _NDIS_LINK_PARAMETERS
{
    NDIS_OBJECT_HEADER              Header;
    NDIS_MEDIA_DUPLEX_STATE         MediaDuplexState;
    ULONG64                         XmitLinkSpeed;
    ULONG64                         RcvLinkSpeed;
    NDIS_SUPPORTED_PAUSE_FUNCTIONS  PauseFunctions;
    ULONG                           AutoNegotiationFlags;    
} NDIS_LINK_PARAMETERS, *PNDIS_LINK_PARAMETERS;

#define NDIS_SIZEOF_LINK_PARAMETERS_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_LINK_PARAMETERS, AutoNegotiationFlags)

//
// structure used in NDIS_STATUS_LINK_STATE and OID_GEN_LINK_STATE
//

#define NDIS_OPER_STATE_REVISION_1      1

typedef struct _NDIS_OPER_STATE
{
    NDIS_OBJECT_HEADER              Header;
    NET_IF_OPER_STATUS              OperationalStatus;
    ULONG                           OperationalStatusFlags;
} NDIS_OPER_STATE, *PNDIS_OPER_STATE;

#define NDIS_SIZEOF_OPER_STATE_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_OPER_STATE, OperationalStatusFlags)


//
// Structure used in OID_GEN_IP_OPER_STATUS.
//

typedef struct _NDIS_IP_OPER_STATUS 
{
    ULONG AddressFamily;
    NET_IF_OPER_STATUS OperationalStatus;
    ULONG OperationalStatusFlags;
} NDIS_IP_OPER_STATUS, *PNDIS_IP_OPER_STATUS;

//
// Don't change the value for this macro definition.
//
#define MAXIMUM_IP_OPER_STATUS_ADDRESS_FAMILIES_SUPPORTED 32

#define NDIS_IP_OPER_STATUS_INFO_REVISION_1 1

typedef struct _NDIS_IP_OPER_STATUS_INFO
{
    NDIS_OBJECT_HEADER Header;
    ULONG Flags;
    ULONG NumberofAddressFamiliesReturned;
    NDIS_IP_OPER_STATUS IpOperationalStatus[MAXIMUM_IP_OPER_STATUS_ADDRESS_FAMILIES_SUPPORTED];
} NDIS_IP_OPER_STATUS_INFO, *PNDIS_IP_OPER_STATUS_INFO;

#define NDIS_SIZEOF_IP_OPER_STATUS_INFO_REVISION_1    \
        FIELD_OFFSET(NDIS_IP_OPER_STATUS_INFO, IpOperationalStatus) + \
        MAXIMUM_IP_OPER_STATUS_ADDRESS_FAMILIES_SUPPORTED * sizeof(NDIS_IP_OPER_STATUS)

//
// structure used in NDIS_STATUS_IP_OPER_STATUS
//

#define NDIS_IP_OPER_STATE_REVISION_1    1

typedef struct _NDIS_IP_OPER_STATE
{
    NDIS_OBJECT_HEADER Header;
    ULONG Flags;    
    NDIS_IP_OPER_STATUS IpOperationalStatus;
} NDIS_IP_OPER_STATE, *PNDIS_IP_OPER_STATE;

#define NDIS_SIZEOF_IP_OPER_STATE_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_IP_OPER_STATE, IpOperationalStatus)

//
// These defines and structures are used with 
// OID_TCP_OFFLOAD_PARAMETERS
//

#define NDIS_OFFLOAD_PARAMETERS_NO_CHANGE                  0

//
// values used in IPv4Checksum, TCPIPv4Checksum, UDPIPv4Checksum
// TCPIPv6Checksum and UDPIPv6Checksum
//
#define NDIS_OFFLOAD_PARAMETERS_TX_RX_DISABLED             1
#define NDIS_OFFLOAD_PARAMETERS_TX_ENABLED_RX_DISABLED     2
#define NDIS_OFFLOAD_PARAMETERS_RX_ENABLED_TX_DISABLED     3
#define NDIS_OFFLOAD_PARAMETERS_TX_RX_ENABLED              4

//
// values used in LsoV1
//
#define NDIS_OFFLOAD_PARAMETERS_LSOV1_DISABLED             1
#define NDIS_OFFLOAD_PARAMETERS_LSOV1_ENABLED              2

//
// values used in IPsecV1
//
#define NDIS_OFFLOAD_PARAMETERS_IPSECV1_DISABLED             1
#define NDIS_OFFLOAD_PARAMETERS_IPSECV1_AH_ENABLED           2
#define NDIS_OFFLOAD_PARAMETERS_IPSECV1_ESP_ENABLED          3
#define NDIS_OFFLOAD_PARAMETERS_IPSECV1_AH_AND_ESP_ENABLED   4

//
// values used in LsoV2
//
#define NDIS_OFFLOAD_PARAMETERS_LSOV2_DISABLED             1
#define NDIS_OFFLOAD_PARAMETERS_LSOV2_ENABLED              2

#if (NDIS_SUPPORT_NDIS61)
//
// values used in IPsecV2 and IPsecV2IPv4
//
#define NDIS_OFFLOAD_PARAMETERS_IPSECV2_DISABLED             1
#define NDIS_OFFLOAD_PARAMETERS_IPSECV2_AH_ENABLED           2
#define NDIS_OFFLOAD_PARAMETERS_IPSECV2_ESP_ENABLED          3
#define NDIS_OFFLOAD_PARAMETERS_IPSECV2_AH_AND_ESP_ENABLED   4
#endif // (NDIS_SUPPORT_NDIS61)


//
// values used in TcpConnectionIPv4 and TcpConnectionIPv6 fields
// of NDIS_OFFLOAD_PARAMETERS
//
#define NDIS_OFFLOAD_PARAMETERS_CONNECTION_OFFLOAD_DISABLED     1
#define NDIS_OFFLOAD_PARAMETERS_CONNECTION_OFFLOAD_ENABLED      2

//
// Used in OID_TCP_OFFLOAD_PARAMETERS for setting 
// the offload parameters of a NIC
//

#define NDIS_OFFLOAD_PARAMETERS_REVISION_1            1

#if (NDIS_SUPPORT_NDIS61)
#define NDIS_OFFLOAD_PARAMETERS_REVISION_2            2
#endif // (NDIS_SUPPORT_NDIS61)


typedef struct _NDIS_OFFLOAD_PARAMETERS
{
    NDIS_OBJECT_HEADER      Header;

    UCHAR                   IPv4Checksum;
    UCHAR                   TCPIPv4Checksum;
    UCHAR                   UDPIPv4Checksum;
    
    UCHAR                   TCPIPv6Checksum;
    UCHAR                   UDPIPv6Checksum;

    UCHAR                   LsoV1;
    UCHAR                   IPsecV1;
    
    UCHAR                   LsoV2IPv4;
    UCHAR                   LsoV2IPv6;

    UCHAR                   TcpConnectionIPv4;
    UCHAR                   TcpConnectionIPv6;
    
    ULONG                   Flags;

#if (NDIS_SUPPORT_NDIS61)
    UCHAR                   IPsecV2;
    UCHAR                   IPsecV2IPv4;


            UCHAR           Reserved1;
            UCHAR           Reserved2;


#endif // (NDIS_SUPPORT_NDIS61)
} NDIS_OFFLOAD_PARAMETERS, *PNDIS_OFFLOAD_PARAMETERS;

#define NDIS_SIZEOF_OFFLOAD_PARAMETERS_REVISION_1 RTL_SIZEOF_THROUGH_FIELD(NDIS_OFFLOAD_PARAMETERS, Flags)

#if (NDIS_SUPPORT_NDIS61)
#define NDIS_SIZEOF_OFFLOAD_PARAMETERS_REVISION_2 RTL_SIZEOF_THROUGH_FIELD(NDIS_OFFLOAD_PARAMETERS, IPsecV2IPv4)
#endif // (NDIS_SUPPORT_NDIS61)


#define NDIS_OFFLOAD_NOT_SUPPORTED             0
#define NDIS_OFFLOAD_SUPPORTED                 1

#define NDIS_OFFLOAD_SET_NO_CHANGE             0
#define NDIS_OFFLOAD_SET_ON                    1
#define NDIS_OFFLOAD_SET_OFF                   2

//
// Encapsulation types that are used during offload in query and set
//
#define NDIS_ENCAPSULATION_NOT_SUPPORTED                0x00000000                         
#define NDIS_ENCAPSULATION_NULL                         0x00000001
#define NDIS_ENCAPSULATION_IEEE_802_3                   0x00000002
#define NDIS_ENCAPSULATION_IEEE_802_3_P_AND_Q           0x00000004
#define NDIS_ENCAPSULATION_IEEE_802_3_P_AND_Q_IN_OOB    0x00000008
#define NDIS_ENCAPSULATION_IEEE_LLC_SNAP_ROUTED         0x00000010

#pragma warning(push)
#pragma warning(disable:4214) //nonstandard extension used : bit field types other than int

//
// Describes the large send offload version 1 capabilities
// or configuration of the NIC. Used in NDIS_OFFLOAD structure
//
typedef struct _NDIS_TCP_LARGE_SEND_OFFLOAD_V1
{

    struct
    {
        ULONG     Encapsulation;
        ULONG     MaxOffLoadSize;
        ULONG     MinSegmentCount;
        ULONG     TcpOptions:2;
        ULONG     IpOptions:2;
    } IPv4;
   
} NDIS_TCP_LARGE_SEND_OFFLOAD_V1, *PNDIS_TCP_LARGE_SEND_OFFLOAD_V1;


//
// Describes the checksum task offload capabilities or configuration 
// of the NIC. used in NDIS_OFFLOAD structure
//
typedef struct _NDIS_TCP_IP_CHECKSUM_OFFLOAD
{

    struct
    {
        ULONG       Encapsulation;
        ULONG       IpOptionsSupported:2;
        ULONG       TcpOptionsSupported:2;
        ULONG       TcpChecksum:2;
        ULONG       UdpChecksum:2;
        ULONG       IpChecksum:2;
    } IPv4Transmit;

    struct
    {
        ULONG       Encapsulation;
        ULONG       IpOptionsSupported:2;
        ULONG       TcpOptionsSupported:2;
        ULONG       TcpChecksum:2;
        ULONG       UdpChecksum:2;
        ULONG       IpChecksum:2;
    } IPv4Receive;


    struct
    {
        ULONG       Encapsulation;
        ULONG       IpExtensionHeadersSupported:2;
        ULONG       TcpOptionsSupported:2;
        ULONG       TcpChecksum:2;
        ULONG       UdpChecksum:2;

    } IPv6Transmit;

    struct
    {
        ULONG       Encapsulation;
        ULONG       IpExtensionHeadersSupported:2;
        ULONG       TcpOptionsSupported:2;
        ULONG       TcpChecksum:2;
        ULONG       UdpChecksum:2;

    } IPv6Receive;

} NDIS_TCP_IP_CHECKSUM_OFFLOAD, *PNDIS_TCP_IP_CHECKSUM_OFFLOAD;


//
// Describes the IPsec task offload version 1 capabilities 
// or configuration of the NIC. Used in NDIS_OFFLOAD structure
//
typedef struct _NDIS_IPSEC_OFFLOAD_V1
{
    struct
    {
        ULONG   Encapsulation;
        ULONG   AhEspCombined;
        ULONG   TransportTunnelCombined;
        ULONG   IPv4Options;
        ULONG   Flags;
    } Supported;

    struct
    {
        ULONG   Md5:2;
        ULONG   Sha_1:2;
        ULONG   Transport:2;
        ULONG   Tunnel:2;
        ULONG   Send:2;
        ULONG   Receive:2;
    } IPv4AH;

    struct
    {
        ULONG   Des:2;
        ULONG   Reserved:2;
        ULONG   TripleDes:2;
        ULONG   NullEsp:2;
        ULONG   Transport:2;
        ULONG   Tunnel:2;
        ULONG   Send:2;
        ULONG   Receive:2;
    } IPv4ESP;

} NDIS_IPSEC_OFFLOAD_V1, *PNDIS_IPSEC_OFFLOAD_V1;

//
// Describes the large send offload version 2 capabilities
// or configuration of the NIC. Used in NDIS_OFFLOAD structure
//
typedef struct _NDIS_TCP_LARGE_SEND_OFFLOAD_V2
{
    struct 
    {
         ULONG     Encapsulation;
         ULONG     MaxOffLoadSize;
         ULONG     MinSegmentCount;
    }IPv4;

    struct 
    {
         ULONG     Encapsulation;
         ULONG     MaxOffLoadSize;
         ULONG     MinSegmentCount;
         ULONG     IpExtensionHeadersSupported:2;
         ULONG     TcpOptionsSupported:2;
    }IPv6;

} NDIS_TCP_LARGE_SEND_OFFLOAD_V2, *PNDIS_TCP_LARGE_SEND_OFFLOAD_V2;

#if (NDIS_SUPPORT_NDIS61)
//
//  Structures for IPSec Task Offload V2.
//

//
// IPsec Algorithms for Authentication used in AuthenticationAlgorithms field
// of NDIS_IPSEC_OFFLOAD_V2 structure
//
#define IPSEC_OFFLOAD_V2_AUTHENTICATION_MD5                      0x00000001
#define IPSEC_OFFLOAD_V2_AUTHENTICATION_SHA_1                    0x00000002
#define IPSEC_OFFLOAD_V2_AUTHENTICATION_SHA_256                  0x00000004
#define IPSEC_OFFLOAD_V2_AUTHENTICATION_AES_GCM_128              0x00000008
#define IPSEC_OFFLOAD_V2_AUTHENTICATION_AES_GCM_192              0x00000010
#define IPSEC_OFFLOAD_V2_AUTHENTICATION_AES_GCM_256              0x00000020

//
// IPsec Algorithms for Encryption used in EncryptionAlgorithms field of
// NDIS_IPSEC_OFFLOAD_V2 structure
//
#define IPSEC_OFFLOAD_V2_ENCRYPTION_NONE                          0x00000001
#define IPSEC_OFFLOAD_V2_ENCRYPTION_DES_CBC                       0x00000002
#define IPSEC_OFFLOAD_V2_ENCRYPTION_3_DES_CBC                     0x00000004
#define IPSEC_OFFLOAD_V2_ENCRYPTION_AES_GCM_128                   0x00000008
#define IPSEC_OFFLOAD_V2_ENCRYPTION_AES_GCM_192                   0x00000010
#define IPSEC_OFFLOAD_V2_ENCRYPTION_AES_GCM_256                   0x00000020
#define IPSEC_OFFLOAD_V2_ENCRYPTION_AES_CBC_128                   0x00000040
#define IPSEC_OFFLOAD_V2_ENCRYPTION_AES_CBC_192                   0x00000080
#define IPSEC_OFFLOAD_V2_ENCRYPTION_AES_CBC_256                   0x00000100

//
// IPsec offload V2 capabilities used in  NDIS_OFFLOAD
//
typedef struct _NDIS_IPSEC_OFFLOAD_V2
{
    ULONG       Encapsulation;      // MAC encap types supported
    BOOLEAN     IPv6Supported;      // IPv6 Supported
    BOOLEAN     IPv4Options;                           // Supports offload of packets with IPv4 options
    BOOLEAN     IPv6NonIPsecExtensionHeaders;          // Supports offload of packets with non IPsec Extension headers
    BOOLEAN     Ah;
    BOOLEAN     Esp;
    BOOLEAN     AhEspCombined;
    BOOLEAN     Transport;
    BOOLEAN     Tunnel;
    BOOLEAN     TransportTunnelCombined;
    BOOLEAN     LsoSupported;
    BOOLEAN     ExtendedSequenceNumbers;
    ULONG       UdpEsp;
    ULONG       AuthenticationAlgorithms;     // Bit Mask of Authentication Algorithms
    ULONG       EncryptionAlgorithms;         // Bit Mask of Encryption Algorithms
    ULONG       SaOffloadCapacity;            // Number of SAs that can be offloaded
} NDIS_IPSEC_OFFLOAD_V2, *PNDIS_IPSEC_OFFLOAD_V2;

#endif // (NDIS_SUPPORT_NDIS61)

#pragma warning(pop)


//
// flags used in Flags field of NDIS_OFFLOAD structure
//
#define NDIS_OFFLOAD_FLAGS_GROUP_CHECKSUM_CAPABILITIES  0x00000001

//
// Describes TCP/IP task offload capabilities or configuration 
// of the NIC. Used in OID_TCP_OFFLOAD_CURRENT_CONFIG
// and OID_TCP_OFFLOAD_HARDWARE_CAPABILITIES
//
#define NDIS_OFFLOAD_REVISION_1    1
#if (NDIS_SUPPORT_NDIS61)
#define NDIS_OFFLOAD_REVISION_2    2
#endif // (NDIS_SUPPORT_NDIS61)


typedef struct _NDIS_OFFLOAD
{
    NDIS_OBJECT_HEADER                  Header;

    //
    // Checksum Offload information
    //
    NDIS_TCP_IP_CHECKSUM_OFFLOAD        Checksum;

    //
    // Large Send Offload information
    //
    NDIS_TCP_LARGE_SEND_OFFLOAD_V1      LsoV1;

    //
    // IPsec Offload Information
    //
    NDIS_IPSEC_OFFLOAD_V1               IPsecV1;
    //
    // Large Send Offload version 2Information
    //
    NDIS_TCP_LARGE_SEND_OFFLOAD_V2      LsoV2;

    ULONG                               Flags;

#if (NDIS_SUPPORT_NDIS61)
    //
    //IPsec offload V2
    //
    NDIS_IPSEC_OFFLOAD_V2               IPsecV2;
#endif // (NDIS_SUPPORT_NDIS61)


}NDIS_OFFLOAD, *PNDIS_OFFLOAD;

#define NDIS_SIZEOF_NDIS_OFFLOAD_REVISION_1   RTL_SIZEOF_THROUGH_FIELD(NDIS_OFFLOAD, Flags)

#if (NDIS_SUPPORT_NDIS61)
#define NDIS_SIZEOF_NDIS_OFFLOAD_REVISION_2   RTL_SIZEOF_THROUGH_FIELD(NDIS_OFFLOAD, IPsecV2) 
#endif // (NDIS_SUPPORT_NDIS61)


//
// The following data structures are used with offload related WMI
// guids. NDIS will trnaslate these data structures to those used 
// in OID and status indications
//
typedef struct _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1
{

    struct
    {
        ULONG     Encapsulation;
        ULONG     MaxOffLoadSize;
        ULONG     MinSegmentCount;
        ULONG     TcpOptions;
        ULONG     IpOptions;
    } IPv4;
   
} NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1, *PNDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1;

typedef struct _NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD
{

    struct
    {
        ULONG       Encapsulation;
        ULONG       IpOptionsSupported;
        ULONG       TcpOptionsSupported;
        ULONG       TcpChecksum;
        ULONG       UdpChecksum;
        ULONG       IpChecksum;
    } IPv4Transmit;

    struct
    {
        ULONG       Encapsulation;
        ULONG       IpOptionsSupported;
        ULONG       TcpOptionsSupported;
        ULONG       TcpChecksum;
        ULONG       UdpChecksum;
        ULONG       IpChecksum;
    } IPv4Receive;


    struct
    {
        ULONG       Encapsulation;
        ULONG       IpExtensionHeadersSupported;
        ULONG       TcpOptionsSupported;
        ULONG       TcpChecksum;
        ULONG       UdpChecksum;

    } IPv6Transmit;

    struct
    {
        ULONG       Encapsulation;
        ULONG       IpExtensionHeadersSupported;
        ULONG       TcpOptionsSupported;
        ULONG       TcpChecksum;
        ULONG       UdpChecksum;

    } IPv6Receive;

} NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD, *PNDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD;

typedef struct _NDIS_WMI_IPSEC_OFFLOAD_V1
{
    struct
    {
        ULONG   Encapsulation;
        ULONG   AhEspCombined;
        ULONG   TransportTunnelCombined;
        ULONG   IPv4Options;
        ULONG   Flags;
    } Supported;

    struct
    {
        ULONG   Md5;
        ULONG   Sha_1;
        ULONG   Transport;
        ULONG   Tunnel;
        ULONG   Send;
        ULONG   Receive;
    } IPv4AH;

    struct
    {
        ULONG   Des;
        ULONG   Reserved;
        ULONG   TripleDes;
        ULONG   NullEsp;
        ULONG   Transport;
        ULONG   Tunnel;
        ULONG   Send;
        ULONG   Receive;
    } IPv4ESP;

} NDIS_WMI_IPSEC_OFFLOAD_V1, *PNDIS_WMI_IPSEC_OFFLOAD_V1;

typedef struct _NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2
{
    struct 
    {
         ULONG     Encapsulation;
         ULONG     MaxOffLoadSize;
         ULONG     MinSegmentCount;
    }IPv4;

    struct 
    {
         ULONG     Encapsulation;
         ULONG     MaxOffLoadSize;
         ULONG     MinSegmentCount;
         ULONG     IpExtensionHeadersSupported;
         ULONG     TcpOptionsSupported;
    }IPv6;

} NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2, *PNDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2;


typedef struct _NDIS_WMI_OFFLOAD
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_OFFLOAD;
    // Header.Size = sizeof(NDIS_OFFLOAD);
    // Header.Revision  = NDIS_OFFLOAD_REVISION_1;
    //
    NDIS_OBJECT_HEADER                  Header;

    //
    // Checksum Offload information
    //
    NDIS_WMI_TCP_IP_CHECKSUM_OFFLOAD    Checksum;

    //
    // Large Send Offload information
    //
    NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V1   LsoV1;

    //
    // IPsec Offload Information
    //
    NDIS_WMI_IPSEC_OFFLOAD_V1           IPsecV1;
    //
    // Large Send Offload version 2 Information
    //
    NDIS_WMI_TCP_LARGE_SEND_OFFLOAD_V2  LsoV2;

    ULONG                               Flags;

#if (NDIS_SUPPORT_NDIS61)
    //
    // IPsec offload version 2 information
    //
    NDIS_IPSEC_OFFLOAD_V2               IPsecV2;
#endif // (NDIS_SUPPORT_NDIS61)


}NDIS_WMI_OFFLOAD, *PNDIS_WMI_OFFLOAD;

#define NDIS_SIZEOF_NDIS_WMI_OFFLOAD_REVISION_1   RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_OFFLOAD, Flags) 
#if (NDIS_SUPPORT_NDIS61)
#define NDIS_SIZEOF_NDIS_WMI_OFFLOAD_REVISION_2   RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_OFFLOAD, IPsecV2) 
#endif // (NDIS_SUPPORT_NDIS61)


#pragma warning(push)
#pragma warning(disable:4214) //nonstandard extension used : bit field types other than int

//
// Describes TCP connection offload capabilities or configuration  
// of the NIC. Used in OID_TCP_CONNECTION_OFFLOAD_CURRENT_CONFIG,
// OID_TCP_CONNECTION_OFFLOAD_HARDWARE_CAPABILITIES and 
// NDIS_STATUS_OFFLOAD_RESUME
//
#define NDIS_TCP_CONNECTION_OFFLOAD_REVISION_1              1
#if (NDIS_SUPPORT_NDIS61)
#define NDIS_TCP_CONNECTION_OFFLOAD_REVISION_2              2
#endif // (NDIS_SUPPORT_NDIS61)

typedef struct _NDIS_TCP_CONNECTION_OFFLOAD
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_DEFAULT;         
    // Header.Revision = NDIS_TCP_CONNECTION_OFFLOAD_REVISION_1;
    // Header.Size = sizeof(NDIS_TCP_CONNECTION_OFFLOAD);
    //
    NDIS_OBJECT_HEADER Header;
    ULONG Encapsulation;
    ULONG SupportIPv4:2;
    ULONG SupportIPv6:2;
    ULONG SupportIPv6ExtensionHeaders:2;
    ULONG SupportSack:2;
#if (NDIS_SUPPORT_NDIS61)
    ULONG CongestionAlgorithm:4;
#endif // (NDIS_SUPPORT_NDIS61)
    ULONG TcpConnectionOffloadCapacity;
    ULONG Flags;
} NDIS_TCP_CONNECTION_OFFLOAD, *PNDIS_TCP_CONNECTION_OFFLOAD;

#define NDIS_SIZEOF_TCP_CONNECTION_OFFLOAD_REVISION_1 RTL_SIZEOF_THROUGH_FIELD(NDIS_TCP_CONNECTION_OFFLOAD, Flags)
#if (NDIS_SUPPORT_NDIS61)
#define NDIS_SIZEOF_TCP_CONNECTION_OFFLOAD_REVISION_2 RTL_SIZEOF_THROUGH_FIELD(NDIS_TCP_CONNECTION_OFFLOAD, Flags)
#endif // (NDIS_SUPPORT_NDIS61)

#pragma warning(pop)

typedef struct _NDIS_WMI_TCP_CONNECTION_OFFLOAD
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_DEFAULT;         
    // Header.Revision = NDIS_TCP_CONNECTION_OFFLOAD_REVISION_1;
    // Header.Size = sizeof(NDIS_TCP_CONNECTION_OFFLOAD);
    //
    NDIS_OBJECT_HEADER Header;
    ULONG Encapsulation;
    ULONG SupportIPv4;
    ULONG SupportIPv6;
    ULONG SupportIPv6ExtensionHeaders;
    ULONG SupportSack;
    ULONG TcpConnectionOffloadCapacity;
    ULONG Flags;
} NDIS_WMI_TCP_CONNECTION_OFFLOAD, *PNDIS_WMI_TCP_CONNECTION_OFFLOAD;

#define NDIS_SIZEOF_WMI_TCP_CONNECTION_OFFLOAD_REVISION_1 RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_TCP_CONNECTION_OFFLOAD, Flags)

#define NDIS_MAXIMUM_PORTS 0x1000000

//
// definitions for NDIS PORTs
//

typedef ULONG NDIS_PORT_NUMBER, *PNDIS_PORT_NUMBER;

//
// port related data structures
//
#define NDIS_DEFAULT_PORT_NUMBER ((NDIS_PORT_NUMBER)0)
    
//
// NDIS_PORT_TYPE defines the application of a port 
//
typedef enum _NDIS_PORT_TYPE
{
    NdisPortTypeUndefined,
    NdisPortTypeBridge,
    NdisPortTypeRasConnection,
    NdisPortType8021xSupplicant,
    NdisPortTypeMax,
}NDIS_PORT_TYPE, *PNDIS_PORT_TYPE;
    
    
//
// NDIS_PORT_AUTHENTICATION_STATE defines the authentication state of a port
// on a particular data path
//
typedef enum _NDIS_PORT_AUTHORIZATION_STATE
{
    NdisPortAuthorizationUnknown,
    NdisPortAuthorized,
    NdisPortUnauthorized,
    NdisPortReauthorizing
} NDIS_PORT_AUTHORIZATION_STATE, *PNDIS_PORT_AUTHORIZATION_STATE;


//
// NDIS_PORT_CONTROLL_STATE specifies if a port is "controlled" 
// i.e. if it needs authentication, on a particular data path
//

typedef enum _NDIS_PORT_CONTROL_STATE
{
    NdisPortControlStateUnknown,
    NdisPortControlStateControlled,
    NdisPortControlStateUncontrolled
} NDIS_PORT_CONTROLL_STATE, *PNDIS_PORT_CONTROLL_STATE;
    
    
    
//
// NDIS_PORT_STATE is used in port state change status indications
// as well as OID_GEN_PORT_STATE query OID
//

#define NDIS_PORT_STATE_REVISION_1     1
typedef struct _NDIS_PORT_STATE
{
    NDIS_OBJECT_HEADER              Header;    
    NDIS_MEDIA_CONNECT_STATE        MediaConnectState;
    ULONG64                         XmitLinkSpeed;
    ULONG64                         RcvLinkSpeed;
    NET_IF_DIRECTION_TYPE           Direction;
    NDIS_PORT_CONTROLL_STATE        SendControlState;
    NDIS_PORT_CONTROLL_STATE        RcvControlState;
    NDIS_PORT_AUTHORIZATION_STATE   SendAuthorizationState;
    NDIS_PORT_AUTHORIZATION_STATE   RcvAuthorizationState;
    ULONG                           Flags;
}NDIS_PORT_STATE, *PNDIS_PORT_STATE;

#define NDIS_SIZEOF_PORT_STATE_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_PORT_STATE, Flags)

//
// NDIS_PORT_PARAMETERS is used in OID_GEN_PORT_PARAMETERS set OID
//
#define NDIS_PORT_AUTHENTICATION_PARAMETERS_REVISION_1     1

typedef struct _NDIS_PORT_AUTHENTICATION_PARAMETERS
{
    NDIS_OBJECT_HEADER              Header;    
    NDIS_PORT_CONTROLL_STATE        SendControlState;
    NDIS_PORT_CONTROLL_STATE        RcvControlState;
    NDIS_PORT_AUTHORIZATION_STATE   SendAuthorizationState;
    NDIS_PORT_AUTHORIZATION_STATE   RcvAuthorizationState;
}NDIS_PORT_AUTHENTICATION_PARAMETERS, *PNDIS_PORT_AUTHENTICATION_PARAMETERS;

#define NDIS_SIZEOF_PORT_AUTHENTICATION_PARAMETERS_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_PORT_AUTHENTICATION_PARAMETERS, RcvAuthorizationState)


//
// Flags used in NDIS_PORT_CHARACTERISTICS Flags field.
//
#define  NDIS_PORT_CHAR_USE_DEFAULT_AUTH_SETTINGS             0x00000001

//
// NDIS_PORT_CHARACTERISTICS is used in port allocation and 
// arrival notification as part of NDIS_PORT structure
//
#define NDIS_PORT_CHARACTERISTICS_REVISION_1     1
typedef struct _NDIS_PORT_CHARACTERISTICS
{
    NDIS_OBJECT_HEADER              Header;
    NDIS_PORT_NUMBER                PortNumber;
    ULONG                           Flags;
    NDIS_PORT_TYPE                  Type;
    NDIS_MEDIA_CONNECT_STATE        MediaConnectState;
    ULONG64                         XmitLinkSpeed;
    ULONG64                         RcvLinkSpeed;
    NET_IF_DIRECTION_TYPE           Direction;
    NDIS_PORT_CONTROLL_STATE        SendControlState;
    NDIS_PORT_CONTROLL_STATE        RcvControlState;
    NDIS_PORT_AUTHORIZATION_STATE   SendAuthorizationState;
    NDIS_PORT_AUTHORIZATION_STATE   RcvAuthorizationState;
} NDIS_PORT_CHARACTERISTICS, *PNDIS_PORT_CHARACTERISTICS;
   
#define NDIS_SIZEOF_PORT_CHARACTERISTICS_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_PORT_CHARACTERISTICS, RcvAuthorizationState)
    
//
// NDIS_PORT structure is used in port activation 
// PnP notification
//
typedef struct _NDIS_PORT NDIS_PORT, *PNDIS_PORT;

struct _NDIS_PORT
{
    PNDIS_PORT                  Next;
    PVOID                       NdisReserved;
    PVOID                       MiniportReserved;
    PVOID                       ProtocolReserved;
    NDIS_PORT_CHARACTERISTICS   PortCharacteristics;
};


#define NDIS_PORT_ARRAY_REVISION_1                1
//
// NDIS_PORT_ARRAY is used in enumerating the ports
//
typedef struct _NDIS_PORT_ARRAY
{
    NDIS_OBJECT_HEADER              Header;
    ULONG                           NumberOfPorts;
    ULONG                           OffsetFirstPort;
    ULONG                           ElementSize;
    NDIS_PORT_CHARACTERISTICS       Ports[1];
}NDIS_PORT_ARRAY, *PNDIS_PORT_ARRAY;

#define NDIS_SIZEOF_PORT_ARRAY_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_PORT_ARRAY, Ports)

typedef enum _NDIS_NETWORK_CHANGE_TYPE
{
    NdisPossibleNetworkChange = 1,
    NdisDefinitelyNetworkChange,
    NdisNetworkChangeFromMediaConnect,
    NdisNetworkChangeMax
} NDIS_NETWORK_CHANGE_TYPE, *PNDIS_NETWORK_CHANGE_TYPE;


#define  NDIS_WMI_DEFAULT_METHOD_ID             1

#define  NDIS_WMI_OBJECT_TYPE_SET               0x01
#define  NDIS_WMI_OBJECT_TYPE_METHOD            0x02
#define  NDIS_WMI_OBJECT_TYPE_EVENT             0x03
#define  NDIS_WMI_OBJECT_TYPE_ENUM_ADAPTER      0x04
#define  NDIS_WMI_OBJECT_TYPE_OUTPUT_INFO       0x05

#define NDIS_WMI_METHOD_HEADER_REVISION_1       1 

typedef struct _NDIS_WMI_METHOD_HEADER
{
    NDIS_OBJECT_HEADER   Header;
    NDIS_PORT_NUMBER     PortNumber;
    NET_LUID             NetLuid;
    ULONG64              RequestId;
    ULONG                Timeout;
    UCHAR                Padding[4];
} NDIS_WMI_METHOD_HEADER, *PNDIS_WMI_METHOD_HEADER;

#define NDIS_SIZEOF_WMI_METHOD_HEADER_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_METHOD_HEADER, Padding)
       
#define NDIS_WMI_SET_HEADER_REVISION_1         1

typedef struct _NDIS_WMI_SET_HEADER
{
    NDIS_OBJECT_HEADER   Header;
    NDIS_PORT_NUMBER     PortNumber;
    NET_LUID             NetLuid;
    ULONG64              RequestId;
    ULONG                Timeout;
    UCHAR                Padding[4];
} NDIS_WMI_SET_HEADER, *PNDIS_WMI_SET_HEADER;

#define NDIS_SIZEOF_WMI_SET_HEADER_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_SET_HEADER, Padding)

#define NDIS_WMI_EVENT_HEADER_REVISION_1      1

typedef struct _NDIS_WMI_EVENT_HEADER
{
    NDIS_OBJECT_HEADER   Header;
    NET_IFINDEX          IfIndex;
    NET_LUID             NetLuid;
    ULONG64              RequestId;    
    NDIS_PORT_NUMBER     PortNumber;
    ULONG                DeviceNameLength;
    ULONG                DeviceNameOffset;
    UCHAR                Padding[4];
} NDIS_WMI_EVENT_HEADER, *PNDIS_WMI_EVENT_HEADER;

#define NDIS_SIZEOF_WMI_EVENT_HEADER_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_EVENT_HEADER, Padding)

#define NDIS_WMI_ENUM_ADAPTER_REVISION_1       1

typedef struct _NDIS_WMI_ENUM_ADAPTER
{
    NDIS_OBJECT_HEADER   Header;
    NET_IFINDEX          IfIndex;
    NET_LUID             NetLuid;
    USHORT               DeviceNameLength;
    CHAR                 DeviceName[1];
}NDIS_WMI_ENUM_ADAPTER, *PNDIS_WMI_ENUM_ADAPTER;

#define NDIS_SIZEOF_WMI_ENUM_ADAPTER_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_ENUM_ADAPTER, DeviceName)
        
//
// Flags used in standardized keyword *NdisDeviceType
//
#define NDIS_DEVICE_TYPE_ENDPOINT           0x00000001


#if (NDIS_SUPPORT_NDIS61)

//
// Structure and defines for 
// OID_GEN_HD_SPLIT_PARAMETERS
//
#define NDIS_HD_SPLIT_PARAMETERS_REVISION_1      1

typedef struct _NDIS_HD_SPLIT_PARAMETERS
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_DEFAULT;
    // Header.Revision = NDIS_HD_SPLIT_PARAMETERS_REVISION_1;
    // Header.Size = sizeof(NDIS_HD_SPLIT_PARAMETERS);
    // 
    NDIS_OBJECT_HEADER      Header;
    ULONG                   HDSplitCombineFlags;
}NDIS_HD_SPLIT_PARAMETERS, *PNDIS_HD_SPLIT_PARAMETERS;

#define NDIS_SIZEOF_HD_SPLIT_PARAMETERS_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_HD_SPLIT_PARAMETERS, HDSplitCombineFlags)

//
// Flags used in NDIS_HD_SPLIT_PARAMETERS->HDSplitCombineFlags 
// and NDIS_HD_SPLIT_CURRENT_CONFIG->HDSplitCombineFlags
//
#define NDIS_HD_SPLIT_COMBINE_ALL_HEADERS          0x00000001

//
// Structure and defines for 
// OID_GEN_HD_SPLIT_CURRENT_CONFIG
//
#define NDIS_HD_SPLIT_CURRENT_CONFIG_REVISION_1      1

typedef struct _NDIS_HD_SPLIT_CURRENT_CONFIG
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_DEFAULT;
    // Header.Revision = NDIS_HD_SPLIT_CURRENT_CONFIG_REVISION_1;
    // Header.Size = sizeof(NDIS_HD_SPLIT_CURRENT_CONFIG);
    // 
    NDIS_OBJECT_HEADER          Header;    
    ULONG                       HardwareCapabilities;
    ULONG                       CurrentCapabilities;
    ULONG                       HDSplitFlags;
    ULONG                       HDSplitCombineFlags;
    ULONG                       BackfillSize;
    ULONG                       MaxHeaderSize;
} NDIS_HD_SPLIT_CURRENT_CONFIG, *PNDIS_HD_SPLIT_CURRENT_CONFIG;

#define NDIS_SIZEOF_HD_SPLIT_CURRENT_CONFIG_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_HD_SPLIT_CURRENT_CONFIG, MaxHeaderSize)

//
// Flags used in NDIS_HD_SPLIT_ATTRIBUTES->HardwareCapabilities
// and NDIS_HD_SPLIT_ATTRIBUTES->CurrentCapabilities. They are also
// used in NDIS_HD_SPLIT_CURRENT_CONFIG->HardwareCapabilities
// and NDIS_HD_SPLIT_CURRENT_CONFIG->CurrentCapabilities. 
//
#define NDIS_HD_SPLIT_CAPS_SUPPORTS_HEADER_DATA_SPLIT         0x00000001
#define NDIS_HD_SPLIT_CAPS_SUPPORTS_IPV4_OPTIONS              0x00000002
#define NDIS_HD_SPLIT_CAPS_SUPPORTS_IPV6_EXTENSION_HEADERS    0x00000004
#define NDIS_HD_SPLIT_CAPS_SUPPORTS_TCP_OPTIONS               0x00000008

//
// Flags used in NDIS_HD_SPLIT_ATTRIBUTES->HDSplitFlags and
// NDIS_HD_SPLIT_CURRENT_CONFIG->HDSplitFlags
//
#define NDIS_HD_SPLIT_ENABLE_HEADER_DATA_SPLIT     0x00000001

#endif // (NDIS_SUPPORT_NDIS61)

#define NDIS_WMI_OUTPUT_INFO_REVISION_1    1;

typedef struct NDIS_WMI_OUTPUT_INFO
{
    NDIS_OBJECT_HEADER   Header;
    ULONG                Flags;
    UCHAR                SupportedRevision;
    ULONG                DataOffset;
    
} NDIS_WMI_OUTPUT_INFO, *PNDIS_WMI_OUTPUT_INFO;

#define NDIS_SIZEOF_WMI_OUTPUT_INFO_REVISION_1     \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_OUTPUT_INFO, DataOffset)


#if (NDIS_SUPPORT_NDIS620)

//
// NDIS 6.20 power management
//

//
// flags used in SupportedWoLPatterns field of NDIS_PM_CAPABILITIES
// to advertise WOL pattern capabilities
// 
#define NDIS_PM_WOL_BITMAP_PATTERN_SUPPORTED                    0x00000001
#define NDIS_PM_WOL_MAGIC_PACKET_SUPPORTED                      0x00000002
#define NDIS_PM_WOL_IPV4_TCP_SYN_SUPPORTED                      0x00000004
#define NDIS_PM_WOL_IPV6_TCP_SYN_SUPPORTED                      0x00000008
#define NDIS_PM_WOL_IPV4_DEST_ADDR_WILDCARD_SUPPORTED           0x00000200
#define NDIS_PM_WOL_IPV6_DEST_ADDR_WILDCARD_SUPPORTED           0x00000800
#define NDIS_PM_WOL_EAPOL_REQUEST_ID_MESSAGE_SUPPORTED          0x00010000

// 
// flags used in EnabledWoLPacketPatterns field of NDIS_PM_PARAMETERS
// to advertise WOL pattern capabilities
// 
#define NDIS_PM_WOL_BITMAP_PATTERN_ENABLED                      0x00000001
#define NDIS_PM_WOL_MAGIC_PACKET_ENABLED                        0x00000002
#define NDIS_PM_WOL_IPV4_TCP_SYN_ENABLED                        0x00000004
#define NDIS_PM_WOL_IPV6_TCP_SYN_ENABLED                        0x00000008
#define NDIS_PM_WOL_IPV4_DEST_ADDR_WILDCARD_ENABLED             0x00000200
#define NDIS_PM_WOL_IPV6_DEST_ADDR_WILDCARD_ENABLED             0x00000800
#define NDIS_PM_WOL_EAPOL_REQUEST_ID_MESSAGE_ENABLED            0x00010000

//
// Values used in Priority field of NDIS_PM_WOL_PATTERN
//
#define NDIS_PM_WOL_PRIORITY_LOWEST                             0xFFFFFFFF
#define NDIS_PM_WOL_PRIORITY_NORMAL                             0x10000000
#define NDIS_PM_WOL_PRIORITY_HIGHEST                            0x00000001

//
// flags used in SupportedProtocolOffloads field of NDIS_PM_CAPABILITIES
// to advertise protocol offload capabilities
//
#define NDIS_PM_PROTOCOL_OFFLOAD_ARP_SUPPORTED                    0x00000001
#define NDIS_PM_PROTOCOL_OFFLOAD_NS_SUPPORTED                     0x00000002
#define NDIS_PM_PROTOCOL_OFFLOAD_80211_RSN_REKEY_SUPPORTED        0x00000080

//
// flags used in EnabledProtocolOffloads field of NDIS_PM_PARAMETERS
// to advertise protocol offload capabilities
//
#define NDIS_PM_PROTOCOL_OFFLOAD_ARP_ENABLED                      0x00000001
#define NDIS_PM_PROTOCOL_OFFLOAD_NS_ENABLED                       0x00000002
#define NDIS_PM_PROTOCOL_OFFLOAD_80211_RSN_REKEY_ENABLED          0x00000080

//
// Values used in Priority field of NDIS_PM_PROTOCOL_OFFLOAD
//
#define NDIS_PM_PROTOCOL_OFFLOAD_PRIORITY_LOWEST                  0xFFFFFFFF
#define NDIS_PM_PROTOCOL_OFFLOAD_PRIORITY_NORMAL                  0x10000000
#define NDIS_PM_PROTOCOL_OFFLOAD_PRIORITY_HIGHEST                 0x00000001


//
// Values used in WakeUpFlags field of NDIS_PM_PARAMETERS
//
#define NDIS_PM_WAKE_ON_LINK_CHANGE_ENABLED                       0x00000001

//
// enum type for wake on lan patterns based on packet type
// used in WoLPacketType field of NDIS_PM_WOL_PATTERN structure
//
typedef enum _NDIS_PM_WOL_PACKET
{
    NdisPMWoLPacketUnspecified,
    NdisPMWoLPacketBitmapPattern,
    NdisPMWoLPacketMagicPacket,
    NdisPMWoLPacketIPv4TcpSyn,
    NdisPMWoLPacketIPv6TcpSyn,    
    NdisPMWoLPacketEapolRequestIdMessage,
    NdisPMWoLPacketMaximum 
}NDIS_PM_WOL_PACKET, *PNDIS_PM_WOL_PACKET;

//
// enum types for offloaded protocols used in ProtocolOffloadType
// field of NDIS_PM_PROTOCOL_OFFLOAD structure
//  
typedef enum _NDIS_PM_PROTOCOL_OFFLOAD_TYPE
{
    NdisPMProtocolOffloadIdUnspecified,
    NdisPMProtocolOffloadIdIPv4ARP,
    NdisPMProtocolOffloadIdIPv6NS,
    NdisPMProtocolOffload80211RSNRekey,
    NdisPMProtocolOffloadIdMaximum
}NDIS_PM_PROTOCOL_OFFLOAD_TYPE, *PNDIS_PM_PROTOCOL_OFFLOAD_TYPE;

//
// Limited size string used in NSID power management structures 
//
#define NDIS_PM_MAX_STRING_SIZE 64

typedef struct _NDIS_PM_COUNTED_STRING
{
    USHORT      Length; // in -Bytes-
    WCHAR       String[NDIS_PM_MAX_STRING_SIZE + 1];
} NDIS_PM_COUNTED_STRING, *PNDIS_PM_COUNTED_STRING;


//
// NDIS_PM_CAPABILITIES structure is used in PowerManagementCapabilitiesEx field of 
// NDIS_MINIPORT_ADAPTER_GENERAL_ATTRIBUTES and NDIS_BIND_PARAMETERS
//
#define NDIS_PM_CAPABILITIES_REVISION_1              1

typedef struct _NDIS_PM_CAPABILITIES
{
    NDIS_OBJECT_HEADER      Header;
    ULONG                   Flags;
    ULONG                   SupportedWoLPacketPatterns;
    ULONG                   NumTotalWoLPatterns;
    ULONG                   MaxWoLPatternSize;              // maximum bytes that can be compared against a pattern
    ULONG                   MaxWoLPatternOffset;            // strting from MAC header, how many bytes in the packet can be examined
    ULONG                   MaxWoLPacketSaveBuffer;         // how many bytes of WOL packet can be saved to a buffer and indicated up
    ULONG                   SupportedProtocolOffloads;
    ULONG                   NumArpOffloadIPv4Addresses;
    ULONG                   NumNSOffloadIPv6Addresses;
    NDIS_DEVICE_POWER_STATE MinMagicPacketWakeUp;
    NDIS_DEVICE_POWER_STATE MinPatternWakeUp;
    NDIS_DEVICE_POWER_STATE MinLinkChangeWakeUp;
}NDIS_PM_CAPABILITIES, *PNDIS_PM_CAPABILITIES;

#define NDIS_SIZEOF_NDIS_PM_CAPABILITIES_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_PM_CAPABILITIES, MinLinkChangeWakeUp)


//
// NDIS_PM_PARAMETERS structure is used in OID_PM_PARAMETERS for quering and 
// updating currently enabled power management hardware capabilities.
//
#define NDIS_PM_PARAMETERS_REVISION_1              1

typedef struct _NDIS_PM_PARAMETERS
{
    NDIS_OBJECT_HEADER      Header;
    ULONG                   EnabledWoLPacketPatterns; // NDIS_PM_WOL_XXX flags
    ULONG                   EnabledProtocolOffloads;  // NDIS_PM_PROTOCOL_OFFLOAD_XXX flags    
    ULONG                   WakeUpFlags;              // NDIS_PM_WAKE_XXX flags
    
} NDIS_PM_PARAMETERS, *PNDIS_PM_PARAMETERS;

#define NDIS_SIZEOF_NDIS_PM_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_PM_PARAMETERS, WakeUpFlags)


//        
// Used in _EAPOL_REQUEST_ID_MESSAGE_WOL_PACKET_PARAMETERS
// When the following flag is set, the packet must be encrypted.
//
#define EAPOL_REQUEST_ID_WOL_FLAG_MUST_ENCRYPT		0x00000001

//
// Pattern IDs above this number are treated as pre-assigned 
//
#define NDIS_PM_MAX_PATTERN_ID  0x0000FFFF

//
// This value is used in the Flags field of the NDIS_PM_WOL_PATTERN structure 
// It indicates that the a pre-assigned ID is used 
//
#define NDIS_PM_PRIVATE_PATTERN_ID  0x00000001


//
// structure used in OID_PM_ADD_WOL_PATTERN and OID_PM_WOL_PATTERN_LIST
//
#define NDIS_PM_WOL_PATTERN_REVISION_1              1


typedef struct _NDIS_PM_WOL_PATTERN
{
    NDIS_OBJECT_HEADER          Header;
    ULONG                       Flags;
    ULONG                       Priority;
    NDIS_PM_WOL_PACKET          WoLPacketType;
    NDIS_PM_COUNTED_STRING      FriendlyName;
    ULONG                       PatternId;   // Pattern ID set by NDIS 
    ULONG                       NextWoLPatternOffset;
    
    union _WOL_PATTERN
    {   
        //
        // IPv4 TCP SYN information
        //
        struct _IPV4_TCP_SYN_WOL_PACKET_PARAMETERS
        {
            ULONG   Flags;                  
            UCHAR   IPv4SourceAddress[4];   // IPv4 source address
            UCHAR   IPv4DestAddress[4];     // IPv4 destination address
            USHORT  TCPSourcePortNumber;    // TCP source port
            USHORT  TCPDestPortNumber;      // TCP destination port
            
        }IPv4TcpSynParameters;

        //
        // IPv6 TCP SYN information
        //
        struct _IPV6_TCP_SYN_WOL_PACKET_PARAMETERS
        {
            ULONG   Flags;                  
            UCHAR   IPv6SourceAddress[16];  // source IPv6 address
            UCHAR   IPv6DestAddress[16];    // destination IPv6 address
            USHORT  TCPSourcePortNumber;    // source TCP port
            USHORT  TCPDestPortNumber;      // destination TCP port
        }IPv6TcpSynParameters;
        
        //
        // 802.1X EAPOL request identity message parameters 
        //
        struct _EAPOL_REQUEST_ID_MESSAGE_WOL_PACKET_PARAMETERS
        {
            ULONG   Flags;
        } EapolRequestIdMessageParameters;
        
        struct _WOL_BITMAP_PATTERN
        {
            ULONG   Flags;                  
            ULONG   MaskOffset;     // offset for mask buffer from the beginning of NDIS_PM_WOL_PATTERN structure
            ULONG   MaskSize;       // Mask size                
            ULONG   PatternOffset;  // offset for pattern buffer from the beginning of NDIS_PM_WOL_PATTERN structure
            ULONG   PatternSize;    // pattern size
        }WoLBitMapPattern;
    }WoLPattern;
    
}NDIS_PM_WOL_PATTERN, *PNDIS_PM_WOL_PATTERN;


#define NDIS_SIZEOF_NDIS_PM_WOL_PATTERN_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_PM_WOL_PATTERN, WoLPattern)


//
// 802.11 RSN handshake values 
// Used in DOT11_RSN_REKEY_PARAMETERS structure 
//
#define DOT11_RSN_KEK_LENGTH              	16
#define DOT11_RSN_KCK_LENGTH              	16

//
// structure is used in OID_PM_ADD_PROTOCOL_OFFLOAD and
// OID_PM_PROTOCOL_OFFLOAD_LIST OID requests
//
#define NDIS_PM_PROTOCOL_OFFLOAD_REVISION_1             1

typedef struct _NDIS_PM_PROTOCOL_OFFLOAD
{
    NDIS_OBJECT_HEADER            Header;
    ULONG                         Flags;
    ULONG                         Priority;
    NDIS_PM_PROTOCOL_OFFLOAD_TYPE ProtocolOffloadType;
    NDIS_PM_COUNTED_STRING        FriendlyName;
    ULONG                         ProtocolOffloadId; // offloaded protocol ID set by NDIS
    ULONG                         NextProtocolOffloadOffset;
    
    union _PROTOCOL_OFFLOAD_PARAMETERS
    {
        //
        // IPv4 ARP
        //
        struct _IPV4_ARP_PARAMETERS
        {
            ULONG   Flags;                  
            UCHAR   RemoteIPv4Address[4];   // source IPv4 address (optional)
            UCHAR   HostIPv4Address[4];     // destination IPv4 address
            UCHAR   MacAddress[6];          // MAC address                        
        }IPv4ARPParameters;

        //
        // IPv6 NS. ICMPv6 type 135
        // flags determine link local or global address. Discovery, reachability or dup address detection
        // multicat MAC address: 3333WXYZ where WXYZ is the least significant 4 bytes from 
        // the solicited node IPv6 address
        //
        struct  _IPV6_NS_PARAMETERS
        {
            ULONG   Flags;                              
            UCHAR   RemoteIPv6Address[16];              // source IPv6 address (optional)
            UCHAR   SolicitedNodeIPv6Address[16];       // solicited node IPv6 address
            UCHAR   MacAddress[6];                      // MAC address     
            UCHAR   TargetIPv6Addresses[2][16];         // An array of local IPv6 addesses           
        }IPv6NSParameters;
                        
        //
        // 802.11 RSN handshake
        //
        struct _DOT11_RSN_REKEY_PARAMETERS
        {
            ULONG   Flags;                  
            UCHAR   KCK[DOT11_RSN_KCK_LENGTH];
            UCHAR   KEK[DOT11_RSN_KEK_LENGTH];
            ULONGLONG KeyReplayCounter;
        }Dot11RSNRekeyParameters;
        
    }ProtocolOffloadParameters;
    
}NDIS_PM_PROTOCOL_OFFLOAD, *PNDIS_PM_PROTOCOL_OFFLOAD;

#define NDIS_SIZEOF_NDIS_PM_PROTOCOL_OFFLOAD_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_PM_PROTOCOL_OFFLOAD, ProtocolOffloadParameters)


//
// enum values used in NDIS_WMI_PM_ADMIN_CONFIG structure
//
typedef enum _NDIS_PM_ADMIN_CONFIG_STATE
{
    NdisPMAdminConfigUnspecified = 0,
    NdisPMAdminConfigDisabled = 1,
    NdisPMAdminConfigEnabled = 2
} NDIS_PM_ADMIN_CONFIG_STATE, *PNDIS_PM_ADMIN_CONFIG_STATE;

//
// NDIS_WMI_PM_ADMIN_CONFIG struct is used with 
// GUID_NDIS_PM_ADMIN_CONFIG WMI method
//
#define NDIS_WMI_PM_ADMIN_CONFIG_REVISION_1     1

typedef struct _NDIS_WMI_PM_ADMIN_CONFIG
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_DEFAULT;         
    // Header.Revision = NDIS_WMI_PM_ADMIN_CONFIG_REVISION_1;
    // Header.Size = sizeof(NDIS_WMI_PM_ADMIN_CONFIG);
    //
    NDIS_OBJECT_HEADER Header;

    NDIS_PM_ADMIN_CONFIG_STATE   WakeOnPattern;
    NDIS_PM_ADMIN_CONFIG_STATE   WakeOnMagicPacket;
    NDIS_PM_ADMIN_CONFIG_STATE   DeviceSleepOnDisconnect;
    NDIS_PM_ADMIN_CONFIG_STATE   PMARPOffload;
    NDIS_PM_ADMIN_CONFIG_STATE   PMNSOffload;
    NDIS_PM_ADMIN_CONFIG_STATE   PMWiFiRekeyOffload;    
    
} NDIS_WMI_PM_ADMIN_CONFIG, *PNDIS_WMI_PM_ADMIN_CONFIG;

#define NDIS_SIZEOF_WMI_PM_ADMIN_CONFIG_REVISION_1 RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_PM_ADMIN_CONFIG, PMWiFiRekeyOffload)

//
// enum values used in NDIS_WMI_PM_ACTIVE_CAPABILITIES structure
//
typedef enum _NDIS_PM_CAPABILITY_STATE
{
    NdisPMAdminConfigUnsupported = 0,
    NdisPMAdminConfigInactive = 1,
    NdisPMAdminConfigActive = 2
} NDIS_PM_CAPABILITY_STATE, *PNDIS_PM_CAPABILITY_STATE;

//
// NDIS_WMI_PM_ACTIVE_CAPABILITIES struct is used with 
// GUID_NDIS_PM_ACTIVE_CAPABILITIES WMI method
//
#define NDIS_WMI_PM_ACTIVE_CAPABILITIES_REVISION_1     1

typedef struct _NDIS_WMI_PM_ACTIVE_CAPABILITIES
{
    //
    // Header.Type = NDIS_OBJECT_TYPE_DEFAULT;         
    // Header.Revision = NDIS_WMI_PM_ACTIVE_CAPABILITIES_REVISION_1;
    // Header.Size = sizeof(NDIS_WMI_PM_ACTIVE_CAPABILITIES);
    //
    NDIS_OBJECT_HEADER Header;

    NDIS_PM_CAPABILITY_STATE   WakeOnPattern;
    NDIS_PM_CAPABILITY_STATE   WakeOnMagicPacket;
    NDIS_PM_CAPABILITY_STATE   DeviceSleepOnDisconnect;
    NDIS_PM_CAPABILITY_STATE   PMARPOffload;
    NDIS_PM_CAPABILITY_STATE   PMNSOffload;
    NDIS_PM_CAPABILITY_STATE   PMWiFiRekeyOffload;    
    
} NDIS_WMI_PM_ACTIVE_CAPABILITIES, *PNDIS_WMI_PM_ACTIVE_CAPABILITIES;

#define NDIS_SIZEOF_WMI_PM_ACTIVE_CAPABILITIES_REVISION_1 RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_PM_ACTIVE_CAPABILITIES, PMWiFiRekeyOffload)


//
// receive filter data structures and definitions
//


//
// used in SupportedHeaders field of NDIS_RECEIVE_FILTER_CAPABILITIES
// structure
//
#define NDIS_RECEIVE_FILTER_MAC_HEADER_SUPPORTED            0x00000001


//
// used in SupportedMacHeaderFields field of NDIS_RECEIVE_FILTER_CAPABILITIES
// structure
//
#define NDIS_RECEIVE_FILTER_MAC_HEADER_DEST_ADDR_SUPPORTED      0x00000001
#define NDIS_RECEIVE_FILTER_MAC_HEADER_SOURCE_ADDR_SUPPORTED    0x00000002
#define NDIS_RECEIVE_FILTER_MAC_HEADER_PROTOCOL_SUPPORTED       0x00000004
#define NDIS_RECEIVE_FILTER_MAC_HEADER_VLAN_ID_SUPPORTED        0x00000008
#define NDIS_RECEIVE_FILTER_MAC_HEADER_PRIORITY_SUPPORTED       0x00000010



//
// used in SupportedFilterTests field of NDIS_RECEIVE_FILTER_CAPABILITIES
// structure
//
#define NDIS_RECEIVE_FILTER_TEST_HEADER_FIELD_EQUAL_SUPPORTED               0x00000001
#define NDIS_RECEIVE_FILTER_TEST_HEADER_FIELD_MASK_EQUAL_SUPPORTED          0x00000002


//
// used in SupportedQueueProperties field of NDIS_RECEIVE_FILTER_CAPABILITIES
// structure
//
#define NDIS_RECEIVE_FILTER_MSI_X_SUPPORTED                         0x00000001
#define NDIS_RECEIVE_FILTER_VM_QUEUE_SUPPORTED                      0x00000002
#define NDIS_RECEIVE_FILTER_LOOKAHEAD_SPLIT_SUPPORTED               0x00000004



//
// The following bits are used in EnabledFilterTypes field of
// NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS structure and 
// EnabledFilterTypes field of NDIS_RECEIVE_FILTER_CAPABILITIES structure
//
#define NDIS_RECEIVE_FILTER_VMQ_FILTERS_ENABLED                     0x00000001



//
// The following bits are used in EnabledQueueTypes field of
// NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS structure and
// EnabledQueueTypes field of NDIS_RECEIVE_FILTER_CAPABILITIES structure
//
#define NDIS_RECEIVE_FILTER_VM_QUEUES_ENABLED                       0x00000001



//
// Data structures for advertising generic filtering capabilities
// in ReceiveFilterCapabilities field of NDIS_MINIPORT_ADAPTER_HARDWARE_ASSIST_ATTRIBUTES 
// structure, OID_RECEIVE_FILTER_HARDWARE_CAPABILITIES  and
// OID_RECEIVE_FILTER_CURRENT_CAPABILITIES query OIDs
//
#define NDIS_RECEIVE_FILTER_CAPABILITIES_REVISION_1     1
typedef struct _NDIS_RECEIVE_FILTER_CAPABILITIES
{
    __in  NDIS_OBJECT_HEADER          Header;
    __in  ULONG                       Flags;
    __in  ULONG                       EnabledFilterTypes;
    __in  ULONG                       EnabledQueueTypes;
    __in  ULONG                       NumQueues;
    __in  ULONG                       SupportedQueueProperties;
    __in  ULONG                       SupportedFilterTests;
    __in  ULONG                       SupportedHeaders;
    __in  ULONG                       SupportedMacHeaderFields;
    __in  ULONG                       MaxMacHeaderFilters;
    __in  ULONG                       MaxQueueGroups;
    __in  ULONG                       MaxQueuesPerQueueGroup;
    __in  ULONG                       MinLookaheadSplitSize;
    __in  ULONG                       MaxLookaheadSplitSize;
} NDIS_RECEIVE_FILTER_CAPABILITIES, *PNDIS_RECEIVE_FILTER_CAPABILITIES;

#define NDIS_SIZEOF_RECEIVE_FILTER_CAPABILITIES_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_CAPABILITIES, MaxLookaheadSplitSize)


//
// Data structure for advertising the NIC VMQ capabilities
// Used in HardwareNicSwitchCapabilities and CurrentNicSwitchCapabilities
// fields of NDIS_MINIPORT_ADAPTER_HARDWARE_ASSIST_ATTRIBUTES,
// OID_NIC_SWITCH_HARDWARE_CAPABILITIES and OID_NIC_SWITCH_CURRENT_CAPABILITIES
//
#define NDIS_NIC_SWITCH_CAPABILITIES_REVISION_1        1
typedef struct _NDIS_NIC_SWITCH_CAPABILITIES
{
    __in  NDIS_OBJECT_HEADER          Header;
    __in  ULONG                       Flags;
    __in  ULONG                       NdisReserved1;
    __in  ULONG                       NumTotalMacAddresses;
    __in  ULONG                       NumMacAddressesPerPort;
    __in  ULONG                       NumVlansPerPort;
    __in  ULONG                       NdisReserved2;
    __in  ULONG                       NdisReserved3;
}NDIS_NIC_SWITCH_CAPABILITIES, *PNDIS_NIC_SWITCH_CAPABILITIES;

#define NDIS_SIZEOF_NIC_SWITCH_CAPABILITIES_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_NIC_SWITCH_CAPABILITIES, NdisReserved3)

//
// NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS is used in 
// OID_RECEIVE_FILTER_GLOBAL_PARAMETERS query OID
// in order to query particular aspects 
// of receive filtering for a miniport adapter
//
#define NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS_REVISION_1       1
typedef struct _NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS
{
    __in  NDIS_OBJECT_HEADER          Header;
    __in  ULONG                       Flags;
    __in  ULONG                       EnabledFilterTypes;
    __in  ULONG                       EnabledQueueTypes;
} NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS, *PNDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_FILTER_GLOBAL_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_GLOBAL_PARAMETERS, EnabledQueueTypes)

typedef ULONG NDIS_RECEIVE_QUEUE_ID, *PNDIS_RECEIVE_QUEUE_ID;
typedef ULONG NDIS_RECEIVE_QUEUE_GROUP_ID, *PNDIS_RECEIVE_QUEUE_GROUP_ID;

#define NDIS_DEFAULT_RECEIVE_QUEUE_ID               0
#define NDIS_DEFAULT_RECEIVE_QUEUE_GROUP_ID         0
#define NDIS_DEFAULT_RECEIVE_FILTER_ID              0

typedef ULONG NDIS_RECEIVE_FILTER_ID, *PNDIS_RECEIVE_FILTER_ID;

typedef enum _NDIS_RECEIVE_FILTER_TYPE
{
    NdisReceiveFilterTypeUndefined,
    NdisReceiveFilterTypeVMQueue,
    NdisReceiveFilterTypeMaximum
}NDIS_RECEIVE_FILTER_TYPE, *PNDIS_RECEIVE_FILTER_TYPE;

typedef enum _NDIS_FRAME_HEADER
{
    NdisFrameHeaderUndefined,
    NdisFrameHeaderMac,
    NdisFrameHeaderMaximum
}NDIS_FRAME_HEADER, *PNDIS_FRAME_HEADER;

typedef enum _NDIS_MAC_HEADER_FIELD
{
    NdisMacHeaderFieldUndefined,
    NdisMacHeaderFieldDestinationAddress,
    NdisMacHeaderFieldSourceAddress,
    NdisMacHeaderFieldProtocol,
    NdisMacHeaderFieldVlanId,
    NdisMacHeaderFieldPriority,
    NdisMacHeaderFieldMaximum
}NDIS_MAC_HEADER_FIELD, *PNDIS_MAC_HEADER_FIELD;


typedef enum _NDIS_RECEIVE_FILTER_TEST
{
    NdisReceiveFilterTestUndefined,
    NdisReceiveFilterTestEqual,
    NdisReceiveFilterTestMaskEqual,
    NdisReceiveFilterTestMaximum
}NDIS_RECEIVE_FILTER_TEST, *PNDIS_RECEIVE_FILTER_TEST;



//
// Flags used in NDIS_RECEIVE_FILTER_FIELD_PARAMETERS.Flags field
//
#define NDIS_RECEIVE_FILTER_FIELD_MAC_HEADER_VLAN_UNTAGGED_OR_ZERO         0x00000001

//
// NDIS_RECEIVE_FILTER_FIELD_PARAMETERS is used in
// NDIS_RECEIVE_FILTER_PARAMETERS structure
//
#define NDIS_RECEIVE_FILTER_FIELD_PARAMETERS_REVISION_1       1

typedef struct _NDIS_RECEIVE_FILTER_FIELD_PARAMETERS
{
    __in NDIS_OBJECT_HEADER       Header;
    __in ULONG                    Flags;
    __in NDIS_FRAME_HEADER        FrameHeader;
    __in NDIS_RECEIVE_FILTER_TEST ReceiveFilterTest;
    __in union _HEADER_FIELD
    {
        NDIS_MAC_HEADER_FIELD       MacHeaderField;
    }HeaderField;
    
    __in union _FIELD_VALUE
    {   
        UCHAR               FieldByteValue;
        USHORT              FieldShortValue;
        ULONG               FieldLongValue;
        ULONG64             FieldLong64Value;
        UCHAR               FieldByteArrayValue[16];
    }FieldValue;

    __in union _RESULT_VALUE                          // used when test operation is MaskEqual
    {   
        UCHAR               ResultByteValue;
        USHORT              ResultShortValue;
        ULONG               ResultLongValue;
        ULONG64             ResultLong64Value;
        UCHAR               ResultByteArrayValue[16];
    }ResultValue;

}NDIS_RECEIVE_FILTER_FIELD_PARAMETERS, *PNDIS_RECEIVE_FILTER_FIELD_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_FILTER_FIELD_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_FIELD_PARAMETERS, ResultValue)


//
// NDIS_RECEIVE_FILTER_PARAMETERS is used in
// OID_RECEIVE_FILTER_PARAMETERS and OID_RECEIVE_FILTER_SET_FILTER
//
#define NDIS_RECEIVE_FILTER_PARAMETERS_REVISION_1       1

typedef struct _NDIS_RECEIVE_FILTER_PARAMETERS
{
    __in    NDIS_OBJECT_HEADER                     Header;
    __in    ULONG                                  Flags;
    __in    NDIS_RECEIVE_FILTER_TYPE               FilterType;
    __in    NDIS_RECEIVE_QUEUE_ID                  QueueId;
    __inout NDIS_RECEIVE_FILTER_ID                 FilterId;
    __in    ULONG                                  FieldParametersArrayOffset; // from the beginning of this structure
    __in    ULONG                                  FieldParametersArrayNumElements;
    __in    ULONG                                  FieldParametersArrayElementSize;
    __in    ULONG                                  RequestedFilterIdBitCount;
}NDIS_RECEIVE_FILTER_PARAMETERS, *PNDIS_RECEIVE_FILTER_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_FILTER_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_PARAMETERS, RequestedFilterIdBitCount)


//
// NDIS_RECEIVE_FILTER_CLEAR_PARAMETERS is used in
// OID_RECEIVE_FILTER_CLEAR_FILTER
//
#define NDIS_RECEIVE_FILTER_CLEAR_PARAMETERS_REVISION_1       1

typedef struct _NDIS_RECEIVE_FILTER_CLEAR_PARAMETERS
{
    __in NDIS_OBJECT_HEADER                           Header;
    __in ULONG                                        Flags;
    __in NDIS_RECEIVE_QUEUE_ID                        QueueId;
    __in NDIS_RECEIVE_FILTER_ID                       FilterId;
}NDIS_RECEIVE_FILTER_CLEAR_PARAMETERS, *PNDIS_RECEIVE_FILTER_CLEAR_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_FILTER_CLEAR_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_CLEAR_PARAMETERS, FilterId)



//
// enum value used in QueueType field of NDIS_RECEIVE_QUEUE_PARAMETERS structure
//
typedef enum _NDIS_RECEIVE_QUEUE_TYPE
{
    NdisReceiveQueueTypeUnspecified,
    NdisReceiveQueueTypeVMQueue,
    NdisReceiveQueueTypeMaximum
}NDIS_RECEIVE_QUEUE_TYPE, *PNDIS_RECEIVE_QUEUE_TYPE;



//
// bits used in Flags field of NDIS_RECEIVE_QUEUE_PARAMETERS in OID_RECEIVE_FILTER_ALLOCATE_QUEUE
// and OID_RECEIVE_FILTER_QUEUE_PARAMETERS -query- OID
// 
#define NDIS_RECEIVE_QUEUE_PARAMETERS_PER_QUEUE_RECEIVE_INDICATION              0x00000001
#define NDIS_RECEIVE_QUEUE_PARAMETERS_LOOKAHEAD_SPLIT_REQUIRED                  0x00000002

//
// bits used in Flags field of NDIS_RECEIVE_QUEUE_PARAMETERS in OID_RECEIVE_FILTER_QUEUE_PARAMETERS -set- OID 
// 
#define NDIS_RECEIVE_QUEUE_PARAMETERS_FLAGS_CHANGED                             0x00010000
#define NDIS_RECEIVE_QUEUE_PARAMETERS_PROCESSOR_AFFINITY_CHANGED                0x00020000
#define NDIS_RECEIVE_QUEUE_PARAMETERS_SUGGESTED_RECV_BUFFER_NUMBERS_CHANGED     0x00040000
#define NDIS_RECEIVE_QUEUE_PARAMETERS_NAME_CHANGED                              0x00080000


#define NDIS_RECEIVE_QUEUE_PARAMETERS_CHANGE_MASK                               0xFFFF0000

typedef NDIS_IF_COUNTED_STRING NDIS_QUEUE_NAME, *PNDIS_QUEUE_NAME;
typedef NDIS_IF_COUNTED_STRING NDIS_VM_NAME, *PNDIS_VM_NAME;

//
// NDIS_RECEIVE_QUEUE_PARAMETERS is used in 
// OID_RECEIVE_FILTER_ALLOCATE_QUEUE and OID_RECEIVE_FILTER_QUEUE_PARAMETERS
//
#define NDIS_RECEIVE_QUEUE_PARAMETERS_REVISION_1       1

typedef struct _NDIS_RECEIVE_QUEUE_PARAMETERS
{
    __in    NDIS_OBJECT_HEADER               Header;
    __inout ULONG                            Flags;
    __in    NDIS_RECEIVE_QUEUE_TYPE          QueueType;
    __inout NDIS_RECEIVE_QUEUE_ID            QueueId;
    __in    NDIS_RECEIVE_QUEUE_GROUP_ID      QueueGroupId;
    __in    GROUP_AFFINITY                   ProcessorAffinity;
    __in    ULONG                            NumSuggestedReceiveBuffers;
   __out    ULONG                            MSIXTableEntry;
    __in    ULONG                            LookaheadSize;
    __in    NDIS_VM_NAME                     VmName;       
    __in    NDIS_QUEUE_NAME                  QueueName;
}NDIS_RECEIVE_QUEUE_PARAMETERS, *PNDIS_RECEIVE_QUEUE_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_QUEUE_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_QUEUE_PARAMETERS, QueueName)


//
// NDIS_RECEIVE_QUEUE_FREE_PARAMETERS is used in 
// OID_RECEIVE_FILTER_FREE_QUEUE
//
#define NDIS_RECEIVE_QUEUE_FREE_PARAMETERS_REVISION_1       1

typedef struct _NDIS_RECEIVE_QUEUE_FREE_PARAMETERS
{
    __in NDIS_OBJECT_HEADER                   Header;
    __in ULONG                                Flags;
    __in NDIS_RECEIVE_QUEUE_ID                QueueId;
}NDIS_RECEIVE_QUEUE_FREE_PARAMETERS, *PNDIS_RECEIVE_QUEUE_FREE_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_QUEUE_FREE_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_QUEUE_FREE_PARAMETERS, QueueId)

//
// the following enum type is used in NDIS_RECEIVE_QUEUE_STATE
// and NDIS_RECEIVE_QUEUE_INFO
//
typedef enum _NDIS_RECEIVE_QUEUE_OPERATIONAL_STATE
{
    NdisReceiveQueueOperationalStateUndefined,
    NdisReceiveQueueOperationalStateRunning,
    NdisReceiveQueueOperationalStatePaused,
    NdisReceiveQueueOperationalStateDmaStopped,
    NdisReceiveQueueOperationalStateMaximum
}NDIS_RECEIVE_QUEUE_OPERATIONAL_STATE, *PNDIS_RECEIVE_QUEUE_OPERATIONAL_STATE;

//
// NDIS_RECEIVE_QUEUE_INFO is used with NDIS_RECEIVE_QUEUE_INFO_ARRAY
// in OID_RECEIVE_FILTER_ENUM_QUEUES that enumerates receive queues 
// on a miniport or open
//
#define NDIS_RECEIVE_QUEUE_INFO_REVISION_1              1

typedef struct _NDIS_RECEIVE_QUEUE_INFO
{   
    NDIS_OBJECT_HEADER                  Header;
    ULONG                               Flags;
    NDIS_RECEIVE_QUEUE_TYPE             QueueType;
    NDIS_RECEIVE_QUEUE_ID               QueueId;
    NDIS_RECEIVE_QUEUE_GROUP_ID         QueueGroupId;
    NDIS_RECEIVE_QUEUE_OPERATIONAL_STATE QueueState;
    GROUP_AFFINITY                      ProcessorAffinity;
    ULONG                               NumSuggestedReceiveBuffers;
    ULONG                               MSIXTableEntry;
    ULONG                               LookaheadSize;
    NDIS_VM_NAME                        VmName;       
    NDIS_QUEUE_NAME                     QueueName;
}NDIS_RECEIVE_QUEUE_INFO, *PNDIS_RECEIVE_QUEUE_INFO;

#define NDIS_SIZEOF_RECEIVE_QUEUE_INFO_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_QUEUE_INFO, QueueName)


//
// NDIS_RECEIVE_QUEUE_INFO_ARRAY is used in OID_RECEIVE_FILTER_ENUM_QUEUES
// that enumerates receive queues on a miniport or open. Each element in the 
// array is an NDIS_RECEIVE_QUEUE_INFO structure
//
#define NDIS_RECEIVE_QUEUE_INFO_ARRAY_REVISION_1             1

typedef struct _NDIS_RECEIVE_QUEUE_INFO_ARRAY
{
    NDIS_OBJECT_HEADER                          Header;
    ULONG                                       FirstElementOffset;
    ULONG                                       NumElements;
    ULONG                                       ElementSize;
}NDIS_RECEIVE_QUEUE_INFO_ARRAY, *PNDIS_RECEIVE_QUEUE_INFO_ARRAY;

#define NDIS_SIZEOF_RECEIVE_QUEUE_INFO_ARRAY_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_QUEUE_INFO_ARRAY, ElementSize)


//
// NDIS_RECEIVE_FILTER_INFO is used with NDIS_RECEIVE_FILTER_INFO_ARRAY
// in OID_RECEIVE_FILTER_ENUM_FILTERS that enumerates receive 
// filters on a queue
//
#define NDIS_RECEIVE_FILTER_INFO_REVISION_1             1

typedef struct _NDIS_RECEIVE_FILTER_INFO
{
    NDIS_OBJECT_HEADER                       Header;
    ULONG                                    Flags;
    NDIS_RECEIVE_FILTER_TYPE                 FilterType;
    NDIS_RECEIVE_FILTER_ID                   FilterId;
}NDIS_RECEIVE_FILTER_INFO, *PNDIS_RECEIVE_FILTER_INFO;

#define NDIS_SIZEOF_RECEIVE_FILTER_INFO_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_INFO, FilterId)


//
// NDIS_RECEIVE_FILTER_INFO_ARRAY is used in OID_RECEIVE_FILTER_ENUM_FILTERS
// that enumerates receive filters on a queue. Each element in the array
// is an NDIS_RECEIVE_FILTER_INFO structure
//
#define NDIS_RECEIVE_FILTER_INFO_ARRAY_REVISION_1             1

typedef struct _NDIS_RECEIVE_FILTER_INFO_ARRAY
{
    NDIS_OBJECT_HEADER                          Header;
    NDIS_RECEIVE_QUEUE_ID                       QueueId;
    ULONG                                       FirstElementOffset;
    ULONG                                       NumElements;
    ULONG                                       ElementSize;
}NDIS_RECEIVE_FILTER_INFO_ARRAY, *PNDIS_RECEIVE_FILTER_INFO_ARRAY;

#define NDIS_SIZEOF_RECEIVE_FILTER_INFO_ARRAY_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_FILTER_INFO_ARRAY, ElementSize)

//
// NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS is used 
// in OID_RECEIVE_FILTER_QUEUE_ALLOCATION_COMPLETE OID.
//
#define NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS_REVISION_1    1

typedef struct _NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS
{
    __in  NDIS_OBJECT_HEADER      Header;
    __in  ULONG                   Flags;
    __in  NDIS_RECEIVE_QUEUE_ID   QueueId;
    __out NDIS_STATUS             CompletionStatus;    
}NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS, *PNDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS, CompletionStatus)

//
// NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY is used in
// OID_RECEIVE_FILTER_QUEUE_ALLOCATION_COMPLETE OID request.
// Each element in array is an NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS
// structure.
//
#define NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY_REVISION_1         1

typedef struct _NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY
{
    NDIS_OBJECT_HEADER                          Header;
    ULONG                                       Flags;
    ULONG                                       FirstElementOffset; // offset to an array of NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_PARAMETERS
    ULONG                                       NumElements;
    ULONG                                       ElementSize;    
}NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY, *PNDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY;

#define NDIS_SIZEOF_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_QUEUE_ALLOCATION_COMPLETE_ARRAY, ElementSize)


#endif // #if (NDIS_SUPPORT_NDIS620)

#if ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6) 

#define NDIS_RECEIVE_SCALE_CAPABILITIES_REVISION_1     1

//
// What kind the receive scale capabilities the miniport can support, miniport drivers return
// some of these flags as CapabilitiesFlags in a structure _NDIS_RECEIVE_SCALE_CAPABILITIES 
// when they get a query about theire receive side scale capabilities.
//
#define NDIS_RSS_CAPS_MESSAGE_SIGNALED_INTERRUPTS                    0x01000000
#define NDIS_RSS_CAPS_CLASSIFICATION_AT_ISR                          0x02000000
#define NDIS_RSS_CAPS_CLASSIFICATION_AT_DPC                          0x04000000

#if NDIS_SUPPORT_NDIS620

#define NDIS_RSS_CAPS_USING_MSI_X                                    0x08000000

#endif
//
// What kind of hash field type the miniport can support
//
#define NDIS_RSS_CAPS_HASH_TYPE_TCP_IPV4                             0x00000100
#define NDIS_RSS_CAPS_HASH_TYPE_TCP_IPV6                             0x00000200
#define NDIS_RSS_CAPS_HASH_TYPE_TCP_IPV6_EX                          0x00000400

//
// the following structure defines the Receive scale capabilities of the miniport
//
typedef struct _NDIS_RECEIVE_SCALE_CAPABILITIES
{
    NDIS_OBJECT_HEADER  Header;
    ULONG   CapabilitiesFlags;
    ULONG   NumberOfInterruptMessages;
    ULONG   NumberOfReceiveQueues;
} NDIS_RECEIVE_SCALE_CAPABILITIES, *PNDIS_RECEIVE_SCALE_CAPABILITIES;

#define NDIS_SIZEOF_RECEIVE_SCALE_CAPABILITIES_REVISION_1   \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_SCALE_CAPABILITIES, NumberOfReceiveQueues)

//
// What hash functions does NDIS support
//
#define NdisHashFunctionToeplitz                            0x00000001 // supported hash function 1 -- Main RSS hash function 
#define NdisHashFunctionReserved1                           0x00000002 // supported hash function 2
#define NdisHashFunctionReserved2                           0x00000004 // supported hash function 3
#define NdisHashFunctionReserved3                           0x00000008 // supported hash function 4

#define NDIS_HASH_FUNCTION_MASK                             0x000000FF
#define NDIS_HASH_TYPE_MASK                                 0x00FFFF00

#define NDIS_RSS_HASH_FUNC_FROM_HASH_INFO(_HashInfo)  \
        ((_HashInfo) & (NDIS_HASH_FUNCTION_MASK))

#define NDIS_RSS_HASH_TYPE_FROM_HASH_INFO(_HashInfo)  \
        ((_HashInfo) & (NDIS_HASH_TYPE_MASK))

#define NDIS_RSS_HASH_INFO_FROM_TYPE_AND_FUNC(_HashType, _HashFunction) \
        ((_HashType) | (_HashFunction))

//
// What kind of hash field type the protocol what the miniport to do
//
#define NDIS_HASH_IPV4                                      0x00000100
#define NDIS_HASH_TCP_IPV4                                  0x00000200
#define NDIS_HASH_IPV6                                      0x00000400
#define NDIS_HASH_IPV6_EX                                   0x00000800
#define NDIS_HASH_TCP_IPV6                                  0x00001000
#define NDIS_HASH_TCP_IPV6_EX                               0x00002000

//
// Flags to denote the parameters that are kept unmodified.
//
#define NDIS_RSS_PARAM_FLAG_BASE_CPU_UNCHANGED              0x0001
#define NDIS_RSS_PARAM_FLAG_HASH_INFO_UNCHANGED             0x0002
#define NDIS_RSS_PARAM_FLAG_ITABLE_UNCHANGED                0x0004
#define NDIS_RSS_PARAM_FLAG_HASH_KEY_UNCHANGED              0x0008
#define NDIS_RSS_PARAM_FLAG_DISABLE_RSS                     0x0010

#define NDIS_RSS_INDIRECTION_TABLE_SIZE_REVISION_1          128
#define NDIS_RSS_HASH_SECRET_KEY_SIZE_REVISION_1            40

//
// used in OID_GEN_RECEIVE_SCALE_PARAMETERS
//
#define NDIS_RECEIVE_SCALE_PARAMETERS_REVISION_1     1

#if NDIS_SUPPORT_NDIS620

#define NDIS_RECEIVE_SCALE_PARAMETERS_REVISION_2     2

#endif

typedef struct _NDIS_RECEIVE_SCALE_PARAMETERS
{
    NDIS_OBJECT_HEADER      Header;

    // Qualifies the rest of the information.
    USHORT                  Flags;

    // The base CPU number to do receive processing. not used.
    USHORT                  BaseCpuNumber;

    // This describes the hash function and type being enabled.
    ULONG                   HashInformation;

    // The size of indirection table array.
    USHORT                  IndirectionTableSize;    
    // The offset of the indirection table from the beginning of this structure.
    ULONG                   IndirectionTableOffset;  

    // The size of the secret key.
    USHORT                  HashSecretKeySize;   
    // The offset of the secret key from the beginning of this structure.
    ULONG                   HashSecretKeyOffset; 

#if NDIS_SUPPORT_NDIS620
    ULONG                   ProcessorMasksOffset;     //
    ULONG                   NumberOfProcessorMasks;   // Array of type GROUP_AFFINITY representing procs used in the indirection table 
    ULONG                   ProcessorMasksEntrySize;  //
#endif

    // The hash map table is a CCHAR array for Revision 1.
    // It is a PROCESSOR_NUMBER array for Revision 2
} NDIS_RECEIVE_SCALE_PARAMETERS, *PNDIS_RECEIVE_SCALE_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_SCALE_PARAMETERS_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_SCALE_PARAMETERS, HashSecretKeyOffset)

//
// Maximum indirection table and private key sizes for revision 1
//
#define NDIS_RSS_INDIRECTION_TABLE_MAX_SIZE_REVISION_1      128
#define NDIS_RSS_HASH_SECRET_KEY_MAX_SIZE_REVISION_1        40

#if NDIS_SUPPORT_NDIS620

#define NDIS_SIZEOF_RECEIVE_SCALE_PARAMETERS_REVISION_2    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_SCALE_PARAMETERS, ProcessorMasksEntrySize)

//
// Maximum indirection table and private key sizes for revision 2
//
#define NDIS_RSS_INDIRECTION_TABLE_MAX_SIZE_REVISION_2      (128*sizeof(PROCESSOR_NUMBER))
#define NDIS_RSS_HASH_SECRET_KEY_MAX_SIZE_REVISION_2        40

#endif

//
// Used in OID_GEN_RECEIVE_HASH
//
#define NDIS_RECEIVE_HASH_FLAG_ENABLE_HASH                      0x00000001
#define NDIS_RECEIVE_HASH_FLAG_HASH_INFO_UNCHANGED              0x00000002
#define NDIS_RECEIVE_HASH_FLAG_HASH_KEY_UNCHANGED               0x00000004

#define NDIS_RECEIVE_HASH_PARAMETERS_REVISION_1                 1

typedef struct _NDIS_RECEIVE_HASH_PARAMETERS
{
    NDIS_OBJECT_HEADER      Header;

    // Qualifies the rest of the information.
    ULONG                   Flags;

    // This describes the hash function and type being enabled.
    ULONG                   HashInformation;

    // The size of the secret key.
    USHORT                  HashSecretKeySize;
    
    // The offset of the secret key from the beginning of this structure.
    ULONG                   HashSecretKeyOffset; 
} NDIS_RECEIVE_HASH_PARAMETERS, *PNDIS_RECEIVE_HASH_PARAMETERS;

#define NDIS_SIZEOF_RECEIVE_HASH_PARAMETERS_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RECEIVE_HASH_PARAMETERS, HashSecretKeyOffset)


typedef enum _NDIS_PROCESSOR_VENDOR
{
    NdisProcessorVendorUnknown,
    NdisProcessorVendorGenuinIntel,
    NdisProcessorVendorGenuineIntel = NdisProcessorVendorGenuinIntel,
    NdisProcessorVendorAuthenticAMD
} NDIS_PROCESSOR_VENDOR, *PNDIS_PROCESSOR_VENDOR;

#if NDIS_SUPPORT_NDIS620

//
// Used in the RssProcessorArray in NDIS_RSS_PROCESSOR_INFO
//
typedef struct _NDIS_RSS_PROCESSOR
{
    PROCESSOR_NUMBER ProcNum;
    USHORT           PreferenceIndex;
    USHORT           Reserved;
} NDIS_RSS_PROCESSOR, *PNDIS_RSS_PROCESSOR;

#define NDIS_SIZEOF_RSS_PROCESSOR_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RSS_PROCESSOR, PreferenceIndex)

#define NDIS_RSS_PROCESSOR_INFO_REVISION_1      1

//
// Used in NdisGetRssProcessorInformation API
//
typedef struct _NDIS_RSS_PROCESSOR_INFO
{
    NDIS_OBJECT_HEADER      Header;
    ULONG                   Flags;
    PROCESSOR_NUMBER        RssBaseProcessor;
    ULONG                   MaxNumRssProcessors;
    USHORT                  PreferredNumaNode;

    ULONG                   RssProcessorArrayOffset;// |
    ULONG                   RssProcessorCount;      // | Array of NDIS_RSS_PROCESSOR
    ULONG                   RssProcessorEntrySize;  // |

} NDIS_RSS_PROCESSOR_INFO, *PNDIS_RSS_PROCESSOR_INFO;

C_ASSERT(sizeof(NDIS_RSS_PROCESSOR_INFO) % __alignof(NDIS_RSS_PROCESSOR) == 0);

#define NDIS_SIZEOF_RSS_PROCESSOR_INFO_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_RSS_PROCESSOR_INFO, RssProcessorEntrySize)


//
// Used in ProcessorInfo array in NDIS_SYSTEM_PROCESSOR_INFO_EX
//
typedef struct _NDIS_PROCESSOR_INFO_EX
{
    PROCESSOR_NUMBER ProcNum;
    ULONG            SocketId;
    ULONG            CoreId;
    ULONG            HyperThreadId;
    USHORT           NodeId;
    USHORT           NodeDistance;
}NDIS_PROCESSOR_INFO_EX, *PNDIS_PROCESSOR_INFO_EX;

#define NDIS_SYSTEM_PROCESSOR_INFO_EX_REVISION_1 1

//
// Used in NdisGetProcessorInformationEx API
//
typedef struct _NDIS_SYSTEM_PROCESSOR_INFO_EX
{
    NDIS_OBJECT_HEADER      Header;
    ULONG                   Flags;
    NDIS_PROCESSOR_VENDOR   ProcessorVendor;
    ULONG                   NumSockets;
    ULONG                   NumCores;    
    ULONG                   NumCoresPerSocket;
    ULONG                   MaxHyperThreadingProcsPerCore;
    
    ULONG                   ProcessorInfoOffset;      // |
    ULONG                   NumberOfProcessors;       // | Array of NDIS_PROCESSOR_INFO_EX
    ULONG                   ProcessorInfoEntrySize;   // |

} NDIS_SYSTEM_PROCESSOR_INFO_EX, *PNDIS_SYSTEM_PROCESSOR_INFO_EX;

C_ASSERT(sizeof(NDIS_SYSTEM_PROCESSOR_INFO_EX) % __alignof(NDIS_PROCESSOR_INFO_EX) == 0);

#define NDIS_SIZEOF_SYSTEM_PROCESSOR_INFO_EX_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_SYSTEM_PROCESSOR_INFO_EX, ProcessorInfoEntrySize)

//
// Enum to identify Hypervisor Parition type
// Used in NDIS_HYPERVISOR_INFO.PartitionType
//
typedef enum _NDIS_HYPERVISOR_PARTITION_TYPE
{
    NdisHypervisorPartitionTypeUnknown,
    NdisHypervisorPartitionTypeMsHvParent,
    NdisHypervisorPartitionMsHvChild,
    NdisHypervisorPartitionTypeMax
} NDIS_HYPERVISOR_PARTITION_TYPE, *PNDIS_HYPERVISOR_PARTITION_TYPE;

//
// Flags used in NDIS_HYPERVISOR_INFO.Flags field
//
#define NDIS_HYPERVISOR_INFO_FLAG_HYPERVISOR_PRESENT            0x00000001

#define NDIS_HYPERVISOR_INFO_REVISION_1 1

//
// Structure used to return Hypervisor related information
// in NdisGetHypervisorInfo API
//
typedef struct _NDIS_HYPERVISOR_INFO
{
    NDIS_OBJECT_HEADER                  Header;
    ULONG                               Flags;
    NDIS_HYPERVISOR_PARTITION_TYPE      PartitionType;
} NDIS_HYPERVISOR_INFO, *PNDIS_HYPERVISOR_INFO;

#define NDIS_SIZEOF_HYPERVISOR_INFO_REVISION_1    \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_HYPERVISOR_INFO, PartitionType)

//
// The following data structures are used with Receive Queue related WMI
// guids. NDIS will translate these data structures to those used 
// in OIDs
//

typedef struct _NDIS_WMI_GROUP_AFFINITY {
    ULONG64             Mask;
    USHORT              Group;
    USHORT              Reserved[3];
} NDIS_WMI_GROUP_AFFINITY, *PNDIS_WMI_GROUP_AFFINITY;

//
// NDIS_WMI_RECEIVE_QUEUE_PARAMETERS is used in GUID_NDIS_RECEIVE_FILTER_QUEUE_PARAMETERS
//
#define NDIS_WMI_RECEIVE_QUEUE_PARAMETERS_REVISION_1       1

typedef struct _NDIS_WMI_RECEIVE_QUEUE_PARAMETERS
{
    NDIS_OBJECT_HEADER               Header;
    ULONG                            Flags;
    NDIS_RECEIVE_QUEUE_TYPE          QueueType;
    NDIS_RECEIVE_QUEUE_ID            QueueId;
    NDIS_RECEIVE_QUEUE_GROUP_ID      QueueGroupId;
    NDIS_WMI_GROUP_AFFINITY          ProcessorAffinity;
    ULONG                            NumSuggestedReceiveBuffers;
    ULONG                            MSIXTableEntry;
    ULONG                            LookaheadSize;
    NDIS_VM_NAME                     VmName;       
    NDIS_QUEUE_NAME                  QueueName;
}NDIS_WMI_RECEIVE_QUEUE_PARAMETERS, *PNDIS_WMI_RECEIVE_QUEUE_PARAMETERS;

#define NDIS_SIZEOF_WMI_RECEIVE_QUEUE_PARAMETERS_REVISION_1     \
    RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_RECEIVE_QUEUE_PARAMETERS, QueueName)

//
// NDIS_WMI_RECEIVE_QUEUE_INFO is used in GUID_NDIS_RECEIVE_FILTER_ENUM_QUEUES
//
#define NDIS_WMI_RECEIVE_QUEUE_INFO_REVISION_1              1

typedef struct _NDIS_WMI_RECEIVE_QUEUE_INFO
{   
    NDIS_OBJECT_HEADER                  Header;
    ULONG                               Flags;
    NDIS_RECEIVE_QUEUE_TYPE             QueueType;
    NDIS_RECEIVE_QUEUE_ID               QueueId;
    NDIS_RECEIVE_QUEUE_GROUP_ID         QueueGroupId;
    NDIS_RECEIVE_QUEUE_OPERATIONAL_STATE QueueState;
    NDIS_WMI_GROUP_AFFINITY             ProcessorAffinity;
    ULONG                               NumSuggestedReceiveBuffers;
    ULONG                               MSIXTableEntry;
    ULONG                               LookaheadSize;
    NDIS_VM_NAME                        VmName;       
    NDIS_QUEUE_NAME                     QueueName;       
}NDIS_WMI_RECEIVE_QUEUE_INFO, *PNDIS_WMI_RECEIVE_QUEUE_INFO;

#define NDIS_SIZEOF_WMI_RECEIVE_QUEUE_INFO_REVISION_1      \
        RTL_SIZEOF_THROUGH_FIELD(NDIS_WMI_RECEIVE_QUEUE_INFO, QueueName)    
        

#endif // NDIS_SUPPORT_NDIS620

#endif // ((NTDDI_VERSION >= NTDDI_VISTA) || NDIS_SUPPORT_NDIS6) 

#endif // NTDDI_VERSION >= NTDDI_VISTA

#ifdef __cplusplus
}
#endif

#if _MSC_VER >= 1200

#pragma warning(pop)

#else

#endif

#endif // _NTDDNDIS_

