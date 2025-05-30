
/*++

Copyright 2004 (c) Microsoft Corporation. All rights reserved.

Module Name:

    evntcons.h

Abstract:

    This defines the event consumer API

Revision History:

    Insung Park (insungp) 26-Aug-2004 
        Created the file.

--*/

#ifndef _EVNTCONS_H_
#define _EVNTCONS_H_

#pragma once
#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


#include <wmistr.h>
#include <evntrace.h>
#include <evntprov.h>

#ifdef __cplusplus
extern "C" {
#endif

#if defined (_MSC_VER)
#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning(disable:4201) // nonstandard extension used : nameless struct/union
#pragma warning(disable:4214) // nonstandard extension used : bit field types other then int
#endif

#define EVENT_HEADER_EXT_TYPE_RELATED_ACTIVITYID   0x0001
#define EVENT_HEADER_EXT_TYPE_SID                  0x0002
#define EVENT_HEADER_EXT_TYPE_TS_ID                0x0003
#define EVENT_HEADER_EXT_TYPE_INSTANCE_INFO        0x0004
#define EVENT_HEADER_EXT_TYPE_STACK_TRACE32        0x0005
#define EVENT_HEADER_EXT_TYPE_STACK_TRACE64        0x0006
#define EVENT_HEADER_EXT_TYPE_PEBS_INDEX           0x0007
#define EVENT_HEADER_EXT_TYPE_PMC_COUNTERS         0x0008
#define EVENT_HEADER_EXT_TYPE_MAX                  0x0009

#ifndef EVENT_HEADER_EXTENDED_DATA_ITEM_DEF
#define EVENT_HEADER_EXTENDED_DATA_ITEM_DEF
typedef struct _EVENT_HEADER_EXTENDED_DATA_ITEM {

    USHORT      Reserved1;                      // Reserved for internal use
    USHORT      ExtType;                        // Extended info type 
    struct {
        USHORT  Linkage             :  1;       // Indicates additional extended 
                                                // data item
        USHORT  Reserved2           : 15;
    };
    USHORT      DataSize;                       // Size of extended info data
    ULONGLONG   DataPtr;                        // Pointer to extended info data

} EVENT_HEADER_EXTENDED_DATA_ITEM, *PEVENT_HEADER_EXTENDED_DATA_ITEM;
#endif

//
// Structures for extended items.
//

typedef struct _EVENT_EXTENDED_ITEM_INSTANCE {
    ULONG InstanceId;
    ULONG ParentInstanceId;
    GUID  ParentGuid;
} EVENT_EXTENDED_ITEM_INSTANCE, *PEVENT_EXTENDED_ITEM_INSTANCE;

typedef struct _EVENT_EXTENDED_ITEM_RELATED_ACTIVITYID {
    GUID  RelatedActivityId;
} EVENT_EXTENDED_ITEM_RELATED_ACTIVITYID, *PEVENT_EXTENDED_ITEM_RELATED_ACTIVITYID;

typedef struct _EVENT_EXTENDED_ITEM_TS_ID {
    ULONG SessionId;
} EVENT_EXTENDED_ITEM_TS_ID, *PEVENT_EXTENDED_ITEM_TS_ID;

typedef struct _EVENT_EXTENDED_ITEM_STACK_TRACE32 {
    ULONG64 MatchId;
    ULONG   Address[ANYSIZE_ARRAY];
} EVENT_EXTENDED_ITEM_STACK_TRACE32, *PEVENT_EXTENDED_ITEM_STACK_TRACE32;
    
typedef struct _EVENT_EXTENDED_ITEM_STACK_TRACE64 {
    ULONG64 MatchId;
    ULONG64 Address[ANYSIZE_ARRAY];
} EVENT_EXTENDED_ITEM_STACK_TRACE64, *PEVENT_EXTENDED_ITEM_STACK_TRACE64;

typedef struct _EVENT_EXTENDED_ITEM_PEBS_INDEX {
    ULONG64 PebsIndex;
} EVENT_EXTENDED_ITEM_PEBS_INDEX, *PEVENT_EXTENDED_ITEM_PEBS_INDEX;

typedef struct _EVENT_EXTENDED_ITEM_PMC_COUNTERS {
    ULONG64 Counter[ANYSIZE_ARRAY];
} EVENT_EXTENDED_ITEM_PMC_COUNTERS, *PEVENT_EXTENDED_ITEM_PMC_COUNTERS;

#define EVENT_HEADER_PROPERTY_XML               0x0001
#define EVENT_HEADER_PROPERTY_FORWARDED_XML     0x0002
#define EVENT_HEADER_PROPERTY_LEGACY_EVENTLOG   0x0004

#define EVENT_HEADER_FLAG_EXTENDED_INFO         0x0001
#define EVENT_HEADER_FLAG_PRIVATE_SESSION       0x0002
#define EVENT_HEADER_FLAG_STRING_ONLY           0x0004
#define EVENT_HEADER_FLAG_TRACE_MESSAGE         0x0008
#define EVENT_HEADER_FLAG_NO_CPUTIME            0x0010
#define EVENT_HEADER_FLAG_32_BIT_HEADER         0x0020
#define EVENT_HEADER_FLAG_64_BIT_HEADER         0x0040
#define EVENT_HEADER_FLAG_CLASSIC_HEADER        0x0100
#define EVENT_HEADER_FLAG_PROCESSOR_INDEX       0x0200

#ifndef EVENT_HEADER_DEF
#define EVENT_HEADER_DEF
typedef struct _EVENT_HEADER {

    USHORT              Size;                   // Event Size
    USHORT              HeaderType;             // Header Type
    USHORT              Flags;                  // Flags
    USHORT              EventProperty;          // User given event property
    ULONG               ThreadId;               // Thread Id
    ULONG               ProcessId;              // Process Id
    LARGE_INTEGER       TimeStamp;              // Event Timestamp
    GUID                ProviderId;             // Provider Id
    EVENT_DESCRIPTOR    EventDescriptor;        // Event Descriptor
    union {
        struct {
            ULONG       KernelTime;             // Kernel Mode CPU ticks
            ULONG       UserTime;               // User mode CPU ticks
        } DUMMYSTRUCTNAME;
        ULONG64         ProcessorTime;          // Processor Clock 
                                                // for private session events
    } DUMMYUNIONNAME;
    GUID                ActivityId;             // Activity Id

} EVENT_HEADER, *PEVENT_HEADER;
#endif

#ifndef EVENT_RECORD_DEF
#define EVENT_RECORD_DEF
typedef struct _EVENT_RECORD {

    EVENT_HEADER        EventHeader;            // Event header
    ETW_BUFFER_CONTEXT  BufferContext;          // Buffer context
    USHORT              ExtendedDataCount;      // Number of extended
                                                // data items
    USHORT              UserDataLength;         // User data length
    PEVENT_HEADER_EXTENDED_DATA_ITEM            // Pointer to an array of 
                        ExtendedData;           // extended data items                                               
    PVOID               UserData;               // Pointer to user data
    PVOID               UserContext;            // Context from OpenTrace
} EVENT_RECORD, *PEVENT_RECORD;

typedef const EVENT_RECORD *PCEVENT_RECORD;
#endif

#define EVENT_ENABLE_PROPERTY_SID                   0x00000001
#define EVENT_ENABLE_PROPERTY_TS_ID                 0x00000002
#define EVENT_ENABLE_PROPERTY_STACK_TRACE           0x00000004

//
// Consumer API
//

#define PROCESS_TRACE_MODE_REAL_TIME                0x00000100
#define PROCESS_TRACE_MODE_RAW_TIMESTAMP            0x00001000
#define PROCESS_TRACE_MODE_EVENT_RECORD             0x10000000

FORCEINLINE
ULONG
GetEventProcessorIndex (
    _In_ PCEVENT_RECORD EventRecord
    )
{
    if ((EventRecord->EventHeader.Flags & EVENT_HEADER_FLAG_PROCESSOR_INDEX) != 0) {
        return EventRecord->BufferContext.ProcessorIndex;

    } else {
        return EventRecord->BufferContext.ProcessorNumber;
    }
}

//
// Event Security APIs
//

typedef enum {
    EventSecuritySetDACL,
    EventSecuritySetSACL,
    EventSecurityAddDACL,
    EventSecurityAddSACL,
    EventSecurityMax
} EVENTSECURITYOPERATION;

#if (WINVER >= _WIN32_WINNT_LONGHORN)
ULONG
EVNTAPI
EventAccessControl(
    IN LPGUID Guid,
    IN ULONG Operation,
    IN PSID Sid,
    IN ULONG Rights,
    IN BOOLEAN AllowOrDeny
    );
#endif 

#if (WINVER >= _WIN32_WINNT_LONGHORN)
ULONG
EVNTAPI
EventAccessQuery(
    _In_ LPGUID Guid,
    _Out_writes_bytes_opt_(*BufferSize) PSECURITY_DESCRIPTOR Buffer,
    _Inout_ PULONG BufferSize
    );
#endif

#if (WINVER >= _WIN32_WINNT_LONGHORN)
ULONG
EVNTAPI
EventAccessRemove(
    IN LPGUID Guid
    );
#endif 

#if defined (_MSC_VER)
#if _MSC_VER >= 1200
#pragma warning(pop)          // restore 4201,4214
#else
#pragma warning(default:4201) // nonstandard extension used : nameless struct/union
#pragma warning(default:4214) // nonstandard extension used : bit field types other then int
#endif
#endif 

#ifdef __cplusplus
}
#endif

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif
