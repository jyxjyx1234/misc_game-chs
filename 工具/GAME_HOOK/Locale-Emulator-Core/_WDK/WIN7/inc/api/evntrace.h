/*++

Copyright (c) Microsoft Corporation.  All rights reserved.

Module Name:

    EvnTrace.h

Abstract:

    Public headers for event tracing control applications,
    consumers and providers

--*/

#ifndef _EVNTRACE_
#define _EVNTRACE_

#pragma once

#if defined(_WINNT_) || defined(WINNT)
#ifndef WMIAPI
#ifndef MIDL_PASS
#ifdef _WMI_SOURCE_
#define WMIAPI __stdcall
#else
#define WMIAPI DECLSPEC_IMPORT __stdcall
#endif // _WMI_SOURCE
#endif // MIDL_PASS

#endif // WMIAPI

#include <guiddef.h>

//
// EventTraceGuid is used to identify a event tracing session
//
DEFINE_GUID ( /* 68fdd900-4a3e-11d1-84f4-0000f80464e3 */
    EventTraceGuid,
    0x68fdd900,
    0x4a3e,
    0x11d1,
    0x84, 0xf4, 0x00, 0x00, 0xf8, 0x04, 0x64, 0xe3
  );

//
// SystemTraceControlGuid. Used to specify event tracing for kernel
//
DEFINE_GUID ( /* 9e814aad-3204-11d2-9a82-006008a86939 */
    SystemTraceControlGuid,
    0x9e814aad,
    0x3204,
    0x11d2,
    0x9a, 0x82, 0x00, 0x60, 0x08, 0xa8, 0x69, 0x39
  );

//
// EventTraceConfigGuid. Used to report system configuration records
//
DEFINE_GUID ( /* 01853a65-418f-4f36-aefc-dc0f1d2fd235 */
    EventTraceConfigGuid,
    0x01853a65,
    0x418f,
    0x4f36,
    0xae, 0xfc, 0xdc, 0x0f, 0x1d, 0x2f, 0xd2, 0x35
  );

//
// DefaultTraceSecurityGuid. Specifies the default event tracing security
//
DEFINE_GUID ( /* 0811c1af-7a07-4a06-82ed-869455cdf713 */
    DefaultTraceSecurityGuid,
    0x0811c1af,
    0x7a07,
    0x4a06,
    0x82, 0xed, 0x86, 0x94, 0x55, 0xcd, 0xf7, 0x13
  );

#define KERNEL_LOGGER_NAMEW         L"NT Kernel Logger"
#define GLOBAL_LOGGER_NAMEW         L"GlobalLogger"
#define EVENT_LOGGER_NAMEW          L"EventLog"
#define DIAG_LOGGER_NAMEW           L"DiagLog"

#define KERNEL_LOGGER_NAMEA         "NT Kernel Logger"
#define GLOBAL_LOGGER_NAMEA         "GlobalLogger"
#define EVENT_LOGGER_NAMEA          "EventLog"
#define DIAG_LOGGER_NAMEA           "DiagLog"

#define MAX_MOF_FIELDS                      16  // Limit of USE_MOF_PTR fields

#ifndef _TRACEHANDLE_DEFINED
#define _TRACEHANDLE_DEFINED
typedef ULONG64 TRACEHANDLE, *PTRACEHANDLE;
#endif

//types for event data going to System Event Logger
#define SYSTEM_EVENT_TYPE                        1

//
// predefined generic event types (0x00 to 0x09 reserved).
//

#define EVENT_TRACE_TYPE_INFO               0x00  // Info or point event
#define EVENT_TRACE_TYPE_START              0x01  // Start event
#define EVENT_TRACE_TYPE_END                0x02  // End event
#define EVENT_TRACE_TYPE_STOP               0x02  // Stop event (WinEvent compatible)
#define EVENT_TRACE_TYPE_DC_START           0x03  // Collection start marker
#define EVENT_TRACE_TYPE_DC_END             0x04  // Collection end marker
#define EVENT_TRACE_TYPE_EXTENSION          0x05  // Extension/continuation
#define EVENT_TRACE_TYPE_REPLY              0x06  // Reply event
#define EVENT_TRACE_TYPE_DEQUEUE            0x07  // De-queue event
#define EVENT_TRACE_TYPE_RESUME             0x07  // Resume event (WinEvent compatible)
#define EVENT_TRACE_TYPE_CHECKPOINT         0x08  // Generic checkpoint event
#define EVENT_TRACE_TYPE_SUSPEND            0x08  // Suspend event (WinEvent compatible)
#define EVENT_TRACE_TYPE_WINEVT_SEND        0x09  // Send Event (WinEvent compatible)
#define EVENT_TRACE_TYPE_WINEVT_RECEIVE     0XF0  // Receive Event (WinEvent compatible)

//
// Predefined Event Tracing Levels for Software/Debug Tracing
//
//
// Trace Level is UCHAR and passed in through the EnableLevel parameter
// in EnableTrace API. It is retrieved by the provider using the
// GetTraceEnableLevel macro.It should be interpreted as an integer value
// to mean everything at or below that level will be traced.
//
// Here are the possible Levels.
//

#define TRACE_LEVEL_NONE        0   // Tracing is not on
#define TRACE_LEVEL_CRITICAL    1   // Abnormal exit or termination
#define TRACE_LEVEL_FATAL       1   // Deprecated name for Abnormal exit or termination
#define TRACE_LEVEL_ERROR       2   // Severe errors that need logging
#define TRACE_LEVEL_WARNING     3   // Warnings such as allocation failure
#define TRACE_LEVEL_INFORMATION 4   // Includes non-error cases(e.g.,Entry-Exit)
#define TRACE_LEVEL_VERBOSE     5   // Detailed traces from intermediate steps
#define TRACE_LEVEL_RESERVED6   6
#define TRACE_LEVEL_RESERVED7   7
#define TRACE_LEVEL_RESERVED8   8
#define TRACE_LEVEL_RESERVED9   9


//
// Event types for Process & Threads
//

#define EVENT_TRACE_TYPE_LOAD                  0x0A      // Load image

//
// Event types for IO subsystem
//

#define EVENT_TRACE_TYPE_IO_READ               0x0A
#define EVENT_TRACE_TYPE_IO_WRITE              0x0B
#define EVENT_TRACE_TYPE_IO_READ_INIT          0x0C
#define EVENT_TRACE_TYPE_IO_WRITE_INIT         0x0D
#define EVENT_TRACE_TYPE_IO_FLUSH              0x0E
#define EVENT_TRACE_TYPE_IO_FLUSH_INIT         0x0F


//
// Event types for Memory subsystem
//

#define EVENT_TRACE_TYPE_MM_TF                 0x0A      // Transition fault
#define EVENT_TRACE_TYPE_MM_DZF                0x0B      // Demand Zero fault
#define EVENT_TRACE_TYPE_MM_COW                0x0C      // Copy on Write
#define EVENT_TRACE_TYPE_MM_GPF                0x0D      // Guard Page fault
#define EVENT_TRACE_TYPE_MM_HPF                0x0E      // Hard page fault
#define EVENT_TRACE_TYPE_MM_AV                 0x0F      // Access violation

//
// Event types for Network subsystem, all protocols
//

