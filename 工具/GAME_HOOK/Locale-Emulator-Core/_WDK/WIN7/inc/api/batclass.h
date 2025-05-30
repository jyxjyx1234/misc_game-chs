/*++ BUILD Version: 0001    // Increment this if a change has global effects

Copyright (c) Microsoft Corporation.  All rights reserved.

Module Name:

    batclass.h

Abstract:

    Defines battery class driver interfaces.

--*/


//
// Battery device GUID
//

DEFINE_GUID( GUID_DEVICE_BATTERY, 0x72631e54L, 0x78A4, 0x11d0, 0xbc, 0xf7, 0x00, 0xaa, 0x00, 0xb7, 0xb3, 0x2a );

#if (NTDDI_VERSION >= NTDDI_WINXP)

DEFINE_GUID (BATTERY_STATUS_WMI_GUID,
             0xfc4670d1, 0xebbf, 0x416e, 0x87, 0xce, 0x37, 0x4a, 0x4e, 0xbc, 0x11, 0x1a);
DEFINE_GUID (BATTERY_RUNTIME_WMI_GUID,
             0x535a3767, 0x1ac2, 0x49bc, 0xa0, 0x77, 0x3f, 0x7a, 0x02, 0xe4, 0x0a, 0xec);
DEFINE_GUID (BATTERY_TEMPERATURE_WMI_GUID,
             0x1a52a14d, 0xadce, 0x4a44, 0x9a, 0x3e, 0xc8, 0xd8, 0xf1, 0x5f, 0xf2, 0xc2);
DEFINE_GUID (BATTERY_FULL_CHARGED_CAPACITY_WMI_GUID,
             0x40b40565, 0x96f7, 0x4435, 0x86, 0x94, 0x97, 0xe0, 0xe4, 0x39, 0x59, 0x05);
DEFINE_GUID (BATTERY_CYCLE_COUNT_WMI_GUID,
             0xef98db24, 0x0014, 0x4c25, 0xa5, 0x0b, 0xc7, 0x24, 0xae, 0x5c, 0xd3, 0x71);
DEFINE_GUID (BATTERY_STATIC_DATA_WMI_GUID,
             0x05e1e463, 0xe4e2, 0x4ea9, 0x80, 0xcb, 0x9b, 0xd4, 0xb3, 0xca, 0x06, 0x55);
DEFINE_GUID (BATTERY_STATUS_CHANGE_WMI_GUID,
             0xcddfa0c3, 0x7c5b, 0x4e43, 0xa0, 0x34, 0x05, 0x9f, 0xa5, 0xb8, 0x43, 0x64);
DEFINE_GUID (BATTERY_TAG_CHANGE_WMI_GUID,
             0x5e1f6e19, 0x8786, 0x4d23, 0x94, 0xfc, 0x9e, 0x74, 0x6b, 0xd5, 0xd8, 0x88);

#endif // (NTDDI_VERSION >= NTDDI_WINXP)

#ifndef _BATCLASS_
#define _BATCLASS_
//
// Battery driver interface
//
// IOCTL_BATTERY_QUERY_TAG
// IOCTL_BATTERY_QUERY_INFORMATION
// IOCTL_BATTERY_SET_INFORMATION
// IOCTL_BATTERY_QUERY_STATUS
//



//
// IOCTL_BATTERY_QUERY_TAG
//

#define IOCTL_BATTERY_QUERY_TAG         \
        CTL_CODE(FILE_DEVICE_BATTERY, 0x10, METHOD_BUFFERED, FILE_READ_ACCESS)

#define BATTERY_TAG_INVALID 0



//
// IOCTL_BATTERY_QUERY_INFORMATION
//

#define IOCTL_BATTERY_QUERY_INFORMATION \
        CTL_CODE(FILE_DEVICE_BATTERY, 0x11, METHOD_BUFFERED, FILE_READ_ACCESS)

typedef enum {
    BatteryInformation,
    BatteryGranularityInformation,
    BatteryTemperature,
    BatteryEstimatedTime,
    BatteryDeviceName,
    BatteryManufactureDate,
    BatteryManufactureName,
    BatteryUniqueID,
    BatterySerialNumber
} BATTERY_QUERY_INFORMATION_LEVEL;

typedef struct _BATTERY_QUERY_INFORMATION {
    ULONG                           BatteryTag;
    BATTERY_QUERY_INFORMATION_LEVEL InformationLevel;
    LONG                            AtRate;
} BATTERY_QUERY_INFORMATION, *PBATTERY_QUERY_INFORMATION;

