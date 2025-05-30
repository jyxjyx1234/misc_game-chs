/*++

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

        USBCAMDI.H

Abstract:

   interface definition for .

Environment:

    Kernel & user mode

Revision History:


--*/


#ifndef   __USBCAMDI_H__
#define   __USBCAMDI_H__

// the purpose of this structure is to establish a connection between pipes discovered and
// streams to be declared (video,still). the following structure will be be passed along with 
// USBD_PIPE_INFO structure in CamConfigEx to the cam driver. The Cam driver has to indicate 
// pipe stream asscociation by oring all the relevant streams associated with this particular 
// pipe. If there is more than one stream association, USBCAMD creates a virtual still pin,
// and assumes the first stream is video followed by still stream.
// The cam driver has to set the first field to USBCAMD_DONT_CARE_PIPE if a particular pipe should not be used by 
// usbcamd. For example, if you have an iso audio pipe, iso video pipe in a camera device that 
// supports stills and video .you should set the flag field in the first structure to 
// USBCAMD_DONT_CARE_PIPE, The second structure should be set as foolows:
// {USBCAMD_VIDEO_STILL_STREAM,USBCAMD_MULTIPLEX_PIPE)}. 
// the assumption here is that cam has one config descr, and all alt.interfcaes have the same 
// number and types of pipes.
// also, notice that the flags are mutually exclusive. 
//

typedef struct _pipe_config_descriptor {
    CHAR     StreamAssociation ;         // video stream, still stream, or both
    UCHAR    PipeConfigFlags;           // USBCAMD_PIPECONFIG_*
} USBCAMD_Pipe_Config_Descriptor, *PUSBCAMD_Pipe_Config_Descriptor;

#define USBCAMD_DATA_PIPE           0x0001  // video or still data pipe
#define USBCAMD_MULTIPLEX_PIPE      0x0002  // pipe used for both still & video  
#define USBCAMD_SYNC_PIPE           0x0004  // out-of-band signalling pipe.
#define USBCAMD_DONT_CARE_PIPE      0x0008  // pipe is not to be used for streaming vidoe or still.

#define USBCAMD_VIDEO_STREAM        0x1
#define USBCAMD_STILL_STREAM        0x2
#define USBCAMD_VIDEO_STILL_STREAM  (USBCAMD_VIDEO_STREAM | USBCAMD_STILL_STREAM)

                                                       
// PacketFlag definitions for CamProcessUSBPacketEx
// *** Notice *** : these flags are mutually exclusive.

// current frame is unsalvageable, recycle the read IRP
#define USBCAMD_PROCESSPACKETEX_DropFrame           0x0002 
// following frame is still.
#define USBCAMD_PROCESSPACKETEX_NextFrameIsStill    0x0004 
// copy this frame to still pin. .                                               
#define USBCAMD_PROCESSPACKETEX_CurrentFrameIsStill 0x0008 

// these flags are used in PipeStateFlag in usbcamd_setpipestate function.

#define USBCAMD_STOP_STREAM             0x00000001
#define USBCAMD_START_STREAM            0x00000000

//
// the following flags are passed to usbcamd in USBCAMD_InitializeNewInterface.
// If Cam driver doesn't need to operate on the still image raw frame, then it should 
// set the second flag in order to elminate on ebuffer copy. Likewise for the video frame.
// the associatedformat flag is set if the cam driver use the same format fro video and 
// virtual still pin. Once, this flag is set, USBCAMD will not allow virtual still pin to be
// opened at different format than the video pin. USE this flag only when the virtual still
// pin produces frames that have exact format as video frames.
// EnableDeviceEvents will expose a deviceevents to stream class & DSHOW which will enable an STI
// Monitor to lunch a still image app if still button is pressed on the camera.

typedef enum {
    USBCAMD_CamControlFlag_NoVideoRawProcessing  = 0x0001,
    USBCAMD_CamControlFlag_NoStillRawProcessing  = 0x0002,
    USBCAMD_CamControlFlag_AssociatedFormat      = 0x0004,
    USBCAMD_CamControlFlag_EnableDeviceEvents    = 0x0008,
} USBCAMD_CamControlFlags;


