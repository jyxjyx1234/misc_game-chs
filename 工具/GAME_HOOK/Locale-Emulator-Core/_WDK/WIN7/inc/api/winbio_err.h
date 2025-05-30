/*++

Copyright (c) 2007 Microsoft Corporation


Module Name:

    winbio_err.h

Abstract:

    Definitions of error codes used by
    Windows Biometric Framework components.


Environment:

    User or Kernel mode.

Revision History:

--*/

#ifndef _WINBIO_ERR_H_06269BBC_B52E_4d0d_9D35_D23BEA12DE5D_
#define _WINBIO_ERR_H_06269BBC_B52E_4d0d_9D35_D23BEA12DE5D_


#if (NTDDI_VERSION >= NTDDI_VISTA)

//
// For now, WINBIO errors are piggy-backing on the Security
// facility code. That may change in a future revision.
//
//
// Error conditions -- values are in the range: 0x8001 - 0xFFFF
//
//
//  Values are 32 bit values laid out as follows:
//
//   3 3 2 2 2 2 2 2 2 2 2 2 1 1 1 1 1 1 1 1 1 1
//   1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0 9 8 7 6 5 4 3 2 1 0
//  +---+-+-+-----------------------+-------------------------------+
//  |Sev|C|R|     Facility          |               Code            |
//  +---+-+-+-----------------------+-------------------------------+
//
//  where
//
//      Sev - is the severity code
//
//          00 - Success
//          01 - Informational
//          10 - Warning
//          11 - Error
//
//      C - is the Customer code flag
//
//      R - is a reserved bit
//
//      Facility - is the facility code
//
//      Code - is the facility's status code
//
//
// Define the facility codes
//
#define FACILITY_WINBIO                  0x9


//
// Define the severity codes
//


//
// MessageId: WINBIO_E_UNSUPPORTED_FACTOR
//
// MessageText:
//
// Windows Biometric Service doesn't support the specified biometric factor.
//
#define WINBIO_E_UNSUPPORTED_FACTOR      ((HRESULT)0x80098001L)

//
// MessageId: WINBIO_E_INVALID_UNIT
//
// MessageText:
//
// The unit ID number doesn't correspond to a valid biometric device.
//
#define WINBIO_E_INVALID_UNIT            ((HRESULT)0x80098002L)

//
// MessageId: WINBIO_E_UNKNOWN_ID
//
// MessageText:
//
// The biometric sample doesn't match any known identity.
//
#define WINBIO_E_UNKNOWN_ID              ((HRESULT)0x80098003L)

//
// MessageId: WINBIO_E_CANCELED
//
// MessageText:
//
// The biometric operation was canceled before it could complete.
//
#define WINBIO_E_CANCELED                ((HRESULT)0x80098004L)

//
// MessageId: WINBIO_E_NO_MATCH
//
// MessageText:
//
// The biometric sample doesn't match the specified identity or sub-factor.
//
#define WINBIO_E_NO_MATCH                ((HRESULT)0x80098005L)

//
// MessageId: WINBIO_E_CAPTURE_ABORTED
//
// MessageText:
//
// A biometric sample could not be captured because the operation was aborted.
//
#define WINBIO_E_CAPTURE_ABORTED         ((HRESULT)0x80098006L)

//
// MessageId: WINBIO_E_ENROLLMENT_IN_PROGRESS
//
// MessageText:
//
// An enrollment transaction could not be started because another enrollment is already in progress.
//
#define WINBIO_E_ENROLLMENT_IN_PROGRESS  ((HRESULT)0x80098007L)

//
// MessageId: WINBIO_E_BAD_CAPTURE
//
// MessageText:
//
// The captured sample cannot be used for any further biometric operations.
//
#define WINBIO_E_BAD_CAPTURE             ((HRESULT)0x80098008L)

//
// MessageId: WINBIO_E_INVALID_CONTROL_CODE
//
// MessageText:
//
// The biometric unit doesn't support the specified unit control code.
//
#define WINBIO_E_INVALID_CONTROL_CODE    ((HRESULT)0x80098009L)

//
// WINBIO_E_FACTOR_NOT_PRESENT - 0x8009800A
// [OBSOLETE] - DO NOT USE
//

