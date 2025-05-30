/******************************Module*Header**********************************\
*
* Module Name: d3dkmthk.h
*
* Content: longhorn display driver model kernel mode thunk interfaces
*
* Copyright (c) 2003 Microsoft Corporation.  All rights reserved.
\*****************************************************************************/
#ifndef _D3DKMTHK_H_
#define _D3DKMTHK_H_

#include <d3dkmdt.h>

#pragma warning(push)
#pragma warning(disable:4201) // anonymous unions warning

//
// Available only for Vista (LONGHORN) and later and for
// multiplatform tools such as debugger extensions
//
#if (NTDDI_VERSION >= NTDDI_LONGHORN) || defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

typedef struct _D3DKMT_CREATEDEVICEFLAGS
{
    UINT    LegacyMode   :  1;   // 0x00000001
    UINT    RequestVSync :  1;   // 0x00000002
    UINT    Reserved     : 30;   // 0xFFFFFFFC
} D3DKMT_CREATEDEVICEFLAGS;

typedef struct _D3DKMT_CREATEDEVICE
{
    union
    {
        D3DKMT_HANDLE           hAdapter;           // in: identifies the adapter for user-mode creation
        VOID*                   pAdapter;           // in: identifies the adapter for kernel-mode creation
    };

    D3DKMT_CREATEDEVICEFLAGS    Flags;

    D3DKMT_HANDLE               hDevice;                // out: Indentifies the device
    VOID*                       pCommandBuffer;         // out: D3D10 compatibility.
    UINT                        CommandBufferSize;      // out: D3D10 compatibility.
    D3DDDI_ALLOCATIONLIST*      pAllocationList;        // out: D3D10 compatibility.
    UINT                        AllocationListSize;     // out: D3D10 compatibility.
    D3DDDI_PATCHLOCATIONLIST*   pPatchLocationList;     // out: D3D10 compatibility.
    UINT                        PatchLocationListSize;  // out: D3D10 compatibility.
} D3DKMT_CREATEDEVICE;

typedef struct _D3DKMT_DESTROYDEVICE
{
    D3DKMT_HANDLE     hDevice;              // in: Indentifies the device
}D3DKMT_DESTROYDEVICE;

typedef enum _D3DKMT_CLIENTHINT
{
    D3DKMT_CLIENTHINT_UNKNOWN     = 0,
    D3DKMT_CLIENTHINT_OPENGL      = 1,
    D3DKMT_CLIENTHINT_CDD         = 2,       // Internal
    D3DKMT_CLIENTHINT_DX7         = 7,
    D3DKMT_CLIENTHINT_DX8         = 8,
    D3DKMT_CLIENTHINT_DX9         = 9,
    D3DKMT_CLIENTHINT_DX10        = 10,
} D3DKMT_CLIENTHINT;

typedef struct _D3DKMT_CREATECONTEXT
{
    D3DKMT_HANDLE               hDevice;                    // in:  Handle to the device owning this context.
    UINT                        NodeOrdinal;                // in:  Identifier for the node targetted by this context.
    UINT                        EngineAffinity;             // in:  Engine affinity within the specified node.
    D3DDDI_CREATECONTEXTFLAGS   Flags;                      // in:  Context creation flags.
    VOID*                       pPrivateDriverData;         // in:  Private driver data
    UINT                        PrivateDriverDataSize;      // in:  Size of private driver data
    D3DKMT_CLIENTHINT           ClientHint;                 // in:  Hints which client is creating this
    D3DKMT_HANDLE               hContext;                   // out: Handle of the created context.
    VOID*                       pCommandBuffer;             // out: Pointer to the first command buffer.
    UINT                        CommandBufferSize;          // out: Command buffer size (bytes).
    D3DDDI_ALLOCATIONLIST*      pAllocationList;            // out: Pointer to the first allocation list.
    UINT                        AllocationListSize;         // out: Allocation list size (elements).
    D3DDDI_PATCHLOCATIONLIST*   pPatchLocationList;         // out: Pointer to the first patch location list.
    UINT                        PatchLocationListSize;      // out: Patch location list size (elements).
    D3DGPU_VIRTUAL_ADDRESS      CommandBuffer;              // out: GPU virtual address of the command buffer. _ADVSCH_
} D3DKMT_CREATECONTEXT;

typedef struct _D3DKMT_DESTROYCONTEXT
{
    D3DKMT_HANDLE               hContext;                   // in:  Identifies the context being destroyed.
} D3DKMT_DESTROYCONTEXT;

typedef struct _D3DKMT_CREATESYNCHRONIZATIONOBJECT
{
    D3DKMT_HANDLE                           hDevice;        // in:  Handle to the device.
    D3DDDI_SYNCHRONIZATIONOBJECTINFO        Info;           // in:  Attributes of the synchronization object.
    D3DKMT_HANDLE                           hSyncObject;    // out: Handle to the synchronization object created.
} D3DKMT_CREATESYNCHRONIZATIONOBJECT;

typedef struct _D3DKMT_CREATESYNCHRONIZATIONOBJECT2
{
    D3DKMT_HANDLE                           hDevice;        // in:  Handle to the device.
    D3DDDI_SYNCHRONIZATIONOBJECTINFO2       Info;           // in:  Attributes of the synchronization object.
    D3DKMT_HANDLE                           hSyncObject;    // out: Handle to the synchronization object created.
} D3DKMT_CREATESYNCHRONIZATIONOBJECT2;

typedef struct _D3DKMT_DESTROYSYNCHRONIZATIONOBJECT
{
    D3DKMT_HANDLE               hSyncObject;                // in:  Identifies the synchronization objects being destroyed.
} D3DKMT_DESTROYSYNCHRONIZATIONOBJECT;

typedef struct _D3DKMT_OPENSYNCHRONIZATIONOBJECT
{
    D3DKMT_HANDLE               hSharedHandle;              // in: shared handle to synchronization object to be opened.
    D3DKMT_HANDLE               hSyncObject;                // out: Handle to sync object in this process.
    UINT64                      Reserved[8];
} D3DKMT_OPENSYNCHRONIZATIONOBJECT;

typedef struct _D3DKMT_WAITFORSYNCHRONIZATIONOBJECT
{
    D3DKMT_HANDLE             hContext;                   // in: Identifies the context that needs to wait.
    UINT                      ObjectCount;                // in: Specifies the number of object to wait on.
    D3DKMT_HANDLE             ObjectHandleArray[D3DDDI_MAX_OBJECT_WAITED_ON]; // in: Specifies the object to wait on.
} D3DKMT_WAITFORSYNCHRONIZATIONOBJECT;

typedef struct _D3DKMT_WAITFORSYNCHRONIZATIONOBJECT2
{
    D3DKMT_HANDLE             hContext;                   // in: Identifies the context that needs to wait.
    UINT                      ObjectCount;                // in: Specifies the number of object to wait on.
    D3DKMT_HANDLE             ObjectHandleArray[D3DDDI_MAX_OBJECT_WAITED_ON]; // in: Specifies the object to wait on.
    union
    {
        struct {
            UINT64            FenceValue; // in: fence value to be waited.
        } Fence;
        UINT64                Reserved[8];
    };
} D3DKMT_WAITFORSYNCHRONIZATIONOBJECT2;

typedef struct _D3DKMT_SIGNALSYNCHRONIZATIONOBJECT
{
    D3DKMT_HANDLE             hContext;           // in: Identifies the context that needs to signal.
    UINT                      ObjectCount;        // in: Specifies the number of object to signal.
    D3DKMT_HANDLE             ObjectHandleArray[D3DDDI_MAX_OBJECT_SIGNALED]; // in: Specifies the object to be signaled.
    D3DDDICB_SIGNALFLAGS      Flags;                                         // in: Specifies signal behavior.
} D3DKMT_SIGNALSYNCHRONIZATIONOBJECT;

typedef struct _D3DKMT_SIGNALSYNCHRONIZATIONOBJECT2
{
    D3DKMT_HANDLE             hContext;           // in: Identifies the context that needs to signal.
    UINT                      ObjectCount;        // in: Specifies the number of object to signal.
    D3DKMT_HANDLE             ObjectHandleArray[D3DDDI_MAX_OBJECT_SIGNALED]; // in: Specifies the object to be signaled.
    D3DDDICB_SIGNALFLAGS      Flags;                  // in: Specifies signal behavior.
    ULONG                     BroadcastContextCount;  // in: Specifies the number of context
                                                      //     to broadcast this command buffer to.
    D3DKMT_HANDLE             BroadcastContext[D3DDDI_MAX_BROADCAST_CONTEXT]; // in: Specifies the handle of the context to
                                                                              //     broadcast to.
    union
    {
        struct {
            UINT64            FenceValue;             // in: fence value to be signaled;
        } Fence;
        UINT64                Reserved[8];
    };
} D3DKMT_SIGNALSYNCHRONIZATIONOBJECT2;

typedef struct _D3DKMT_LOCK
{
    D3DKMT_HANDLE       hDevice;            // in: identifies the device
    D3DKMT_HANDLE       hAllocation;        // in: allocation to lock
                                            // out: New handle representing the allocation after the lock.
    UINT                PrivateDriverData;  // in: Used by UMD for AcquireAperture
    UINT                NumPages;
    CONST UINT*         pPages;
    VOID*               pData;              // out: pointer to memory
    D3DDDICB_LOCKFLAGS  Flags;              // in: Bit field defined by D3DDDI_LOCKFLAGS
    D3DGPU_VIRTUAL_ADDRESS GpuVirtualAddress; // out: GPU's Virtual Address of locked allocation. _ADVSCH_
} D3DKMT_LOCK;

typedef struct _D3DKMT_UNLOCK
{
    D3DKMT_HANDLE           hDevice;        // in: Identifies the device
    UINT                    NumAllocations; // in: Number of allocations in the array
    CONST D3DKMT_HANDLE*    phAllocations;  // in: array of allocations to unlock
} D3DKMT_UNLOCK;

