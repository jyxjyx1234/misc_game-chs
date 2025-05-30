/*++

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    mslldp.h

Abstract:

    This module defines the LLDP NPI

Revision History:

--*/


#ifndef MSLLDP_H_
#define MSLLDP_H_

#if (NTDDI_VERSION >= NTDDI_WIN8)

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus


//
// Use this value in LLDP_TLV.Type to specify an organizationally-specific TLV
//
#define LLDP_TLV_TYPE_ORGANIZATIONALLY_SPECIFIC (0x7f)


#ifndef ETH_LENGTH_OF_ADDRESS
#  define ETH_LENGTH_OF_ADDRESS 6
#endif//ETH_LENGTH_OF_ADDRESS



//
// When setting the current configuration on an MSAP, you can skip over a field
// by setting its value to MSAP_CONFIG_NO_CHANGE.  Use with LLDP_SET_CONFIG.
//
#define MSAP_CONFIG_NO_CHANGE                   ((ULONG)(-1))

//
// When setting TLVs on the local MIB, you can remove an existing TLV by setting
// a TLV with its length set to LLDP_DELETE_TLV.  Use with LLDP_SET_TLVS.
//
#define LLDP_DELETE_TLV                         ((USHORT)(-1))


//
// These flags are passed to your LLDP_MSAP_CHANGE_NOTIFICATION_HANDLER to
// provide a hint as to what has changed.
//

// A TLV in the local MIB has changed
#define LLDP_SOMETHING_CHANGED_LOCAL            (0x00000001)
// A TLV in the remote MIB has changed
#define LLDP_SOMETHING_CHANGED_REMOTE           (0x00000002)
// An administrative configuration has changed
#define LLDP_SOMETHING_CHANGED_CONFIG           (0x00000004)
// The local status has changed
#define LLDP_SOMETHING_CHANGED_STATUS           (0x00000008)
// A remote MIB was added (a new neighbor was discovered)
#define LLDP_SOMETHING_CHANGED_ADDED            (0x00000010)
// A remote MIB was removed, due to timeout
#define LLDP_SOMETHING_CHANGED_REMOVED_TIMEOUT  (0x00000020)
// A remote MIB was removed, due to a graceful shutdown request
#define LLDP_SOMETHING_CHANGED_REMOVED_SHUTDOWN (0x00000040)
// A remote MIB was removed for any reason
#define LLDP_SOMETHING_CHANGED_REMOVED          \
    (LLDP_SOMETHING_CHANGED_REMOVED_SHUTDOWN |  \
     LLDP_SOMETHING_CHANGED_REMOVED_TIMEOUT)

//
// This flag is specified for a special notification that is always sent as
// soon as an MSAP is opened.  This notification provides a way for an LLDP
// client to "catch up" to the current LLDP MIBs easily.
//
#define LLDP_MSAP_INITIAL_NOTIFICATION          (0x40000000)

//
// This flag is special.  If your LLDP_MSAP_CHANGE_NOTIFICATION_HANDLER receives
// this flag, it must close the MSAP immediately.
//
#define LLDP_MSAP_SHUTDOWN                      (0x80000000)



typedef struct _LLDP_TLV_TYPE_INFO
{
    // LLDP Type, per protocol specification
    USHORT Type;

    union {
        // Oui and Subtype are only valid iff the TLV Type is
        // LLDP_TLV_TYPE_ORGANIZATIONALLY_SPECIFIC.
        struct {
            UCHAR Oui[3];
            UCHAR Subtype;
        } DUMMYSTRUCTNAME;

        ULONG OuiAndSubtype;
    } DUMMYUNIONNAME;

} LLDP_TLV_TYPE_INFO, *PLLDP_TLV_TYPE_INFO;


typedef struct _LLDP_TLV
{
    LLDP_TLV_TYPE_INFO Type;

    // Length of the data associated with this TLV.
    USHORT Length;

    // Offset from the start of the containing structure to the data.
    // Can be zero, if Length is also zero.
    ULONG Offset;

    // Must be zero.
    ULONG Reserved;
} LLDP_TLV, *PLLDP_TLV;


