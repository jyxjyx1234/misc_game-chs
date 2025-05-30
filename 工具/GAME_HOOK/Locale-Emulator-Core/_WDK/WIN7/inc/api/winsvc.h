/*++ BUILD Version: 0010    // Increment this if a change has global effects

Copyright (c) 1995-1998  Microsoft Corporation

Module Name:

    winsvc.h

Abstract:

    Header file for the Service Control Manager

Environment:

    User Mode - Win32

--*/
#ifndef _WINSVC_
#define _WINSVC_

//
// Define API decoration for direct importing of DLL references.
//

#if !defined(WINADVAPI)
#if !defined(_ADVAPI32_)
#define WINADVAPI DECLSPEC_IMPORT
#else
#define WINADVAPI
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

//
// Constants
//

//
// Service database names
//

#define SERVICES_ACTIVE_DATABASEW      L"ServicesActive"
#define SERVICES_FAILED_DATABASEW      L"ServicesFailed"

#define SERVICES_ACTIVE_DATABASEA      "ServicesActive"
#define SERVICES_FAILED_DATABASEA      "ServicesFailed"

//
// Character to designate that a name is a group
//

#define SC_GROUP_IDENTIFIERW           L'+'
#define SC_GROUP_IDENTIFIERA           '+'

#ifdef UNICODE

#define SERVICES_ACTIVE_DATABASE       SERVICES_ACTIVE_DATABASEW
#define SERVICES_FAILED_DATABASE       SERVICES_FAILED_DATABASEW


#define SC_GROUP_IDENTIFIER            SC_GROUP_IDENTIFIERW

#else // ndef UNICODE

#define SERVICES_ACTIVE_DATABASE       SERVICES_ACTIVE_DATABASEA
#define SERVICES_FAILED_DATABASE       SERVICES_FAILED_DATABASEA

#define SC_GROUP_IDENTIFIER            SC_GROUP_IDENTIFIERA
#endif // ndef UNICODE


//
// Value to indicate no change to an optional parameter
//
#define SERVICE_NO_CHANGE              0xffffffff

//
// Service State -- for Enum Requests (Bit Mask)
//
#define SERVICE_ACTIVE                 0x00000001
#define SERVICE_INACTIVE               0x00000002
#define SERVICE_STATE_ALL              (SERVICE_ACTIVE   | \
                                        SERVICE_INACTIVE)

//
// Controls
//
#define SERVICE_CONTROL_STOP                   0x00000001
#define SERVICE_CONTROL_PAUSE                  0x00000002
#define SERVICE_CONTROL_CONTINUE               0x00000003
#define SERVICE_CONTROL_INTERROGATE            0x00000004
#define SERVICE_CONTROL_SHUTDOWN               0x00000005
#define SERVICE_CONTROL_PARAMCHANGE            0x00000006
#define SERVICE_CONTROL_NETBINDADD             0x00000007
#define SERVICE_CONTROL_NETBINDREMOVE          0x00000008
#define SERVICE_CONTROL_NETBINDENABLE          0x00000009
#define SERVICE_CONTROL_NETBINDDISABLE         0x0000000A
#define SERVICE_CONTROL_DEVICEEVENT            0x0000000B
#define SERVICE_CONTROL_HARDWAREPROFILECHANGE  0x0000000C
#define SERVICE_CONTROL_POWEREVENT             0x0000000D
#define SERVICE_CONTROL_SESSIONCHANGE          0x0000000E
#define SERVICE_CONTROL_PRESHUTDOWN            0x0000000F
#define SERVICE_CONTROL_TIMECHANGE             0x00000010
#define SERVICE_CONTROL_TRIGGEREVENT           0x00000020

//
// Service State -- for CurrentState
//
#define SERVICE_STOPPED                        0x00000001
#define SERVICE_START_PENDING                  0x00000002
#define SERVICE_STOP_PENDING                   0x00000003
#define SERVICE_RUNNING                        0x00000004
#define SERVICE_CONTINUE_PENDING               0x00000005
#define SERVICE_PAUSE_PENDING                  0x00000006
#define SERVICE_PAUSED                         0x00000007

//
// Controls Accepted  (Bit Mask)
//
#define SERVICE_ACCEPT_STOP                    0x00000001
#define SERVICE_ACCEPT_PAUSE_CONTINUE          0x00000002
#define SERVICE_ACCEPT_SHUTDOWN                0x00000004
#define SERVICE_ACCEPT_PARAMCHANGE             0x00000008
#define SERVICE_ACCEPT_NETBINDCHANGE           0x00000010
#define SERVICE_ACCEPT_HARDWAREPROFILECHANGE   0x00000020
#define SERVICE_ACCEPT_POWEREVENT              0x00000040
#define SERVICE_ACCEPT_SESSIONCHANGE           0x00000080
#define SERVICE_ACCEPT_PRESHUTDOWN             0x00000100
#define SERVICE_ACCEPT_TIMECHANGE              0x00000200
#define SERVICE_ACCEPT_TRIGGEREVENT            0x00000400

//
// Service Control Manager object specific access types
//
#define SC_MANAGER_CONNECT             0x0001
#define SC_MANAGER_CREATE_SERVICE      0x0002
#define SC_MANAGER_ENUMERATE_SERVICE   0x0004
#define SC_MANAGER_LOCK                0x0008
#define SC_MANAGER_QUERY_LOCK_STATUS   0x0010
#define SC_MANAGER_MODIFY_BOOT_CONFIG  0x0020

#define SC_MANAGER_ALL_ACCESS          (STANDARD_RIGHTS_REQUIRED      | \
                                        SC_MANAGER_CONNECT            | \
                                        SC_MANAGER_CREATE_SERVICE     | \
                                        SC_MANAGER_ENUMERATE_SERVICE  | \
                                        SC_MANAGER_LOCK               | \
                                        SC_MANAGER_QUERY_LOCK_STATUS  | \
                                        SC_MANAGER_MODIFY_BOOT_CONFIG)



//
// Service object specific access type
//
#define SERVICE_QUERY_CONFIG           0x0001
#define SERVICE_CHANGE_CONFIG          0x0002
#define SERVICE_QUERY_STATUS           0x0004
#define SERVICE_ENUMERATE_DEPENDENTS   0x0008
#define SERVICE_START                  0x0010
#define SERVICE_STOP                   0x0020
#define SERVICE_PAUSE_CONTINUE         0x0040
#define SERVICE_INTERROGATE            0x0080
#define SERVICE_USER_DEFINED_CONTROL   0x0100

#define SERVICE_ALL_ACCESS             (STANDARD_RIGHTS_REQUIRED     | \
                                        SERVICE_QUERY_CONFIG         | \
                                        SERVICE_CHANGE_CONFIG        | \
                                        SERVICE_QUERY_STATUS         | \
                                        SERVICE_ENUMERATE_DEPENDENTS | \
                                        SERVICE_START                | \
                                        SERVICE_STOP                 | \
                                        SERVICE_PAUSE_CONTINUE       | \
                                        SERVICE_INTERROGATE          | \
                                        SERVICE_USER_DEFINED_CONTROL)

//
// Service flags for QueryServiceStatusEx
//
#define SERVICE_RUNS_IN_SYSTEM_PROCESS  0x00000001