//
// MessageId: WINBIO_E_DATA_COLLECTION_IN_PROGRESS
//
// MessageText:
//
// The driver already has a pending data collection operation in progress.
//
#define WINBIO_E_DATA_COLLECTION_IN_PROGRESS ((HRESULT)0x8009800BL)

//
// MessageId: WINBIO_E_UNSUPPORTED_DATA_FORMAT
//
// MessageText:
//
// The biometric sensor driver does not support the requested data format.
//
#define WINBIO_E_UNSUPPORTED_DATA_FORMAT ((HRESULT)0x8009800CL)

//
// MessageId: WINBIO_E_UNSUPPORTED_DATA_TYPE
//
// MessageText:
//
// The biometric sensor driver does not support the requested data type.
//
#define WINBIO_E_UNSUPPORTED_DATA_TYPE   ((HRESULT)0x8009800DL)

//
// MessageId: WINBIO_E_UNSUPPORTED_PURPOSE
//
// MessageText:
//
// The biometric sensor driver does not support the requested data purpose.
//
#define WINBIO_E_UNSUPPORTED_PURPOSE     ((HRESULT)0x8009800EL)

//
// MessageId: WINBIO_E_INVALID_DEVICE_STATE
//
// MessageText:
//
// The biometric unit is not in the proper state to perform the specified operation.
//
#define WINBIO_E_INVALID_DEVICE_STATE    ((HRESULT)0x8009800FL)

//
// MessageId: WINBIO_E_DEVICE_BUSY
//
// MessageText:
//
// The operation could not be performed because the sensor device was busy.
//
#define WINBIO_E_DEVICE_BUSY             ((HRESULT)0x80098010L)

//
// MessageId: WINBIO_E_DATABASE_CANT_CREATE
//
// MessageText:
//
// The biometric unit's storage adapter was unable to create a new database.
//
#define WINBIO_E_DATABASE_CANT_CREATE    ((HRESULT)0x80098011L)

//
// MessageId: WINBIO_E_DATABASE_CANT_OPEN
//
// MessageText:
//
// The biometric unit's storage adapter was unable to open an existing database.
//
#define WINBIO_E_DATABASE_CANT_OPEN      ((HRESULT)0x80098012L)

//
// MessageId: WINBIO_E_DATABASE_CANT_CLOSE
//
// MessageText:
//
// The biometric unit's storage adapter was unable to close a database.
//
#define WINBIO_E_DATABASE_CANT_CLOSE     ((HRESULT)0x80098013L)

//
// MessageId: WINBIO_E_DATABASE_CANT_ERASE
//
// MessageText:
//
// The biometric unit's storage adapter was unable to erase a database.
//
#define WINBIO_E_DATABASE_CANT_ERASE     ((HRESULT)0x80098014L)

//
// MessageId: WINBIO_E_DATABASE_CANT_FIND
//
// MessageText:
//
// The biometric unit's storage adapter was unable to find a database.
//
#define WINBIO_E_DATABASE_CANT_FIND      ((HRESULT)0x80098015L)

//
// MessageId: WINBIO_E_DATABASE_ALREADY_EXISTS
//
// MessageText:
//
// The biometric unit's storage adapter was unable to create a database because that database already exists.
//
#define WINBIO_E_DATABASE_ALREADY_EXISTS ((HRESULT)0x80098016L)

//
// WINBIO_E_DATABASE_INVALID_NAME - 0x80098017
// [OBSOLETE] - DO NOT USE
//

//
// MessageId: WINBIO_E_DATABASE_FULL
//
// MessageText:
//
// The biometric unit's storage adapter was unable to add a record to the database because the database is full.
//
#define WINBIO_E_DATABASE_FULL           ((HRESULT)0x80098018L)

//
// MessageId: WINBIO_E_DATABASE_LOCKED
//
// MessageText:
//
// The database is locked and its contents are inaccessible.
//
#define WINBIO_E_DATABASE_LOCKED         ((HRESULT)0x80098019L)

//
// MessageId: WINBIO_E_DATABASE_CORRUPTED
//
// MessageText:
//
// The contents of the database have become corrupted and are inaccessible.
//
#define WINBIO_E_DATABASE_CORRUPTED      ((HRESULT)0x8009801AL)

//
// MessageId: WINBIO_E_DATABASE_NO_SUCH_RECORD
//
// MessageText:
//
// No records were deleted because the specified identity and sub-factor are not present in the database.
//
#define WINBIO_E_DATABASE_NO_SUCH_RECORD ((HRESULT)0x8009801BL)

