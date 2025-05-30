/*+--------------------------------------------------------------------------

Microsoft Windows
Copyright (c) Microsoft Corporation.  All rights reserved.

File:       wbcl.h

Contents:   Definitions and prototypes for parsing the TCG Log

---------------------------------------------------------------------------*/
#ifdef _MSC_VER
#pragma once
#endif

#ifndef _WBCL_H
#define _WBCL_H

#include <winapifamily.h>

#if defined(__cplusplus)
extern "C" {
#endif

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#if NTDDI_VERSION >= NTDDI_WIN8 

//----------------------------------TCG-defined PCR Event Types
#ifndef SIPAEV_PREBOOT_CERT
#define SIPAEV_PREBOOT_CERT (0x00000000)
#define SIPAEV_POST_CODE (0x00000001)
#define SIPAEV_UNUSED (0x00000002)
#define SIPAEV_NO_ACTION (0x00000003)
#define SIPAEV_SEPARATOR (0x00000004)
#define SIPAEV_ACTION (0x00000005)
#define SIPAEV_EVENT_TAG (0x00000006)
#define SIPAEV_S_CRTM_CONTENTS (0x00000007)
#define SIPAEV_S_CRTM_VERSION (0x00000008)
#define SIPAEV_CPU_MICROCODE (0x00000009)
#define SIPAEV_PLATFORM_CONFIG_FLAGS (0x0000000A)
#define SIPAEV_TABLE_OF_DEVICES (0x0000000B)
#define SIPAEV_COMPACT_HASH (0x0000000C)
#define SIPAEV_IPL (0x0000000D)
#define SIPAEV_IPL_PARTITION_DATA (0x0000000E)
#define SIPAEV_NONHOST_CODE (0x0000000F)
#define SIPAEV_NONHOST_CONFIG (0x00000010)
#define SIPAEV_NONHOST_INFO (0x00000011)
#define SIPAEV_EFI_EVENT_BASE (0x80000000)
#define SIPAEV_EFI_VARIABLE_DRIVER_CONFIG (0x80000001)
#define SIPAEV_EFI_VARIABLE_BOOT (0x80000002)
#define SIPAEV_EFI_BOOT_SERVICES_APPLICATION (0x80000003)
#define SIPAEV_EFI_BOOT_SERVICES_DRIVER (0x80000004)
#define SIPAEV_EFI_RUNTIME_SERVICES_DRIVER (0x80000005)
#define SIPAEV_EFI_GPT_EVENT (0x80000006)
#define SIPAEV_EFI_ACTION (0x80000007)
#define SIPAEV_EFI_PLATFORM_FIRMWARE_BLOB (0x80000008)
#define SIPAEV_EFI_HANDOFF_TABLES (0x80000009)
#endif

//-----------------------------Types of tagged events in WBCL file
#ifndef SIPAEVENTTYPE_NONMEASURED
// Top 8 bits are event flags
#define SIPAEVENTTYPE_NONMEASURED                       (0x80000000)
#define SIPAEVENTTYPE_AGGREGATION                       (0x40000000)

// The next 8 bits are enumerationg the event types
#define SIPAEVENTTYPE_CONTAINER                         (0x00010000)
#define SIPAEVENTTYPE_INFORMATION                       (0x00020000)
#define SIPAEVENTTYPE_ERROR                             (0x00030000)
#define SIPAEVENTTYPE_PREOSPARAMETER                    (0x00040000)
#define SIPAEVENTTYPE_OSPARAMETER                       (0x00050000)
#define SIPAEVENTTYPE_AUTHORITY                         (0x00060000)
#define SIPAEVENTTYPE_LOADEDMODULE                      (0x00070000)
#define SIPAEVENTTYPE_TRUSTPOINT                        (0x00080000)
#define SIPAEVENTTYPE_ELAM                              (0x00090000)

//SIPAEVENTTYPE_CONTAINER
#define SIPAEVENT_TRUSTBOUNDARY            (SIPAEVENTTYPE_AGGREGATION + \
                                            SIPAEVENTTYPE_CONTAINER + \
                                            0x0001)
#define SIPAEVENT_ELAM_AGGREGATION         (SIPAEVENTTYPE_AGGREGATION + \
                                            SIPAEVENTTYPE_CONTAINER + \
                                            0x0002)
#define SIPAEVENT_LOADEDMODULE_AGGREGATION (SIPAEVENTTYPE_AGGREGATION + \
                                            SIPAEVENTTYPE_CONTAINER + \
                                            0x0003)