//
// Format of data returned when
// BATTERY_INFORMATION_LEVEL = BatteryInformation
//
typedef struct _BATTERY_INFORMATION {
    ULONG       Capabilities;
    UCHAR       Technology;
    UCHAR       Reserved[3];
    UCHAR       Chemistry[4];
    ULONG       DesignedCapacity;
    ULONG       FullChargedCapacity;
    ULONG       DefaultAlert1;
    ULONG       DefaultAlert2;
    ULONG       CriticalBias;
    ULONG       CycleCount;
} BATTERY_INFORMATION, *PBATTERY_INFORMATION;

//
// BATTERY_INFORMATION.Capabilities flags
//
#define BATTERY_SYSTEM_BATTERY          0x80000000
#define BATTERY_CAPACITY_RELATIVE       0x40000000
#define BATTERY_IS_SHORT_TERM           0x20000000
#define BATTERY_SET_CHARGE_SUPPORTED    0x00000001
#define BATTERY_SET_DISCHARGE_SUPPORTED 0x00000002

//
// BATTERY_INFORMATION.XXXCapacity constants
//
#define BATTERY_UNKNOWN_CAPACITY 0xFFFFFFFF

#if (NTDDI_VERSION < NTDDI_WINXP)

//
// Format of data returned when
// BATTERY_INFORMATION_LEVEL = BatteryGranularityInformation
// is an array of BATTERY_REPORTING_SCALE
//

#ifndef _NTPOAPI_

typedef struct {
    ULONG       Granularity;
    ULONG       Capacity;
} BATTERY_REPORTING_SCALE, *PBATTERY_REPORTING_SCALE;

#endif // _NTPOAPI_

#endif // (NTDDI_VERSION < NTDDI_WINXP)

//
// BatteryEstimatedTime constant
//
#define BATTERY_UNKNOWN_TIME 0xFFFFFFFF

//
// Max battery driver BATTERY_QUERY_INFORMATION_LEVEL string storage
// size in bytes.
//
#define MAX_BATTERY_STRING_SIZE 128

//
// Struct for accessing the packed date format in BatteryManufactureDate.
//
typedef struct _BATTERY_MANUFACTURE_DATE
{
    UCHAR   Day;
    UCHAR   Month;
    USHORT  Year;
} BATTERY_MANUFACTURE_DATE, *PBATTERY_MANUFACTURE_DATE;



//
// IOCTL_BATTERY_SET_INFORMATION
//

#define IOCTL_BATTERY_SET_INFORMATION   \
        CTL_CODE(FILE_DEVICE_BATTERY, 0x12, METHOD_BUFFERED, FILE_WRITE_ACCESS)

typedef enum {
    BatteryCriticalBias,
    BatteryCharge,
    BatteryDischarge
} BATTERY_SET_INFORMATION_LEVEL;

typedef struct _BATTERY_SET_INFORMATION {
    ULONG                         BatteryTag;
    BATTERY_SET_INFORMATION_LEVEL InformationLevel;
    UCHAR                         Buffer[1];
} BATTERY_SET_INFORMATION, *PBATTERY_SET_INFORMATION;



//
// IOCTL_BATTERY_QUERY_STATUS
//

#define IOCTL_BATTERY_QUERY_STATUS      \
        CTL_CODE(FILE_DEVICE_BATTERY, 0x13, METHOD_BUFFERED, FILE_READ_ACCESS)

//
// Structure of input buffer to IOCTL_BATTERY_QUERY_STATUS
//
typedef struct _BATTERY_WAIT_STATUS {
    ULONG       BatteryTag;
    ULONG       Timeout;
    ULONG       PowerState;
    ULONG       LowCapacity;
    ULONG       HighCapacity;
} BATTERY_WAIT_STATUS, *PBATTERY_WAIT_STATUS;

//
// Structure of output buffer from IOCTL_BATTERY_QUERY_STATUS
//
typedef struct _BATTERY_STATUS {
    ULONG       PowerState;
    ULONG       Capacity;
    ULONG       Voltage;
    LONG        Rate;
} BATTERY_STATUS, *PBATTERY_STATUS;

//
// BATTERY_STATUS.PowerState flags
//
#define BATTERY_POWER_ON_LINE   0x00000001
#define BATTERY_DISCHARGING     0x00000002
#define BATTERY_CHARGING        0x00000004
#define BATTERY_CRITICAL        0x00000008

//
// BATTERY_STATUS Constant
// BATTERY_UNKNOWN_CAPACITY defined above for IOCTL_BATTERY_QUERY_INFORMATION
//
#define BATTERY_UNKNOWN_VOLTAGE 0xFFFFFFFF
#define BATTERY_UNKNOWN_RATE    0x80000000


#ifndef _WINDOWS_

//
// Battery Class-Miniport device driver interfaces
//


__drv_functionClass(BCLASS_QUERY_TAG_CALLBACK)
__drv_sameIRQL
__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
typedef
NTSTATUS
(BCLASS_QUERY_TAG_CALLBACK)(
    __in PVOID Context,
    __out PULONG BatteryTag
    );