//
// Info levels for ChangeServiceConfig2 and QueryServiceConfig2
//
#define SERVICE_CONFIG_DESCRIPTION              1
#define SERVICE_CONFIG_FAILURE_ACTIONS          2
#define SERVICE_CONFIG_DELAYED_AUTO_START_INFO  3
#define SERVICE_CONFIG_FAILURE_ACTIONS_FLAG     4
#define SERVICE_CONFIG_SERVICE_SID_INFO         5
#define SERVICE_CONFIG_REQUIRED_PRIVILEGES_INFO 6
#define SERVICE_CONFIG_PRESHUTDOWN_INFO         7
#define SERVICE_CONFIG_TRIGGER_INFO             8
#define SERVICE_CONFIG_PREFERRED_NODE           9

//
// Info levels for NotifyServiceStatusChange
//
#define SERVICE_NOTIFY_STATUS_CHANGE_1          1
#define SERVICE_NOTIFY_STATUS_CHANGE_2          2

#define SERVICE_NOTIFY_STATUS_CHANGE            SERVICE_NOTIFY_STATUS_CHANGE_2

//
// Service notification masks
//
#define SERVICE_NOTIFY_STOPPED                  0x00000001
#define SERVICE_NOTIFY_START_PENDING            0x00000002
#define SERVICE_NOTIFY_STOP_PENDING             0x00000004
#define SERVICE_NOTIFY_RUNNING                  0x00000008
#define SERVICE_NOTIFY_CONTINUE_PENDING         0x00000010
#define SERVICE_NOTIFY_PAUSE_PENDING            0x00000020
#define SERVICE_NOTIFY_PAUSED                   0x00000040
#define SERVICE_NOTIFY_CREATED                  0x00000080
#define SERVICE_NOTIFY_DELETED                  0x00000100
#define SERVICE_NOTIFY_DELETE_PENDING           0x00000200

//
// The following defines are for service stop reason codes
//

//
// Stop reason flags. Update SERVICE_STOP_REASON_FLAG_MAX when
// new flags are added.
//
#define SERVICE_STOP_REASON_FLAG_MIN                            0x00000000
#define SERVICE_STOP_REASON_FLAG_UNPLANNED                      0x10000000
#define SERVICE_STOP_REASON_FLAG_CUSTOM                         0x20000000
#define SERVICE_STOP_REASON_FLAG_PLANNED                        0x40000000
#define SERVICE_STOP_REASON_FLAG_MAX                            0x80000000

//
// Microsoft major reasons. Update SERVICE_STOP_REASON_MAJOR_MAX when
// new codes are added.
//
#define SERVICE_STOP_REASON_MAJOR_MIN                           0x00000000
#define SERVICE_STOP_REASON_MAJOR_OTHER                         0x00010000
#define SERVICE_STOP_REASON_MAJOR_HARDWARE                      0x00020000
#define SERVICE_STOP_REASON_MAJOR_OPERATINGSYSTEM               0x00030000
#define SERVICE_STOP_REASON_MAJOR_SOFTWARE                      0x00040000
#define SERVICE_STOP_REASON_MAJOR_APPLICATION                   0x00050000
#define SERVICE_STOP_REASON_MAJOR_NONE                          0x00060000
#define SERVICE_STOP_REASON_MAJOR_MAX                           0x00070000
#define SERVICE_STOP_REASON_MAJOR_MIN_CUSTOM                    0x00400000
#define SERVICE_STOP_REASON_MAJOR_MAX_CUSTOM                    0x00ff0000

//
// Microsoft minor reasons. Update SERVICE_STOP_REASON_MINOR_MAX when
// new codes are added.
//
#define SERVICE_STOP_REASON_MINOR_MIN                           0x00000000
#define SERVICE_STOP_REASON_MINOR_OTHER                         0x00000001
#define SERVICE_STOP_REASON_MINOR_MAINTENANCE                   0x00000002
#define SERVICE_STOP_REASON_MINOR_INSTALLATION                  0x00000003
#define SERVICE_STOP_REASON_MINOR_UPGRADE                       0x00000004
#define SERVICE_STOP_REASON_MINOR_RECONFIG                      0x00000005
#define SERVICE_STOP_REASON_MINOR_HUNG                          0x00000006
#define SERVICE_STOP_REASON_MINOR_UNSTABLE                      0x00000007
#define SERVICE_STOP_REASON_MINOR_DISK                          0x00000008
#define SERVICE_STOP_REASON_MINOR_NETWORKCARD                   0x00000009
#define SERVICE_STOP_REASON_MINOR_ENVIRONMENT                   0x0000000a
#define SERVICE_STOP_REASON_MINOR_HARDWARE_DRIVER               0x0000000b
#define SERVICE_STOP_REASON_MINOR_OTHERDRIVER                   0x0000000c
#define SERVICE_STOP_REASON_MINOR_SERVICEPACK                   0x0000000d
#define SERVICE_STOP_REASON_MINOR_SOFTWARE_UPDATE               0x0000000e
#define SERVICE_STOP_REASON_MINOR_SECURITYFIX                   0x0000000f
#define SERVICE_STOP_REASON_MINOR_SECURITY                      0x00000010
#define SERVICE_STOP_REASON_MINOR_NETWORK_CONNECTIVITY          0x00000011
#define SERVICE_STOP_REASON_MINOR_WMI                           0x00000012
#define SERVICE_STOP_REASON_MINOR_SERVICEPACK_UNINSTALL         0x00000013
#define SERVICE_STOP_REASON_MINOR_SOFTWARE_UPDATE_UNINSTALL     0x00000014
#define SERVICE_STOP_REASON_MINOR_SECURITYFIX_UNINSTALL         0x00000015
#define SERVICE_STOP_REASON_MINOR_MMC                           0x00000016
#define SERVICE_STOP_REASON_MINOR_NONE                          0x00000017
#define SERVICE_STOP_REASON_MINOR_MAX                           0x00000018
#define SERVICE_STOP_REASON_MINOR_MIN_CUSTOM                    0x00000100
#define SERVICE_STOP_REASON_MINOR_MAX_CUSTOM                    0x0000FFFF

//
// Info levels for ControlServiceEx
//
#define SERVICE_CONTROL_STATUS_REASON_INFO      1

//
// Service SID types supported
//
#define SERVICE_SID_TYPE_NONE                                   0x00000000
#define SERVICE_SID_TYPE_UNRESTRICTED                           0x00000001
#define SERVICE_SID_TYPE_RESTRICTED                             ( 0x00000002 | SERVICE_SID_TYPE_UNRESTRICTED )

//
// Service trigger types
//
#define SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL               1
#define SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY                2
#define SERVICE_TRIGGER_TYPE_DOMAIN_JOIN                            3
#define SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT                    4
#define SERVICE_TRIGGER_TYPE_GROUP_POLICY                           5
#define SERVICE_TRIGGER_TYPE_CUSTOM                                 20

//
// Service trigger data types
//
#define SERVICE_TRIGGER_DATA_TYPE_BINARY                            1
#define SERVICE_TRIGGER_DATA_TYPE_STRING                            2

