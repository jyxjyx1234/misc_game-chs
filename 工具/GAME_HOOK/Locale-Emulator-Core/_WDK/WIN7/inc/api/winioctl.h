/*++ BUILD Version: 0016    // Increment this if a change has global effects

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    winioctl.h

Abstract:

    This module defines the 32-Bit Windows Device I/O control codes.

Revision History:

--*/


//
// Device interface class GUIDs.
//
// need these GUIDs outside conditional includes so that user can
//   #include <winioctl.h> in precompiled header
//   #include <initguid.h> in a single source file
//   #include <winioctl.h> in that source file a second time to instantiate the GUIDs
//
#ifdef DEFINE_GUID
//
// Make sure FAR is defined...
//
#ifndef FAR
#ifdef _WIN32
#define FAR
#else
#define FAR _far
#endif
#endif


DEFINE_GUID(GUID_DEVINTERFACE_DISK,                   0x53f56307L, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_CDROM,                  0x53f56308L, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_PARTITION,              0x53f5630aL, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_TAPE,                   0x53f5630bL, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_WRITEONCEDISK,          0x53f5630cL, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_VOLUME,                 0x53f5630dL, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_MEDIUMCHANGER,          0x53f56310L, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_FLOPPY,                 0x53f56311L, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_CDCHANGER,              0x53f56312L, 0xb6bf, 0x11d0, 0x94, 0xf2, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);
DEFINE_GUID(GUID_DEVINTERFACE_STORAGEPORT,            0x2accfe60L, 0xc130, 0x11d2, 0xb0, 0x82, 0x00, 0xa0, 0xc9, 0x1e, 0xfb, 0x8b);

#define  WDI_STORAGE_PREDICT_FAILURE_DPS_GUID        {0xe9f2d03aL, 0x747c, 0x41c2, {0xbb, 0x9a, 0x02, 0xc6, 0x2b, 0x6d, 0x5f, 0xcb}};

//
// The interface used to discover volumes that are
// not reported by Win32 APIs. This includes those
// with an unrecognized partition type/id and ones
// with the hidden attribute.
//
DEFINE_GUID(GUID_DEVINTERFACE_HIDDEN_VOLUME,          0x7f108a28L, 0x9833, 0x4b3b, 0xb7, 0x80, 0x2c, 0x6b, 0x5f, 0xa5, 0xc0, 0x62);

DEFINE_GUID(GUID_DEVINTERFACE_COMPORT,                0x86e0d1e0L, 0x8089, 0x11d0, 0x9c, 0xe4, 0x08, 0x00, 0x3e, 0x30, 0x1f, 0x73);
DEFINE_GUID(GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR, 0x4D36E978L, 0xE325, 0x11CE, 0xBF, 0xC1, 0x08, 0x00, 0x2B, 0xE1, 0x03, 0x18);

//
// Obsolete device interface class GUID names.
// (use of above GUID_DEVINTERFACE_* names is recommended).
//

#define DiskClassGuid               GUID_DEVINTERFACE_DISK
#define CdRomClassGuid              GUID_DEVINTERFACE_CDROM
#define PartitionClassGuid          GUID_DEVINTERFACE_PARTITION
#define TapeClassGuid               GUID_DEVINTERFACE_TAPE
#define WriteOnceDiskClassGuid      GUID_DEVINTERFACE_WRITEONCEDISK
#define VolumeClassGuid             GUID_DEVINTERFACE_VOLUME
#define MediumChangerClassGuid      GUID_DEVINTERFACE_MEDIUMCHANGER
#define FloppyClassGuid             GUID_DEVINTERFACE_FLOPPY
#define CdChangerClassGuid          GUID_DEVINTERFACE_CDCHANGER
#define StoragePortClassGuid        GUID_DEVINTERFACE_STORAGEPORT
#define HiddenVolumeClassGuid       GUID_DEVINTERFACE_HIDDEN_VOLUME

#define GUID_CLASS_COMPORT          GUID_DEVINTERFACE_COMPORT
#define GUID_SERENUM_BUS_ENUMERATOR GUID_DEVINTERFACE_SERENUM_BUS_ENUMERATOR

#endif // DEFINE_GUID

#ifndef _WINIOCTL_
#define _WINIOCTL_


#ifndef _DEVIOCTL_
#define _DEVIOCTL_

// begin_ntddk begin_wdm begin_nthal begin_ntifs
//
// Define the various device type values.  Note that values used by Microsoft
// Corporation are in the range 0-32767, and 32768-65535 are reserved for use
// by customers.
//

#define DEVICE_TYPE DWORD

#define FILE_DEVICE_BEEP                0x00000001
#define FILE_DEVICE_CD_ROM              0x00000002
#define FILE_DEVICE_CD_ROM_FILE_SYSTEM  0x00000003
#define FILE_DEVICE_CONTROLLER          0x00000004
#define FILE_DEVICE_DATALINK            0x00000005
#define FILE_DEVICE_DFS                 0x00000006
#define FILE_DEVICE_DISK                0x00000007
#define FILE_DEVICE_DISK_FILE_SYSTEM    0x00000008
#define FILE_DEVICE_FILE_SYSTEM         0x00000009
#define FILE_DEVICE_INPORT_PORT         0x0000000a
#define FILE_DEVICE_KEYBOARD            0x0000000b
#define FILE_DEVICE_MAILSLOT            0x0000000c
#define FILE_DEVICE_MIDI_IN             0x0000000d
#define FILE_DEVICE_MIDI_OUT            0x0000000e
#define FILE_DEVICE_MOUSE               0x0000000f
#define FILE_DEVICE_MULTI_UNC_PROVIDER  0x00000010
#define FILE_DEVICE_NAMED_PIPE          0x00000011
#define FILE_DEVICE_NETWORK             0x00000012
#define FILE_DEVICE_NETWORK_BROWSER     0x00000013
#define FILE_DEVICE_NETWORK_FILE_SYSTEM 0x00000014
#define FILE_DEVICE_NULL                0x00000015
#define FILE_DEVICE_PARALLEL_PORT       0x00000016
#define FILE_DEVICE_PHYSICAL_NETCARD    0x00000017
#define FILE_DEVICE_PRINTER             0x00000018
#define FILE_DEVICE_SCANNER             0x00000019
#define FILE_DEVICE_SERIAL_MOUSE_PORT   0x0000001a
#define FILE_DEVICE_SERIAL_PORT         0x0000001b
#define FILE_DEVICE_SCREEN              0x0000001c
#define FILE_DEVICE_SOUND               0x0000001d
#define FILE_DEVICE_STREAMS             0x0000001e
#define FILE_DEVICE_TAPE                0x0000001f
#define FILE_DEVICE_TAPE_FILE_SYSTEM    0x00000020
#define FILE_DEVICE_TRANSPORT           0x00000021
#define FILE_DEVICE_UNKNOWN             0x00000022
#define FILE_DEVICE_VIDEO               0x00000023
#define FILE_DEVICE_VIRTUAL_DISK        0x00000024
#define FILE_DEVICE_WAVE_IN             0x00000025
#define FILE_DEVICE_WAVE_OUT            0x00000026
#define FILE_DEVICE_8042_PORT           0x00000027
#define FILE_DEVICE_NETWORK_REDIRECTOR  0x00000028
#define FILE_DEVICE_BATTERY             0x00000029
#define FILE_DEVICE_BUS_EXTENDER        0x0000002a
#define FILE_DEVICE_MODEM               0x0000002b
#define FILE_DEVICE_VDM                 0x0000002c
#define FILE_DEVICE_MASS_STORAGE        0x0000002d
#define FILE_DEVICE_SMB                 0x0000002e
#define FILE_DEVICE_KS                  0x0000002f
#define FILE_DEVICE_CHANGER             0x00000030
#define FILE_DEVICE_SMARTCARD           0x00000031
#define FILE_DEVICE_ACPI                0x00000032
#define FILE_DEVICE_DVD                 0x00000033
#define FILE_DEVICE_FULLSCREEN_VIDEO    0x00000034
#define FILE_DEVICE_DFS_FILE_SYSTEM     0x00000035
#define FILE_DEVICE_DFS_VOLUME          0x00000036
#define FILE_DEVICE_SERENUM             0x00000037
#define FILE_DEVICE_TERMSRV             0x00000038
#define FILE_DEVICE_KSEC                0x00000039
#define FILE_DEVICE_FIPS                0x0000003A
#define FILE_DEVICE_INFINIBAND          0x0000003B
#define FILE_DEVICE_VMBUS               0x0000003E
#define FILE_DEVICE_CRYPT_PROVIDER      0x0000003F
#define FILE_DEVICE_WPD                 0x00000040
#define FILE_DEVICE_BLUETOOTH           0x00000041
#define FILE_DEVICE_MT_COMPOSITE        0x00000042
#define FILE_DEVICE_MT_TRANSPORT        0x00000043
#define FILE_DEVICE_BIOMETRIC		0x00000044
#define FILE_DEVICE_PMI                 0x00000045

//
// Macro definition for defining IOCTL and FSCTL function control codes.  Note
// that function codes 0-2047 are reserved for Microsoft Corporation, and
// 2048-4095 are reserved for customers.
//

#define CTL_CODE( DeviceType, Function, Method, Access ) (                 \
    ((DeviceType) << 16) | ((Access) << 14) | ((Function) << 2) | (Method) \
)

//
// Macro to extract device type out of the device io control code
//
#define DEVICE_TYPE_FROM_CTL_CODE(ctrlCode)     (((DWORD)(ctrlCode & 0xffff0000)) >> 16)

//
// Macro to extract buffering method out of the device io control code
//
#define METHOD_FROM_CTL_CODE(ctrlCode)          ((DWORD)(ctrlCode & 3))

//
// Define the method codes for how buffers are passed for I/O and FS controls
//

#define METHOD_BUFFERED                 0
#define METHOD_IN_DIRECT                1
#define METHOD_OUT_DIRECT               2
#define METHOD_NEITHER                  3

//
// Define some easier to comprehend aliases:
//   METHOD_DIRECT_TO_HARDWARE (writes, aka METHOD_IN_DIRECT)
//   METHOD_DIRECT_FROM_HARDWARE (reads, aka METHOD_OUT_DIRECT)
//

#define METHOD_DIRECT_TO_HARDWARE       METHOD_IN_DIRECT
#define METHOD_DIRECT_FROM_HARDWARE     METHOD_OUT_DIRECT

//
// Define the access check value for any access
//
//
// The FILE_READ_ACCESS and FILE_WRITE_ACCESS constants are also defined in
// ntioapi.h as FILE_READ_DATA and FILE_WRITE_DATA. The values for these
// constants *MUST* always be in sync.
//
//
// FILE_SPECIAL_ACCESS is checked by the NT I/O system the same as FILE_ANY_ACCESS.
// The file systems, however, may add additional access checks for I/O and FS controls
// that use this value.
//


#define FILE_ANY_ACCESS                 0
#define FILE_SPECIAL_ACCESS    (FILE_ANY_ACCESS)
#define FILE_READ_ACCESS          ( 0x0001 )    // file & pipe
#define FILE_WRITE_ACCESS         ( 0x0002 )    // file & pipe

// end_ntddk end_wdm end_nthal end_ntifs

#endif // _DEVIOCTL_


#ifndef _NTDDSTOR_H_
#define _NTDDSTOR_H_