typedef BCLASS_QUERY_TAG_CALLBACK *PBCLASS_QUERY_TAG_CALLBACK;


__drv_functionClass(BCLASS_QUERY_INFORMATION_CALLBACK)
__drv_sameIRQL
__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
typedef
NTSTATUS
(BCLASS_QUERY_INFORMATION_CALLBACK)(
    __in PVOID Context,
    __in ULONG BatteryTag,
    __in BATTERY_QUERY_INFORMATION_LEVEL Level,
    __in LONG AtRate,
    __out_bcount_part(BufferLength, *ReturnedLength) PVOID Buffer,
    __in ULONG BufferLength,
    __out PULONG ReturnedLength
    );

typedef BCLASS_QUERY_INFORMATION_CALLBACK *PBCLASS_QUERY_INFORMATION_CALLBACK;


__drv_functionClass(BCLASS_QUERY_STATUS_CALLBACK)
__drv_sameIRQL
__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
typedef
NTSTATUS
(BCLASS_QUERY_STATUS_CALLBACK)(
    __in PVOID Context,
    __in ULONG BatteryTag,
    __out PBATTERY_STATUS BatteryStatus
    );

typedef BCLASS_QUERY_STATUS_CALLBACK *PBCLASS_QUERY_STATUS_CALLBACK;


typedef struct {
    ULONG                   PowerState;
    ULONG                   LowCapacity;
    ULONG                   HighCapacity;
} BATTERY_NOTIFY, *PBATTERY_NOTIFY;

__drv_functionClass(BCLASS_SET_STATUS_NOTIFY_CALLBACK)
__drv_sameIRQL
__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
typedef
NTSTATUS
(BCLASS_SET_STATUS_NOTIFY_CALLBACK)(
    __in PVOID Context,
    __in ULONG BatteryTag,
    __in PBATTERY_NOTIFY BatteryNotify
    );

typedef BCLASS_SET_STATUS_NOTIFY_CALLBACK *PBCLASS_SET_STATUS_NOTIFY_CALLBACK;


__drv_functionClass(BCLASS_SET_INFORMATION_CALLBACK)
__drv_sameIRQL
__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
typedef
NTSTATUS
(BCLASS_SET_INFORMATION_CALLBACK)(
    __in PVOID Context,
    __in ULONG BatteryTag,
    __in BATTERY_SET_INFORMATION_LEVEL Level,
    __in_opt PVOID Buffer
    );

typedef BCLASS_SET_INFORMATION_CALLBACK *PBCLASS_SET_INFORMATION_CALLBACK;


__drv_functionClass(BCLASS_DISABLE_STATUS_NOTIFY_CALLBACK)
__drv_sameIRQL
__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
typedef
NTSTATUS
(BCLASS_DISABLE_STATUS_NOTIFY_CALLBACK)(
    __in PVOID Context
    );

typedef BCLASS_DISABLE_STATUS_NOTIFY_CALLBACK 
    *PBCLASS_DISABLE_STATUS_NOTIFY_CALLBACK;

typedef PBCLASS_QUERY_TAG_CALLBACK BCLASS_QUERY_TAG;
typedef PBCLASS_QUERY_INFORMATION_CALLBACK BCLASS_QUERY_INFORMATION;
typedef PBCLASS_QUERY_STATUS_CALLBACK BCLASS_QUERY_STATUS;
typedef PBCLASS_SET_STATUS_NOTIFY_CALLBACK BCLASS_SET_STATUS_NOTIFY;
typedef PBCLASS_SET_INFORMATION_CALLBACK BCLASS_SET_INFORMATION;
typedef PBCLASS_DISABLE_STATUS_NOTIFY_CALLBACK BCLASS_DISABLE_STATUS_NOTIFY;

typedef struct {
    USHORT                          MajorVersion;
    USHORT                          MinorVersion;

    PVOID                           Context;        // Miniport context

    BCLASS_QUERY_TAG                QueryTag;
    BCLASS_QUERY_INFORMATION        QueryInformation;
    BCLASS_SET_INFORMATION          SetInformation;
    BCLASS_QUERY_STATUS             QueryStatus;
    BCLASS_SET_STATUS_NOTIFY        SetStatusNotify;
    BCLASS_DISABLE_STATUS_NOTIFY    DisableStatusNotify;
    PDEVICE_OBJECT                  Pdo;
    PUNICODE_STRING                 DeviceName;
} BATTERY_MINIPORT_INFO, *PBATTERY_MINIPORT_INFO;



#define BATTERY_CLASS_MAJOR_VERSION     0x0001
#define BATTERY_CLASS_MINOR_VERSION     0x0000

#if (NTDDI_VERSION >= NTDDI_WINXP)

//
// WMI data block structures
//