typedef struct _LLDP_TLV_ARRAY
{
    ULONG NumEntries;

    _Field_size_(NumEntries)
    LLDP_TLV Tlvs[ANYSIZE_ARRAY];

} LLDP_TLV_ARRAY, *PLLDP_TLV_ARRAY;

typedef enum _LLDP_MIB_TYPE
{
    LldpLocalMib = 1,
    LldpRemoteMib = 2,
} LLDP_MIB_TYPE, *PLLDP_MIB_TYPE;

typedef enum _LLDP_SCOPE
{
    LldpNearestNeighbor = 1,
    LldpNearestNonTpmrBridge = 2,
    LldpNearestCustomerBridge = 3,

    LldpDefaultScope = LldpNearestNeighbor
} LLDP_SCOPE, *PLLDP_SCOPE;

typedef struct _LLDP_MSAP
{
    NET_LUID NetLuid;
    LLDP_SCOPE Scope;

    _Reserved_
    ULONG Reserved;
} LLDP_MSAP, *PLLDP_MSAP;

typedef enum _LLDP_ADMIN_STATUS
{
    LldpDisabled = 0,
    LldpEnabledTxOnly = 1,
    LldpEnabledRxOnly = 2,
    LldpEnabledRxTx = 3,
} LLDP_ADMIN_STATUS, *PLLDP_ADMIN_STATUS;



typedef struct _LLDP_ADMIN_CONFIG
{
    ULONG Revision; // Set to LLDP_ADMIN_CONFIG_REVISION_1
    SIZE_T Size;    // Set to sizeof this structure
    LLDP_ADMIN_STATUS AdminStatus;
    ULONG MsgTxHold;
    ULONG MsgTxInterval;
    ULONG ReinitDelay;
    ULONG TxCreditMax;
    ULONG MsgFastTx;
    ULONG TxFastInit;
    BOOLEAN Persistent;
} LLDP_ADMIN_CONFIG, *PLLDP_ADMIN_CONFIG;

#define LLDP_ADMIN_CONFIG_REVISION_1 1
#define LLDP_SIZEOF_ADMIN_CONFIG_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(LLDP_ADMIN_CONFIG, TxFastInit)


typedef struct _LLDP_CURRENT_STATUS
{
    IN  ULONG Revision; // Set to LLDP_CURRENT_STATUS_REVISION_1
    IN  SIZE_T Size;    // Set to sizeof this structure
    OUT BOOLEAN RemoteNeighborAvailable : 1;
    OUT BOOLEAN TooManyNeighbors        : 1;

    // FALSE if the NDIS binding is not started (e.g., is paused)
    OUT BOOLEAN NetworkStarted          : 1;
    // FALSE unless link state = MediaConnectStateConnected
    OUT BOOLEAN NetworkMediaConnected   : 1;
    // FALSE if the NIC (or system) is in low power
    OUT BOOLEAN NetworkPowerActive      : 1;
    // FALSE if the network interface is not IfOperStatusUp
    OUT BOOLEAN NetworkOperStatusUp     : 1;

    OUT UCHAR CurrentLocalMacAddress[ETH_LENGTH_OF_ADDRESS];
    OUT UCHAR CurrentRemoteMacAddress[ETH_LENGTH_OF_ADDRESS];
} LLDP_CURRENT_STATUS, *PLLDP_CURRENT_STATUS;

#define LLDP_CURRENT_STATUS_REVISION_1 1
#define LLDP_SIZEOF_CURRENT_STATUS_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(LLDP_CURRENT_STATUS, CurrentRemoteMacAddress)


typedef struct _LLDP_STATISTICS
{
    ULONG Revision; // Set to LLDP_STATISTICS_REVISION_1
    SIZE_T Size;    // Set to sizeof this structure
    ULONG StatsAgeoutsTotal;
    ULONG StatsFramesDiscardedTotal;
    ULONG StatsFramesInErrorsTotal;
    ULONG StatsFramesInTotal;
    ULONG StatsFramesOutTotal;
} LLDP_STATISTICS, *PLLDP_STATISTICS;