typedef enum _D3DKMDT_MODE_PRUNING_REASON
{
    D3DKMDT_MPR_UNINITIALIZED                               = 0, // mode was pruned or is supported because of:
    D3DKMDT_MPR_ALLCAPS                                     = 1, //   all of the monitor caps (only used to imply lack of support - for support, specific reason is always indicated)
    D3DKMDT_MPR_DESCRIPTOR_MONITOR_SOURCE_MODE              = 2, //   monitor source mode in the monitor descriptor
    D3DKMDT_MPR_DESCRIPTOR_MONITOR_FREQUENCY_RANGE          = 3, //   monitor frequency range in the monitor descriptor
    D3DKMDT_MPR_DESCRIPTOR_OVERRIDE_MONITOR_SOURCE_MODE     = 4, //   monitor source mode in the monitor descriptor override
    D3DKMDT_MPR_DESCRIPTOR_OVERRIDE_MONITOR_FREQUENCY_RANGE = 5, //   monitor frequency range in the monitor descriptor override
    D3DKMDT_MPR_DEFAULT_PROFILE_MONITOR_SOURCE_MODE         = 6, //   monitor source mode in the default monitor profile
    D3DKMDT_MPR_DRIVER_RECOMMENDED_MONITOR_SOURCE_MODE      = 7, //   monitor source mode recommended by the driver
    D3DKMDT_MPR_MONITOR_FREQUENCY_RANGE_OVERRIDE            = 8, //   monitor frequency range override
    D3DKMDT_MPR_CLONE_PATH_PRUNED                           = 9, //   Mode is pruned because other path(s) in clone cluster has(have) no mode supported by monitor
    D3DKMDT_MPR_MAXVALID                                    = 10
}
D3DKMDT_MODE_PRUNING_REASON;

// This structure takes 8 bytes, because BOOLEAN is "unsigned char" and
// ModePruningReason is integer, which is aligned on "integer" boundary.
// Size of "int" and "enum" is 4 bytes on x64 and x86 platforms.
// "Reserved" field should be set taking alignment into account.
//
typedef struct _D3DKMDT_DISPLAYMODE_FLAGS
{
    BOOLEAN                      ValidatedAgainstMonitorCaps  : 1;
    BOOLEAN                      RoundedFakeMode              : 1;
    D3DKMDT_MODE_PRUNING_REASON  ModePruningReason            : 4;
    UINT                         Reserved                     : 28;
}
D3DKMDT_DISPLAYMODE_FLAGS;

typedef struct _D3DKMT_DISPLAYMODE
{
    UINT                                   Width;
    UINT                                   Height;
    D3DDDIFORMAT                           Format;
    UINT                                   IntegerRefreshRate;
    D3DDDI_RATIONAL                        RefreshRate;
    D3DDDI_VIDEO_SIGNAL_SCANLINE_ORDERING  ScanLineOrdering;
    D3DDDI_ROTATION                        DisplayOrientation;
    UINT                                   DisplayFixedOutput;
    D3DKMDT_DISPLAYMODE_FLAGS              Flags;
} D3DKMT_DISPLAYMODE;

typedef struct _D3DKMT_GETDISPLAYMODELIST
{
    D3DKMT_HANDLE                   hAdapter;       // in: adapter handle
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;  // in: adapter's VidPN source ID
    D3DKMT_DISPLAYMODE*             pModeList;      // out:
    UINT                            ModeCount;      // in/out:
} D3DKMT_GETDISPLAYMODELIST;

typedef struct _D3DKMT_SETDISPLAYMODE_FLAGS
{
    BOOLEAN  PreserveVidPn   : 1;
    UINT     Reserved       : 31;
}
D3DKMT_SETDISPLAYMODE_FLAGS;

typedef struct _D3DKMT_SETDISPLAYMODE
{
    D3DKMT_HANDLE                          hDevice;                         // in: Identifies the device
    D3DKMT_HANDLE                          hPrimaryAllocation;              // in:
    D3DDDI_VIDEO_SIGNAL_SCANLINE_ORDERING  ScanLineOrdering;                // in:
    D3DDDI_ROTATION                        DisplayOrientation;              // in:
    UINT                                   PrivateDriverFormatAttribute;    // out: Private Format Attribute of the current primary surface if DxgkSetDisplayMode failed with STATUS_GRAPHICS_INCOMPATIBLE_PRIVATE_FORMAT
    D3DKMT_SETDISPLAYMODE_FLAGS            Flags;                           // in:
} D3DKMT_SETDISPLAYMODE;


typedef struct _D3DKMT_MULTISAMPLEMETHOD
{
    UINT    NumSamples;
    UINT    NumQualityLevels;
    UINT    Reserved;   //workaround for NTRAID#Longhorn-1124385-2005/03/14-kanqiu
} D3DKMT_MULTISAMPLEMETHOD;

typedef struct _D3DKMT_GETMULTISAMPLEMETHODLIST
{
    D3DKMT_HANDLE                   hAdapter;       // in: adapter handle
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;  // in: adapter's VidPN source ID
    UINT                            Width;          // in:
    UINT                            Height;         // in:
    D3DDDIFORMAT                    Format;         // in:
    D3DKMT_MULTISAMPLEMETHOD*       pMethodList;    // out:
    UINT                            MethodCount;    // in/out:
} D3DKMT_GETMULTISAMPLEMETHODLIST;

typedef struct _D3DKMT_PRESENTFLAGS
{
    union
    {
        struct
        {
            UINT    Blt                 : 1;        // 0x00000001
            UINT    ColorFill           : 1;        // 0x00000002
            UINT    Flip                : 1;        // 0x00000004
            UINT    FlipDoNotFlip       : 1;        // 0x00000008
            UINT    FlipDoNotWait       : 1;        // 0x00000010
            UINT    FlipRestart         : 1;        // 0x00000020
            UINT    DstRectValid        : 1;        // 0x00000040
            UINT    SrcRectValid        : 1;        // 0x00000080
            UINT    RestrictVidPnSource : 1;        // 0x00000100
            UINT    SrcColorKey         : 1;        // 0x00000200
            UINT    DstColorKey         : 1;        // 0x00000400
            UINT    LinearToSrgb        : 1;        // 0x00000800
            UINT    PresentCountValid   : 1;        // 0x00001000
            UINT    Rotate              : 1;        // 0x00002000
            UINT    PresentToBitmap     : 1;        // 0x00004000
            UINT    RedirectedFlip      : 1;        // 0x00008000
            UINT    RedirectedBlt       : 1;        // 0x00010000
            UINT    Reserved            :15;        // 0xFFFE0000
        };
        UINT    Value;
    };
} D3DKMT_PRESENTFLAGS;

typedef enum _D3DKMT_PRESENT_MODEL
{
    D3DKMT_PM_UNINITIALIZED       = 0,
    D3DKMT_PM_REDIRECTED_GDI       = 1,
    D3DKMT_PM_REDIRECTED_FLIP      = 2,
    D3DKMT_PM_REDIRECTED_BLT       = 3,
    D3DKMT_PM_REDIRECTED_VISTABLT  = 4,
    D3DKMT_PM_SCREENCAPTUREFENCE   = 5,
    D3DKMT_PM_REDIRECTED_GDI_SYSMEM  = 6,
} D3DKMT_PRESENT_MODEL;

typedef struct _D3DKMT_FLIPMODEL_PRESENTHISTORYTOKENFLAGS
{
    union
    {
        struct
        {
            UINT  Video             :  1;   // 0x00000001
            UINT  RestrictedContent :  1;   // 0x00000002
            UINT  ClipToView        :  1;   // 0x00000004
            UINT  Reserved          : 29;   // 0xFFFFFFF8
        };

        UINT  Value;
    };
} D3DKMT_FLIPMODEL_PRESENTHISTORYTOKENFLAGS;

#define D3DKMT_MAX_PRESENT_HISTORY_RECTS 16

typedef struct _D3DKMT_DIRTYREGIONS
{
    UINT  NumRects;
    RECT  Rects[D3DKMT_MAX_PRESENT_HISTORY_RECTS];
} D3DKMT_DIRTYREGIONS;

typedef struct _D3DKMT_GDIMODEL_PRESENTHISTORYTOKEN
{
    ULONG64              hLogicalSurface;
    ULONG64              hPhysicalSurface;
    D3DKMT_DIRTYREGIONS  DirtyRegions;
} D3DKMT_GDIMODEL_PRESENTHISTORYTOKEN;

typedef struct _D3DKMT_GDIMODEL_SYSMEM_PRESENTHISTORYTOKEN
{
    ULONG64 hlsurf;
    DWORD dwDirtyFlags;
    UINT64 uiCookie;
} D3DKMT_GDIMODEL_SYSMEM_PRESENTHISTORYTOKEN;

typedef ULONGLONG  D3DKMT_VISTABLTMODEL_PRESENTHISTORYTOKEN;

typedef struct _D3DKMT_FENCE_PRESENTHISTORYTOKEN
{
    UINT64 Key;
} D3DKMT_FENCE_PRESENTHISTORYTOKEN;

typedef struct _D3DKMT_BLTMODEL_PRESENTHISTORYTOKEN
{
    ULONG64                             hLogicalSurface;
    ULONG64                             hPhysicalSurface;
    ULONG64                             EventId;
    D3DKMT_DIRTYREGIONS                 DirtyRegions;
} D3DKMT_BLTMODEL_PRESENTHISTORYTOKEN;

typedef struct _D3DKMT_FLIPMODEL_PRESENTHISTORYTOKEN
{
    UINT64                                     FenceValue;
    ULONG64                                    hLogicalSurface;
    UINT                                       SwapChainIndex;
    UINT64                                     PresentLimitSemaphoreId;
    D3DDDI_FLIPINTERVAL_TYPE                   FlipInterval;
    D3DKMT_FLIPMODEL_PRESENTHISTORYTOKENFLAGS  Flags;
    D3DKMT_DIRTYREGIONS                        DirtyRegions;
} D3DKMT_FLIPMODEL_PRESENTHISTORYTOKEN;