//
//  NETWORK_MANAGER_FIRST_IP_ADDRESS_ARRIVAL_GUID & NETWORK_MANAGER_LAST_IP_ADDRESS_REMOVAL_GUID are used with
//  SERVICE_TRIGGER_TYPE_IP_ADDRESS_AVAILABILITY trigger.
//
DEFINE_GUID ( /* 4f27f2de-14e2-430b-a549-7cd48cbc8245 */
    NETWORK_MANAGER_FIRST_IP_ADDRESS_ARRIVAL_GUID,
    0x4f27f2de,
    0x14e2,
    0x430b,
    0xa5, 0x49, 0x7c, 0xd4, 0x8c, 0xbc, 0x82, 0x45
  );

DEFINE_GUID ( /* cc4ba62a-162e-4648-847a-b6bdf993e335 */
    NETWORK_MANAGER_LAST_IP_ADDRESS_REMOVAL_GUID,
    0xcc4ba62a,
    0x162e,
    0x4648,
    0x84, 0x7a, 0xb6, 0xbd, 0xf9, 0x93, 0xe3, 0x35
  );

//
//  DOMAIN_JOIN_GUID & DOMAIN_LEAVE_GUID are used with SERVICE_TRIGGER_TYPE_DOMAIN_JOIN trigger.
//
DEFINE_GUID ( /* 1ce20aba-9851-4421-9430-1ddeb766e809 */
    DOMAIN_JOIN_GUID,
    0x1ce20aba,
    0x9851,
    0x4421,
    0x94, 0x30, 0x1d, 0xde, 0xb7, 0x66, 0xe8, 0x09
  );

DEFINE_GUID ( /* ddaf516e-58c2-4866-9574-c3b615d42ea1 */
    DOMAIN_LEAVE_GUID,
    0xddaf516e,
    0x58c2,
    0x4866,
    0x95, 0x74, 0xc3, 0xb6, 0x15, 0xd4, 0x2e, 0xa1
  );

//
//  FIREWALL_PORT_OPEN_GUID & FIREWALL_PORT_CLOSE_GUID are used with
//  SERVICE_TRIGGER_TYPE_FIREWALL_PORT_EVENT trigger.
//
DEFINE_GUID ( /* b7569e07-8421-4ee0-ad10-86915afdad09 */
    FIREWALL_PORT_OPEN_GUID,
    0xb7569e07,
    0x8421,
    0x4ee0,
    0xad, 0x10, 0x86, 0x91, 0x5a, 0xfd, 0xad, 0x09
  );

DEFINE_GUID ( /* a144ed38-8e12-4de4-9d96-e64740b1a524 */
    FIREWALL_PORT_CLOSE_GUID,
    0xa144ed38,
    0x8e12,
    0x4de4,
    0x9d, 0x96, 0xe6, 0x47, 0x40, 0xb1, 0xa5, 0x24
  );

//
//  MACHINE_POLICY_PRESENT_GUID & USER_POLICY_PRESENT_GUID are used with
//  SERVICE_TRIGGER_TYPE_GROUP_POLICY trigger.
//
DEFINE_GUID ( /* 659FCAE6-5BDB-4DA9-B1FF-CA2A178D46E0 */
    MACHINE_POLICY_PRESENT_GUID,
    0x659FCAE6,
    0x5BDB,
    0x4DA9,
    0xB1, 0xFF, 0xCA, 0x2A, 0x17, 0x8D, 0x46, 0xE0
  );

DEFINE_GUID ( /* 54FB46C8-F089-464C-B1FD-59D1B62C3B50 */
    USER_POLICY_PRESENT_GUID,
    0x54FB46C8,
    0xF089,
    0x464C,
    0xB1, 0xFD, 0x59, 0xD1, 0xB6, 0x2C, 0x3B, 0x50
  );

//
// Service trigger actions
//
#define SERVICE_TRIGGER_ACTION_SERVICE_START                        1
#define SERVICE_TRIGGER_ACTION_SERVICE_STOP                         2

//
// argv[1] passed into ServiceMain of trigger started services
//
#define SERVICE_TRIGGER_STARTED_ARGUMENT                L"TriggerStarted"

//
// Service description string
//
typedef struct _SERVICE_DESCRIPTIONA {
    LPSTR       lpDescription;
} SERVICE_DESCRIPTIONA, *LPSERVICE_DESCRIPTIONA;
//
// Service description string
//
typedef struct _SERVICE_DESCRIPTIONW {
    LPWSTR      lpDescription;
} SERVICE_DESCRIPTIONW, *LPSERVICE_DESCRIPTIONW;
#ifdef UNICODE
typedef SERVICE_DESCRIPTIONW SERVICE_DESCRIPTION;
typedef LPSERVICE_DESCRIPTIONW LPSERVICE_DESCRIPTION;
#else
typedef SERVICE_DESCRIPTIONA SERVICE_DESCRIPTION;
typedef LPSERVICE_DESCRIPTIONA LPSERVICE_DESCRIPTION;
#endif // UNICODE

//
// Actions to take on service failure
//
typedef enum _SC_ACTION_TYPE {
        SC_ACTION_NONE          = 0,
        SC_ACTION_RESTART       = 1,
        SC_ACTION_REBOOT        = 2,
        SC_ACTION_RUN_COMMAND   = 3
} SC_ACTION_TYPE;

typedef struct _SC_ACTION {
    SC_ACTION_TYPE  Type;
    DWORD           Delay;
} SC_ACTION, *LPSC_ACTION;

typedef struct _SERVICE_FAILURE_ACTIONSA {
    DWORD       dwResetPeriod;
    LPSTR       lpRebootMsg;
    LPSTR       lpCommand;
#ifdef __midl
    [range(0, 1024)]
#endif
    DWORD       cActions;
#ifdef __midl
    [size_is(cActions)]
#endif
    SC_ACTION * lpsaActions;
} SERVICE_FAILURE_ACTIONSA, *LPSERVICE_FAILURE_ACTIONSA;
typedef struct _SERVICE_FAILURE_ACTIONSW {
    DWORD       dwResetPeriod;
    LPWSTR      lpRebootMsg;
    LPWSTR      lpCommand;
#ifdef __midl
    [range(0, 1024)]
#endif
    DWORD       cActions;
#ifdef __midl
    [size_is(cActions)]
#endif
    SC_ACTION * lpsaActions;
} SERVICE_FAILURE_ACTIONSW, *LPSERVICE_FAILURE_ACTIONSW;
#ifdef UNICODE
typedef SERVICE_FAILURE_ACTIONSW SERVICE_FAILURE_ACTIONS;
typedef LPSERVICE_FAILURE_ACTIONSW LPSERVICE_FAILURE_ACTIONS;
#else
typedef SERVICE_FAILURE_ACTIONSA SERVICE_FAILURE_ACTIONS;
typedef LPSERVICE_FAILURE_ACTIONSA LPSERVICE_FAILURE_ACTIONS;
#endif // UNICODE

//
// Service delayed autostart info setting
//
typedef struct _SERVICE_DELAYED_AUTO_START_INFO {
    BOOL       fDelayedAutostart;      // Delayed autostart flag
} SERVICE_DELAYED_AUTO_START_INFO, *LPSERVICE_DELAYED_AUTO_START_INFO;

//
// Service failure actions flag setting
//
typedef struct _SERVICE_FAILURE_ACTIONS_FLAG {
    BOOL       fFailureActionsOnNonCrashFailures;       // Failure actions flag
} SERVICE_FAILURE_ACTIONS_FLAG, *LPSERVICE_FAILURE_ACTIONS_FLAG;