// ------------------------------------------------------------------------
// The master list of all streams supported by this driver
// ------------------------------------------------------------------------

typedef __checkReturn
NTSTATUS
(*PCOMMAND_COMPLETE_FUNCTION)(
    __in PVOID DeviceContext,
    __inout PVOID CommandContext,
    __in NTSTATUS NtStatus
    );


typedef 
VOID
(*PSTREAM_RECEIVE_PACKET) (
    __in PVOID Srb,
    __in PVOID DeviceContext,
    __in PBOOLEAN Completed
    );


typedef __checkReturn
NTSTATUS
(*PCAM_INITIALIZE_ROUTINE)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext
    );



typedef
NTSTATUS __checkReturn
(*PCAM_CONFIGURE_ROUTINE)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PUSBD_INTERFACE_INFORMATION Interface,
    __in PUSB_CONFIGURATION_DESCRIPTOR ConfigurationDescriptor,
    __in PLONG DataPipeIndex,
    __in PLONG SyncPipeIndex
    );    

typedef
NTSTATUS __checkReturn
(*PCAM_CONFIGURE_ROUTINE_EX)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PUSBD_INTERFACE_INFORMATION Interface,
    __in PUSB_CONFIGURATION_DESCRIPTOR ConfigurationDescriptor,
    __in ULONG   PipeConfigListSize,
    __in PUSBCAMD_Pipe_Config_Descriptor PipeConfig,
    __in PUSB_DEVICE_DESCRIPTOR DeviceDescriptor
    );    


typedef
NTSTATUS __checkReturn
(*PCAM_START_CAPTURE_ROUTINE)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext
    );    

typedef
NTSTATUS __checkReturn
(*PCAM_START_CAPTURE_ROUTINE_EX)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in ULONG StreamNumber

    );    


typedef
NTSTATUS __checkReturn
(*PCAM_ALLOCATE_BW_ROUTINE)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PULONG RawFrameLength,
    __in PVOID Format
    );      

typedef
NTSTATUS __checkReturn
(*PCAM_ALLOCATE_BW_ROUTINE_EX)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PULONG RawFrameLength,
    __in PVOID Format,
    __in ULONG StreamNumber
    );      

typedef
NTSTATUS __checkReturn
(*PCAM_FREE_BW_ROUTINE)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext
    );      

typedef
NTSTATUS __checkReturn
(*PCAM_FREE_BW_ROUTINE_EX)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in ULONG STreamNumber
    );      

typedef 
VOID
(*PADAPTER_RECEIVE_PACKET_ROUTINE)(
    __inout PHW_STREAM_REQUEST_BLOCK Srb
    );

typedef
NTSTATUS __checkReturn
(*PCAM_STOP_CAPTURE_ROUTINE)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext
    );   
   
typedef
NTSTATUS __checkReturn
(*PCAM_STOP_CAPTURE_ROUTINE_EX)(
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in ULONG StreamNumber
    );      

typedef 
ULONG
(*PCAM_PROCESS_PACKET_ROUTINE) (
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PVOID CurrentFrameContext,
    __in_opt PUSBD_ISO_PACKET_DESCRIPTOR SyncPacket,
    __in_opt PVOID SyncBuffer,
    __in_opt PUSBD_ISO_PACKET_DESCRIPTOR DataPacket,
    __inout PVOID DataBuffer,
    __out PBOOLEAN FrameComplete,
    __out PBOOLEAN NextFrameIsStill
    );    

typedef
ULONG
(*PCAM_PROCESS_PACKET_ROUTINE_EX) (
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PVOID CurrentFrameContext,
    __in_opt PUSBD_ISO_PACKET_DESCRIPTOR SyncPacket,
    __in_opt PVOID SyncBuffer,
    __in_opt PUSBD_ISO_PACKET_DESCRIPTOR DataPacket,
    __inout PVOID DataBuffer,
    __out PBOOLEAN FrameComplete,
    __out PULONG PacketFlag,
    __out PULONG ValidDataOffset
    );    


typedef
VOID
(*PCAM_NEW_FRAME_ROUTINE) (
    __in PVOID DeviceContext,
    __in PVOID FrameContext
    );