#ifdef __cplusplus
extern "C" {
#endif

//
// IoControlCode values for storage devices
//

#define IOCTL_STORAGE_BASE FILE_DEVICE_MASS_STORAGE

//
// The following device control codes are common for all class drivers.  They
// should be used in place of the older IOCTL_DISK, IOCTL_CDROM and IOCTL_TAPE
// common codes
//

#define IOCTL_STORAGE_CHECK_VERIFY            CTL_CODE(IOCTL_STORAGE_BASE, 0x0200, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_CHECK_VERIFY2           CTL_CODE(IOCTL_STORAGE_BASE, 0x0200, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_MEDIA_REMOVAL           CTL_CODE(IOCTL_STORAGE_BASE, 0x0201, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_EJECT_MEDIA             CTL_CODE(IOCTL_STORAGE_BASE, 0x0202, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_LOAD_MEDIA              CTL_CODE(IOCTL_STORAGE_BASE, 0x0203, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_LOAD_MEDIA2             CTL_CODE(IOCTL_STORAGE_BASE, 0x0203, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_RESERVE                 CTL_CODE(IOCTL_STORAGE_BASE, 0x0204, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_RELEASE                 CTL_CODE(IOCTL_STORAGE_BASE, 0x0205, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_FIND_NEW_DEVICES        CTL_CODE(IOCTL_STORAGE_BASE, 0x0206, METHOD_BUFFERED, FILE_READ_ACCESS)

#define IOCTL_STORAGE_EJECTION_CONTROL        CTL_CODE(IOCTL_STORAGE_BASE, 0x0250, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_MCN_CONTROL             CTL_CODE(IOCTL_STORAGE_BASE, 0x0251, METHOD_BUFFERED, FILE_ANY_ACCESS)

#define IOCTL_STORAGE_GET_MEDIA_TYPES         CTL_CODE(IOCTL_STORAGE_BASE, 0x0300, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_GET_MEDIA_TYPES_EX      CTL_CODE(IOCTL_STORAGE_BASE, 0x0301, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_GET_MEDIA_SERIAL_NUMBER CTL_CODE(IOCTL_STORAGE_BASE, 0x0304, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_GET_HOTPLUG_INFO        CTL_CODE(IOCTL_STORAGE_BASE, 0x0305, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_SET_HOTPLUG_INFO        CTL_CODE(IOCTL_STORAGE_BASE, 0x0306, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

#define IOCTL_STORAGE_RESET_BUS               CTL_CODE(IOCTL_STORAGE_BASE, 0x0400, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_RESET_DEVICE            CTL_CODE(IOCTL_STORAGE_BASE, 0x0401, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_BREAK_RESERVATION       CTL_CODE(IOCTL_STORAGE_BASE, 0x0405, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_PERSISTENT_RESERVE_IN   CTL_CODE(IOCTL_STORAGE_BASE, 0x0406, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_PERSISTENT_RESERVE_OUT  CTL_CODE(IOCTL_STORAGE_BASE, 0x0407, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

#define IOCTL_STORAGE_GET_DEVICE_NUMBER       CTL_CODE(IOCTL_STORAGE_BASE, 0x0420, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_PREDICT_FAILURE         CTL_CODE(IOCTL_STORAGE_BASE, 0x0440, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_READ_CAPACITY           CTL_CODE(IOCTL_STORAGE_BASE, 0x0450, METHOD_BUFFERED, FILE_READ_ACCESS)

//
// IOCTLs 0x0463 to 0x0468 reserved for dependent disk support.
//

#define IOCTL_STORAGE_QUERY_PROPERTY                CTL_CODE(IOCTL_STORAGE_BASE, 0x0500, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES    CTL_CODE(IOCTL_STORAGE_BASE, 0x0501, METHOD_BUFFERED, FILE_WRITE_ACCESS)

//
// IOCTLs for bandwidth contracts on storage devices
// (Move this to ntddsfio if we decide to use a new base)
//

#define IOCTL_STORAGE_GET_BC_PROPERTIES         CTL_CODE(IOCTL_STORAGE_BASE, 0x0600, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_STORAGE_ALLOCATE_BC_STREAM        CTL_CODE(IOCTL_STORAGE_BASE, 0x0601, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_STORAGE_FREE_BC_STREAM            CTL_CODE(IOCTL_STORAGE_BASE, 0x0602, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

//
// IOCTL to check for priority support
//
#define IOCTL_STORAGE_CHECK_PRIORITY_HINT_SUPPORT    CTL_CODE(IOCTL_STORAGE_BASE, 0x0620, METHOD_BUFFERED, FILE_ANY_ACCESS)

// begin_winioctl

//
// These ioctl codes are obsolete.  They are defined here to avoid resuing them
// and to allow class drivers to respond to them more easily.
//

#define OBSOLETE_IOCTL_STORAGE_RESET_BUS        CTL_CODE(IOCTL_STORAGE_BASE, 0x0400, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define OBSOLETE_IOCTL_STORAGE_RESET_DEVICE     CTL_CODE(IOCTL_STORAGE_BASE, 0x0401, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

//
// IOCTLs 0x0643 to 0x0655 reserved for VHD disk support.
//

//
// IOCTL_STORAGE_GET_HOTPLUG_INFO
//

typedef struct _STORAGE_HOTPLUG_INFO {
    DWORD Size; // version
    BOOLEAN MediaRemovable; // ie. zip, jaz, cdrom, mo, etc. vs hdd
    BOOLEAN MediaHotplug;   // ie. does the device succeed a lock even though its not lockable media?
    BOOLEAN DeviceHotplug;  // ie. 1394, USB, etc.
    BOOLEAN WriteCacheEnableOverride; // This field should not be relied upon because it is no longer used
} STORAGE_HOTPLUG_INFO, *PSTORAGE_HOTPLUG_INFO;

//
// IOCTL_STORAGE_GET_DEVICE_NUMBER
//
// input - none
//
// output - STORAGE_DEVICE_NUMBER structure
//          The values in the STORAGE_DEVICE_NUMBER structure are guaranteed
//          to remain unchanged until the system is rebooted.  They are not
//          guaranteed to be persistant across boots.
//

typedef struct _STORAGE_DEVICE_NUMBER {

    //
    // The FILE_DEVICE_XXX type for this device.
    //

    DEVICE_TYPE DeviceType;

    //
    // The number of this device
    //

    DWORD       DeviceNumber;

    //
    // If the device is partitionable, the partition number of the device.
    // Otherwise -1
    //

    DWORD       PartitionNumber;
} STORAGE_DEVICE_NUMBER, *PSTORAGE_DEVICE_NUMBER;

//
// Define the structures for scsi resets
//

typedef struct _STORAGE_BUS_RESET_REQUEST {
    BYTE  PathId;
} STORAGE_BUS_RESET_REQUEST, *PSTORAGE_BUS_RESET_REQUEST;

//
// Break reservation is sent to the Adapter/FDO with the given lun information.
//

typedef struct STORAGE_BREAK_RESERVATION_REQUEST {
        DWORD Length;
        BYTE  _unused;
    BYTE  PathId;
    BYTE  TargetId;
    BYTE  Lun;
} STORAGE_BREAK_RESERVATION_REQUEST, *PSTORAGE_BREAK_RESERVATION_REQUEST;


//
// IOCTL_STORAGE_MEDIA_REMOVAL disables the mechanism
// on a storage device that ejects media. This function
// may or may not be supported on storage devices that
// support removable media.
//
// TRUE means prevent media from being removed.
// FALSE means allow media removal.
//

typedef struct _PREVENT_MEDIA_REMOVAL {
    BOOLEAN PreventMediaRemoval;
} PREVENT_MEDIA_REMOVAL, *PPREVENT_MEDIA_REMOVAL;



//
//  This is the format of TARGET_DEVICE_CUSTOM_NOTIFICATION.CustomDataBuffer
//  passed to applications by the classpnp autorun code (via IoReportTargetDeviceChangeAsynchronous).
//
typedef struct _CLASS_MEDIA_CHANGE_CONTEXT {
        DWORD MediaChangeCount;
        DWORD NewState;         // see MEDIA_CHANGE_DETECTION_STATE enum in classpnp.h in DDK
} CLASS_MEDIA_CHANGE_CONTEXT, *PCLASS_MEDIA_CHANGE_CONTEXT;


// begin_ntminitape


typedef struct _TAPE_STATISTICS {
    DWORD Version;
    DWORD Flags;
    LARGE_INTEGER RecoveredWrites;
    LARGE_INTEGER UnrecoveredWrites;
    LARGE_INTEGER RecoveredReads;
    LARGE_INTEGER UnrecoveredReads;
    BYTE          CompressionRatioReads;
    BYTE          CompressionRatioWrites;
} TAPE_STATISTICS, *PTAPE_STATISTICS;

#define RECOVERED_WRITES_VALID   0x00000001
#define UNRECOVERED_WRITES_VALID 0x00000002
#define RECOVERED_READS_VALID    0x00000004
#define UNRECOVERED_READS_VALID  0x00000008
#define WRITE_COMPRESSION_INFO_VALID  0x00000010
#define READ_COMPRESSION_INFO_VALID   0x00000020

typedef struct _TAPE_GET_STATISTICS {
    DWORD Operation;
} TAPE_GET_STATISTICS, *PTAPE_GET_STATISTICS;

#define TAPE_RETURN_STATISTICS 0L
#define TAPE_RETURN_ENV_INFO   1L
#define TAPE_RESET_STATISTICS  2L

//
// IOCTL_STORAGE_GET_MEDIA_TYPES_EX will return an array of DEVICE_MEDIA_INFO
// structures, one per supported type, embedded in the GET_MEDIA_TYPES struct.
//

typedef enum _STORAGE_MEDIA_TYPE {
    //
    // Following are defined in ntdddisk.h in the MEDIA_TYPE enum
    //
    // Unknown,                // Format is unknown
    // F5_1Pt2_512,            // 5.25", 1.2MB,  512 bytes/sector
    // F3_1Pt44_512,           // 3.5",  1.44MB, 512 bytes/sector
    // F3_2Pt88_512,           // 3.5",  2.88MB, 512 bytes/sector
    // F3_20Pt8_512,           // 3.5",  20.8MB, 512 bytes/sector
    // F3_720_512,             // 3.5",  720KB,  512 bytes/sector
    // F5_360_512,             // 5.25", 360KB,  512 bytes/sector
    // F5_320_512,             // 5.25", 320KB,  512 bytes/sector
    // F5_320_1024,            // 5.25", 320KB,  1024 bytes/sector
    // F5_180_512,             // 5.25", 180KB,  512 bytes/sector
    // F5_160_512,             // 5.25", 160KB,  512 bytes/sector
    // RemovableMedia,         // Removable media other than floppy
    // FixedMedia,             // Fixed hard disk media
    // F3_120M_512,            // 3.5", 120M Floppy
    // F3_640_512,             // 3.5" ,  640KB,  512 bytes/sector
    // F5_640_512,             // 5.25",  640KB,  512 bytes/sector
    // F5_720_512,             // 5.25",  720KB,  512 bytes/sector
    // F3_1Pt2_512,            // 3.5" ,  1.2Mb,  512 bytes/sector
    // F3_1Pt23_1024,          // 3.5" ,  1.23Mb, 1024 bytes/sector
    // F5_1Pt23_1024,          // 5.25",  1.23MB, 1024 bytes/sector
    // F3_128Mb_512,           // 3.5" MO 128Mb   512 bytes/sector
    // F3_230Mb_512,           // 3.5" MO 230Mb   512 bytes/sector
    // F8_256_128,             // 8",     256KB,  128 bytes/sector
    // F3_200Mb_512,           // 3.5",   200M Floppy (HiFD)
    //

    DDS_4mm = 0x20,            // Tape - DAT DDS1,2,... (all vendors)
    MiniQic,                   // Tape - miniQIC Tape
    Travan,                    // Tape - Travan TR-1,2,3,...
    QIC,                       // Tape - QIC
    MP_8mm,                    // Tape - 8mm Exabyte Metal Particle
    AME_8mm,                   // Tape - 8mm Exabyte Advanced Metal Evap
    AIT1_8mm,                  // Tape - 8mm Sony AIT
    DLT,                       // Tape - DLT Compact IIIxt, IV
    NCTP,                      // Tape - Philips NCTP
    IBM_3480,                  // Tape - IBM 3480
    IBM_3490E,                 // Tape - IBM 3490E
    IBM_Magstar_3590,          // Tape - IBM Magstar 3590
    IBM_Magstar_MP,            // Tape - IBM Magstar MP
    STK_DATA_D3,               // Tape - STK Data D3
    SONY_DTF,                  // Tape - Sony DTF
    DV_6mm,                    // Tape - 6mm Digital Video
    DMI,                       // Tape - Exabyte DMI and compatibles
    SONY_D2,                   // Tape - Sony D2S and D2L
    CLEANER_CARTRIDGE,         // Cleaner - All Drive types that support Drive Cleaners
    CD_ROM,                    // Opt_Disk - CD
    CD_R,                      // Opt_Disk - CD-Recordable (Write Once)
    CD_RW,                     // Opt_Disk - CD-Rewriteable
    DVD_ROM,                   // Opt_Disk - DVD-ROM
    DVD_R,                     // Opt_Disk - DVD-Recordable (Write Once)
    DVD_RW,                    // Opt_Disk - DVD-Rewriteable
    MO_3_RW,                   // Opt_Disk - 3.5" Rewriteable MO Disk
    MO_5_WO,                   // Opt_Disk - MO 5.25" Write Once
    MO_5_RW,                   // Opt_Disk - MO 5.25" Rewriteable (not LIMDOW)
    MO_5_LIMDOW,               // Opt_Disk - MO 5.25" Rewriteable (LIMDOW)
    PC_5_WO,                   // Opt_Disk - Phase Change 5.25" Write Once Optical
    PC_5_RW,                   // Opt_Disk - Phase Change 5.25" Rewriteable
    PD_5_RW,                   // Opt_Disk - PhaseChange Dual Rewriteable
    ABL_5_WO,                  // Opt_Disk - Ablative 5.25" Write Once Optical
    PINNACLE_APEX_5_RW,        // Opt_Disk - Pinnacle Apex 4.6GB Rewriteable Optical
    SONY_12_WO,                // Opt_Disk - Sony 12" Write Once
    PHILIPS_12_WO,             // Opt_Disk - Philips/LMS 12" Write Once
    HITACHI_12_WO,             // Opt_Disk - Hitachi 12" Write Once
    CYGNET_12_WO,              // Opt_Disk - Cygnet/ATG 12" Write Once
    KODAK_14_WO,               // Opt_Disk - Kodak 14" Write Once
    MO_NFR_525,                // Opt_Disk - Near Field Recording (Terastor)
    NIKON_12_RW,               // Opt_Disk - Nikon 12" Rewriteable
    IOMEGA_ZIP,                // Mag_Disk - Iomega Zip
    IOMEGA_JAZ,                // Mag_Disk - Iomega Jaz
    SYQUEST_EZ135,             // Mag_Disk - Syquest EZ135
    SYQUEST_EZFLYER,           // Mag_Disk - Syquest EzFlyer
    SYQUEST_SYJET,             // Mag_Disk - Syquest SyJet
    AVATAR_F2,                 // Mag_Disk - 2.5" Floppy
    MP2_8mm,                   // Tape - 8mm Hitachi
    DST_S,                     // Ampex DST Small Tapes
    DST_M,                     // Ampex DST Medium Tapes
    DST_L,                     // Ampex DST Large Tapes
    VXATape_1,                 // Ecrix 8mm Tape
    VXATape_2,                 // Ecrix 8mm Tape
#if (NTDDI_VERSION < NTDDI_WINXP)
    STK_EAGLE,                 // STK Eagle
#else
    STK_9840,                  // STK 9840
#endif
    LTO_Ultrium,               // IBM, HP, Seagate LTO Ultrium
    LTO_Accelis,               // IBM, HP, Seagate LTO Accelis
    DVD_RAM,                   // Opt_Disk - DVD-RAM
    AIT_8mm,                   // AIT2 or higher
    ADR_1,                     // OnStream ADR Mediatypes
    ADR_2,
    STK_9940,                  // STK 9940
    SAIT,                      // SAIT Tapes
    VXATape                    // VXA (Ecrix 8mm) Tape
}STORAGE_MEDIA_TYPE, *PSTORAGE_MEDIA_TYPE;

#define MEDIA_ERASEABLE         0x00000001
#define MEDIA_WRITE_ONCE        0x00000002
#define MEDIA_READ_ONLY         0x00000004
#define MEDIA_READ_WRITE        0x00000008

#define MEDIA_WRITE_PROTECTED   0x00000100
#define MEDIA_CURRENTLY_MOUNTED 0x80000000

//
// Define the different storage bus types
// Bus types below 128 (0x80) are reserved for Microsoft use
//

typedef enum _STORAGE_BUS_TYPE {
    BusTypeUnknown = 0x00,
    BusTypeScsi,
    BusTypeAtapi,
    BusTypeAta,
    BusType1394,
    BusTypeSsa,
    BusTypeFibre,
    BusTypeUsb,
    BusTypeRAID,
    BusTypeiScsi,
    BusTypeSas,
    BusTypeSata,
    BusTypeSd,
    BusTypeMmc,
    BusTypeVirtual,
    BusTypeFileBackedVirtual,
    BusTypeMax,
    BusTypeMaxReserved = 0x7F
} STORAGE_BUS_TYPE, *PSTORAGE_BUS_TYPE;

typedef struct _DEVICE_MEDIA_INFO {
    union {
        struct {
            LARGE_INTEGER Cylinders;
            STORAGE_MEDIA_TYPE MediaType;
            DWORD TracksPerCylinder;
            DWORD SectorsPerTrack;
            DWORD BytesPerSector;
            DWORD NumberMediaSides;
            DWORD MediaCharacteristics; // Bitmask of MEDIA_XXX values.
        } DiskInfo;

        struct {
            LARGE_INTEGER Cylinders;
            STORAGE_MEDIA_TYPE MediaType;
            DWORD TracksPerCylinder;
            DWORD SectorsPerTrack;
            DWORD BytesPerSector;
            DWORD NumberMediaSides;
            DWORD MediaCharacteristics; // Bitmask of MEDIA_XXX values.
        } RemovableDiskInfo;

        struct {
            STORAGE_MEDIA_TYPE MediaType;
            DWORD   MediaCharacteristics; // Bitmask of MEDIA_XXX values.
            DWORD   CurrentBlockSize;
            STORAGE_BUS_TYPE BusType;

            //
            // Bus specific information describing the medium supported.
            //

            union {
                struct {
                    BYTE  MediumType;
                    BYTE  DensityCode;
                } ScsiInformation;
            } BusSpecificData;

        } TapeInfo;
    } DeviceSpecific;
} DEVICE_MEDIA_INFO, *PDEVICE_MEDIA_INFO;

typedef struct _GET_MEDIA_TYPES {
    DWORD DeviceType;              // FILE_DEVICE_XXX values
    DWORD MediaInfoCount;
    DEVICE_MEDIA_INFO MediaInfo[1];
} GET_MEDIA_TYPES, *PGET_MEDIA_TYPES;


//
// IOCTL_STORAGE_PREDICT_FAILURE
//
// input - none
//
// output - STORAGE_PREDICT_FAILURE structure
//          PredictFailure returns zero if no failure predicted and non zero
//                         if a failure is predicted.
//
//          VendorSpecific returns 512 bytes of vendor specific information
//                         if a failure is predicted
//
typedef struct _STORAGE_PREDICT_FAILURE
{
    DWORD PredictFailure;
    BYTE  VendorSpecific[512];
} STORAGE_PREDICT_FAILURE, *PSTORAGE_PREDICT_FAILURE;

// end_ntminitape

//
// Property Query Structures
//

//
// IOCTL_STORAGE_QUERY_PROPERTY
//
// Input Buffer:
//      a STORAGE_PROPERTY_QUERY structure which describes what type of query
//      is being done, what property is being queried for, and any additional
//      parameters which a particular property query requires.
//
//  Output Buffer:
//      Contains a buffer to place the results of the query into.  Since all
//      property descriptors can be cast into a STORAGE_DESCRIPTOR_HEADER,
//      the IOCTL can be called once with a small buffer then again using
//      a buffer as large as the header reports is necessary.
//


//
// Types of queries
//

typedef enum _STORAGE_QUERY_TYPE {
    PropertyStandardQuery = 0,          // Retrieves the descriptor
    PropertyExistsQuery,                // Used to test whether the descriptor is supported
    PropertyMaskQuery,                  // Used to retrieve a mask of writeable fields in the descriptor
    PropertyQueryMaxDefined     // use to validate the value
} STORAGE_QUERY_TYPE, *PSTORAGE_QUERY_TYPE;

//
// define some initial property id's
//

typedef enum _STORAGE_PROPERTY_ID {
    StorageDeviceProperty = 0,
    StorageAdapterProperty,
    StorageDeviceIdProperty,
    StorageDeviceUniqueIdProperty,              // See storduid.h for details
    StorageDeviceWriteCacheProperty,
    StorageMiniportProperty,
    StorageAccessAlignmentProperty,
    StorageDeviceSeekPenaltyProperty,
    StorageDeviceTrimProperty,
    StorageDeviceWriteAggregationProperty
} STORAGE_PROPERTY_ID, *PSTORAGE_PROPERTY_ID;

//
// Query structure - additional parameters for specific queries can follow
// the header
//

typedef struct _STORAGE_PROPERTY_QUERY {

    //
    // ID of the property being retrieved
    //

    STORAGE_PROPERTY_ID PropertyId;

    //
    // Flags indicating the type of query being performed
    //

    STORAGE_QUERY_TYPE QueryType;

    //
    // Space for additional parameters if necessary
    //

    BYTE  AdditionalParameters[1];

} STORAGE_PROPERTY_QUERY, *PSTORAGE_PROPERTY_QUERY;

//
// Standard property descriptor header.  All property pages should use this
// as their first element or should contain these two elements
//

typedef __struct_bcount(Size) struct _STORAGE_DESCRIPTOR_HEADER {

    DWORD Version;

    DWORD Size;

} STORAGE_DESCRIPTOR_HEADER, *PSTORAGE_DESCRIPTOR_HEADER;

//
// Device property descriptor - this is really just a rehash of the inquiry
// data retrieved from a scsi device
//
// This may only be retrieved from a target device.  Sending this to the bus
// will result in an error
//

typedef __struct_bcount(Size) struct _STORAGE_DEVICE_DESCRIPTOR {

    //
    // Sizeof(STORAGE_DEVICE_DESCRIPTOR)
    //

    DWORD Version;

    //
    // Total size of the descriptor, including the space for additional
    // data and id strings
    //

    DWORD Size;

    //
    // The SCSI-2 device type
    //

    BYTE  DeviceType;

    //
    // The SCSI-2 device type modifier (if any) - this may be zero
    //

    BYTE  DeviceTypeModifier;

    //
    // Flag indicating whether the device's media (if any) is removable.  This
    // field should be ignored for media-less devices
    //

    BOOLEAN RemovableMedia;

    //
    // Flag indicating whether the device can support mulitple outstanding
    // commands.  The actual synchronization in this case is the responsibility
    // of the port driver.
    //

    BOOLEAN CommandQueueing;

    //
    // Byte offset to the zero-terminated ascii string containing the device's
    // vendor id string.  For devices with no such ID this will be zero
    //

    DWORD VendorIdOffset;

    //
    // Byte offset to the zero-terminated ascii string containing the device's
    // product id string.  For devices with no such ID this will be zero
    //

    DWORD ProductIdOffset;

    //
    // Byte offset to the zero-terminated ascii string containing the device's
    // product revision string.  For devices with no such string this will be
    // zero
    //

    DWORD ProductRevisionOffset;

    //
    // Byte offset to the zero-terminated ascii string containing the device's
    // serial number.  For devices with no serial number this will be zero
    //

    DWORD SerialNumberOffset;

    //
    // Contains the bus type (as defined above) of the device.  It should be
    // used to interpret the raw device properties at the end of this structure
    // (if any)
    //

    STORAGE_BUS_TYPE BusType;

    //
    // The number of bytes of bus-specific data which have been appended to
    // this descriptor
    //

    DWORD RawPropertiesLength;

    //
    // Place holder for the first byte of the bus specific property data
    //

    BYTE  RawDeviceProperties[1];

} STORAGE_DEVICE_DESCRIPTOR, *PSTORAGE_DEVICE_DESCRIPTOR;


//
// Adapter properties
//
// This descriptor can be retrieved from a target device object of from the
// device object for the bus.  Retrieving from the target device object will
// forward the request to the underlying bus
//

typedef __struct_bcount(Size) struct _STORAGE_ADAPTER_DESCRIPTOR {

    DWORD Version;

    DWORD Size;

    DWORD MaximumTransferLength;

    DWORD MaximumPhysicalPages;

    DWORD AlignmentMask;

    BOOLEAN AdapterUsesPio;

    BOOLEAN AdapterScansDown;

    BOOLEAN CommandQueueing;

    BOOLEAN AcceleratedTransfer;

#if (NTDDI_VERSION < NTDDI_WINXP)
    BOOLEAN BusType;
#else
    BYTE  BusType;
#endif

    WORD   BusMajorVersion;

    WORD   BusMinorVersion;

} STORAGE_ADAPTER_DESCRIPTOR, *PSTORAGE_ADAPTER_DESCRIPTOR;

typedef __struct_bcount(Size) struct _STORAGE_ACCESS_ALIGNMENT_DESCRIPTOR {

    //
    // Sizeof(STORAGE_ACCESS_ALIGNMENT_DESCRIPTOR)
    //

    DWORD Version;

    //
    // Total size of the descriptor, including the space for additional
    // data and id strings
    //

    DWORD Size;

    //
    // The number of bytes in a cache line of the device
    //

    DWORD BytesPerCacheLine;

    //
    // The address offset neccessary for proper cache access alignment in bytes
    //

    DWORD BytesOffsetForCacheAlignment;

    //
    // The number of bytes in a physical sector of the device
    //

    DWORD BytesPerLogicalSector;

    //
    // The number of bytes in an addressable logical sector (LBA)of the device
    //

    DWORD BytesPerPhysicalSector;

    //
    // The address offset neccessary for proper sector access alignment in bytes
    //

    DWORD BytesOffsetForSectorAlignment;

} STORAGE_ACCESS_ALIGNMENT_DESCRIPTOR, *PSTORAGE_ACCESS_ALIGNMENT_DESCRIPTOR;



typedef enum _STORAGE_PORT_CODE_SET {
    StoragePortCodeSetReserved = 0,
    StoragePortCodeSetStorport = 1,
    StoragePortCodeSetSCSIport = 2
} STORAGE_PORT_CODE_SET, *PSTORAGE_PORT_CODE_SET;

typedef struct _STORAGE_MINIPORT_DESCRIPTOR {

    DWORD Version;

    DWORD Size;

    STORAGE_PORT_CODE_SET Portdriver;

    BOOLEAN LUNResetSupported;

    BOOLEAN TargetResetSupported;


} STORAGE_MINIPORT_DESCRIPTOR, *PSTORAGE_MINIPORT_DESCRIPTOR;

//
// Storage identification descriptor.
// The definitions here are based on the SCSI/SBP vital product data
// device identifier page.
//

typedef enum _STORAGE_IDENTIFIER_CODE_SET {
    StorageIdCodeSetReserved = 0,
    StorageIdCodeSetBinary = 1,
    StorageIdCodeSetAscii = 2,
    StorageIdCodeSetUtf8 = 3
} STORAGE_IDENTIFIER_CODE_SET, *PSTORAGE_IDENTIFIER_CODE_SET;

typedef enum _STORAGE_IDENTIFIER_TYPE {
    StorageIdTypeVendorSpecific = 0,
    StorageIdTypeVendorId = 1,
    StorageIdTypeEUI64 = 2,
    StorageIdTypeFCPHName = 3,
    StorageIdTypePortRelative = 4,
    StorageIdTypeTargetPortGroup = 5,
    StorageIdTypeLogicalUnitGroup = 6,
    StorageIdTypeMD5LogicalUnitIdentifier = 7,
    StorageIdTypeScsiNameString = 8
} STORAGE_IDENTIFIER_TYPE, *PSTORAGE_IDENTIFIER_TYPE;

// Mislabeled above but need to keep it for backwards compatibility
#define StorageIdTypeNAA StorageIdTypeFCPHName

// NAA formats (Used with StorageIdTypeNAA)
typedef enum _STORAGE_ID_NAA_FORMAT {
        StorageIdNAAFormatIEEEExtended = 2,
        StorageIdNAAFormatIEEERegistered = 3,
        StorageIdNAAFormatIEEEERegisteredExtended = 5
} STORAGE_ID_NAA_FORMAT, *PSTORAGE_ID_NAA_FORMAT;

typedef enum _STORAGE_ASSOCIATION_TYPE {
    StorageIdAssocDevice = 0,
    StorageIdAssocPort = 1,
    StorageIdAssocTarget = 2
} STORAGE_ASSOCIATION_TYPE, *PSTORAGE_ASSOCIATION_TYPE;

typedef struct _STORAGE_IDENTIFIER {
    STORAGE_IDENTIFIER_CODE_SET CodeSet;
    STORAGE_IDENTIFIER_TYPE Type;
    WORD   IdentifierSize;
    WORD   NextOffset;

    //
    // Add new fields here since existing code depends on
    // the above layout not changing.
    //

    STORAGE_ASSOCIATION_TYPE Association;

    //
    // The identifier is a variable length array of bytes.
    //

    BYTE  Identifier[1];
} STORAGE_IDENTIFIER, *PSTORAGE_IDENTIFIER;

typedef __struct_bcount(Size) struct _STORAGE_DEVICE_ID_DESCRIPTOR {

    DWORD Version;

    DWORD Size;

    //
    // The number of identifiers reported by the device.
    //

    DWORD NumberOfIdentifiers;

    //
    // The following field is actually a variable length array of identification
    // descriptors.  Unfortunately there's no C notation for an array of
    // variable length structures so we're forced to just pretend.
    //

    BYTE  Identifiers[1];
} STORAGE_DEVICE_ID_DESCRIPTOR, *PSTORAGE_DEVICE_ID_DESCRIPTOR;

// output buffer for   StorageDeviceSeekPenaltyProperty & PropertyStandardQuery
typedef struct _DEVICE_SEEK_PENALTY_DESCRIPTOR {
    DWORD       Version;          // keep compatible with STORAGE_DESCRIPTOR_HEADER
    DWORD       Size;             // keep compatible with STORAGE_DESCRIPTOR_HEADER

    BOOLEAN     IncursSeekPenalty;
} DEVICE_SEEK_PENALTY_DESCRIPTOR, *PDEVICE_SEEK_PENALTY_DESCRIPTOR;

// output buffer for   StorageDeviceWriteAggregationProperty & PropertyStandardQuery
typedef struct _DEVICE_WRITE_AGGREGATION_DESCRIPTOR {
    DWORD       Version;          // keep compatible with STORAGE_DESCRIPTOR_HEADER
    DWORD       Size;             // keep compatible with STORAGE_DESCRIPTOR_HEADER

    BOOLEAN     BenefitsFromWriteAggregation;
} DEVICE_WRITE_AGGREGATION_DESCRIPTOR, *PDEVICE_WRITE_AGGREGATION_DESCRIPTOR;

// output buffer for   StorageDeviceTrimProperty & PropertyStandardQuery
typedef struct _DEVICE_TRIM_DESCRIPTOR {
    DWORD       Version;          // keep compatible with STORAGE_DESCRIPTOR_HEADER
    DWORD       Size;             // keep compatible with STORAGE_DESCRIPTOR_HEADER

    BOOLEAN     TrimEnabled;
} DEVICE_TRIM_DESCRIPTOR, *PDEVICE_TRIM_DESCRIPTOR;

//
// IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES
//
// Input Buffer:
//     Structure of type DEVICE_MANAGE_DATA_SET_ATTRIBUTES
//
// Output Buffer:
//     N/A
//
// Note:
//     1. Management of action Trim will be only allowed for kernel request.
//        This request sent from user application will be rejected by kernel drivers.
//

//
//  This flag, when OR'd into an action indicates that the given action is
//  non-destructive.  If this flag is set then storage stack components which
//  do not understand the action should forward the given request
//

#define DeviceDsmActionFlag_NonDestructive  0x80000000

#define IsDsmActionNonDestructive(_Action) ((BOOLEAN)((_Action & DeviceDsmActionFlag_NonDestructive) != 0))

//
//  Defines the various actions
//

typedef DWORD DEVICE_DATA_MANAGEMENT_SET_ACTION;
    #define DeviceDsmAction_None            0
    #define DeviceDsmAction_Trim            1
    #define DeviceDsmAction_Notification   (2 | DeviceDsmActionFlag_NonDestructive)

//
//  Flags that are global across all actions
//

#define DEVICE_DSM_FLAG_ENTIRE_DATA_SET_RANGE   0x00000001  // If set, the DataSetRanges fields should be 0


typedef struct _DEVICE_DATA_SET_RANGE {
    LONGLONG    StartingOffset;        //in bytes  ,  must allign to sector
    DWORDLONG   LengthInBytes;         // multiple of sector size.
} DEVICE_DATA_SET_RANGE, *PDEVICE_DATA_SET_RANGE;

//
// input structure for IOCTL_STORAGE_MANAGE_DATA_SET_ATTRIBUTES
// 1. Value ofParameterBlockOffset or ParameterBlockLength is 0 indicates that Parameter Block does not exist.
// 2. Value of DataSetRangesOffset or DataSetRangesLength is 0 indicates that DataSetRanges Block does not exist.
//     If DataSetRanges Block exists, it contains contiguous DEVICE_DATA_SET_RANGE structures.
// 3. The total size of buffer should be at least:
//      sizeof (DEVICE_MANAGE_DATA_SET_ATTRIBUTES) + ParameterBlockLength + DataSetRangesLength
//
typedef struct _DEVICE_MANAGE_DATA_SET_ATTRIBUTES {
    DWORD                               Size;                   // Size of structure DEVICE_MANAGE_DATA_SET_ATTRIBUTES
    DEVICE_DATA_MANAGEMENT_SET_ACTION   Action;

    DWORD                               Flags;                  // Global flags across all actions

    DWORD                               ParameterBlockOffset;   // must be alligned to corresponding structure allignment
    DWORD                               ParameterBlockLength;   // 0 means Parameter Block does not exist.

    DWORD                               DataSetRangesOffset;    // must be alligned to DEVICE_DATA_SET_RANGE structure allignment.
    DWORD                               DataSetRangesLength;    // 0 means DataSetRanges Block does not exist.

} DEVICE_MANAGE_DATA_SET_ATTRIBUTES, *PDEVICE_MANAGE_DATA_SET_ATTRIBUTES;

//
//  This defines the parameter block for the DeviceDsmAction_Notification
//  action
//

typedef struct _DEVICE_DSM_NOTIFICATION_PARAMETERS {

    DWORD                               Size;                   // Size of this structure

    DWORD                               Flags;                  // Flags specific to the notify operation

    DWORD                               NumFileTypeIDs;         // Count of how many file type ID's are given

    GUID                                FileTypeID[1];          // Identifier for the type of file being notified

} DEVICE_DSM_NOTIFICATION_PARAMETERS, *PDEVICE_DSM_NOTIFICATION_PARAMETERS;

//
//  DEVICE_DSM_NOTIFICATION_PARAMETERS flag definitions
//

#define DEVICE_DSM_NOTIFY_FLAG_BEGIN            0x00000001  // The given LBA range is being used as defined by the FileID
#define DEVICE_DSM_NOTIFY_FLAG_END              0x00000002  // The given LBA range is no longer being used as defined by the FileID

//
//  There are some well known GUIDS for certail types of files.  They are
//  defined in NTIFS.H
//


//
// IOCTL_STORAGE_GET_BC_PROPERTIES
//
// Input Buffer:
//     None
//
// Output Buffer:
//     Structure of type STORAGE_GET_BC_PROPERTIES_OUTPUT
//

typedef struct _STORAGE_GET_BC_PROPERTIES_OUTPUT {

    //
    // Specifies the maximum number of requests
    // that can be scheduled per period of time
    //
    DWORD MaximumRequestsPerPeriod;

    //
    // Specifies the minimum period that the
    // device uses  when scheduling requests
    //
    DWORD MinimumPeriod;

    //
    // Specifies the maximum transfer size supported
    // for  bandwidth contracts  on this  device. To
    // achieve the highest level of performance, all
    // requests should be of this size
    //
    DWORDLONG MaximumRequestSize;

    //
    // Specifies the estimated time taken to
    // perform an  Io operstion. This  field
    // is  for  informational purposes  only
    //
    DWORD EstimatedTimePerRequest;

    //
    // Specifies the number of requests that should be
    // kept outstanding.  This helps  keep the  device
    // device busy and thus obtain maximum throughput.
    // This will only be filled in if the target  file
    // has an outstanding contract.
    //
    DWORD NumOutStandingRequests;

    //
    // Specifies the required size of requests in this
    // stream.  This  will  only  be filled in  if the
    // target file has an outstanding contract.
    //
    DWORDLONG RequestSize;

} STORAGE_GET_BC_PROPERTIES_OUTPUT, *PSTORAGE_GET_BC_PROPERTIES_OUTPUT;


//
// IOCTL_STORAGE_ALLOCATE_BC_STREAM
//
// Input Buffer:
//     Structure of type STORAGE_ALLOCATE_BC_STREAM_INPUT
//
// Output Buffer:
//     Structure of type STORAGE_ALLOCATE_BC_STREAM_OUTPUT
//


//
// Current version
//
#define IOCTL_STORAGE_BC_VERSION                1

typedef struct _STORAGE_ALLOCATE_BC_STREAM_INPUT {

    //
    // Specifies the corresponding structure version
    //
    DWORD Version;

    //
    // Specifies the number of requests that
    // need to  complete  per period of time
    //
    DWORD RequestsPerPeriod;

    //
    // Specifies the period of time wherein the
    // above  number of requests  must complete
    //
    DWORD Period;

    //
    // Indicates whether failures
    // should  be retried  or not
    //
    BOOLEAN RetryFailures;

    //
    // Indicates whether reqests that  will miss
    // their deadline should be discarded or not
    //
    BOOLEAN Discardable;

    //
    // Helps align the following field
    //
    BOOLEAN Reserved1[2];

    //
    // Indicates whether the  Io  will be
    // comprised of reads, writes or both
    //
    DWORD AccessType;

    //
    // Indicates whether the  Io  to the
    // file will be sequential or random
    //
    DWORD AccessMode;

} STORAGE_ALLOCATE_BC_STREAM_INPUT, *PSTORAGE_ALLOCATE_BC_STREAM_INPUT;

typedef struct _STORAGE_ALLOCATE_BC_STREAM_OUTPUT {

    //
    // Specifies the required size
    // of  requests in this stream
    //
    DWORDLONG RequestSize;

    //
    // Specifies the number of requests that should be
    // kept outstanding.  This helps  keep the  device
    // device busy and thus obtain maximum  throughput
    //
    DWORD NumOutStandingRequests;

} STORAGE_ALLOCATE_BC_STREAM_OUTPUT, *PSTORAGE_ALLOCATE_BC_STREAM_OUTPUT;


//
// IOCTL_STORAGE_FREE_BC_STREAM
//
// Input Buffer:
//     None
//
// Output Buffer:
//     None
//

//
// IOCTL_STORAGE_CHECK_PRIORITY_HINT_SUPPORT
//
// Input Buffer :
//      None
// Output Buffer :
//      Structure of type STORAGE_PRIORITY_HINT_SUPPORT
//

#define STORAGE_PRIORITY_HINT_SUPPORTED     0x0001

typedef struct _STORAGE_PRIORITY_HINT_SUPPORT {
    DWORD SupportFlags;
} STORAGE_PRIORITY_HINT_SUPPORT, *PSTORAGE_PRIORITY_HINT_SUPPORT;

#pragma warning(push)
#pragma warning(disable:4200)

#if defined(_MSC_EXTENSIONS)

typedef struct _STORAGE_MEDIA_SERIAL_NUMBER_DATA {

    WORD   Reserved;

    //
    // the SerialNumberLength will be set to zero
    // if the command is supported and the media
    // does not have a valid serial number.
    //

    WORD   SerialNumberLength;

    //
    // the following data is binary, and is not guaranteed
    // to be NULL terminated.  this is an excercise for the
    // caller.
    //

#if !defined(__midl)
    BYTE  SerialNumber[0];
#endif

} STORAGE_MEDIA_SERIAL_NUMBER_DATA, *PSTORAGE_MEDIA_SERIAL_NUMBER_DATA;

#endif /* _MSC_EXTENSIONS */

typedef __struct_bcount(Size) struct _STORAGE_READ_CAPACITY {

    //
    // The version number, size of the STORAGE_READ_CAPACITY structure
    //
    DWORD Version;

    //
    // The size of the date returned, size of the STORAGE_READ_CAPACITY structure
    //
    DWORD Size;

    //
    // Number of bytes per block
    //

    DWORD BlockLength;

    //
    // Total number of blocks in the disk
    // This will have the last LBA + 1
    //

    LARGE_INTEGER NumberOfBlocks;

    //
    // Disk size in bytes
    //

    LARGE_INTEGER DiskLength;

} STORAGE_READ_CAPACITY, *PSTORAGE_READ_CAPACITY;

#pragma warning(pop)

//
// Device write cache property
//
// This property provides the write cache information
// about the target device.
//

typedef enum _WRITE_CACHE_TYPE {
    WriteCacheTypeUnknown,
    WriteCacheTypeNone,
    WriteCacheTypeWriteBack,
    WriteCacheTypeWriteThrough
} WRITE_CACHE_TYPE;

typedef enum _WRITE_CACHE_ENABLE {
    WriteCacheEnableUnknown,
    WriteCacheDisabled,
    WriteCacheEnabled
} WRITE_CACHE_ENABLE;

typedef enum _WRITE_CACHE_CHANGE {
    WriteCacheChangeUnknown,
    WriteCacheNotChangeable,
    WriteCacheChangeable
} WRITE_CACHE_CHANGE;

typedef enum _WRITE_THROUGH {
    WriteThroughUnknown,
    WriteThroughNotSupported,
    WriteThroughSupported
} WRITE_THROUGH;

typedef __struct_bcount(Size) struct _STORAGE_WRITE_CACHE_PROPERTY {

    //
    // The version number
    // Size of STORAGE_WRITE_CACHE_PROPERTY structure
    //
    DWORD Version;

    //
    // The size of the date returned
    // Size of STORAGE_WRITE_CACHE_PROPERTY structure
    //
    DWORD Size;

    //
    // Current write cache type
    //
    WRITE_CACHE_TYPE WriteCacheType;

    //
    // Current write cache value
    //
    WRITE_CACHE_ENABLE WriteCacheEnabled;

    //
    // Device write cache change capability
    //
    WRITE_CACHE_CHANGE WriteCacheChangeable;

    //
    // Device write through support capability
    //
    WRITE_THROUGH WriteThroughSupported;

    //
    // Device flush cache capability
    //
    BOOLEAN FlushCacheSupported;

    //
    // User selected power protection option through registry
    //
    BOOLEAN UserDefinedPowerProtection;

    //
    // Device has battery backup for write cache
    //
    BOOLEAN NVCacheEnabled;

} STORAGE_WRITE_CACHE_PROPERTY, *PSTORAGE_WRITE_CACHE_PROPERTY;

#pragma warning(push)
#pragma warning(disable:4200) // array[0]
#pragma warning(disable:4201) // nameless struct/unions
#pragma warning(disable:4214) // bit fields other than int


#if defined(_MSC_EXTENSIONS)

typedef struct _PERSISTENT_RESERVE_COMMAND {

    DWORD Version;
    DWORD Size;

    union {

        struct {

            //
            // Persistent Reserve service action.
            //

            BYTE  ServiceAction : 5;
            BYTE  Reserved1 : 3;

            //
            // Number of bytes allocated for returned parameter list.
            //

            WORD   AllocationLength;

        } PR_IN;

        struct {

            //
            // Persistent Reserve service action.
            //

            BYTE  ServiceAction : 5;
            BYTE  Reserved1 : 3;

            //
            // Persistent Reserve type and scope.
            //

            BYTE  Type : 4;
            BYTE  Scope : 4;

            //
            // Space for additional PR Out parameters.
            //

#if !defined(__midl)
            BYTE  ParameterList[0];
#endif

        } PR_OUT;
    };

} PERSISTENT_RESERVE_COMMAND, *PPERSISTENT_RESERVE_COMMAND;

#endif /* _MSC_EXTENSIONS */
#pragma warning(pop)


#ifdef __cplusplus
}
#endif