//
// Service SID info setting
//
typedef struct _SERVICE_SID_INFO {
    DWORD       dwServiceSidType;     // Service SID type
} SERVICE_SID_INFO, *LPSERVICE_SID_INFO;

//
// Service required privileges information
//
typedef struct _SERVICE_REQUIRED_PRIVILEGES_INFOA {
    LPSTR       pmszRequiredPrivileges;             // Required privileges multi-sz
} SERVICE_REQUIRED_PRIVILEGES_INFOA, *LPSERVICE_REQUIRED_PRIVILEGES_INFOA;
//
// Service required privileges information
//
typedef struct _SERVICE_REQUIRED_PRIVILEGES_INFOW {
    LPWSTR      pmszRequiredPrivileges;             // Required privileges multi-sz
} SERVICE_REQUIRED_PRIVILEGES_INFOW, *LPSERVICE_REQUIRED_PRIVILEGES_INFOW;
#ifdef UNICODE
typedef SERVICE_REQUIRED_PRIVILEGES_INFOW SERVICE_REQUIRED_PRIVILEGES_INFO;
typedef LPSERVICE_REQUIRED_PRIVILEGES_INFOW LPSERVICE_REQUIRED_PRIVILEGES_INFO;
#else
typedef SERVICE_REQUIRED_PRIVILEGES_INFOA SERVICE_REQUIRED_PRIVILEGES_INFO;
typedef LPSERVICE_REQUIRED_PRIVILEGES_INFOA LPSERVICE_REQUIRED_PRIVILEGES_INFO;
#endif // UNICODE

//
// Service preshutdown timeout setting
//
typedef struct _SERVICE_PRESHUTDOWN_INFO {
    DWORD       dwPreshutdownTimeout;   // Timeout in msecs
} SERVICE_PRESHUTDOWN_INFO, *LPSERVICE_PRESHUTDOWN_INFO;

//
//  Service trigger data item
//
typedef struct _SERVICE_TRIGGER_SPECIFIC_DATA_ITEM
{
    DWORD   dwDataType; // Data type -- one of SERVICE_TRIGGER_DATA_TYPE_* constants
#ifdef __midl
    [range(0, 1024)]
#endif
    DWORD   cbData;     // Size of trigger specific data
#ifdef __midl
    [size_is(cbData)]
#endif
    PBYTE   pData;      // Trigger specific data
} SERVICE_TRIGGER_SPECIFIC_DATA_ITEM, *PSERVICE_TRIGGER_SPECIFIC_DATA_ITEM;

//
//  Trigger-specific information
//
typedef struct _SERVICE_TRIGGER
{
    DWORD                       dwTriggerType;              // One of SERVICE_TRIGGER_TYPE_* constants
    DWORD                       dwAction;                   // One of SERVICE_TRIGGER_ACTION_* constants
    GUID    *                   pTriggerSubtype;            // Provider GUID if the trigger type is SERVICE_TRIGGER_TYPE_CUSTOM
                                                            // Device class interface GUID if the trigger type is
                                                            // SERVICE_TRIGGER_TYPE_DEVICE_INTERFACE_ARRIVAL
#ifdef __midl
    [range(0, 64)]
#endif
    DWORD                       cDataItems;                 // Number of data items in pDataItems array
#ifdef __midl
    [size_is(cDataItems)]
#endif
    PSERVICE_TRIGGER_SPECIFIC_DATA_ITEM  pDataItems;       // Trigger specific data
} SERVICE_TRIGGER, *PSERVICE_TRIGGER;

//
// Service trigger information
//
typedef struct _SERVICE_TRIGGER_INFO {
#ifdef __midl
    [range(0, 64)]
#endif
    DWORD                   cTriggers;  // Number of triggers in the pTriggers array
#ifdef __midl
    [size_is(cTriggers)]
#endif
    PSERVICE_TRIGGER        pTriggers;  // Array of triggers
    PBYTE                   pReserved;  // Reserved, must be NULL
} SERVICE_TRIGGER_INFO, *PSERVICE_TRIGGER_INFO;

//
// Preferred node information
//
typedef struct _SERVICE_PREFERRED_NODE_INFO {
    USHORT                  usPreferredNode;    // Preferred node
    BOOLEAN                 fDelete;            // Delete the preferred node setting
} SERVICE_PREFERRED_NODE_INFO, *LPSERVICE_PREFERRED_NODE_INFO;

//
// Time change information
//
typedef struct _SERVICE_TIMECHANGE_INFO {
    LARGE_INTEGER   liNewTime;      // New time
    LARGE_INTEGER   liOldTime;      // Old time
} SERVICE_TIMECHANGE_INFO, *PSERVICE_TIMECHANGE_INFO;

//
// Handle Types
//

DECLARE_HANDLE(SC_HANDLE);
typedef SC_HANDLE   *LPSC_HANDLE;

DECLARE_HANDLE(SERVICE_STATUS_HANDLE);

//
// Info levels for QueryServiceStatusEx
//

typedef enum _SC_STATUS_TYPE {
    SC_STATUS_PROCESS_INFO      = 0
} SC_STATUS_TYPE;

//
// Info levels for EnumServicesStatusEx
//
typedef enum _SC_ENUM_TYPE {
    SC_ENUM_PROCESS_INFO        = 0
} SC_ENUM_TYPE;


//
// Service Status Structures
//

typedef struct _SERVICE_STATUS {
    DWORD   dwServiceType;
    DWORD   dwCurrentState;
    DWORD   dwControlsAccepted;
    DWORD   dwWin32ExitCode;
    DWORD   dwServiceSpecificExitCode;
    DWORD   dwCheckPoint;
    DWORD   dwWaitHint;
} SERVICE_STATUS, *LPSERVICE_STATUS;

typedef struct _SERVICE_STATUS_PROCESS {
    DWORD   dwServiceType;
    DWORD   dwCurrentState;
    DWORD   dwControlsAccepted;
    DWORD   dwWin32ExitCode;
    DWORD   dwServiceSpecificExitCode;
    DWORD   dwCheckPoint;
    DWORD   dwWaitHint;
    DWORD   dwProcessId;
    DWORD   dwServiceFlags;
} SERVICE_STATUS_PROCESS, *LPSERVICE_STATUS_PROCESS;


//
// Service Status Enumeration Structure
//

typedef struct _ENUM_SERVICE_STATUSA {
    LPSTR             lpServiceName;
    LPSTR             lpDisplayName;
    SERVICE_STATUS    ServiceStatus;
} ENUM_SERVICE_STATUSA, *LPENUM_SERVICE_STATUSA;
typedef struct _ENUM_SERVICE_STATUSW {
    LPWSTR            lpServiceName;
    LPWSTR            lpDisplayName;
    SERVICE_STATUS    ServiceStatus;
} ENUM_SERVICE_STATUSW, *LPENUM_SERVICE_STATUSW;
#ifdef UNICODE
typedef ENUM_SERVICE_STATUSW ENUM_SERVICE_STATUS;
typedef LPENUM_SERVICE_STATUSW LPENUM_SERVICE_STATUS;
#else
typedef ENUM_SERVICE_STATUSA ENUM_SERVICE_STATUS;
typedef LPENUM_SERVICE_STATUSA LPENUM_SERVICE_STATUS;
#endif // UNICODE

