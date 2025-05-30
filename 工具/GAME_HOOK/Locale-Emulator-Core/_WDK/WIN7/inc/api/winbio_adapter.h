/*++

Copyright (c) 2008 Microsoft Corporation


Module Name:

    winbio_adapter.h

Abstract:

    Interface definitions used by WinBio Service plug-in
    components.


Environment:

    User mode.

Revision History:

--*/
#ifndef _WINBIO_ADAPTER_H_2C0E14E1_5330_4f60_9B4F_836CFFD7452A_
#define _WINBIO_ADAPTER_H_2C0E14E1_5330_4f60_9B4F_836CFFD7452A_

#if (NTDDI_VERSION >= NTDDI_VISTA)


///////////////////////////////////////////////////////////////////////////////
//
// Dependencies...
//
///////////////////////////////////////////////////////////////////////////////
#include "winbio_types.h"
#include "winbio_err.h"


#ifdef __cplusplus
extern "C"{
#endif 

///////////////////////////////////////////////////////////////////////////////
//
// Types used throughout
//
///////////////////////////////////////////////////////////////////////////////
//
// Forward declarations of interface pointers
//
typedef struct _WINBIO_SENSOR_INTERFACE *PWINBIO_SENSOR_INTERFACE;
typedef struct _WINBIO_ENGINE_INTERFACE *PWINBIO_ENGINE_INTERFACE;
typedef struct _WINBIO_STORAGE_INTERFACE *PWINBIO_STORAGE_INTERFACE;

//
// Forward declarations of Adapter-private context structures
//
typedef struct _WINIBIO_SENSOR_CONTEXT *PWINIBIO_SENSOR_CONTEXT;
typedef struct _WINIBIO_ENGINE_CONTEXT *PWINIBIO_ENGINE_CONTEXT;
typedef struct _WINIBIO_STORAGE_CONTEXT *PWINIBIO_STORAGE_CONTEXT;

typedef ULONG WINBIO_HASH_TYPE, *PWINBIO_HASH_TYPE;

typedef ULONG WINBIO_SENSOR_STATUS, *PWINBIO_SENSOR_STATUS;

typedef ULONG WINBIO_SENSOR_CAPABILITIES, *PWINBIO_SENSOR_CAPABILITIES;
typedef ULONG WINBIO_ENGINE_CAPABILITIES, *PWINBIO_ENGINE_CAPABILITIES;
typedef ULONG WINBIO_STORAGE_CAPABILITIES, *PWINBIO_STORAGE_CAPABILITIES;

///////////////////////////////////////////////////////////////////////////////
//
// Contents of a single storage record. The Storage Adapter fills in one
// of these structure in response to a 'GetCurrentRecord' call.
//
// NOTE: 
//  The memory pointed to by this structure belongs to the Storage Adapter 
//  and is only valid until the pipeline executes its next database operation,
//  or until the pipeline is cleared.
//
///////////////////////////////////////////////////////////////////////////////
typedef struct _WINBIO_STORAGE_RECORD {
    PWINBIO_IDENTITY Identity;
    WINBIO_BIOMETRIC_SUBTYPE SubFactor;
    PULONG IndexVector;
    SIZE_T IndexElementCount;
    PUCHAR TemplateBlob;
    SIZE_T TemplateBlobSize;
    PUCHAR PayloadBlob;
    SIZE_T PayloadBlobSize;
} WINBIO_STORAGE_RECORD, *PWINBIO_STORAGE_RECORD;


///////////////////////////////////////////////////////////////////////////////
//
// Context structure passed up and down the Biometric Unit's plug-in
// component stack. Guaranteed to be unique per Biometric Unit, even
// if a single plug-in Adapter is supporting more than one Biometric
// Unit.
//
///////////////////////////////////////////////////////////////////////////////
typedef struct _WINBIO_PIPELINE {
    //
    // Handles to the hardware available to each
    // plug-in Adapter.
    //
    HANDLE SensorHandle;
    HANDLE EngineHandle;
    HANDLE StorageHandle;

    //
    // Pointers to interface dispatch tables for each 
    // Adapter in the plug-in stack. These should be 
    // considered read-only by the plug-in Adapters.
    //
    PWINBIO_SENSOR_INTERFACE SensorInterface;
    PWINBIO_ENGINE_INTERFACE EngineInterface;
    PWINBIO_STORAGE_INTERFACE StorageInterface;

    //
    // Pointers to per-plug-in private data. Each private
    // data block is opaque to everyone except the Adapter
    // that owns it.
    //
    PWINIBIO_SENSOR_CONTEXT SensorContext;
    PWINIBIO_ENGINE_CONTEXT EngineContext;
    PWINIBIO_STORAGE_CONTEXT StorageContext;
} WINBIO_PIPELINE, *PWINBIO_PIPELINE;

///////////////////////////////////////////////////////////////////////////////
//
// Adapter types...
//
///////////////////////////////////////////////////////////////////////////////
typedef ULONG WINBIO_ADAPTER_TYPE, *PWINBIO_ADAPTER_TYPE;

#define WINBIO_ADAPTER_TYPE_SENSOR      ((WINBIO_ADAPTER_TYPE)1)
#define WINBIO_ADAPTER_TYPE_ENGINE      ((WINBIO_ADAPTER_TYPE)2)
#define WINBIO_ADAPTER_TYPE_STORAGE     ((WINBIO_ADAPTER_TYPE)3)

///////////////////////////////////////////////////////////////////////////////
//
// Interface version control...
//
///////////////////////////////////////////////////////////////////////////////

typedef struct _WINBIO_ADAPTER_INTERFACE_VERSION
{
    USHORT MajorVersion;
    USHORT MinorVersion;
} WINBIO_ADAPTER_INTERFACE_VERSION, *PWINBIO_ADAPTER_INTERFACE_VERSION;

#define WINBIO_MAKE_INTERFACE_VERSION(major, minor) {(USHORT)major, (USHORT)minor}

#define WINBIO_IS_INTERFACE_VERSION_COMPATIBLE(loader, adapter)    \
    ((loader).MajorVersion <= (adapter).MajorVersion)

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
//
// Sensor Adapter methods...
//
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
typedef HRESULT
(WINAPI *PIBIO_SENSOR_ATTACH_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_DETACH_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

// Clears out all Sensor-specific pipeline context
typedef HRESULT
(WINAPI *PIBIO_SENSOR_CLEAR_CONTEXT_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_QUERY_STATUS_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_SENSOR_STATUS Status
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_RESET_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_SET_MODE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_SENSOR_MODE Mode
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_SET_INDICATOR_STATUS_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_INDICATOR_STATUS IndicatorStatus
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_GET_INDICATOR_STATUS_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_INDICATOR_STATUS IndicatorStatus
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_START_CAPTURE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIR_PURPOSE Purpose,
    __out LPOVERLAPPED *Overlapped
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_FINISH_CAPTURE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );


//
// Export raw capture buffer
//
typedef HRESULT
(WINAPI *PIBIO_SENSOR_EXPORT_SENSOR_DATA_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_BIR *SampleBuffer,
    __out PSIZE_T SampleSize
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_CANCEL_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

//
// Push current sample into the Engine and
// convert it into a feature set for use in
// additional processing.
//
typedef HRESULT
(WINAPI *PIBIO_SENSOR_PUSH_DATA_TO_ENGINE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIR_PURPOSE Purpose,
    __in WINBIO_BIR_DATA_FLAGS Flags,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_CONTROL_UNIT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    );

typedef HRESULT
(WINAPI *PIBIO_SENSOR_CONTROL_UNIT_PRIVILEGED_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    );


///////////////////////////////////////////////////////////////////////////////
//
// Sensor Adapter interface table.
//
///////////////////////////////////////////////////////////////////////////////
#define WINBIO_SENSOR_INTERFACE_VERSION_1    WINBIO_MAKE_INTERFACE_VERSION(1,0)

typedef struct _WINBIO_SENSOR_INTERFACE {
    WINBIO_ADAPTER_INTERFACE_VERSION            Version;
    WINBIO_ADAPTER_TYPE                         Type;
    SIZE_T                                      Size;
    GUID                                        AdapterId;

    PIBIO_SENSOR_ATTACH_FN                      Attach;
    PIBIO_SENSOR_DETACH_FN                      Detach;

    PIBIO_SENSOR_CLEAR_CONTEXT_FN               ClearContext;

    PIBIO_SENSOR_QUERY_STATUS_FN                QueryStatus;
    PIBIO_SENSOR_RESET_FN                       Reset;
    PIBIO_SENSOR_SET_MODE_FN                    SetMode;
    
    PIBIO_SENSOR_SET_INDICATOR_STATUS_FN        SetIndicatorStatus;
    PIBIO_SENSOR_GET_INDICATOR_STATUS_FN        GetIndicatorStatus;
    
    PIBIO_SENSOR_START_CAPTURE_FN               StartCapture;
    PIBIO_SENSOR_FINISH_CAPTURE_FN              FinishCapture;
    PIBIO_SENSOR_EXPORT_SENSOR_DATA_FN          ExportSensorData;
    PIBIO_SENSOR_CANCEL_FN                      Cancel;

    PIBIO_SENSOR_PUSH_DATA_TO_ENGINE_FN         PushDataToEngine;

    PIBIO_SENSOR_CONTROL_UNIT_FN                ControlUnit;
    PIBIO_SENSOR_CONTROL_UNIT_PRIVILEGED_FN     ControlUnitPrivileged;

} WINBIO_SENSOR_INTERFACE, *PWINBIO_SENSOR_INTERFACE;

//
// Interface-retrieval function exported by the Sensor Adapter
// plug-in DLL. It *MUST* be called 'WbioQuerySensorInterface'.
//
HRESULT
WINAPI
WbioQuerySensorInterface(
    __out PWINBIO_SENSOR_INTERFACE *SensorInterface
    );

//
// Pointer to an interface-retrieval function used by the 
// framework after a 'GetProcAddress' call.
//
typedef HRESULT
(WINAPI *PWINBIO_QUERY_SENSOR_INTERFACE_FN)(
    __out PWINBIO_SENSOR_INTERFACE *SensorInterface
    );

#define WINBIO_QUERY_SENSOR_INTERFACE_FN_NAME   ("WbioQuerySensorInterface")


///////////////////////////////////////////////////////////////////////////////
//
// Inline functions for calling Sensor Adapter methods
//
///////////////////////////////////////////////////////////////////////////////
inline HRESULT
WbioSensorAttach(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->Attach))
    {
        return Pipeline->SensorInterface->Attach(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorDetach(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->Detach))
    {
        return Pipeline->SensorInterface->Detach(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorClearContext(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->ClearContext))
    {
        return Pipeline->SensorInterface->ClearContext(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorQueryStatus(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_SENSOR_STATUS Status
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->QueryStatus))
    {
        return Pipeline->SensorInterface->QueryStatus(Pipeline, Status);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorReset(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->Reset))
    {
        return Pipeline->SensorInterface->Reset(
                                            Pipeline
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorSetMode(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_SENSOR_MODE Mode
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->SetMode))
    {
        return Pipeline->SensorInterface->SetMode(
                                            Pipeline,
                                            Mode
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorStartCapture(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIR_PURPOSE Purpose,
    __out LPOVERLAPPED *Overlapped
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->StartCapture))
    {
        return Pipeline->SensorInterface->StartCapture(
                                            Pipeline,
                                            Purpose,
                                            Overlapped
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorFinishCapture(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->FinishCapture))
    {
        return Pipeline->SensorInterface->FinishCapture(
                                            Pipeline,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

//
// Export raw capture buffer
//
inline HRESULT
WbioSensorExportSensorData(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_BIR *SampleBuffer,
    __out PSIZE_T SampleSize
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->ExportSensorData))
    {
        return Pipeline->SensorInterface->ExportSensorData(
                                            Pipeline,
                                            SampleBuffer,
                                            SampleSize
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorCancel(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->Cancel))
    {
        return Pipeline->SensorInterface->Cancel(
                                            Pipeline
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

//
// Push current sample into the Engine and
// convert it into a feature set for use in
// additional processing.
//
inline HRESULT
WbioSensorPushDataToEngine(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIR_PURPOSE Purpose,
    __in WINBIO_BIR_DATA_FLAGS Flags,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->PushDataToEngine))
    {
        return Pipeline->SensorInterface->PushDataToEngine(
                                            Pipeline,
                                            Purpose,
                                            Flags,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorControlUnit(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->ControlUnit))
    {
        return Pipeline->SensorInterface->ControlUnit(
                                                    Pipeline,
                                                    ControlCode,
                                                    SendBuffer,
                                                    SendBufferSize,
                                                    ReceiveBuffer,
                                                    ReceiveBufferSize,
                                                    ReceiveDataSize,
                                                    OperationStatus
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioSensorControlUnitPrivileged(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface) &&
        ARGUMENT_PRESENT(Pipeline->SensorInterface->ControlUnitPrivileged))
    {
        return Pipeline->SensorInterface->ControlUnitPrivileged(
                                                    Pipeline,
                                                    ControlCode,
                                                    SendBuffer,
                                                    SendBufferSize,
                                                    ReceiveBuffer,
                                                    ReceiveBufferSize,
                                                    ReceiveDataSize,
                                                    OperationStatus
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------


///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
//
// Engine Adapter methods...
//
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
typedef HRESULT
(WINAPI *PIBIO_ENGINE_ATTACH_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_DETACH_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

// Clears out all Engine-specific pipeline context
typedef HRESULT
(WINAPI *PIBIO_ENGINE_CLEAR_CONTEXT_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

// 'QUERY_PREFERRED_FORMAT' - SENSOR ASKS ENGINE WHAT DATA 
// FORMAT THE ENGINE PREFERS TO RECEIVE FROM THE SENSOR
typedef HRESULT
(WINAPI *PIBIO_ENGINE_QUERY_PREFERRED_FORMAT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REGISTERED_FORMAT StandardFormat,
    __out PWINBIO_UUID VendorFormat
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_QUERY_INDEX_VECTOR_SIZE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T IndexElementCount
    );

//
// RETURN AN ARRAY OF UTF-8 OIDS FOR HASH
// ALGS SUPPORTED BY THE ENGINE
//
typedef HRESULT
(WINAPI *PIBIO_ENGINE_QUERY_HASH_ALGORITHMS_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T AlgorithmCount,
    __out PSIZE_T AlgorithmBufferSize,
    __out PUCHAR *AlgorithmBuffer
    );

//
// SELECT ONE OID FOR THE ENGINE TO USE
//
typedef HRESULT
(WINAPI *PIBIO_ENGINE_SET_HASH_ALGORITHM_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in SIZE_T AlgorithmBufferSize,
    __in PUCHAR AlgorithmBuffer
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_QUERY_SAMPLE_HINT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T SampleHint
    );


typedef HRESULT
(WINAPI *PIBIO_ENGINE_ACCEPT_SAMPLE_DATA_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_BIR SampleBuffer,
    __in SIZE_T SampleSize,
    __in WINBIO_BIR_PURPOSE Purpose,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );

// CAN RETURN: 
//      'FEATURE SET' - AFTER A PUSH FROM THE SENSOR - WINBIO_DATA_FLAG_INTERMEDIATE
//      'ENROLLMENT TEMPLATE' - AFTER AN ENROLLMENT CYCLE - WINBIO_DATA_FLAG_PROCESSED
//      'MATCHING TEMPLATE' - AFTER AN IDENTIFY OR VERIFY OPERATION - WINBIO_DATA_FLAG_PROCESSED
//
typedef HRESULT
(WINAPI *PIBIO_ENGINE_EXPORT_ENGINE_DATA_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIR_DATA_FLAGS Flags,
    __out PWINBIO_BIR *SampleBuffer,
    __out PSIZE_T SampleSize
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_VERIFY_FEATURE_SET_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out PBOOLEAN Match,
    __out PUCHAR *PayloadBlob,
    __out PSIZE_T PayloadBlobSize,
    __out PUCHAR *HashValue,
    __out PSIZE_T HashSize,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_IDENTIFY_FEATURE_SET_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_IDENTITY Identity,
    __out PWINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out PUCHAR *PayloadBlob,
    __out PSIZE_T PayloadBlobSize,
    __out PUCHAR *HashValue,
    __out PSIZE_T HashSize,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_CREATE_ENROLLMENT_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_UPDATE_ENROLLMENT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_GET_ENROLLMENT_STATUS_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_GET_ENROLLMENT_HASH_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PUCHAR *HashValue,
    __out PSIZE_T HashSize
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_CHECK_FOR_DUPLICATE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_IDENTITY Identity,
    __out PWINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out PBOOLEAN Duplicate
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_COMMIT_ENROLLMENT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in PUCHAR PayloadBlob,
    __in SIZE_T PayloadBlobSize
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_DISCARD_ENROLLMENT_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_CONTROL_UNIT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    );

typedef HRESULT
(WINAPI *PIBIO_ENGINE_CONTROL_UNIT_PRIVILEGED_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    );


///////////////////////////////////////////////////////////////////////////////
//
// Engine Adapter interface table.
//
///////////////////////////////////////////////////////////////////////////////
#define WINBIO_ENGINE_INTERFACE_VERSION_1   WINBIO_MAKE_INTERFACE_VERSION(1,0)

typedef struct _WINBIO_ENGINE_INTERFACE {
    WINBIO_ADAPTER_INTERFACE_VERSION            Version;
    WINBIO_ADAPTER_TYPE                         Type;
    SIZE_T                                      Size;
    GUID                                        AdapterId;

    PIBIO_ENGINE_ATTACH_FN                      Attach;
    PIBIO_ENGINE_DETACH_FN                      Detach;

    PIBIO_ENGINE_CLEAR_CONTEXT_FN               ClearContext;

    PIBIO_ENGINE_QUERY_PREFERRED_FORMAT_FN      QueryPreferredFormat;
    PIBIO_ENGINE_QUERY_INDEX_VECTOR_SIZE_FN     QueryIndexVectorSize;
    PIBIO_ENGINE_QUERY_HASH_ALGORITHMS_FN       QueryHashAlgorithms;
    PIBIO_ENGINE_SET_HASH_ALGORITHM_FN          SetHashAlgorithm;

    PIBIO_ENGINE_QUERY_SAMPLE_HINT_FN           QuerySampleHint;

    PIBIO_ENGINE_ACCEPT_SAMPLE_DATA_FN          AcceptSampleData;       // PROCESSES CURRENT BUFFER FROM PIPELINE AND GENERATES A FEATURE SET IN THE PIPELINE
    PIBIO_ENGINE_EXPORT_ENGINE_DATA_FN          ExportEngineData;       // EXPORTS FEATURE SET OR TEMPLATE
    
    PIBIO_ENGINE_VERIFY_FEATURE_SET_FN          VerifyFeatureSet;
    PIBIO_ENGINE_IDENTIFY_FEATURE_SET_FN        IdentifyFeatureSet;

    PIBIO_ENGINE_CREATE_ENROLLMENT_FN           CreateEnrollment;       // ATTACHES AN EMPTY ENROLLMENT TEMPLATE TO THE PIPELINE
    PIBIO_ENGINE_UPDATE_ENROLLMENT_FN           UpdateEnrollment;       // CONVERTS CURRENT PIPELINE FEATURE SET INTO SOMETHING THAT CAN BE ADDED TO A TEMPLATE
    PIBIO_ENGINE_GET_ENROLLMENT_STATUS_FN       GetEnrollmentStatus;    // QUERIES TEMPLATE ATTACHED TO THE PIPELINE TO SEE IF IT IS READY TO COMMIT
    PIBIO_ENGINE_GET_ENROLLMENT_HASH_FN         GetEnrollmentHash;
    PIBIO_ENGINE_CHECK_FOR_DUPLICATE_FN         CheckForDuplicate;      // DETERMINES WHETHER TEMPLATE IS ALREADY ENROLLED
    PIBIO_ENGINE_COMMIT_ENROLLMENT_FN           CommitEnrollment;
    PIBIO_ENGINE_DISCARD_ENROLLMENT_FN          DiscardEnrollment;

    PIBIO_ENGINE_CONTROL_UNIT_FN                ControlUnit;
    PIBIO_ENGINE_CONTROL_UNIT_PRIVILEGED_FN     ControlUnitPrivileged;

} WINBIO_ENGINE_INTERFACE, *PWINBIO_ENGINE_INTERFACE;

//
// Interface-retrieval function exported by the Engine Adapter
// plug-in DLL. It *MUST* be called 'WbioQueryEngineInterface'.
//
HRESULT
WINAPI
WbioQueryEngineInterface(
    __out PWINBIO_ENGINE_INTERFACE *EngineInterface
    );

//
// Pointer to an interface-retrieval function used by the 
// framework after a 'GetProcAddress' call.
//
typedef HRESULT
(WINAPI *PWINBIO_QUERY_ENGINE_INTERFACE_FN)(
    __out PWINBIO_ENGINE_INTERFACE *EngineInterface
    );

#define WINBIO_QUERY_ENGINE_INTERFACE_FN_NAME   ("WbioQueryEngineInterface")


///////////////////////////////////////////////////////////////////////////////
//
// Inline functions for calling Engine Adapter methods
//
///////////////////////////////////////////////////////////////////////////////
inline HRESULT
WbioEngineAttach(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->Attach))
    {
        return Pipeline->EngineInterface->Attach(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineDetach(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->Detach))
    {
        return Pipeline->EngineInterface->Detach(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineClearContext(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->ClearContext))
    {
        return Pipeline->EngineInterface->ClearContext(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineQueryPreferredFormat(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REGISTERED_FORMAT StandardFormat,
    __out PWINBIO_UUID VendorFormat
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->QueryPreferredFormat))
    {
        return Pipeline->EngineInterface->QueryPreferredFormat(
                                            Pipeline,
                                            StandardFormat,
                                            VendorFormat
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineQueryIndexVectorSize(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T IndexElementCount
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->QueryIndexVectorSize))
    {
        return Pipeline->EngineInterface->QueryIndexVectorSize(
                                            Pipeline,
                                            IndexElementCount
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineQueryHashAlgorithms(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T AlgorithmCount,
    __out PSIZE_T AlgorithmBufferSize,
    __out PUCHAR *AlgorithmBuffer
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->QueryHashAlgorithms))
    {
        return Pipeline->EngineInterface->QueryHashAlgorithms(
                                            Pipeline,
                                            AlgorithmCount,
                                            AlgorithmBufferSize,
                                            AlgorithmBuffer
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineSetHashAlgorithm(
    __inout PWINBIO_PIPELINE Pipeline,
    __in SIZE_T AlgorithmBufferSize,
    __in PUCHAR AlgorithmBuffer
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->SetHashAlgorithm))
    {
        return Pipeline->EngineInterface->SetHashAlgorithm(
                                            Pipeline,
                                            AlgorithmBufferSize,
                                            AlgorithmBuffer
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineQuerySampleHint(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T SampleHint
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->QuerySampleHint))
    {
        return Pipeline->EngineInterface->QuerySampleHint(
                                            Pipeline,
                                            SampleHint
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineAcceptSampleData(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_BIR SampleBuffer,
    __in SIZE_T SampleSize,
    __in WINBIO_BIR_PURPOSE Purpose,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->AcceptSampleData))
    {
        return Pipeline->EngineInterface->AcceptSampleData(
                                            Pipeline,
                                            SampleBuffer,
                                            SampleSize,
                                            Purpose,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineExportEngineData(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIR_DATA_FLAGS Flags,
    __out PWINBIO_BIR *SampleBuffer,
    __out PSIZE_T SampleSize
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->ExportEngineData))
    {
        return Pipeline->EngineInterface->ExportEngineData(
                                            Pipeline,
                                            Flags,
                                            SampleBuffer,
                                            SampleSize
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineVerifyFeatureSet(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out PBOOLEAN Match,
    __out PUCHAR *PayloadBlob,
    __out PSIZE_T PayloadBlobSize,
    __out PUCHAR *HashValue,
    __out PSIZE_T HashSize,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->VerifyFeatureSet))
    {
        return Pipeline->EngineInterface->VerifyFeatureSet(
                                            Pipeline,
                                            Identity,
                                            SubFactor,
                                            Match,
                                            PayloadBlob,
                                            PayloadBlobSize,
                                            HashValue,
                                            HashSize,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineIdentifyFeatureSet(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_IDENTITY Identity,
    __out PWINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out PUCHAR *PayloadBlob,
    __out PSIZE_T PayloadBlobSize,
    __out PUCHAR *HashValue,
    __out PSIZE_T HashSize,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->IdentifyFeatureSet))
    {
        return Pipeline->EngineInterface->IdentifyFeatureSet(
                                            Pipeline,
                                            Identity,
                                            SubFactor,
                                            PayloadBlob,
                                            PayloadBlobSize,
                                            HashValue,
                                            HashSize,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineCreateEnrollment(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->CreateEnrollment))
    {
        return Pipeline->EngineInterface->CreateEnrollment(
                                            Pipeline
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineUpdateEnrollment(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->UpdateEnrollment))
    {
        return Pipeline->EngineInterface->UpdateEnrollment(
                                            Pipeline,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineGetEnrollmentStatus(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_REJECT_DETAIL RejectDetail
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->GetEnrollmentStatus))
    {
        return Pipeline->EngineInterface->GetEnrollmentStatus(
                                            Pipeline,
                                            RejectDetail
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineGetEnrollmentHash(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PUCHAR *HashValue,
    __out PSIZE_T HashSize
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->GetEnrollmentHash))
    {
        return Pipeline->EngineInterface->GetEnrollmentHash(
                                            Pipeline,
                                            HashValue,
                                            HashSize
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineCheckForDuplicate(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_IDENTITY Identity,
    __out PWINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __out PBOOLEAN Duplicate
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->CheckForDuplicate))
    {
        return Pipeline->EngineInterface->CheckForDuplicate(
                                            Pipeline,
                                            Identity,
                                            SubFactor,
                                            Duplicate
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineCommitEnrollment(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in PUCHAR PayloadBlob,
    __in SIZE_T PayloadBlobSize
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->CommitEnrollment))
    {
        return Pipeline->EngineInterface->CommitEnrollment(
                                            Pipeline,
                                            Identity,
                                            SubFactor,
                                            PayloadBlob,
                                            PayloadBlobSize
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineDiscardEnrollment(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->DiscardEnrollment))
    {
        return Pipeline->EngineInterface->DiscardEnrollment(
                                            Pipeline
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineControlUnit(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->ControlUnit))
    {
        return Pipeline->EngineInterface->ControlUnit(
                                            Pipeline,
                                            ControlCode,
                                            SendBuffer,
                                            SendBufferSize,
                                            ReceiveBuffer,
                                            ReceiveBufferSize,
                                            ReceiveDataSize,
                                            OperationStatus
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioEngineControlUnitPrivileged(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface) &&
        ARGUMENT_PRESENT(Pipeline->EngineInterface->ControlUnitPrivileged))
    {
        return Pipeline->EngineInterface->ControlUnitPrivileged(
                                            Pipeline,
                                            ControlCode,
                                            SendBuffer,
                                            SendBufferSize,
                                            ReceiveBuffer,
                                            ReceiveBufferSize,
                                            ReceiveDataSize,
                                            OperationStatus
                                            );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------



///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
//
// Storage Adapter methods...
//
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
typedef HRESULT
(WINAPI *PIBIO_STORAGE_ATTACH_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_DETACH_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

// Clears out all Storage-specific pipeline context
typedef HRESULT
(WINAPI *PIBIO_STORAGE_CLEAR_CONTEXT_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_CREATE_DATABASE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_UUID DatabaseId,
    __in WINBIO_BIOMETRIC_TYPE Factor,
    __in PWINBIO_UUID Format,
    __in LPCWSTR FilePath,
    __in LPCWSTR ConnectString,
    __in SIZE_T IndexElementCount,
    __in SIZE_T InitialSize
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_ERASE_DATABASE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_UUID DatabaseId,
    __in LPCWSTR FilePath,
    __in LPCWSTR ConnectString
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_OPEN_DATABASE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_UUID DatabaseId,
    __in LPCWSTR FilePath,
    __in LPCWSTR ConnectString
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_CLOSE_DATABASE_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_GET_DATA_FORMAT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_UUID Format,
    __out PWINBIO_VERSION Version
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_GET_DATABASE_SIZE_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T AvailableRecordCount,
    __out PSIZE_T TotalRecordCount
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_ADD_RECORD_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_STORAGE_RECORD RecordContents
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_DELETE_RECORD_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_QUERY_BY_SUBJECT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_QUERY_BY_CONTENT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in ULONG IndexVector[],
    __in SIZE_T IndexElementCount
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_GET_RECORD_COUNT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T RecordCount
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_FIRST_RECORD_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_NEXT_RECORD_FN)(
    __inout PWINBIO_PIPELINE Pipeline
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_GET_CURRENT_RECORD_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_STORAGE_RECORD RecordContents
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_CONTROL_UNIT_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    );

typedef HRESULT
(WINAPI *PIBIO_STORAGE_CONTROL_UNIT_PRIVILEGED_FN)(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    );

///////////////////////////////////////////////////////////////////////////////
//
// Storage Adapter interface table.
//
///////////////////////////////////////////////////////////////////////////////
#define WINBIO_STORAGE_INTERFACE_VERSION_1  WINBIO_MAKE_INTERFACE_VERSION(1,0)

typedef struct _WINBIO_STORAGE_INTERFACE {
    WINBIO_ADAPTER_INTERFACE_VERSION            Version;
    WINBIO_ADAPTER_TYPE                         Type;
    SIZE_T                                      Size;
    GUID                                        AdapterId;

    PIBIO_STORAGE_ATTACH_FN                     Attach;
    PIBIO_STORAGE_DETACH_FN                     Detach;

    PIBIO_STORAGE_CLEAR_CONTEXT_FN              ClearContext;

    PIBIO_STORAGE_CREATE_DATABASE_FN            CreateDatabase;
    PIBIO_STORAGE_ERASE_DATABASE_FN             EraseDatabase;

    PIBIO_STORAGE_OPEN_DATABASE_FN              OpenDatabase;
    PIBIO_STORAGE_CLOSE_DATABASE_FN             CloseDatabase;

    PIBIO_STORAGE_GET_DATA_FORMAT_FN            GetDataFormat;
    PIBIO_STORAGE_GET_DATABASE_SIZE_FN          GetDatabaseSize;

    PIBIO_STORAGE_ADD_RECORD_FN                 AddRecord;
    PIBIO_STORAGE_DELETE_RECORD_FN              DeleteRecord;

    PIBIO_STORAGE_QUERY_BY_SUBJECT_FN           QueryBySubject;     // FILLS UP THE PIPELINE'S RESULT SET
    PIBIO_STORAGE_QUERY_BY_CONTENT_FN           QueryByContent;     // FILLS UP THE PIPELINE'S RESULT SET

    PIBIO_STORAGE_GET_RECORD_COUNT_FN           GetRecordCount;     // GETS RECORD COUNT IN PIPELINE'S RESULT SET
    PIBIO_STORAGE_FIRST_RECORD_FN               FirstRecord;        // POSITIONS PIPELINE'S RESULT-SET-CURSOR TO POS_0
    PIBIO_STORAGE_NEXT_RECORD_FN                NextRecord;         // POSITIONS PIPELINE'S RESULT-SET-CURSOR TO CURR_POS + 1
    PIBIO_STORAGE_GET_CURRENT_RECORD_FN         GetCurrentRecord;   // GETS POINTERS TO DATA IN CURRENTLY-SELECTED RECORD IN PIPELINE'S RESULT SET

    PIBIO_STORAGE_CONTROL_UNIT_FN               ControlUnit;
    PIBIO_STORAGE_CONTROL_UNIT_PRIVILEGED_FN    ControlUnitPrivileged;

} WINBIO_STORAGE_INTERFACE, *PWINBIO_STORAGE_INTERFACE;


//
// Interface-retrieval function exported by the Storage Adapter
// plug-in DLL. It *MUST* be called 'WbioQueryStorageInterface'.
//
HRESULT
WINAPI
WbioQueryStorageInterface(
    __out PWINBIO_STORAGE_INTERFACE *StorageInterface
    );

//
// Pointer to an interface-retrieval function used by the 
// framework after a 'GetProcAddress' call.
//
typedef HRESULT
(WINAPI *PWINBIO_QUERY_STORAGE_INTERFACE_FN)(
    __out PWINBIO_STORAGE_INTERFACE *StorageInterface
    );

#define WINBIO_QUERY_STORAGE_INTERFACE_FN_NAME  ("WbioQueryStorageInterface")





///////////////////////////////////////////////////////////////////////////////
//
// Inline functions for calling Storage Adapter methods
//
///////////////////////////////////////////////////////////////////////////////
inline HRESULT
WbioStorageAttach(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->Attach))
    {
        return Pipeline->StorageInterface->Attach(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageDetach(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->Detach))
    {
        return Pipeline->StorageInterface->Detach(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageClearContext(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->ClearContext))
    {
        return Pipeline->StorageInterface->ClearContext(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageCreateDatabase(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_UUID DatabaseId,
    __in WINBIO_BIOMETRIC_TYPE Factor,
    __in PWINBIO_UUID Format,
    __in LPCWSTR FilePath,
    __in LPCWSTR ConnectString,
    __in SIZE_T IndexElementCount,
    __in SIZE_T InitialSize
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->CreateDatabase))
    {
        return Pipeline->StorageInterface->CreateDatabase(
                                                    Pipeline,
                                                    DatabaseId,
                                                    Factor,
                                                    Format,
                                                    FilePath,
                                                    ConnectString,
                                                    IndexElementCount,
                                                    InitialSize
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageEraseDatabase(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_UUID DatabaseId,
    __in LPCWSTR FilePath,
    __in LPCWSTR ConnectString
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->EraseDatabase))
    {
        return Pipeline->StorageInterface->EraseDatabase(
                                                    Pipeline,
                                                    DatabaseId,
                                                    FilePath,
                                                    ConnectString
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageOpenDatabase(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_UUID DatabaseId,
    __in LPCWSTR FilePath,
    __in LPCWSTR ConnectString
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->OpenDatabase))
    {
        return Pipeline->StorageInterface->OpenDatabase(
                                                        Pipeline,
                                                        DatabaseId,
                                                        FilePath,
                                                        ConnectString
                                                        );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageCloseDatabase(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->CloseDatabase))
    {
        return Pipeline->StorageInterface->CloseDatabase(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageGetDataFormat(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_UUID Format,
    __out PWINBIO_VERSION Version
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->GetDataFormat))
    {
        return Pipeline->StorageInterface->GetDataFormat(
                                                    Pipeline,
                                                    Format,
                                                    Version
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageGetDatabaseSize(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T AvailableRecordCount,
    __out PSIZE_T TotalRecordCount
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->GetDatabaseSize))
    {
        return Pipeline->StorageInterface->GetDatabaseSize(
                                                    Pipeline,
                                                    AvailableRecordCount,
                                                    TotalRecordCount
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageAddRecord(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_STORAGE_RECORD RecordContents
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->AddRecord))
    {
        return Pipeline->StorageInterface->AddRecord( 
                                                Pipeline, 
                                                RecordContents
                                                );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageDeleteRecord(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->DeleteRecord))
    {
        return Pipeline->StorageInterface->DeleteRecord(
                                                    Pipeline,
                                                    Identity,
                                                    SubFactor
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageQueryBySubject(
    __inout PWINBIO_PIPELINE Pipeline,
    __in PWINBIO_IDENTITY Identity,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->QueryBySubject))
    {
        return Pipeline->StorageInterface->QueryBySubject(
                                                    Pipeline,
                                                    Identity,
                                                    SubFactor
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageQueryByContent(
    __inout PWINBIO_PIPELINE Pipeline,
    __in WINBIO_BIOMETRIC_SUBTYPE SubFactor,
    __in ULONG IndexVector[],
    __in SIZE_T IndexElementCount
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->QueryByContent))
    {
        return Pipeline->StorageInterface->QueryByContent(
                                                    Pipeline,
                                                    SubFactor,
                                                    IndexVector,
                                                    IndexElementCount
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageGetRecordCount(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PSIZE_T RecordCount
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->GetRecordCount))
    {
        return Pipeline->StorageInterface->GetRecordCount(
                                                    Pipeline,
                                                    RecordCount
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageFirstRecord(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->FirstRecord))
    {
        return Pipeline->StorageInterface->FirstRecord(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageNextRecord(
    __inout PWINBIO_PIPELINE Pipeline
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->NextRecord))
    {
        return Pipeline->StorageInterface->NextRecord(Pipeline);
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageGetCurrentRecord(
    __inout PWINBIO_PIPELINE Pipeline,
    __out PWINBIO_STORAGE_RECORD RecordContents
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->GetCurrentRecord))
    {
        return Pipeline->StorageInterface->GetCurrentRecord(
                                                    Pipeline,
                                                    RecordContents
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageControlUnit(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->ControlUnit))
    {
        return Pipeline->StorageInterface->ControlUnit(
                                                    Pipeline,
                                                    ControlCode,
                                                    SendBuffer,
                                                    SendBufferSize,
                                                    ReceiveBuffer,
                                                    ReceiveBufferSize,
                                                    ReceiveDataSize,
                                                    OperationStatus
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------

inline HRESULT
WbioStorageControlUnitPrivileged(
    __inout PWINBIO_PIPELINE Pipeline,
    __in ULONG ControlCode,
    __in PUCHAR SendBuffer,
    __in SIZE_T SendBufferSize,
    __in PUCHAR ReceiveBuffer,
    __in SIZE_T ReceiveBufferSize,
    __out PSIZE_T ReceiveDataSize,
    __out PULONG OperationStatus
    )
{
    if (ARGUMENT_PRESENT(Pipeline) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface) &&
        ARGUMENT_PRESENT(Pipeline->StorageInterface->ControlUnitPrivileged))
    {
        return Pipeline->StorageInterface->ControlUnitPrivileged(
                                                    Pipeline,
                                                    ControlCode,
                                                    SendBuffer,
                                                    SendBufferSize,
                                                    ReceiveBuffer,
                                                    ReceiveBufferSize,
                                                    ReceiveDataSize,
                                                    OperationStatus
                                                    );
    }
    else
    {
        return E_NOTIMPL;
    }
}
//-----------------------------------------------------------------------------


#ifdef __cplusplus
} // extern "C"
#endif

#endif // (NTDDI_VERSION >= NTDDI_WIN7)

#endif // _WINBIO_ADAPTER_H_2C0E14E1_5330_4f60_9B4F_836CFFD7452A_