// User mode timeout is in milliseconds, kernel mode timeout is in 100 nanoseconds
#define FLIPEX_TIMEOUT_USER     (2000)
#define FLIPEX_TIMEOUT_KERNEL   (FLIPEX_TIMEOUT_USER*10000)

typedef struct _D3DKMT_PRESENTHISTORYTOKEN
{
    D3DKMT_PRESENT_MODEL  Model;
    // The size of the present history token in bytes including Model.
    // Should be set to zero by when submitting a token.
    // It will be initialized when reading present history and can be used to
    // go to the next token in the present history buffer.
    UINT                  TokenSize;

    union
    {
        D3DKMT_FLIPMODEL_PRESENTHISTORYTOKEN        Flip;
        D3DKMT_BLTMODEL_PRESENTHISTORYTOKEN         Blt;
        D3DKMT_VISTABLTMODEL_PRESENTHISTORYTOKEN    VistaBlt;
        D3DKMT_GDIMODEL_PRESENTHISTORYTOKEN         Gdi;
        D3DKMT_FENCE_PRESENTHISTORYTOKEN            Fence;
        D3DKMT_GDIMODEL_SYSMEM_PRESENTHISTORYTOKEN  GdiSysMem;
    }
    Token;
} D3DKMT_PRESENTHISTORYTOKEN;

typedef struct _D3DKMT_PRESENT
{
    union
    {
        D3DKMT_HANDLE               hDevice;            // in: D3D10 compatibility.
        D3DKMT_HANDLE               hContext;           // in: Indentifies the context
    };
    HWND                            hWindow;            // in: window to present to
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;      // in: VidPn source ID if RestrictVidPnSource is flagged
    D3DKMT_HANDLE                   hSource;            // in: Source allocation to present from
    D3DKMT_HANDLE                   hDestination;       // in: Destination allocation whenever non-zero
    UINT                            Color;              // in: color value in ARGB 32 bit format
    RECT                            DstRect;            // in: unclipped dest rect
    RECT                            SrcRect;            // in: unclipped src rect
    UINT                            SubRectCnt;         // in: count of sub rects
    CONST RECT*                     pSrcSubRects;       // in: sub rects in source space
    UINT                            PresentCount;       // in: present counter
    D3DDDI_FLIPINTERVAL_TYPE        FlipInterval;       // in: flip interval
    D3DKMT_PRESENTFLAGS             Flags;              // in:
    ULONG                           BroadcastContextCount;                          // in: Specifies the number of context
                                                                                    //     to broadcast this command buffer to.
    D3DKMT_HANDLE                   BroadcastContext[D3DDDI_MAX_BROADCAST_CONTEXT]; // in: Specifies the handle of the context to
                                                                                    //     broadcast to.
    HANDLE                          PresentLimitSemaphore;
    D3DKMT_PRESENTHISTORYTOKEN      PresentHistoryToken;
} D3DKMT_PRESENT;

typedef struct _D3DKMT_RENDERFLAGS
{
    UINT    ResizeCommandBuffer     :  1;  // 0x00000001
    UINT    ResizeAllocationList    :  1;  // 0x00000002
    UINT    ResizePatchLocationList :  1;  // 0x00000004
    UINT    NullRendering           :  1;  // 0x00000008
    UINT    PresentRedirected       :  1;  // 0x00000010
    UINT    RenderKm                :  1;  // 0x00000020    Cannot be used with DxgkRender
    UINT    Reserved                : 26;  // 0xFFFFFFC0
} D3DKMT_RENDERFLAGS;

typedef struct _D3DKMT_RENDER
{
    union
    {
        D3DKMT_HANDLE               hDevice;                    // in: D3D10 compatibility.
        D3DKMT_HANDLE               hContext;                   // in: Indentifies the context
    };
    UINT                            CommandOffset;              // in: offset in bytes from start
    UINT                            CommandLength;              // in: number of bytes
    UINT                            AllocationCount;            // in: Number of allocations in allocation list.
    UINT                            PatchLocationCount;         // in: Number of patch locations in patch allocation list.
    VOID*                           pNewCommandBuffer;          // out: Pointer to the next command buffer to use.
                                                                // in: When RenderKm flag is set, it points to a command buffer.
    UINT                            NewCommandBufferSize;       // in: Size requested for the next command buffer.
                                                                // out: Size of the next command buffer to use.
    D3DDDI_ALLOCATIONLIST*          pNewAllocationList;         // out: Pointer to the next allocation list to use.
                                                                // in: When RenderKm flag is set, it points to an allocation list.
    UINT                            NewAllocationListSize;      // in: Size requested for the next allocation list.
                                                                // out: Size of the new allocation list.
    D3DDDI_PATCHLOCATIONLIST*       pNewPatchLocationList;      // out: Pointer to the next patch location list.
    UINT                            NewPatchLocationListSize;   // in: Size requested for the next patch location list.
                                                                // out: Size of the new patch location list.
    D3DKMT_RENDERFLAGS              Flags;                      // in:
    ULONGLONG                       PresentHistoryToken;        // in: Present history token for redirected present calls
    ULONG                           BroadcastContextCount;                          // in: Specifies the number of context
                                                                                    //     to broadcast this command buffer to.
    D3DKMT_HANDLE                   BroadcastContext[D3DDDI_MAX_BROADCAST_CONTEXT]; // in: Specifies the handle of the context to
                                                                                    //     broadcast to.
    ULONG                           QueuedBufferCount;          // out: Number of DMA buffer queued to this context after this submission.
    D3DGPU_VIRTUAL_ADDRESS          NewCommandBuffer;           // out: GPU virtual address of next command buffer to use. _ADVSCH_
    VOID*                           pPrivateDriverData;         // in: pointer to private driver data. _ADVSCH_
    UINT                            PrivateDriverDataSize;      // in: size of private driver data. _ADVSCH_
} D3DKMT_RENDER;

typedef struct _D3DKMT_CREATEALLOCATIONFLAGS
{
    UINT    CreateResource              :  1;    // 0x00000001
    UINT    CreateShared                :  1;    // 0x00000002
    UINT    NonSecure                   :  1;    // 0x00000004
    UINT    CreateProtected             :  1;    // 0x00000008 Cannot be used when allocation is created from the user mode.
    UINT    RestrictSharedAccess        :  1;    // 0x00000010
    UINT    ExistingSysMem              :  1;    // 0x00000020 Cannot be used when allocation is created from the user mode.
    UINT    Reserved                    : 26;    // 0xFFFFFFC0
} D3DKMT_CREATEALLOCATIONFLAGS;

typedef struct _D3DKMT_CREATEALLOCATION
{
                                            D3DKMT_HANDLE                   hDevice;
                                            D3DKMT_HANDLE                   hResource;      //in/out:valid only within device
                                            D3DKMT_HANDLE                   hGlobalShare;   //out:Shared handle if CreateShared
    __field_bcount(PrivateRuntimeDataSize)  CONST VOID*                     pPrivateRuntimeData;
                                            UINT                            PrivateRuntimeDataSize;
    __field_bcount(PrivateDriverDataSize)   CONST VOID*                     pPrivateDriverData;
                                            UINT                            PrivateDriverDataSize;
                                            UINT                            NumAllocations;
   union {
       __field_ecount(NumAllocations)       D3DDDI_ALLOCATIONINFO*          pAllocationInfo;
#if ((DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN7) || \
     (D3D_UMD_INTERFACE_VERSION >= D3D_UMD_INTERFACE_VERSION_WIN7))
       __field_ecount(NumAllocations)       D3DDDI_ALLOCATIONINFO2*         pAllocationInfo2; // _ADVSCH_
#endif
   };
                                            D3DKMT_CREATEALLOCATIONFLAGS    Flags;
                                            HANDLE                          hPrivateRuntimeResourceHandle; // opaque handle used for event tracing
} D3DKMT_CREATEALLOCATION;

typedef struct _D3DKMT_OPENRESOURCE
{
                                                        D3DKMT_HANDLE               hDevice;                            // in : Indentifies the device
                                                        D3DKMT_HANDLE               hGlobalShare;                       // in : Shared resource handle
                                                        UINT                        NumAllocations;                     // in : Number of allocations associated with the resource
   union {
    __field_ecount(NumAllocations)                      D3DDDI_OPENALLOCATIONINFO*  pOpenAllocationInfo;                // in : Array of open allocation structs
#if ((DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN7) || \
     (D3D_UMD_INTERFACE_VERSION >= D3D_UMD_INTERFACE_VERSION_WIN7))
    __field_ecount(NumAllocations)                      D3DDDI_OPENALLOCATIONINFO2* pOpenAllocationInfo2;                // in : Array of open allocation structs // _ADVSCH_
#endif
   };
    __field_bcount(PrivateRuntimeDataSize)              VOID*                       pPrivateRuntimeData;                // in : Caller supplied buffer where the runtime private data associated with this resource will be copied
                                                        UINT                        PrivateRuntimeDataSize;             // in : Size in bytes of the pPrivateRuntimeData buffer
    __field_bcount(ResourcePrivateDriverDataSize)       VOID*                       pResourcePrivateDriverData;         // in : Caller supplied buffer where the driver private data associated with the resource will be copied
                                                        UINT                        ResourcePrivateDriverDataSize;      // in : Size in bytes of the pResourcePrivateDriverData buffer
    __field_bcount(TotalPrivateDriverDataBufferSize)    VOID*                       pTotalPrivateDriverDataBuffer;      // in : Caller supplied buffer where the Driver private data will be stored
                                                        UINT                        TotalPrivateDriverDataBufferSize;   // in/out : Size in bytes of pTotalPrivateDriverDataBuffer / Size in bytes of data written to pTotalPrivateDriverDataBuffer
                                                        D3DKMT_HANDLE               hResource;                          // out : Handle for this resource in this process
}D3DKMT_OPENRESOURCE;

typedef struct _D3DKMT_QUERYRESOURCEINFO
{
    D3DKMT_HANDLE   hDevice;                        // in : Indentifies the device
    D3DKMT_HANDLE   hGlobalShare;                   // in : Global resource handle to open
    VOID*           pPrivateRuntimeData;            // in : Ptr to buffer that will receive runtime private data for the resource
    UINT            PrivateRuntimeDataSize;         // in/out : Size in bytes of buffer passed in for runtime private data / If pPrivateRuntimeData was NULL then size in bytes of buffer required for the runtime private data otherwise size in bytes of runtime private data copied into the buffer
    UINT            TotalPrivateDriverDataSize;     // out : Size in bytes of buffer required to hold all the DriverPrivate data for all of the allocations associated withe the resource
    UINT            ResourcePrivateDriverDataSize;  // out : Size in bytes of the driver's resource private data
    UINT            NumAllocations;                 // out : Number of allocations associated with this resource
}D3DKMT_QUERYRESOURCEINFO;

typedef struct _D3DKMT_DESTROYALLOCATION
{
    D3DKMT_HANDLE           hDevice;            // in: Indentifies the device
    D3DKMT_HANDLE           hResource;
    CONST D3DKMT_HANDLE*    phAllocationList;   // in: pointer to an array allocation handles to destroy
    UINT                    AllocationCount;    // in: Number of allocations in phAllocationList
} D3DKMT_DESTROYALLOCATION;

typedef struct _D3DKMT_SETALLOCATIONPRIORITY
{
    D3DKMT_HANDLE           hDevice;            // in: Indentifies the device
    D3DKMT_HANDLE           hResource;          // in: Specify the resource to set priority to.
    CONST D3DKMT_HANDLE*    phAllocationList;   // in: pointer to an array allocation to set priority to.
    UINT                    AllocationCount;    // in: Number of allocations in phAllocationList
    CONST UINT*             pPriorities;        // in: New priority for each of the allocation in the array.
} D3DKMT_SETALLOCATIONPRIORITY;

typedef enum _D3DKMT_ALLOCATIONRESIDENCYSTATUS
{
    D3DKMT_ALLOCATIONRESIDENCYSTATUS_RESIDENTINGPUMEMORY=1,
    D3DKMT_ALLOCATIONRESIDENCYSTATUS_RESIDENTINSHAREDMEMORY=2,
    D3DKMT_ALLOCATIONRESIDENCYSTATUS_NOTRESIDENT=3,
} D3DKMT_ALLOCATIONRESIDENCYSTATUS;

typedef struct _D3DKMT_QUERYALLOCATIONRESIDENCY
{
    D3DKMT_HANDLE                       hDevice;            // in: Indentifies the device
    D3DKMT_HANDLE                       hResource;          // in: pointer to resource owning the list of allocation.
    CONST D3DKMT_HANDLE*                phAllocationList;   // in: pointer to an array allocation to get residency status.
    UINT                                AllocationCount;    // in: Number of allocations in phAllocationList
    D3DKMT_ALLOCATIONRESIDENCYSTATUS*   pResidencyStatus;   // out: Residency status of each allocation in the array.
} D3DKMT_QUERYALLOCATIONRESIDENCY;

typedef struct _D3DKMT_GETRUNTIMEDATA
{
    D3DKMT_HANDLE       hAdapter;
    D3DKMT_HANDLE       hGlobalShare;       // in: shared handle
    VOID*               pRuntimeData;       // out: in: for a version?
    UINT                RuntimeDataSize;    // in:
} D3DKMT_GETRUNTIMEDATA;

typedef enum _KMTUMDVERSION
{
    KMTUMDVERSION_DX9 = 0,
    KMTUMDVERSION_DX10,
    KMTUMDVERSION_DX11,
} KMTUMDVERSION;

typedef struct _D3DKMT_UMDFILENAMEINFO
{
    KMTUMDVERSION       Version;                // In: UMD version
    WCHAR               UmdFileName[MAX_PATH];  // Out: UMD file name
} D3DKMT_UMDFILENAMEINFO;

typedef struct _D3DKMT_OPENGLINFO
{
    WCHAR               UmdOpenGlIcdFileName[MAX_PATH];
    ULONG               Version;
    ULONG               Flags;
} D3DKMT_OPENGLINFO;

typedef struct _D3DKMT_SEGMENTSIZEINFO
{
    ULONGLONG           DedicatedVideoMemorySize;
    ULONGLONG           DedicatedSystemMemorySize;
    ULONGLONG           SharedSystemMemorySize;
} D3DKMT_SEGMENTSIZEINFO;

typedef struct _D3DKMT_WORKINGSETFLAGS
{
    UINT    UseDefault   :  1;   // 0x00000001
    UINT    Reserved     : 31;   // 0xFFFFFFFE
} D3DKMT_WORKINGSETFLAGS;

typedef struct _D3DKMT_WORKINGSETINFO
{
    D3DKMT_WORKINGSETFLAGS Flags;
    ULONG MinimumWorkingSetPercentile;
    ULONG MaximumWorkingSetPercentile;
} D3DKMT_WORKINGSETINFO;

typedef struct _D3DKMT_FLIPINFOFLAGS
{
    UINT                FlipInterval :  1; // 0x00000001 // Set when kmd driver support FlipInterval natively
    UINT                Reserved     : 31; // 0xFFFFFFFE
} D3DKMT_FLIPINFOFLAGS;

typedef struct _D3DKMT_FLIPQUEUEINFO
{
    UINT                 MaxHardwareFlipQueueLength; // Max flip can be queued for hardware flip queue.
    UINT                 MaxSoftwareFlipQueueLength; // Max flip can be queued for software flip queue for non-legacy device.
    D3DKMT_FLIPINFOFLAGS FlipFlags;
} D3DKMT_FLIPQUEUEINFO;

typedef struct _D3DKMT_ADAPTERADDRESS
{
    UINT   BusNumber;              // Bus number on which the physical device is located.
    UINT   DeviceNumber;           // Index of the physical device on the bus.
    UINT   FunctionNumber;         // Function number of the adapter on the physical device.
} D3DKMT_ADAPTERADDRESS;

typedef struct _D3DKMT_ADAPTERREGISTRYINFO
{
    WCHAR   AdapterString[MAX_PATH];
    WCHAR   BiosString[MAX_PATH];
    WCHAR   DacType[MAX_PATH];
    WCHAR   ChipType[MAX_PATH];
} D3DKMT_ADAPTERREGISTRYINFO;

typedef struct _D3DKMT_CURRENTDISPLAYMODE
{
    D3DDDI_VIDEO_PRESENT_SOURCE_ID VidPnSourceId;
    D3DKMT_DISPLAYMODE DisplayMode;
} D3DKMT_CURRENTDISPLAYMODE;

typedef struct _D3DKMT_VIRTUALADDRESSFLAGS // _ADVSCH_
{
    UINT   VirtualAddressSupported :  1;
    UINT   Reserved                : 31;
} D3DKMT_VIRTUALADDRESSFLAGS;

typedef struct _D3DKMT_VIRTUALADDRESSINFO // _ADVSCH_
{
    D3DKMT_VIRTUALADDRESSFLAGS VirtualAddressFlags;
} D3DKMT_VIRTUALADDRESSINFO;

typedef enum _QAI_DRIVERVERSION
{
    KMT_DRIVERVERSION_WDDM_1_0               = 1000,
    KMT_DRIVERVERSION_WDDM_1_1_PRERELEASE    = 1102,
    KMT_DRIVERVERSION_WDDM_1_1               = 1105,
} D3DKMT_DRIVERVERSION;

typedef enum _KMTQUERYADAPTERINFOTYPE
{
     KMTQAITYPE_UMDRIVERPRIVATE         =  0,
     KMTQAITYPE_UMDRIVERNAME            =  1,
     KMTQAITYPE_UMOPENGLINFO            =  2,
     KMTQAITYPE_GETSEGMENTSIZE          =  3,
     KMTQAITYPE_ADAPTERGUID             =  4,
     KMTQAITYPE_FLIPQUEUEINFO           =  5,
     KMTQAITYPE_ADAPTERADDRESS          =  6,
     KMTQAITYPE_SETWORKINGSETINFO       =  7,
     KMTQAITYPE_ADAPTERREGISTRYINFO     =  8,
     KMTQAITYPE_CURRENTDISPLAYMODE      =  9,
     KMTQAITYPE_MODELIST                = 10,
     KMTQAITYPE_CHECKDRIVERUPDATESTATUS = 11,
     KMTQAITYPE_VIRTUALADDRESSINFO      = 12, // _ADVSCH_
     KMTQAITYPE_DRIVERVERSION           = 13,
} KMTQUERYADAPTERINFOTYPE;

typedef struct _D3DKMT_QUERYADAPTERINFO
{
    D3DKMT_HANDLE           hAdapter;
    KMTQUERYADAPTERINFOTYPE Type;
    VOID*                   pPrivateDriverData;
    UINT                    PrivateDriverDataSize;
} D3DKMT_QUERYADAPTERINFO;

typedef struct _D3DKMT_OPENADAPTERFROMHDC
{
    HDC                             hDc;            // in:  DC that maps to a single display
    D3DKMT_HANDLE                   hAdapter;       // out: adapter handle
    LUID                            AdapterLuid;    // out: adapter LUID
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;  // out: VidPN source ID for that particular display
} D3DKMT_OPENADAPTERFROMHDC;

typedef struct _D3DKMT_OPENADAPTERFROMGDIDISPLAYNAME
{
    WCHAR                           DeviceName[32]; // in:  Name of GDI device from which to open an adapter instance
    D3DKMT_HANDLE                   hAdapter;       // out: adapter handle
    LUID                            AdapterLuid;    // out: adapter LUID
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;  // out: VidPN source ID for that particular display
} D3DKMT_OPENADAPTERFROMGDIDISPLAYNAME;

typedef struct _D3DKMT_OPENADAPTERFROMDEVICENAME
{
    PCWSTR                          pDeviceName;    // in:  NULL terminated string containing the device name to open
    D3DKMT_HANDLE                   hAdapter;       // out: adapter handle
    LUID                            AdapterLuid;    // out: adapter LUID
} D3DKMT_OPENADAPTERFROMDEVICENAME;