#endif // _NTDDSTOR_H_

#ifndef _NTDDDISK_H_
#define _NTDDDISK_H_


#if defined(_MSC_VER)
#if (_MSC_VER >= 1200)
#pragma warning(push)
#pragma warning(disable:4201) // nonstandard extension used : nameless struct/union
#pragma warning(disable:4214) // nonstandard extension used : bitfield other than int
#endif
#endif


//
// IoControlCode values for disk devices.
//

#define IOCTL_DISK_BASE                 FILE_DEVICE_DISK
#define IOCTL_DISK_GET_DRIVE_GEOMETRY   CTL_CODE(IOCTL_DISK_BASE, 0x0000, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_GET_PARTITION_INFO   CTL_CODE(IOCTL_DISK_BASE, 0x0001, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_SET_PARTITION_INFO   CTL_CODE(IOCTL_DISK_BASE, 0x0002, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_DRIVE_LAYOUT     CTL_CODE(IOCTL_DISK_BASE, 0x0003, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_SET_DRIVE_LAYOUT     CTL_CODE(IOCTL_DISK_BASE, 0x0004, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_VERIFY               CTL_CODE(IOCTL_DISK_BASE, 0x0005, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_FORMAT_TRACKS        CTL_CODE(IOCTL_DISK_BASE, 0x0006, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_REASSIGN_BLOCKS      CTL_CODE(IOCTL_DISK_BASE, 0x0007, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_PERFORMANCE          CTL_CODE(IOCTL_DISK_BASE, 0x0008, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_IS_WRITABLE          CTL_CODE(IOCTL_DISK_BASE, 0x0009, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_LOGGING              CTL_CODE(IOCTL_DISK_BASE, 0x000a, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_FORMAT_TRACKS_EX     CTL_CODE(IOCTL_DISK_BASE, 0x000b, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_HISTOGRAM_STRUCTURE  CTL_CODE(IOCTL_DISK_BASE, 0x000c, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_HISTOGRAM_DATA       CTL_CODE(IOCTL_DISK_BASE, 0x000d, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_HISTOGRAM_RESET      CTL_CODE(IOCTL_DISK_BASE, 0x000e, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_REQUEST_STRUCTURE    CTL_CODE(IOCTL_DISK_BASE, 0x000f, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_REQUEST_DATA         CTL_CODE(IOCTL_DISK_BASE, 0x0010, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_PERFORMANCE_OFF      CTL_CODE(IOCTL_DISK_BASE, 0x0018, METHOD_BUFFERED, FILE_ANY_ACCESS)



#if(_WIN32_WINNT >= 0x0400)
#define IOCTL_DISK_CONTROLLER_NUMBER    CTL_CODE(IOCTL_DISK_BASE, 0x0011, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
// IOCTL support for SMART drive fault prediction.
//

#define SMART_GET_VERSION               CTL_CODE(IOCTL_DISK_BASE, 0x0020, METHOD_BUFFERED, FILE_READ_ACCESS)
#define SMART_SEND_DRIVE_COMMAND        CTL_CODE(IOCTL_DISK_BASE, 0x0021, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define SMART_RCV_DRIVE_DATA            CTL_CODE(IOCTL_DISK_BASE, 0x0022, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x500)

//
// New IOCTLs for GUID Partition tabled disks.
//

#define IOCTL_DISK_GET_PARTITION_INFO_EX    CTL_CODE(IOCTL_DISK_BASE, 0x0012, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_SET_PARTITION_INFO_EX    CTL_CODE(IOCTL_DISK_BASE, 0x0013, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_DRIVE_LAYOUT_EX      CTL_CODE(IOCTL_DISK_BASE, 0x0014, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define IOCTL_DISK_SET_DRIVE_LAYOUT_EX      CTL_CODE(IOCTL_DISK_BASE, 0x0015, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_CREATE_DISK              CTL_CODE(IOCTL_DISK_BASE, 0x0016, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_GET_LENGTH_INFO          CTL_CODE(IOCTL_DISK_BASE, 0x0017, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_GET_DRIVE_GEOMETRY_EX    CTL_CODE(IOCTL_DISK_BASE, 0x0028, METHOD_BUFFERED, FILE_ANY_ACCESS)

#endif /* _WIN32_WINNT >= 0x0500 */


#if (_WIN32_WINNT >= 0x0502)

//
// New IOCTL for disk devices that support 8 byte LBA
//
#define IOCTL_DISK_REASSIGN_BLOCKS_EX       CTL_CODE(IOCTL_DISK_BASE, 0x0029, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

#endif //_WIN32_WINNT >= 0x0502

#if(_WIN32_WINNT >= 0x0500)
#define IOCTL_DISK_UPDATE_DRIVE_SIZE        CTL_CODE(IOCTL_DISK_BASE, 0x0032, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_GROW_PARTITION           CTL_CODE(IOCTL_DISK_BASE, 0x0034, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

#define IOCTL_DISK_GET_CACHE_INFORMATION    CTL_CODE(IOCTL_DISK_BASE, 0x0035, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_SET_CACHE_INFORMATION    CTL_CODE(IOCTL_DISK_BASE, 0x0036, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#if (NTDDI_VERSION < NTDDI_WIN2003)
#define IOCTL_DISK_GET_WRITE_CACHE_STATE    CTL_CODE(IOCTL_DISK_BASE, 0x0037, METHOD_BUFFERED, FILE_READ_ACCESS)
#else
#define OBSOLETE_DISK_GET_WRITE_CACHE_STATE CTL_CODE(IOCTL_DISK_BASE, 0x0037, METHOD_BUFFERED, FILE_READ_ACCESS)
#endif
#define IOCTL_DISK_DELETE_DRIVE_LAYOUT      CTL_CODE(IOCTL_DISK_BASE, 0x0040, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

//
// Called to flush cached information that the driver may have about this
// device's characteristics.  Not all drivers cache characteristics, and not
// cached properties can be flushed.  This simply serves as an update to the
// driver that it may want to do an expensive reexamination of the device's
// characteristics now (fixed media size, partition table, etc...)
//

#define IOCTL_DISK_UPDATE_PROPERTIES    CTL_CODE(IOCTL_DISK_BASE, 0x0050, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
//  Special IOCTLs needed to support PC-98 machines in Japan
//

#define IOCTL_DISK_FORMAT_DRIVE         CTL_CODE(IOCTL_DISK_BASE, 0x00f3, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_DISK_SENSE_DEVICE         CTL_CODE(IOCTL_DISK_BASE, 0x00f8, METHOD_BUFFERED, FILE_ANY_ACCESS)

#endif /* _WIN32_WINNT >= 0x0500 */

//
// The following device control codes are common for all class drivers.  The
// functions codes defined here must match all of the other class drivers.
//
// Warning: these codes will be replaced in the future by equivalent
// IOCTL_STORAGE codes
//

#define IOCTL_DISK_CHECK_VERIFY     CTL_CODE(IOCTL_DISK_BASE, 0x0200, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_MEDIA_REMOVAL    CTL_CODE(IOCTL_DISK_BASE, 0x0201, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_EJECT_MEDIA      CTL_CODE(IOCTL_DISK_BASE, 0x0202, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_LOAD_MEDIA       CTL_CODE(IOCTL_DISK_BASE, 0x0203, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_RESERVE          CTL_CODE(IOCTL_DISK_BASE, 0x0204, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_RELEASE          CTL_CODE(IOCTL_DISK_BASE, 0x0205, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_FIND_NEW_DEVICES CTL_CODE(IOCTL_DISK_BASE, 0x0206, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_DISK_GET_MEDIA_TYPES  CTL_CODE(IOCTL_DISK_BASE, 0x0300, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
// Define the partition types returnable by known disk drivers.
//

#define PARTITION_ENTRY_UNUSED          0x00      // Entry unused
#define PARTITION_FAT_12                0x01      // 12-bit FAT entries
#define PARTITION_XENIX_1               0x02      // Xenix
#define PARTITION_XENIX_2               0x03      // Xenix
#define PARTITION_FAT_16                0x04      // 16-bit FAT entries
#define PARTITION_EXTENDED              0x05      // Extended partition entry
#define PARTITION_HUGE                  0x06      // Huge partition MS-DOS V4
#define PARTITION_IFS                   0x07      // IFS Partition
#define PARTITION_OS2BOOTMGR            0x0A      // OS/2 Boot Manager/OPUS/Coherent swap
#define PARTITION_FAT32                 0x0B      // FAT32
#define PARTITION_FAT32_XINT13          0x0C      // FAT32 using extended int13 services
#define PARTITION_XINT13                0x0E      // Win95 partition using extended int13 services
#define PARTITION_XINT13_EXTENDED       0x0F      // Same as type 5 but uses extended int13 services
#define PARTITION_PREP                  0x41      // PowerPC Reference Platform (PReP) Boot Partition
#define PARTITION_LDM                   0x42      // Logical Disk Manager partition
#define PARTITION_UNIX                  0x63      // Unix

#define VALID_NTFT                      0xC0      // NTFT uses high order bits

//
// The high bit of the partition type code indicates that a partition
// is part of an NTFT mirror or striped array.
//

#define PARTITION_NTFT                  0x80     // NTFT partition

//
// The following macro is used to determine which partitions should be
// assigned drive letters.
//

//++
//
// BOOLEAN
// IsRecognizedPartition(
//     IN DWORD PartitionType
//     )
//
// Routine Description:
//
//     This macro is used to determine to which partitions drive letters
//     should be assigned.
//
// Arguments:
//
//     PartitionType - Supplies the type of the partition being examined.
//
// Return Value:
//
//     The return value is TRUE if the partition type is recognized,
//     otherwise FALSE is returned.
//
//--
#if (NTDDK_VERSION < NTDDI_VISTA)
#define IsRecognizedPartition( PartitionType ) (    \
    ((PartitionType & PARTITION_NTFT) && (((PartitionType & ~0xC0) == PARTITION_HUGE)           ||  \
                                          ((PartitionType & ~0xC0) == PARTITION_IFS)            ||  \
                                          ((PartitionType & ~0xC0) == PARTITION_FAT32)          ||  \
                                          ((PartitionType & ~0xC0) == PARTITION_FAT32_XINT13))) ||  \
    ((PartitionType) == PARTITION_FAT_12)       ||  \
    ((PartitionType) == PARTITION_FAT_16)       ||  \
    ((PartitionType) == PARTITION_HUGE)         ||  \
    ((PartitionType) == PARTITION_IFS)          ||  \
    ((PartitionType) == PARTITION_FAT32)        ||  \
    ((PartitionType) == PARTITION_FAT32_XINT13) ||  \
    ((PartitionType) == PARTITION_XINT13) )
#else
#define IsRecognizedPartition( PartitionType ) (    \
    ((PartitionType) == PARTITION_FAT_12)       ||  \
    ((PartitionType) == PARTITION_FAT_16)       ||  \
    ((PartitionType) == PARTITION_HUGE)         ||  \
    ((PartitionType) == PARTITION_IFS)          ||  \
    ((PartitionType) == PARTITION_FAT32)        ||  \
    ((PartitionType) == PARTITION_FAT32_XINT13) ||  \
    ((PartitionType) == PARTITION_XINT13) )
#endif

//++
//
// BOOLEAN
// IsContainerPartition(
//     IN DWORD PartitionType
//     )
//
// Routine Description:
//
//     This macro is used to determine to which partition types are actually
//     containers for other partitions (ie, extended partitions).
//
// Arguments:
//
//     PartitionType - Supplies the type of the partition being examined.
//
// Return Value:
//
//     The return value is TRUE if the partition type is a container,
//     otherwise FALSE is returned.
//
//--

#define IsContainerPartition( PartitionType )       \
    ((PartitionType == PARTITION_EXTENDED) || (PartitionType == PARTITION_XINT13_EXTENDED))

//++
//
// BOOLEAN
// IsFTPartition(
//     IN DWORD PartitionType
//     )
//
// Routine Description:
//
//     This macro is used to determine if the given partition is an FT
//     partition.
//
// Arguments:
//
//     PartitionType - Supplies the type of the partition being examined.
//
// Return Value:
//
//     The return value is TRUE if the partition type is an FT partition,
//     otherwise FALSE is returned.
//
//--

#define IsFTPartition( PartitionType )              \
    ((PartitionType & PARTITION_NTFT) && (((PartitionType & ~0xC0) == PARTITION_HUGE)         ||  \
                                          ((PartitionType & ~0xC0) == PARTITION_IFS)          ||  \
                                          ((PartitionType & ~0xC0) == PARTITION_FAT32)        ||  \
                                          ((PartitionType & ~0xC0) == PARTITION_FAT32_XINT13)))

//
// Define the media types supported by the driver.
//

typedef enum _MEDIA_TYPE {
    Unknown,                // Format is unknown
    F5_1Pt2_512,            // 5.25", 1.2MB,  512 bytes/sector
    F3_1Pt44_512,           // 3.5",  1.44MB, 512 bytes/sector
    F3_2Pt88_512,           // 3.5",  2.88MB, 512 bytes/sector
    F3_20Pt8_512,           // 3.5",  20.8MB, 512 bytes/sector
    F3_720_512,             // 3.5",  720KB,  512 bytes/sector
    F5_360_512,             // 5.25", 360KB,  512 bytes/sector
    F5_320_512,             // 5.25", 320KB,  512 bytes/sector
    F5_320_1024,            // 5.25", 320KB,  1024 bytes/sector
    F5_180_512,             // 5.25", 180KB,  512 bytes/sector
    F5_160_512,             // 5.25", 160KB,  512 bytes/sector
    RemovableMedia,         // Removable media other than floppy
    FixedMedia,             // Fixed hard disk media
    F3_120M_512,            // 3.5", 120M Floppy
    F3_640_512,             // 3.5" ,  640KB,  512 bytes/sector
    F5_640_512,             // 5.25",  640KB,  512 bytes/sector
    F5_720_512,             // 5.25",  720KB,  512 bytes/sector
    F3_1Pt2_512,            // 3.5" ,  1.2Mb,  512 bytes/sector
    F3_1Pt23_1024,          // 3.5" ,  1.23Mb, 1024 bytes/sector
    F5_1Pt23_1024,          // 5.25",  1.23MB, 1024 bytes/sector
    F3_128Mb_512,           // 3.5" MO 128Mb   512 bytes/sector
    F3_230Mb_512,           // 3.5" MO 230Mb   512 bytes/sector
    F8_256_128,             // 8",     256KB,  128 bytes/sector
    F3_200Mb_512,           // 3.5",   200M Floppy (HiFD)
    F3_240M_512,            // 3.5",   240Mb Floppy (HiFD)
    F3_32M_512              // 3.5",   32Mb Floppy
} MEDIA_TYPE, *PMEDIA_TYPE;

//
// Define the input buffer structure for the driver, when
// it is called with IOCTL_DISK_FORMAT_TRACKS.
//

typedef struct _FORMAT_PARAMETERS {
   MEDIA_TYPE MediaType;
   DWORD StartCylinderNumber;
   DWORD EndCylinderNumber;
   DWORD StartHeadNumber;
   DWORD EndHeadNumber;
} FORMAT_PARAMETERS, *PFORMAT_PARAMETERS;

//
// Define the BAD_TRACK_NUMBER type. An array of elements of this type is
// returned by the driver on IOCTL_DISK_FORMAT_TRACKS requests, to indicate
// what tracks were bad during formatting. The length of that array is
// reported in the `Information' field of the I/O Status Block.
//

typedef WORD   BAD_TRACK_NUMBER;
typedef WORD   *PBAD_TRACK_NUMBER;

//
// Define the input buffer structure for the driver, when
// it is called with IOCTL_DISK_FORMAT_TRACKS_EX.
//

typedef struct _FORMAT_EX_PARAMETERS {
   MEDIA_TYPE MediaType;
   DWORD StartCylinderNumber;
   DWORD EndCylinderNumber;
   DWORD StartHeadNumber;
   DWORD EndHeadNumber;
   WORD   FormatGapLength;
   WORD   SectorsPerTrack;
   WORD   SectorNumber[1];
} FORMAT_EX_PARAMETERS, *PFORMAT_EX_PARAMETERS;

//
// The following structure is returned on an IOCTL_DISK_GET_DRIVE_GEOMETRY
// request and an array of them is returned on an IOCTL_DISK_GET_MEDIA_TYPES
// request.
//

typedef struct _DISK_GEOMETRY {
    LARGE_INTEGER Cylinders;
    MEDIA_TYPE MediaType;
    DWORD TracksPerCylinder;
    DWORD SectorsPerTrack;
    DWORD BytesPerSector;
} DISK_GEOMETRY, *PDISK_GEOMETRY;



//
// This wmi guid returns a DISK_GEOMETRY structure
//
#define WMI_DISK_GEOMETRY_GUID         { 0x25007f51, 0x57c2, 0x11d1, { 0xa5, 0x28, 0x0, 0xa0, 0xc9, 0x6, 0x29, 0x10 } }



//
// The following structure is returned on an IOCTL_DISK_GET_PARTITION_INFO
// and an IOCTL_DISK_GET_DRIVE_LAYOUT request.  It is also used in a request
// to change the drive layout, IOCTL_DISK_SET_DRIVE_LAYOUT.
//

typedef struct _PARTITION_INFORMATION {
    LARGE_INTEGER StartingOffset;
    LARGE_INTEGER PartitionLength;
    DWORD HiddenSectors;
    DWORD PartitionNumber;
    BYTE  PartitionType;
    BOOLEAN BootIndicator;
    BOOLEAN RecognizedPartition;
    BOOLEAN RewritePartition;
} PARTITION_INFORMATION, *PPARTITION_INFORMATION;

//
// The following structure is used to change the partition type of a
// specified disk partition using an IOCTL_DISK_SET_PARTITION_INFO
// request.
//

typedef struct _SET_PARTITION_INFORMATION {
    BYTE  PartitionType;
} SET_PARTITION_INFORMATION, *PSET_PARTITION_INFORMATION;

//
// The following structures is returned on an IOCTL_DISK_GET_DRIVE_LAYOUT
// request and given as input to an IOCTL_DISK_SET_DRIVE_LAYOUT request.
//

typedef struct _DRIVE_LAYOUT_INFORMATION {
    DWORD PartitionCount;
    DWORD Signature;
    PARTITION_INFORMATION PartitionEntry[1];
} DRIVE_LAYOUT_INFORMATION, *PDRIVE_LAYOUT_INFORMATION;

//
// The following structure is passed in on an IOCTL_DISK_VERIFY request.
// The offset and length parameters are both given in bytes.
//

typedef struct _VERIFY_INFORMATION {
    LARGE_INTEGER StartingOffset;
    DWORD Length;
} VERIFY_INFORMATION, *PVERIFY_INFORMATION;

//
// The following structure is passed in on an IOCTL_DISK_REASSIGN_BLOCKS
// request.
//

typedef struct _REASSIGN_BLOCKS {
    WORD   Reserved;
    WORD   Count;
    DWORD BlockNumber[1];
} REASSIGN_BLOCKS, *PREASSIGN_BLOCKS;

//
// The following structure is passed in on an IOCTL_DISK_REASSIGN_BLOCKS_EX
// request.
//

#include <pshpack1.h>
typedef struct _REASSIGN_BLOCKS_EX {
    WORD   Reserved;
    WORD   Count;
    LARGE_INTEGER BlockNumber[1];
} REASSIGN_BLOCKS_EX, *PREASSIGN_BLOCKS_EX;
#include <poppack.h>


#if(_WIN32_WINNT >= 0x500)

//
// Support for GUID Partition Table (GPT) disks.
//

//
// There are currently two ways a disk can be partitioned. With a traditional
// AT-style master boot record (PARTITION_STYLE_MBR) and with a new, GPT
// partition table (PARTITION_STYLE_GPT). RAW is for an unrecognizable
// partition style. There are a very limited number of things you can
// do with a RAW partititon.
//

typedef enum _PARTITION_STYLE {
    PARTITION_STYLE_MBR,
    PARTITION_STYLE_GPT,
    PARTITION_STYLE_RAW
} PARTITION_STYLE;


//
// The following structure defines information in a GPT partition that is
// not common to both GPT and MBR partitions.
//

typedef struct _PARTITION_INFORMATION_GPT {
    GUID PartitionType;                 // Partition type. See table 16-3.
    GUID PartitionId;                   // Unique GUID for this partition.
    DWORD64 Attributes;                 // See table 16-4.
    WCHAR Name [36];                    // Partition Name in Unicode.
} PARTITION_INFORMATION_GPT, *PPARTITION_INFORMATION_GPT;

//
//  The following are GPT partition attributes applicable for any
//  partition type. These attributes are not OS-specific
//

#define GPT_ATTRIBUTE_PLATFORM_REQUIRED             (0x0000000000000001)

//
// The following are GPT partition attributes applicable when the
// PartitionType is PARTITION_BASIC_DATA_GUID.
//

#define GPT_BASIC_DATA_ATTRIBUTE_NO_DRIVE_LETTER    (0x8000000000000000)
#define GPT_BASIC_DATA_ATTRIBUTE_HIDDEN             (0x4000000000000000)
#define GPT_BASIC_DATA_ATTRIBUTE_SHADOW_COPY        (0x2000000000000000)
#define GPT_BASIC_DATA_ATTRIBUTE_READ_ONLY          (0x1000000000000000)

//
// The following structure defines information in an MBR partition that is not
// common to both GPT and MBR partitions.
//

typedef struct _PARTITION_INFORMATION_MBR {
    BYTE  PartitionType;
    BOOLEAN BootIndicator;
    BOOLEAN RecognizedPartition;
    DWORD HiddenSectors;
} PARTITION_INFORMATION_MBR, *PPARTITION_INFORMATION_MBR;


//
// The structure SET_PARTITION_INFO_EX is used with the ioctl
// IOCTL_SET_PARTITION_INFO_EX to set information about a specific
// partition. Note that for MBR partitions, you can only set the partition
// signature, whereas GPT partitions allow setting of all fields that
// you can get.
//

typedef SET_PARTITION_INFORMATION SET_PARTITION_INFORMATION_MBR;
typedef PARTITION_INFORMATION_GPT SET_PARTITION_INFORMATION_GPT;


typedef struct _SET_PARTITION_INFORMATION_EX {
    PARTITION_STYLE PartitionStyle;
    union {
        SET_PARTITION_INFORMATION_MBR Mbr;
        SET_PARTITION_INFORMATION_GPT Gpt;
    } DUMMYUNIONNAME;
} SET_PARTITION_INFORMATION_EX, *PSET_PARTITION_INFORMATION_EX;


//
// The structure CREATE_DISK_GPT with the ioctl IOCTL_DISK_CREATE_DISK
// to initialize an virgin disk with an empty GPT partition table.
//

typedef struct _CREATE_DISK_GPT {
    GUID DiskId;                    // Unique disk id for the disk.
    DWORD MaxPartitionCount;        // Maximim number of partitions allowable.
} CREATE_DISK_GPT, *PCREATE_DISK_GPT;

//
// The structure CREATE_DISK_MBR with the ioctl IOCTL_DISK_CREATE_DISK
// to initialize an virgin disk with an empty MBR partition table.
//

typedef struct _CREATE_DISK_MBR {
    DWORD Signature;
} CREATE_DISK_MBR, *PCREATE_DISK_MBR;


typedef struct _CREATE_DISK {
    PARTITION_STYLE PartitionStyle;
    union {
        CREATE_DISK_MBR Mbr;
        CREATE_DISK_GPT Gpt;
    } DUMMYUNIONNAME;
} CREATE_DISK, *PCREATE_DISK;


//
// The structure GET_LENGTH_INFORMATION is used with the ioctl
// IOCTL_DISK_GET_LENGTH_INFO to obtain the length, in bytes, of the
// disk, partition, or volume.
//

typedef struct _GET_LENGTH_INFORMATION {
    LARGE_INTEGER   Length;
} GET_LENGTH_INFORMATION, *PGET_LENGTH_INFORMATION;

//
// The PARTITION_INFORMATION_EX structure is used with the
// IOCTL_DISK_GET_DRIVE_LAYOUT_EX, IOCTL_DISK_SET_DRIVE_LAYOUT_EX,
// IOCTL_DISK_GET_PARTITION_INFO_EX and IOCTL_DISK_GET_PARTITION_INFO_EX calls.
//

typedef struct _PARTITION_INFORMATION_EX {
    PARTITION_STYLE PartitionStyle;
    LARGE_INTEGER StartingOffset;
    LARGE_INTEGER PartitionLength;
    DWORD PartitionNumber;
    BOOLEAN RewritePartition;
    union {
        PARTITION_INFORMATION_MBR Mbr;
        PARTITION_INFORMATION_GPT Gpt;
    } DUMMYUNIONNAME;
} PARTITION_INFORMATION_EX, *PPARTITION_INFORMATION_EX;


//
// GPT specific drive layout information.
//

typedef struct _DRIVE_LAYOUT_INFORMATION_GPT {
    GUID DiskId;
    LARGE_INTEGER StartingUsableOffset;
    LARGE_INTEGER UsableLength;
    DWORD MaxPartitionCount;
} DRIVE_LAYOUT_INFORMATION_GPT, *PDRIVE_LAYOUT_INFORMATION_GPT;


//
// MBR specific drive layout information.
//

typedef struct _DRIVE_LAYOUT_INFORMATION_MBR {
    DWORD Signature;
} DRIVE_LAYOUT_INFORMATION_MBR, *PDRIVE_LAYOUT_INFORMATION_MBR;

//
// The structure DRIVE_LAYOUT_INFORMATION_EX is used with the
// IOCTL_SET_DRIVE_LAYOUT_EX and IOCTL_GET_DRIVE_LAYOUT_EX calls.
//

typedef struct _DRIVE_LAYOUT_INFORMATION_EX {
    DWORD PartitionStyle;
    DWORD PartitionCount;
    union {
        DRIVE_LAYOUT_INFORMATION_MBR Mbr;
        DRIVE_LAYOUT_INFORMATION_GPT Gpt;
    } DUMMYUNIONNAME;
    PARTITION_INFORMATION_EX PartitionEntry[1];
} DRIVE_LAYOUT_INFORMATION_EX, *PDRIVE_LAYOUT_INFORMATION_EX;


#endif // (_WIN32_WINNT >= 0x0500)


#if(_WIN32_WINNT >= 0x0500)

//
// The DISK_GEOMETRY_EX structure is returned on issuing an
// IOCTL_DISK_GET_DRIVE_GEOMETRY_EX ioctl.
//

typedef enum _DETECTION_TYPE {
        DetectNone,
        DetectInt13,
        DetectExInt13
} DETECTION_TYPE;

typedef struct _DISK_INT13_INFO {
        WORD   DriveSelect;
        DWORD MaxCylinders;
        WORD   SectorsPerTrack;
        WORD   MaxHeads;
        WORD   NumberDrives;
} DISK_INT13_INFO, *PDISK_INT13_INFO;

typedef struct _DISK_EX_INT13_INFO {
        WORD   ExBufferSize;
        WORD   ExFlags;
        DWORD ExCylinders;
        DWORD ExHeads;
        DWORD ExSectorsPerTrack;
        DWORD64 ExSectorsPerDrive;
        WORD   ExSectorSize;
        WORD   ExReserved;
} DISK_EX_INT13_INFO, *PDISK_EX_INT13_INFO;

#if (_MSC_VER >= 1200)
#pragma warning(push)
#pragma warning(disable:4201) // nonstandard extension used : nameless struct/union
#endif