#define LLDP_STATISTICS_REVISION_1 1
#define LLDP_SIZEOF_STATISTICS_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(LLDP_STATISTICS, StatsFramesOutTotal)


DECLARE_HANDLE(HMSAP);



//
// The NPIID of the MSLLDP NMR provider.  Use with NmrRegisterClient in
// ClientCharacteristics->ClientRegistrationInstance.NpiId.
//
DECLSPEC_SELECTANY GUID NPI_LLDP_INTERFACE_ID =
    {0x46af9f9d, 0x440d, 0x4c09, 0xbc, 0xab, 0xc8, 0x8e, 0xd9, 0xfd, 0xaa, 0x9b};



//
// The client characteristics of this NMR client.  Use with NmrRegisterClient in
// ClientCharacteristics->ClientRegistrationInstance.NpiSpecificCharacteristics.
//
typedef struct _NPI_LLDP_CLIENT_CHARACTERISTICS
{
    USHORT Version; // Set to LLDP_CLIENT_CHARACTERISTICS_REVISION_1
    USHORT Length;  // Set to sizeof(this)
} NPI_LLDP_CLIENT_CHARACTERISTICS, *PNPI_LLDP_CLIENT_CHARACTERISTICS;

#define LLDP_CLIENT_CHARACTERISTICS_REVISION_1 1
#define LLDP_SIZEOF_CLIENT_CHARACTERISTICS_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(NPI_LLDP_CLIENT_CHARACTERISTICS, Length)


//
// The provider characteristics of this NMR provider.  During your
// ClientAttachProvider handler, you receive a copy of this structure at
// ProviderRegistrationInstance->NpiSpecificCharacteristics.
//
// Do not fail attach if the Version is greater than the version the client is
// compiled with -- future revisions of the provider will be compatible with
// any version of the client.
//
typedef struct _NPI_LLDP_PROVIDER_CHARACTERISTICS
{
    USHORT Version; // LLDP_PROVIDER_CHARACTERISTICS_REVISION_1 or higher
    USHORT Length;  // At least LLDP_SIZEOF_PROVIDER_CHARACTERISTICS_REVISION_1
} NPI_LLDP_PROVIDER_CHARACTERISTICS, *PNPI_LLDP_PROVIDER_CHARACTERISTICS;

#define LLDP_PROVIDER_CHARACTERISTICS_REVISION_1 1
#define LLDP_SIZEOF_PROVIDER_CHARACTERISTICS_REVISION_1 \
    RTL_SIZEOF_THROUGH_FIELD(NPI_LLDP_PROVIDER_CHARACTERISTICS, Length)


#ifndef MSLLDP_NO_DDI


typedef
_IRQL_requires_same_
_IRQL_requires_(PASSIVE_LEVEL)
VOID
LLDP_MSAP_CHANGE_NOTIFICATION_HANDLER (
    _In_ HMSAP Msap,
    _In_ ULONG Flags,
    _In_opt_ PVOID ClientBindingContext,
    _In_opt_ PVOID NotificationContext
    );
/*++

Routine Description:

    This routine is called by the LLDP protocol driver in response to a change
    to the Remote System MIB. The routine will be called once for each of the
    client's opened MSAP handles.

Arguments:

    Msap - Supplies the client's handle to the changing MSAP.

    Flags - Supplies bit flags that indicate the nature of the change.  See the
        LLDP_SOMETHING_CHANGED_* flags for possible values of this parameter.

        Clients must check for and handle the LLDP_MSAP_SHUTDOWN flag.

    ClientBindingContext - Supplies the context that was set when binding to
        the LLDP NMR provider in NmrClientAttachProvider.

    NotificationContext - Supplies the context pointer supplied when the
        client opened the MSAP in LLDP_OPEN_MSAP.

Return Value:

    None.

IRQL Requirements:

    Called at PASSIVE_LEVEL.

--*/