#define EVENT_TRACE_TYPE_SEND                  0x0A     // Send
#define EVENT_TRACE_TYPE_RECEIVE               0x0B     // Receive
#define EVENT_TRACE_TYPE_CONNECT               0x0C     // Connect
#define EVENT_TRACE_TYPE_DISCONNECT            0x0D     // Disconnect
#define EVENT_TRACE_TYPE_RETRANSMIT            0x0E     // ReTransmit
#define EVENT_TRACE_TYPE_ACCEPT                0x0F     // Accept
#define EVENT_TRACE_TYPE_RECONNECT             0x10     // ReConnect
#define EVENT_TRACE_TYPE_CONNFAIL              0x11     // Fail
#define EVENT_TRACE_TYPE_COPY_TCP              0x12     // Copy in PendData
#define EVENT_TRACE_TYPE_COPY_ARP              0x13     // NDIS_STATUS_RESOURCES Copy
#define EVENT_TRACE_TYPE_ACKFULL               0x14     // A full data ACK
#define EVENT_TRACE_TYPE_ACKPART               0x15     // A Partial data ACK
#define EVENT_TRACE_TYPE_ACKDUP                0x16     // A Duplicate data ACK


//
// Event Types for the Header (to handle internal event headers)
//

#define EVENT_TRACE_TYPE_GUIDMAP                0x0A
#define EVENT_TRACE_TYPE_CONFIG                 0x0B
#define EVENT_TRACE_TYPE_SIDINFO                0x0C
#define EVENT_TRACE_TYPE_SECURITY               0x0D

//
// Event Types for Registry subsystem
//

#define EVENT_TRACE_TYPE_REGCREATE                  0x0A     // NtCreateKey
#define EVENT_TRACE_TYPE_REGOPEN                    0x0B     // NtOpenKey
#define EVENT_TRACE_TYPE_REGDELETE                  0x0C     // NtDeleteKey
#define EVENT_TRACE_TYPE_REGQUERY                   0x0D     // NtQueryKey
#define EVENT_TRACE_TYPE_REGSETVALUE                0x0E     // NtSetValueKey
#define EVENT_TRACE_TYPE_REGDELETEVALUE             0x0F     // NtDeleteValueKey
#define EVENT_TRACE_TYPE_REGQUERYVALUE              0x10     // NtQueryValueKey
#define EVENT_TRACE_TYPE_REGENUMERATEKEY            0x11     // NtEnumerateKey
#define EVENT_TRACE_TYPE_REGENUMERATEVALUEKEY       0x12     // NtEnumerateValueKey
#define EVENT_TRACE_TYPE_REGQUERYMULTIPLEVALUE      0x13     // NtQueryMultipleValueKey
#define EVENT_TRACE_TYPE_REGSETINFORMATION          0x14     // NtSetInformationKey
#define EVENT_TRACE_TYPE_REGFLUSH                   0x15     // NtFlushKey
#define EVENT_TRACE_TYPE_REGKCBCREATE               0x16     // KcbCreate
#define EVENT_TRACE_TYPE_REGKCBDELETE               0x17     // KcbDelete
#define EVENT_TRACE_TYPE_REGKCBRUNDOWNBEGIN         0x18     // KcbRundownBegin
#define EVENT_TRACE_TYPE_REGKCBRUNDOWNEND           0x19     // KcbRundownEnd
#define EVENT_TRACE_TYPE_REGVIRTUALIZE              0x1A     // VirtualizeKey
#define EVENT_TRACE_TYPE_REGCLOSE                   0x1B     // NtClose (KeyObject)
#define EVENT_TRACE_TYPE_REGSETSECURITY             0x1C     // SetSecurityDescriptor (KeyObject)
#define EVENT_TRACE_TYPE_REGQUERYSECURITY           0x1D     // QuerySecurityDescriptor (KeyObject)
#define EVENT_TRACE_TYPE_REGCOMMIT                  0x1E     // CmKtmNotification (TRANSACTION_NOTIFY_COMMIT)
#define EVENT_TRACE_TYPE_REGPREPARE                 0x1F     // CmKtmNotification (TRANSACTION_NOTIFY_PREPARE)
#define EVENT_TRACE_TYPE_REGROLLBACK                0x20     // CmKtmNotification (TRANSACTION_NOTIFY_ROLLBACK)
#define EVENT_TRACE_TYPE_REGMOUNTHIVE               0x21     // NtLoadKey variations + system hives 

//
// Event types for system configuration records
//
#define EVENT_TRACE_TYPE_CONFIG_CPU             0x0A     // CPU Configuration
#define EVENT_TRACE_TYPE_CONFIG_PHYSICALDISK    0x0B     // Physical Disk Configuration
#define EVENT_TRACE_TYPE_CONFIG_LOGICALDISK     0x0C     // Logical Disk Configuration
#define EVENT_TRACE_TYPE_CONFIG_NIC             0x0D     // NIC Configuration
#define EVENT_TRACE_TYPE_CONFIG_VIDEO           0x0E     // Video Adapter Configuration
#define EVENT_TRACE_TYPE_CONFIG_SERVICES        0x0F     // Active Services
#define EVENT_TRACE_TYPE_CONFIG_POWER           0x10     // ACPI Configuration
#define EVENT_TRACE_TYPE_CONFIG_NETINFO         0x11     // Networking Configuration

#define EVENT_TRACE_TYPE_CONFIG_IRQ             0x15     // IRQ assigned to devices
#define EVENT_TRACE_TYPE_CONFIG_PNP             0x16     // PnP device info
#define EVENT_TRACE_TYPE_CONFIG_IDECHANNEL      0x17     // Primary/Secondary IDE channel Configuration
#define EVENT_TRACE_TYPE_CONFIG_PLATFORM        0x19     // Platform Configuration

//
// Enable flags for Kernel Events
//
#define EVENT_TRACE_FLAG_PROCESS            0x00000001  // process start & end
#define EVENT_TRACE_FLAG_THREAD             0x00000002  // thread start & end
#define EVENT_TRACE_FLAG_IMAGE_LOAD         0x00000004  // image load

#define EVENT_TRACE_FLAG_DISK_IO            0x00000100  // physical disk IO
#define EVENT_TRACE_FLAG_DISK_FILE_IO       0x00000200  // requires disk IO

#define EVENT_TRACE_FLAG_MEMORY_PAGE_FAULTS 0x00001000  // all page faults
#define EVENT_TRACE_FLAG_MEMORY_HARD_FAULTS 0x00002000  // hard faults only

#define EVENT_TRACE_FLAG_NETWORK_TCPIP      0x00010000  // tcpip send & receive

#define EVENT_TRACE_FLAG_REGISTRY           0x00020000  // registry calls
#define EVENT_TRACE_FLAG_DBGPRINT           0x00040000  // DbgPrint(ex) Calls

//
// Enable flags for Kernel Events on Vista and above 
//
#define EVENT_TRACE_FLAG_PROCESS_COUNTERS   0x00000008  // process perf counters
#define EVENT_TRACE_FLAG_CSWITCH            0x00000010  // context switches 
#define EVENT_TRACE_FLAG_DPC                0x00000020  // deffered procedure calls 
#define EVENT_TRACE_FLAG_INTERRUPT          0x00000040  // interrupts
#define EVENT_TRACE_FLAG_SYSTEMCALL         0x00000080  // system calls

#define EVENT_TRACE_FLAG_DISK_IO_INIT       0x00000400  // physical disk IO initiation

#define EVENT_TRACE_FLAG_ALPC               0x00100000  // ALPC traces
#define EVENT_TRACE_FLAG_SPLIT_IO           0x00200000  // split io traces (VolumeManager)