typedef struct _BATTERY_WMI_STATUS {
    ULONG Tag;
    ULONG RemainingCapacity;
    LONG ChargeRate;
    LONG DischargeRate;
    ULONG Voltage;
    BOOLEAN PowerOnline;
    BOOLEAN Charging;
    BOOLEAN Discharging;
    BOOLEAN Critical;
} BATTERY_WMI_STATUS, *PBATTERY_WMI_STATUS;

typedef struct _BATTERY_WMI_RUNTIME
{
    ULONG Tag;
    ULONG EstimatedRuntime;
} BATTERY_WMI_RUNTIME, *PBATTERY_WMI_RUNTIME;

typedef struct _BATTERY_WMI_TEMPERATURE
{
    ULONG Tag;
    ULONG Temperature;
} BATTERY_WMI_TEMPERATURE, *PBATTERY_WMI_TEMPERATURE;

typedef struct _BATTERY_WMI_FULL_CHARGED_CAPACITY
{
    ULONG Tag;
    ULONG FullChargedCapacity;
} BATTERY_WMI_FULL_CHARGED_CAPACITY, *PBATTERY_WMI_FULL_CHARGED_CAPACITY;

typedef struct _BATTERY_WMI_CYCLE_COUNT
{
    ULONG Tag;
    ULONG CycleCount;
} BATTERY_WMI_CYCLE_COUNT, *PBATTERY_WMI_CYCLE_COUNT;

typedef struct _BATTERY_WMI_STATIC_DATA
{
    ULONG Tag;
    WCHAR ManufactureDate[25];
    BATTERY_REPORTING_SCALE Granularity [4];
    ULONG Capabilities;
    UCHAR Technology;
    ULONG Chemistry;
    ULONG DesignedCapacity;
    ULONG DefaultAlert1;
    ULONG DefaultAlert2;
    ULONG CriticalBias;
    WCHAR Strings[1];
    // Four variable length string values are stored with the first USHORT
    // value containing the length of the string in bytes.
    //
    // Device Name
    // Manufacture Name
    // Serial Number
    // UniqueID
    //
} BATTERY_WMI_STATIC_DATA, *PBATTERY_WMI_STATIC_DATA;

typedef struct _BATTERY_WMI_STATUS_CHANGE
{
    ULONG Tag;
    BOOLEAN PowerOnline;
    BOOLEAN Charging;
    BOOLEAN Discharging;
    BOOLEAN Critical;
} BATTERY_WMI_STATUS_CHANGE, *PBATTERY_WMI_STATUS_CHANGE;

typedef struct _BATTERY_TAG_CHANGE
{
    ULONG Tag;
} BATTERY_TAG_CHANGE, *PBATTERY_TAG_CHANGE;

#endif // (NTDDI_VERSION >= NTDDI_WINXP)

//
// Battery class driver functions
//

#if !defined(BATTERYCLASS)
    #define BATTERYCLASSAPI DECLSPEC_IMPORT
#else
    #define BATTERYCLASSAPI
#endif


__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
NTSTATUS
BATTERYCLASSAPI
BatteryClassInitializeDevice (
    __in PBATTERY_MINIPORT_INFO MiniportInfo,
    __out PVOID *ClassData
    );

__drv_maxIRQL(PASSIVE_LEVEL)
NTSTATUS
BATTERYCLASSAPI
BatteryClassUnload (
    __in PVOID ClassData
    );

__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
NTSTATUS
BATTERYCLASSAPI
BatteryClassIoctl (
    __in PVOID ClassData,
    __inout PIRP Irp
    );

#if (NTDDI_VERSION >= NTDDI_WINXP)

__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
NTSTATUS
BATTERYCLASSAPI
BatteryClassSystemControl (
    __in PVOID ClassData,
    __in PVOID WmiLibContext, //PWMILIB_CONTEXT
    __in PDEVICE_OBJECT  DeviceObject,
    __inout PIRP Irp,
    __out PVOID Disposition //PSYSCTL_IRP_DISPOSITION
    );

__drv_maxIRQL(PASSIVE_LEVEL)
__checkReturn
NTSTATUS
BATTERYCLASSAPI
BatteryClassQueryWmiDataBlock(
    __in PVOID ClassData,
    __inout PDEVICE_OBJECT DeviceObject,
    __inout PIRP Irp,
    __in ULONG GuidIndex,
    __out_ecount(1) PULONG InstanceLengthArray,
    __in ULONG OutBufferSize,
    __out_bcount_opt(OutBufferSize) PUCHAR Buffer
    );

#endif // (NTDDI_VERSION >= NTDDI_WINXP)

__drv_maxIRQL(DISPATCH_LEVEL)
NTSTATUS
BATTERYCLASSAPI
BatteryClassStatusNotify (
    __in PVOID ClassData
    );

#endif // _WINDOWS_

#endif // _BATCLASS_