typedef struct _D3DKMT_CLOSEADAPTER
{
    D3DKMT_HANDLE   hAdapter;   // in: adapter handle
} D3DKMT_CLOSEADAPTER;

typedef struct _D3DKMT_GETSHAREDPRIMARYHANDLE
{
    D3DKMT_HANDLE                   hAdapter;       // in: adapter handle
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;  // in: adapter's VidPN source ID
    D3DKMT_HANDLE                   hSharedPrimary; // out: global shared primary handle (if one exists currently)
} D3DKMT_GETSHAREDPRIMARYHANDLE;

typedef struct _D3DKMT_SHAREDPRIMARYLOCKNOTIFICATION
{
    LUID                            AdapterLuid;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
    RECTL                           LockRect;               // in: If zero rect then we are locking the whole primary else the lock sub-rect
} D3DKMT_SHAREDPRIMARYLOCKNOTIFICATION;

typedef struct _D3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION
{
    LUID                            AdapterLuid;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
} D3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION;

typedef enum _D3DKMT_ESCAPETYPE
{
    D3DKMT_ESCAPE_DRIVERPRIVATE           = 0,
    D3DKMT_ESCAPE_VIDMM                   = 1,
    D3DKMT_ESCAPE_TDRDBGCTRL              = 2,
    D3DKMT_ESCAPE_VIDSCH                  = 3,
    D3DKMT_ESCAPE_DEVICE                  = 4,
    D3DKMT_ESCAPE_DMM                     = 5,
    D3DKMT_ESCAPE_DEBUG_SNAPSHOT          = 6,
    D3DKMT_ESCAPE_SETDRIVERUPDATESTATUS   = 7,
    D3DKMT_ESCAPE_DRT_TEST                = 8,
    D3DKMT_ESCAPE_DIAGNOSTICS             = 9
} D3DKMT_ESCAPETYPE;

typedef enum _D3DKMT_TDRDBGCTRLTYPE
{
    D3DKMT_TDRDBGCTRLTYPE_FORCETDR      = 0, //Simulate a TDR
    D3DKMT_TDRDBGCTRLTYPE_DISABLEBREAK  = 1, //Disable DebugBreak on timeout
    D3DKMT_TDRDBGCTRLTYPE_ENABLEBREAK   = 2, //Enable DebugBreak on timeout
    D3DKMT_TDRDBGCTRLTYPE_UNCONDITIONAL = 3, //Disables all safety conditions (e.g. check for consecutive recoveries)
    D3DKMT_TDRDBGCTRLTYPE_VSYNCTDR      = 4, //Simulate a Vsync TDR
    D3DKMT_TDRDBGCTRLTYPE_GPUTDR        = 5, //Simulate a GPU TDR
} D3DKMT_TDRDBGCTRLTYPE;

typedef enum _D3DKMT_VIDMMESCAPETYPE
{
    D3DKMT_VIDMMESCAPETYPE_SETFAULT                     = 0,
    D3DKMT_VIDMMESCAPETYPE_RUN_COHERENCY_TEST           = 1,
    D3DKMT_VIDMMESCAPETYPE_RUN_UNMAP_TO_DUMMY_PAGE_TEST = 2,
    D3DKMT_VIDMMESCAPETYPE_APERTURE_CORRUPTION_CHECK    = 3,
    D3DKMT_VIDMMESCAPETYPE_SUSPEND_CPU_ACCESS_TEST      = 4
} D3DKMT_VIDMMESCAPETYPE;

typedef enum _D3DKMT_VIDSCHESCAPETYPE
{
    D3DKMT_VIDSCHESCAPETYPE_PREEMPTIONCONTROL = 0, //Enable/Disable preemption
    D3DKMT_VIDSCHESCAPETYPE_SUSPENDSCHEDULER  = 1, //Suspend/Resume scheduler (obsolate)
    D3DKMT_VIDSCHESCAPETYPE_TDRCONTROL        = 2, //Tdr control
    D3DKMT_VIDSCHESCAPETYPE_SUSPENDRESUME     = 3, //Suspend/Resume scheduler
} D3DKMT_VIDSCHESCAPETYPE;

typedef enum _D3DKMT_DMMESCAPETYPE
{
    D3DKMT_DMMESCAPETYPE_UNINITIALIZED                       =  0,
    D3DKMT_DMMESCAPETYPE_GET_SUMMARY_INFO                    =  1,
    D3DKMT_DMMESCAPETYPE_GET_VIDEO_PRESENT_SOURCES_INFO      =  2,
    D3DKMT_DMMESCAPETYPE_GET_VIDEO_PRESENT_TARGETS_INFO      =  3,
    D3DKMT_DMMESCAPETYPE_GET_ACTIVEVIDPN_INFO                =  4,
    D3DKMT_DMMESCAPETYPE_GET_MONITORS_INFO                   =  5,
    D3DKMT_DMMESCAPETYPE_RECENTLY_COMMITTED_VIDPNS_INFO      =  6,
    D3DKMT_DMMESCAPETYPE_RECENT_MODECHANGE_REQUESTS_INFO     =  7,
    D3DKMT_DMMESCAPETYPE_RECENTLY_RECOMMENDED_VIDPNS_INFO    =  8,
    D3DKMT_DMMESCAPETYPE_RECENT_MONITOR_PRESENCE_EVENTS_INFO =  9,
    D3DKMT_DMMESCAPETYPE_ACTIVEVIDPN_SOURCEMODESET_INFO      = 10,
    D3DKMT_DMMESCAPETYPE_ACTIVEVIDPN_COFUNCPATHMODALITY_INFO = 11,
    D3DKMT_DMMESCAPETYPE_GET_LASTCLIENTCOMMITTEDVIDPN_INFO   = 12,
    D3DKMT_DMMESCAPETYPE_GET_VERSION_INFO                    = 13,
    D3DKMT_DMMESCAPETYPE_VIDPN_MGR_DIAGNOSTICS               = 14
} D3DKMT_DMMESCAPETYPE;

typedef struct _D3DKMT_VIDMM_ESCAPE
{
    D3DKMT_VIDMMESCAPETYPE Type;
    union
    {
        struct
        {
            union
            {
                struct
                {
                    ULONG ProbeAndLock : 1;
                    ULONG SplitPoint : 1;
                    ULONG HotAddMemory : 1;
                    ULONG SwizzlingAperture : 1;
                    ULONG PagingPathLockSubRange : 1;
                    ULONG PagingPathLockMinRange : 1;
                    ULONG ComplexLock : 1;
                    ULONG FailVARotation : 1;
                    ULONG NoWriteCombined : 1;
                    ULONG NoPrePatching : 1;
                    ULONG AlwaysRepatch : 1;
                    ULONG ExpectPreparationFailure : 1;
                    ULONG FailUserModeVAMapping : 1;
                    ULONG Reserved : 19;
                };
                ULONG Value;
            };
        } SetFault;
    };
} D3DKMT_VIDMM_ESCAPE;

typedef struct _D3DKMT_VIDSCH_ESCAPE
{
    D3DKMT_VIDSCHESCAPETYPE Type;
    union
    {
        BOOL PreemptionControl; // enable/disable preemption
        BOOL SuspendScheduler;  // suspend/resume scheduler (obsolate)
        ULONG TdrControl;       // control tdr
        ULONG SuspendTime;      // time period to suspend.
    };
} D3DKMT_VIDSCH_ESCAPE;

// Upper boundary on the DMM escape data size (in bytes).
enum
{
    D3DKMT_MAX_DMM_ESCAPE_DATASIZE = 100*1024
};

// NOTE: If (ProvidedBufferSize >= MinRequiredBufferSize), then MinRequiredBufferSize = size of the actual complete data set in the Data[] array.
typedef struct _D3DKMT_DMM_ESCAPE
{
    __in  D3DKMT_DMMESCAPETYPE  Type;
    __in  SIZE_T                ProvidedBufferSize;     // actual size of Data[] array, in bytes.
    __out SIZE_T                MinRequiredBufferSize;  // minimum required size of Data[] array to contain requested data.
    __out_bcount(ProvidedBufferSize) UCHAR  Data[1];
} D3DKMT_DMM_ESCAPE;

typedef enum _D3DKMT_DEVICEESCAPE_TYPE
{
    D3DKMT_DEVICEESCAPE_VIDPNFROMALLOCATION = 0,
} D3DKMT_DEVICEESCAPE_TYPE;

typedef struct _D3DKMT_DEVICE_ESCAPE
{
    D3DKMT_DEVICEESCAPE_TYPE Type;
    union
    {
        struct
        {
            D3DKMT_HANDLE                   hPrimaryAllocation; // in: Primary allocation handle
            D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;      // out: VidPnSoureId of primary allocation
        } VidPnFromAllocation;
    };
} D3DKMT_DEVICE_ESCAPE;

typedef struct _D3DKMT_DEBUG_SNAPSHOT_ESCAPE
{
    ULONG Length;   // out: Actual length of the snapshot written in Buffer
    BYTE Buffer[1]; // out: Buffer to place snapshot
} D3DKMT_DEBUG_SNAPSHOT_ESCAPE;

typedef struct _D3DKMT_ESCAPE
{
    D3DKMT_HANDLE       hAdapter;               // in: adapter handle
    D3DKMT_HANDLE       hDevice;                // in: device handle [Optional]
    D3DKMT_ESCAPETYPE   Type;                   // in: escape type.
    D3DDDI_ESCAPEFLAGS  Flags;                  // in: flags
    VOID*               pPrivateDriverData;     // in/out: escape data
    UINT                PrivateDriverDataSize;  // in: size of escape data
    D3DKMT_HANDLE       hContext;               // in: context handle [Optional]
} D3DKMT_ESCAPE;