#define EVENT_TRACE_FLAG_DRIVER             0x00800000  // driver delays
#define EVENT_TRACE_FLAG_PROFILE            0x01000000  // sample based profiling
#define EVENT_TRACE_FLAG_FILE_IO            0x02000000  // file IO
#define EVENT_TRACE_FLAG_FILE_IO_INIT       0x04000000  // file IO initiation

//
// Enable flags for Kernel Events on Win7 and above
//
#define EVENT_TRACE_FLAG_DISPATCHER         0x00000800  // scheduler (ReadyThread)
#define EVENT_TRACE_FLAG_VIRTUAL_ALLOC      0x00004000  // VM operations

//
// Pre-defined Enable flags for everybody else
//
#define EVENT_TRACE_FLAG_EXTENSION          0x80000000  // Indicates more flags
#define EVENT_TRACE_FLAG_FORWARD_WMI        0x40000000  // Can forward to WMI
#define EVENT_TRACE_FLAG_ENABLE_RESERVE     0x20000000  // Reserved

//
// Logger Mode flags
//
#define EVENT_TRACE_FILE_MODE_NONE          0x00000000  // Logfile is off
#define EVENT_TRACE_FILE_MODE_SEQUENTIAL    0x00000001  // Log sequentially
#define EVENT_TRACE_FILE_MODE_CIRCULAR      0x00000002  // Log in circular manner
#define EVENT_TRACE_FILE_MODE_APPEND        0x00000004  // Append sequential log

#define EVENT_TRACE_REAL_TIME_MODE          0x00000100  // Real time mode on
#define EVENT_TRACE_DELAY_OPEN_FILE_MODE    0x00000200  // Delay opening file
#define EVENT_TRACE_BUFFERING_MODE          0x00000400  // Buffering mode only
#define EVENT_TRACE_PRIVATE_LOGGER_MODE     0x00000800  // Process Private Logger
#define EVENT_TRACE_ADD_HEADER_MODE         0x00001000  // Add a logfile header

#define EVENT_TRACE_USE_GLOBAL_SEQUENCE     0x00004000  // Use global sequence no.
#define EVENT_TRACE_USE_LOCAL_SEQUENCE      0x00008000  // Use local sequence no.

#define EVENT_TRACE_RELOG_MODE              0x00010000  // Relogger

#define EVENT_TRACE_USE_PAGED_MEMORY        0x01000000  // Use pageable buffers

//
// Logger Mode flags on XP and above
//
#define EVENT_TRACE_FILE_MODE_NEWFILE       0x00000008  // Auto-switch log file
#define EVENT_TRACE_FILE_MODE_PREALLOCATE   0x00000020  // Pre-allocate mode

//
// Logger Mode flags on Vista and above
//
#define EVENT_TRACE_NONSTOPPABLE_MODE       0x00000040  // Session cannot be stopped (Autologger only)
#define EVENT_TRACE_SECURE_MODE             0x00000080  // Secure session
#define EVENT_TRACE_USE_KBYTES_FOR_SIZE     0x00002000  // Use KBytes as file size unit
#define EVENT_TRACE_PRIVATE_IN_PROC         0x00020000  // In process private logger
#define EVENT_TRACE_MODE_RESERVED           0x00100000  // Reserved bit, used to signal Heap/Critsec tracing

//
// Logger Mode flags on Win7 and above
//
#define EVENT_TRACE_NO_PER_PROCESSOR_BUFFERING     0x10000000  // Use this for low frequency sessions.

//
// ControlTrace Codes
//
#define EVENT_TRACE_CONTROL_QUERY           0
#define EVENT_TRACE_CONTROL_STOP            1
#define EVENT_TRACE_CONTROL_UPDATE          2

//
// Flush ControlTrace Codes for XP and above
//
#define EVENT_TRACE_CONTROL_FLUSH           3       // Flushes all the buffers

//
// Flags used by WMI Trace Message
// Note that the order or value of these flags should NOT be changed as they are processed
// in this order.
//
#define TRACE_MESSAGE_SEQUENCE              1  // Message should include a sequence number
#define TRACE_MESSAGE_GUID                  2  // Message includes a GUID
#define TRACE_MESSAGE_COMPONENTID           4  // Message has no GUID, Component ID instead
#define TRACE_MESSAGE_TIMESTAMP             8  // Message includes a timestamp
#define TRACE_MESSAGE_PERFORMANCE_TIMESTAMP 16 // *Obsolete* Clock type is controlled by the logger
#define TRACE_MESSAGE_SYSTEMINFO            32 // Message includes system information TID,PID

//
// Vista flags set by system to indicate provider pointer size.
//

#define TRACE_MESSAGE_POINTER32             0x0040  // Message logged by 32 bit provider
#define TRACE_MESSAGE_POINTER64             0x0080  // Message logged by 64 bit provider

#define TRACE_MESSAGE_FLAG_MASK         0xFFFF  // Only the lower 16 bits of flags are placed in the message
                                                // those above 16 bits are reserved for local processing
#define TRACE_MESSAGE_MAXIMUM_SIZE  8*1024      // the maximum size allowed for a single trace message
                                                // longer messages will return ERROR_BUFFER_OVERFLOW
//
// Flags to indicate to consumer which fields
// in the EVENT_TRACE_HEADER are valid
//

#define EVENT_TRACE_USE_PROCTIME          0x0001    // ProcessorTime field is valid
#define EVENT_TRACE_USE_NOCPUTIME         0x0002    // No Kernel/User/Processor Times

//
// TRACE_HEADER_FLAG values are used in the Flags field of EVENT_TRACE_HEADER
// structure while calling into TraceEvent API
//

#define TRACE_HEADER_FLAG_USE_TIMESTAMP     0x00000200
#define TRACE_HEADER_FLAG_TRACED_GUID       0x00020000 // denotes a trace
#define TRACE_HEADER_FLAG_LOG_WNODE         0x00040000 // request to log Wnode
#define TRACE_HEADER_FLAG_USE_GUID_PTR      0x00080000 // Guid is actually a pointer
#define TRACE_HEADER_FLAG_USE_MOF_PTR       0x00100000 // MOF data are dereferenced

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning (disable:4201) /* nonstandard extension used : nameless struct/union */

//
// Trace header for all legacy events. 
//