typedef struct _DISK_DETECTION_INFO {
        DWORD SizeOfDetectInfo;
        DETECTION_TYPE DetectionType;
        union {
                struct {

                        //
                        // If DetectionType == DETECTION_INT13 then we have just the Int13
                        // information.
                        //

                        DISK_INT13_INFO Int13;

                        //
                        // If DetectionType == DETECTION_EX_INT13, then we have the
                        // extended int 13 information.
                        //

                        DISK_EX_INT13_INFO ExInt13;     // If DetectionType == DetectExInt13
                } DUMMYSTRUCTNAME;
        } DUMMYUNIONNAME;
} DISK_DETECTION_INFO, *PDISK_DETECTION_INFO;


typedef struct _DISK_PARTITION_INFO {
        DWORD SizeOfPartitionInfo;
        PARTITION_STYLE PartitionStyle;                 // PartitionStyle = RAW, GPT or MBR
        union {
                struct {                                                        // If PartitionStyle == MBR
                        DWORD Signature;                                // MBR Signature
                        DWORD CheckSum;                                 // MBR CheckSum
                } Mbr;
                struct {                                                        // If PartitionStyle == GPT
                        GUID DiskId;
                } Gpt;
        } DUMMYUNIONNAME;
} DISK_PARTITION_INFO, *PDISK_PARTITION_INFO;

#if (_MSC_VER >= 1200)
#pragma warning(pop)
#endif

//
// The Geometry structure is a variable length structure composed of a
// DISK_GEOMETRY_EX structure followed by a DISK_PARTITION_INFO structure
// followed by a DISK_DETECTION_DATA structure.
//

#if (NTDDI_VERSION < NTDDI_WIN2003)
#define DiskGeometryGetPartition(Geometry)\
                        ((PDISK_PARTITION_INFO)((Geometry)+1))

#define DiskGeometryGetDetect(Geometry)\
                        ((PDISK_DETECTION_INFO)(((PBYTE)DiskGeometryGetPartition(Geometry)+\
                                        DiskGeometryGetPartition(Geometry)->SizeOfPartitionInfo)))
#else
#define DiskGeometryGetPartition(Geometry)\
                        ((PDISK_PARTITION_INFO)((Geometry)->Data))

#define DiskGeometryGetDetect(Geometry)\
                        ((PDISK_DETECTION_INFO)(((DWORD_PTR)DiskGeometryGetPartition(Geometry)+\
                                        DiskGeometryGetPartition(Geometry)->SizeOfPartitionInfo)))
#endif
typedef struct _DISK_GEOMETRY_EX {
        DISK_GEOMETRY Geometry;                                 // Standard disk geometry: may be faked by driver.
        LARGE_INTEGER DiskSize;                                 // Must always be correct
        BYTE  Data[1];                                                  // Partition, Detect info
} DISK_GEOMETRY_EX, *PDISK_GEOMETRY_EX;

#endif // (_WIN32_WINNT > 0x0500)

#if(_WIN32_WINNT >= 0x0400)
//
// IOCTL_DISK_CONTROLLER_NUMBER returns the controller and disk
// number for the handle.  This is used to determine if a disk
// is attached to the primary or secondary IDE controller.
//

typedef struct _DISK_CONTROLLER_NUMBER {
    DWORD ControllerNumber;
    DWORD DiskNumber;
} DISK_CONTROLLER_NUMBER, *PDISK_CONTROLLER_NUMBER;
#endif /* _WIN32_WINNT >= 0x0400 */

#if(_WIN32_WINNT >= 0x0500)

//
// IOCTL_DISK_SET_CACHE_INFORMATION
//
// Input Buffer:
//      A DISK_CACHE_INFORMATION structure which describes how the disk
//      read/write caches should be configured.
//
// Output Buffer:
//      None
//

//
// IOCTL_DISK_GET_CACHE_INFORMATION
//
// Input Buffer:
//      None
//
// Output Buffer:
//      A DISK_CACHE_INFORMATION structure which contains the current state
//      of the disk read/write caches.
//

typedef enum {
    EqualPriority,
    KeepPrefetchedData,
    KeepReadData
} DISK_CACHE_RETENTION_PRIORITY;

#if (OSVER(NTDDI_VERSION) == NTDDI_WINXP)
typedef enum _DISK_WRITE_CACHE_STATE {
    DiskWriteCacheNormal,
    DiskWriteCacheForceDisable,
    DiskWriteCacheDisableNotSupported
} DISK_WRITE_CACHE_STATE, *PDISK_WRITE_CACHE_STATE;
#endif

typedef struct _DISK_CACHE_INFORMATION {

    //
    // on return indicates that the device is capable of saving any parameters
    // in non-volatile storage.  On send indicates that the device should
    // save the state in non-volatile storage.
    //

    BOOLEAN ParametersSavable;

    //
    // Indicates whether the write and read caches are enabled.
    //

    BOOLEAN ReadCacheEnabled;
    BOOLEAN WriteCacheEnabled;

    //
    // Controls the likelyhood of data remaining in the cache depending on how
    // it got there.  Data cached from a READ or WRITE operation may be given
    // higher, lower or equal priority to data entered into the cache for other
    // means (like prefetch)
    //

    DISK_CACHE_RETENTION_PRIORITY ReadRetentionPriority;
    DISK_CACHE_RETENTION_PRIORITY WriteRetentionPriority;

    //
    // Requests for a larger number of blocks than this may have prefetching
    // disabled.  If this value is set to 0 prefetch will be disabled.
    //

    WORD   DisablePrefetchTransferLength;

    //
    // If TRUE then ScalarPrefetch (below) will be valid.  If FALSE then
    // the minimum and maximum values should be treated as a block count
    // (BlockPrefetch)
    //

    BOOLEAN PrefetchScalar;

    //
    // Contains the minimum and maximum amount of data which will be
    // will be prefetched into the cache on a disk operation.  This value
    // may either be a scalar multiplier of the transfer length of the request,
    // or an abolute number of disk blocks.  PrefetchScalar (above) indicates
    // which interpretation is used.
    //

    union {
        struct {
            WORD   Minimum;
            WORD   Maximum;

            //
            // The maximum number of blocks which will be prefetched - useful
            // with the scalar limits to set definite upper limits.
            //

            WORD   MaximumBlocks;
        } ScalarPrefetch;

        struct {
            WORD   Minimum;
            WORD   Maximum;
        } BlockPrefetch;
    } DUMMYUNIONNAME;

} DISK_CACHE_INFORMATION, *PDISK_CACHE_INFORMATION;

//
// IOCTL_DISK_GROW_PARTITION will update the size of a partition
// by adding sectors to the length. The number of sectors must be
// predetermined by examining PARTITION_INFORMATION.
//

typedef struct _DISK_GROW_PARTITION {
    DWORD PartitionNumber;
    LARGE_INTEGER BytesToGrow;
} DISK_GROW_PARTITION, *PDISK_GROW_PARTITION;
#endif /* _WIN32_WINNT >= 0x0500 */

///////////////////////////////////////////////////////
//                                                   //
// The following structures define disk performance  //
// statistics: specifically the locations of all the //
// reads and writes which have occured on the disk.  //
//                                                   //
// To use these structures, you must issue an IOCTL_ //
// DISK_HIST_STRUCTURE (with a DISK_HISTOGRAM) to    //
// obtain the basic histogram information. The       //
// number of buckets which must allocated is part of //
// this structure. Allocate the required number of   //
// buckets and call an IOCTL_DISK_HIST_DATA to fill  //
// in the data                                       //
//                                                   //
///////////////////////////////////////////////////////

#define HIST_NO_OF_BUCKETS  24

typedef struct _HISTOGRAM_BUCKET {
    DWORD       Reads;
    DWORD       Writes;
} HISTOGRAM_BUCKET, *PHISTOGRAM_BUCKET;

#define HISTOGRAM_BUCKET_SIZE   sizeof(HISTOGRAM_BUCKET)

typedef struct _DISK_HISTOGRAM {
    LARGE_INTEGER   DiskSize;
    LARGE_INTEGER   Start;
    LARGE_INTEGER   End;
    LARGE_INTEGER   Average;
    LARGE_INTEGER   AverageRead;
    LARGE_INTEGER   AverageWrite;
    DWORD           Granularity;
    DWORD           Size;
    DWORD           ReadCount;
    DWORD           WriteCount;
    PHISTOGRAM_BUCKET  Histogram;
} DISK_HISTOGRAM, *PDISK_HISTOGRAM;

#define DISK_HISTOGRAM_SIZE sizeof(DISK_HISTOGRAM)

///////////////////////////////////////////////////////
//                                                   //
// The following structures define disk debugging    //
// capabilities. The IOCTLs are directed to one of   //
// the two disk filter drivers.                      //
//                                                   //
// DISKPERF is a utilty for collecting disk request  //
// statistics.                                       //
//                                                   //
// SIMBAD is a utility for injecting faults in       //
// IO requests to disks.                             //
//                                                   //
///////////////////////////////////////////////////////

//
// The following structure is exchanged on an IOCTL_DISK_GET_PERFORMANCE
// request. This ioctl collects summary disk request statistics used
// in measuring performance.
//

typedef struct _DISK_PERFORMANCE {
        LARGE_INTEGER BytesRead;
        LARGE_INTEGER BytesWritten;
        LARGE_INTEGER ReadTime;
        LARGE_INTEGER WriteTime;
        LARGE_INTEGER IdleTime;
        DWORD ReadCount;
        DWORD WriteCount;
        DWORD QueueDepth;
        DWORD SplitCount;
        LARGE_INTEGER QueryTime;
        DWORD   StorageDeviceNumber;
        WCHAR   StorageManagerName[8];
} DISK_PERFORMANCE, *PDISK_PERFORMANCE;

//
// This structure defines the disk logging record. When disk logging
// is enabled, one of these is written to an internal buffer for each
// disk request.
//

typedef struct _DISK_RECORD {
   LARGE_INTEGER ByteOffset;
   LARGE_INTEGER StartTime;
   LARGE_INTEGER EndTime;
   PVOID VirtualAddress;
   DWORD NumberOfBytes;
   BYTE  DeviceNumber;
   BOOLEAN ReadRequest;
} DISK_RECORD, *PDISK_RECORD;

//
// The following structure is exchanged on an IOCTL_DISK_LOG request.
// Not all fields are valid with each function type.
//

typedef struct _DISK_LOGGING {
    BYTE  Function;
    PVOID BufferAddress;
    DWORD BufferSize;
} DISK_LOGGING, *PDISK_LOGGING;

//
// Disk logging functions
//
// Start disk logging. Only the Function and BufferSize fields are valid.
//

#define DISK_LOGGING_START    0

//
// Stop disk logging. Only the Function field is valid.
//

#define DISK_LOGGING_STOP     1

//
// Return disk log. All fields are valid. Data will be copied from internal
// buffer to buffer specified for the number of bytes requested.
//

#define DISK_LOGGING_DUMP     2

//
// DISK BINNING
//
// DISKPERF will keep counters for IO that falls in each of these ranges.
// The application determines the number and size of the ranges.
// Joe Lin wanted me to keep it flexible as possible, for instance, IO
// sizes are interesting in ranges like 0-4096, 4097-16384, 16385-65536, 65537+.
//

#define DISK_BINNING          3

//
// Bin types
//

typedef enum _BIN_TYPES {
    RequestSize,
    RequestLocation
} BIN_TYPES;

//
// Bin ranges
//

typedef struct _BIN_RANGE {
    LARGE_INTEGER StartValue;
    LARGE_INTEGER Length;
} BIN_RANGE, *PBIN_RANGE;

//
// Bin definition
//

typedef struct _PERF_BIN {
    DWORD NumberOfBins;
    DWORD TypeOfBin;
    BIN_RANGE BinsRanges[1];
} PERF_BIN, *PPERF_BIN ;

//
// Bin count
//

typedef struct _BIN_COUNT {
    BIN_RANGE BinRange;
    DWORD BinCount;
} BIN_COUNT, *PBIN_COUNT;

//
// Bin results
//

typedef struct _BIN_RESULTS {
    DWORD NumberOfBins;
    BIN_COUNT BinCounts[1];
} BIN_RESULTS, *PBIN_RESULTS;

#if(_WIN32_WINNT >= 0x0400)
//
// Data structures for SMART drive fault prediction.
//
// GETVERSIONINPARAMS contains the data returned from the
// Get Driver Version function.
//

#include <pshpack1.h>
typedef struct _GETVERSIONINPARAMS {
        BYTE     bVersion;               // Binary driver version.
        BYTE     bRevision;              // Binary driver revision.
        BYTE     bReserved;              // Not used.
        BYTE     bIDEDeviceMap;          // Bit map of IDE devices.
        DWORD   fCapabilities;          // Bit mask of driver capabilities.
        DWORD   dwReserved[4];          // For future use.
} GETVERSIONINPARAMS, *PGETVERSIONINPARAMS, *LPGETVERSIONINPARAMS;
#include <poppack.h>

//
// Bits returned in the fCapabilities member of GETVERSIONINPARAMS
//

#define CAP_ATA_ID_CMD          1       // ATA ID command supported
#define CAP_ATAPI_ID_CMD        2       // ATAPI ID command supported
#define CAP_SMART_CMD           4       // SMART commannds supported

//
// IDE registers
//

#include <pshpack1.h>
typedef struct _IDEREGS {
        BYTE     bFeaturesReg;           // Used for specifying SMART "commands".
        BYTE     bSectorCountReg;        // IDE sector count register
        BYTE     bSectorNumberReg;       // IDE sector number register
        BYTE     bCylLowReg;             // IDE low order cylinder value
        BYTE     bCylHighReg;            // IDE high order cylinder value
        BYTE     bDriveHeadReg;          // IDE drive/head register
        BYTE     bCommandReg;            // Actual IDE command.
        BYTE     bReserved;                      // reserved for future use.  Must be zero.
} IDEREGS, *PIDEREGS, *LPIDEREGS;
#include <poppack.h>

//
// Valid values for the bCommandReg member of IDEREGS.
//

#define ATAPI_ID_CMD    0xA1            // Returns ID sector for ATAPI.
#define ID_CMD          0xEC            // Returns ID sector for ATA.
#define SMART_CMD       0xB0            // Performs SMART cmd.
                                        // Requires valid bFeaturesReg,
                                        // bCylLowReg, and bCylHighReg

//
// Cylinder register defines for SMART command
//

#define SMART_CYL_LOW   0x4F
#define SMART_CYL_HI    0xC2


//
// SENDCMDINPARAMS contains the input parameters for the
// Send Command to Drive function.
//

#include <pshpack1.h>
typedef struct _SENDCMDINPARAMS {
        DWORD   cBufferSize;            // Buffer size in bytes
        IDEREGS irDriveRegs;            // Structure with drive register values.
        BYTE     bDriveNumber;           // Physical drive number to send
                                                                // command to (0,1,2,3).
        BYTE     bReserved[3];           // Reserved for future expansion.
        DWORD   dwReserved[4];          // For future use.
        BYTE     bBuffer[1];                     // Input buffer.
} SENDCMDINPARAMS, *PSENDCMDINPARAMS, *LPSENDCMDINPARAMS;
#include <poppack.h>

//
// Status returned from driver
//

#include <pshpack1.h>
typedef struct _DRIVERSTATUS {
        BYTE     bDriverError;           // Error code from driver,
                                                                // or 0 if no error.
        BYTE     bIDEError;                      // Contents of IDE Error register.
                                                                // Only valid when bDriverError
                                                                // is SMART_IDE_ERROR.
        BYTE     bReserved[2];           // Reserved for future expansion.
        DWORD   dwReserved[2];          // Reserved for future expansion.
} DRIVERSTATUS, *PDRIVERSTATUS, *LPDRIVERSTATUS;
#include <poppack.h>

//
// bDriverError values
//

#define SMART_NO_ERROR          0       // No error
#define SMART_IDE_ERROR         1       // Error from IDE controller
#define SMART_INVALID_FLAG      2       // Invalid command flag
#define SMART_INVALID_COMMAND   3       // Invalid command byte
#define SMART_INVALID_BUFFER    4       // Bad buffer (null, invalid addr..)
#define SMART_INVALID_DRIVE     5       // Drive number not valid
#define SMART_INVALID_IOCTL     6       // Invalid IOCTL
#define SMART_ERROR_NO_MEM      7       // Could not lock user's buffer
#define SMART_INVALID_REGISTER  8       // Some IDE Register not valid
#define SMART_NOT_SUPPORTED     9       // Invalid cmd flag set
#define SMART_NO_IDE_DEVICE     10      // Cmd issued to device not present
                                        // although drive number is valid
//
// SMART sub commands for execute offline diags
//
#define SMART_OFFLINE_ROUTINE_OFFLINE       0
#define SMART_SHORT_SELFTEST_OFFLINE        1
#define SMART_EXTENDED_SELFTEST_OFFLINE     2
#define SMART_ABORT_OFFLINE_SELFTEST        127
#define SMART_SHORT_SELFTEST_CAPTIVE        129
#define SMART_EXTENDED_SELFTEST_CAPTIVE     130


#include <pshpack1.h>
typedef struct _SENDCMDOUTPARAMS {
        DWORD                   cBufferSize;            // Size of bBuffer in bytes
        DRIVERSTATUS            DriverStatus;           // Driver status structure.
        BYTE                    bBuffer[1];             // Buffer of arbitrary length in which to store the data read from the                                                                                  // drive.
} SENDCMDOUTPARAMS, *PSENDCMDOUTPARAMS, *LPSENDCMDOUTPARAMS;
#include <poppack.h>


#define READ_ATTRIBUTE_BUFFER_SIZE  512
#define IDENTIFY_BUFFER_SIZE        512
#define READ_THRESHOLD_BUFFER_SIZE  512
#define SMART_LOG_SECTOR_SIZE       512

//
// Feature register defines for SMART "sub commands"
//

#define READ_ATTRIBUTES         0xD0
#define READ_THRESHOLDS         0xD1
#define ENABLE_DISABLE_AUTOSAVE 0xD2
#define SAVE_ATTRIBUTE_VALUES   0xD3
#define EXECUTE_OFFLINE_DIAGS   0xD4
#define SMART_READ_LOG          0xD5
#define SMART_WRITE_LOG         0xd6
#define ENABLE_SMART            0xD8
#define DISABLE_SMART           0xD9
#define RETURN_SMART_STATUS     0xDA
#define ENABLE_DISABLE_AUTO_OFFLINE 0xDB
#endif /* _WIN32_WINNT >= 0x0400 */


#define IOCTL_DISK_RESET_SNAPSHOT_INFO      CTL_CODE(IOCTL_DISK_BASE, 0x0084, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)


#if defined(_MSC_VER)
#if (_MSC_VER >= 1200)
#pragma warning(pop)
#endif
#endif


#endif // _NTDDDISK_H_


#define IOCTL_CHANGER_BASE                FILE_DEVICE_CHANGER

#define IOCTL_CHANGER_GET_PARAMETERS         CTL_CODE(IOCTL_CHANGER_BASE, 0x0000, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_GET_STATUS             CTL_CODE(IOCTL_CHANGER_BASE, 0x0001, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_GET_PRODUCT_DATA       CTL_CODE(IOCTL_CHANGER_BASE, 0x0002, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_SET_ACCESS             CTL_CODE(IOCTL_CHANGER_BASE, 0x0004, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_CHANGER_GET_ELEMENT_STATUS     CTL_CODE(IOCTL_CHANGER_BASE, 0x0005, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_CHANGER_INITIALIZE_ELEMENT_STATUS  CTL_CODE(IOCTL_CHANGER_BASE, 0x0006, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_SET_POSITION           CTL_CODE(IOCTL_CHANGER_BASE, 0x0007, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_EXCHANGE_MEDIUM        CTL_CODE(IOCTL_CHANGER_BASE, 0x0008, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_MOVE_MEDIUM            CTL_CODE(IOCTL_CHANGER_BASE, 0x0009, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_REINITIALIZE_TRANSPORT CTL_CODE(IOCTL_CHANGER_BASE, 0x000A, METHOD_BUFFERED, FILE_READ_ACCESS)
#define IOCTL_CHANGER_QUERY_VOLUME_TAGS      CTL_CODE(IOCTL_CHANGER_BASE, 0x000B, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)



#define MAX_VOLUME_ID_SIZE       36
#define MAX_VOLUME_TEMPLATE_SIZE 40

#define VENDOR_ID_LENGTH          8
#define PRODUCT_ID_LENGTH        16
#define REVISION_LENGTH           4
#define SERIAL_NUMBER_LENGTH     32

//
// Common structures describing elements.
//

typedef  enum _ELEMENT_TYPE {
    AllElements,        // As defined by SCSI
    ChangerTransport,   // As defined by SCSI
    ChangerSlot,        // As defined by SCSI
    ChangerIEPort,      // As defined by SCSI
    ChangerDrive,       // As defined by SCSI
    ChangerDoor,        // Front panel, used to access internal of cabinet.
    ChangerKeypad,      // Keypad/input on front panel.
    ChangerMaxElement   // Placeholder only. Not a valid type.
} ELEMENT_TYPE, *PELEMENT_TYPE;

typedef  struct _CHANGER_ELEMENT {
    ELEMENT_TYPE    ElementType;
    DWORD   ElementAddress;
} CHANGER_ELEMENT, *PCHANGER_ELEMENT;

typedef  struct _CHANGER_ELEMENT_LIST {
    CHANGER_ELEMENT Element;
    DWORD   NumberOfElements;
} CHANGER_ELEMENT_LIST , *PCHANGER_ELEMENT_LIST;


//
// Definitions for  IOCTL_CHANGER_GET_PARAMETERS
//

//
// Definitions for Features0 of GET_CHANGER_PARAMETERS
//

#define CHANGER_BAR_CODE_SCANNER_INSTALLED  0x00000001 // The medium-changer has a bar code scanner installed.
#define CHANGER_INIT_ELEM_STAT_WITH_RANGE   0x00000002 // The medium-changer has the ability to initialize elements within a specified range.
#define CHANGER_CLOSE_IEPORT                0x00000004 // The medium-changer has the ability to close the i/e port door.
#define CHANGER_OPEN_IEPORT                 0x00000008 // The medium-changer can open the i/e port door.

#define CHANGER_STATUS_NON_VOLATILE         0x00000010 // The medium-changer uses non-volatile memory for element status information.
#define CHANGER_EXCHANGE_MEDIA              0x00000020 // The medium-changer supports exchange operations.
#define CHANGER_CLEANER_SLOT                0x00000040 // The medium-changer has a fixed slot designated for cleaner cartridges.
#define CHANGER_LOCK_UNLOCK                 0x00000080 // The medium-changer can be (un)secured to (allow)prevent media removal.

#define CHANGER_CARTRIDGE_MAGAZINE          0x00000100 // The medium-changer uses cartridge magazines for some storage slots.
#define CHANGER_MEDIUM_FLIP                 0x00000200 // The medium-changer can flip medium.
#define CHANGER_POSITION_TO_ELEMENT         0x00000400 // The medium-changer can position the transport to a particular element.
#define CHANGER_REPORT_IEPORT_STATE         0x00000800 // The medium-changer can determine whether media is present
                                                       // in the IE Port.

#define CHANGER_STORAGE_DRIVE               0x00001000 // The medium-changer can use a drive as an independent storage element.
#define CHANGER_STORAGE_IEPORT              0x00002000 // The medium-changer can use a i/e port as an independent storage element.
#define CHANGER_STORAGE_SLOT                0x00004000 // The medium-changer can use a slot as an independent storage element.
#define CHANGER_STORAGE_TRANSPORT           0x00008000 // The medium-changer can use a transport as an independent storage element.

#define CHANGER_DRIVE_CLEANING_REQUIRED     0x00010000 // The drives controlled by the medium changer require periodic cleaning
                                                       // initiated by an application.
#define CHANGER_PREDISMOUNT_EJECT_REQUIRED  0x00020000 // The medium-changer requires a drive eject command to be issued, before a changer
                                                       // move / exchange command can be issued to the drive.

#define CHANGER_CLEANER_ACCESS_NOT_VALID    0x00040000 // The access bit in GES isn't valid for cleaner cartridges.
#define CHANGER_PREMOUNT_EJECT_REQUIRED     0x00080000 // The medium-changer requires a drive eject command to be issued
                                                       // before a move / exchange command can be issued with the drive as src/dst.

#define CHANGER_VOLUME_IDENTIFICATION       0x00100000 // The medium-changer supports volume identification.
#define CHANGER_VOLUME_SEARCH               0x00200000 // The medium-changer can search for volume information.
#define CHANGER_VOLUME_ASSERT               0x00400000 // The medium-changer can verify volume information.
#define CHANGER_VOLUME_REPLACE              0x00800000 // The medium-changer can replace volume information.
#define CHANGER_VOLUME_UNDEFINE             0x01000000 // The medium-changer can undefine volume information.

#define CHANGER_SERIAL_NUMBER_VALID         0x04000000 // The serial number reported in GetProductData is valid
                                                       // and unique.

#define CHANGER_DEVICE_REINITIALIZE_CAPABLE 0x08000000 // The medium-changer can be issued a ChangerReinitializeUnit.
#define CHANGER_KEYPAD_ENABLE_DISABLE       0x10000000 // Indicates that the keypad can be enabled/disabled.
#define CHANGER_DRIVE_EMPTY_ON_DOOR_ACCESS  0x20000000 // Drives must be empty before access via the door is possible.

#define CHANGER_RESERVED_BIT                0x80000000 // Will be used to indicate Features1 capability bits.


//
// Definitions for Features1 of GET_CHANGER_PARAMETERS
//

#define CHANGER_PREDISMOUNT_ALIGN_TO_SLOT   0x80000001 // The transport must be prepositioned to the slot prior to ejecting the media.
#define CHANGER_PREDISMOUNT_ALIGN_TO_DRIVE  0x80000002 // The transport must be prepositioned to the drive prior to ejecting the media.
#define CHANGER_CLEANER_AUTODISMOUNT        0x80000004 // The device will move the cleaner cartridge back into the slot when cleaning has completed.
#define CHANGER_TRUE_EXCHANGE_CAPABLE       0x80000008 // Device can do src -> dest2 exchanges.
#define CHANGER_SLOTS_USE_TRAYS             0x80000010 // Slots have removable trays, requiring multiple moves for inject/eject.
#define CHANGER_RTN_MEDIA_TO_ORIGINAL_ADDR  0x80000020 // Media must be returned to the slot from which it originated after a move to another element.
#define CHANGER_CLEANER_OPS_NOT_SUPPORTED   0x80000040 // Automated cleaning operations are not supported on this device.
#define CHANGER_IEPORT_USER_CONTROL_OPEN    0x80000080 // Indicates that user action is necessary to open a closed ieport.
#define CHANGER_IEPORT_USER_CONTROL_CLOSE   0x80000100 // Indicates that user action is necessary to close an opened ieport.
#define CHANGER_MOVE_EXTENDS_IEPORT         0x80000200 // Indicates that a move media to the ieport extends the tray.
#define CHANGER_MOVE_RETRACTS_IEPORT        0x80000400 // Indicates that a move media from the ieport retracts the tray.


//
// Definitions for MoveFrom, ExchangeFrom, and PositionCapabilities
//

#define CHANGER_TO_TRANSPORT    0x01 // The device can carry out the operation to a transport from the specified element.
#define CHANGER_TO_SLOT         0x02 // The device can carry out the operation to a slot from the specified element.
#define CHANGER_TO_IEPORT       0x04 // The device can carry out the operation to an IE Port from the specified element.
#define CHANGER_TO_DRIVE        0x08 // The device can carry out the operation to a drive from the specified element.

//
// Definitions for LockUnlockCapabilities
//