typedef struct _ENUM_SERVICE_STATUS_PROCESSA {
    LPSTR                     lpServiceName;
    LPSTR                     lpDisplayName;
    SERVICE_STATUS_PROCESS    ServiceStatusProcess;
} ENUM_SERVICE_STATUS_PROCESSA, *LPENUM_SERVICE_STATUS_PROCESSA;
typedef struct _ENUM_SERVICE_STATUS_PROCESSW {
    LPWSTR                    lpServiceName;
    LPWSTR                    lpDisplayName;
    SERVICE_STATUS_PROCESS    ServiceStatusProcess;
} ENUM_SERVICE_STATUS_PROCESSW, *LPENUM_SERVICE_STATUS_PROCESSW;
#ifdef UNICODE
typedef ENUM_SERVICE_STATUS_PROCESSW ENUM_SERVICE_STATUS_PROCESS;
typedef LPENUM_SERVICE_STATUS_PROCESSW LPENUM_SERVICE_STATUS_PROCESS;
#else
typedef ENUM_SERVICE_STATUS_PROCESSA ENUM_SERVICE_STATUS_PROCESS;
typedef LPENUM_SERVICE_STATUS_PROCESSA LPENUM_SERVICE_STATUS_PROCESS;
#endif // UNICODE

//
// Structures for the Lock API functions
//

typedef LPVOID  SC_LOCK;

typedef struct _QUERY_SERVICE_LOCK_STATUSA {
    DWORD   fIsLocked;
    LPSTR   lpLockOwner;
    DWORD   dwLockDuration;
} QUERY_SERVICE_LOCK_STATUSA, *LPQUERY_SERVICE_LOCK_STATUSA;
typedef struct _QUERY_SERVICE_LOCK_STATUSW {
    DWORD   fIsLocked;
    LPWSTR  lpLockOwner;
    DWORD   dwLockDuration;
} QUERY_SERVICE_LOCK_STATUSW, *LPQUERY_SERVICE_LOCK_STATUSW;
#ifdef UNICODE
typedef QUERY_SERVICE_LOCK_STATUSW QUERY_SERVICE_LOCK_STATUS;
typedef LPQUERY_SERVICE_LOCK_STATUSW LPQUERY_SERVICE_LOCK_STATUS;
#else
typedef QUERY_SERVICE_LOCK_STATUSA QUERY_SERVICE_LOCK_STATUS;
typedef LPQUERY_SERVICE_LOCK_STATUSA LPQUERY_SERVICE_LOCK_STATUS;
#endif // UNICODE



//
// Query Service Configuration Structure
//

typedef struct _QUERY_SERVICE_CONFIGA {
    DWORD   dwServiceType;
    DWORD   dwStartType;
    DWORD   dwErrorControl;
    LPSTR   lpBinaryPathName;
    LPSTR   lpLoadOrderGroup;
    DWORD   dwTagId;
    LPSTR   lpDependencies;
    LPSTR   lpServiceStartName;
    LPSTR   lpDisplayName;
} QUERY_SERVICE_CONFIGA, *LPQUERY_SERVICE_CONFIGA;
typedef struct _QUERY_SERVICE_CONFIGW {
    DWORD   dwServiceType;
    DWORD   dwStartType;
    DWORD   dwErrorControl;
    LPWSTR  lpBinaryPathName;
    LPWSTR  lpLoadOrderGroup;
    DWORD   dwTagId;
    LPWSTR  lpDependencies;
    LPWSTR  lpServiceStartName;
    LPWSTR  lpDisplayName;
} QUERY_SERVICE_CONFIGW, *LPQUERY_SERVICE_CONFIGW;
#ifdef UNICODE
typedef QUERY_SERVICE_CONFIGW QUERY_SERVICE_CONFIG;
typedef LPQUERY_SERVICE_CONFIGW LPQUERY_SERVICE_CONFIG;
#else
typedef QUERY_SERVICE_CONFIGA QUERY_SERVICE_CONFIG;
typedef LPQUERY_SERVICE_CONFIGA LPQUERY_SERVICE_CONFIG;
#endif // UNICODE



//
// Function Prototype for the Service Main Function
//

typedef VOID (WINAPI *LPSERVICE_MAIN_FUNCTIONW)(
    DWORD   dwNumServicesArgs,
    LPWSTR  *lpServiceArgVectors
    );

typedef VOID (WINAPI *LPSERVICE_MAIN_FUNCTIONA)(
    DWORD   dwNumServicesArgs,
    LPSTR   *lpServiceArgVectors
    );

#ifdef UNICODE
#define LPSERVICE_MAIN_FUNCTION LPSERVICE_MAIN_FUNCTIONW
#else
#define LPSERVICE_MAIN_FUNCTION LPSERVICE_MAIN_FUNCTIONA
#endif //UNICODE


//
// Service Start Table
//

typedef struct _SERVICE_TABLE_ENTRYA {
    LPSTR                       lpServiceName;
    LPSERVICE_MAIN_FUNCTIONA    lpServiceProc;
}SERVICE_TABLE_ENTRYA, *LPSERVICE_TABLE_ENTRYA;
typedef struct _SERVICE_TABLE_ENTRYW {
    LPWSTR                      lpServiceName;
    LPSERVICE_MAIN_FUNCTIONW    lpServiceProc;
}SERVICE_TABLE_ENTRYW, *LPSERVICE_TABLE_ENTRYW;
#ifdef UNICODE
typedef SERVICE_TABLE_ENTRYW SERVICE_TABLE_ENTRY;
typedef LPSERVICE_TABLE_ENTRYW LPSERVICE_TABLE_ENTRY;
#else
typedef SERVICE_TABLE_ENTRYA SERVICE_TABLE_ENTRY;
typedef LPSERVICE_TABLE_ENTRYA LPSERVICE_TABLE_ENTRY;
#endif // UNICODE

//
// Prototype for the Service Control Handler Function
//

typedef VOID (WINAPI *LPHANDLER_FUNCTION)(
    DWORD    dwControl
    );

typedef DWORD (WINAPI *LPHANDLER_FUNCTION_EX)(
    DWORD    dwControl,
    DWORD    dwEventType,
    LPVOID   lpEventData,
    LPVOID   lpContext
    );

//
// Service notification parameters
//
typedef
VOID
( CALLBACK * PFN_SC_NOTIFY_CALLBACK ) (
    __in PVOID pParameter
    );

//
//  Each new notify structure is a superset of the older version
//
typedef struct _SERVICE_NOTIFY_1 {
    DWORD                   dwVersion;
    PFN_SC_NOTIFY_CALLBACK  pfnNotifyCallback;
    PVOID                   pContext;
    DWORD                   dwNotificationStatus;
    SERVICE_STATUS_PROCESS  ServiceStatus;
} SERVICE_NOTIFY_1, *PSERVICE_NOTIFY_1;