typedef struct _EVENT_TRACE_HEADER {        // overlays WNODE_HEADER
    USHORT          Size;                   // Size of entire record
    union {
        USHORT      FieldTypeFlags;         // Indicates valid fields
        struct {
            UCHAR   HeaderType;             // Header type - internal use only
            UCHAR   MarkerFlags;            // Marker - internal use only
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME;
    union {
        ULONG       Version;
        struct {
            UCHAR   Type;                   // event type
            UCHAR   Level;                  // trace instrumentation level
            USHORT  Version;                // version of trace record
        } Class;
    } DUMMYUNIONNAME2;
    ULONG           ThreadId;               // Thread Id
    ULONG           ProcessId;              // Process Id
    LARGE_INTEGER   TimeStamp;              // time when event happens
    union {
        GUID        Guid;                   // Guid that identifies event
        ULONGLONG   GuidPtr;                // use with WNODE_FLAG_USE_GUID_PTR
    } DUMMYUNIONNAME3;
    union {
        struct {
            ULONG   KernelTime;             // Kernel Mode CPU ticks
            ULONG   UserTime;               // User mode CPU ticks
        } DUMMYSTRUCTNAME;
        ULONG64     ProcessorTime;          // Processor Clock
        struct {
            ULONG   ClientContext;          // Reserved
            ULONG   Flags;                  // Event Flags
        } DUMMYSTRUCTNAME2;
    } DUMMYUNIONNAME4;
} EVENT_TRACE_HEADER, *PEVENT_TRACE_HEADER;

//
// This header is used to trace and track transaction co-relations
//
typedef struct _EVENT_INSTANCE_HEADER {
    USHORT          Size;
    union {
        USHORT      FieldTypeFlags;     // Indicates valid fields
        struct {
            UCHAR   HeaderType;         // Header type - internal use only
            UCHAR   MarkerFlags;        // Marker - internal use only
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME;
    union {
        ULONG       Version;
        struct {
            UCHAR   Type;
            UCHAR   Level;
            USHORT  Version;
        } Class;
    } DUMMYUNIONNAME2;
    ULONG           ThreadId;
    ULONG           ProcessId;
    LARGE_INTEGER   TimeStamp;
    ULONGLONG       RegHandle;
    ULONG           InstanceId;
    ULONG           ParentInstanceId;
    union {
        struct {
            ULONG   KernelTime;             // Kernel Mode CPU ticks
            ULONG   UserTime;               // User mode CPU ticks
        } DUMMYSTRUCTNAME;
        ULONG64     ProcessorTime;          // Processor Clock
        struct {
            ULONG   EventId;                // Event ID
            ULONG   Flags;                  // Trace header Flags
        } DUMMYSTRUCTNAME2;
    } DUMMYUNIONNAME3;
    ULONGLONG       ParentRegHandle;
} EVENT_INSTANCE_HEADER, *PEVENT_INSTANCE_HEADER;

#if _MSC_VER >= 1200
#pragma warning(pop)
#endif

//
// Following are structures and macros for use with USE_MOF_PTR
//

// Trace data types
#define ETW_NULL_TYPE_VALUE                 0
#define ETW_OBJECT_TYPE_VALUE               1
#define ETW_STRING_TYPE_VALUE               2
#define ETW_SBYTE_TYPE_VALUE                3
#define ETW_BYTE_TYPE_VALUE                 4
#define ETW_INT16_TYPE_VALUE                5
#define ETW_UINT16_TYPE_VALUE               6
#define ETW_INT32_TYPE_VALUE                7
#define ETW_UINT32_TYPE_VALUE               8
#define ETW_INT64_TYPE_VALUE                9
#define ETW_UINT64_TYPE_VALUE               10
#define ETW_CHAR_TYPE_VALUE                 11
#define ETW_SINGLE_TYPE_VALUE               12
#define ETW_DOUBLE_TYPE_VALUE               13
#define ETW_BOOLEAN_TYPE_VALUE              14
#define ETW_DECIMAL_TYPE_VALUE              15
// Extended types
#define ETW_GUID_TYPE_VALUE                 101
#define ETW_ASCIICHAR_TYPE_VALUE            102
#define ETW_ASCIISTRING_TYPE_VALUE          103
#define ETW_COUNTED_STRING_TYPE_VALUE       104
#define ETW_POINTER_TYPE_VALUE              105
#define ETW_SIZET_TYPE_VALUE                106
#define ETW_HIDDEN_TYPE_VALUE               107
#define ETW_BOOL_TYPE_VALUE                 108
#define ETW_COUNTED_ANSISTRING_TYPE_VALUE   109
#define ETW_REVERSED_COUNTED_STRING_TYPE_VALUE 110
#define ETW_REVERSED_COUNTED_ANSISTRING_TYPE_VALUE 111
#define ETW_NON_NULL_TERMINATED_STRING_TYPE_VALUE 112
#define ETW_REDUCED_ANSISTRING_TYPE_VALUE   113
#define ETW_REDUCED_STRING_TYPE_VALUE       114
#define ETW_SID_TYPE_VALUE                  115
#define ETW_VARIANT_TYPE_VALUE              116
#define ETW_PTVECTOR_TYPE_VALUE             117
#define ETW_WMITIME_TYPE_VALUE              118
#define ETW_DATETIME_TYPE_VALUE             119
#define ETW_REFRENCE_TYPE_VALUE             120


#define DEFINE_TRACE_MOF_FIELD(MOF, ptr, length, type) \
    (MOF)->DataPtr  = (ULONG64)(ULONG_PTR) ptr; \
    (MOF)->Length   = (ULONG) length; \
    (MOF)->DataType = (ULONG) type;

typedef struct _MOF_FIELD {
    ULONG64     DataPtr;    // Pointer to the field. Up to 64-bits only
    ULONG       Length;     // Length of the MOF field
    ULONG       DataType;   // Type of data
} MOF_FIELD, *PMOF_FIELD;



#if !(defined(_NTDDK_) || defined(_NTIFS_)) || defined(_WMIKM_)

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning (disable:4201) /* nonstandard extension used : nameless struct/union */

//
// This is the header for every logfile. The memory for LoggerName
// and LogFileName must be contiguous adjacent to this structure
// Allows both user-mode and kernel-mode to understand the header.
//
// TRACE_LOGFILE_HEADER32 and TRACE_LOGFILE_HEADER64 structures 
// are also provided to simplify cross platform decoding of the 
// header event.
//

typedef struct _TRACE_LOGFILE_HEADER {
    ULONG           BufferSize;         // Logger buffer size in Kbytes
    union {
        ULONG       Version;            // Logger version
        struct {
            UCHAR   MajorVersion;
            UCHAR   MinorVersion;
            UCHAR   SubVersion;
            UCHAR   SubMinorVersion;
        } VersionDetail;
    } DUMMYUNIONNAME;
    ULONG           ProviderVersion;    // defaults to NT version
    ULONG           NumberOfProcessors; // Number of Processors
    LARGE_INTEGER   EndTime;            // Time when logger stops
    ULONG           TimerResolution;    // assumes timer is constant!!!
    ULONG           MaximumFileSize;    // Maximum in Mbytes
    ULONG           LogFileMode;        // specify logfile mode
    ULONG           BuffersWritten;     // used to file start of Circular File
    union {
        GUID LogInstanceGuid;           // For RealTime Buffer Delivery
        struct {
            ULONG   StartBuffers;       // Count of buffers written at start.
            ULONG   PointerSize;        // Size of pointer type in bits
            ULONG   EventsLost;         // Events losts during log session
            ULONG   CpuSpeedInMHz;      // Cpu Speed in MHz
        } DUMMYSTRUCTNAME;
    } DUMMYUNIONNAME2;
#if defined(_WMIKM_)
    PWCHAR          LoggerName;
    PWCHAR          LogFileName;
    RTL_TIME_ZONE_INFORMATION TimeZone;
#else
    LPWSTR          LoggerName;
    LPWSTR          LogFileName;
    TIME_ZONE_INFORMATION TimeZone;
#endif
    LARGE_INTEGER   BootTime;
    LARGE_INTEGER   PerfFreq;           // Reserved
    LARGE_INTEGER   StartTime;          // Reserved
    ULONG           ReservedFlags;      // ClockType
    ULONG           BuffersLost;
} TRACE_LOGFILE_HEADER, *PTRACE_LOGFILE_HEADER;

typedef struct _TRACE_LOGFILE_HEADER32 {
    ULONG           BufferSize;         // Logger buffer size in Kbytes
    union {
        ULONG       Version;            // Logger version
        struct {
            UCHAR   MajorVersion;
            UCHAR   MinorVersion;
            UCHAR   SubVersion;
            UCHAR   SubMinorVersion;
        } VersionDetail;
    };
    ULONG           ProviderVersion;    // defaults to NT version
    ULONG           NumberOfProcessors; // Number of Processors
    LARGE_INTEGER   EndTime;            // Time when logger stops
    ULONG           TimerResolution;    // assumes timer is constant!!!
    ULONG           MaximumFileSize;    // Maximum in Mbytes
    ULONG           LogFileMode;        // specify logfile mode
    ULONG           BuffersWritten;     // used to file start of Circular File
    union {
        GUID LogInstanceGuid;           // For RealTime Buffer Delivery
        struct {
            ULONG   StartBuffers;       // Count of buffers written at start.
            ULONG   PointerSize;        // Size of pointer type in bits
            ULONG   EventsLost;         // Events losts during log session
            ULONG   CpuSpeedInMHz;      // Cpu Speed in MHz
        };
    };
#if defined(_WMIKM_)
    ULONG32         LoggerName;
    ULONG32         LogFileName;
    RTL_TIME_ZONE_INFORMATION TimeZone;
#else
    ULONG32         LoggerName;
    ULONG32         LogFileName;
    TIME_ZONE_INFORMATION TimeZone;
#endif
    LARGE_INTEGER   BootTime;
    LARGE_INTEGER   PerfFreq;           // Reserved
    LARGE_INTEGER   StartTime;          // Reserved
    ULONG           ReservedFlags;      // ClockType
    ULONG           BuffersLost;
} TRACE_LOGFILE_HEADER32, *PTRACE_LOGFILE_HEADER32;

typedef struct _TRACE_LOGFILE_HEADER64 {
    ULONG           BufferSize;         // Logger buffer size in Kbytes
    union {
        ULONG       Version;            // Logger version
        struct {
            UCHAR   MajorVersion;
            UCHAR   MinorVersion;
            UCHAR   SubVersion;
            UCHAR   SubMinorVersion;
        } VersionDetail;
    };
    ULONG           ProviderVersion;    // defaults to NT version
    ULONG           NumberOfProcessors; // Number of Processors
    LARGE_INTEGER   EndTime;            // Time when logger stops
    ULONG           TimerResolution;    // assumes timer is constant!!!
    ULONG           MaximumFileSize;    // Maximum in Mbytes
    ULONG           LogFileMode;        // specify logfile mode
    ULONG           BuffersWritten;     // used to file start of Circular File
    union {
        GUID LogInstanceGuid;           // For RealTime Buffer Delivery
        struct {
            ULONG   StartBuffers;       // Count of buffers written at start.
            ULONG   PointerSize;        // Size of pointer type in bits
            ULONG   EventsLost;         // Events losts during log session
            ULONG   CpuSpeedInMHz;      // Cpu Speed in MHz
        };
    };
#if defined(_WMIKM_)
    ULONG64         LoggerName;
    ULONG64         LogFileName;
    RTL_TIME_ZONE_INFORMATION TimeZone;
#else
    ULONG64         LoggerName;
    ULONG64         LogFileName;
    TIME_ZONE_INFORMATION TimeZone;
#endif
    LARGE_INTEGER   BootTime;
    LARGE_INTEGER   PerfFreq;           // Reserved
    LARGE_INTEGER   StartTime;          // Reserved
    ULONG           ReservedFlags;      // ClockType
    ULONG           BuffersLost;
} TRACE_LOGFILE_HEADER64, *PTRACE_LOGFILE_HEADER64;

#if _MSC_VER >= 1200
#pragma warning(pop)
#endif

#endif // !_NTDDK_ || _WMIKM_

//
// Instance Information to track parent child relationship of Instances.
//
typedef struct EVENT_INSTANCE_INFO {
    HANDLE      RegHandle;
    ULONG       InstanceId;
} EVENT_INSTANCE_INFO, *PEVENT_INSTANCE_INFO;

#if !defined(_WMIKM_) && !defined(_NTDDK_) && !defined(_NTIFS_)
//
// Structures that have UNICODE and ANSI versions are defined here
//

//
// Logger configuration and running statistics. This structure is used
// by user-mode callers, such as PDH library
//

typedef struct _EVENT_TRACE_PROPERTIES {
    WNODE_HEADER Wnode;
//
// data provided by caller
    ULONG BufferSize;                   // buffer size for logging (kbytes)
    ULONG MinimumBuffers;               // minimum to preallocate
    ULONG MaximumBuffers;               // maximum buffers allowed
    ULONG MaximumFileSize;              // maximum logfile size (in MBytes)
    ULONG LogFileMode;                  // sequential, circular
    ULONG FlushTimer;                   // buffer flush timer, in seconds
    ULONG EnableFlags;                  // trace enable flags
    LONG  AgeLimit;                     // unused

// data returned to caller
    ULONG NumberOfBuffers;              // no of buffers in use
    ULONG FreeBuffers;                  // no of buffers free
    ULONG EventsLost;                   // event records lost
    ULONG BuffersWritten;               // no of buffers written to file
    ULONG LogBuffersLost;               // no of logfile write failures
    ULONG RealTimeBuffersLost;          // no of rt delivery failures
    HANDLE LoggerThreadId;              // thread id of Logger
    ULONG LogFileNameOffset;            // Offset to LogFileName
    ULONG LoggerNameOffset;             // Offset to LoggerName
} EVENT_TRACE_PROPERTIES, *PEVENT_TRACE_PROPERTIES;

//
// Data Provider structures
//
// Used by RegisterTraceGuids()
//
typedef struct  _TRACE_GUID_REGISTRATION {
    LPCGUID Guid;            // Guid of data block being registered or updated.
    HANDLE RegHandle;        // Guid Registration Handle is returned.
} TRACE_GUID_REGISTRATION, *PTRACE_GUID_REGISTRATION;

//
// Data consumer structures
//

#endif // !_NTDDK_ || _WMIKM_

typedef struct _TRACE_GUID_PROPERTIES {
    GUID    Guid;
    ULONG   GuidType;
    ULONG   LoggerId;
    ULONG   EnableLevel;
    ULONG   EnableFlags;
    BOOLEAN IsEnable;
} TRACE_GUID_PROPERTIES, *PTRACE_GUID_PROPERTIES;

typedef struct _ETW_BUFFER_CONTEXT {
    UCHAR   ProcessorNumber;
    UCHAR   Alignment;
    USHORT  LoggerId;
} ETW_BUFFER_CONTEXT, *PETW_BUFFER_CONTEXT;

//
// Provider Information Flags used on Vista and above.
//
#define TRACE_PROVIDER_FLAG_LEGACY     (0x00000001)
#define TRACE_PROVIDER_FLAG_PRE_ENABLE (0x00000002)

//
// Enable Information for Provider Instance 
// Used on Vista and above
//
typedef struct _TRACE_ENABLE_INFO {

    ULONG       IsEnabled;
    UCHAR       Level;
    UCHAR       Reserved1;
    USHORT      LoggerId;
    ULONG       EnableProperty;
    ULONG       Reserved2;
    ULONGLONG   MatchAnyKeyword;
    ULONGLONG   MatchAllKeyword;    

} TRACE_ENABLE_INFO, *PTRACE_ENABLE_INFO;

//
// Instance Information for Provider 
// Used on Vista and above
//
typedef struct _TRACE_PROVIDER_INSTANCE_INFO {

    ULONG NextOffset;
    ULONG EnableCount;
    ULONG Pid;
    ULONG Flags;
    
} TRACE_PROVIDER_INSTANCE_INFO, *PTRACE_PROVIDER_INSTANCE_INFO;

//
// GUID Information Used on Vista and above
//
typedef struct _TRACE_GUID_INFO {
    ULONG InstanceCount;
    ULONG Reserved;
} TRACE_GUID_INFO, *PTRACE_GUID_INFO;

//
// An EVENT_TRACE consists of a fixed header (EVENT_TRACE_HEADER) and
// optionally a variable portion pointed to by MofData. The datablock
// layout of the variable portion is unknown to the Logger and must
// be obtained from WBEM CIMOM database.
//

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning (disable:4201) /* nonstandard extension used : nameless struct/union */
typedef struct _EVENT_TRACE {
    EVENT_TRACE_HEADER      Header;             // Event trace header
    ULONG                   InstanceId;         // Instance Id of this event
    ULONG                   ParentInstanceId;   // Parent Instance Id.
    GUID                    ParentGuid;         // Parent Guid;
    PVOID                   MofData;            // Pointer to Variable Data
    ULONG                   MofLength;          // Variable Datablock Length
    union {
        ULONG               ClientContext;
        ETW_BUFFER_CONTEXT  BufferContext;
    } DUMMYUNIONNAME;
} EVENT_TRACE, *PEVENT_TRACE;
#if _MSC_VER >= 1200
#pragma warning(pop)
#endif

#define EVENT_CONTROL_CODE_DISABLE_PROVIDER 0
#define EVENT_CONTROL_CODE_ENABLE_PROVIDER  1
#define EVENT_CONTROL_CODE_CAPTURE_STATE    2

#if !defined(_WMIKM_) && !defined(_NTDDK_) && !defined(_NTIFS_)


typedef struct _EVENT_RECORD
                EVENT_RECORD, *PEVENT_RECORD;

typedef struct _EVENT_TRACE_LOGFILEW
                EVENT_TRACE_LOGFILEW, *PEVENT_TRACE_LOGFILEW;

typedef struct _EVENT_TRACE_LOGFILEA
                EVENT_TRACE_LOGFILEA, *PEVENT_TRACE_LOGFILEA;

typedef ULONG (WINAPI * PEVENT_TRACE_BUFFER_CALLBACKW)
                (PEVENT_TRACE_LOGFILEW Logfile);

typedef ULONG (WINAPI * PEVENT_TRACE_BUFFER_CALLBACKA)
                (PEVENT_TRACE_LOGFILEA Logfile);

typedef VOID (WINAPI *PEVENT_CALLBACK)( PEVENT_TRACE pEvent );

typedef VOID (WINAPI *PEVENT_RECORD_CALLBACK) (PEVENT_RECORD EventRecord);

//
// Prototype for service request callback. Data providers register with WMI
// by passing a service request callback function that is called for all
// wmi requests.

typedef ULONG (
#ifndef MIDL_PASS
WINAPI
#endif
*WMIDPREQUEST)(
    __in WMIDPREQUESTCODE RequestCode,
    __in PVOID RequestContext,
    __inout ULONG *BufferSize,
    __inout PVOID Buffer
    );

#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning (disable:4201) /* nonstandard extension used : nameless struct/union */

struct _EVENT_TRACE_LOGFILEW {
    LPWSTR                  LogFileName;      // Logfile Name
    LPWSTR                  LoggerName;       // LoggerName
    LONGLONG                CurrentTime;      // timestamp of last event
    ULONG                   BuffersRead;      // buffers read to date
    union {
        // Mode of the logfile
        ULONG               LogFileMode;
        // Processing flags used on Vista and above
        ULONG               ProcessTraceMode; 
    } DUMMYUNIONNAME;
    EVENT_TRACE             CurrentEvent;     // Current Event from this stream.
    TRACE_LOGFILE_HEADER    LogfileHeader;    // logfile header structure
    PEVENT_TRACE_BUFFER_CALLBACKW             // callback before each buffer
                            BufferCallback;   // is read
    //
    // following variables are filled for BufferCallback.
    //
    ULONG                   BufferSize;
    ULONG                   Filled;
    ULONG                   EventsLost;
    //
    // following needs to be propaged to each buffer
    //
    union {
        // Callback with EVENT_TRACE
        PEVENT_CALLBACK         EventCallback;
        // Callback with EVENT_RECORD on Vista and above
        PEVENT_RECORD_CALLBACK  EventRecordCallback;
    } DUMMYUNIONNAME2;

    ULONG                   IsKernelTrace;    // TRUE for kernel logfile

    PVOID                   Context;          // reserved for internal use
};

struct _EVENT_TRACE_LOGFILEA {
    LPSTR                   LogFileName;      // Logfile Name
    LPSTR                   LoggerName;       // LoggerName
    LONGLONG                CurrentTime;      // timestamp of last event
    ULONG                   BuffersRead;      // buffers read to date
    union {
        ULONG               LogFileMode;      // Mode of the logfile
        ULONG               ProcessTraceMode; // Processing flags
    } DUMMYUNIONNAME;
    EVENT_TRACE             CurrentEvent;     // Current Event from this stream
    TRACE_LOGFILE_HEADER    LogfileHeader;    // logfile header structure
    PEVENT_TRACE_BUFFER_CALLBACKA             // callback before each buffer
                            BufferCallback;   // is read

    //
    // following variables are filled for BufferCallback.
    //
    ULONG                   BufferSize;
    ULONG                   Filled;
    ULONG                   EventsLost;
    //
    // following needs to be propaged to each buffer
    //
    union {
        PEVENT_CALLBACK         EventCallback;  // callback for every event
        PEVENT_RECORD_CALLBACK  EventRecordCallback;
    } DUMMYUNIONNAME2;


    ULONG                   IsKernelTrace;  // TRUE for kernel logfile

    PVOID                   Context;        // reserved for internal use
};
#if _MSC_VER >= 1200
#pragma warning(pop)
#endif


//
// Define generic structures
//

#if defined(_UNICODE) || defined(UNICODE)

#define PEVENT_TRACE_BUFFER_CALLBACK    PEVENT_TRACE_BUFFER_CALLBACKW
#define EVENT_TRACE_LOGFILE             EVENT_TRACE_LOGFILEW
#define PEVENT_TRACE_LOGFILE            PEVENT_TRACE_LOGFILEW
#define KERNEL_LOGGER_NAME              KERNEL_LOGGER_NAMEW
#define GLOBAL_LOGGER_NAME              GLOBAL_LOGGER_NAMEW
#define EVENT_LOGGER_NAME               EVENT_LOGGER_NAMEW

#else

#define PEVENT_TRACE_BUFFER_CALLBACK    PEVENT_TRACE_BUFFER_CALLBACKA
#define EVENT_TRACE_LOGFILE             EVENT_TRACE_LOGFILEA
#define PEVENT_TRACE_LOGFILE            PEVENT_TRACE_LOGFILEA
#define KERNEL_LOGGER_NAME              KERNEL_LOGGER_NAMEA
#define GLOBAL_LOGGER_NAME              GLOBAL_LOGGER_NAMEA
#define EVENT_LOGGER_NAME               EVENT_LOGGER_NAMEA

#endif

#ifdef __cplusplus
extern "C" {
#endif

//
// Logger control APIs
//

//
// Use the routine below to start an event trace session
//

// ULONG
// StartTrace(
//      __out PTRACEHANDLE TraceHandle,
//      __in LPTSTR InstanceName,
//      __inout PEVENT_TRACE_PROPERTIES Properties
//      );


EXTERN_C
ULONG
WMIAPI
StartTraceW(
    __out PTRACEHANDLE TraceHandle,
    __in LPCWSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

EXTERN_C
ULONG
WMIAPI
StartTraceA(
    __out PTRACEHANDLE TraceHandle,
    __in LPCSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

//
// Use the routine below to stop an event trace session
//

//
// ULONG
// StopTrace(
//      __in TRACEHANDLE TraceHandle,
//      __in_opt LPTSTR InstanceName,
//      __inout PEVENT_TRACE_PROPERTIES Properties
//      );

EXTERN_C
ULONG
WMIAPI
StopTraceW(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCWSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

EXTERN_C
ULONG
WMIAPI
StopTraceA(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );


//
// Use the routine below to query the properties of an event trace session
//

// ULONG
// QueryTrace(
//      __in TRACEHANDLE TraceHandle,
//      __in_opt LPTSTR InstanceName,
//      __inout PEVENT_TRACE_PROPERTIES Properties
//      );

EXTERN_C
ULONG
WMIAPI
QueryTraceW(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCWSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

EXTERN_C
ULONG
WMIAPI
QueryTraceA(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

//
// Use the routine below to update certain properties of an event trace session
//

// ULONG
// UpdateTrace(
//      __in PTRACEHANDLE TraceHandle,
//      __in_opt LPTSTR InstanceName,
//      __inout PEVENT_TRACE_PROPERTIES Properties
//      );

EXTERN_C
ULONG
WMIAPI
UpdateTraceW(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCWSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

EXTERN_C
ULONG
WMIAPI
UpdateTraceA(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );

//
// Use the routine below to request that all active buffers an event trace
// session be "flushed", or written out.
//

// ULONG
// FlushTrace(
//      __in TRACEHANDLE TraceHandle,
//      __in_opt LPTSTR InstanceName,
//      __inout PEVENT_TRACE_PROPERTIES Properties
//      );

#if (WINVER >= _WIN32_WINNT_WINXP)
EXTERN_C
ULONG
WMIAPI
FlushTraceW(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCWSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );
#endif

#if (WINVER >= _WIN32_WINNT_WINXP)
EXTERN_C
ULONG
WMIAPI
FlushTraceA(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties
    );
#endif

//
// Generic trace control routine
//
EXTERN_C
ULONG
WMIAPI
ControlTraceW(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCWSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties,
    __in ULONG ControlCode
    );

EXTERN_C
ULONG
WMIAPI
ControlTraceA(
    __in TRACEHANDLE TraceHandle,
    __in_opt LPCSTR InstanceName,
    __inout PEVENT_TRACE_PROPERTIES Properties,
    __in ULONG ControlCode
    );

//
// ULONG
// QueryAllTraces(
//  __out_ecount(PropertyArrayCount) PEVENT_TRACE_PROPERTIES *PropertyArray,
//  __in ULONG PropertyArrayCount,
//  __out PULONG LoggerCount
//  );
//

EXTERN_C
ULONG
WMIAPI
QueryAllTracesW(
    __out_ecount(PropertyArrayCount) PEVENT_TRACE_PROPERTIES *PropertyArray,
    __in  ULONG PropertyArrayCount,
    __out PULONG LoggerCount
    );

EXTERN_C
ULONG
WMIAPI
QueryAllTracesA(
    __out_ecount(PropertyArrayCount) PEVENT_TRACE_PROPERTIES *PropertyArray,
    __in  ULONG PropertyArrayCount,
    __out PULONG LoggerCount
    );


//
// Data Provider Enable APIs
//

EXTERN_C
ULONG
WMIAPI
EnableTrace(
    __in ULONG Enable,
    __in ULONG EnableFlag,
    __in ULONG EnableLevel,
    __in LPCGUID ControlGuid,
    __in TRACEHANDLE TraceHandle
    );


typedef struct _EVENT_FILTER_DESCRIPTOR
               EVENT_FILTER_DESCRIPTOR, *PEVENT_FILTER_DESCRIPTOR;

#if (WINVER >= _WIN32_WINNT_VISTA)
EXTERN_C
ULONG
WMIAPI
EnableTraceEx(
    __in LPCGUID ProviderId,
    __in_opt LPCGUID SourceId,
    __in TRACEHANDLE TraceHandle,
    __in ULONG IsEnabled,
    __in UCHAR Level,
    __in ULONGLONG MatchAnyKeyword,
    __in ULONGLONG MatchAllKeyword,
    __in ULONG EnableProperty,
    __in_opt PEVENT_FILTER_DESCRIPTOR EnableFilterDesc
    );
#endif 

#define ENABLE_TRACE_PARAMETERS_VERSION 1

typedef struct _ENABLE_TRACE_PARAMETERS {
    ULONG                    Version;
    ULONG                    EnableProperty;
    ULONG                    ControlFlags;
    GUID                     SourceId;    
    PEVENT_FILTER_DESCRIPTOR EnableFilterDesc;
} ENABLE_TRACE_PARAMETERS, *PENABLE_TRACE_PARAMETERS;

#if (WINVER >= _WIN32_WINNT_WIN7)
EXTERN_C
ULONG
WMIAPI
EnableTraceEx2(
    __in TRACEHANDLE TraceHandle,
    __in LPCGUID ProviderId,
    __in ULONG ControlCode,
    __in UCHAR Level,
    __in ULONGLONG MatchAnyKeyword,
    __in ULONGLONG MatchAllKeyword,
    __in ULONG Timeout,
    __in_opt PENABLE_TRACE_PARAMETERS EnableParameters
    );
#endif

typedef enum _TRACE_QUERY_INFO_CLASS {
    TraceGuidQueryList,
    TraceGuidQueryInfo,
    TraceGuidQueryProcess,
    TraceStackTracingInfo,   // Win7
    MaxTraceSetInfoClass
} TRACE_QUERY_INFO_CLASS, TRACE_INFO_CLASS;

#if (WINVER >= _WIN32_WINNT_VISTA)
EXTERN_C
ULONG
WMIAPI
EnumerateTraceGuidsEx(
    __in TRACE_QUERY_INFO_CLASS TraceQueryInfoClass,
    __in_bcount_opt(InBufferSize) PVOID InBuffer,
    __in ULONG InBufferSize,
    __out_bcount_opt(OutBufferSize) PVOID OutBuffer,
    __in ULONG OutBufferSize,
    __out PULONG ReturnLength
    );
#endif

typedef struct _CLASSIC_EVENT_ID {
    GUID  EventGuid;
    UCHAR Type;
    UCHAR Reserved[7];
} CLASSIC_EVENT_ID, *PCLASSIC_EVENT_ID;

#if (WINVER >= _WIN32_WINNT_WIN7)
EXTERN_C
ULONG
WMIAPI
TraceSetInformation(
    __in TRACEHANDLE SessionHandle,
    __in TRACE_INFO_CLASS InformationClass,
    __in_bcount(InformationLength) PVOID TraceInformation,
    __in ULONG InformationLength
    );
#endif

//
// Data Provider APIs
//

EXTERN_C
ULONG
WMIAPI
CreateTraceInstanceId(
    __in HANDLE RegHandle,
    __inout PEVENT_INSTANCE_INFO InstInfo
    );

//
// Use the routine below to generate and record an event trace
//

EXTERN_C
ULONG
WMIAPI
TraceEvent(
    __in TRACEHANDLE TraceHandle,
    __in PEVENT_TRACE_HEADER EventTrace
    );

EXTERN_C
ULONG
WMIAPI
TraceEventInstance(
    __in TRACEHANDLE TraceHandle,
    __in PEVENT_INSTANCE_HEADER EventTrace,
    __in PEVENT_INSTANCE_INFO InstInfo,
    __in_opt PEVENT_INSTANCE_INFO ParentInstInfo
    );

//
// Use the routine below to register a guid for tracing.
//

//
// ULONG
// RegisterTraceGuids(
//  __in WMIDPREQUEST RequestAddress,
//  __in_opt PVOID RequestContext,
//  __in LPCGUID ControlGuid,
//  __in ULONG GuidCount,
//  __in_ecount_opt(GuidCount) PTRACE_GUID_REGISTRATION TraceGuidReg,
//  __in_opt LPCTSTR MofImagePath,
//  __in_opt LPCTSTR MofResourceName,
//  __out PTRACEHANDLE RegistrationHandle
//  );
//

EXTERN_C
ULONG
WMIAPI
RegisterTraceGuidsW(
    __in WMIDPREQUEST RequestAddress,
    __in_opt PVOID RequestContext,
    __in LPCGUID ControlGuid,
    __in ULONG GuidCount,
    __in_ecount_opt(GuidCount) PTRACE_GUID_REGISTRATION TraceGuidReg,
    __in_opt LPCWSTR MofImagePath,
    __in_opt LPCWSTR MofResourceName,
    __out PTRACEHANDLE RegistrationHandle
    );

EXTERN_C
ULONG
WMIAPI
RegisterTraceGuidsA(
    __in WMIDPREQUEST RequestAddress,
    __in_opt PVOID RequestContext,
    __in LPCGUID ControlGuid,
    __in ULONG GuidCount,
    __in_ecount_opt(GuidCount) PTRACE_GUID_REGISTRATION TraceGuidReg,
    __in_opt LPCSTR MofImagePath,
    __in_opt LPCSTR MofResourceName,
    __out PTRACEHANDLE RegistrationHandle
    );

#if (WINVER >= _WIN32_WINNT_WINXP)
EXTERN_C
ULONG
WMIAPI
EnumerateTraceGuids(
    __inout_ecount(PropertyArrayCount) PTRACE_GUID_PROPERTIES *GuidPropertiesArray,
    __in ULONG PropertyArrayCount,
    __out PULONG GuidCount
    );
#endif 

EXTERN_C
ULONG
WMIAPI
UnregisterTraceGuids(
    __in TRACEHANDLE RegistrationHandle
    );

EXTERN_C
TRACEHANDLE
WMIAPI
GetTraceLoggerHandle(
    __in PVOID Buffer
    );

EXTERN_C
UCHAR
WMIAPI
GetTraceEnableLevel(
    __in TRACEHANDLE TraceHandle
    );

EXTERN_C
ULONG
WMIAPI
GetTraceEnableFlags(
    __in TRACEHANDLE TraceHandle
    );

//
// Data Consumer APIs and structures start here
//

//
// TRACEHANDLE
// OpenTrace(
//  __inout PEVENT_TRACE_LOGFILE Logfile
//  );
//

EXTERN_C
TRACEHANDLE
WMIAPI
OpenTraceA(
    __inout PEVENT_TRACE_LOGFILEA Logfile
    );

EXTERN_C
TRACEHANDLE
WMIAPI
OpenTraceW(
    __inout PEVENT_TRACE_LOGFILEW Logfile
    );

EXTERN_C
ULONG
WMIAPI
ProcessTrace(
    __in_ecount(HandleCount) PTRACEHANDLE HandleArray,
    __in ULONG HandleCount,
    __in_opt LPFILETIME StartTime,
    __in_opt LPFILETIME EndTime
    );

EXTERN_C
ULONG
WMIAPI
CloseTrace(
    __in TRACEHANDLE TraceHandle
    );

EXTERN_C
ULONG
WMIAPI
SetTraceCallback(
    __in LPCGUID pGuid,
    __in PEVENT_CALLBACK EventCallback
    );

EXTERN_C
ULONG
WMIAPI
RemoveTraceCallback (
    __in LPCGUID pGuid
    );

//
// The routines for tracing Messages follow
//
EXTERN_C
ULONG
__cdecl
TraceMessage(
    __in TRACEHANDLE LoggerHandle,
    __in ULONG MessageFlags,
    __in LPCGUID MessageGuid,
    __in USHORT MessageNumber,
    ...
);

EXTERN_C
ULONG
TraceMessageVa(
    __in TRACEHANDLE LoggerHandle,
    __in ULONG MessageFlags,
    __in LPCGUID MessageGuid,
    __in USHORT MessageNumber,
    __in va_list MessageArgList
);


#ifdef __cplusplus
}       // extern "C"
#endif


#define INVALID_PROCESSTRACE_HANDLE ((TRACEHANDLE)INVALID_HANDLE_VALUE)

//
//
// Define the encoding independent routines
//

#if defined(UNICODE) || defined(_UNICODE)
#define RegisterTraceGuids      RegisterTraceGuidsW
#define StartTrace              StartTraceW
#define ControlTrace            ControlTraceW
#if defined(__TRACE_W2K_COMPATIBLE)
#define StopTrace(a,b,c)        ControlTraceW((a),(b),(c), \
                                        EVENT_TRACE_CONTROL_STOP)
#define QueryTrace(a,b,c)       ControlTraceW((a),(b),(c), \
                                        EVENT_TRACE_CONTROL_QUERY)
#define UpdateTrace(a,b,c)      ControlTraceW((a),(b),(c), \
                                        EVENT_TRACE_CONTROL_UPDATE)
#else
#define StopTrace               StopTraceW
#define QueryTrace              QueryTraceW
#define UpdateTrace             UpdateTraceW
#endif
#if (NTDDI_VERSION >= NTDDI_WINXP)
#define FlushTrace              FlushTraceW
#endif // NTDDI_VERSION >= NTDDI_WINXP
#define QueryAllTraces          QueryAllTracesW
#define OpenTrace               OpenTraceW
#else
#define RegisterTraceGuids      RegisterTraceGuidsA
#define StartTrace              StartTraceA
#define ControlTrace            ControlTraceA
#if defined(__TRACE_W2K_COMPATIBLE)
#define StopTrace(a,b,c)        ControlTraceA((a),(b),(c), \
                                        EVENT_TRACE_CONTROL_STOP)
#define QueryTrace(a,b,c)       ControlTraceA((a),(b),(c), \
                                        EVENT_TRACE_CONTROL_QUERY)
#define UpdateTrace(a,b,c)      ControlTraceA((a),(b),(c), \
                                        EVENT_TRACE_CONTROL_UPDATE)
#else
#define StopTrace               StopTraceA
#define QueryTrace              QueryTraceA
#define UpdateTrace             UpdateTraceA
#endif
#if (NTDDI_VERSION >= NTDDI_WINXP)
#define FlushTrace              FlushTraceA
#endif // NTDDI_VERSION >= NTDDI_WINXP
#define QueryAllTraces          QueryAllTracesA
#define OpenTrace               OpenTraceA
#endif  // UNICODE

#endif /* _WMIKM_  && _NTDDK_ */

#endif // WINNT
#endif /* _EVNTRACE_ */