#define LOCK_UNLOCK_IEPORT      0x01 // The device can lock/unlock the ieport(s).
#define LOCK_UNLOCK_DOOR        0x02 // The device can lock/unlock the door(s).
#define LOCK_UNLOCK_KEYPAD      0x04 // The device can lock/unlock the keypad.

typedef  struct _GET_CHANGER_PARAMETERS {

    //
    // Size of the structure. Can be used for versioning.
    //

    DWORD Size;

    //
    // Number of N element(s) as defined by the Element Address Page (or equivalent...).
    //

    WORD   NumberTransportElements;
    WORD   NumberStorageElements;                // for data cartridges only
    WORD   NumberCleanerSlots;                   // for cleaner cartridges
    WORD   NumberIEElements;
    WORD   NumberDataTransferElements;

    //
    // Number of doors/front panels (allows user entry into the cabinet).
    //

    WORD   NumberOfDoors;

    //
    // The device-specific address (from user manual of the device) of the first N element. Used
    // by the UI to relate the various elements to the user.
    //

    WORD   FirstSlotNumber;
    WORD   FirstDriveNumber;
    WORD   FirstTransportNumber;
    WORD   FirstIEPortNumber;
    WORD   FirstCleanerSlotAddress;

    //
    // Indicates the capacity of each magazine, if they exist.
    //

    WORD   MagazineSize;

    //
    // Specifies the approximate number of seconds for when a cleaning should be completed.
    // Only applicable if drive cleaning is supported. See Features0.
    //

    DWORD DriveCleanTimeout;

    //
    // See features bits, above.
    //

    DWORD Features0;
    DWORD Features1;

    //
    // Bitmask defining Move from N element to element. Defined by Device Capabilities Page (or equivalent).
    // AND-masking with the TO_XXX values will indicate legal destinations.
    //

    BYTE  MoveFromTransport;
    BYTE  MoveFromSlot;
    BYTE  MoveFromIePort;
    BYTE  MoveFromDrive;

    //
    // Bitmask defining Exchange from N element to element. Defined by Device Capabilities Page (or equivalent).
    // AND-masking with the TO_XXX values will indicate legal destinations.
    //

    BYTE  ExchangeFromTransport;
    BYTE  ExchangeFromSlot;
    BYTE  ExchangeFromIePort;
    BYTE  ExchangeFromDrive;

    //
    // Bitmask defining which elements are capable of lock/unlock. Valid only if
    // CHANGER_LOCK_UNLOCK is set in Features0.
    //

    BYTE  LockUnlockCapabilities;

    //
    // Bitmask defining which elements valid for positioning operations. Valid only if
    // CHANGER_POSITION_TO_ELEMENT is set in Features0.
    //

    BYTE  PositionCapabilities;

    //
    // For future expansion.
    //

    BYTE  Reserved1[2];
    DWORD Reserved2[2];

} GET_CHANGER_PARAMETERS, * PGET_CHANGER_PARAMETERS;


//
// Definitions for IOCTL_CHANGER_GET_PRODUCT_DATA
//

typedef  struct _CHANGER_PRODUCT_DATA {

    //
    // Device manufacturer's name - based on inquiry data
    //

    BYTE  VendorId[VENDOR_ID_LENGTH];

    //
    // Product identification as defined by the vendor - based on Inquiry data
    //

    BYTE  ProductId[PRODUCT_ID_LENGTH];

    //
    // Product revision as defined by the vendor.
    //

    BYTE  Revision[REVISION_LENGTH];

    //
    // Vendor unique value used to globally identify this device. Can
    // be from Vital Product Data, for example.
    //

    BYTE  SerialNumber[SERIAL_NUMBER_LENGTH];

    //
    // Indicates device type of data transports, as defined by SCSI-2.
    //

    BYTE  DeviceType;

} CHANGER_PRODUCT_DATA, *PCHANGER_PRODUCT_DATA;


//
// Definitions for IOCTL_CHANGER_SET_ACCESS
//

#define LOCK_ELEMENT        0
#define UNLOCK_ELEMENT      1
#define EXTEND_IEPORT       2
#define RETRACT_IEPORT      3

typedef struct _CHANGER_SET_ACCESS {

    //
    // Element can be ChangerIEPort, ChangerDoor, ChangerKeypad
    //

    CHANGER_ELEMENT Element;

    //
    // See above for possible operations.
    //

    DWORD           Control;
} CHANGER_SET_ACCESS, *PCHANGER_SET_ACCESS;


//
// Definitions for IOCTL_CHANGER_GET_ELEMENT_STATUS
//

//
// Input buffer.
//

typedef struct _CHANGER_READ_ELEMENT_STATUS {

    //
    // List describing the elements and range on which to return information.
    //

    CHANGER_ELEMENT_LIST ElementList;

    //
    // Indicates whether volume tag information is to be returned.
    //

    BOOLEAN VolumeTagInfo;
} CHANGER_READ_ELEMENT_STATUS, *PCHANGER_READ_ELEMENT_STATUS;

//
// Output buffer.
//

typedef  struct _CHANGER_ELEMENT_STATUS {

    //
    // Element to which this structure refers.
    //

    CHANGER_ELEMENT Element;

    //
    // Address of the element from which the media was originally moved.
    // Valid if ELEMENT_STATUS_SVALID bit of Flags DWORD is set.
    // Needs to be converted to a zero-based offset from the device-unique value.
    //

    CHANGER_ELEMENT SrcElementAddress;

    //
    // See below.
    //

    DWORD Flags;

    //
    // See below for possible values.
    //

    DWORD ExceptionCode;

    //
    // Scsi Target Id of this element.
    // Valid only if ELEMENT_STATUS_ID_VALID is set in Flags.
    //

    BYTE  TargetId;

    //
    // LogicalUnitNumber of this element.
    // Valid only if ELEMENT_STATUS_LUN_VALID is set in Flags.
    //

    BYTE  Lun;
    WORD   Reserved;

    //
    // Primary volume identification for the media.
    // Valid only if ELEMENT_STATUS_PVOLTAG bit is set in Flags.
    //

    BYTE  PrimaryVolumeID[MAX_VOLUME_ID_SIZE];

    //
    // Alternate volume identification for the media.
    // Valid for two-sided media only, and pertains to the id. of the inverted side.
    // Valid only if ELEMENT_STATUS_AVOLTAG bit is set in Flags.
    //

    BYTE  AlternateVolumeID[MAX_VOLUME_ID_SIZE];

} CHANGER_ELEMENT_STATUS, *PCHANGER_ELEMENT_STATUS;

//
// Output buffer. This is same as CHANGER_ELEMENT_STATUS with
// the addition of product info fields. New applications should
// use this struct instead of the older CHANGER_ELEMENT_STATUS
//

typedef  struct _CHANGER_ELEMENT_STATUS_EX {

    //
    // Element to which this structure refers.
    //

    CHANGER_ELEMENT Element;

    //
    // Address of the element from which the media was originally moved.
    // Valid if ELEMENT_STATUS_SVALID bit of Flags DWORD is set.
    // Needs to be converted to a zero-based offset from the device-unique value.
    //

    CHANGER_ELEMENT SrcElementAddress;

    //
    // See below.
    //

    DWORD Flags;

    //
    // See below for possible values.
    //

    DWORD ExceptionCode;

    //
    // Scsi Target Id of this element.
    // Valid only if ELEMENT_STATUS_ID_VALID is set in Flags.
    //

    BYTE  TargetId;

    //
    // LogicalUnitNumber of this element.
    // Valid only if ELEMENT_STATUS_LUN_VALID is set in Flags.
    //

    BYTE  Lun;
    WORD   Reserved;

    //
    // Primary volume identification for the media.
    // Valid only if ELEMENT_STATUS_PVOLTAG bit is set in Flags.
    //

    BYTE  PrimaryVolumeID[MAX_VOLUME_ID_SIZE];

    //
    // Alternate volume identification for the media.
    // Valid for two-sided media only, and pertains to the id. of the inverted side.
    // Valid only if ELEMENT_STATUS_AVOLTAG bit is set in Flags.
    //

    BYTE  AlternateVolumeID[MAX_VOLUME_ID_SIZE];

    //
    // Vendor ID
    //
    BYTE  VendorIdentification[VENDOR_ID_LENGTH];

    //
    // Product ID
    //
    BYTE  ProductIdentification[PRODUCT_ID_LENGTH];

    //
    // Serial number
    //
    BYTE  SerialNumber[SERIAL_NUMBER_LENGTH];

} CHANGER_ELEMENT_STATUS_EX, *PCHANGER_ELEMENT_STATUS_EX;

//
// Possible flag values
//

#define ELEMENT_STATUS_FULL      0x00000001 // Element contains a unit of media.
#define ELEMENT_STATUS_IMPEXP    0x00000002 // Media in i/e port was placed there by an operator.
#define ELEMENT_STATUS_EXCEPT    0x00000004 // Element is in an abnormal state; check ExceptionCode field for more information.
#define ELEMENT_STATUS_ACCESS    0x00000008 // Access to the i/e port from the medium changer is allowed.
#define ELEMENT_STATUS_EXENAB    0x00000010 // Export of media is supported.
#define ELEMENT_STATUS_INENAB    0x00000020 // Import of media is supported.

#define ELEMENT_STATUS_PRODUCT_DATA 0x00000040 // Serial number valid for the drive

#define ELEMENT_STATUS_LUN_VALID 0x00001000 // Lun information is valid.
#define ELEMENT_STATUS_ID_VALID  0x00002000 // SCSI Id information is valid.
#define ELEMENT_STATUS_NOT_BUS   0x00008000 // Lun and SCSI Id fields are not on same bus as medium changer.
#define ELEMENT_STATUS_INVERT    0x00400000 // Media in element was inverted (valid only if ELEMENT_STATUS_SVALID bit is set)
#define ELEMENT_STATUS_SVALID    0x00800000 // SourceElementAddress field and ELEMENT_STATUS_INVERT bit are valid.

#define ELEMENT_STATUS_PVOLTAG   0x10000000 // Primary volume information is valid.
#define ELEMENT_STATUS_AVOLTAG   0x20000000 // Alternate volume information is valid.

//
// ExceptionCode values.
//

#define ERROR_LABEL_UNREADABLE    0x00000001 // Bar code scanner could not read bar code label.
#define ERROR_LABEL_QUESTIONABLE  0x00000002 // Label could be invalid due to unit attention condition.
#define ERROR_SLOT_NOT_PRESENT    0x00000004 // Slot is currently not addressable in the device.
#define ERROR_DRIVE_NOT_INSTALLED 0x00000008 // Drive is not installed.
#define ERROR_TRAY_MALFUNCTION    0x00000010 // Media tray is malfunctioning/broken.
#define ERROR_INIT_STATUS_NEEDED  0x00000011 // An Initialize Element Status command is needed.
#define ERROR_UNHANDLED_ERROR     0xFFFFFFFF // Unknown error condition


//
// Definitions for IOCTL_CHANGER_INITIALIZE_ELEMENT_STATUS
//

typedef struct _CHANGER_INITIALIZE_ELEMENT_STATUS {

    //
    // List describing the elements and range on which to initialize.
    //

    CHANGER_ELEMENT_LIST ElementList;

    //
    // Indicates whether a bar code scan should be used. Only applicable if
    // CHANGER_BAR_CODE_SCANNER_INSTALLED is set in Features0 of CHANGER_GET_PARAMETERS.
    //

    BOOLEAN BarCodeScan;
} CHANGER_INITIALIZE_ELEMENT_STATUS, *PCHANGER_INITIALIZE_ELEMENT_STATUS;


//
// Definitions for IOCTL_CHANGER_SET_POSITION
//

typedef struct _CHANGER_SET_POSITION {


    //
    // Indicates which transport to move.
    //

    CHANGER_ELEMENT Transport;

    //
    // Indicates the final destination of the transport.
    //

    CHANGER_ELEMENT Destination;

    //
    // Indicates whether the media currently carried by Transport, should be flipped.
    //

    BOOLEAN         Flip;
} CHANGER_SET_POSITION, *PCHANGER_SET_POSITION;


//
// Definitions for IOCTL_CHANGER_EXCHANGE_MEDIUM
//

typedef struct _CHANGER_EXCHANGE_MEDIUM {

    //
    // Indicates which transport to use for the exchange operation.
    //

    CHANGER_ELEMENT Transport;

    //
    // Indicates the source for the media that is to be moved.
    //

    CHANGER_ELEMENT Source;

    //
    // Indicates the final destination of the media originally at Source.
    //

    CHANGER_ELEMENT Destination1;

    //
    // Indicates the destination of the media moved from Destination1.
    //

    CHANGER_ELEMENT Destination2;

    //
    // Indicates whether the medium should be flipped.
    //

    BOOLEAN         Flip1;
    BOOLEAN         Flip2;
} CHANGER_EXCHANGE_MEDIUM, *PCHANGER_EXCHANGE_MEDIUM;


//
// Definitions for IOCTL_CHANGER_MOVE_MEDIUM
//

typedef struct _CHANGER_MOVE_MEDIUM {

    //
    // Indicates which transport to use for the move operation.
    //

    CHANGER_ELEMENT Transport;

    //
    // Indicates the source for the media that is to be moved.
    //

    CHANGER_ELEMENT Source;

    //
    // Indicates the destination of the media originally at Source.
    //

    CHANGER_ELEMENT Destination;

    //
    // Indicates whether the media should be flipped.
    //

    BOOLEAN         Flip;
} CHANGER_MOVE_MEDIUM, *PCHANGER_MOVE_MEDIUM;



//
// Definitions for IOCTL_QUERY_VOLUME_TAGS
//

//
// Input buffer.
//

typedef  struct _CHANGER_SEND_VOLUME_TAG_INFORMATION {

    //
    // Describes the starting element for which to return information.
    //

    CHANGER_ELEMENT StartingElement;

    //
    // Indicates the specific action to perform. See below.
    //

    DWORD ActionCode;

    //
    // Template used by the device to search for volume ids.
    //

    BYTE  VolumeIDTemplate[MAX_VOLUME_TEMPLATE_SIZE];
} CHANGER_SEND_VOLUME_TAG_INFORMATION, *PCHANGER_SEND_VOLUME_TAG_INFORMATION;


//
// Output buffer.
//

typedef struct _READ_ELEMENT_ADDRESS_INFO {

    //
    // Number of elements matching criteria set forth by ActionCode.
    //

    DWORD NumberOfElements;

    //
    // Array of CHANGER_ELEMENT_STATUS structures, one for each element that corresponded
    // with the information passed in with the CHANGER_SEND_VOLUME_TAG_INFORMATION structure.
    //

    CHANGER_ELEMENT_STATUS ElementStatus[1];
} READ_ELEMENT_ADDRESS_INFO, *PREAD_ELEMENT_ADDRESS_INFO;

//
// Possible ActionCode values. See Features0 of CHANGER_GET_PARAMETERS for compatibility with
// the current device.
//

#define SEARCH_ALL         0x0 // Translate - search all defined volume tags.
#define SEARCH_PRIMARY     0x1 // Translate - search only primary volume tags.
#define SEARCH_ALTERNATE   0x2 // Translate - search only alternate volume tags.
#define SEARCH_ALL_NO_SEQ  0x4 // Translate - search all defined volume tags but ignore sequence numbers.
#define SEARCH_PRI_NO_SEQ  0x5 // Translate - search only primary volume tags but ignore sequence numbers.
#define SEARCH_ALT_NO_SEQ  0x6 // Translate - search only alternate volume tags but ignore sequence numbers.

#define ASSERT_PRIMARY     0x8 // Assert - as the primary volume tag - if tag now undefined.
#define ASSERT_ALTERNATE   0x9 // Assert - as the alternate volume tag - if tag now undefined.

#define REPLACE_PRIMARY    0xA // Replace - the primary volume tag - current tag ignored.
#define REPLACE_ALTERNATE  0xB // Replace - the alternate volume tag - current tag ignored.

#define UNDEFINE_PRIMARY   0xC // Undefine - the primary volume tag - current tag ignored.
#define UNDEFINE_ALTERNATE 0xD // Undefine - the alternate volume tag - current tag ignored.


//
// Changer diagnostic test related definitions
//
typedef enum _CHANGER_DEVICE_PROBLEM_TYPE {
   DeviceProblemNone,
   DeviceProblemHardware,
   DeviceProblemCHMError,
   DeviceProblemDoorOpen,
   DeviceProblemCalibrationError,
   DeviceProblemTargetFailure,
   DeviceProblemCHMMoveError,
   DeviceProblemCHMZeroError,
   DeviceProblemCartridgeInsertError,
   DeviceProblemPositionError,
   DeviceProblemSensorError,
   DeviceProblemCartridgeEjectError,
   DeviceProblemGripperError,
   DeviceProblemDriveError
} CHANGER_DEVICE_PROBLEM_TYPE, *PCHANGER_DEVICE_PROBLEM_TYPE;


#define IOCTL_SERIAL_LSRMST_INSERT      CTL_CODE(FILE_DEVICE_SERIAL_PORT,31,METHOD_BUFFERED,FILE_ANY_ACCESS)

#define IOCTL_SERENUM_EXPOSE_HARDWARE   CTL_CODE(FILE_DEVICE_SERENUM,128,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_SERENUM_REMOVE_HARDWARE   CTL_CODE(FILE_DEVICE_SERENUM,129,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_SERENUM_PORT_DESC         CTL_CODE(FILE_DEVICE_SERENUM,130,METHOD_BUFFERED,FILE_ANY_ACCESS)
#define IOCTL_SERENUM_GET_PORT_NAME     CTL_CODE(FILE_DEVICE_SERENUM,131,METHOD_BUFFERED,FILE_ANY_ACCESS)


//
// The following values follow the escape designator in the
// data stream if the LSRMST_INSERT mode has been turned on.
//
#define SERIAL_LSRMST_ESCAPE     ((BYTE )0x00)

//
// Following this value is the contents of the line status
// register, and then the character in the RX hardware when
// the line status register was encountered.
//
#define SERIAL_LSRMST_LSR_DATA   ((BYTE )0x01)

//
// Following this value is the contents of the line status
// register.  No error character follows
//
#define SERIAL_LSRMST_LSR_NODATA ((BYTE )0x02)

//
// Following this value is the contents of the modem status
// register.
//
#define SERIAL_LSRMST_MST        ((BYTE )0x03)

//
// Bit values for FIFO Control Register
//

#define SERIAL_IOC_FCR_FIFO_ENABLE      ((DWORD)0x00000001)
#define SERIAL_IOC_FCR_RCVR_RESET       ((DWORD)0x00000002)
#define SERIAL_IOC_FCR_XMIT_RESET       ((DWORD)0x00000004)
#define SERIAL_IOC_FCR_DMA_MODE         ((DWORD)0x00000008)
#define SERIAL_IOC_FCR_RES1             ((DWORD)0x00000010)
#define SERIAL_IOC_FCR_RES2             ((DWORD)0x00000020)
#define SERIAL_IOC_FCR_RCVR_TRIGGER_LSB ((DWORD)0x00000040)
#define SERIAL_IOC_FCR_RCVR_TRIGGER_MSB ((DWORD)0x00000080)

//
// Bit values for Modem Control Register
//

#define SERIAL_IOC_MCR_DTR              ((DWORD)0x00000001)
#define SERIAL_IOC_MCR_RTS              ((DWORD)0x00000002)
#define SERIAL_IOC_MCR_OUT1             ((DWORD)0x00000004)
#define SERIAL_IOC_MCR_OUT2             ((DWORD)0x00000008)
#define SERIAL_IOC_MCR_LOOP             ((DWORD)0x00000010)


#ifndef _FILESYSTEMFSCTL_
#define _FILESYSTEMFSCTL_

//
// The following is a list of the native file system fsctls followed by
// additional network file system fsctls.  Some values have been
// decommissioned.
//

#define FSCTL_REQUEST_OPLOCK_LEVEL_1    CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  0, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_REQUEST_OPLOCK_LEVEL_2    CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  1, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_REQUEST_BATCH_OPLOCK      CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  2, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_OPLOCK_BREAK_ACKNOWLEDGE  CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  3, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_OPBATCH_ACK_CLOSE_PENDING CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  4, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_OPLOCK_BREAK_NOTIFY       CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  5, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_LOCK_VOLUME               CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  6, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_UNLOCK_VOLUME             CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  7, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_DISMOUNT_VOLUME           CTL_CODE(FILE_DEVICE_FILE_SYSTEM,  8, METHOD_BUFFERED, FILE_ANY_ACCESS)
// decommissioned fsctl value                                              9
#define FSCTL_IS_VOLUME_MOUNTED         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 10, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_IS_PATHNAME_VALID         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 11, METHOD_BUFFERED, FILE_ANY_ACCESS) // PATHNAME_BUFFER,
#define FSCTL_MARK_VOLUME_DIRTY         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 12, METHOD_BUFFERED, FILE_ANY_ACCESS)
// decommissioned fsctl value                                             13
#define FSCTL_QUERY_RETRIEVAL_POINTERS  CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 14,  METHOD_NEITHER, FILE_ANY_ACCESS)
#define FSCTL_GET_COMPRESSION           CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 15, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_SET_COMPRESSION           CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 16, METHOD_BUFFERED, FILE_READ_DATA | FILE_WRITE_DATA)
// decommissioned fsctl value                                             17
// decommissioned fsctl value                                             18
#define FSCTL_SET_BOOTLOADER_ACCESSED   CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 19,  METHOD_NEITHER, FILE_ANY_ACCESS)
#define FSCTL_OPLOCK_BREAK_ACK_NO_2     CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 20, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_INVALIDATE_VOLUMES        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 21, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_QUERY_FAT_BPB             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 22, METHOD_BUFFERED, FILE_ANY_ACCESS) // FSCTL_QUERY_FAT_BPB_BUFFER
#define FSCTL_REQUEST_FILTER_OPLOCK     CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 23, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_FILESYSTEM_GET_STATISTICS CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 24, METHOD_BUFFERED, FILE_ANY_ACCESS) // FILESYSTEM_STATISTICS

#if (_WIN32_WINNT >= 0x0400)
#define FSCTL_GET_NTFS_VOLUME_DATA      CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 25, METHOD_BUFFERED, FILE_ANY_ACCESS) // NTFS_VOLUME_DATA_BUFFER
#define FSCTL_GET_NTFS_FILE_RECORD      CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 26, METHOD_BUFFERED, FILE_ANY_ACCESS) // NTFS_FILE_RECORD_INPUT_BUFFER, NTFS_FILE_RECORD_OUTPUT_BUFFER
#define FSCTL_GET_VOLUME_BITMAP         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 27,  METHOD_NEITHER, FILE_ANY_ACCESS) // STARTING_LCN_INPUT_BUFFER, VOLUME_BITMAP_BUFFER
#define FSCTL_GET_RETRIEVAL_POINTERS    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 28,  METHOD_NEITHER, FILE_ANY_ACCESS) // STARTING_VCN_INPUT_BUFFER, RETRIEVAL_POINTERS_BUFFER
#define FSCTL_MOVE_FILE                 CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 29, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // MOVE_FILE_DATA,
#define FSCTL_IS_VOLUME_DIRTY           CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 30, METHOD_BUFFERED, FILE_ANY_ACCESS)
// decomissioned fsctl value                                              31
#define FSCTL_ALLOW_EXTENDED_DASD_IO    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 32, METHOD_NEITHER,  FILE_ANY_ACCESS)
#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x0500)
// decommissioned fsctl value                                             33
// decommissioned fsctl value                                             34
#define FSCTL_FIND_FILES_BY_SID         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 35, METHOD_NEITHER, FILE_ANY_ACCESS)
// decommissioned fsctl value                                             36
// decommissioned fsctl value                                             37
#define FSCTL_SET_OBJECT_ID             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 38, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // FILE_OBJECTID_BUFFER
#define FSCTL_GET_OBJECT_ID             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 39, METHOD_BUFFERED, FILE_ANY_ACCESS) // FILE_OBJECTID_BUFFER
#define FSCTL_DELETE_OBJECT_ID          CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 40, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define FSCTL_SET_REPARSE_POINT         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 41, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // REPARSE_DATA_BUFFER,
#define FSCTL_GET_REPARSE_POINT         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 42, METHOD_BUFFERED, FILE_ANY_ACCESS) // REPARSE_DATA_BUFFER
#define FSCTL_DELETE_REPARSE_POINT      CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 43, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // REPARSE_DATA_BUFFER,
#define FSCTL_ENUM_USN_DATA             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 44,  METHOD_NEITHER, FILE_ANY_ACCESS) // MFT_ENUM_DATA,
#define FSCTL_SECURITY_ID_CHECK         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 45,  METHOD_NEITHER, FILE_READ_DATA)  // BULK_SECURITY_TEST_DATA,
#define FSCTL_READ_USN_JOURNAL          CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 46,  METHOD_NEITHER, FILE_ANY_ACCESS) // READ_USN_JOURNAL_DATA, USN
#define FSCTL_SET_OBJECT_ID_EXTENDED    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 47, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define FSCTL_CREATE_OR_GET_OBJECT_ID   CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 48, METHOD_BUFFERED, FILE_ANY_ACCESS) // FILE_OBJECTID_BUFFER
#define FSCTL_SET_SPARSE                CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 49, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define FSCTL_SET_ZERO_DATA             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 50, METHOD_BUFFERED, FILE_WRITE_DATA) // FILE_ZERO_DATA_INFORMATION,
#define FSCTL_QUERY_ALLOCATED_RANGES    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 51,  METHOD_NEITHER, FILE_READ_DATA)  // FILE_ALLOCATED_RANGE_BUFFER, FILE_ALLOCATED_RANGE_BUFFER
#define FSCTL_ENABLE_UPGRADE            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 52, METHOD_BUFFERED, FILE_WRITE_DATA)
// decommissioned fsctl value                                             52
#define FSCTL_SET_ENCRYPTION            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 53,  METHOD_NEITHER, FILE_ANY_ACCESS) // ENCRYPTION_BUFFER, DECRYPTION_STATUS_BUFFER
#define FSCTL_ENCRYPTION_FSCTL_IO       CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 54,  METHOD_NEITHER, FILE_ANY_ACCESS)
#define FSCTL_WRITE_RAW_ENCRYPTED       CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 55,  METHOD_NEITHER, FILE_SPECIAL_ACCESS) // ENCRYPTED_DATA_INFO, EXTENDED_ENCRYPTED_DATA_INFO
#define FSCTL_READ_RAW_ENCRYPTED        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 56,  METHOD_NEITHER, FILE_SPECIAL_ACCESS) // REQUEST_RAW_ENCRYPTED_DATA, ENCRYPTED_DATA_INFO, EXTENDED_ENCRYPTED_DATA_INFO
#define FSCTL_CREATE_USN_JOURNAL        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 57,  METHOD_NEITHER, FILE_ANY_ACCESS) // CREATE_USN_JOURNAL_DATA,
#define FSCTL_READ_FILE_USN_DATA        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 58,  METHOD_NEITHER, FILE_ANY_ACCESS) // Read the Usn Record for a file
#define FSCTL_WRITE_USN_CLOSE_RECORD    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 59,  METHOD_NEITHER, FILE_ANY_ACCESS) // Generate Close Usn Record
#define FSCTL_EXTEND_VOLUME             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 60, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_QUERY_USN_JOURNAL         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 61, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_DELETE_USN_JOURNAL        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 62, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_MARK_HANDLE               CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 63, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_SIS_COPYFILE              CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 64, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_SIS_LINK_FILES            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 65, METHOD_BUFFERED, FILE_READ_DATA | FILE_WRITE_DATA)
// decommissional fsctl value                                             66
// decommissioned fsctl value                                             67
// decommissioned fsctl value                                             68
#define FSCTL_RECALL_FILE               CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 69, METHOD_NEITHER, FILE_ANY_ACCESS)
// decommissioned fsctl value                                             70
#define FSCTL_READ_FROM_PLEX            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 71, METHOD_OUT_DIRECT, FILE_READ_DATA)
#define FSCTL_FILE_PREFETCH             CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 72, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // FILE_PREFETCH
#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0600)
#define FSCTL_MAKE_MEDIA_COMPATIBLE         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 76, METHOD_BUFFERED, FILE_WRITE_DATA) // UDFS R/W
#define FSCTL_SET_DEFECT_MANAGEMENT         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 77, METHOD_BUFFERED, FILE_WRITE_DATA) // UDFS R/W
#define FSCTL_QUERY_SPARING_INFO            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 78, METHOD_BUFFERED, FILE_ANY_ACCESS) // UDFS R/W
#define FSCTL_QUERY_ON_DISK_VOLUME_INFO     CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 79, METHOD_BUFFERED, FILE_ANY_ACCESS) // C/UDFS
#define FSCTL_SET_VOLUME_COMPRESSION_STATE  CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 80, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // VOLUME_COMPRESSION_STATE
// decommissioned fsctl value                                                 80
#define FSCTL_TXFS_MODIFY_RM                CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 81, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_QUERY_RM_INFORMATION     CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 82, METHOD_BUFFERED, FILE_READ_DATA)  // TxF
// decommissioned fsctl value                                                 83
#define FSCTL_TXFS_ROLLFORWARD_REDO         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 84, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_ROLLFORWARD_UNDO         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 85, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_START_RM                 CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 86, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_SHUTDOWN_RM              CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 87, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_READ_BACKUP_INFORMATION  CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 88, METHOD_BUFFERED, FILE_READ_DATA)  // TxF
#define FSCTL_TXFS_WRITE_BACKUP_INFORMATION CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 89, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_CREATE_SECONDARY_RM      CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 90, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_GET_METADATA_INFO        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 91, METHOD_BUFFERED, FILE_READ_DATA)  // TxF
#define FSCTL_TXFS_GET_TRANSACTED_VERSION   CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 92, METHOD_BUFFERED, FILE_READ_DATA)  // TxF
// decommissioned fsctl value                                                 93
#define FSCTL_TXFS_SAVEPOINT_INFORMATION    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 94, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
#define FSCTL_TXFS_CREATE_MINIVERSION       CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 95, METHOD_BUFFERED, FILE_WRITE_DATA) // TxF
// decommissioned fsctl value                                                 96
// decommissioned fsctl value                                                 97
// decommissioned fsctl value                                                 98
#define FSCTL_TXFS_TRANSACTION_ACTIVE       CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 99, METHOD_BUFFERED, FILE_READ_DATA)  // TxF
#define FSCTL_SET_ZERO_ON_DEALLOCATION      CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 101, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define FSCTL_SET_REPAIR                    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 102, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_GET_REPAIR                    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 103, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_WAIT_FOR_REPAIR               CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 104, METHOD_BUFFERED, FILE_ANY_ACCESS)
// decommissioned fsctl value                                                 105
#define FSCTL_INITIATE_REPAIR               CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 106, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_CSC_INTERNAL                  CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 107, METHOD_NEITHER, FILE_ANY_ACCESS) // CSC internal implementation
#define FSCTL_SHRINK_VOLUME                 CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 108, METHOD_BUFFERED, FILE_SPECIAL_ACCESS) // SHRINK_VOLUME_INFORMATION
#define FSCTL_SET_SHORT_NAME_BEHAVIOR       CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 109, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_DFSR_SET_GHOST_HANDLE_STATE   CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 110, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
//  Values 111 - 119 are reserved for FSRM.
//