typedef
VOID
(*PCAM_NEW_FRAME_ROUTINE_EX) (
    __in PVOID DeviceContext,
    __in PVOID FrameContext,
    __in ULONG StreamNumber,
    __out PULONG FrameLength
    );

typedef __checkReturn
NTSTATUS
(*PCAM_PROCESS_RAW_FRAME_ROUTINE) (
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PVOID FrameContext,
    __in PVOID FrameBuffer,
    __in ULONG FrameLength,
    __out PVOID RawFrameBuffer,
    __in ULONG RawFrameLength,
    __in ULONG NumberOfPackets,
    __out PULONG BytesReturned
    );

typedef __checkReturn
NTSTATUS
(*PCAM_PROCESS_RAW_FRAME_ROUTINE_EX) (
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext,
    __in PVOID FrameContext,
    __in PVOID FrameBuffer,
    __in ULONG FrameLength,
    __out PVOID RawFrameBuffer,
    __in ULONG RawFrameLength,
    __in ULONG NumberOfPackets,
    __out PULONG BytesReturned,
    __in ULONG ActualRawFrameLength,
    __in ULONG StreamNumber
    );

typedef __checkReturn
NTSTATUS
(*PCAM_STATE_ROUTINE) (
    __in PDEVICE_OBJECT BusDeviceObject,
    __in PVOID DeviceContext
    );      


#ifdef DEBUG_LOG

VOID
USBCAMD_Debug_LogEntry(
    __in CHAR *Name,
    __in ULONG Info1,
    __in ULONG Info2,
    __in ULONG Info3
    );

#define ILOGENTRY(sig, info1, info2, info3) \
    USBCAMD_Debug_LogEntry(sig, (ULONG)info1, (ULONG)info2, (ULONG)info3)

#else

#define ILOGENTRY(sig, info1, info2, info3)

#endif /* DEBUG_LOG */



typedef struct _USBCAMD_DEVICE_DATA {
    ULONG Sig;
    PCAM_INITIALIZE_ROUTINE                 CamInitialize;
    PCAM_INITIALIZE_ROUTINE                 CamUnInitialize;
    PCAM_PROCESS_PACKET_ROUTINE             CamProcessUSBPacket;
    PCAM_NEW_FRAME_ROUTINE                  CamNewVideoFrame;
    PCAM_PROCESS_RAW_FRAME_ROUTINE          CamProcessRawVideoFrame;
    PCAM_START_CAPTURE_ROUTINE              CamStartCapture;
    PCAM_STOP_CAPTURE_ROUTINE               CamStopCapture;
    PCAM_CONFIGURE_ROUTINE                  CamConfigure;
    PCAM_STATE_ROUTINE                      CamSaveState;
    PCAM_STATE_ROUTINE                      CamRestoreState;
    PCAM_ALLOCATE_BW_ROUTINE                CamAllocateBandwidth;
    PCAM_FREE_BW_ROUTINE                    CamFreeBandwidth;
    
} USBCAMD_DEVICE_DATA, *PUSBCAMD_DEVICE_DATA;

typedef struct _USBCAMD_DEVICE_DATA2 {
    ULONG Sig;
    PCAM_INITIALIZE_ROUTINE                 CamInitialize;
    PCAM_INITIALIZE_ROUTINE                 CamUnInitialize;
    PCAM_PROCESS_PACKET_ROUTINE_EX          CamProcessUSBPacketEx;
    PCAM_NEW_FRAME_ROUTINE_EX               CamNewVideoFrameEx;
    PCAM_PROCESS_RAW_FRAME_ROUTINE_EX       CamProcessRawVideoFrameEx;
    PCAM_START_CAPTURE_ROUTINE_EX           CamStartCaptureEx;
    PCAM_STOP_CAPTURE_ROUTINE_EX            CamStopCaptureEx;
    PCAM_CONFIGURE_ROUTINE_EX               CamConfigureEx;
    PCAM_STATE_ROUTINE                      CamSaveState;
    PCAM_STATE_ROUTINE                      CamRestoreState;
    PCAM_ALLOCATE_BW_ROUTINE_EX             CamAllocateBandwidthEx;
    PCAM_FREE_BW_ROUTINE_EX                 CamFreeBandwidthEx;
    
} USBCAMD_DEVICE_DATA2, *PUSBCAMD_DEVICE_DATA2;