typedef struct _SERVICE_NOTIFY_2A {
    DWORD                   dwVersion;
    PFN_SC_NOTIFY_CALLBACK  pfnNotifyCallback;
    PVOID                   pContext;
    DWORD                   dwNotificationStatus;
    SERVICE_STATUS_PROCESS  ServiceStatus;
    DWORD                   dwNotificationTriggered;
    LPSTR                   pszServiceNames;
} SERVICE_NOTIFY_2A, *PSERVICE_NOTIFY_2A;
typedef struct _SERVICE_NOTIFY_2W {
    DWORD                   dwVersion;
    PFN_SC_NOTIFY_CALLBACK  pfnNotifyCallback;
    PVOID                   pContext;
    DWORD                   dwNotificationStatus;
    SERVICE_STATUS_PROCESS  ServiceStatus;
    DWORD                   dwNotificationTriggered;
    LPWSTR                  pszServiceNames;
} SERVICE_NOTIFY_2W, *PSERVICE_NOTIFY_2W;
#ifdef UNICODE
typedef SERVICE_NOTIFY_2W SERVICE_NOTIFY_2;
typedef PSERVICE_NOTIFY_2W PSERVICE_NOTIFY_2;
#else
typedef SERVICE_NOTIFY_2A SERVICE_NOTIFY_2;
typedef PSERVICE_NOTIFY_2A PSERVICE_NOTIFY_2;
#endif // UNICODE

typedef SERVICE_NOTIFY_2A SERVICE_NOTIFYA, *PSERVICE_NOTIFYA;
typedef SERVICE_NOTIFY_2W SERVICE_NOTIFYW, *PSERVICE_NOTIFYW;
#ifdef UNICODE
typedef SERVICE_NOTIFYW SERVICE_NOTIFY;
typedef PSERVICE_NOTIFYW PSERVICE_NOTIFY;
#else
typedef SERVICE_NOTIFYA SERVICE_NOTIFY;
typedef PSERVICE_NOTIFYA PSERVICE_NOTIFY;
#endif // UNICODE

//
// Service control status reason parameters
//
typedef struct _SERVICE_CONTROL_STATUS_REASON_PARAMSA {
    DWORD                   dwReason;
    LPSTR                   pszComment;
    SERVICE_STATUS_PROCESS  ServiceStatus;
} SERVICE_CONTROL_STATUS_REASON_PARAMSA, *PSERVICE_CONTROL_STATUS_REASON_PARAMSA;
//
// Service control status reason parameters
//
typedef struct _SERVICE_CONTROL_STATUS_REASON_PARAMSW {
    DWORD                   dwReason;
    LPWSTR                  pszComment;
    SERVICE_STATUS_PROCESS  ServiceStatus;
} SERVICE_CONTROL_STATUS_REASON_PARAMSW, *PSERVICE_CONTROL_STATUS_REASON_PARAMSW;
#ifdef UNICODE
typedef SERVICE_CONTROL_STATUS_REASON_PARAMSW SERVICE_CONTROL_STATUS_REASON_PARAMS;
typedef PSERVICE_CONTROL_STATUS_REASON_PARAMSW PSERVICE_CONTROL_STATUS_REASON_PARAMS;
#else
typedef SERVICE_CONTROL_STATUS_REASON_PARAMSA SERVICE_CONTROL_STATUS_REASON_PARAMS;
typedef PSERVICE_CONTROL_STATUS_REASON_PARAMSA PSERVICE_CONTROL_STATUS_REASON_PARAMS;
#endif // UNICODE

///////////////////////////////////////////////////////////////////////////
// API Function Prototypes
///////////////////////////////////////////////////////////////////////////

WINADVAPI
BOOL
WINAPI
ChangeServiceConfigA(
    __in        SC_HANDLE    hService,
    __in        DWORD        dwServiceType,
    __in        DWORD        dwStartType,
    __in        DWORD        dwErrorControl,
    __in_opt    LPCSTR     lpBinaryPathName,
    __in_opt    LPCSTR     lpLoadOrderGroup,
    __out_opt   LPDWORD      lpdwTagId,
    __in_opt    LPCSTR     lpDependencies,
    __in_opt    LPCSTR     lpServiceStartName,
    __in_opt    LPCSTR     lpPassword,
    __in_opt    LPCSTR     lpDisplayName
    );
WINADVAPI
BOOL
WINAPI
ChangeServiceConfigW(
    __in        SC_HANDLE    hService,
    __in        DWORD        dwServiceType,
    __in        DWORD        dwStartType,
    __in        DWORD        dwErrorControl,
    __in_opt    LPCWSTR     lpBinaryPathName,
    __in_opt    LPCWSTR     lpLoadOrderGroup,
    __out_opt   LPDWORD      lpdwTagId,
    __in_opt    LPCWSTR     lpDependencies,
    __in_opt    LPCWSTR     lpServiceStartName,
    __in_opt    LPCWSTR     lpPassword,
    __in_opt    LPCWSTR     lpDisplayName
    );
#ifdef UNICODE
#define ChangeServiceConfig  ChangeServiceConfigW
#else
#define ChangeServiceConfig  ChangeServiceConfigA
#endif // !UNICODE

WINADVAPI
BOOL
WINAPI
ChangeServiceConfig2A(
    __in        SC_HANDLE    hService,
    __in        DWORD        dwInfoLevel,
    __in_opt    LPVOID       lpInfo
    );
WINADVAPI
BOOL
WINAPI
ChangeServiceConfig2W(
    __in        SC_HANDLE    hService,
    __in        DWORD        dwInfoLevel,
    __in_opt    LPVOID       lpInfo
    );
#ifdef UNICODE
#define ChangeServiceConfig2  ChangeServiceConfig2W
#else
#define ChangeServiceConfig2  ChangeServiceConfig2A
#endif // !UNICODE

WINADVAPI
BOOL
WINAPI
CloseServiceHandle(
    __in        SC_HANDLE   hSCObject
    );

WINADVAPI
BOOL
WINAPI
ControlService(
    __in        SC_HANDLE           hService,
    __in        DWORD               dwControl,
    __out       LPSERVICE_STATUS    lpServiceStatus
    );

__checkReturn
WINADVAPI
SC_HANDLE
WINAPI
CreateServiceA(
    __in        SC_HANDLE    hSCManager,
    __in        LPCSTR     lpServiceName,
    __in_opt    LPCSTR     lpDisplayName,
    __in        DWORD        dwDesiredAccess,
    __in        DWORD        dwServiceType,
    __in        DWORD        dwStartType,
    __in        DWORD        dwErrorControl,
    __in_opt    LPCSTR     lpBinaryPathName,
    __in_opt    LPCSTR     lpLoadOrderGroup,
    __out_opt   LPDWORD      lpdwTagId,
    __in_opt    LPCSTR     lpDependencies,
    __in_opt    LPCSTR     lpServiceStartName,
    __in_opt    LPCSTR     lpPassword
    );
__checkReturn
WINADVAPI
SC_HANDLE
WINAPI
CreateServiceW(
    __in        SC_HANDLE    hSCManager,
    __in        LPCWSTR     lpServiceName,
    __in_opt    LPCWSTR     lpDisplayName,
    __in        DWORD        dwDesiredAccess,
    __in        DWORD        dwServiceType,
    __in        DWORD        dwStartType,
    __in        DWORD        dwErrorControl,
    __in_opt    LPCWSTR     lpBinaryPathName,
    __in_opt    LPCWSTR     lpLoadOrderGroup,
    __out_opt   LPDWORD      lpdwTagId,
    __in_opt    LPCWSTR     lpDependencies,
    __in_opt    LPCWSTR     lpServiceStartName,
    __in_opt    LPCWSTR     lpPassword
    );