#define FSCTL_TXFS_LIST_TRANSACTION_LOCKED_FILES \
                                            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 120, METHOD_BUFFERED, FILE_READ_DATA) // TxF
#define FSCTL_TXFS_LIST_TRANSACTIONS        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 121, METHOD_BUFFERED, FILE_READ_DATA) // TxF
#define FSCTL_QUERY_PAGEFILE_ENCRYPTION     CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 122, METHOD_BUFFERED, FILE_ANY_ACCESS)
#endif /* _WIN32_WINNT >= 0x0600 */

#if (_WIN32_WINNT >= 0x0600)
#define FSCTL_RESET_VOLUME_ALLOCATION_HINTS CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 123, METHOD_BUFFERED, FILE_ANY_ACCESS)
#endif /* _WIN32_WINNT >= 0x0600 */

#if (_WIN32_WINNT >= 0x0601)
#define FSCTL_QUERY_DEPENDENT_VOLUME        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 124, METHOD_BUFFERED, FILE_ANY_ACCESS)    // Dependency File System Filter
#define FSCTL_SD_GLOBAL_CHANGE              CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 125, METHOD_BUFFERED, FILE_ANY_ACCESS) // Update NTFS Security Descriptors
#endif /* _WIN32_WINNT >= 0x0601 */

#if (_WIN32_WINNT >= 0x0600)
#define FSCTL_TXFS_READ_BACKUP_INFORMATION2 CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 126, METHOD_BUFFERED, FILE_ANY_ACCESS) // TxF
#endif /* _WIN32_WINNT >= 0x0600 */

#if (_WIN32_WINNT >= 0x0601)
#define FSCTL_LOOKUP_STREAM_FROM_CLUSTER    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 127, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_TXFS_WRITE_BACKUP_INFORMATION2 CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 128, METHOD_BUFFERED, FILE_ANY_ACCESS) // TxF
#define FSCTL_FILE_TYPE_NOTIFICATION        CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 129, METHOD_BUFFERED, FILE_ANY_ACCESS)
#endif


//
//  Values 130 - 130 are available
//

//
//  Values 131 - 139 are reserved for FSRM.
//

#if (_WIN32_WINNT >= 0x0601)
#define FSCTL_GET_BOOT_AREA_INFO            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 140, METHOD_BUFFERED, FILE_ANY_ACCESS) // BOOT_AREA_INFO
#define FSCTL_GET_RETRIEVAL_POINTER_BASE    CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 141, METHOD_BUFFERED, FILE_ANY_ACCESS) // RETRIEVAL_POINTER_BASE
#define FSCTL_SET_PERSISTENT_VOLUME_STATE   CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 142, METHOD_BUFFERED, FILE_ANY_ACCESS)  // FILE_FS_PERSISTENT_VOLUME_INFORMATION
#define FSCTL_QUERY_PERSISTENT_VOLUME_STATE CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 143, METHOD_BUFFERED, FILE_ANY_ACCESS)  // FILE_FS_PERSISTENT_VOLUME_INFORMATION

#define FSCTL_REQUEST_OPLOCK                CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 144, METHOD_BUFFERED, FILE_ANY_ACCESS)

#define FSCTL_CSV_TUNNEL_REQUEST            CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 145, METHOD_BUFFERED, FILE_ANY_ACCESS) // CSV_TUNNEL_REQUEST
#define FSCTL_IS_CSV_FILE                   CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 146, METHOD_BUFFERED, FILE_ANY_ACCESS) // IS_CSV_FILE

#define FSCTL_QUERY_FILE_SYSTEM_RECOGNITION CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 147, METHOD_BUFFERED, FILE_ANY_ACCESS) // 
#define FSCTL_CSV_GET_VOLUME_PATH_NAME      CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 148, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_CSV_GET_VOLUME_NAME_FOR_VOLUME_MOUNT_POINT CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 149, METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_CSV_GET_VOLUME_PATH_NAMES_FOR_VOLUME_NAME CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 150,  METHOD_BUFFERED, FILE_ANY_ACCESS)
#define FSCTL_IS_FILE_ON_CSV_VOLUME         CTL_CODE(FILE_DEVICE_FILE_SYSTEM, 151,  METHOD_BUFFERED, FILE_ANY_ACCESS)

#endif /* _WIN32_WINNT >= 0x0601 */

#define FSCTL_MARK_AS_SYSTEM_HIVE           FSCTL_SET_BOOTLOADER_ACCESSED

// end_ntifs
// begin_ntddk
//
// AVIO IOCTLS.
//

#define IOCTL_AVIO_ALLOCATE_STREAM      CTL_CODE(FILE_DEVICE_AVIO, 1, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define IOCTL_AVIO_FREE_STREAM          CTL_CODE(FILE_DEVICE_AVIO, 2, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)
#define IOCTL_AVIO_MODIFY_STREAM        CTL_CODE(FILE_DEVICE_AVIO, 3, METHOD_BUFFERED, FILE_SPECIAL_ACCESS)

// end_ntddk
// begin_ntifs

#if(_WIN32_WINNT >= 0x0601)

//
// Structure for FSCTL_IS_CSV_FILE
//

typedef struct _CSV_NAMESPACE_INFO {

    DWORD         Version;
    DWORD         DeviceNumber;
    LARGE_INTEGER StartingOffset;
    DWORD         SectorSize;

} CSV_NAMESPACE_INFO, *PCSV_NAMESPACE_INFO;

#define CSV_NAMESPACE_INFO_V1 (sizeof(CSV_NAMESPACE_INFO))
#define CSV_INVALID_DEVICE_NUMBER 0xFFFFFFFF

#endif /* _WIN32_WINNT >= 0x0601 */

//
// The following long list of structs are associated with the preceeding
// file system fsctls.
//

//
// Structure for FSCTL_IS_PATHNAME_VALID
//

typedef struct _PATHNAME_BUFFER {

    DWORD PathNameLength;
    WCHAR Name[1];

} PATHNAME_BUFFER, *PPATHNAME_BUFFER;

//
// Structure for FSCTL_QUERY_BPB_INFO
//

typedef struct _FSCTL_QUERY_FAT_BPB_BUFFER {

    BYTE  First0x24BytesOfBootSector[0x24];

} FSCTL_QUERY_FAT_BPB_BUFFER, *PFSCTL_QUERY_FAT_BPB_BUFFER;

#if (_WIN32_WINNT >= 0x0400)
//
// Structures for FSCTL_GET_NTFS_VOLUME_DATA.
// The user must pass the basic buffer below.  Ntfs
// will return as many fields as available in the extended
// buffer which follows immediately after the VOLUME_DATA_BUFFER.
//

typedef struct {

    LARGE_INTEGER VolumeSerialNumber;
    LARGE_INTEGER NumberSectors;
    LARGE_INTEGER TotalClusters;
    LARGE_INTEGER FreeClusters;
    LARGE_INTEGER TotalReserved;
    DWORD BytesPerSector;
    DWORD BytesPerCluster;
    DWORD BytesPerFileRecordSegment;
    DWORD ClustersPerFileRecordSegment;
    LARGE_INTEGER MftValidDataLength;
    LARGE_INTEGER MftStartLcn;
    LARGE_INTEGER Mft2StartLcn;
    LARGE_INTEGER MftZoneStart;
    LARGE_INTEGER MftZoneEnd;

} NTFS_VOLUME_DATA_BUFFER, *PNTFS_VOLUME_DATA_BUFFER;

typedef struct {

    DWORD ByteCount;

    WORD   MajorVersion;
    WORD   MinorVersion;

} NTFS_EXTENDED_VOLUME_DATA, *PNTFS_EXTENDED_VOLUME_DATA;
#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x0400)
//
// Structure for FSCTL_GET_VOLUME_BITMAP
//

typedef struct {

    LARGE_INTEGER StartingLcn;

} STARTING_LCN_INPUT_BUFFER, *PSTARTING_LCN_INPUT_BUFFER;

typedef struct {

    LARGE_INTEGER StartingLcn;
    LARGE_INTEGER BitmapSize;
    BYTE  Buffer[1];

} VOLUME_BITMAP_BUFFER, *PVOLUME_BITMAP_BUFFER;
#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x0400)
//
// Structure for FSCTL_GET_RETRIEVAL_POINTERS
//

typedef struct {

    LARGE_INTEGER StartingVcn;

} STARTING_VCN_INPUT_BUFFER, *PSTARTING_VCN_INPUT_BUFFER;

typedef struct RETRIEVAL_POINTERS_BUFFER {

    DWORD ExtentCount;
    LARGE_INTEGER StartingVcn;
    struct {
        LARGE_INTEGER NextVcn;
        LARGE_INTEGER Lcn;
    } Extents[1];

} RETRIEVAL_POINTERS_BUFFER, *PRETRIEVAL_POINTERS_BUFFER;
#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x0400)
//
// Structures for FSCTL_GET_NTFS_FILE_RECORD
//

typedef struct {

    LARGE_INTEGER FileReferenceNumber;

} NTFS_FILE_RECORD_INPUT_BUFFER, *PNTFS_FILE_RECORD_INPUT_BUFFER;

typedef struct {

    LARGE_INTEGER FileReferenceNumber;
    DWORD FileRecordLength;
    BYTE  FileRecordBuffer[1];

} NTFS_FILE_RECORD_OUTPUT_BUFFER, *PNTFS_FILE_RECORD_OUTPUT_BUFFER;
#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x0400)
//
// Structure for FSCTL_MOVE_FILE
//

typedef struct {

    HANDLE FileHandle;
    LARGE_INTEGER StartingVcn;
    LARGE_INTEGER StartingLcn;
    DWORD ClusterCount;

} MOVE_FILE_DATA, *PMOVE_FILE_DATA;

typedef struct {

    HANDLE FileHandle;
    LARGE_INTEGER SourceFileRecord;
    LARGE_INTEGER TargetFileRecord;

} MOVE_FILE_RECORD_DATA, *PMOVE_FILE_RECORD_DATA;


#if defined(_WIN64)
//
//  32/64 Bit thunking support structure
//

typedef struct _MOVE_FILE_DATA32 {

    UINT32 FileHandle;
    LARGE_INTEGER StartingVcn;
    LARGE_INTEGER StartingLcn;
    DWORD ClusterCount;

} MOVE_FILE_DATA32, *PMOVE_FILE_DATA32;
#endif
#endif /* _WIN32_WINNT >= 0x0400 */

#if (_WIN32_WINNT >= 0x0500)
//
// Structures for FSCTL_FIND_FILES_BY_SID
//

typedef struct {
    DWORD Restart;
    SID Sid;
} FIND_BY_SID_DATA, *PFIND_BY_SID_DATA;

typedef struct {
    DWORD NextEntryOffset;
    DWORD FileIndex;
    DWORD FileNameLength;
    WCHAR FileName[1];
} FIND_BY_SID_OUTPUT, *PFIND_BY_SID_OUTPUT;

#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0500)
//
//  The following structures apply to Usn operations.
//

//
// Structure for FSCTL_ENUM_USN_DATA
//

typedef struct {

    DWORDLONG StartFileReferenceNumber;
    USN LowUsn;
    USN HighUsn;

} MFT_ENUM_DATA, *PMFT_ENUM_DATA;

//
// Structure for FSCTL_CREATE_USN_JOURNAL
//

typedef struct {

    DWORDLONG MaximumSize;
    DWORDLONG AllocationDelta;

} CREATE_USN_JOURNAL_DATA, *PCREATE_USN_JOURNAL_DATA;

//
// Structure for FSCTL_READ_USN_JOURNAL
//

typedef struct {

    USN StartUsn;
    DWORD ReasonMask;
    DWORD ReturnOnlyOnClose;
    DWORDLONG Timeout;
    DWORDLONG BytesToWaitFor;
    DWORDLONG UsnJournalID;

} READ_USN_JOURNAL_DATA, *PREAD_USN_JOURNAL_DATA;

//
//  The initial Major.Minor version of the Usn record will be 2.0.
//  In general, the MinorVersion may be changed if fields are added
//  to this structure in such a way that the previous version of the
//  software can still correctly the fields it knows about.  The
//  MajorVersion should only be changed if the previous version of
//  any software using this structure would incorrectly handle new
//  records due to structure changes.
//
//  The first update to this will force the structure to version 2.0.
//  This will add the extended information about the source as
//  well as indicate the file name offset within the structure.
//
//  The following structure is returned with these fsctls.
//
//      FSCTL_READ_USN_JOURNAL
//      FSCTL_READ_FILE_USN_DATA
//      FSCTL_ENUM_USN_DATA
//

typedef struct {

    DWORD RecordLength;
    WORD   MajorVersion;
    WORD   MinorVersion;
    DWORDLONG FileReferenceNumber;
    DWORDLONG ParentFileReferenceNumber;
    USN Usn;
    LARGE_INTEGER TimeStamp;
    DWORD Reason;
    DWORD SourceInfo;
    DWORD SecurityId;
    DWORD FileAttributes;
    WORD   FileNameLength;
    WORD   FileNameOffset;
    WCHAR FileName[1];

} USN_RECORD, *PUSN_RECORD;

#define USN_PAGE_SIZE                    (0x1000)

#define USN_REASON_DATA_OVERWRITE        (0x00000001)
#define USN_REASON_DATA_EXTEND           (0x00000002)
#define USN_REASON_DATA_TRUNCATION       (0x00000004)
#define USN_REASON_NAMED_DATA_OVERWRITE  (0x00000010)
#define USN_REASON_NAMED_DATA_EXTEND     (0x00000020)
#define USN_REASON_NAMED_DATA_TRUNCATION (0x00000040)
#define USN_REASON_FILE_CREATE           (0x00000100)
#define USN_REASON_FILE_DELETE           (0x00000200)
#define USN_REASON_EA_CHANGE             (0x00000400)
#define USN_REASON_SECURITY_CHANGE       (0x00000800)
#define USN_REASON_RENAME_OLD_NAME       (0x00001000)
#define USN_REASON_RENAME_NEW_NAME       (0x00002000)
#define USN_REASON_INDEXABLE_CHANGE      (0x00004000)
#define USN_REASON_BASIC_INFO_CHANGE     (0x00008000)
#define USN_REASON_HARD_LINK_CHANGE      (0x00010000)
#define USN_REASON_COMPRESSION_CHANGE    (0x00020000)
#define USN_REASON_ENCRYPTION_CHANGE     (0x00040000)
#define USN_REASON_OBJECT_ID_CHANGE      (0x00080000)
#define USN_REASON_REPARSE_POINT_CHANGE  (0x00100000)
#define USN_REASON_STREAM_CHANGE         (0x00200000)
#define USN_REASON_TRANSACTED_CHANGE     (0x00400000)
#define USN_REASON_CLOSE                 (0x80000000)

//
//  Structure for FSCTL_QUERY_USN_JOUNAL
//

typedef struct {

    DWORDLONG UsnJournalID;
    USN FirstUsn;
    USN NextUsn;
    USN LowestValidUsn;
    USN MaxUsn;
    DWORDLONG MaximumSize;
    DWORDLONG AllocationDelta;

} USN_JOURNAL_DATA, *PUSN_JOURNAL_DATA;

//
//  Structure for FSCTL_DELETE_USN_JOURNAL
//

typedef struct {

    DWORDLONG UsnJournalID;
    DWORD DeleteFlags;

} DELETE_USN_JOURNAL_DATA, *PDELETE_USN_JOURNAL_DATA;

#define USN_DELETE_FLAG_DELETE              (0x00000001)
#define USN_DELETE_FLAG_NOTIFY              (0x00000002)

#define USN_DELETE_VALID_FLAGS              (0x00000003)

//
//  Structure for FSCTL_MARK_HANDLE
//

typedef struct {

    DWORD UsnSourceInfo;
    HANDLE VolumeHandle;
    DWORD HandleInfo;

} MARK_HANDLE_INFO, *PMARK_HANDLE_INFO;

#if defined(_WIN64)
//
//  32/64 Bit thunking support structure
//

typedef struct {

    DWORD UsnSourceInfo;
    UINT32 VolumeHandle;
    DWORD HandleInfo;

} MARK_HANDLE_INFO32, *PMARK_HANDLE_INFO32;
#endif

//
//  Flags for the additional source information above.
//
//      USN_SOURCE_DATA_MANAGEMENT - Service is not modifying the external view
//          of any part of the file.  Typical case is HSM moving data to
//          and from external storage.
//
//      USN_SOURCE_AUXILIARY_DATA - Service is not modifying the external view
//          of the file with regard to the application that created this file.
//          Can be used to add private data streams to a file.
//
//      USN_SOURCE_REPLICATION_MANAGEMENT - Service is modifying a file to match
//          the contents of the same file which exists in another member of the
//          replica set.
//

#define USN_SOURCE_DATA_MANAGEMENT          (0x00000001)
#define USN_SOURCE_AUXILIARY_DATA           (0x00000002)
#define USN_SOURCE_REPLICATION_MANAGEMENT   (0x00000004)

//
//  Flags for the HandleInfo field above
//
//  MARK_HANDLE_PROTECT_CLUSTERS - disallow any defragmenting (FSCTL_MOVE_FILE) until the
//      the handle is closed
//
//  MARK_HANDLE_TXF_SYSTEM_LOG - indicates that this stream is being used as the Txf
//      log for an RM on the volume.  Must be called in the kernel using
//      IRP_MN_KERNEL_CALL.
//
//  MARK_HANDLE_NOT_TXF_SYSTEM_LOG - indicates that this user is no longer using this
//      object as a log file.
//

#define MARK_HANDLE_PROTECT_CLUSTERS        (0x00000001)
#define MARK_HANDLE_TXF_SYSTEM_LOG          (0x00000004)
#define MARK_HANDLE_NOT_TXF_SYSTEM_LOG      (0x00000008)

#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0601)

#define MARK_HANDLE_REALTIME                (0x00000020)
#define MARK_HANDLE_NOT_REALTIME            (0x00000040)

#define NO_8DOT3_NAME_PRESENT               (0x00000001)
#define REMOVED_8DOT3_NAME                  (0x00000002)

#define PERSISTENT_VOLUME_STATE_SHORT_NAME_CREATION_DISABLED        (0x00000001)

#endif /* _WIN32_WINNT >= 0x0601 */


#if (_WIN32_WINNT >= 0x0500)
//
// Structure for FSCTL_SECURITY_ID_CHECK
//

typedef struct {

    ACCESS_MASK DesiredAccess;
    DWORD SecurityIds[1];

} BULK_SECURITY_TEST_DATA, *PBULK_SECURITY_TEST_DATA;
#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0500)
//
//  Output flags for the FSCTL_IS_VOLUME_DIRTY
//

#define VOLUME_IS_DIRTY                  (0x00000001)
#define VOLUME_UPGRADE_SCHEDULED         (0x00000002)
#define VOLUME_SESSION_OPEN              (0x00000004)
#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0500)
//
// Structures for FSCTL_FILE_PREFETCH
//

typedef struct _FILE_PREFETCH {
    DWORD Type;
    DWORD Count;
    DWORDLONG Prefetch[1];
} FILE_PREFETCH, *PFILE_PREFETCH;

typedef struct _FILE_PREFETCH_EX {
    DWORD Type;
    DWORD Count;
    PVOID Context;
    DWORDLONG Prefetch[1];
} FILE_PREFETCH_EX, *PFILE_PREFETCH_EX;

#define FILE_PREFETCH_TYPE_FOR_CREATE       0x1
#define FILE_PREFETCH_TYPE_FOR_DIRENUM      0x2
#define FILE_PREFETCH_TYPE_FOR_CREATE_EX    0x3
#define FILE_PREFETCH_TYPE_FOR_DIRENUM_EX   0x4

#define FILE_PREFETCH_TYPE_MAX              0x4

#endif /* _WIN32_WINNT >= 0x0500 */

//
// Structures for FSCTL_FILESYSTEM_GET_STATISTICS
//
// Filesystem performance counters
//

typedef struct _FILESYSTEM_STATISTICS {

    WORD   FileSystemType;
    WORD   Version;                     // currently version 1

    DWORD SizeOfCompleteStructure;      // must by a mutiple of 64 bytes

    DWORD UserFileReads;
    DWORD UserFileReadBytes;
    DWORD UserDiskReads;
    DWORD UserFileWrites;
    DWORD UserFileWriteBytes;
    DWORD UserDiskWrites;

    DWORD MetaDataReads;
    DWORD MetaDataReadBytes;
    DWORD MetaDataDiskReads;
    DWORD MetaDataWrites;
    DWORD MetaDataWriteBytes;
    DWORD MetaDataDiskWrites;

    //
    //  The file system's private structure is appended here.
    //

} FILESYSTEM_STATISTICS, *PFILESYSTEM_STATISTICS;

// values for FS_STATISTICS.FileSystemType

#define FILESYSTEM_STATISTICS_TYPE_NTFS     1
#define FILESYSTEM_STATISTICS_TYPE_FAT      2
#define FILESYSTEM_STATISTICS_TYPE_EXFAT    3

//
//  File System Specific Statistics Data
//

typedef struct _FAT_STATISTICS {
    DWORD CreateHits;
    DWORD SuccessfulCreates;
    DWORD FailedCreates;

    DWORD NonCachedReads;
    DWORD NonCachedReadBytes;
    DWORD NonCachedWrites;
    DWORD NonCachedWriteBytes;

    DWORD NonCachedDiskReads;
    DWORD NonCachedDiskWrites;
} FAT_STATISTICS, *PFAT_STATISTICS;

typedef struct _EXFAT_STATISTICS {
    DWORD CreateHits;
    DWORD SuccessfulCreates;
    DWORD FailedCreates;

    DWORD NonCachedReads;
    DWORD NonCachedReadBytes;
    DWORD NonCachedWrites;
    DWORD NonCachedWriteBytes;

    DWORD NonCachedDiskReads;
    DWORD NonCachedDiskWrites;
} EXFAT_STATISTICS, *PEXFAT_STATISTICS;

typedef struct _NTFS_STATISTICS {

    DWORD LogFileFullExceptions;
    DWORD OtherExceptions;

    //
    // Other meta data io's
    //

    DWORD MftReads;
    DWORD MftReadBytes;
    DWORD MftWrites;
    DWORD MftWriteBytes;
    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
        WORD   Flush;
    } MftWritesUserLevel;

    WORD   MftWritesFlushForLogFileFull;
    WORD   MftWritesLazyWriter;
    WORD   MftWritesUserRequest;

    DWORD Mft2Writes;
    DWORD Mft2WriteBytes;
    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
        WORD   Flush;
    } Mft2WritesUserLevel;

    WORD   Mft2WritesFlushForLogFileFull;
    WORD   Mft2WritesLazyWriter;
    WORD   Mft2WritesUserRequest;

    DWORD RootIndexReads;
    DWORD RootIndexReadBytes;
    DWORD RootIndexWrites;
    DWORD RootIndexWriteBytes;

    DWORD BitmapReads;
    DWORD BitmapReadBytes;
    DWORD BitmapWrites;
    DWORD BitmapWriteBytes;

    WORD   BitmapWritesFlushForLogFileFull;
    WORD   BitmapWritesLazyWriter;
    WORD   BitmapWritesUserRequest;

    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
    } BitmapWritesUserLevel;

    DWORD MftBitmapReads;
    DWORD MftBitmapReadBytes;
    DWORD MftBitmapWrites;
    DWORD MftBitmapWriteBytes;

    WORD   MftBitmapWritesFlushForLogFileFull;
    WORD   MftBitmapWritesLazyWriter;
    WORD   MftBitmapWritesUserRequest;

    struct {
        WORD   Write;
        WORD   Create;
        WORD   SetInfo;
        WORD   Flush;
    } MftBitmapWritesUserLevel;

    DWORD UserIndexReads;
    DWORD UserIndexReadBytes;
    DWORD UserIndexWrites;
    DWORD UserIndexWriteBytes;

    //
    // Additions for NT 5.0
    //

    DWORD LogFileReads;
    DWORD LogFileReadBytes;
    DWORD LogFileWrites;
    DWORD LogFileWriteBytes;

    struct {
        DWORD Calls;                // number of individual calls to allocate clusters
        DWORD Clusters;             // number of clusters allocated
        DWORD Hints;                // number of times a hint was specified

        DWORD RunsReturned;         // number of runs used to satisify all the requests

        DWORD HintsHonored;         // number of times the hint was useful
        DWORD HintsClusters;        // number of clusters allocated via the hint
        DWORD Cache;                // number of times the cache was useful other than the hint
        DWORD CacheClusters;        // number of clusters allocated via the cache other than the hint
        DWORD CacheMiss;            // number of times the cache wasn't useful
        DWORD CacheMissClusters;    // number of clusters allocated without the cache
    } Allocate;

} NTFS_STATISTICS, *PNTFS_STATISTICS;

