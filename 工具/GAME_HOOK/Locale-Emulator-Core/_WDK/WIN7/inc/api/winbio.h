/*++

Copyright (c) 2007 Microsoft Corporation


Module Name:

    winbio.h

Abstract:

    WinBio public API.


Environment:

    User mode only.

Revision History:

--*/

#ifndef _WINBIO_H_9B9AD1F6_97B1_4647_923D_583FD7428C4C_
#define _WINBIO_H_9B9AD1F6_97B1_4647_923D_583FD7428C4C_

#if (NTDDI_VERSION >= NTDDI_WIN7)

//
// Dependencies...
//
#include "winbio_types.h"
#include "winbio_err.h"

#ifdef __cplusplus
extern "C"{
#endif


///////////////////////////////////////////////////////////////////////////////
//
// Capability discovery
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioEnumServiceProviders(
    __in WINBIO_BIOMETRIC_TYPE Factor,
    __deref_out_ecount(*BspCount) WINBIO_BSP_SCHEMA **BspSchemaArray,
    __out SIZE_T *BspCount
    );

HRESULT WINAPI
WinBioEnumBiometricUnits(
    __in WINBIO_BIOMETRIC_TYPE Factor,
    __deref_out_ecount(*UnitCount) WINBIO_UNIT_SCHEMA **UnitSchemaArray,
    __out SIZE_T *UnitCount
    );

HRESULT WINAPI
WinBioEnumDatabases(
    __in WINBIO_BIOMETRIC_TYPE Factor,
    __deref_out_ecount(*StorageCount) WINBIO_STORAGE_SCHEMA **StorageSchemaArray,
    __out SIZE_T *StorageCount
    );


///////////////////////////////////////////////////////////////////////////////
//
// Session management
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioOpenSession(
    __in WINBIO_BIOMETRIC_TYPE Factor,
    __in WINBIO_POOL_TYPE PoolType,
    __in WINBIO_SESSION_FLAGS Flags,
    __in_ecount_opt(UnitCount) WINBIO_UNIT_ID *UnitArray,
    __in_opt SIZE_T UnitCount,
    __in_opt GUID *DatabaseId,
    __out WINBIO_SESSION_HANDLE *SessionHandle
    );

HRESULT WINAPI
WinBioCloseSession(
    __in WINBIO_SESSION_HANDLE SessionHandle
    );


///////////////////////////////////////////////////////////////////////////////
//
// High-level biometric operations
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioVerify(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_IDENTITY *Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out WINBIO_UNIT_ID *UnitId,
    __out BOOLEAN *Match,
    __out WINBIO_REJECT_DETAIL *RejectDetail
    );

typedef
VOID
(CALLBACK *PWINBIO_VERIFY_CALLBACK)(
    __in_opt PVOID VerifyCallbackContext,
    __in HRESULT OperationStatus,
    __in WINBIO_UNIT_ID UnitId,
    __in BOOLEAN Match,
    __in WINBIO_REJECT_DETAIL RejectDetail
    );

HRESULT WINAPI
WinBioVerifyWithCallback(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_IDENTITY *Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in PWINBIO_VERIFY_CALLBACK VerifyCallback,
    __in_opt PVOID VerifyCallbackContext
    );

HRESULT WINAPI
WinBioIdentify(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __out WINBIO_UNIT_ID *UnitId,
    __out WINBIO_IDENTITY *Identity,
    __out WINBIO_BIOMETRIC_SUBTYPE *SubFactor,
    __out WINBIO_REJECT_DETAIL *RejectDetail
    );

typedef
VOID
(CALLBACK *PWINBIO_IDENTIFY_CALLBACK)(
    __in_opt PVOID IdentifyCallbackContext,
    __in HRESULT OperationStatus,
    __in WINBIO_UNIT_ID UnitId,
    __in WINBIO_IDENTITY *Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in WINBIO_REJECT_DETAIL RejectDetail
    );

HRESULT WINAPI
WinBioIdentifyWithCallback(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in PWINBIO_IDENTIFY_CALLBACK IdentifyCallback,
    __in_opt PVOID IdentifyCallbackContext
    );

HRESULT WINAPI
WinBioWait(
    __in WINBIO_SESSION_HANDLE SessionHandle
    );

HRESULT WINAPI
WinBioCancel(
    __in WINBIO_SESSION_HANDLE SessionHandle
    );


///////////////////////////////////////////////////////////////////////////////
//
// Sensor-location operations
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioLocateSensor(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __out WINBIO_UNIT_ID *UnitId
    );

typedef
VOID
(CALLBACK *PWINBIO_LOCATE_SENSOR_CALLBACK)(
    __in_opt PVOID LocateCallbackContext,
    __in HRESULT OperationStatus,
    __in WINBIO_UNIT_ID UnitId
    );

HRESULT WINAPI
WinBioLocateSensorWithCallback(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in PWINBIO_LOCATE_SENSOR_CALLBACK LocateCallback,
    __in_opt PVOID LocateCallbackContext
    );

///////////////////////////////////////////////////////////////////////////////
//
// Enrollment operations
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioEnrollBegin(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in WINBIO_UNIT_ID UnitId
    );

HRESULT WINAPI
WinBioEnrollCapture(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __out WINBIO_REJECT_DETAIL *RejectDetail
    );

typedef
VOID
(CALLBACK *PWINBIO_ENROLL_CAPTURE_CALLBACK)(
    __in_opt PVOID EnrollCallbackContext,
    __in HRESULT OperationStatus,
    __in WINBIO_REJECT_DETAIL RejectDetail
    );

HRESULT WINAPI
WinBioEnrollCaptureWithCallback(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in PWINBIO_ENROLL_CAPTURE_CALLBACK EnrollCallback,
    __in_opt PVOID EnrollCallbackContext
    );

HRESULT WINAPI
WinBioEnrollCommit(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __out WINBIO_IDENTITY *Identity,
    __out BOOLEAN *IsNewTemplate
    );

HRESULT WINAPI
WinBioEnrollDiscard(
    __in WINBIO_SESSION_HANDLE SessionHandle
    );

HRESULT WINAPI
WinBioEnumEnrollments(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_UNIT_ID UnitId,
    __in WINBIO_IDENTITY *Identity,
    __deref_out_ecount(*SubFactorCount) WINBIO_BIOMETRIC_SUBTYPE **SubFactorArray,
    __out SIZE_T *SubFactorCount
    );


///////////////////////////////////////////////////////////////////////////////
//
// Event monitors
//
///////////////////////////////////////////////////////////////////////////////
typedef
VOID
(CALLBACK *PWINBIO_EVENT_CALLBACK)(
    __in_opt PVOID EventCallbackContext,
    __in HRESULT OperationStatus,
    __in PWINBIO_EVENT Event
    );

HRESULT WINAPI
WinBioRegisterEventMonitor(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_EVENT_TYPE EventMask,
    __in PWINBIO_EVENT_CALLBACK EventCallback,
    __in_opt PVOID EventCallbackContext
    );

HRESULT WINAPI
WinBioUnregisterEventMonitor(
    __in WINBIO_SESSION_HANDLE SessionHandle
    );


///////////////////////////////////////////////////////////////////////////////
//
// Raw biometric operations
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioCaptureSample(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_BIR_PURPOSE Purpose,
    __in WINBIO_BIR_DATA_FLAGS Flags,
    __out WINBIO_UNIT_ID *UnitId,
    __deref_out_bcount(*SampleSize) PWINBIO_BIR *Sample,
    __out SIZE_T *SampleSize,
    __out WINBIO_REJECT_DETAIL *RejectDetail
    );

typedef
VOID
(CALLBACK *PWINBIO_CAPTURE_CALLBACK)(
    __in_opt PVOID CaptureCallbackContext,
    __in HRESULT OperationStatus,
    __in WINBIO_UNIT_ID UnitId,
    __in_bcount(SampleSize) PWINBIO_BIR Sample,
    __in SIZE_T SampleSize,
    __in WINBIO_REJECT_DETAIL RejectDetail
    );

HRESULT WINAPI
WinBioCaptureSampleWithCallback(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_BIR_PURPOSE Purpose,
    __in WINBIO_BIR_DATA_FLAGS Flags,
    __in PWINBIO_CAPTURE_CALLBACK CaptureCallback,
    __in_opt PVOID CaptureCallbackContext
    );


///////////////////////////////////////////////////////////////////////////////
//
// Storage management
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioDeleteTemplate(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_UNIT_ID UnitId,
    __in WINBIO_IDENTITY *Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor
    );


///////////////////////////////////////////////////////////////////////////////
//
// Extension interface
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioLockUnit(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_UNIT_ID UnitId
    );

HRESULT WINAPI
WinBioUnlockUnit(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_UNIT_ID UnitId
    );

HRESULT WINAPI
WinBioControlUnit(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_UNIT_ID UnitId,
    __in WINBIO_COMPONENT Component,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out SIZE_T *ReceiveDataSize,
    __out ULONG *OperationStatus
    );

HRESULT WINAPI
WinBioControlUnitPrivileged(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_UNIT_ID UnitId,
    __in WINBIO_COMPONENT Component,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out SIZE_T *ReceiveDataSize,
    __out ULONG *OperationStatus
    );


///////////////////////////////////////////////////////////////////////////////
//
// Get/set property operations
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioGetProperty(
    __in WINBIO_SESSION_HANDLE SessionHandle,
    __in WINBIO_PROPERTY_TYPE PropertyType,
    __in WINBIO_PROPERTY_ID PropertyId,
    __in_opt WINBIO_UNIT_ID UnitId,
    __in_opt WINBIO_IDENTITY *Identity,
    __in_opt WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __deref_out_bcount(*PropertyBufferSize) PVOID *PropertyBuffer,
    __out SIZE_T *PropertyBufferSize
    );


///////////////////////////////////////////////////////////////////////////////
//
// Resource management
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioFree(
    __in PVOID Address
    );


///////////////////////////////////////////////////////////////////////////////
//
// Credential management
//
///////////////////////////////////////////////////////////////////////////////
HRESULT WINAPI
WinBioSetCredential(
    __in WINBIO_CREDENTIAL_TYPE Type,
    __in_bcount(CredentialSize) PUCHAR Credential,
    __in SIZE_T CredentialSize,
    __in WINBIO_CREDENTIAL_FORMAT Format
    );

HRESULT WINAPI
WinBioRemoveCredential(
    __in WINBIO_IDENTITY Identity,
    __in WINBIO_CREDENTIAL_TYPE Type
    );

HRESULT WINAPI
WinBioRemoveAllCredentials(
    void
    );


HRESULT WINAPI
WinBioRemoveAllDomainCredentials(
    void
    );

HRESULT WINAPI
WinBioGetCredentialState(
    __in WINBIO_IDENTITY Identity,
    __in WINBIO_CREDENTIAL_TYPE Type,
    __out WINBIO_CREDENTIAL_STATE *CredentialState
    );

HRESULT WINAPI
WinBioLogonIdentifiedUser(
    __in WINBIO_SESSION_HANDLE SessionHandle
    );


///////////////////////////////////////////////////////////////////////////////
//
// Settings
//
///////////////////////////////////////////////////////////////////////////////
VOID WINAPI
WinBioGetEnabledSetting(
    __out BOOLEAN* Value,
    __out PWINBIO_SETTING_SOURCE_TYPE Source
    );

VOID WINAPI
WinBioGetLogonSetting(
    __out BOOLEAN* Value,
    __out PWINBIO_SETTING_SOURCE_TYPE Source
    );

VOID WINAPI
WinBioGetDomainLogonSetting(
    __out BOOLEAN* Value,
    __out PWINBIO_SETTING_SOURCE_TYPE Source
    );

///////////////////////////////////////////////////////////////////////////////
//
// Focus tracking management
//
///////////////////////////////////////////////////////////////////////////////

HRESULT WINAPI
WinBioAcquireFocus(
    void
    );

HRESULT WINAPI
WinBioReleaseFocus(
    void
    );

#ifdef __cplusplus
} // extern "C"
#endif

#endif // (NTDDI_VERSION >= NTDDI_WIN7)

#endif // _WINBIO_H_9B9AD1F6_97B1_4647_923D_583FD7428C4C_