typedef LLDP_MSAP_CHANGE_NOTIFICATION_HANDLER *
        PLLDP_MSAP_CHANGE_NOTIFICATION_HANDLER;


typedef
_IRQL_requires_same_
_IRQL_requires_(PASSIVE_LEVEL)
VOID
LLDP_MSAP_CREATE_NOTIFICATION_HANDLER (
    _In_ PLLDP_MSAP Msap,
    _In_opt_ PVOID ClientBindingContext
    );
/*++

Routine Description:

    This routine is called by the LLDP protocol driver when a new LLDP agent
    is started

Arguments:

    Msap - The identifier of the newly-started agent

    ClientBindingContext - Supplies the context that was set when binding to
        the LLDP NMR provider in NmrClientAttachProvider.

Return Value:

    None.

IRQL Requirements:

    Called at PASSIVE_LEVEL.

--*/

typedef LLDP_MSAP_CREATE_NOTIFICATION_HANDLER *
        PLLDP_MSAP_CREATE_NOTIFICATION_HANDLER;


typedef struct _LLDP_CLIENT_DISPATCH
{
    PLLDP_MSAP_CHANGE_NOTIFICATION_HANDLER MsapNotifyChange  OPTIONAL;
    PLLDP_MSAP_CREATE_NOTIFICATION_HANDLER MsapNotifyCreate  OPTIONAL;

} LLDP_CLIENT_DISPATCH, *PLLDP_CLIENT_DISPATCH;


typedef
_When_(BufferSize > 0, _At_(MsapArray, _Pre_notnull_))
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_ENUMERATE_MSAPS (
    _In_ PVOID ClientBindingContext,
    _Out_writes_to_opt_(BufferSize, *MsapCount) PLLDP_MSAP MsapArray,
    _In_ SIZE_T BufferSize,
    _Out_ SIZE_T* MsapCount
    );
/*++

Routine Description:

    This routine enumerates all active MSAPs on which the LLDP protocol is
    available

Arguments:

    ProviderBindingContext - NMR context received from NmrClientAttachProvider

    MsapArray - Receives an array of LLDP_MSAPs for each LLDP agent

    BufferSize - The maximum number of elements in MsapArray

    MsapCount - The number of LLDP_MSAPs written to MsapArray

Return Value:

    NTSTATUS

Notes:

    PortList may be NULL if BufferSize is zero.  The API simply returns the
    number of active ports in *MsapCount.

--*/

typedef LLDP_ENUMERATE_MSAPS *PLLDP_ENUMERATE_MSAPS;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_OPEN_MSAP (
    _In_ PVOID ClientBindingContext,
    _In_ PLLDP_MSAP Msap,
    _In_opt_ PVOID NotificationContext,
    _Out_ HMSAP* MsapHandle
    );
/*++

Routine Description:

    This routine opens a handle to an MSAP, identified by its NET_LUID

Arguments:

    ProviderBindingContext - NMR context received from NmrClientAttachProvider

    Msap - An LLDP_MSAP describing the LLDP agent to open

    NotificationContext - Context for LLDP_MSAP_CHANGE_NOTIFICATION_HANDLER

    MsapHandle - Receives an opaque handle to the open port

Return Value:

    NTSTATUS

Notes:

    The LLDP_MSAP_CHANGE_NOTIFICATION_HANDLER will begin receiving notifications
    immediately, possibly before this routine has finished returning.

--*/

typedef LLDP_OPEN_MSAP *PLLDP_OPEN_MSAP;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
VOID
LLDP_CLOSE_MSAP (
    _In_ HMSAP MsapHandle
    );
/*++

Routine Description:

    This routine closes an MSAP opened with LLDP_OPEN_MSAP

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

Return Value:

    None

--*/

typedef LLDP_CLOSE_MSAP *PLLDP_CLOSE_MSAP;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_QUERY_CONFIG (
    _In_ HMSAP MsapHandle,
    _Inout_ PLLDP_ADMIN_CONFIG Config
    );