#define SIPAEVENT_TRUSTPOINT_AGGREGATION   (SIPAEVENTTYPE_NONMEASURED + \
                                            SIPAEVENTTYPE_AGGREGATION + \
                                            SIPAEVENTTYPE_CONTAINER + \
                                            0x0004)

//SIPAEVENTTYPE_ERROR
#define SIPAERROR_FIRMWAREFAILURE          (SIPAEVENTTYPE_ERROR + \
                                            0x0001)
#define SIPAERROR_TPMFAILURE               (SIPAEVENTTYPE_NONMEASURED + \
                                            SIPAEVENTTYPE_ERROR + \
                                            0x0002)
#define SIPAERROR_INTERNALFAILURE          (SIPAEVENTTYPE_ERROR + \
                                            0x0003)

//SIPAEVENTTYPE_INFORMATION
#define SIPAEVENT_INFORMATION              (SIPAEVENTTYPE_INFORMATION + \
                                            0x0001)
#define SIPAEVENT_BOOTCOUNTER              (SIPAEVENTTYPE_INFORMATION + \
                                            0x0002)
#define SIPAEVENT_TRANSFER_CONTROL         (SIPAEVENTTYPE_INFORMATION + \
                                            0x0003)
#define SIPAEVENT_APPLICATION_RETURN       (SIPAEVENTTYPE_INFORMATION + \
                                            0x0004)
#define SIPAEVENT_BITLOCKER_UNLOCK         (SIPAEVENTTYPE_INFORMATION + \
                                            0x0005)
#define SIPAEVENT_EVENTCOUNTER             (SIPAEVENTTYPE_INFORMATION + \
                                            0x0006)
#define SIPAEVENT_COUNTERID                (SIPAEVENTTYPE_INFORMATION + \
                                            0x0007)

//SIPAEVENTTYPE_PREOSPARAMETER
#define SIPAEVENT_BOOTDEBUGGING            (SIPAEVENTTYPE_PREOSPARAMETER + \
                                            0x0001)

//SIPAEVENTTYPE_OSPARAMETER
#define SIPAEVENT_OSKERNELDEBUG            (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0001)
#define SIPAEVENT_CODEINTEGRITY            (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0002)
#define SIPAEVENT_TESTSIGNING              (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0003)
#define SIPAEVENT_DATAEXECUTIONPREVENTION  (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0004)
#define SIPAEVENT_SAFEMODE                 (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0005)
#define SIPAEVENT_WINPE                    (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0006)
#define SIPAEVENT_PHYSICALADDRESSEXTENSION (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0007)
#define SIPAEVENT_OSDEVICE                 (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0008)
#define SIPAEVENT_SYSTEMROOT               (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x0009)
#define SIPAEVENT_HYPERVISOR_LAUNCH_TYPE   (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x000A)
#define SIPAEVENT_HYPERVISOR_PATH          (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x000B)
#define SIPAEVENT_HYPERVISOR_IOMMU_POLICY  (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x000C)
#define SIPAEVENT_HYPERVISOR_DEBUG         (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x000D)

#define SIPAEVENT_DRIVER_LOAD_POLICY       (SIPAEVENTTYPE_OSPARAMETER + \
                                            0x000E)

//SIPAEVENTTYPE_AUHTORITY
#define SIPAEVENT_NOAUTHORITY              (SIPAEVENTTYPE_AUTHORITY + \
                                            0x0001)
#define SIPAEVENT_AUTHORITYPUBKEY          (SIPAEVENTTYPE_AUTHORITY + \
                                            0x0002)

//SIPAEVENTTYPE_LOADEDIMAGE
#define SIPAEVENT_FILEPATH                 (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0001)
#define SIPAEVENT_IMAGESIZE                (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0002)
#define SIPAEVENT_HASHALGORITHMID          (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0003)
#define SIPAEVENT_AUTHENTICODEHASH         (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0004)
#define SIPAEVENT_AUTHORITYISSUER          (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0005)
#define SIPAEVENT_AUTHORITYSERIAL          (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0006)
#define SIPAEVENT_IMAGEBASE                (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0007)
#define SIPAEVENT_AUTHORITYPUBLISHER       (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0008)
#define SIPAEVENT_AUTHORITYSHA1THUMBPRINT  (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x0009)
#define SIPAEVENT_IMAGEVALIDATED           (SIPAEVENTTYPE_LOADEDMODULE + \
                                            0x000a)
//SIPAEVENTTYPE_TRUSTPOINT
#define SIPAEVENT_QUOTE                    (SIPAEVENTTYPE_NONMEASURED + \
                                            SIPAEVENTTYPE_TRUSTPOINT + \
                                            0x0001)