//
// USBCAMD services
//

/* 

This function is called from the "cam" driver DriverEntry routine to register 
the driver with USBCAMD.  This effectively binds the two drivers together.

Context1, Context2 - these are passed to the "cam" drivers DriverEntry and 
    should simply be passed on 
DeviceContextSize - amount of memory needed for the "cam" driver's device 
    specific context. 
FrameContextSize - size of an optional per video frame structure passed to 
    NewVideoFrame and ProcessRawVideoFrame.

*/

    ULONG 
    USBCAMD_DriverEntry(
    __in PVOID Context1,
    __in PVOID Context2,
    __in ULONG DeviceContextSize,
    __in ULONG FrameCOntextSize,
    __in PADAPTER_RECEIVE_PACKET_ROUTINE ReceivePacket
    );

/*
This function is called by the "cam" driver from the AdapterReceivePacket 
routine to allow USBCAMD to process an SRB.  

Srb - The srb passed to the "cam" driver's AdapterReceievPacket Routine.
DeviceData - filled in USBCAMD_DEVICE_DATAx structure with entry points to the 
    "cam" driver for iso stream processing.
DeviceObject - this pointer will be filled in the device PDO, this is used by 
    the "cam" driver for calls to the USB stack through IoCallDriver. 
NeedsCompletion - if this flag is true USBCAMD will process the SRB and 
    complete it, otherwise USBCAMD will ignore the SRB and just return the 
    DeveiceConext.

Returns:
    Returns a pointer to the device specific context for this instance of the 
    camera "DeviceContext".

*/

PVOID
USBCAMD_AdapterReceivePacket(
    __in PHW_STREAM_REQUEST_BLOCK Srb,
    __in PUSBCAMD_DEVICE_DATA DeviceData,
    __in PDEVICE_OBJECT *DeviceObject,
    __in BOOLEAN NeedsCompletion
    );    

/*
This function is available to the "cam" driver to send vendor commands on the 
control pipe.   This function may be called at IRQL >= PASSIVE_LEVEL.  If the 
function is called at IRQL > PASSIVE_LEVEL the command will be deferred until 
passive level, once completed the callers CommandComplete function is called 
with a pointer to the CommandContext. 


DeviceContext - device specific context.
Request - value for the bRequest field for the vendor command.
Value - value for the wValue field of the vendor command.
Index - value for the wIndex field of the vendor conmmand.
Buffer - data buffer if the command has data, may be NULL.
BufferLength - pointer length of Buffer in bytes, may be NULL if buffer is NULL
GetData - flag indicating data direction, "GetData" indicates data is send 
    device-to-host.
CommandComplete - function called when command is completed.
CommandContext - context passed to CommandComplete function

Returns:
    Returns NTSTATUS code from command of STTAUS_PENDING if command is deferred.
    
*/

__checkReturn NTSTATUS
USBCAMD_ControlVendorCommand(
    __in PVOID DeviceContext,
    __in UCHAR Request,
    __in USHORT Value,
    __in USHORT Index,
    __inout_bcount_opt( *BufferLength )PVOID Buffer,
    __inout PULONG BufferLength,
    __in BOOLEAN GetData,
    __in_opt PCOMMAND_COMPLETE_FUNCTION CommandComplete,
    __in_opt PVOID CommandContext
    );    

/*
This function is called by the "cam" driver to select an alternate interface, 
The RequestInterface structure is filled in with the information from the 
SELECT_INTERFACE request on successful completion.  This function is 
typically called from the "cam" driver in response to a request to allocate 
or free bandwidth.

DeviceContext - device specific context.
RequestInterface - USBD_INTERFACE_INFORMATION structure for the appropriate 
    interface to select. The same rules apply to this structure as for the 
    SELECT_INTERFACE USBD request (see USBDI doc). 

Returns:
    Returns the status from the SELECT_INTERFACE request to USBD.

*/

__checkReturn NTSTATUS
USBCAMD_SelectAlternateInterface(
    __in PVOID DeviceContext,
    __in __out PUSBD_INTERFACE_INFORMATION RequestInterface
    );  