typedef enum _D3DKMT_VIDPNSOURCEOWNER_TYPE
{
     D3DKMT_VIDPNSOURCEOWNER_UNOWNED        = 0,    //Has no owner or GDI is the owner
     D3DKMT_VIDPNSOURCEOWNER_SHARED         = 1,    //Has shared owner, that is owner can yield to any exclusive owner, not available to legacy devices
     D3DKMT_VIDPNSOURCEOWNER_EXCLUSIVE      = 2,    //Has exclusive owner without shared gdi primary,
     D3DKMT_VIDPNSOURCEOWNER_EXCLUSIVEGDI   = 3,    //Has exclusive owner with shared gdi primary and must be exclusive owner of all VidPn sources, only available to legacy devices
} D3DKMT_VIDPNSOURCEOWNER_TYPE;

typedef struct _D3DKMT_SETVIDPNSOURCEOWNER
{
    D3DKMT_HANDLE                           hDevice;            // in: Device handle
    CONST D3DKMT_VIDPNSOURCEOWNER_TYPE*     pType;              // in: OwnerType array
    CONST D3DDDI_VIDEO_PRESENT_SOURCE_ID*   pVidPnSourceId;     // in: VidPn source ID array
    UINT                                    VidPnSourceCount;   // in: Number of valid entries in above array
} D3DKMT_SETVIDPNSOURCEOWNER;

typedef struct _D3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP
{
    D3DKMT_HANDLE                           hAdapter;           // in: Adapter handle
    D3DDDI_VIDEO_PRESENT_SOURCE_ID          VidPnSourceId;      // in: VidPn source ID array
} D3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP;

#define D3DKMT_GETPRESENTHISTORY_MAXTOKENS  2048

typedef struct _D3DKMT_GETPRESENTHISTORY
{
    D3DKMT_HANDLE                                             hAdapter;     // in: Handle to adapter
    UINT                                                      ProvidedSize; // in: Size of provided buffer
    UINT                                                      WrittenSize;  // out: Copied token size or required size for first token
    __field_bcount(ProvidedSize) D3DKMT_PRESENTHISTORYTOKEN  *pTokens;      // in: Pointer to buffer.
    UINT                                                      NumTokens;    // out: Number of copied token
} D3DKMT_GETPRESENTHISTORY;

typedef struct _D3DKMT_CREATEOVERLAY
{
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;      // in
    D3DKMT_HANDLE                   hDevice;            // in: Indentifies the device
    D3DDDI_KERNELOVERLAYINFO        OverlayInfo;        // in
    D3DKMT_HANDLE                   hOverlay;           // out: Kernel overlay handle
} D3DKMT_CREATEOVERLAY;

typedef struct _D3DKMT_UPDATEOVERLAY
{
    D3DKMT_HANDLE            hDevice;           // in: Indentifies the device
    D3DKMT_HANDLE            hOverlay;          // in: Kernel overlay handle
    D3DDDI_KERNELOVERLAYINFO OverlayInfo;       // in
} D3DKMT_UPDATEOVERLAY;

typedef struct _D3DKMT_FLIPOVERLAY
{
    D3DKMT_HANDLE        hDevice;               // in: Indentifies the device
    D3DKMT_HANDLE        hOverlay;              // in: Kernel overlay handle
    D3DKMT_HANDLE        hSource;               // in: Allocation currently displayed
    VOID*                pPrivateDriverData;    // in: Private driver data
    UINT                 PrivateDriverDataSize; // in: Size of private driver data
} D3DKMT_FLIPOVERLAY;

typedef struct _D3DKMT_GETOVERLAYSTATE
{
    D3DKMT_HANDLE        hDevice;               // in: Indentifies the device
    D3DKMT_HANDLE        hOverlay;              // in: Kernel overlay handle
    BOOLEAN              OverlayEnabled;
} D3DKMT_GETOVERLAYSTATE;

typedef struct _D3DKMT_DESTROYOVERLAY
{
    D3DKMT_HANDLE        hDevice;               // in: Indentifies the device
    D3DKMT_HANDLE        hOverlay;              // in: Kernel overlay handle
} D3DKMT_DESTROYOVERLAY;

typedef struct _D3DKMT_WAITFORVERTICALBLANKEVENT
{
    D3DKMT_HANDLE                   hAdapter;      // in: adapter handle
    D3DKMT_HANDLE                   hDevice;       // in: device handle [Optional]
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId; // in: adapter's VidPN Source ID
} D3DKMT_WAITFORVERTICALBLANKEVENT;

typedef struct _D3DKMT_SETGAMMARAMP
{
    D3DKMT_HANDLE                   hDevice;       // in: device handle
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId; // in: adapter's VidPN Source ID
    D3DDDI_GAMMARAMP_TYPE           Type;          // in: Gamma ramp type
    union
    {
        D3DDDI_GAMMA_RAMP_RGB256x3x16* pGammaRampRgb256x3x16;
        D3DDDI_GAMMA_RAMP_DXGI_1*      pGammaRampDXGI1;
    };
    UINT                            Size;
} D3DKMT_SETGAMMARAMP;

typedef enum _D3DKMT_DEVICEEXECUTION_STATE
{
    D3DKMT_DEVICEEXECUTION_ACTIVE               = 1,
    D3DKMT_DEVICEEXECUTION_RESET                = 2,
    D3DKMT_DEVICEEXECUTION_HUNG                 = 3,
    D3DKMT_DEVICEEXECUTION_STOPPED              = 4,
    D3DKMT_DEVICEEXECUTION_ERROR_OUTOFMEMORY    = 5,
    D3DKMT_DEVICEEXECUTION_ERROR_DMAFAULT       = 6,
} D3DKMT_DEVICEEXECUTION_STATE;

typedef struct _D3DKMT_DEVICERESET_STATE
{
    union
    {
        struct
        {
            UINT    DesktopSwitched : 1;        // 0x00000001
            UINT    Reserved        :31;        // 0xFFFFFFFE
        };
        UINT    Value;
    };
} D3DKMT_DEVICERESET_STATE;

typedef struct _D3DKMT_PRESENT_STATS
{
    UINT PresentCount;
    UINT PresentRefreshCount;
    UINT SyncRefreshCount;
    LARGE_INTEGER SyncQPCTime;
    LARGE_INTEGER SyncGPUTime;
} D3DKMT_PRESENT_STATS;

typedef struct _D3DKMT_DEVICEPRESENT_STATE
{
    D3DDDI_VIDEO_PRESENT_SOURCE_ID VidPnSourceId; // in: present source id
    D3DKMT_PRESENT_STATS           PresentStats;  // out: present stats
} D3DKMT_DEVICEPRESENT_STATE;

typedef enum _D3DKMT_DEVICESTATE_TYPE
{
    D3DKMT_DEVICESTATE_EXECUTION = 1,
    D3DKMT_DEVICESTATE_PRESENT   = 2,
    D3DKMT_DEVICESTATE_RESET     = 3,
} D3DKMT_DEVICESTATE_TYPE;

typedef struct _D3DKMT_GETDEVICESTATE
{
    D3DKMT_HANDLE                   hDevice;       // in: device handle
    D3DKMT_DEVICESTATE_TYPE         StateType;     // in: device state type
    union
    {
        D3DKMT_DEVICEEXECUTION_STATE ExecutionState; // out: device state
        D3DKMT_DEVICEPRESENT_STATE   PresentState;   // in/out: present state
        D3DKMT_DEVICERESET_STATE     ResetState;     // out: reset state
    };
} D3DKMT_GETDEVICESTATE;

typedef struct _D3DKMT_CREATEDCFROMMEMORY
{
    VOID*                           pMemory;       // in: memory for DC
    D3DDDIFORMAT                    Format;        // in: Memory pixel format
    UINT                            Width;         // in: Memory Width
    UINT                            Height;        // in: Memory Height
    UINT                            Pitch;         // in: Memory pitch
    HDC                             hDeviceDc;     // in: DC describing the device
    PALETTEENTRY*                   pColorTable;   // in: Palette
    HDC                             hDc;           // out: HDC
    HANDLE                          hBitmap;       // out: Handle to bitmap
} D3DKMT_CREATEDCFROMMEMORY;

typedef struct _D3DKMT_DESTROYDCFROMMEMORY
{
    HDC                             hDc;           // in:
    HANDLE                          hBitmap;       // in:
} D3DKMT_DESTROYDCFROMMEMORY;

typedef struct _D3DKMT_SETCONTEXTSCHEDULINGPRIORITY
{
    D3DKMT_HANDLE                   hContext;      // in: context handle
    INT                             Priority;      // in: context priority
} D3DKMT_SETCONTEXTSCHEDULINGPRIORITY;

typedef struct _D3DKMT_CHANGESURFACEPOINTER
{
    HDC                             hDC;             // in: dc handle
    HANDLE                          hBitmap;         // in: bitmap handle
    LPVOID                          pSurfacePointer; // in: new surface pointer
    UINT                            Width;           // in: Memory Width
    UINT                            Height;          // in: Memory Height
    UINT                            Pitch;           // in: Memory pitch
} D3DKMT_CHANGESURFACEPOINTER;

typedef struct _D3DKMT_GETCONTEXTSCHEDULINGPRIORITY
{
    D3DKMT_HANDLE                   hContext;      // in: context handle
    INT                             Priority;      // out: context priority
} D3DKMT_GETCONTEXTSCHEDULINGPRIORITY;

typedef enum _D3DKMT_SCHEDULINGPRIORITYCLASS
{
    D3DKMT_SCHEDULINGPRIORITYCLASS_IDLE         = 0,
    D3DKMT_SCHEDULINGPRIORITYCLASS_BELOW_NORMAL = 1,
    D3DKMT_SCHEDULINGPRIORITYCLASS_NORMAL       = 2,
    D3DKMT_SCHEDULINGPRIORITYCLASS_ABOVE_NORMAL = 3,
    D3DKMT_SCHEDULINGPRIORITYCLASS_HIGH         = 4,
    D3DKMT_SCHEDULINGPRIORITYCLASS_REALTIME     = 5,
} D3DKMT_SCHEDULINGPRIORITYCLASS;

typedef struct _D3DKMT_GETSCANLINE
{
    D3DKMT_HANDLE                   hAdapter;           // in: Adapter handle
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;      // in: Adapter's VidPN Source ID
    BOOLEAN                         InVerticalBlank;    // out: Within vertical blank
    UINT                            ScanLine;           // out: Current scan line
} D3DKMT_GETSCANLINE;