/*++

Routine Description:

    This routine queries the administrative configuration of an MSAP

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

    Config - Receives a copy of the current administrative configuration
        On entry, Config->Revision must be LLDP_ADMIN_CONFIG_REVISION_1
        On entry, Config->Size must be >= LLDP_SIZEOF_ADMIN_CONFIG_REVISION_1

Return Value:

    NTSTATUS - fails only with invalid parameters

--*/

typedef LLDP_QUERY_CONFIG *PLLDP_QUERY_CONFIG;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_SET_CONFIG (
    _In_ HMSAP MsapHandle,
    _In_ PLLDP_ADMIN_CONFIG Config
    );
/*++

Routine Description:

    This routine sets the administrative configuration of an MSAP

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

    Config - New parameters to set on the MSAP
        On entry, Config->Revision must be LLDP_ADMIN_CONFIG_REVISION_1
        On entry, Config->Size must be >= LLDP_SIZEOF_ADMIN_CONFIG_REVISION_1

        Any field set to the value MSAP_CONFIG_NO_CHANGE will be ignored.

Return Value:

    STATUS_IMPLEMENTATION_LIMIT: At least one setting was outside the
        permitted range of values.  The remaining setting(s) may have been
        partially applied.

--*/

typedef LLDP_SET_CONFIG *PLLDP_SET_CONFIG;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_QUERY_STATUS (
    _In_ HMSAP MsapHandle,
    _Inout_ PLLDP_CURRENT_STATUS Status
    );
/*++

Routine Description:

    This routine queries the current status of an MSAP

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

    CurrentStatus - Receives the current status of the port.
        On entry, CurrentStatus->Revision must be LLDP_CURRENT_STATUS_REVISION_1
        CurrentStatus->Size must be >= LLDP_SIZEOF_CURRENT_STATUS_REVISION_1

Return Value:

    NTSTATUS - only possible failure is invalid parameters.

--*/

typedef LLDP_QUERY_STATUS *PLLDP_QUERY_STATUS;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_QUERY_STATISTICS (
    _In_ HMSAP MsapHandle,
    _Inout_ PLLDP_STATISTICS Statistics
    );
/*++

Routine Description:

    This routine queries statistical counters on an MSAP

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

    Statistics - Receives a snapshot of the port statistics.
        On entry, Statistics->Revision must be LLDP_STATISTICS_REVISION_1
        Statistics->Size must be >= LLDP_SIZEOF_STATISTICS_REVISION_1

Return Value:

    NTSTATUS - only possible failure is invalid parameters.

--*/

typedef LLDP_QUERY_STATISTICS *PLLDP_QUERY_STATISTICS;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
_When_(EntryCount > 0, _At_(EntryTypes, _Pre_notnull_))
_When_(BufferSize > 0, _At_(Buffer, _Pre_notnull_))
NTSTATUS
LLDP_QUERY_TLVS (
    _In_ HMSAP MsapHandle,
    _In_ LLDP_MIB_TYPE MibType,
    _In_ SIZE_T EntryCount,
    _In_reads_opt_(EntryCount) PLLDP_TLV_TYPE_INFO EntryTypes,
    _In_ SIZE_T BufferSize,
    _Out_opt_ SIZE_T *BytesNeeded,
    _Out_writes_bytes_opt_(BufferSize) PLLDP_TLV_ARRAY Buffer
    );