/*
    Handy function to get a device instance specific registry key value
*/

__checkReturn NTSTATUS 
USBCAMD_GetRegistryKeyValue (
    __in HANDLE Handle,
    __in_bcount(KeyNameStringLength) PWCHAR KeyNameString,
    __in ULONG KeyNameStringLength,
    __in_bcount(DataLength) PVOID Data,
    __in ULONG DataLength
    );
//
// These services are new.
//

/* 

This function is called from the "cam" driver upon recieving SRB_INITIALIZE_DEVICE 
to provid usbcamd with all the necessary info to configure the cam driver correctly with
stream class and USB Bus drivers.

DeviceContext - device specific context.
DeviceData - filled in USBCAMD_DEVICE_DATAx structure with entry points to the 
    "cam" driver .
Version - USBCAMD version
CamControlFlag - flags to control interaction with cam driver.

*/

ULONG
USBCAMD_InitializeNewInterface( 
    __in PVOID DeviceContext,
    __in PVOID DeviceData,
    __in ULONG Version,
    __in ULONG CamControlFlag
    );



// To access the new USBCAMD functionality in a CAM driver , the driver sends 
// the following IRP to itself once it received SRB_INITIALIZATION_COMPLETE.

// MajorFunction = IRP_MJ_PNP;
// MinorFunction = IRP_MN_QUERY_INTERFACE;

// {2BCB75C0-B27F-11d1-BA41-00A0C90D2B05}
DEFINE_GUID( GUID_USBCAMD_INTERFACE ,
     0x2bcb75c0, 0xb27f, 0x11d1, 0xba, 0x41, 0x0, 0xa0, 0xc9, 0xd, 0x2b, 0x5);



//The QUERY_INTERFACE Irp will return an interface (set of function pointers)
// of the type xxxxINTERFACE, defined below. This is essentially a table of
// function pointers.


typedef __checkReturn
NTSTATUS
(*PFNUSBCAMD_SetVideoFormat)( 
    __in PVOID DeviceContext,
    __in PHW_STREAM_REQUEST_BLOCK pSrb
    );


typedef __checkReturn
NTSTATUS
(*PFNUSBCAMD_WaitOnDeviceEvent)( 
    __in PVOID DeviceContext,
    __in ULONG PipeIndex,
    __in_bcount(BufferLength) PVOID Buffer,
    __in ULONG BufferLength,
    __in PCOMMAND_COMPLETE_FUNCTION   EventComplete,
    __in PVOID EventContext,
    __in BOOLEAN LoopBack
    );

// this function is callable at PASSIVE_LEVEL Only.

typedef __checkReturn
NTSTATUS
(*PFNUSBCAMD_CancelBulkReadWrite)( 
    __in PVOID DeviceContext,
    __in ULONG PipeIndex
    );


typedef __checkReturn
NTSTATUS
(*PFNUSBCAMD_SetIsoPipeState)( 
    __in PVOID DeviceContext,
    __in ULONG PipeStateFlags
    );


typedef __checkReturn
NTSTATUS
(*PFNUSBCAMD_BulkReadWrite)( 
    __in PVOID DeviceContext,
    __in USHORT PipeIndex,
    __in_bcount(BufferLength) PVOID Buffer,
    __in ULONG BufferLength,
    __in PCOMMAND_COMPLETE_FUNCTION CommandComplete,
    __in PVOID CommandContext
    );

#define USBCAMD_VERSION_200    0x200

typedef struct {
    INTERFACE Interface;
    PFNUSBCAMD_WaitOnDeviceEvent      USBCAMD_WaitOnDeviceEvent;
    PFNUSBCAMD_BulkReadWrite          USBCAMD_BulkReadWrite;
    PFNUSBCAMD_SetVideoFormat         USBCAMD_SetVideoFormat;
    PFNUSBCAMD_SetIsoPipeState        USBCAMD_SetIsoPipeState;
    PFNUSBCAMD_CancelBulkReadWrite    USBCAMD_CancelBulkReadWrite;
} USBCAMD_INTERFACE, *PUSBCAMD_INTERFACE;




#endif /*  __USBCAMDI_H__ */    