//
// MessageId: WINBIO_E_DUPLICATE_ENROLLMENT
//
// MessageText:
//
// The specified identity and sub-factor are already enrolled in the database.
//
#define WINBIO_E_DUPLICATE_ENROLLMENT    ((HRESULT)0x8009801CL)

//
// MessageId: WINBIO_E_DATABASE_READ_ERROR
//
// MessageText:
//
// An error occurred while trying to read from the database.
//
#define WINBIO_E_DATABASE_READ_ERROR     ((HRESULT)0x8009801DL)

//
// MessageId: WINBIO_E_DATABASE_WRITE_ERROR
//
// MessageText:
//
// An error occurred while trying to write to the database.
//
#define WINBIO_E_DATABASE_WRITE_ERROR    ((HRESULT)0x8009801EL)

//
// MessageId: WINBIO_E_DATABASE_NO_RESULTS
//
// MessageText:
//
// No records in the database matched the query.
//
#define WINBIO_E_DATABASE_NO_RESULTS     ((HRESULT)0x8009801FL)

//
// MessageId: WINBIO_E_DATABASE_NO_MORE_RECORDS
//
// MessageText:
//
// All records from the most recent database query have been viewed.
//
#define WINBIO_E_DATABASE_NO_MORE_RECORDS ((HRESULT)0x80098020L)

//
// MessageId: WINBIO_E_DATABASE_EOF
//
// MessageText:
//
// A database operation unexpectedly encountered the end of the file.
//
#define WINBIO_E_DATABASE_EOF            ((HRESULT)0x80098021L)

//
// MessageId: WINBIO_E_DATABASE_BAD_INDEX_VECTOR
//
// MessageText:
//
// A database operation failed due to a malformed index vector.
//
#define WINBIO_E_DATABASE_BAD_INDEX_VECTOR ((HRESULT)0x80098022L)

//
// WINBIO_E_INVALID_IDENTITY - 0x80098023
// [OBSOLETE] - DO NOT USE
//

//
// MessageId: WINBIO_E_INCORRECT_BSP
//
// MessageText:
//
// The biometric unit doesn't belong to the specified service provider.
//
#define WINBIO_E_INCORRECT_BSP           ((HRESULT)0x80098024L)

//
// MessageId: WINBIO_E_INCORRECT_SENSOR_POOL
//
// MessageText:
//
// The biometric unit doesn't belong to the specified sensor pool.
//
#define WINBIO_E_INCORRECT_SENSOR_POOL   ((HRESULT)0x80098025L)

//
// MessageId: WINBIO_E_NO_CAPTURE_DATA
//
// MessageText:
//
// The sensor adapter's capture buffer is empty.
//
#define WINBIO_E_NO_CAPTURE_DATA         ((HRESULT)0x80098026L)

//
// MessageId: WINBIO_E_INVALID_SENSOR_MODE
//
// MessageText:
//
// The sensor adapter doesn't support the sensor mode specified in the configuration.
//
#define WINBIO_E_INVALID_SENSOR_MODE     ((HRESULT)0x80098027L)

//
// MessageId: WINBIO_E_LOCK_VIOLATION
//
// MessageText:
//
// The requested operation cannot be performed due to a locking conflict.
//
#define WINBIO_E_LOCK_VIOLATION          ((HRESULT)0x8009802AL)

//
// MessageId: WINBIO_E_DUPLICATE_TEMPLATE
//
// MessageText:
//
// The data in a biometric template matches another template already in the database.
//
#define WINBIO_E_DUPLICATE_TEMPLATE      ((HRESULT)0x8009802BL)

//
// MessageId: WINBIO_E_INVALID_OPERATION
//
// MessageText:
//
// The requested operation is not valid for the current state of the session or biometric unit.
//
#define WINBIO_E_INVALID_OPERATION       ((HRESULT)0x8009802CL)

//
// MessageId: WINBIO_E_SESSION_BUSY
//
// MessageText:
//
// The session cannot begin a new operation because another operation is already in progress.
//
#define WINBIO_E_SESSION_BUSY            ((HRESULT)0x8009802DL)

//
// WINBIO_E_ASYNC_OPERATION_IN_PROGRESS - 0x8009802E
// [OBSOLETE] - DO NOT USE
//