typedef enum _D3DKMT_QUEUEDLIMIT_TYPE
{
    D3DKMT_SET_QUEUEDLIMIT_PRESENT     = 1,
    D3DKMT_GET_QUEUEDLIMIT_PRESENT     = 2,
} D3DKMT_QUEUEDLIMIT_TYPE;

typedef struct _D3DKMT_SETQUEUEDLIMIT
{
    D3DKMT_HANDLE                   hDevice;            // in: device handle
    D3DKMT_QUEUEDLIMIT_TYPE         Type;               // in: limit type
    union
    {
        UINT                        QueuedPresentLimit; // in (or out): queued present limit
        struct
        {
            D3DDDI_VIDEO_PRESENT_SOURCE_ID VidPnSourceId;          // in: adapter's VidPN source ID
            UINT                           QueuedPendingFlipLimit; // in (or out): flip pending limit
        };
    };
} D3DKMT_SETQUEUEDLIMIT;

typedef struct _D3DKMT_POLLDISPLAYCHILDREN
{
    D3DKMT_HANDLE                   hAdapter;                 // in: Adapter handle
    UINT                            NonDestructiveOnly :  1;  // in: 0x00000001 Destructive or not
    UINT                            SynchronousPolling :  1;  // in: 0x00000002 Synchronous polling or not
    UINT                            DisableModeReset   :  1;  // in: 0x00000004 Disable DMM mode reset on monitor event
    UINT                            PollAllAdapters    :  1;  // in: 0x00000008 Poll all adapters
    UINT                            PollInterruptible  :  1;  // in: 0x00000010 Poll interruptible targets as well.
    UINT                            Reserved           : 27;  // in: 0xffffffc0
} D3DKMT_POLLDISPLAYCHILDREN;

typedef struct _D3DKMT_INVALIDATEACTIVEVIDPN
{
    D3DKMT_HANDLE                   hAdapter;               // in: Adapter handle
    VOID*                           pPrivateDriverData;     // in: Private driver data
    UINT                            PrivateDriverDataSize;  // in: Size of private driver data
} D3DKMT_INVALIDATEACTIVEVIDPN;

typedef struct _D3DKMT_CHECKOCCLUSION
{
    HWND            hWindow;        // in:  Destination window handle
} D3DKMT_CHECKOCCLUSION;

typedef struct _D3DKMT_WAITFORIDLE
{
    D3DKMT_HANDLE   hDevice;        // in:  Device to wait for idle
} D3DKMT_WAITFORIDLE;

typedef struct _D3DKMT_CHECKMONITORPOWERSTATE
{
    D3DKMT_HANDLE    hAdapter;    // in: Adapter to check on
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;      // in: Adapter's VidPN Source ID
} D3DKMT_CHECKMONITORPOWERSTATE;

typedef struct _D3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT
{
    D3DKMT_HANDLE                   hDevice;                         // in: Identifies the device
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;                   // in: Identifies which VidPn we are changing the private driver format attribute for
    UINT                            PrivateDriverFormatAttribute;    // In: Requested private format attribute for VidPn specified
} D3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT;

typedef struct _D3DKMT_CREATEKEYEDMUTEX
{
    UINT64                                  InitialValue;               // in:  Initial value to release to
    D3DKMT_HANDLE                           hSharedHandle;              // out:  Global handle to keyed mutex
    D3DKMT_HANDLE                           hKeyedMutex;                // out: Handle to the keyed mutex in this process
} D3DKMT_CREATEKEYEDMUTEX;

typedef struct _D3DKMT_OPENKEYEDMUTEX
{
    D3DKMT_HANDLE                           hSharedHandle;              // in:  Global handle to keyed mutex
    D3DKMT_HANDLE                           hKeyedMutex;                // out: Handle to the keyed mutex in this process
} D3DKMT_OPENKEYEDMUTEX;

typedef struct _D3DKMT_DESTROYKEYEDMUTEX
{
    D3DKMT_HANDLE                           hKeyedMutex;                // in:  Identifies the keyed mutex being destroyed.
} D3DKMT_DESTROYKEYEDMUTEX;

typedef struct _D3DKMT_ACQUIREKEYEDMUTEX
{
    D3DKMT_HANDLE                           hKeyedMutex;                // in: Handle to the keyed mutex
    UINT64                                  Key;                        // in: Key value to Acquire
    PLARGE_INTEGER                          pTimeout;                   // in: NT-style timeout value
    UINT64                                  FenceValue;                 // out: Current fence value of the GPU sync object
} D3DKMT_ACQUIREKEYEDMUTEX;

typedef struct _D3DKMT_RELEASEKEYEDMUTEX
{
    D3DKMT_HANDLE                           hKeyedMutex;                // in: Handle to the keyed mutex
    UINT64                                  Key;                        // in: Key value to Release to
    UINT64                                  FenceValue;                 // in: New fence value to use for GPU sync object
} D3DKMT_RELEASEKEYEDMUTEX;

typedef struct _D3DKMT_CONFIGURESHAREDRESOURCE
{
    D3DKMT_HANDLE   hDevice;        // in:  Device that created the resource
    D3DKMT_HANDLE   hResource;      // in: Handle for shared resource
    BOOLEAN         IsDwm;          // in: TRUE when the process is DWM
    HANDLE          hProcess;       // in: Process handle for the non-DWM case
    BOOLEAN         AllowAccess;    // in: Indicates whereh the process is allowed access
} D3DKMT_CONFIGURESHAREDRESOURCE;

typedef struct _D3DKMT_CHECKSHAREDRESOURCEACCESS
{
    D3DKMT_HANDLE   hResource;      // in: Handle for the resource
    UINT            ClientPid;      // in: Client process PID
} D3DKMT_CHECKSHAREDRESOURCEACCESS;


typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATEALLOCATION)(__inout D3DKMT_CREATEALLOCATION*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATEALLOCATION2)(__inout D3DKMT_CREATEALLOCATION*); // _ADVSCH_
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_QUERYRESOURCEINFO)(__inout D3DKMT_QUERYRESOURCEINFO*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENRESOURCE)(__inout D3DKMT_OPENRESOURCE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENRESOURCE2)(__inout D3DKMT_OPENRESOURCE*); // _ADVSCH_
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYALLOCATION)(__in CONST D3DKMT_DESTROYALLOCATION*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETALLOCATIONPRIORITY)(__in CONST D3DKMT_SETALLOCATIONPRIORITY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_QUERYALLOCATIONRESIDENCY)(__in CONST D3DKMT_QUERYALLOCATIONRESIDENCY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATEDEVICE)(__inout D3DKMT_CREATEDEVICE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYDEVICE)(__in CONST D3DKMT_DESTROYDEVICE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATECONTEXT)(__inout D3DKMT_CREATECONTEXT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYCONTEXT)(__in CONST D3DKMT_DESTROYCONTEXT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATESYNCHRONIZATIONOBJECT)(__inout D3DKMT_CREATESYNCHRONIZATIONOBJECT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATESYNCHRONIZATIONOBJECT2)(__inout D3DKMT_CREATESYNCHRONIZATIONOBJECT2*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENSYNCHRONIZATIONOBJECT)(__inout D3DKMT_OPENSYNCHRONIZATIONOBJECT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYSYNCHRONIZATIONOBJECT)(__in CONST D3DKMT_DESTROYSYNCHRONIZATIONOBJECT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_WAITFORSYNCHRONIZATIONOBJECT)(__in D3DKMT_WAITFORSYNCHRONIZATIONOBJECT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_WAITFORSYNCHRONIZATIONOBJECT2)(__in D3DKMT_WAITFORSYNCHRONIZATIONOBJECT2*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SIGNALSYNCHRONIZATIONOBJECT)(__in CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SIGNALSYNCHRONIZATIONOBJECT2)(__in CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT2*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_LOCK)(__inout D3DKMT_LOCK*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_UNLOCK)(__in CONST D3DKMT_UNLOCK*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETDISPLAYMODELIST)(__inout D3DKMT_GETDISPLAYMODELIST*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETDISPLAYMODE)(__inout CONST D3DKMT_SETDISPLAYMODE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETMULTISAMPLEMETHODLIST)(__inout D3DKMT_GETMULTISAMPLEMETHODLIST*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_PRESENT)(__in CONST D3DKMT_PRESENT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_RENDER)(__inout D3DKMT_RENDER*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETRUNTIMEDATA)(__inout CONST D3DKMT_GETRUNTIMEDATA*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_QUERYADAPTERINFO)(__inout CONST D3DKMT_QUERYADAPTERINFO*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMHDC)(__inout D3DKMT_OPENADAPTERFROMHDC*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMGDIDISPLAYNAME)(__inout D3DKMT_OPENADAPTERFROMGDIDISPLAYNAME*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMDEVICENAME)(__inout D3DKMT_OPENADAPTERFROMDEVICENAME*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CLOSEADAPTER)(__in CONST D3DKMT_CLOSEADAPTER*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETSHAREDPRIMARYHANDLE)(__inout D3DKMT_GETSHAREDPRIMARYHANDLE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_ESCAPE)(__in CONST D3DKMT_ESCAPE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETVIDPNSOURCEOWNER)(__in CONST D3DKMT_SETVIDPNSOURCEOWNER*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETPRESENTHISTORY)(__inout D3DKMT_GETPRESENTHISTORY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATEOVERLAY)(__inout D3DKMT_CREATEOVERLAY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_UPDATEOVERLAY)(__in CONST D3DKMT_UPDATEOVERLAY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_FLIPOVERLAY)(__in CONST D3DKMT_FLIPOVERLAY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYOVERLAY)(__in CONST D3DKMT_DESTROYOVERLAY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_WAITFORVERTICALBLANKEVENT)(__in CONST D3DKMT_WAITFORVERTICALBLANKEVENT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETGAMMARAMP)(__in CONST D3DKMT_SETGAMMARAMP*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETDEVICESTATE)(__inout D3DKMT_GETDEVICESTATE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATEDCFROMMEMORY)(__inout D3DKMT_CREATEDCFROMMEMORY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYDCFROMMEMORY)(__in CONST D3DKMT_DESTROYDCFROMMEMORY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETCONTEXTSCHEDULINGPRIORITY)(__in CONST D3DKMT_SETCONTEXTSCHEDULINGPRIORITY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETCONTEXTSCHEDULINGPRIORITY)(__inout D3DKMT_GETCONTEXTSCHEDULINGPRIORITY*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETPROCESSSCHEDULINGPRIORITYCLASS)(__in HANDLE, __in D3DKMT_SCHEDULINGPRIORITYCLASS);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETPROCESSSCHEDULINGPRIORITYCLASS)(__in HANDLE, __out D3DKMT_SCHEDULINGPRIORITYCLASS*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_RELEASEPROCESSVIDPNSOURCEOWNERS)(__in HANDLE);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETSCANLINE)(__inout D3DKMT_GETSCANLINE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CHANGESURFACEPOINTER)(__in CONST D3DKMT_CHANGESURFACEPOINTER*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETQUEUEDLIMIT)(__in CONST D3DKMT_SETQUEUEDLIMIT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_POLLDISPLAYCHILDREN)(__in CONST D3DKMT_POLLDISPLAYCHILDREN*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_INVALIDATEACTIVEVIDPN)(__in CONST D3DKMT_INVALIDATEACTIVEVIDPN*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CHECKOCCLUSION)(__in CONST D3DKMT_CHECKOCCLUSION*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_WAITFORIDLE)(__in CONST D3DKMT_WAITFORIDLE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CHECKMONITORPOWERSTATE)(__in CONST D3DKMT_CHECKMONITORPOWERSTATE*);
typedef __checkReturn BOOLEAN  (APIENTRY *PFND3DKMT_CHECKEXCLUSIVEOWNERSHIP)();
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP)(__in CONST D3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT)(__in CONST D3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SHAREDPRIMARYLOCKNOTIFICATION)(__in CONST D3DKMT_SHAREDPRIMARYLOCKNOTIFICATION*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION)(__in CONST D3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CREATEKEYEDMUTEX)(__inout D3DKMT_CREATEKEYEDMUTEX*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_OPENKEYEDMUTEX)(__inout D3DKMT_OPENKEYEDMUTEX*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_DESTROYKEYEDMUTEX)(__in CONST D3DKMT_DESTROYKEYEDMUTEX*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_ACQUIREKEYEDMUTEX)(__inout D3DKMT_ACQUIREKEYEDMUTEX*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_RELEASEKEYEDMUTEX)(__inout D3DKMT_RELEASEKEYEDMUTEX*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CONFIGURESHAREDRESOURCE)(__in D3DKMT_CONFIGURESHAREDRESOURCE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_GETOVERLAYSTATE)(__inout D3DKMT_GETOVERLAYSTATE*);
typedef __checkReturn NTSTATUS (APIENTRY *PFND3DKMT_CHECKSHAREDRESOURCEACCESS)(__in CONST D3DKMT_CHECKSHAREDRESOURCEACCESS*);