#if (_WIN32_WINNT >= 0x0500)
//
// Structure for FSCTL_SET_OBJECT_ID, FSCTL_GET_OBJECT_ID, and FSCTL_CREATE_OR_GET_OBJECT_ID
//

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning(disable:4201)       // unnamed struct

typedef struct _FILE_OBJECTID_BUFFER {

    //
    //  This is the portion of the object id that is indexed.
    //

    BYTE  ObjectId[16];

    //
    //  This portion of the object id is not indexed, it's just
    //  some metadata for the user's benefit.
    //

    union {
        struct {
            BYTE  BirthVolumeId[16];
            BYTE  BirthObjectId[16];
            BYTE  DomainId[16];
        } DUMMYSTRUCTNAME;
        BYTE  ExtendedInfo[48];
    } DUMMYUNIONNAME;

} FILE_OBJECTID_BUFFER, *PFILE_OBJECTID_BUFFER;

#if _MSC_VER >= 1200
#pragma warning(pop)
#else
#pragma warning( default : 4201 ) /* nonstandard extension used : nameless struct/union */
#endif

#endif /* _WIN32_WINNT >= 0x0500 */


#if (_WIN32_WINNT >= 0x0500)
//
// Structure for FSCTL_SET_SPARSE
//

typedef struct _FILE_SET_SPARSE_BUFFER {
    BOOLEAN SetSparse;
} FILE_SET_SPARSE_BUFFER, *PFILE_SET_SPARSE_BUFFER;


#endif /* _WIN32_WINNT >= 0x0500 */


#if (_WIN32_WINNT >= 0x0500)
//
// Structure for FSCTL_SET_ZERO_DATA
//

typedef struct _FILE_ZERO_DATA_INFORMATION {

    LARGE_INTEGER FileOffset;
    LARGE_INTEGER BeyondFinalZero;

} FILE_ZERO_DATA_INFORMATION, *PFILE_ZERO_DATA_INFORMATION;
#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0500)
//
// Structure for FSCTL_QUERY_ALLOCATED_RANGES
//

//
// Querying the allocated ranges requires an output buffer to store the
// allocated ranges and an input buffer to specify the range to query.
// The input buffer contains a single entry, the output buffer is an
// array of the following structure.
//

typedef struct _FILE_ALLOCATED_RANGE_BUFFER {

    LARGE_INTEGER FileOffset;
    LARGE_INTEGER Length;

} FILE_ALLOCATED_RANGE_BUFFER, *PFILE_ALLOCATED_RANGE_BUFFER;
#endif /* _WIN32_WINNT >= 0x0500 */


#if (_WIN32_WINNT >= 0x0500)
//
// Structures for FSCTL_SET_ENCRYPTION, FSCTL_WRITE_RAW_ENCRYPTED, and FSCTL_READ_RAW_ENCRYPTED
//

//
//  The input buffer to set encryption indicates whether we are to encrypt/decrypt a file
//  or an individual stream.
//

typedef struct _ENCRYPTION_BUFFER {

    DWORD EncryptionOperation;
    BYTE  Private[1];

} ENCRYPTION_BUFFER, *PENCRYPTION_BUFFER;

#define FILE_SET_ENCRYPTION         0x00000001
#define FILE_CLEAR_ENCRYPTION       0x00000002
#define STREAM_SET_ENCRYPTION       0x00000003
#define STREAM_CLEAR_ENCRYPTION     0x00000004

#define MAXIMUM_ENCRYPTION_VALUE    0x00000004

//
//  The optional output buffer to set encryption indicates that the last encrypted
//  stream in a file has been marked as decrypted.
//

typedef struct _DECRYPTION_STATUS_BUFFER {

    BOOLEAN NoEncryptedStreams;

} DECRYPTION_STATUS_BUFFER, *PDECRYPTION_STATUS_BUFFER;

#define ENCRYPTION_FORMAT_DEFAULT        (0x01)

#define COMPRESSION_FORMAT_SPARSE        (0x4000)

//
//  Request Encrypted Data structure.  This is used to indicate
//  the range of the file to read.  It also describes the
//  output buffer used to return the data.
//

typedef struct _REQUEST_RAW_ENCRYPTED_DATA {

    //
    //  Requested file offset and requested length to read.
    //  The fsctl will round the starting offset down
    //  to a file system boundary.  It will also
    //  round the length up to a file system boundary.
    //

    LONGLONG FileOffset;
    DWORD Length;

} REQUEST_RAW_ENCRYPTED_DATA, *PREQUEST_RAW_ENCRYPTED_DATA;

//
//  Encrypted Data Information structure.  This structure
//  is used to return raw encrypted data from a file in
//  order to perform off-line recovery.  The data will be
//  encrypted or encrypted and compressed.  The off-line
//  service will need to use the encryption and compression
//  format information to recover the file data.  In the
//  event that the data is both encrypted and compressed then
//  the decryption must occur before decompression.  All
//  the data units below must be encrypted and compressed
//  with the same format.
//
//  The data will be returned in units.  The data unit size
//  will be fixed per request.  If the data is compressed
//  then the data unit size will be the compression unit size.
//
//  This structure is at the beginning of the buffer used to
//  return the encrypted data.  The actual raw bytes from
//  the file will follow this buffer.  The offset of the
//  raw bytes from the beginning of this structure is
//  specified in the REQUEST_RAW_ENCRYPTED_DATA structure
//  described above.
//

typedef struct _ENCRYPTED_DATA_INFO {

    //
    //  This is the file offset for the first entry in the
    //  data block array.  The file system will round
    //  the requested start offset down to a boundary
    //  that is consistent with the format of the file.
    //

    DWORDLONG StartingFileOffset;

    //
    //  Data offset in output buffer.  The output buffer
    //  begins with an ENCRYPTED_DATA_INFO structure.
    //  The file system will then store the raw bytes from
    //  disk beginning at the following offset within the
    //  output buffer.
    //

    DWORD OutputBufferOffset;

    //
    //  The number of bytes being returned that are within
    //  the size of the file.  If this value is less than
    //  (NumberOfDataBlocks << DataUnitShift), it means the
    //  end of the file occurs within this transfer.  Any
    //  data beyond file size is invalid and was never
    //  passed to the encryption driver.
    //

    DWORD BytesWithinFileSize;

    //
    //  The number of bytes being returned that are below
    //  valid data length.  If this value is less than
    //  (NumberOfDataBlocks << DataUnitShift), it means the
    //  end of the valid data occurs within this transfer.
    //  After decrypting the data from this transfer, any
    //  byte(s) beyond valid data length must be zeroed.
    //

    DWORD BytesWithinValidDataLength;

    //
    //  Code for the compression format as defined in
    //  ntrtl.h.  Note that COMPRESSION_FORMAT_NONE
    //  and COMPRESSION_FORMAT_DEFAULT are invalid if
    //  any of the described chunks are compressed.
    //

    WORD   CompressionFormat;

    //
    //  The DataUnit is the granularity used to access the
    //  disk.  It will be the same as the compression unit
    //  size for a compressed file.  For an uncompressed
    //  file, it will be some cluster-aligned power of 2 that
    //  the file system deems convenient.  A caller should
    //  not expect that successive calls will have the
    //  same data unit shift value as the previous call.
    //
    //  Since chunks and compression units are expected to be
    //  powers of 2 in size, we express them log2.  So, for
    //  example (1 << ChunkShift) == ChunkSizeInBytes.  The
    //  ClusterShift indicates how much space must be saved
    //  to successfully compress a compression unit - each
    //  successfully compressed data unit must occupy
    //  at least one cluster less in bytes than an uncompressed
    //  data block unit.
    //

    BYTE  DataUnitShift;
    BYTE  ChunkShift;
    BYTE  ClusterShift;

    //
    //  The format for the encryption.
    //

    BYTE  EncryptionFormat;

    //
    //  This is the number of entries in the data block size
    //  array.
    //

    WORD   NumberOfDataBlocks;

    //
    //  This is an array of sizes in the data block array.  There
    //  must be one entry in this array for each data block
    //  read from disk.  The size has a different meaning
    //  depending on whether the file is compressed.
    //
    //  A size of zero always indicates that the final data consists entirely
    //  of zeroes.  There is no decryption or decompression to
    //  perform.
    //
    //  If the file is compressed then the data block size indicates
    //  whether this block is compressed.  A size equal to
    //  the block size indicates that the corresponding block did
    //  not compress.  Any other non-zero size indicates the
    //  size of the compressed data which needs to be
    //  decrypted/decompressed.
    //
    //  If the file is not compressed then the data block size
    //  indicates the amount of data within the block that
    //  needs to be decrypted.  Any other non-zero size indicates
    //  that the remaining bytes in the data unit within the file
    //  consists of zeros.  An example of this is when the
    //  the read spans the valid data length of the file.  There
    //  is no data to decrypt past the valid data length.
    //

    DWORD DataBlockSize[ANYSIZE_ARRAY];

} ENCRYPTED_DATA_INFO;
typedef ENCRYPTED_DATA_INFO *PENCRYPTED_DATA_INFO;
#endif /* _WIN32_WINNT >= 0x0500 */


#if (_WIN32_WINNT >= 0x0500)
//
//  FSCTL_READ_FROM_PLEX support
//  Request Plex Read Data structure.  This is used to indicate
//  the range of the file to read.  It also describes
//  which plex to perform the read from.
//

typedef struct _PLEX_READ_DATA_REQUEST {

    //
    //  Requested offset and length to read.
    //  The offset can be the virtual offset (vbo) in to a file,
    //  or a volume. In the case of a file offset,
    //  the fsd will round the starting offset down
    //  to a file system boundary.  It will also
    //  round the length up to a file system boundary and
    //  enforce any other applicable limits.
    //

    LARGE_INTEGER ByteOffset;
    DWORD ByteLength;
    DWORD PlexNumber;

} PLEX_READ_DATA_REQUEST, *PPLEX_READ_DATA_REQUEST;
#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0500)
//
// FSCTL_SIS_COPYFILE support
// Source and destination file names are passed in the FileNameBuffer.
// Both strings are null terminated, with the source name starting at
// the beginning of FileNameBuffer, and the destination name immediately
// following.  Length fields include terminating nulls.
//

typedef struct _SI_COPYFILE {
    DWORD SourceFileNameLength;
    DWORD DestinationFileNameLength;
    DWORD Flags;
    WCHAR FileNameBuffer[1];
} SI_COPYFILE, *PSI_COPYFILE;

#define COPYFILE_SIS_LINK       0x0001              // Copy only if source is SIS
#define COPYFILE_SIS_REPLACE    0x0002              // Replace destination if it exists, otherwise don't.
#define COPYFILE_SIS_FLAGS      0x0003
#endif /* _WIN32_WINNT >= 0x0500 */

#if (_WIN32_WINNT >= 0x0600)
//
//  Input parameter structure for FSCTL_MAKE_COMPATIBLE
//

typedef struct _FILE_MAKE_COMPATIBLE_BUFFER {
    BOOLEAN CloseDisc;
} FILE_MAKE_COMPATIBLE_BUFFER, *PFILE_MAKE_COMPATIBLE_BUFFER;

//
//  Input parameter structure for FSCTL_SET_DEFECT_MANAGEMENT
//

typedef struct _FILE_SET_DEFECT_MGMT_BUFFER {
    BOOLEAN Disable;
} FILE_SET_DEFECT_MGMT_BUFFER, *PFILE_SET_DEFECT_MGMT_BUFFER;

//
//  Output structure for FSCTL_QUERY_SPARING_INFO
//

typedef struct _FILE_QUERY_SPARING_BUFFER {
    DWORD SparingUnitBytes;
    BOOLEAN SoftwareSparing;
    DWORD TotalSpareBlocks;
    DWORD FreeSpareBlocks;
} FILE_QUERY_SPARING_BUFFER, *PFILE_QUERY_SPARING_BUFFER;

//
//  Output structure for FSCTL_QUERY_ON_DISK_VOLUME_INFO
//

typedef struct _FILE_QUERY_ON_DISK_VOL_INFO_BUFFER {
    LARGE_INTEGER DirectoryCount;       // -1 = unknown
    LARGE_INTEGER FileCount;            // -1 = unknown
    WORD   FsFormatMajVersion;          // -1 = unknown or n/a
    WORD   FsFormatMinVersion;          // -1 = unknown or n/a
    WCHAR FsFormatName[ 12];
    LARGE_INTEGER FormatTime;
    LARGE_INTEGER LastUpdateTime;
    WCHAR CopyrightInfo[ 34];
    WCHAR AbstractInfo[ 34];
    WCHAR FormattingImplementationInfo[ 34];
    WCHAR LastModifyingImplementationInfo[ 34];
} FILE_QUERY_ON_DISK_VOL_INFO_BUFFER, *PFILE_QUERY_ON_DISK_VOL_INFO_BUFFER;

//
//  Input flags for FSCTL_SET_REPAIR
//

#define SET_REPAIR_ENABLED                                      (0x00000001)
#define SET_REPAIR_VOLUME_BITMAP_SCAN                           (0x00000002)
#define SET_REPAIR_DELETE_CROSSLINK                             (0x00000004)
#define SET_REPAIR_WARN_ABOUT_DATA_LOSS                         (0x00000008)
#define SET_REPAIR_DISABLED_AND_BUGCHECK_ON_CORRUPT             (0x00000010)
#define SET_REPAIR_VALID_MASK                                   (0x0000001F)

//
//  Input structures for FSCTL_SHRINK_VOLUME.
//

typedef enum _SHRINK_VOLUME_REQUEST_TYPES
{
    ShrinkPrepare = 1,
    ShrinkCommit,
    ShrinkAbort

} SHRINK_VOLUME_REQUEST_TYPES, *PSHRINK_VOLUME_REQUEST_TYPES;

typedef struct _SHRINK_VOLUME_INFORMATION
{
    SHRINK_VOLUME_REQUEST_TYPES ShrinkRequestType;
    DWORDLONG Flags;
    LONGLONG NewNumberOfSectors;

} SHRINK_VOLUME_INFORMATION, *PSHRINK_VOLUME_INFORMATION;

//
//  Structures for FSCTL_TXFS_MODIFY_RM and FSCTL_TXFS_QUERY_RM_INFORMATION
//
//  For ModifyRM, TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS and
//  TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT are mutually exclusive.
//  You can specify the log growth amount in number of containers or as a percentage.
//
//  For ModifyRM, TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MAX and
//  TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX are mutually exclusive.
//
//  For ModifyRM, TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MIN and
//  TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN are mutually exclusive.
//
//  For ModifyRM, TXFS_RM_FLAG_RESET_RM_AT_NEXT_START and
//  TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START are mutually exclusive and only
//  apply to default RMs.
//
//  For ModifyRM, TXFS_RM_FLAG_PREFER_CONSISTENCY and
//  TXFS_RM_FLAG_PREFER_AVAILABILITY are mutually exclusive.  After calling ModifyRM
//  with one of these flags set the RM must be restarted for the change to take effect.
//

#define TXFS_RM_FLAG_LOGGING_MODE                           0x00000001
#define TXFS_RM_FLAG_RENAME_RM                              0x00000002
#define TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MAX                0x00000004
#define TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MIN                0x00000008
#define TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS    0x00000010
#define TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT           0x00000020
#define TXFS_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE             0x00000040
#define TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX             0x00000080
#define TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN             0x00000100
#define TXFS_RM_FLAG_GROW_LOG                               0x00000400
#define TXFS_RM_FLAG_SHRINK_LOG                             0x00000800
#define TXFS_RM_FLAG_ENFORCE_MINIMUM_SIZE                   0x00001000
#define TXFS_RM_FLAG_PRESERVE_CHANGES                       0x00002000
#define TXFS_RM_FLAG_RESET_RM_AT_NEXT_START                 0x00004000
#define TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START          0x00008000
#define TXFS_RM_FLAG_PREFER_CONSISTENCY                     0x00010000
#define TXFS_RM_FLAG_PREFER_AVAILABILITY                    0x00020000

#define TXFS_LOGGING_MODE_SIMPLE        (0x0001)
#define TXFS_LOGGING_MODE_FULL          (0x0002)

#define TXFS_TRANSACTION_STATE_NONE         0x00
#define TXFS_TRANSACTION_STATE_ACTIVE       0x01
#define TXFS_TRANSACTION_STATE_PREPARED     0x02
#define TXFS_TRANSACTION_STATE_NOTACTIVE    0x03

#define TXFS_MODIFY_RM_VALID_FLAGS                                      \
                (TXFS_RM_FLAG_LOGGING_MODE                          |   \
                 TXFS_RM_FLAG_RENAME_RM                             |   \
                 TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MAX               |   \
                 TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MIN               |   \
                 TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS   |   \
                 TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT          |   \
                 TXFS_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE            |   \
                 TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX            |   \
                 TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN            |   \
                 TXFS_RM_FLAG_SHRINK_LOG                            |   \
                 TXFS_RM_FLAG_GROW_LOG                              |   \
                 TXFS_RM_FLAG_ENFORCE_MINIMUM_SIZE                  |   \
                 TXFS_RM_FLAG_PRESERVE_CHANGES                      |   \
                 TXFS_RM_FLAG_RESET_RM_AT_NEXT_START                |   \
                 TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START         |   \
                 TXFS_RM_FLAG_PREFER_CONSISTENCY                    |   \
                 TXFS_RM_FLAG_PREFER_AVAILABILITY)

typedef struct _TXFS_MODIFY_RM {

    //
    //  TXFS_RM_FLAG_* flags
    //

    DWORD Flags;

    //
    //  Maximum log container count if TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MAX is set.
    //

    DWORD LogContainerCountMax;

    //
    //  Minimum log container count if TXFS_RM_FLAG_LOG_CONTAINER_COUNT_MIN is set.
    //

    DWORD LogContainerCountMin;

    //
    //  Target log container count for TXFS_RM_FLAG_SHRINK_LOG or _GROW_LOG.
    //

    DWORD LogContainerCount;

    //
    //  When the log is full, increase its size by this much.  Indicated as either a percent of
    //  the log size or absolute container count, depending on which of the TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_*
    //  flags is set.
    //

    DWORD LogGrowthIncrement;

    //
    //  Sets autoshrink policy if TXFS_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE is set.  Autoshrink
    //  makes the log shrink so that no more than this percentage of the log is free at any time.
    //

    DWORD LogAutoShrinkPercentage;

    //
    //  Reserved.
    //

    DWORDLONG Reserved;

    //
    //  If TXFS_RM_FLAG_LOGGING_MODE is set, this must contain one of TXFS_LOGGING_MODE_SIMPLE
    //  or TXFS_LOGGING_MODE_FULL.
    //

    WORD   LoggingMode;

} TXFS_MODIFY_RM,
 *PTXFS_MODIFY_RM;

#define TXFS_RM_STATE_NOT_STARTED       0
#define TXFS_RM_STATE_STARTING          1
#define TXFS_RM_STATE_ACTIVE            2
#define TXFS_RM_STATE_SHUTTING_DOWN     3

//
//  The flags field for query RM information is used for the following information:
//
//  1)  To indicate whether the LogGrowthIncrement field is reported as a percent
//      or as a number of containers.  Possible flag values for this are:
//
//      TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS xor TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT
//
//  2)  To indicate that there is no set maximum or minimum container count.  Possible
//      flag values for this are:
//
//      TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX
//      TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN
//
//      Note that these flags are not mutually exclusive.
//
//  2)  To report whether the RM will be reset the next time it is started.  Note that
//      only the default RM will report a meaningful value (secondary RMs will always
//      report DO_NOT_RESET) Possible flag values for this are:
//
//      TXFS_RM_FLAG_RESET_RM_AT_NEXT_START xor TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START
//
//  3)  To report whether the RM is in consistency mode or availability mode.  Possible
//      flag values for this are:
//
//      TXFS_RM_FLAG_PREFER_CONSISTENCY xor TXFS_RM_FLAG_PREFER_AVAILABILITY
//
//  The RmState field can have exactly one of the above-defined TXF_RM_STATE_ values.
//

#define TXFS_QUERY_RM_INFORMATION_VALID_FLAGS                           \
                (TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS   |   \
                 TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT          |   \
                 TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX            |   \
                 TXFS_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN            |   \
                 TXFS_RM_FLAG_RESET_RM_AT_NEXT_START                |   \
                 TXFS_RM_FLAG_DO_NOT_RESET_RM_AT_NEXT_START         |   \
                 TXFS_RM_FLAG_PREFER_CONSISTENCY                    |   \
                 TXFS_RM_FLAG_PREFER_AVAILABILITY)

typedef struct _TXFS_QUERY_RM_INFORMATION {

    //
    //  If the return value is STATUS_BUFFER_OVERFLOW (ERROR_MORE_DATA), this
    //  will indicate how much space is required to hold everything.
    //

    DWORD BytesRequired;

    //
    //  LSN of earliest available record in the RM's log.
    //

    DWORDLONG TailLsn;

    //
    //  LSN of most recently-written record in the RM's log.
    //

    DWORDLONG CurrentLsn;

    //
    //  LSN of the log's archive tail.
    //

    DWORDLONG ArchiveTailLsn;

    //
    //  Size of a log container in bytes.
    //

    DWORDLONG LogContainerSize;

    //
    //  Highest virtual clock value recorded in this RM's log.
    //

    LARGE_INTEGER HighestVirtualClock;

    //
    //  Number of containers in this RM's log.
    //

    DWORD LogContainerCount;

    //
    //  Maximum-allowed log container count.
    //

    DWORD LogContainerCountMax;

    //
    //  Minimum-allowed log container count.
    //

    DWORD LogContainerCountMin;

    //
    //  Amount by which log will grow when it gets full.  Indicated as either a percent of
    //  the log size or absolute container count, depending on which of the TXFS_RM_FLAG_LOG_GROWTH_INCREMENT_*
    //  flags is set.
    //

    DWORD LogGrowthIncrement;

    //
    //  Reports on the autoshrink policy if.  Autoshrink makes the log shrink so that no more than this
    //  percentage of the log is free at any time.  A value of 0 indicates that autoshrink is off (i.e.
    //  the log will not automatically shrink).
    //

    DWORD LogAutoShrinkPercentage;

    //
    //  TXFS_RM_FLAG_* flags.  See the comment above at TXFS_QUERY_RM_INFORMATION_VALID_FLAGS to see
    //  what the flags here mean.
    //

    DWORD Flags;

    //
    //  Exactly one of TXFS_LOGGING_MODE_SIMPLE or TXFS_LOGGING_MODE_FULL.
    //

    WORD   LoggingMode;

    //
    //  Reserved.
    //

    WORD   Reserved;

    //
    //  Activity state of the RM.  May be exactly one of the above-defined TXF_RM_STATE_ values.
    //

    DWORD RmState;

    //
    //  Total capacity of the log in bytes.
    //

    DWORDLONG LogCapacity;

    //
    //  Amount of free space in the log in bytes.
    //

    DWORDLONG LogFree;

    //
    //  Size of $Tops in bytes.
    //

    DWORDLONG TopsSize;

    //
    //  Amount of space in $Tops in use.
    //

    DWORDLONG TopsUsed;

    //
    //  Number of transactions active in the RM at the time of the call.
    //

    DWORDLONG TransactionCount;

    //
    //  Total number of single-phase commits that have happened the RM.
    //

    DWORDLONG OnePCCount;

    //
    //  Total number of two-phase commits that have happened the RM.
    //

    DWORDLONG TwoPCCount;

    //
    //  Number of times the log has filled up.
    //

    DWORDLONG NumberLogFileFull;

    //
    //  Age of oldest active transaction in the RM, in milliseconds.
    //

    DWORDLONG OldestTransactionAge;

    //
    //  Name of the RM.
    //

    GUID RMName;

    //
    //  Offset in bytes from the beginning of this structure to a NULL-terminated Unicode
    //  string indicating the path to the RM's transaction manager's log.
    //

    DWORD TmLogPathOffset;

} TXFS_QUERY_RM_INFORMATION,
 *PTXFS_QUERY_RM_INFORMATION;

//
// Structures for FSCTL_TXFS_ROLLFORWARD_REDO
//

#define TXFS_ROLLFORWARD_REDO_FLAG_USE_LAST_REDO_LSN        0x01
#define TXFS_ROLLFORWARD_REDO_FLAG_USE_LAST_VIRTUAL_CLOCK   0x02

#define TXFS_ROLLFORWARD_REDO_VALID_FLAGS                               \
                (TXFS_ROLLFORWARD_REDO_FLAG_USE_LAST_REDO_LSN |         \
                 TXFS_ROLLFORWARD_REDO_FLAG_USE_LAST_VIRTUAL_CLOCK)

typedef struct _TXFS_ROLLFORWARD_REDO_INFORMATION {
    LARGE_INTEGER  LastVirtualClock;
    DWORDLONG LastRedoLsn;
    DWORDLONG HighestRecoveryLsn;
    DWORD Flags;
} TXFS_ROLLFORWARD_REDO_INFORMATION,
 *PTXFS_ROLLFORWARD_REDO_INFORMATION;

//
//  Structures for FSCTL_TXFS_START_RM
//
//  Note that TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS and
//  TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT are mutually exclusive.
//  You can specify the log growth amount in number of containers or as a percentage.
//
//  TXFS_START_RM_FLAG_CONTAINER_COUNT_MAX and TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX
//  are mutually exclusive.
//
//  TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MIN and TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN
//  are mutually exclusive.
//
//  TXFS_START_RM_FLAG_PREFER_CONSISTENCY and TXFS_START_RM_FLAG_PREFER_AVAILABILITY
//  are mutually exclusive.
//
//  Optional parameters will have system-supplied defaults applied if omitted.
//

#define TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MAX              0x00000001
#define TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MIN              0x00000002
#define TXFS_START_RM_FLAG_LOG_CONTAINER_SIZE                   0x00000004
#define TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS  0x00000008
#define TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT         0x00000010
#define TXFS_START_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE           0x00000020
#define TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX           0x00000040
#define TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MIN           0x00000080

#define TXFS_START_RM_FLAG_RECOVER_BEST_EFFORT                  0x00000200
#define TXFS_START_RM_FLAG_LOGGING_MODE                         0x00000400
#define TXFS_START_RM_FLAG_PRESERVE_CHANGES                     0x00000800

#define TXFS_START_RM_FLAG_PREFER_CONSISTENCY                   0x00001000
#define TXFS_START_RM_FLAG_PREFER_AVAILABILITY                  0x00002000

#define TXFS_START_RM_VALID_FLAGS                                           \
                (TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MAX             |   \
                 TXFS_START_RM_FLAG_LOG_CONTAINER_COUNT_MIN             |   \
                 TXFS_START_RM_FLAG_LOG_CONTAINER_SIZE                  |   \
                 TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_NUM_CONTAINERS |   \
                 TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_PERCENT        |   \
                 TXFS_START_RM_FLAG_LOG_AUTO_SHRINK_PERCENTAGE          |   \
                 TXFS_START_RM_FLAG_RECOVER_BEST_EFFORT                 |   \
                 TXFS_START_RM_FLAG_LOG_NO_CONTAINER_COUNT_MAX          |   \
                 TXFS_START_RM_FLAG_LOGGING_MODE                        |   \
                 TXFS_START_RM_FLAG_PRESERVE_CHANGES                    |   \
                 TXFS_START_RM_FLAG_PREFER_CONSISTENCY                  |   \
                 TXFS_START_RM_FLAG_PREFER_AVAILABILITY)

