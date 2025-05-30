/*****************************************************************************\
*                                                                             *
* powrprof.h - - Interface for powrprof.dll, the power policy applicator      *
*                                                                             *
* Version 1.0                                                                 *
*                                                                             *
* Copyright (c) Microsoft Corporation. All rights reserved.                   *
*                                                                             *
\*****************************************************************************/

#if _MSC_VER > 1000
#pragma once
#endif

#ifdef __cplusplus
extern "C" {
#endif

// Registry storage structures for the GLOBAL_POWER_POLICY data. There are two
// structures, GLOBAL_MACHINE_POWER_POLICY and GLOBAL_USER_POWER_POLICY. the
// GLOBAL_MACHINE_POWER_POLICY stores per machine data for which there is no UI.
// GLOBAL_USER_POWER_POLICY stores the per user data.

typedef struct _GLOBAL_MACHINE_POWER_POLICY{
    ULONG                   Revision;
    SYSTEM_POWER_STATE      LidOpenWakeAc;
    SYSTEM_POWER_STATE      LidOpenWakeDc;
    ULONG                   BroadcastCapacityResolution;
} GLOBAL_MACHINE_POWER_POLICY, *PGLOBAL_MACHINE_POWER_POLICY;

typedef struct _GLOBAL_USER_POWER_POLICY{
    ULONG                   Revision;
    POWER_ACTION_POLICY     PowerButtonAc;
    POWER_ACTION_POLICY     PowerButtonDc;
    POWER_ACTION_POLICY     SleepButtonAc;
    POWER_ACTION_POLICY     SleepButtonDc;
    POWER_ACTION_POLICY     LidCloseAc;
    POWER_ACTION_POLICY     LidCloseDc;
    SYSTEM_POWER_LEVEL      DischargePolicy[NUM_DISCHARGE_POLICIES];
    ULONG                   GlobalFlags;
} GLOBAL_USER_POWER_POLICY, *PGLOBAL_USER_POWER_POLICY;

// Structure to manage global power policies at the user level. This structure
// contains data which is common across all power policy profiles.

typedef struct _GLOBAL_POWER_POLICY{
    GLOBAL_USER_POWER_POLICY    user;
    GLOBAL_MACHINE_POWER_POLICY mach;
} GLOBAL_POWER_POLICY, *PGLOBAL_POWER_POLICY;

// Registry storage structures for the POWER_POLICY data. There are three
// structures, MACHINE_POWER_POLICY, MACHINE_PROCESSOR_POWER_POLICY and
// USER_POWER_POLICY. the MACHINE_POWER_POLICY stores per machine data for 
// which there is no UI.  USER_POWER_POLICY stores the per user data.

typedef struct _MACHINE_POWER_POLICY{
    ULONG                   Revision;       // 1

    // meaning of power action "sleep"
    SYSTEM_POWER_STATE      MinSleepAc;
    SYSTEM_POWER_STATE      MinSleepDc;
    SYSTEM_POWER_STATE      ReducedLatencySleepAc;
    SYSTEM_POWER_STATE      ReducedLatencySleepDc;

    // parameters for dozing
    ULONG                   DozeTimeoutAc;
    ULONG                   DozeTimeoutDc;
    ULONG                   DozeS4TimeoutAc;
    ULONG                   DozeS4TimeoutDc;

    // processor policies
    UCHAR                   MinThrottleAc;
    UCHAR                   MinThrottleDc;
    UCHAR                   pad1[2];
    POWER_ACTION_POLICY     OverThrottledAc;
    POWER_ACTION_POLICY     OverThrottledDc;

} MACHINE_POWER_POLICY, *PMACHINE_POWER_POLICY;

//
// deprecated
//

typedef struct _MACHINE_PROCESSOR_POWER_POLICY {
    ULONG                   Revision;       // 1
    
    PROCESSOR_POWER_POLICY  ProcessorPolicyAc;    
    PROCESSOR_POWER_POLICY  ProcessorPolicyDc;    

} MACHINE_PROCESSOR_POWER_POLICY, *PMACHINE_PROCESSOR_POWER_POLICY;

typedef struct _USER_POWER_POLICY {
    ULONG                   Revision;       // 1

    // "system idle" detection
    POWER_ACTION_POLICY     IdleAc;
    POWER_ACTION_POLICY     IdleDc;
    ULONG                   IdleTimeoutAc;
    ULONG                   IdleTimeoutDc;
    UCHAR                   IdleSensitivityAc;
    UCHAR                   IdleSensitivityDc;
    
    // Throttling Policy
    UCHAR                   ThrottlePolicyAc;
    UCHAR                   ThrottlePolicyDc;

    // meaning of power action "sleep"
    SYSTEM_POWER_STATE      MaxSleepAc;
    SYSTEM_POWER_STATE      MaxSleepDc;

    // For future use
    ULONG                   Reserved[2];

    // video policies
    ULONG                   VideoTimeoutAc;
    ULONG                   VideoTimeoutDc;

    // hard disk policies
    ULONG                   SpindownTimeoutAc;
    ULONG                   SpindownTimeoutDc;

    // processor policies
    BOOLEAN                 OptimizeForPowerAc;
    BOOLEAN                 OptimizeForPowerDc;
    UCHAR                   FanThrottleToleranceAc;
    UCHAR                   FanThrottleToleranceDc;
    UCHAR                   ForcedThrottleAc;
    UCHAR                   ForcedThrottleDc;
    
} USER_POWER_POLICY, *PUSER_POWER_POLICY;

// Structure to manage power policies at the user level. This structure
// contains data which is unique across power policy profiles.

typedef struct _POWER_POLICY {
    USER_POWER_POLICY       user;
    MACHINE_POWER_POLICY    mach;
} POWER_POLICY, *PPOWER_POLICY;

// Constants for GlobalFlags

#define EnableSysTrayBatteryMeter   0x01
#define EnableMultiBatteryDisplay   0x02
#define EnablePasswordLogon         0x04
#define EnableWakeOnRing            0x08
#define EnableVideoDimDisplay       0x10

//
// Power setting attribute flags
//

#define POWER_ATTRIBUTE_HIDE        0x00000001

// This constant is passed as a uiID to WritePwrScheme.
#define NEWSCHEME (UINT)-1

// Prototype for EnumPwrSchemes callback proceedures.

typedef
BOOLEAN
CALLBACK
PWRSCHEMESENUMPROC_V1 (
    __in UINT Index,
    __in DWORD NameSize,
    __in_bcount(NameSize) LPTSTR Name,
    __in DWORD DescriptionSize,
    __in_bcount(DescriptionSize) LPTSTR Description,
    __in PPOWER_POLICY Policy,
    __inout_opt LPARAM Context
    );

typedef
BOOLEAN
CALLBACK
PWRSCHEMESENUMPROC_V2 (
    __in UINT Index,
    __in DWORD NameSize,
    __in_bcount(NameSize) LPWSTR Name,
    __in DWORD DescriptionSize,
    __in_bcount(DescriptionSize) LPWSTR Description,
    __in PPOWER_POLICY Policy,
    __inout_opt LPARAM Context
    );

#if (NTDDI_VERSION >= NTDDI_VISTA)

typedef PWRSCHEMESENUMPROC_V2 *PWRSCHEMESENUMPROC;

#else

typedef PWRSCHEMESENUMPROC_V1 *PWRSCHEMESENUMPROC;

#endif

// Public function prototypes

STDAPI_(BOOLEAN)
GetPwrDiskSpindownRange(
    __out PUINT puiMax,
    __out PUINT puiMin
    );   

STDAPI_(BOOLEAN)
EnumPwrSchemes(
    __in PWRSCHEMESENUMPROC lpfn,
    __in LPARAM lParam
    );

STDAPI_(BOOLEAN)
ReadGlobalPwrPolicy(
    __in PGLOBAL_POWER_POLICY pGlobalPowerPolicy
    );
        
STDAPI_(BOOLEAN)
ReadPwrScheme(
    __in UINT uiID,
    __out PPOWER_POLICY pPowerPolicy
    );
    
STDAPI_(BOOLEAN)
WritePwrScheme(
    __in PUINT puiID,
    __in LPCWSTR lpszSchemeName,
    __in_opt LPCWSTR lpszDescription,
    __in PPOWER_POLICY lpScheme
    );

STDAPI_(BOOLEAN)
WriteGlobalPwrPolicy(
        __in PGLOBAL_POWER_POLICY pGlobalPowerPolicy
    );
        
STDAPI_(BOOLEAN)
DeletePwrScheme(
        __in UINT uiID
        );
        
STDAPI_(BOOLEAN)
GetActivePwrScheme(
        __out PUINT puiID
    );
        
STDAPI_(BOOLEAN)
SetActivePwrScheme(
    __in UINT uiID,
    __in_opt PGLOBAL_POWER_POLICY pGlobalPowerPolicy,
    __in_opt PPOWER_POLICY pPowerPolicy
    );
    
STDAPI_(BOOLEAN)
GetPwrCapabilities(
        __out PSYSTEM_POWER_CAPABILITIES lpspc
    );

STDAPI_(BOOLEAN)
IsPwrSuspendAllowed(
        VOID
        );

STDAPI_(BOOLEAN)
IsPwrHibernateAllowed(
        VOID
        );
        
STDAPI_(BOOLEAN)
IsPwrShutdownAllowed(
        VOID
        );

STDAPI_(BOOLEAN)
IsAdminOverrideActive(
    __in PADMINISTRATOR_POWER_POLICY papp
    );
    
STDAPI_(BOOLEAN)
SetSuspendState(
    __in BOOLEAN bHibernate,
    __in BOOLEAN bForce,
    __in BOOLEAN bWakeupEventsDisabled
    );
    
STDAPI_(BOOLEAN)
GetCurrentPowerPolicies(
    __out PGLOBAL_POWER_POLICY pGlobalPowerPolicy,
    __out PPOWER_POLICY pPowerPolicy
    );

STDAPI_(BOOLEAN)
CanUserWritePwrScheme(
        VOID
        );

#if (NTDDI_VERSION >= NTDDI_WINXP)
//
// deprecated.
//
STDAPI_(BOOLEAN)
ReadProcessorPwrScheme(
    __in UINT uiID,
    __out PMACHINE_PROCESSOR_POWER_POLICY pMachineProcessorPowerPolicy
    );
#endif

#if (NTDDI_VERSION >= NTDDI_WINXP)
//
// deprecated.
//    
STDAPI_(BOOLEAN)
WriteProcessorPwrScheme(
    __in UINT uiID,
    __in PMACHINE_PROCESSOR_POWER_POLICY pMachineProcessorPowerPolicy
    );
#endif

STDAPI_(BOOLEAN)
ValidatePowerPolicies(
    __inout_opt PGLOBAL_POWER_POLICY pGlobalPowerPolicy,
    __inout_opt PPOWER_POLICY pPowerPolicy
    );
    
#ifndef NT_SUCCESS
#define NTSTATUS LONG
#define _OVERRIDE_NTSTATUS_
#endif

NTSTATUS
WINAPI
CallNtPowerInformation (
    __in POWER_INFORMATION_LEVEL InformationLevel,
    __in_bcount_opt(InputBufferLength) PVOID InputBuffer,
    __in ULONG InputBufferLength,
    __out_bcount_opt(OutputBufferLength) PVOID OutputBuffer,
    __in ULONG OutputBufferLength
    );

#ifdef _OVERRIDE_NTSTATUS_
#undef NTSTATUS
#endif

//
// Enum which defines which field inside of a
// power setting is being accessed.
//
typedef enum _POWER_DATA_ACCESSOR {
        
        //
        // Used by read/write and enumeration engines
        //
        ACCESS_AC_POWER_SETTING_INDEX = 0,
        ACCESS_DC_POWER_SETTING_INDEX,
        ACCESS_FRIENDLY_NAME,
        ACCESS_DESCRIPTION,
        ACCESS_POSSIBLE_POWER_SETTING,
        ACCESS_POSSIBLE_POWER_SETTING_FRIENDLY_NAME,
        ACCESS_POSSIBLE_POWER_SETTING_DESCRIPTION,
        ACCESS_DEFAULT_AC_POWER_SETTING,
        ACCESS_DEFAULT_DC_POWER_SETTING,
        ACCESS_POSSIBLE_VALUE_MIN,
        ACCESS_POSSIBLE_VALUE_MAX,
        ACCESS_POSSIBLE_VALUE_INCREMENT,
        ACCESS_POSSIBLE_VALUE_UNITS,
        ACCESS_ICON_RESOURCE,
        ACCESS_DEFAULT_SECURITY_DESCRIPTOR,
        ACCESS_ATTRIBUTES,
        
        //
        // Used by enumeration engine.
        //
        ACCESS_SCHEME,
        ACCESS_SUBGROUP,
        ACCESS_INDIVIDUAL_SETTING,
        
        //
        // Used by access check
        //
        ACCESS_ACTIVE_SCHEME,
        ACCESS_CREATE_SCHEME,

        //
        // Used by override ranges.
        //

        ACCESS_AC_POWER_SETTING_MAX,
        ACCESS_DC_POWER_SETTING_MAX,
        ACCESS_AC_POWER_SETTING_MIN,
        ACCESS_DC_POWER_SETTING_MIN
        
} POWER_DATA_ACCESSOR, *PPOWER_DATA_ACCESSOR;

//
// =========================================
// Power Scheme APIs
// =========================================
//

#if !defined(_HPOWERNOTIFY_DEF_)

#define _HPOWERNOTIFY_DEF_

typedef  PVOID           HPOWERNOTIFY;
typedef  HPOWERNOTIFY   *PHPOWERNOTIFY;

#endif

#if (NTDDI_VERSION >= NTDDI_WIN7)
DWORD
PowerSettingRegisterNotification (
    __in LPCGUID SettingGuid,
    __in DWORD Flags,
    __in HANDLE Recipient,
    __out PHPOWERNOTIFY RegistrationHandle
    );
#endif

#if (NTDDI_VERSION >= NTDDI_WIN7)
DWORD
PowerSettingUnregisterNotification (
    __inout HPOWERNOTIFY RegistrationHandle
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerSettingAccessCheck (
    __in POWER_DATA_ACCESSOR AccessFlags,
    __in_opt CONST GUID *PowerGuid
    );
#endif

//
// Read functions.
//
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadACValueIndex (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out LPDWORD AcValueIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadDCValueIndex (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out LPDWORD DcValueIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadACValue (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_opt PULONG Type,
    __out_bcount_opt(*BufferSize) LPBYTE Buffer,
    __inout_opt LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadDCValue (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_opt PULONG Type,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadFriendlyName (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadDescription (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadPossibleValue (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_opt PULONG Type,
    __in ULONG PossibleSettingIndex,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadPossibleFriendlyName (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in ULONG PossibleSettingIndex,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadPossibleDescription (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in ULONG PossibleSettingIndex,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadValueMin (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out LPDWORD ValueMinimum
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadValueMax (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out LPDWORD ValueMaximum
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadValueIncrement (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out LPDWORD ValueIncrement
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadValueUnitsSpecifier (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_bcount_opt(*BufferSize) UCHAR *Buffer,
    __inout LPDWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadACDefaultIndex (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemePersonalityGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid OPTIONAL,
    __in CONST GUID *PowerSettingGuid,
    __out LPDWORD AcDefaultIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadDCDefaultIndex (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemePersonalityGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in CONST GUID *PowerSettingGuid,
    __out LPDWORD DcDefaultIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadIconResourceSpecifier (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __out_bcount_opt(*BufferSize) PUCHAR Buffer,
    __inout LPDWORD BufferSize
    );
#endif
    
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReadSettingAttributes (
    __in_opt CONST GUID *SubGroupGuid,
    __in_opt CONST GUID *PowerSettingGuid
    );
#endif

//
// Write functions.
//
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteACValueIndex (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in DWORD AcValueIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteDCValueIndex (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in DWORD DcValueIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteFriendlyName (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteDescription (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWritePossibleValue (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in ULONG Type,
    __in ULONG PossibleSettingIndex,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWritePossibleFriendlyName (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in ULONG PossibleSettingIndex,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWritePossibleDescription (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in ULONG PossibleSettingIndex,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteValueMin (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in DWORD ValueMinimum
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteValueMax (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in DWORD ValueMaximum
    );
#endif
    
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteValueIncrement (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in DWORD ValueIncrement
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteValueUnitsSpecifier (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteACDefaultIndex (
    __in_opt HKEY RootSystemPowerKey,
    __in CONST GUID *SchemePersonalityGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in CONST GUID *PowerSettingGuid,
    __in DWORD DefaultAcIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteDCDefaultIndex (
    __in_opt HKEY RootSystemPowerKey,
    __in CONST GUID *SchemePersonalityGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in CONST GUID *PowerSettingGuid,
    __in DWORD DefaultDcIndex
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteIconResourceSpecifier (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in_bcount(BufferSize) UCHAR *Buffer,
    __in DWORD BufferSize
    );
#endif
    
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerWriteSettingAttributes (
    __in_opt CONST GUID *SubGroupGuid,
    __in_opt CONST GUID *PowerSettingGuid,
    __in DWORD Attributes
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerDuplicateScheme (
    __in_opt HKEY RootPowerKey,
    __in const GUID *SourceSchemeGuid,
    __deref_inout GUID **DestinationSchemeGuid
    );
#endif
    
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerImportPowerScheme (
    __in_opt HKEY RootPowerKey,
    __in LPCWSTR ImportFileNamePath,
    __deref_inout GUID **DestinationSchemeGuid
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerDeleteScheme (
    __in_opt HKEY RootPowerKey,
    __in CONST GUID *SchemeGuid
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerRemovePowerSetting (
   __in CONST GUID *PowerSettingSubKeyGuid,
   __in CONST GUID *PowerSettingGuid
   );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerCreateSetting (
    __in_opt HKEY RootSystemPowerKey,
    __in CONST GUID *SubGroupOfPowerSettingsGuid,
    __in CONST GUID *PowerSettingGuid
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerCreatePossibleSetting (
    __in_opt HKEY RootSystemPowerKey,
    __in CONST GUID *SubGroupOfPowerSettingsGuid,
    __in CONST GUID *PowerSettingGuid,
    __in ULONG PossibleSettingIndex 
    );
#endif

//
// Enumerate Functions.
//
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerEnumerate (
    __in_opt HKEY RootPowerKey,
    __in_opt CONST GUID *SchemeGuid,
    __in_opt CONST GUID *SubGroupOfPowerSettingsGuid,
    __in POWER_DATA_ACCESSOR AccessFlags,
    __in ULONG Index,
    __out_bcount_opt(*BufferSize) UCHAR *Buffer,
    __inout DWORD *BufferSize
    );
#endif

//
// Activate Functions.
//
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerSetActiveScheme (
    __in_opt HKEY UserRootPowerKey,
    __in_opt CONST GUID *SchemeGuid
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerGetActiveScheme (
    __in_opt HKEY UserRootPowerKey,
    __deref_out GUID **ActivePolicyGuid
    );
#endif
    
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerOpenUserPowerKey (
    __out HKEY *phUserPowerKey,
    __in REGSAM Access,
    __in BOOL OpenExisting
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerOpenSystemPowerKey (
    __out HKEY *phSystemPowerKey,
    __in REGSAM Access,
    __in BOOL OpenExisting
    );
#endif
        
#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerCanRestoreIndividualDefaultPowerScheme (
    __in CONST GUID *SchemeGuid
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerRestoreIndividualDefaultPowerScheme (
    __in CONST GUID *SchemeGuid
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerRestoreDefaultPowerSchemes(
    VOID
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(DWORD)
PowerReplaceDefaultPowerSchemes(
    VOID
    );
#endif

#if (NTDDI_VERSION >= NTDDI_VISTA)
STDAPI_(POWER_PLATFORM_ROLE)
PowerDeterminePlatformRole(
    VOID
    );
#endif

//
// =========================================
// Device Power APIs
// =========================================
//
//
// ========================================================
// These flags tell us how to interpret a query of
// device power.  Use these (or a combination of these)
// for the QueryInterpretationFlags parameter sent into
// DevicePowerEnumDevices().
//
// They'll ask us for some devices that supports some
// D state.  These flags help us determine what the
// user really wants.  I.e. does he want the device
// name, or the hardware ID.  Does he want some device
// that supports some D state, or does he want us to
// go see if that devices supports some S state? ...
// ========================================================
//

//
// Return HardwareID instead of the friendly device name, which
// is the default.
//
#define DEVICEPOWER_HARDWAREID             (0x80000000)

//
//
// 'and' the requested power states.  I.e. if the user requested
// that we query devices supporting D1 and D3, this flag says
// "give me devices that support D1 *and* D3".  Without this
// flag, the query would be interpreted as "give me devices
// that support D1 *or* D3".
//
#define DEVICEPOWER_AND_OPERATION          (0x40000000)

// Only preform the query on devices that are present in the system.
//
#define DEVICEPOWER_FILTER_DEVICES_PRESENT (0x20000000)

//
// Only preform the query on devices that are actual hardware.
//
#define DEVICEPOWER_FILTER_HARDWARE        (0x10000000)

//
// Only preform the query on devices that are armed to wake the
// system from a sleep state.
//
#define DEVICEPOWER_FILTER_WAKEENABLED     (0x08000000)

//
// Only preform the query on devices that are capable of being programmed
// to wake the system from a sleep state.
//
#define DEVICEPOWER_FILTER_WAKEPROGRAMMABLE (0x04000000)

//
// Go find the device who's name is specifed by an input
// parameter, then see if it's got the capabilities specified
// in QueryFlags.
//
#define DEVICEPOWER_FILTER_ON_NAME         (0x02000000)



//
// Define flags to set/clear capabilities in the devices.
//

//
// Enable the device to wake the system from a sleep state.
//
#define DEVICEPOWER_SET_WAKEENABLED (0x00000001)

//
// Disable the device from waking the system from a sleep
// state.
//
#define DEVICEPOWER_CLEAR_WAKEENABLED (0x00000002)




//
// For the QueryFlags parameter, the user should send in
// one of the PDCAP_D*_SUPPORTED flags found in ntpoapi.h.
//
// #define PDCAP_D0_SUPPORTED              0x00000001
// #define PDCAP_D1_SUPPORTED              0x00000002
// #define PDCAP_D2_SUPPORTED              0x00000004
// #define PDCAP_D3_SUPPORTED              0x00000008
// #define PDCAP_WAKE_FROM_D0_SUPPORTED    0x00000010
// #define PDCAP_WAKE_FROM_D1_SUPPORTED    0x00000020
// #define PDCAP_WAKE_FROM_D2_SUPPORTED    0x00000040
// #define PDCAP_WAKE_FROM_D3_SUPPORTED    0x00000080
// #define PDCAP_WARM_EJECT_SUPPORTED      0x00000100
//
// The user can also send in a combination of these values
// to do queries that match either or both of the specified
// flags.  E.g. if the user used (PDCAP_D1_SUPPORTED | PDCAP_D3_SUPPORTED),
// then the query would return a device that supported *either*
// D1 or D3.  The user could specify QUERY_AND_OPERATION in
// QueryInterpretationFlags to get a device that supported
// D1 *and* D3.
//

//
// We also support querying on S states.  Although devices don't
// really understand system states, we can use the D-to-S state
// mappings to derive this.  For example, if we ask a device if
// he supports S2, we can derive that by looking at his D-to-S
// mappings.  Suppose the device has a D-to-S state mapping
// that looks like this:
// S0 -> D0
// S1 -> D3
// S2 -> D3
// S3 -> D3
// S4 -> D3
// S5 -> D3
//
// We see that S2 maps to D3 on this device.  Does this device
// actually support D3?  We can find that out.  If so, then we
// say that this device supports S2.
//
// We have to make up the S-state vectors because there's no
// existing values like the PDCAP_D* values.
//
#define PDCAP_S0_SUPPORTED              0x00010000
#define PDCAP_S1_SUPPORTED              0x00020000
#define PDCAP_S2_SUPPORTED              0x00040000
#define PDCAP_S3_SUPPORTED              0x00080000
#define PDCAP_WAKE_FROM_S0_SUPPORTED    0x00100000
#define PDCAP_WAKE_FROM_S1_SUPPORTED    0x00200000
#define PDCAP_WAKE_FROM_S2_SUPPORTED    0x00400000
#define PDCAP_WAKE_FROM_S3_SUPPORTED    0x00800000
#define PDCAP_S4_SUPPORTED              0x01000000
#define PDCAP_S5_SUPPORTED              0x02000000

//
// Function prototypes
//
#if (NTDDI_VERSION >= NTDDI_WS03)
STDAPI_(BOOLEAN)
DevicePowerEnumDevices(
    __in ULONG  QueryIndex,
    __in ULONG  QueryInterpretationFlags,
    __in ULONG  QueryFlags,
    __out_bcount_opt(*pBufferSize) PBYTE  pReturnBuffer,
    __inout PULONG pBufferSize
    );
#endif

#if (NTDDI_VERSION >= NTDDI_WS03)
STDAPI_(DWORD)
DevicePowerSetDeviceState(
    __in LPCWSTR DeviceDescription,
    __in ULONG SetFlags,
    __in_opt PVOID SetData
    );
#endif

#if (NTDDI_VERSION >= NTDDI_WS03)
STDAPI_(BOOLEAN)
DevicePowerOpen(
    __in_opt ULONG DebugMask
    );
#endif

#if (NTDDI_VERSION >= NTDDI_WS03)
STDAPI_(BOOLEAN)
DevicePowerClose(
    VOID
    );
#endif

#ifdef __cplusplus
}
#endif

