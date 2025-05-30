/*++

Copyright (c) 2002 Microsoft Corporation

Module Name:

        wusb.h

Abstract:

        Public interface to winusb.dll

Environment:

        Kernel Mode Only

Notes:

        THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY
        KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
        IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A PARTICULAR
        PURPOSE.

        Copyright (c) 2001 Microsoft Corporation.  All Rights Reserved.


Revision History:

        11/19/2002 : created

Authors:

--*/

#ifndef __WUSB_H__
#define __WUSB_H__

#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#ifdef __cplusplus
extern "C" {
#endif

#if(NTDDI_VERSION >= NTDDI_WINXP)

#include <winusbio.h>


typedef PVOID WINUSB_INTERFACE_HANDLE, *PWINUSB_INTERFACE_HANDLE;

   
#pragma pack(1)

typedef struct _WINUSB_SETUP_PACKET {
    UCHAR   RequestType;
    UCHAR   Request;
    USHORT  Value;
    USHORT  Index;
    USHORT  Length;
} WINUSB_SETUP_PACKET, *PWINUSB_SETUP_PACKET;

#pragma pack()



BOOL __stdcall
WinUsb_Initialize(
    _In_  HANDLE DeviceHandle,
    _Out_ PWINUSB_INTERFACE_HANDLE InterfaceHandle
    );


BOOL __stdcall
WinUsb_Free(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle
    );


BOOL __stdcall
WinUsb_GetAssociatedInterface(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR AssociatedInterfaceIndex,
    _Out_ PWINUSB_INTERFACE_HANDLE AssociatedInterfaceHandle
    );



BOOL __stdcall
WinUsb_GetDescriptor(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR DescriptorType,
    _In_  UCHAR Index,
    _In_  USHORT LanguageID,
    _Out_writes_bytes_to_opt_(BufferLength, *LengthTransferred) PUCHAR Buffer,
    _In_  ULONG BufferLength,
    _Out_ PULONG LengthTransferred
    );

BOOL __stdcall
WinUsb_QueryInterfaceSettings(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR AlternateInterfaceNumber,
    _Out_ PUSB_INTERFACE_DESCRIPTOR UsbAltInterfaceDescriptor
    );

BOOL __stdcall
WinUsb_QueryDeviceInformation(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  ULONG InformationType,
    _Inout_ PULONG BufferLength,
    _Out_writes_bytes_(*BufferLength) PVOID Buffer
    );

BOOL __stdcall
WinUsb_SetCurrentAlternateSetting(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR SettingNumber
    );

BOOL __stdcall
WinUsb_GetCurrentAlternateSetting(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _Out_ PUCHAR SettingNumber
    );


BOOL __stdcall
WinUsb_QueryPipe(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR AlternateInterfaceNumber,
    _In_  UCHAR PipeIndex,
    _Out_ PWINUSB_PIPE_INFORMATION PipeInformation
    );


BOOL __stdcall
WinUsb_SetPipePolicy(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID,
    _In_  ULONG PolicyType,
    _In_  ULONG ValueLength,
    _In_reads_bytes_(ValueLength) PVOID Value
    );

BOOL __stdcall
WinUsb_GetPipePolicy(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID,
    _In_  ULONG PolicyType,
    _Inout_ PULONG ValueLength,
    _Out_writes_bytes_(*ValueLength) PVOID Value
    );

BOOL __stdcall
WinUsb_ReadPipe(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID,
    _Out_writes_bytes_to_opt_(BufferLength,*LengthTransferred) PUCHAR Buffer,
    _In_  ULONG BufferLength,
    _Out_opt_ PULONG LengthTransferred,
    _In_opt_ LPOVERLAPPED Overlapped
    );

BOOL __stdcall
WinUsb_WritePipe(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID,
    _In_reads_bytes_(BufferLength) PUCHAR Buffer,
    _In_  ULONG BufferLength,
    _Out_opt_ PULONG LengthTransferred,
    _In_opt_ LPOVERLAPPED Overlapped    
    );

BOOL __stdcall
WinUsb_ControlTransfer(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  WINUSB_SETUP_PACKET SetupPacket,
    _Out_writes_bytes_to_opt_(BufferLength, *LengthTransferred) PUCHAR Buffer,
    _In_  ULONG BufferLength,
    _Out_opt_ PULONG LengthTransferred,
    _In_opt_  LPOVERLAPPED Overlapped    
    );

BOOL __stdcall
WinUsb_ResetPipe(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID
    );

BOOL __stdcall
WinUsb_AbortPipe(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID
    );

BOOL __stdcall
WinUsb_FlushPipe(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  UCHAR PipeID
    );

BOOL __stdcall
WinUsb_SetPowerPolicy(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  ULONG PolicyType,
    _In_  ULONG ValueLength,
    _In_reads_bytes_(ValueLength) PVOID Value
    );

BOOL __stdcall
WinUsb_GetPowerPolicy(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  ULONG PolicyType,
    _Inout_ PULONG ValueLength,
    _Out_writes_bytes_(*ValueLength) PVOID Value
    );

BOOL __stdcall
WinUsb_GetOverlappedResult(
    _In_  WINUSB_INTERFACE_HANDLE InterfaceHandle,
    _In_  LPOVERLAPPED lpOverlapped,
    _Out_ LPDWORD lpNumberOfBytesTransferred,
    _In_  BOOL bWait
    );
    

PUSB_INTERFACE_DESCRIPTOR __stdcall
WinUsb_ParseConfigurationDescriptor(
    _In_  PUSB_CONFIGURATION_DESCRIPTOR ConfigurationDescriptor,
    _In_  PVOID StartPosition,
    _In_  LONG InterfaceNumber,
    _In_  LONG AlternateSetting,
    _In_  LONG InterfaceClass,
    _In_  LONG InterfaceSubClass,
    _In_  LONG InterfaceProtocol
    );

PUSB_COMMON_DESCRIPTOR __stdcall
WinUsb_ParseDescriptors(
    _In_reads_bytes_(TotalLength) PVOID    DescriptorBuffer,
    _In_  ULONG    TotalLength,
    _In_  PVOID    StartPosition,
    _In_  LONG     DescriptorType
    );


#endif // (NTDDI_VERSION >= NTDDI_WINXP)

#ifdef __cplusplus
}
#endif

                   

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

#endif //__WUSB_H__