#define SIPAEVENT_QUOTESIGNATURE           (SIPAEVENTTYPE_NONMEASURED + \
                                            SIPAEVENTTYPE_TRUSTPOINT + \
                                            0x0002)
#define SIPAEVENT_AIKID                    (SIPAEVENTTYPE_NONMEASURED + \
                                            SIPAEVENTTYPE_TRUSTPOINT + \
                                            0x0003)
#define SIPAEVENT_AIKPUBDIGEST             (SIPAEVENTTYPE_NONMEASURED + \
                                            SIPAEVENTTYPE_TRUSTPOINT + \
                                            0x0004)

// SIPAEVENTTYPE_ELAM
#define SIPAEVENT_ELAM_KEYNAME             (SIPAEVENTTYPE_ELAM + \
                                            0x0001)
#define SIPAEVENT_ELAM_CONFIGURATION       (SIPAEVENTTYPE_ELAM + \
                                            0x0002)
#define SIPAEVENT_ELAM_POLICY              (SIPAEVENTTYPE_ELAM + \
                                            0x0003)
#define SIPAEVENT_ELAM_MEASURED            (SIPAEVENTTYPE_ELAM + \
                                            0x0004)

//
#endif

//--------------------------------------------Value Definitions

#define FVEB_UNLOCK_FLAG_NONE            (0x00000000)
#define FVEB_UNLOCK_FLAG_CACHED          (0x00000001)
#define FVEB_UNLOCK_FLAG_MEDIA           (0x00000002)
#define FVEB_UNLOCK_FLAG_TPM             (0x00000004)
#define FVEB_UNLOCK_FLAG_PIN             (0x00000010)
#define FVEB_UNLOCK_FLAG_EXTERNAL        (0x00000020)
#define FVEB_UNLOCK_FLAG_RECOVERY        (0x00000040)

#define OSDEVICE_TYPE_UNKNOWN                       (0x00000000)
#define OSDEVICE_TYPE_BLOCKIO_HARDDISK              (0x00010001)
#define OSDEVICE_TYPE_BLOCKIO_REMOVABLEDISK         (0x00010002)
#define OSDEVICE_TYPE_BLOCKIO_CDROM                 (0x00010003)
#define OSDEVICE_TYPE_BLOCKIO_PARTITION             (0x00010004)
#define OSDEVICE_TYPE_BLOCKIO_FILE                  (0x00010005)
#define OSDEVICE_TYPE_BLOCKIO_RAMDISK               (0x00010006)
#define OSDEVICE_TYPE_BLOCKIO_VIRTUALHARDDISK       (0x00010007)
#define OSDEVICE_TYPE_SERIAL                        (0x00020000)
#define OSDEVICE_TYPE_UDP                           (0x00030000)


//--------------------------------------------------WBCL header
#define SIPAHDRSIGNATURE (0x4c434257) //WBCL
#define SIPALOGVERSION (0x00000001)

#endif //NTDDI_VERSION >= NTDDI_WIN8 

//---------------------------Logging structures in the TCG log
#pragma pack(push,1)

#define TPM_API_HASH_DATA_SIZE 20
typedef struct _TPM_API_HASH_DATA
{
    BYTE data[TPM_API_HASH_DATA_SIZE];
} TPM_API_HASH_DATA, *PTPM_API_HASH_DATA;

typedef CONST TPM_API_HASH_DATA *PCTPM_API_HASH_DATA;

#if NTDDI_VERSION >= NTDDI_WIN8 

typedef struct _TCG_PCClientPCREventStruct
{
    UINT32 pcrIndex;
    UINT32 eventType;
    TPM_API_HASH_DATA digest;
    UINT32 eventDataSize;
    BYTE event[1];
} TCG_PCClientPCREventStruct, *PTCG_PCClientPCREventStruct;
typedef const TCG_PCClientPCREventStruct *PCTCG_PCClientPCREventStruct;

typedef struct _TCG_PCClientTaggedEventStruct
{
    UINT32 EventID;
    UINT32 EventDataSize;
    BYTE EventData[1];
} TCG_PCClientTaggedEventStruct, *PTCG_PCClientTaggedEventStruct;
typedef const TCG_PCClientTaggedEventStruct *PCTCG_PCClientTaggedEventStruct;

typedef struct _WBCL_LogHdr
{
    UINT32 signature;
    UINT32 version;
    UINT32 entries;
    UINT32 length;
} WBCL_LogHdr, *PWBCL_LogHdr;

#endif //NTDDI_VERSION >= NTDDI_WIN8 

#pragma pack(pop)

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#if defined(__cplusplus)
}
#endif

#endif _WBCL_H