#ifdef UNICODE
#define CreateService  CreateServiceW
#else
#define CreateService  CreateServiceA
#endif // !UNICODE

WINADVAPI
BOOL
WINAPI
DeleteService(
    __in        SC_HANDLE   hService
    );

__checkReturn
WINADVAPI
BOOL
WINAPI
EnumDependentServicesA(
    __in            SC_HANDLE               hService,
    __in            DWORD                   dwServiceState,
    __out_bcount_opt(cbBufSize)
                    LPENUM_SERVICE_STATUSA  lpServices,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded,
    __out           LPDWORD                 lpServicesReturned
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
EnumDependentServicesW(
    __in            SC_HANDLE               hService,
    __in            DWORD                   dwServiceState,
    __out_bcount_opt(cbBufSize)
                    LPENUM_SERVICE_STATUSW  lpServices,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded,
    __out           LPDWORD                 lpServicesReturned
    );
#ifdef UNICODE
#define EnumDependentServices  EnumDependentServicesW
#else
#define EnumDependentServices  EnumDependentServicesA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
EnumServicesStatusA(
    __in            SC_HANDLE               hSCManager,
    __in            DWORD                   dwServiceType,
    __in            DWORD                   dwServiceState,
    __out_bcount_opt(cbBufSize)
                    LPENUM_SERVICE_STATUSA  lpServices,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded,
    __out           LPDWORD                 lpServicesReturned,
    __inout_opt     LPDWORD                 lpResumeHandle
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
EnumServicesStatusW(
    __in            SC_HANDLE               hSCManager,
    __in            DWORD                   dwServiceType,
    __in            DWORD                   dwServiceState,
    __out_bcount_opt(cbBufSize)
                    LPENUM_SERVICE_STATUSW  lpServices,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded,
    __out           LPDWORD                 lpServicesReturned,
    __inout_opt     LPDWORD                 lpResumeHandle
    );
#ifdef UNICODE
#define EnumServicesStatus  EnumServicesStatusW
#else
#define EnumServicesStatus  EnumServicesStatusA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
EnumServicesStatusExA(
    __in            SC_HANDLE               hSCManager,
    __in            SC_ENUM_TYPE            InfoLevel,
    __in            DWORD                   dwServiceType,
    __in            DWORD                   dwServiceState,
    __out_bcount_opt(cbBufSize)
                    LPBYTE                  lpServices,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded,
    __out           LPDWORD                 lpServicesReturned,
    __inout_opt     LPDWORD                 lpResumeHandle,
    __in_opt        LPCSTR                pszGroupName
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
EnumServicesStatusExW(
    __in            SC_HANDLE               hSCManager,
    __in            SC_ENUM_TYPE            InfoLevel,
    __in            DWORD                   dwServiceType,
    __in            DWORD                   dwServiceState,
    __out_bcount_opt(cbBufSize)
                    LPBYTE                  lpServices,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded,
    __out           LPDWORD                 lpServicesReturned,
    __inout_opt     LPDWORD                 lpResumeHandle,
    __in_opt        LPCWSTR                pszGroupName
    );
#ifdef UNICODE
#define EnumServicesStatusEx  EnumServicesStatusExW
#else
#define EnumServicesStatusEx  EnumServicesStatusExA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
GetServiceKeyNameA(
    __in            SC_HANDLE               hSCManager,
    __in            LPCSTR                lpDisplayName,
    __out_ecount_opt(*lpcchBuffer)
                    LPSTR                 lpServiceName,
    __inout         LPDWORD                 lpcchBuffer
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
GetServiceKeyNameW(
    __in            SC_HANDLE               hSCManager,
    __in            LPCWSTR                lpDisplayName,
    __out_ecount_opt(*lpcchBuffer)
                    LPWSTR                 lpServiceName,
    __inout         LPDWORD                 lpcchBuffer
    );
#ifdef UNICODE
#define GetServiceKeyName  GetServiceKeyNameW
#else
#define GetServiceKeyName  GetServiceKeyNameA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
GetServiceDisplayNameA(
    __in            SC_HANDLE               hSCManager,
    __in            LPCSTR                lpServiceName,
    __out_ecount_opt(*lpcchBuffer)
                    LPSTR                 lpDisplayName,
    __inout         LPDWORD                 lpcchBuffer
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
GetServiceDisplayNameW(
    __in            SC_HANDLE               hSCManager,
    __in            LPCWSTR                lpServiceName,
    __out_ecount_opt(*lpcchBuffer)
                    LPWSTR                 lpDisplayName,
    __inout         LPDWORD                 lpcchBuffer
    );
#ifdef UNICODE
#define GetServiceDisplayName  GetServiceDisplayNameW
#else
#define GetServiceDisplayName  GetServiceDisplayNameA
#endif // !UNICODE

WINADVAPI
SC_LOCK
WINAPI
LockServiceDatabase(
    __in            SC_HANDLE               hSCManager
    );

WINADVAPI
BOOL
WINAPI
NotifyBootConfigStatus(
    __in            BOOL                    BootAcceptable
    );

__checkReturn
WINADVAPI
SC_HANDLE
WINAPI
OpenSCManagerA(
    __in_opt        LPCSTR                lpMachineName,
    __in_opt        LPCSTR                lpDatabaseName,
    __in            DWORD                   dwDesiredAccess
    );
__checkReturn
WINADVAPI
SC_HANDLE
WINAPI
OpenSCManagerW(
    __in_opt        LPCWSTR                lpMachineName,
    __in_opt        LPCWSTR                lpDatabaseName,
    __in            DWORD                   dwDesiredAccess
    );
#ifdef UNICODE
#define OpenSCManager  OpenSCManagerW
#else
#define OpenSCManager  OpenSCManagerA
#endif // !UNICODE

__checkReturn
WINADVAPI
SC_HANDLE
WINAPI
OpenServiceA(
    __in            SC_HANDLE               hSCManager,
    __in            LPCSTR                lpServiceName,
    __in            DWORD                   dwDesiredAccess
    );
__checkReturn
WINADVAPI
SC_HANDLE
WINAPI
OpenServiceW(
    __in            SC_HANDLE               hSCManager,
    __in            LPCWSTR                lpServiceName,
    __in            DWORD                   dwDesiredAccess
    );
#ifdef UNICODE
#define OpenService  OpenServiceW
#else
#define OpenService  OpenServiceA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceConfigA(
    __in            SC_HANDLE               hService,
    __out_bcount_opt(cbBufSize)
                    LPQUERY_SERVICE_CONFIGA lpServiceConfig,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceConfigW(
    __in            SC_HANDLE               hService,
    __out_bcount_opt(cbBufSize)
                    LPQUERY_SERVICE_CONFIGW lpServiceConfig,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded
    );
#ifdef UNICODE
#define QueryServiceConfig  QueryServiceConfigW
#else
#define QueryServiceConfig  QueryServiceConfigA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceConfig2A(
    __in            SC_HANDLE               hService,
    __in            DWORD                   dwInfoLevel,
    __out_bcount_opt(cbBufSize)
                    LPBYTE                  lpBuffer,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceConfig2W(
    __in            SC_HANDLE               hService,
    __in            DWORD                   dwInfoLevel,
    __out_bcount_opt(cbBufSize)
                    LPBYTE                  lpBuffer,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded
    );
#ifdef UNICODE
#define QueryServiceConfig2  QueryServiceConfig2W
#else
#define QueryServiceConfig2  QueryServiceConfig2A
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceLockStatusA(
    __in            SC_HANDLE                       hSCManager,
    __out_bcount_opt(cbBufSize)
                    LPQUERY_SERVICE_LOCK_STATUSA    lpLockStatus,
    __in            DWORD                           cbBufSize,
    __out           LPDWORD                         pcbBytesNeeded
    );
__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceLockStatusW(
    __in            SC_HANDLE                       hSCManager,
    __out_bcount_opt(cbBufSize)
                    LPQUERY_SERVICE_LOCK_STATUSW    lpLockStatus,
    __in            DWORD                           cbBufSize,
    __out           LPDWORD                         pcbBytesNeeded
    );
#ifdef UNICODE
#define QueryServiceLockStatus  QueryServiceLockStatusW
#else
#define QueryServiceLockStatus  QueryServiceLockStatusA
#endif // !UNICODE

__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceObjectSecurity(
    __in            SC_HANDLE               hService,
    __in            SECURITY_INFORMATION    dwSecurityInformation,
    __out_bcount_opt(cbBufSize)
                    PSECURITY_DESCRIPTOR    lpSecurityDescriptor,
    __in            DWORD                   cbBufSize,
    __out           LPDWORD                 pcbBytesNeeded
    );

__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceStatus(
    __in            SC_HANDLE           hService,
    __out           LPSERVICE_STATUS    lpServiceStatus
    );

__checkReturn
WINADVAPI
BOOL
WINAPI
QueryServiceStatusEx(
    __in            SC_HANDLE           hService,
    __in            SC_STATUS_TYPE      InfoLevel,
    __out_bcount_opt(cbBufSize)
                    LPBYTE              lpBuffer,
    __in            DWORD               cbBufSize,
    __out           LPDWORD             pcbBytesNeeded
    );

__checkReturn
WINADVAPI
SERVICE_STATUS_HANDLE
WINAPI
RegisterServiceCtrlHandlerA(
    __in    LPCSTR                    lpServiceName,
    __in    __callback
            LPHANDLER_FUNCTION          lpHandlerProc
    );
__checkReturn
WINADVAPI
SERVICE_STATUS_HANDLE
WINAPI
RegisterServiceCtrlHandlerW(
    __in    LPCWSTR                    lpServiceName,
    __in    __callback
            LPHANDLER_FUNCTION          lpHandlerProc
    );
#ifdef UNICODE
#define RegisterServiceCtrlHandler  RegisterServiceCtrlHandlerW
#else
#define RegisterServiceCtrlHandler  RegisterServiceCtrlHandlerA
#endif // !UNICODE

__checkReturn
WINADVAPI
SERVICE_STATUS_HANDLE
WINAPI
RegisterServiceCtrlHandlerExA(
    __in    LPCSTR                    lpServiceName,
    __in    __callback
            LPHANDLER_FUNCTION_EX       lpHandlerProc,
    __in_opt LPVOID                     lpContext
    );
__checkReturn
WINADVAPI
SERVICE_STATUS_HANDLE
WINAPI
RegisterServiceCtrlHandlerExW(
    __in    LPCWSTR                    lpServiceName,
    __in    __callback
            LPHANDLER_FUNCTION_EX       lpHandlerProc,
    __in_opt LPVOID                     lpContext
    );
#ifdef UNICODE
#define RegisterServiceCtrlHandlerEx  RegisterServiceCtrlHandlerExW
#else
#define RegisterServiceCtrlHandlerEx  RegisterServiceCtrlHandlerExA
#endif // !UNICODE

WINADVAPI
BOOL
WINAPI
SetServiceObjectSecurity(
    __in        SC_HANDLE               hService,
    __in        SECURITY_INFORMATION    dwSecurityInformation,
    __in        PSECURITY_DESCRIPTOR    lpSecurityDescriptor
    );

WINADVAPI
BOOL
WINAPI
SetServiceStatus(
    __in        SERVICE_STATUS_HANDLE   hServiceStatus,
    __in        LPSERVICE_STATUS        lpServiceStatus
    );

WINADVAPI
BOOL
WINAPI
StartServiceCtrlDispatcherA(
    __in CONST  SERVICE_TABLE_ENTRYA    *lpServiceStartTable
    );
WINADVAPI
BOOL
WINAPI
StartServiceCtrlDispatcherW(
    __in CONST  SERVICE_TABLE_ENTRYW    *lpServiceStartTable
    );
#ifdef UNICODE
#define StartServiceCtrlDispatcher  StartServiceCtrlDispatcherW
#else
#define StartServiceCtrlDispatcher  StartServiceCtrlDispatcherA
#endif // !UNICODE


WINADVAPI
BOOL
WINAPI
StartServiceA(
    __in            SC_HANDLE            hService,
    __in            DWORD                dwNumServiceArgs,
    __in_ecount_opt(dwNumServiceArgs)
                    LPCSTR             *lpServiceArgVectors
    );
WINADVAPI
BOOL
WINAPI
StartServiceW(
    __in            SC_HANDLE            hService,
    __in            DWORD                dwNumServiceArgs,
    __in_ecount_opt(dwNumServiceArgs)
                    LPCWSTR             *lpServiceArgVectors
    );
#ifdef UNICODE
#define StartService  StartServiceW
#else
#define StartService  StartServiceA
#endif // !UNICODE

WINADVAPI
BOOL
WINAPI
UnlockServiceDatabase(
    __in            SC_LOCK             ScLock
    );

#if (NTDDI_VERSION >= NTDDI_VISTA)

WINADVAPI
DWORD
WINAPI
NotifyServiceStatusChangeA (
    __in        SC_HANDLE               hService,
    __in        DWORD                   dwNotifyMask,
    __in        PSERVICE_NOTIFYA        pNotifyBuffer
    );
WINADVAPI
DWORD
WINAPI
NotifyServiceStatusChangeW (
    __in        SC_HANDLE               hService,
    __in        DWORD                   dwNotifyMask,
    __in        PSERVICE_NOTIFYW        pNotifyBuffer
    );
#ifdef UNICODE
#define NotifyServiceStatusChange  NotifyServiceStatusChangeW
#else
#define NotifyServiceStatusChange  NotifyServiceStatusChangeA
#endif // !UNICODE

WINADVAPI
BOOL
WINAPI
ControlServiceExA(
    __in        SC_HANDLE               hService,
    __in        DWORD                   dwControl,
    __in        DWORD                   dwInfoLevel,
    __inout     PVOID                   pControlParams
    );
WINADVAPI
BOOL
WINAPI
ControlServiceExW(
    __in        SC_HANDLE               hService,
    __in        DWORD                   dwControl,
    __in        DWORD                   dwInfoLevel,
    __inout     PVOID                   pControlParams
    );
#ifdef UNICODE
#define ControlServiceEx  ControlServiceExW
#else
#define ControlServiceEx  ControlServiceExA
#endif // !UNICODE

#endif // NTDDI_VERSION >= NTDDI_VISTA
    
#ifdef __cplusplus
}
#endif

#endif // _WINSVC_