#if !defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

#ifdef __cplusplus
extern "C"
{
#endif

EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateAllocation(__inout D3DKMT_CREATEALLOCATION*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateAllocation2(__inout D3DKMT_CREATEALLOCATION*); // _ADVSCH_
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTQueryResourceInfo(__inout D3DKMT_QUERYRESOURCEINFO*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenResource(__inout D3DKMT_OPENRESOURCE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenResource2(__inout D3DKMT_OPENRESOURCE*); // _ADVSCH_
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroyAllocation(__in CONST D3DKMT_DESTROYALLOCATION*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetAllocationPriority(__in CONST D3DKMT_SETALLOCATIONPRIORITY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTQueryAllocationResidency(__in CONST D3DKMT_QUERYALLOCATIONRESIDENCY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateDevice(__inout D3DKMT_CREATEDEVICE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroyDevice(__in CONST D3DKMT_DESTROYDEVICE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateContext(__inout D3DKMT_CREATECONTEXT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroyContext(__in CONST D3DKMT_DESTROYCONTEXT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateSynchronizationObject(__inout D3DKMT_CREATESYNCHRONIZATIONOBJECT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateSynchronizationObject2(__inout D3DKMT_CREATESYNCHRONIZATIONOBJECT2*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenSynchronizationObject(__inout D3DKMT_OPENSYNCHRONIZATIONOBJECT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroySynchronizationObject(__in CONST D3DKMT_DESTROYSYNCHRONIZATIONOBJECT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTWaitForSynchronizationObject(__in CONST D3DKMT_WAITFORSYNCHRONIZATIONOBJECT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTWaitForSynchronizationObject2(__in CONST D3DKMT_WAITFORSYNCHRONIZATIONOBJECT2*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSignalSynchronizationObject(__in CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSignalSynchronizationObject2(__in CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT2*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTLock(__inout D3DKMT_LOCK*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTUnlock(__in CONST D3DKMT_UNLOCK*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetDisplayModeList(__inout D3DKMT_GETDISPLAYMODELIST*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetDisplayMode(__inout CONST D3DKMT_SETDISPLAYMODE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetMultisampleMethodList(__inout D3DKMT_GETMULTISAMPLEMETHODLIST*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTPresent(__in CONST D3DKMT_PRESENT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTRender(__inout D3DKMT_RENDER*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetRuntimeData(__inout CONST D3DKMT_GETRUNTIMEDATA*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTQueryAdapterInfo(__inout CONST D3DKMT_QUERYADAPTERINFO*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenAdapterFromHdc(__inout D3DKMT_OPENADAPTERFROMHDC*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenAdapterFromGdiDisplayName(__inout D3DKMT_OPENADAPTERFROMGDIDISPLAYNAME*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenAdapterFromDeviceName(__inout D3DKMT_OPENADAPTERFROMDEVICENAME*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCloseAdapter(__in CONST D3DKMT_CLOSEADAPTER*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetSharedPrimaryHandle(__inout D3DKMT_GETSHAREDPRIMARYHANDLE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTEscape(__in CONST D3DKMT_ESCAPE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetVidPnSourceOwner(__in CONST D3DKMT_SETVIDPNSOURCEOWNER*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetPresentHistory(__inout D3DKMT_GETPRESENTHISTORY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetPresentQueueEvent(__in D3DKMT_HANDLE hAdapter, __inout HANDLE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateOverlay(__inout D3DKMT_CREATEOVERLAY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTUpdateOverlay(__in CONST D3DKMT_UPDATEOVERLAY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTFlipOverlay(__in CONST D3DKMT_FLIPOVERLAY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroyOverlay(__in CONST D3DKMT_DESTROYOVERLAY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTWaitForVerticalBlankEvent(__in CONST D3DKMT_WAITFORVERTICALBLANKEVENT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetGammaRamp(__in CONST D3DKMT_SETGAMMARAMP*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetDeviceState(__inout D3DKMT_GETDEVICESTATE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateDCFromMemory(__inout D3DKMT_CREATEDCFROMMEMORY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroyDCFromMemory(__in CONST D3DKMT_DESTROYDCFROMMEMORY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetContextSchedulingPriority(__in CONST D3DKMT_SETCONTEXTSCHEDULINGPRIORITY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetContextSchedulingPriority(__inout D3DKMT_GETCONTEXTSCHEDULINGPRIORITY*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetProcessSchedulingPriorityClass(__in HANDLE, __in D3DKMT_SCHEDULINGPRIORITYCLASS);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetProcessSchedulingPriorityClass(__in HANDLE, __out D3DKMT_SCHEDULINGPRIORITYCLASS*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTReleaseProcessVidPnSourceOwners(__in HANDLE);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetScanLine(__inout D3DKMT_GETSCANLINE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTChangeSurfacePointer(__in CONST D3DKMT_CHANGESURFACEPOINTER*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetQueuedLimit(__in CONST D3DKMT_SETQUEUEDLIMIT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTPollDisplayChildren(__in CONST D3DKMT_POLLDISPLAYCHILDREN*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTInvalidateActiveVidPn(__in CONST D3DKMT_INVALIDATEACTIVEVIDPN*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCheckOcclusion(__in CONST D3DKMT_CHECKOCCLUSION*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTWaitForIdle(IN CONST D3DKMT_WAITFORIDLE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCheckMonitorPowerState(__in CONST D3DKMT_CHECKMONITORPOWERSTATE*);
EXTERN_C __checkReturn BOOLEAN  APIENTRY D3DKMTCheckExclusiveOwnership(VOID);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCheckVidPnExclusiveOwnership(__in CONST D3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSetDisplayPrivateDriverFormat(__in CONST D3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSharedPrimaryLockNotification(__in CONST D3DKMT_SHAREDPRIMARYLOCKNOTIFICATION*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTSharedPrimaryUnLockNotification(__in CONST D3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCreateKeyedMutex(__inout D3DKMT_CREATEKEYEDMUTEX*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTOpenKeyedMutex(__inout D3DKMT_OPENKEYEDMUTEX*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTDestroyKeyedMutex(__in CONST D3DKMT_DESTROYKEYEDMUTEX*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTAcquireKeyedMutex(__inout D3DKMT_ACQUIREKEYEDMUTEX*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTReleaseKeyedMutex(__inout D3DKMT_RELEASEKEYEDMUTEX*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTConfigureSharedResource(__in CONST D3DKMT_CONFIGURESHAREDRESOURCE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTGetOverlayState(__inout D3DKMT_GETOVERLAYSTATE*);
EXTERN_C __checkReturn NTSTATUS APIENTRY D3DKMTCheckSharedResourceAccess(__in CONST D3DKMT_CHECKSHAREDRESOURCEACCESS*);

#ifdef __cplusplus
}
#endif

#endif // !defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

#endif // (NTDDI_VERSION >= NTDDI_LONGHORN) || defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

#pragma warning(pop)

#endif /* _D3DKMTHK_H_ */