//
// WINBIO_E_INVALID_ASYNC_OPERATION - 0x8009802F
// [OBSOLETE] - DO NOT USE
//

//
// MessageId: WINBIO_E_CRED_PROV_DISABLED
//
// MessageText:
//
// System policy settings have disabled the Windows biometric credential provider.
//
#define WINBIO_E_CRED_PROV_DISABLED      ((HRESULT)0x80098030L)

//
// MessageId: WINBIO_E_CRED_PROV_NO_CREDENTIAL
//
// MessageText:
//
// The requested credential was not found.
//
#define WINBIO_E_CRED_PROV_NO_CREDENTIAL ((HRESULT)0x80098031L)

//
// MessageId: WINBIO_E_DISABLED
//
// MessageText:
//
// System policy settings have disabled the Windows biometric service.
//
#define WINBIO_E_DISABLED                ((HRESULT)0x80098032L)

//
// MessageId: WINBIO_E_CONFIGURATION_FAILURE
//
// MessageText:
//
// The biometric unit could not be configured.
//
#define WINBIO_E_CONFIGURATION_FAILURE   ((HRESULT)0x80098033L)

//
// MessageId: WINBIO_E_SENSOR_UNAVAILABLE
//
// MessageText:
//
// A private pool cannot be created because one or more biometric units are not available.
//
#define WINBIO_E_SENSOR_UNAVAILABLE      ((HRESULT)0x80098034L)

//
// MessageId: WINBIO_E_SAS_ENABLED
//
// MessageText:
//
// A secure attention sequence (CTRL-ALT-DEL) is required for logon.
//
#define WINBIO_E_SAS_ENABLED             ((HRESULT)0x80098035L)

//
// MessageId: WINBIO_E_DEVICE_FAILURE
//
// MessageText:
//
// A biometric sensor has failed.
//
#define WINBIO_E_DEVICE_FAILURE          ((HRESULT)0x80098036L)

//
// MessageId: WINBIO_E_FAST_USER_SWITCH_DISABLED
//
// MessageText:
//
// Fast user switching is disabled.
//
#define WINBIO_E_FAST_USER_SWITCH_DISABLED ((HRESULT)0x80098037L)

//
// MessageId: WINBIO_E_NOT_ACTIVE_CONSOLE
//
// MessageText:
//
// The System sensor pool cannot be opened from Terminal Server client sessions.
//
#define WINBIO_E_NOT_ACTIVE_CONSOLE      ((HRESULT)0x80098038L)

//
// MessageId: WINBIO_E_EVENT_MONITOR_ACTIVE
//
// MessageText:
//
// There is already an active event monitor associated with the specified session.
//
#define WINBIO_E_EVENT_MONITOR_ACTIVE    ((HRESULT)0x80098039L)

//
// MessageId: WINBIO_E_INVALID_PROPERTY_TYPE
//
// MessageText:
//
// The value specified is not a valid property type.
//
#define WINBIO_E_INVALID_PROPERTY_TYPE   ((HRESULT)0x8009803AL)

//
// MessageId: WINBIO_E_INVALID_PROPERTY_ID
//
// MessageText:
//
// The value specified is not a valid property ID.
//
#define WINBIO_E_INVALID_PROPERTY_ID     ((HRESULT)0x8009803BL)

//
// MessageId: WINBIO_E_UNSUPPORTED_PROPERTY
//
// MessageText:
//
// The biometric unit doesn't support the specified property.
//
#define WINBIO_E_UNSUPPORTED_PROPERTY    ((HRESULT)0x8009803CL)

//
// MessageId: WINBIO_E_ADAPTER_INTEGRITY_FAILURE
//
// MessageText:
//
// The adapter binary did not pass its integrity check.
//
#define WINBIO_E_ADAPTER_INTEGRITY_FAILURE ((HRESULT)0x8009803DL)

//
// Informational messages -- values are in the range: 0x0001 - 0x7FFF
//
//
// MessageId: WINBIO_I_MORE_DATA
//
// MessageText:
//
// Another sample is needed for the current enrollment template.
//
#define WINBIO_I_MORE_DATA               ((HRESULT)0x00090001L)


#endif // (NTDDI_VERSION >= NTDDI_WIN7)

#endif // _WINBIO_ERR_H_06269BBC_B52E_4d0d_9D35_D23BEA12DE5D_