typedef struct _TXFS_START_RM_INFORMATION {

    //
    //  TXFS_START_RM_FLAG_* flags.
    //

    DWORD Flags;

    //
    //  RM log container size, in bytes.  This parameter is optional.
    //

    DWORDLONG LogContainerSize;

    //
    //  RM minimum log container count.  This parameter is optional.
    //

    DWORD LogContainerCountMin;

    //
    //  RM maximum log container count.  This parameter is optional.
    //

    DWORD LogContainerCountMax;

    //
    //  RM log growth increment in number of containers or percent, as indicated
    //  by TXFS_START_RM_FLAG_LOG_GROWTH_INCREMENT_* flag.  This parameter is
    //  optional.
    //

    DWORD LogGrowthIncrement;

    //
    //  RM log auto shrink percentage.  This parameter is optional.
    //

    DWORD LogAutoShrinkPercentage;

    //
    //  Offset from the beginning of this structure to the log path for the KTM
    //  instance to be used by this RM.  This must be a two-byte (WCHAR) aligned
    //  value.  This parameter is required.
    //

    DWORD TmLogPathOffset;

    //
    //  Length in bytes of log path for the KTM instance to be used by this RM.
    //  This parameter is required.
    //

    WORD   TmLogPathLength;

    //
    //  Logging mode for this RM.  One of TXFS_LOGGING_MODE_SIMPLE or
    //  TXFS_LOGGING_MODE_FULL (mutually exclusive).  This parameter is optional,
    //  and will default to TXFS_LOGGING_MODE_SIMPLE.
    //

    WORD   LoggingMode;

    //
    //  Length in bytes of the path to the log to be used by the RM.  This parameter
    //  is required.
    //

    WORD   LogPathLength;

    //
    //  Reserved.
    //

    WORD   Reserved;

    //
    //  The path to the log (in Unicode characters) to be used by the RM goes here.
    //  This parameter is required.
    //

    WCHAR LogPath[1];

} TXFS_START_RM_INFORMATION,
 *PTXFS_START_RM_INFORMATION;

//
//  Structures for FSCTL_TXFS_GET_METADATA_INFO
//

typedef struct _TXFS_GET_METADATA_INFO_OUT {

    //
    //  Returns the TxfId of the file referenced by the handle used to call this routine.
    //

    struct {
        LONGLONG LowPart;
        LONGLONG HighPart;
    } TxfFileId;

    //
    //  The GUID of the transaction that has the file locked, if applicable.
    //

    GUID LockingTransaction;

    //
    //  Returns the LSN for the most recent log record we've written for the file.
    //

    DWORDLONG LastLsn;

    //
    //  Transaction state, a TXFS_TRANSACTION_STATE_* value.
    //

    DWORD TransactionState;

} TXFS_GET_METADATA_INFO_OUT, *PTXFS_GET_METADATA_INFO_OUT;

//
//  Structures for FSCTL_TXFS_LIST_TRANSACTION_LOCKED_FILES
//
//  TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_CREATED means the reported name was created
//  in the locking transaction.
//
//  TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_DELETED means the reported name was deleted
//  in the locking transaction.
//
//  Note that both flags may appear if the name was both created and deleted in the same
//  transaction.  In that case the FileName[] member will contain only "\0", as there is
//  no meaningful name to report.
//

#define TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_CREATED   0x00000001
#define TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_DELETED   0x00000002

typedef struct _TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY {

    //
    //  Offset in bytes from the beginning of the TXFS_LIST_TRANSACTION_LOCKED_FILES
    //  structure to the next TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY.
    //

    DWORDLONG Offset;

    //
    //  TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY_FLAG_* flags to indicate whether the
    //  current name was deleted or created in the transaction.
    //

    DWORD NameFlags;

    //
    //  NTFS File ID of the file.
    //

    LONGLONG FileId;

    //
    //  Reserved.
    //

    DWORD Reserved1;
    DWORD Reserved2;
    LONGLONG Reserved3;

    //
    //  NULL-terminated Unicode path to this file, relative to RM root.
    //

    WCHAR FileName[1];
} TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY, *PTXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY;


typedef struct _TXFS_LIST_TRANSACTION_LOCKED_FILES {

    //
    //  GUID name of the KTM transaction that files should be enumerated from.
    //

    GUID KtmTransaction;

    //
    //  On output, the number of files involved in the transaction on this RM.
    //

    DWORDLONG NumberOfFiles;

    //
    //  The length of the buffer required to obtain the complete list of files.
    //  This value may change from call to call as the transaction locks more files.
    //

    DWORDLONG BufferSizeRequired;

    //
    //  Offset in bytes from the beginning of this structure to the first
    //  TXFS_LIST_TRANSACTION_LOCKED_FILES_ENTRY.
    //

    DWORDLONG Offset;
} TXFS_LIST_TRANSACTION_LOCKED_FILES, *PTXFS_LIST_TRANSACTION_LOCKED_FILES;

//
//  Structures for FSCTL_TXFS_LIST_TRANSACTIONS
//

typedef struct _TXFS_LIST_TRANSACTIONS_ENTRY {

    //
    //  Transaction GUID.
    //

    GUID TransactionId;

    //
    //  Transaction state, a TXFS_TRANSACTION_STATE_* value.
    //

    DWORD TransactionState;

    //
    //  Reserved fields
    //

    DWORD Reserved1;
    DWORD Reserved2;
    LONGLONG Reserved3;
} TXFS_LIST_TRANSACTIONS_ENTRY, *PTXFS_LIST_TRANSACTIONS_ENTRY;

typedef struct _TXFS_LIST_TRANSACTIONS {

    //
    //  On output, the number of transactions involved in this RM.
    //

    DWORDLONG NumberOfTransactions;

    //
    //  The length of the buffer required to obtain the complete list of
    //  transactions.  Note that this value may change from call to call
    //  as transactions enter and exit the system.
    //

    DWORDLONG BufferSizeRequired;
} TXFS_LIST_TRANSACTIONS, *PTXFS_LIST_TRANSACTIONS;


//
//  Structures for FSCTL_TXFS_READ_BACKUP_INFORMATION
//

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning(disable:4201)       // unnamed struct

typedef struct _TXFS_READ_BACKUP_INFORMATION_OUT {
    union {

        //
        //  Used to return the required buffer size if return code is STATUS_BUFFER_OVERFLOW
        //

        DWORD BufferLength;

        //
        //  On success the data is copied here.
        //

        BYTE  Buffer[1];
    } DUMMYUNIONNAME;
} TXFS_READ_BACKUP_INFORMATION_OUT, *PTXFS_READ_BACKUP_INFORMATION_OUT;

#if _MSC_VER >= 1200
#pragma warning(pop)
#else
#pragma warning( default : 4201 )
#endif

//
//  Structures for FSCTL_TXFS_WRITE_BACKUP_INFORMATION
//

typedef struct _TXFS_WRITE_BACKUP_INFORMATION {

    //
    //  The data returned in the Buffer member of a previous call to
    //  FSCTL_TXFS_READ_BACKUP_INFORMATION goes here.
    //

    BYTE  Buffer[1];
} TXFS_WRITE_BACKUP_INFORMATION, *PTXFS_WRITE_BACKUP_INFORMATION;

//
//  Output structure for FSCTL_TXFS_GET_TRANSACTED_VERSION
//

#define TXFS_TRANSACTED_VERSION_NONTRANSACTED   0xFFFFFFFE
#define TXFS_TRANSACTED_VERSION_UNCOMMITTED     0xFFFFFFFF

typedef struct _TXFS_GET_TRANSACTED_VERSION {

    //
    //  The version that this handle is opened to.  This will be
    //  TXFS_TRANSACTED_VERSION_UNCOMMITTED for nontransacted and
    //  transactional writer handles.
    //

    DWORD ThisBaseVersion;

    //
    //  The most recent committed version available.
    //

    DWORD LatestVersion;

    //
    //  If this is a handle to a miniversion, the ID of the miniversion.
    //  If it is not a handle to a minivers, this field will be 0.
    //

    WORD   ThisMiniVersion;

    //
    //  The first available miniversion.  Unless the miniversions are
    //  visible to the transaction bound to this handle, this field will be zero.
    //

    WORD   FirstMiniVersion;

    //
    //  The latest available miniversion.  Unless the miniversions are
    //  visible to the transaction bound to this handle, this field will be zero.
    //

    WORD   LatestMiniVersion;

} TXFS_GET_TRANSACTED_VERSION, *PTXFS_GET_TRANSACTED_VERSION;

//
//  Structures for FSCTL_TXFS_SAVEPOINT_INFORMATION
//
//  Note that the TXFS_SAVEPOINT_INFORMATION structure is both and in and out structure.
//  The KtmTransaction and ActionCode members are always in-parameters, and the SavepointId
//  member is either an in-parameter, an out-parameter, or not used (see its definition below).
//

//
//  Create a new savepoint.
//

#define TXFS_SAVEPOINT_SET                      0x00000001

//
//  Roll back to a specified savepoint.
//

#define TXFS_SAVEPOINT_ROLLBACK                 0x00000002

//
//  Clear (make unavailable for rollback) the most recently set savepoint
//  that has not yet been cleared.
//

#define TXFS_SAVEPOINT_CLEAR                    0x00000004

//
//  Clear all savepoints from the transaction.
//

#define TXFS_SAVEPOINT_CLEAR_ALL                0x00000010

typedef struct _TXFS_SAVEPOINT_INFORMATION {

    //
    //  Handle to the transaction on which to perform the savepoint operation.
    //

    HANDLE KtmTransaction;

    //
    //  Specifies the savepoint action to take.  A TXFS_SAVEPOINT_* value.
    //

    DWORD ActionCode;

    //
    //  In-parameter for TXFS_ROLLBACK_TO_SAVEPOINT - specifies the savepoint to which
    //  to roll back.
    //
    //  Out-parameter for TXFS_SET_SAVEPOINT - the newly-created savepoint ID will be
    //  returned here.
    //
    //  Not used for TXFS_CLEAR_SAVEPOINT or TXFS_CLEAR_ALL_SAVEPOINTS.
    //

    DWORD SavepointId;

} TXFS_SAVEPOINT_INFORMATION, *PTXFS_SAVEPOINT_INFORMATION;

//
//  Structures for FSCTL_TXFS_CREATE_MINIVERSION
//
//      Only an out parameter is necessary.  That returns the identifier of the new miniversion created.
//

typedef struct _TXFS_CREATE_MINIVERSION_INFO {

    WORD   StructureVersion;

    WORD   StructureLength;

    //
    //  The base version for the newly created miniversion.
    //

    DWORD BaseVersion;

    //
    //  The miniversion that was just created.
    //

    WORD   MiniVersion;

} TXFS_CREATE_MINIVERSION_INFO, *PTXFS_CREATE_MINIVERSION_INFO;

//
//  Structure for FSCTL_TXFS_TRANSACTION_ACTIVE
//

typedef struct _TXFS_TRANSACTION_ACTIVE_INFO {

    //
    //  Whether or not the volume had active transactions when this snapshot was taken.
    //

    BOOLEAN TransactionsActiveAtSnapshot;

} TXFS_TRANSACTION_ACTIVE_INFO, *PTXFS_TRANSACTION_ACTIVE_INFO;

#endif /* _WIN32_WINNT >= 0x0600 */

#if (_WIN32_WINNT >= 0x0601)
//
// Output structure for FSCTL_GET_BOOT_AREA_INFO
//

typedef struct _BOOT_AREA_INFO {

    DWORD               BootSectorCount;  // the count of boot sectors present on the file system
    struct {
        LARGE_INTEGER   Offset;
    } BootSectors[2];                     // variable number of boot sectors.

} BOOT_AREA_INFO, *PBOOT_AREA_INFO;

//
// Output structure for FSCTL_GET_RETRIEVAL_POINTER_BASE
//

typedef struct _RETRIEVAL_POINTER_BASE {

    LARGE_INTEGER       FileAreaOffset; // sector offset to the first allocatable unit on the filesystem
} RETRIEVAL_POINTER_BASE, *PRETRIEVAL_POINTER_BASE;

//
// Structure for FSCTL_SET_PERSISTENT_VOLUME_STATE and FSCTL_GET_PERSISTENT_VOLUME_STATE
// The initial version will be 1.0
//

typedef struct _FILE_FS_PERSISTENT_VOLUME_INFORMATION {

    DWORD VolumeFlags;
    DWORD FlagMask;
    DWORD Version;
    DWORD Reserved;

} FILE_FS_PERSISTENT_VOLUME_INFORMATION, *PFILE_FS_PERSISTENT_VOLUME_INFORMATION;

//
//  Structure for FSCTL_QUERY_FILE_SYSTEM_RECOGNITION
//

typedef struct _FILE_SYSTEM_RECOGNITION_INFORMATION {

    CHAR FileSystem[9];

} FILE_SYSTEM_RECOGNITION_INFORMATION, *PFILE_SYSTEM_RECOGNITION_INFORMATION;

//
//  Structures for FSCTL_REQUEST_OPLOCK
//

#define OPLOCK_LEVEL_CACHE_READ         (0x00000001)
#define OPLOCK_LEVEL_CACHE_HANDLE       (0x00000002)
#define OPLOCK_LEVEL_CACHE_WRITE        (0x00000004)

#define REQUEST_OPLOCK_INPUT_FLAG_REQUEST               (0x00000001)
#define REQUEST_OPLOCK_INPUT_FLAG_ACK                   (0x00000002)
#define REQUEST_OPLOCK_INPUT_FLAG_COMPLETE_ACK_ON_CLOSE (0x00000004)

#define REQUEST_OPLOCK_CURRENT_VERSION          1

typedef struct _REQUEST_OPLOCK_INPUT_BUFFER {

    //
    //  This should be set to REQUEST_OPLOCK_CURRENT_VERSION.
    //

    WORD   StructureVersion;

    WORD   StructureLength;

    //
    //  One or more OPLOCK_LEVEL_CACHE_* values to indicate the desired level of the oplock.
    //

    DWORD RequestedOplockLevel;

    //
    //  REQUEST_OPLOCK_INPUT_FLAG_* flags.
    //

    DWORD Flags;

} REQUEST_OPLOCK_INPUT_BUFFER, *PREQUEST_OPLOCK_INPUT_BUFFER;

#define REQUEST_OPLOCK_OUTPUT_FLAG_ACK_REQUIRED     (0x00000001)
#define REQUEST_OPLOCK_OUTPUT_FLAG_MODES_PROVIDED   (0x00000002)

typedef struct _REQUEST_OPLOCK_OUTPUT_BUFFER {

    //
    //  This should be set to REQUEST_OPLOCK_CURRENT_VERSION.
    //

    WORD   StructureVersion;

    WORD   StructureLength;

    //
    //  One or more OPLOCK_LEVEL_CACHE_* values indicating the level of the oplock that
    //  was just broken.
    //

    DWORD OriginalOplockLevel;

    //
    //  One or more OPLOCK_LEVEL_CACHE_* values indicating the level to which an oplock
    //  is being broken, or an oplock level that may be available for granting, depending
    //  on the operation returning this buffer.
    //

    DWORD NewOplockLevel;

    //
    //  REQUEST_OPLOCK_OUTPUT_FLAG_* flags.
    //

    DWORD Flags;

    //
    //  When REQUEST_OPLOCK_OUTPUT_FLAG_MODES_PROVIDED is set, and when the
    //  OPLOCK_LEVEL_CACHE_HANDLE level is being lost in an oplock break, these fields
    //  contain the access mode and share mode of the request that is causing the break.
    //

    ACCESS_MASK AccessMode;

    WORD   ShareMode;

} REQUEST_OPLOCK_OUTPUT_BUFFER, *PREQUEST_OPLOCK_OUTPUT_BUFFER;

//
//  Structures for FSCTL_SD_GLOBAL_CHANGE
//

//
//  list of operations supported
//

#define SD_GLOBAL_CHANGE_TYPE_MACHINE_SID   1


//
//  Operation specific structures for SD_GLOBAL_CHANGE_TYPE_MACHINE_SID
//
//  This con
//

typedef struct _SD_CHANGE_MACHINE_SID_INPUT {

    //
    //  The current machine SID to change.
    //  This define the offset from the beginning of the SD_GLOBAL_CHANGE_INPUT
    //  structure of where the CurrentMachineSID to replace begins.  This will
    //  be a SID structure.  The length defines the length of the imbedded SID
    //  structure.
    //

    WORD   CurrentMachineSIDOffset;
    WORD   CurrentMachineSIDLength;

    //
    //  The new machine SID value to set inplace of the current machine SID
    //  This define the offset from the beginning of the SD_GLOBAL_CHANGE_INPUT
    //  structure of where the NewMachineSID to set begins.  This will
    //  be a SID structure.  The length defines the length of the imbedded SID
    //  structure.
    //

    WORD   NewMachineSIDOffset;
    WORD   NewMachineSIDLength;

} SD_CHANGE_MACHINE_SID_INPUT, *PSD_CHANGE_MACHINE_SID_INPUT;

typedef struct _SD_CHANGE_MACHINE_SID_OUTPUT {

    //
    //  How many entries were successfully changed in the $Secure stream
    //

    DWORDLONG NumSDChangedSuccess;

    //
    //  How many entires failed the update in the $Secure stream
    //

    DWORDLONG NumSDChangedFail;

    //
    //  How many entires are unused in the current security stream
    //

    DWORDLONG NumSDUnused;

    //
    //  The total number of entries processed in the $Secure stream
    //

    DWORDLONG NumSDTotal;

    //
    //  How many entries were successfully changed in the $MFT file
    //

    DWORDLONG NumMftSDChangedSuccess;

    //
    //  How many entries failed the update in the $MFT file
    //

    DWORDLONG NumMftSDChangedFail;

    //
    //  Total number of entriess process in the $MFT file
    //

    DWORDLONG NumMftSDTotal;

} SD_CHANGE_MACHINE_SID_OUTPUT, *PSD_CHANGE_MACHINE_SID_OUTPUT;

//
//  Generic INPUT & OUTPUT structures for FSCTL_SD_GLOBAL_CHANGE
//

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning(disable:4201)       // unnamed struct

typedef struct _SD_GLOBAL_CHANGE_INPUT
{
    //
    //  Input flags (none currently defined)
    //

    DWORD Flags;

    //
    //  Specifies which type of change we are doing and pics which member
    //  of the below union is in use.
    //

    DWORD ChangeType;

    union {

        SD_CHANGE_MACHINE_SID_INPUT SdChange;
    };

} SD_GLOBAL_CHANGE_INPUT, *PSD_GLOBAL_CHANGE_INPUT;

typedef struct _SD_GLOBAL_CHANGE_OUTPUT
{

    //
    //  Output State Flags (none currently defined)
    //

    DWORD Flags;

    //
    //  Specifies which below union to use
    //

    DWORD ChangeType;

    union {

        SD_CHANGE_MACHINE_SID_OUTPUT SdChange;
    };

} SD_GLOBAL_CHANGE_OUTPUT, *PSD_GLOBAL_CHANGE_OUTPUT;

#if _MSC_VER >= 1200
#pragma warning(pop)
#else
#pragma warning( default : 4201 ) /* nonstandard extension used : nameless struct/union */
#endif

//
//  Flag to indicate the encrypted file is sparse
//

#define ENCRYPTED_DATA_INFO_SPARSE_FILE    1

typedef struct _EXTENDED_ENCRYPTED_DATA_INFO {

    //
    //  This is really a 4 byte character array which
    //  must have the value "EXTD".  We use this
    //  to determine if we should read the extended data
    //  or not.
    //

    DWORD ExtendedCode;

    //
    //  The length of the extended data structure
    //

    DWORD Length;

    //
    //  Encrypted data flags (currently only sparse is defined)
    //

    DWORD Flags;
    DWORD Reserved;

} EXTENDED_ENCRYPTED_DATA_INFO, *PEXTENDED_ENCRYPTED_DATA_INFO;


typedef struct _LOOKUP_STREAM_FROM_CLUSTER_INPUT {

    //
    //  Flags for the operation.  Currently no flags are defined.
    //
    DWORD         Flags;

    //
    //  Number of clusters in the following array of clusters.
    //  The input buffer must be large enough to contain this
    //  number or the operation will fail.
    //
    DWORD         NumberOfClusters;

    //
    //  An array of one or more clusters to look up.
    //
    LARGE_INTEGER Cluster[1];
} LOOKUP_STREAM_FROM_CLUSTER_INPUT, *PLOOKUP_STREAM_FROM_CLUSTER_INPUT;

typedef struct _LOOKUP_STREAM_FROM_CLUSTER_OUTPUT {
    //
    //  Offset from the beginning of this structure to the first entry
    //  returned.  If no entries are returned, this value is zero.
    //
    DWORD         Offset;

    //
    //  Number of matches to the input criteria.  Note that more matches
    //  may be found than entries returned if the buffer is not large
    //  enough.
    //
    DWORD         NumberOfMatches;

    //
    //  Minimum size of the buffer, in bytes, which would be needed to
    //  contain all matching entries to the input criteria.
    //
    DWORD         BufferSizeRequired;
} LOOKUP_STREAM_FROM_CLUSTER_OUTPUT, *PLOOKUP_STREAM_FROM_CLUSTER_OUTPUT;

#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_PAGE_FILE          0x00000001
#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_DENY_DEFRAG_SET    0x00000002
#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_FS_SYSTEM_FILE     0x00000004
#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_FLAG_TXF_SYSTEM_FILE    0x00000008

#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_MASK          0xff000000
#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_DATA          0x01000000
#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_INDEX         0x02000000
#define LOOKUP_STREAM_FROM_CLUSTER_ENTRY_ATTRIBUTE_SYSTEM        0x03000000

typedef struct _LOOKUP_STREAM_FROM_CLUSTER_ENTRY {
    //
    //  Offset from the beginning of this structure to the next entry
    //  returned.  If there are no more entries, this value is zero.
    //
    DWORD         OffsetToNext;

    //
    //  Flags describing characteristics about this stream.
    //
    DWORD         Flags;

    //
    //  This value is reserved and is currently zero.
    //
    LARGE_INTEGER Reserved;

    //
    //  This is the cluster that this entry refers to.  It will be one
    //  of the clusters passed in the input structure.
    //
    LARGE_INTEGER Cluster;

    //
    //  A NULL-terminated Unicode string containing the path of the
    //  object relative to the root of the volume.  This string
    //  will refer to the attribute or stream represented by the
    //  cluster.
    //
    WCHAR         FileName[1];
} LOOKUP_STREAM_FROM_CLUSTER_ENTRY, *PLOOKUP_STREAM_FROM_CLUSTER_ENTRY;

//
//  This is the structure for the FSCTL_FILE_TYPE_NOTIFICATION operation.
//  Its purpose is to notify the storage stack about the extents of certain
//  types of files.  This is only callable from kernel mode
//

typedef struct _FILE_TYPE_NOTIFICATION_INPUT {

    //
    //  Flags for this operation
    //  FILE_TYPE_NOTIFICATION_FLAG_*
    //

    DWORD Flags;

    //
    //  A count of how many FileTypeID guids are given
    //

    DWORD NumFileTypeIDs;

    //
    //  This is a unique identifer for the type of file notification occuring
    //

    GUID FileTypeID[1];

} FILE_TYPE_NOTIFICATION_INPUT, *PFILE_TYPE_NOTIFICATION_INPUT;

//
//  Flags for the given operation
//

#define FILE_TYPE_NOTIFICATION_FLAG_USAGE_BEGIN     0x00000001      //Set when adding the specified usage on the given file
#define FILE_TYPE_NOTIFICATION_FLAG_USAGE_END       0x00000002      //Set when removing the specified usage on the given file

//
//  These are the globally defined file types
//

DEFINE_GUID( FILE_TYPE_NOTIFICATION_GUID_PAGE_FILE,         0x0d0a64a1, 0x38fc, 0x4db8, 0x9f, 0xe7, 0x3f, 0x43, 0x52, 0xcd, 0x7c, 0x5c );
DEFINE_GUID( FILE_TYPE_NOTIFICATION_GUID_HIBERNATION_FILE,  0xb7624d64, 0xb9a3, 0x4cf8, 0x80, 0x11, 0x5b, 0x86, 0xc9, 0x40, 0xe7, 0xb7 );
DEFINE_GUID( FILE_TYPE_NOTIFICATION_GUID_CRASHDUMP_FILE,    0x9d453eb7, 0xd2a6, 0x4dbd, 0xa2, 0xe3, 0xfb, 0xd0, 0xed, 0x91, 0x09, 0xa9 );
#endif /* _WIN32_WINNT >= 0x0601 */

#endif // _FILESYSTEMFSCTL_


#define IOCTL_VOLUME_BASE                       0x00000056 // 'V'

#if (NTDDI_VERSION >= NTDDI_WIN2K)

//
// IOCTL to obtain the physical location of
// the specified volume on one or more disks.
//

#define IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS    CTL_CODE(IOCTL_VOLUME_BASE, 0, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
// IOCTL_VOLUME_GET_VOLUME_DISK_EXTENTS
//
// Input Buffer:
//     None
//
// Output Buffer:
//     Structure of type VOLUME_DISK_EXTENTS
//

typedef struct _DISK_EXTENT {

    //
    // Specifies the storage device number of
    // the disk on which this extent resides.
    //
    DWORD DiskNumber;

    //
    // Specifies the offset and length of this
    // extent relative to the beginning of the
    // disk.
    //
    LARGE_INTEGER StartingOffset;
    LARGE_INTEGER ExtentLength;

} DISK_EXTENT, *PDISK_EXTENT;

typedef struct _VOLUME_DISK_EXTENTS {

    //
    // Specifies one or more contiguous range
    // of sectors that make up this volume.
    //
    DWORD NumberOfDiskExtents;
    DISK_EXTENT Extents[ANYSIZE_ARRAY];

} VOLUME_DISK_EXTENTS, *PVOLUME_DISK_EXTENTS;


//
// IOCTLs to transition the specified volume
// between r/w and non r/w modes.
//

#define IOCTL_VOLUME_ONLINE                     CTL_CODE(IOCTL_VOLUME_BASE, 2, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)
#define IOCTL_VOLUME_OFFLINE                    CTL_CODE(IOCTL_VOLUME_BASE, 3, METHOD_BUFFERED, FILE_READ_ACCESS | FILE_WRITE_ACCESS)

//
// IOCTL_VOLUME_ONLINE
// IOCTL_VOLUME_OFFLINE
//
// Input Buffer:
//     None
//
// Output Buffer:
//     None
//

#endif  // NTDDI_VERSION >= NTDDI_WIN2K


#if (NTDDI_VERSION >= NTDDI_WINXP)

//
// IOCTL to determine  whether  the specified
// volume resides on a disk that is an online
// cluster resource or not.
//

#define IOCTL_VOLUME_IS_CLUSTERED               CTL_CODE(IOCTL_VOLUME_BASE, 12, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
// IOCTL_VOLUME_IS_CLUSTERED
//
// Input Buffer:
//     None
//
// Output Buffer:
//     None
//

//
// IOCTL to query the attributes on volumes.
//

#define IOCTL_VOLUME_GET_GPT_ATTRIBUTES         CTL_CODE(IOCTL_VOLUME_BASE, 14, METHOD_BUFFERED, FILE_ANY_ACCESS)

//
// IOCTL_VOLUME_GET_GPT_ATTRIBUTES
//
// Input Buffer:
//     None
//
// Output Buffer:
//     Structure of type VOLUME_GET_GPT_ATTRIBUTES_INFORMATION
//

typedef struct _VOLUME_GET_GPT_ATTRIBUTES_INFORMATION {

    //
    // Specifies all the attributes
    // associated with this volume.
    //
    DWORDLONG GptAttributes;

} VOLUME_GET_GPT_ATTRIBUTES_INFORMATION, *PVOLUME_GET_GPT_ATTRIBUTES_INFORMATION;

#endif  // NTDDI_VERSION >= NTDDI_WINXP


#endif // _WINIOCTL_