/*++

Routine Description:

    This routine queries the local or remote MIB for various TLVs.

    If an array of TLV types is specified at EntryTypes, only those TLVs that
    match a specified type will be returned.  Otherwise, all TLVs on the MIB
    will be returned.

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

    MibType - Specifies whether the local or remote MIB is queried

    EntryCount - The number of TLV types in the EntryTypes array

    EntryTypes - An array of TLV types to query.  This parameter may be
        NULL iff EntryCount is zero.

    BufferSize - The number of bytes available in Buffer

    BytesNeeded - Receives the number of bytes required in the Buffer

    Buffer - Receives all matching TLVs.

Return Value:

    STATUS_LLDP_NEIGHBOR_NOT_AVAILABLE - Endpoint is LldpRemoteSystem, and
        there is no remote system cached currently.

    STATUS_BUFFER_TOO_SMALL - The buffer at Buffer is not large enough to
        contain all the results of the query.  The number of bytes required is
        supplied in *BytesNeeded.

    STATUS_SUCCESS - Any matching TLVs were returned in Buffer.  It is possible
        that not all TLV types specified in EntryTypes were matched.  (In the
        degenerate case, STATUS_SUCCESS is returned even if zero matching TLVs
        were found).

Notes:

    It is possible to receive fewer TLVs than were requested, if not all the
    TLV types were matched.

    It is possible to receive more TLVs than were requested, if the MIB contains
    more than one instance of a TLV type.

    If EntryCount is zero, then all TLVs in the MIB will be returned.  In this
    case, EntryTypes may optionally be NULL.

--*/

typedef LLDP_QUERY_TLVS *PLLDP_QUERY_TLVS;


typedef
_IRQL_requires_(PASSIVE_LEVEL)
NTSTATUS
LLDP_SET_TLVS (
    _In_ HMSAP MsapHandle,
    _In_ PLLDP_TLV_ARRAY Tlvs
    );
/*++

Routine Description:

    This routine adds, changes, or removes multiple TLVs from the local MIB
    in a single transaction.

Arguments:

    MsapHandle - Handle received from LLDP_OPEN_MSAP

    Tlvs - An array of TLVs to set on the local MIB

Return Value:

    STATUS_TOO_MANY_NODES - Adding these TLVs would increase the LLDPDU beyond
        the link's MTU.  The local MIB was not modified.

Notes:

    This NPI allows the caller to add, modify, and remove multiple TLVs in
    a single transaction.  To add more than one instance of a TLV, simply
    put two copies of the TLV in the TlvArray.  Any existing TLVs of the
    same type will be replaced.

    To remove all instances of a TLV, insert a TLV with its length set to
    LLDP_DELETE_TLV.

    To change a TLV, just write the new value -- the existing copy will be
    replaced.

Examples:

    In these examples, the letter (A, B, C etc) denote distinct TLV types.
    The numerals distinguish different instances of the same type.
    The 'del' denotes a TLV with length set to LLDP_DELETE_TLV.

    Initial MIB contents:        Tlv Array:              Resulting MIB:
    ----------------------------------------------------------------------------
     {  }                         { A1 }                  { A1 }
     { A1 }                       { A2 }                  { A2 }
     { A2 }                       { A3, A4 }              { A3, A4 }
     { A1, A2, B1, C1 }           { A3, B3 }              { A3, B3, C1 }
     { A1, A2, B1 }               { Adel }                { B1 }
     { A1 }                       { A1, A1, B1, B1 }      { A1, A1, B1, B1 }

--*/

typedef LLDP_SET_TLVS *PLLDP_SET_TLVS;


typedef struct _LLDP_PROVIDER_DISPATCH
{
    PLLDP_ENUMERATE_MSAPS MsapEnumerate;
    PLLDP_OPEN_MSAP MsapOpen;
    PLLDP_CLOSE_MSAP MsapClose;
    PLLDP_QUERY_CONFIG MsapQueryConfig;
    PLLDP_SET_CONFIG MsapSetConfig;
    PLLDP_QUERY_STATUS MsapQueryStatus;
    PLLDP_QUERY_STATISTICS MsapQueryStatistics;
    PLLDP_QUERY_TLVS QueryMultipleTlvs;
    PLLDP_SET_TLVS SetMultipleTlvs;

} LLDP_PROVIDER_DISPATCH, *PLLDP_PROVIDER_DISPATCH;


#endif // MSLLDP_NO_DDI


#define STATUS_LLDP_NEIGHBOR_NOT_AVAILABLE STATUS_NOT_FOUND


#ifdef __cplusplus
} // extern C
#endif // __cplusplus

#endif // (NTDDI_VERSION >= NTDDI_WIN8)

#endif // MSLLDP_H_


