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
#pragma warning(disable:4200) // zero-sized array in struct/union


typedef struct _OBJECT_ATTRIBUTES OBJECT_ATTRIBUTES;
typedef OBJECT_ATTRIBUTES *POBJECT_ATTRIBUTES;

//
// Available only for Vista (LONGHORN) and later and for
// multiplatform tools such as debugger extensions
//
#if (NTDDI_VERSION >= NTDDI_LONGHORN) || defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

typedef struct _D3DKMT_CREATEDEVICEFLAGS
{
    UINT    LegacyMode               :  1;   // 0x00000001
    UINT    RequestVSync             :  1;   // 0x00000002
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    UINT    DisableGpuTimeout        :  1;   // 0x00000004
    UINT    Reserved                 : 29;   // 0xFFFFFFF8
#else
    UINT    Reserved                 : 30;   // 0xFFFFFFFC
#endif
} D3DKMT_CREATEDEVICEFLAGS;

typedef struct _D3DKMT_CREATEDEVICE
{
    union
    {
        D3DKMT_HANDLE           hAdapter;           // in: identifies the adapter for user-mode creation
        VOID*                   pAdapter;           // in: identifies the adapter for kernel-mode creation
    };

    D3DKMT_CREATEDEVICEFLAGS    Flags;

    D3DKMT_HANDLE               hDevice;                // out: Identifies the device
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
            UINT64            FenceValue;           // in: fence value to be waited.
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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
        HANDLE                CpuEventHandle;         // in: handle of a CPU event to be signaled
#endif // (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
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

// This structure takes 8 bytes.
// The unnamed UINT of size 0 forces alignment of the structure to
// make it exactly occupy 8 bytes, see MSDN docs on C++ bitfields
// for more details
typedef struct _D3DKMDT_DISPLAYMODE_FLAGS
{
#if (DXGKDDI_INTERFACE_VERSION < DXGKDDI_INTERFACE_VERSION_WIN8)
    BOOLEAN                      ValidatedAgainstMonitorCaps  : 1;
    BOOLEAN                      RoundedFakeMode              : 1;
    D3DKMDT_MODE_PRUNING_REASON  ModePruningReason            : 4;
    UINT                         Reserved                     : 28;
#else
    UINT                         ValidatedAgainstMonitorCaps  : 1;
    UINT                         RoundedFakeMode              : 1;
    UINT                                                      : 0;
    D3DKMDT_MODE_PRUNING_REASON  ModePruningReason            : 4;
    UINT                         Stereo                       : 1;
    UINT                         AdvancedScanCapable          : 1;
    UINT                         Reserved                     : 26;
#endif
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

typedef struct _D3DKMT_DISPLAYMODELIST
{
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
    UINT                            ModeCount;
    D3DKMT_DISPLAYMODE              pModeList[0];
} D3DKMT_DISPLAYMODELIST;

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
            UINT    Blt                         : 1;        // 0x00000001
            UINT    ColorFill                   : 1;        // 0x00000002
            UINT    Flip                        : 1;        // 0x00000004
            UINT    FlipDoNotFlip               : 1;        // 0x00000008
            UINT    FlipDoNotWait               : 1;        // 0x00000010
            UINT    FlipRestart                 : 1;        // 0x00000020
            UINT    DstRectValid                : 1;        // 0x00000040
            UINT    SrcRectValid                : 1;        // 0x00000080
            UINT    RestrictVidPnSource         : 1;        // 0x00000100
            UINT    SrcColorKey                 : 1;        // 0x00000200
            UINT    DstColorKey                 : 1;        // 0x00000400
            UINT    LinearToSrgb                : 1;        // 0x00000800
            UINT    PresentCountValid           : 1;        // 0x00001000
            UINT    Rotate                      : 1;        // 0x00002000
            UINT    PresentToBitmap             : 1;        // 0x00004000
            UINT    RedirectedFlip              : 1;        // 0x00008000
            UINT    RedirectedBlt               : 1;        // 0x00010000
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
            UINT    FlipStereo                  : 1;        // 0x00020000   // This is a flip from a stereo alloc. Used in addition to Flip.
            UINT    FlipStereoTemporaryMono     : 1;        // 0x00040000   // This is a flip from a stereo alloc. The left image should used to produce both images. Used in addition to Flip.
            UINT    FlipStereoPreferRight       : 1;        // 0x00080000   // This is a flip from a stereo alloc. Use the right image when cloning to a mono monitor. Used in addition to Flip.
            UINT    BltStereoUseRight           : 1;        // 0x00100000   // This is a Blt from a stereo alloc to a mono alloc. The right image should be used.
            UINT    PresentHistoryTokenOnly     : 1;        // 0x00200000   // Submit Present History Token only.
            UINT    PresentRegionsValid         : 1;        // 0x00400000   // Ptr to present regions is valid
            UINT    PresentDDA                  : 1;        // 0x00800000   // Present from a DDA swapchain
            UINT    ProtectedContentBlankedOut  : 1;        // 0x01000000
            UINT    RemoteSession               : 1;        // 0x02000000
            UINT    Reserved                    : 6;        // 0xFC000000
#else
            UINT    Reserved                    : 15;       // 0xFFFE0000
#endif
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
            UINT  Video                         :  1;   // 0x00000001
            UINT  RestrictedContent             :  1;   // 0x00000002
            UINT  ClipToView                    :  1;   // 0x00000004
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
            UINT  StereoPreferRight             :  1;   // 0x00000008
            UINT  TemporaryMono                 :  1;   // 0x00000010
            UINT  FlipRestart                   :  1;   // 0x00000020
            UINT  ScatterBlt                    :  1;   // 0x00000040
            UINT  AlphaMode                     :  2;   // 0x00000180
            UINT  SignalLimitOnTokenCompletion  :  1;   // 0x00000200
            UINT  Reserved                      : 22;   // 0xFFFFFC00
#else
            UINT  Reserved                      : 29;   // 0xFFFFFFF8
#endif
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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    RECT                 ScrollRect;
    POINT                ScrollOffset;
#endif
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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
#define D3DKMT_MAX_PRESENT_HISTORY_SCATTERBLTS 12

typedef struct _D3DKMT_SCATTERBLT
{
    ULONG64 hLogicalSurfaceDestination;
    LONG64  hDestinationCompSurfDWM;
    UINT64  DestinationCompositionBindingId;
    RECT    SourceRect;
    POINT   DestinationOffset;
} D3DKMT_SCATTERBLT;

typedef struct _D3DKMT_SCATTERBLTS
{
    UINT NumBlts;
    D3DKMT_SCATTERBLT Blts[D3DKMT_MAX_PRESENT_HISTORY_SCATTERBLTS];
} D3DKMT_SCATTERBLTS;
#endif

typedef struct _D3DKMT_FLIPMODEL_PRESENTHISTORYTOKEN
{
    UINT64                                     FenceValue;
    ULONG64                                    hLogicalSurface;
    UINT                                       SwapChainIndex;
    UINT64                                     PresentLimitSemaphoreId;
    D3DDDI_FLIPINTERVAL_TYPE                   FlipInterval;
    D3DKMT_FLIPMODEL_PRESENTHISTORYTOKENFLAGS  Flags;
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    LONG64                                     hCompSurf;
    UINT64                                     CompositionSyncKey;
    UINT                                       RemainingTokens;
    RECT                                       ScrollRect;
    POINT                                      ScrollOffset;
    UINT                                       PresentCount;
    FLOAT                                      RevealColor[4]; // index 0 == R, ... , 3 == A
    D3DDDI_ROTATION                            Rotation;
    D3DKMT_SCATTERBLTS                         ScatterBlts;
    D3DKMT_HANDLE                              hSyncObject;     // The local handle of a sync object from D3D runtimes.
                                                                // The global handle of the sync object coming to DWM.
#endif
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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    // The binding id as specified by the Composition Surface
    UINT64                CompositionBindingId;
#endif

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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_PRESENT_RGNS
{
    UINT DirtyRectCount;
    _Field_size_( DirtyRectCount ) const RECT* pDirtyRects;
    UINT MoveRectCount;
    _Field_size_( MoveRectCount ) const D3DKMT_MOVE_RECT* pMoveRects;
}D3DKMT_PRESENT_RGNS;
#endif

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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    D3DKMT_PRESENT_RGNS*            pPresentRegions;
#endif
} D3DKMT_PRESENT;

#define D3DKMT_MAX_MULTIPLANE_OVERLAY_ALLOCATIONS    16

typedef enum D3DKMT_MULTIPLANE_OVERLAY_FILTER_TYPE
{
    D3DKMT_MULTIPLANE_OVERLAY_FILTER_CAPS_BRIGHTNESS         = 0x1,
    D3DKMT_MULTIPLANE_OVERLAY_FILTER_CAPS_CONTRAST           = 0x2,
    D3DKMT_MULTIPLANE_OVERLAY_FILTER_CAPS_HUE                = 0x4,
    D3DKMT_MULTIPLANE_OVERLAY_FILTER_CAPS_SATURATION         = 0x8,
    D3DKMT_MULTIPLANE_OVERLAY_FILTER_CAPS_STRETCH_QUALITY    = 0x10,
} D3DKMT_MULTIPLANE_OVERLAY_FILTER_TYPE;

#define D3DKMT_MAX_MULTIPLANE_OVERLAY_FILTER 5

typedef struct D3DKMT_MULTIPLANE_OVERLAY_FILTER_RANGE
{
  INT   Minimum;
  INT   Maximum;
  INT   Default;
  FLOAT Multiplier;
} D3DKMT_MULTIPLANE_OVERLAY_FILTER_RANGE;

typedef enum D3DKMT_MULTIPLANE_OVERLAY_FLAGS
{
    D3DKMT_MULTIPLANE_OVERLAY_FLAG_VERTICAL_FLIP   = 0x1,
    D3DKMT_MULTIPLANE_OVERLAY_FLAG_HORIZONTAL_FLIP = 0x2,
} D3DKMT_MULTIPLANE_OVERLAY_FLAGS;

typedef enum D3DKMT_MULTIPLANE_OVERLAY_BLEND
{
    D3DKMT_MULTIPLANE_OVERLAY_BLEND_OPAQUE     = 0x0,
    D3DKMT_MULTIPLANE_OVERLAY_BLEND_ALPHABLEND = 0x1,
} D3DKMT_MULTIPLANE_OVERLAY_BLEND;

typedef struct D3DKMT_MULITPLANE_OVERLAY_FILTER
{
    D3DKMT_MULTIPLANE_OVERLAY_FILTER_TYPE FilterType;
    BOOL Enabled;
    INT Value;
} D3DKMT_MULTIPLANE_OVERLAY_FILTER;

typedef enum D3DKMT_MULTIPLANE_OVERLAY_VIDEO_FRAME_FORMAT
{
    D3DKMT_MULIIPLANE_OVERLAY_VIDEO_FRAME_FORMAT_PROGRESSIVE  = 0,
    D3DKMT_MULTIPLANE_OVERLAY_VIDEO_FRAME_FORMAT_INTERLACED_TOP_FIELD_FIRST   = 1,
    D3DKMT_MULTIPLANE_OVERLAY_VIDEO_FRAME_FORMAT_INTERLACED_BOTTOM_FIELD_FIRST    = 2
} D3DKMT_MULTIPLANE_OVERLAY_VIDEO_FRAME_FORMAT;

typedef enum D3DKMT_MULTIPLANE_OVERLAY_YCbCr_FLAGS
{
    D3DKMT_MULTIPLANE_OVERLAY_YCbCr_FLAG_NOMINAL_RANGE = 0x1, // 16 - 235 vs. 0 - 255
    D3DKMT_MULTIPLANE_OVERLAY_YCbCr_FLAG_BT709         = 0x2, // BT.709 vs. BT.601
    D3DKMT_MULTIPLANE_OVERLAY_YCbCr_FLAG_xvYCC         = 0x4, // xvYCC vs. conventional YCbCr
} D3DKMT_MULTIPLANE_OVERLAY_YCbCr_FLAGS;

typedef enum D3DKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT
{
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_MONO               = 0,
    D3DKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_HORIZONTAL         = 1,
    D3DKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_VERTICAL           = 2,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_SEPARATE           = 3,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_MONO_OFFSET        = 4,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_ROW_INTERLEAVED    = 5,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_COLUMN_INTERLEAVED = 6,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT_CHECKERBOARD       = 7
} D3DKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT;

typedef enum _DXGKMT_MULTIPLANE_OVERLAY_STEREO_FLIP_MODE
{
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FLIP_NONE   = 0,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FLIP_FRAME0 = 1,
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FLIP_FRAME1 = 2,
} DXGKMT_MULTIPLANE_OVERLAY_STEREO_FLIP_MODE;

typedef struct D3DKMT_MULTIPLANE_OVERLAY_ATTRIBUTES
{
    UINT                                         Flags;      // D3DKMT_MULTIPLANE_OVERLAY_FLAGS
    RECT                                         SrcRect;
    RECT                                         DstRect;
    D3DDDI_ROTATION                              Rotation;
    D3DKMT_MULTIPLANE_OVERLAY_BLEND              Blend;
    UINT                                         NumFilters;
    D3DKMT_MULTIPLANE_OVERLAY_FILTER*            pFilters;
    D3DKMT_MULTIPLANE_OVERLAY_VIDEO_FRAME_FORMAT VideoFrameFormat;
    UINT                                         YCbCrFlags; // D3DKMT_MULTIPLANE_OVERLAY_YCbCr_FLAGS
    D3DKMT_MULTIPLANE_OVERLAY_STEREO_FORMAT      StereoFormat;
    BOOL                                         StereoLeftViewFrame0;
    BOOL                                         StereoBaseViewFrame0;
    DXGKMT_MULTIPLANE_OVERLAY_STEREO_FLIP_MODE   StereoFlipMode;
} D3DKMT_MULTIPLANE_OVERLAY_ATTRIBUTES;

typedef struct D3DKMT_MULTIPLANE_OVERLAY
{
    UINT                                 LayerIndex;
    BOOL                                 Enabled;
    D3DKMT_HANDLE                        hResource;
    D3DKMT_MULTIPLANE_OVERLAY_ATTRIBUTES PlaneAttributes;
} D3DKMT_MULTIPLANE_OVERLAY;

typedef struct D3DKMT_PRESENT_MULTIPLANE_OVERLAY
{
    union
    {
        D3DKMT_HANDLE               hDevice;            // in: D3D10 compatibility.
        D3DKMT_HANDLE               hContext;           // in: Indentifies the context
    };
    ULONG                           BroadcastContextCount;                          // in: Specifies the number of context
                                                                                    //     to broadcast this command buffer to.
    D3DKMT_HANDLE                   BroadcastContext[D3DDDI_MAX_BROADCAST_CONTEXT]; // in: Specifies the handle of the context to
                                                                                    //     broadcast to.

    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;      // in: VidPn source ID if RestrictVidPnSource is flagged
    UINT                            PresentCount;       // in: present counter
    D3DDDI_FLIPINTERVAL_TYPE        FlipInterval;       // in: flip interval
    D3DKMT_PRESENTFLAGS             Flags;              // in:

    UINT                            PresentPlaneCount;
    D3DKMT_MULTIPLANE_OVERLAY*      pPresentPlanes;
} D3DKMT_PRESENT_MULTIPLANE_OVERLAY;

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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_OUTPUTDUPLPRESENTFLAGS
{
    union
    {
        struct
        {
            UINT                ProtectedContentBlankedOut  :  1;
            UINT                RemoteSession               :  1;
            UINT                FullScreenPresent           :  1;
            UINT                Reserved                    : 29;
        };
        UINT    Value;
    };
}D3DKMT_OUTPUTDUPLPRESENTFLAGS;

typedef struct _D3DKMT_OUTPUTDUPLPRESENT
{
    D3DKMT_HANDLE                   hContext;           // in: Indentifies the context
    D3DKMT_HANDLE                   hSource;            // in: Source allocation to present from
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
    ULONG                           BroadcastContextCount;                          // in: Specifies the number of context
    D3DKMT_HANDLE                   BroadcastContext[D3DDDI_MAX_BROADCAST_CONTEXT]; // in: Specifies the handle of the context to
    D3DKMT_PRESENT_RGNS             PresentRegions;     // in: Dirty and move regions
    D3DKMT_OUTPUTDUPLPRESENTFLAGS   Flags;
} D3DKMT_OUTPUTDUPLPRESENT;
#endif

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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    UINT    NtSecuritySharing           :  1;    // 0x00000040
    UINT    ReadOnly                    :  1;    // 0x00000080
    UINT    CreateWriteCombined         :  1;    // 0x00000100 Cannot be used when allocation is created from the user mode.
    UINT    CreateCached                :  1;    // 0x00000200 Cannot be used when allocation is created from the user mode.
    UINT    SwapChainBackBuffer         :  1;    // 0x00000400 Specifies whether an allocation corresponds to a swap chain back buffer.
    UINT    Reserved                    : 21;    // 0xFFFFF800
#else
    UINT    Reserved                    : 26;    // 0xFFFFFFC0
#endif
} D3DKMT_CREATEALLOCATIONFLAGS;

typedef struct _D3DKMT_CREATEALLOCATION
{
                                            D3DKMT_HANDLE                   hDevice;
                                            D3DKMT_HANDLE                   hResource;      //in/out:valid only within device
                                            D3DKMT_HANDLE                   hGlobalShare;   //out:Shared handle if CreateShared and not NtSecuritySharing
    _Field_size_bytes_(PrivateRuntimeDataSize)  CONST VOID*                     pPrivateRuntimeData;
                                            UINT                            PrivateRuntimeDataSize;
    _Field_size_bytes_(PrivateDriverDataSize)   CONST VOID*                     pPrivateDriverData;
                                            UINT                            PrivateDriverDataSize;
                                            UINT                            NumAllocations;
   union {
       _Field_size_(NumAllocations)       D3DDDI_ALLOCATIONINFO*          pAllocationInfo;
#if ((DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN7) || \
     (D3D_UMD_INTERFACE_VERSION >= D3D_UMD_INTERFACE_VERSION_WIN7))
       _Field_size_(NumAllocations)       D3DDDI_ALLOCATIONINFO2*         pAllocationInfo2; // _ADVSCH_
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
    _Field_size_(NumAllocations)                      D3DDDI_OPENALLOCATIONINFO*  pOpenAllocationInfo;                // in : Array of open allocation structs
#if ((DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN7) || \
     (D3D_UMD_INTERFACE_VERSION >= D3D_UMD_INTERFACE_VERSION_WIN7))
    _Field_size_(NumAllocations)                      D3DDDI_OPENALLOCATIONINFO2* pOpenAllocationInfo2;                // in : Array of open allocation structs // _ADVSCH_
#endif
   };
    _Field_size_bytes_(PrivateRuntimeDataSize)              VOID*                       pPrivateRuntimeData;                // in : Caller supplied buffer where the runtime private data associated with this resource will be copied
                                                        UINT                        PrivateRuntimeDataSize;             // in : Size in bytes of the pPrivateRuntimeData buffer
    _Field_size_bytes_(ResourcePrivateDriverDataSize)       VOID*                       pResourcePrivateDriverData;         // in : Caller supplied buffer where the driver private data associated with the resource will be copied
                                                        UINT                        ResourcePrivateDriverDataSize;      // in : Size in bytes of the pResourcePrivateDriverData buffer
    _Field_size_bytes_(TotalPrivateDriverDataBufferSize)    VOID*                       pTotalPrivateDriverDataBuffer;      // in : Caller supplied buffer where the Driver private data will be stored
                                                        UINT                        TotalPrivateDriverDataBufferSize;   // in/out : Size in bytes of pTotalPrivateDriverDataBuffer / Size in bytes of data written to pTotalPrivateDriverDataBuffer
                                                        D3DKMT_HANDLE               hResource;                          // out : Handle for this resource in this process
}D3DKMT_OPENRESOURCE;

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_OPENRESOURCEFROMNTHANDLE
{
                                                        D3DKMT_HANDLE               hDevice;                            // in : Indentifies the device
                                                        HANDLE                      hNtHandle;                          // in : Process's NT handle
                                                        UINT                        NumAllocations;                     // in : Number of allocations associated with the resource
    _Field_size_(NumAllocations)                      D3DDDI_OPENALLOCATIONINFO2* pOpenAllocationInfo2;                // in : Array of open allocation structs // _ADVSCH_
                                                        UINT                        PrivateRuntimeDataSize;             // in : Size in bytes of the pPrivateRuntimeData buffer
    _Field_size_bytes_(PrivateRuntimeDataSize)              VOID*                       pPrivateRuntimeData;                // in : Caller supplied buffer where the runtime private data associated with this resource will be copied
                                                        UINT                        ResourcePrivateDriverDataSize;      // in : Size in bytes of the pResourcePrivateDriverData buffer
    _Field_size_bytes_(ResourcePrivateDriverDataSize)       VOID*                       pResourcePrivateDriverData;         // in : Caller supplied buffer where the driver private data associated with the resource will be copied
                                                        UINT                        TotalPrivateDriverDataBufferSize;   // in/out : Size in bytes of pTotalPrivateDriverDataBuffer / Size in bytes of data written to pTotalPrivateDriverDataBuffer
    _Field_size_bytes_(TotalPrivateDriverDataBufferSize)    VOID*                       pTotalPrivateDriverDataBuffer;      // in : Caller supplied buffer where the Driver private data will be stored
                                                        D3DKMT_HANDLE               hResource;                          // out : Handle for this resource in this process

                                                        D3DKMT_HANDLE               hKeyedMutex;                        // out: Handle to the keyed mutex in this process
    _In_reads_bytes_opt_(PrivateRuntimeDataSize)        VOID*                       pKeyedMutexPrivateRuntimeData;      // in:  Buffer containing initial private data.
                                                                                                                        //      If NULL then PrivateRuntimeDataSize must be 0.
                                                                                                                        //      It will only be copied if the keyed mutex does not already have private data.
                                                        UINT                        KeyedMutexPrivateRuntimeDataSize;   // in:  Size in bytes of pPrivateRuntimeData.
                                                        D3DKMT_HANDLE               hSyncObject;                        // out: Handle to sync object in this process.
} D3DKMT_OPENRESOURCEFROMNTHANDLE;

typedef struct _D3DKMT_OPENSYNCOBJECTFROMNTHANDLE
{
    HANDLE          hNtHandle;                          // in : NT handle for the sync object.
    D3DKMT_HANDLE   hSyncObject;                        // out: Handle to sync object in this process.
} D3DKMT_OPENSYNCOBJECTFROMNTHANDLE;

typedef struct _D3DKMT_OPENNTHANDLEFROMNAME
{
    DWORD              dwDesiredAccess;
    OBJECT_ATTRIBUTES* pObjAttrib;
    HANDLE             hNtHandle;
} D3DKMT_OPENNTHANDLEFROMNAME;

#define SHARED_ALLOCATION_WRITE         0x1
#define SHARED_ALLOCATION_ALL_ACCESS    (STANDARD_RIGHTS_REQUIRED | SHARED_ALLOCATION_WRITE)

typedef struct _D3DKMT_QUERYRESOURCEINFOFROMNTHANDLE
{
    D3DKMT_HANDLE   hDevice;                        // in : Indentifies the device
    HANDLE          hNtHandle;                      // in : Global resource handle to open
    VOID*           pPrivateRuntimeData;            // in : Ptr to buffer that will receive runtime private data for the resource
    UINT            PrivateRuntimeDataSize;         // in/out : Size in bytes of buffer passed in for runtime private data / If pPrivateRuntimeData was NULL then size in bytes of buffer required for the runtime private data otherwise size in bytes of runtime private data copied into the buffer
    UINT            TotalPrivateDriverDataSize;     // out : Size in bytes of buffer required to hold all the DriverPrivate data for all of the allocations associated withe the resource
    UINT            ResourcePrivateDriverDataSize;  // out : Size in bytes of the driver's resource private data
    UINT            NumAllocations;                 // out : Number of allocations associated with this resource
}D3DKMT_QUERYRESOURCEINFOFROMNTHANDLE;

#endif

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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    KMT_DRIVERVERSION_WDDM_1_2               = 1200,
#endif
} D3DKMT_DRIVERVERSION;

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_ADAPTERTYPE
{
    UINT   RenderSupported  :  1;
    UINT   DisplaySupported :  1;
    UINT   SoftwareDevice   :  1;
    UINT   PostDevice       :  1;
    UINT   Reserved         : 28;
} D3DKMT_ADAPTERTYPE;

typedef struct _D3DKMT_OUTPUTDUPLCONTEXTSCOUNT
{
    D3DDDI_VIDEO_PRESENT_SOURCE_ID VidPnSourceId;
    UINT OutputDuplicationCount;
} D3DKMT_OUTPUTDUPLCONTEXTSCOUNT;

typedef struct _D3DKMT_UMD_DRIVER_VERSION
{
    LARGE_INTEGER DriverVersion;
} D3DKMT_UMD_DRIVER_VERSION;

typedef struct _D3DKMT_DIRECTFLIP_SUPPORT
{
    BOOL Supported;
} D3DKMT_DIRECTFLIP_SUPPORT;
#endif

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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
     KMTQAITYPE_ADAPTERTYPE             = 15,
     KMTQAITYPE_OUTPUTDUPLCONTEXTSCOUNT = 16,
     KMTQAITYPE_WDDM_1_2_CAPS           = 17,
     KMTQAITYPE_UMD_DRIVER_VERSION      = 18,
     KMTQAITYPE_DIRECTFLIP_SUPPORT      = 19,
#endif
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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
#define MAX_ENUM_ADAPTERS   16

typedef struct _D3DKMT_ADAPTERINFO
{
    D3DKMT_HANDLE       hAdapter;
    LUID                AdapterLuid;
    ULONG               NumOfSources;
    BOOL                bPresentMoveRegionsPreferred;
} D3DKMT_ADAPTERINFO;

typedef struct _D3DKMT_ENUMADAPTERS
{
    _In_range_(0, MAX_ENUM_ADAPTERS) ULONG  NumAdapters;
    D3DKMT_ADAPTERINFO                      Adapters[MAX_ENUM_ADAPTERS];
} D3DKMT_ENUMADAPTERS;

typedef struct _D3DKMT_OPENADAPTERFROMLUID
{
    LUID            AdapterLuid;
    D3DKMT_HANDLE   hAdapter;
} D3DKMT_OPENADAPTERFROMLUID;

typedef struct _D3DKMT_QUERYREMOTEVIDPNSOURCEFROMGDIDISPLAYNAME
{
    WCHAR                           DeviceName[32]; // in:  Name of GDI device from which to open an adapter instance
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;  // out: VidPN source ID for that particular display
} D3DKMT_QUERYREMOTEVIDPNSOURCEFROMGDIDISPLAYNAME;
#endif

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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_PINDIRECTFLIPRESOURCES
{
     D3DKMT_HANDLE               hDevice;                           // in : Indentifies the device
     UINT                        ResourceCount;                     // in : Number of resources to pin
    _Field_size_(ResourceCount)  D3DKMT_HANDLE*  pResourceList;     // in : Array of resource handles to pin
} D3DKMT_PINDIRECTFLIPRESOURCES;

typedef struct _D3DKMT_UNPINDIRECTFLIPRESOURCES
{
     D3DKMT_HANDLE               hDevice;                           // in : Indentifies the device
     UINT                        ResourceCount;                     // in : Number of resources to unpin
    _Field_size_(ResourceCount)  D3DKMT_HANDLE*  pResourceList;     // in : Array of resource handles to unpin
} D3DKMT_UNPINDIRECTFLIPRESOURCES;
#endif

typedef enum _D3DKMT_ESCAPETYPE
{
    D3DKMT_ESCAPE_DRIVERPRIVATE             =  0,
    D3DKMT_ESCAPE_VIDMM                     =  1,
    D3DKMT_ESCAPE_TDRDBGCTRL                =  2,
    D3DKMT_ESCAPE_VIDSCH                    =  3,
    D3DKMT_ESCAPE_DEVICE                    =  4,
    D3DKMT_ESCAPE_DMM                       =  5,
    D3DKMT_ESCAPE_DEBUG_SNAPSHOT            =  6,
    D3DKMT_ESCAPE_SETDRIVERUPDATESTATUS     =  7,
    D3DKMT_ESCAPE_DRT_TEST                  =  8,
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    D3DKMT_ESCAPE_DIAGNOSTICS               =  9,
    D3DKMT_ESCAPE_OUTPUTDUPL_SNAPSHOT       = 10,
    D3DKMT_ESCAPE_OUTPUTDUPL_DIAGNOSTICS    = 11,
    D3DKMT_ESCAPE_BDD_PNP                   = 12,
    D3DKMT_ESCAPE_BDD_FALLBACK              = 13,
    D3DKMT_ESCAPE_ACTIVATE_SPECIFIC_DIAG    = 14,
    D3DKMT_ESCAPE_MODES_PRUNED_OUT          = 15,
    D3DKMT_ESCAPE_WHQL_INFO                 = 16,
    D3DKMT_ESCAPE_BRIGHTNESS                = 17,
    D3DKMT_ESCAPE_EDID_CACHE                = 18,
    D3DKMT_ESCAPE_GENERIC_ADAPTER_DIAG_INFO = 19,
    D3DKMT_ESCAPE_WIN32K_START                   = 1024,
    D3DKMT_ESCAPE_WIN32K_HIP_DEVICE_INFO         = 1024,
    D3DKMT_ESCAPE_WIN32K_QUERY_CD_ROTATION_BLOCK = 1025,
#endif
} D3DKMT_ESCAPETYPE;

typedef enum _D3DKMT_TDRDBGCTRLTYPE
{
    D3DKMT_TDRDBGCTRLTYPE_FORCETDR          = 0, //Simulate a TDR
    D3DKMT_TDRDBGCTRLTYPE_DISABLEBREAK      = 1, //Disable DebugBreak on timeout
    D3DKMT_TDRDBGCTRLTYPE_ENABLEBREAK       = 2, //Enable DebugBreak on timeout
    D3DKMT_TDRDBGCTRLTYPE_UNCONDITIONAL     = 3, //Disables all safety conditions (e.g. check for consecutive recoveries)
    D3DKMT_TDRDBGCTRLTYPE_VSYNCTDR          = 4, //Simulate a Vsync TDR
    D3DKMT_TDRDBGCTRLTYPE_GPUTDR            = 5, //Simulate a GPU TDR
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    D3DKMT_TDRDBGCTRLTYPE_FORCEDODTDR       = 6, //Simulate a Display Only Present TDR
    D3DKMT_TDRDBGCTRLTYPE_FORCEDODVSYNCTDR  = 7, //Simulate a Display Only Vsync TDR
    D3DKMT_TDRDBGCTRLTYPE_ENGINETDR         = 8, //Simulate an engine TDR
#endif
} D3DKMT_TDRDBGCTRLTYPE;

typedef enum _D3DKMT_VIDMMESCAPETYPE
{
    D3DKMT_VIDMMESCAPETYPE_SETFAULT                     = 0,
    D3DKMT_VIDMMESCAPETYPE_RUN_COHERENCY_TEST           = 1,
    D3DKMT_VIDMMESCAPETYPE_RUN_UNMAP_TO_DUMMY_PAGE_TEST = 2,
    D3DKMT_VIDMMESCAPETYPE_APERTURE_CORRUPTION_CHECK    = 3,
    D3DKMT_VIDMMESCAPETYPE_SUSPEND_CPU_ACCESS_TEST      = 4,
    D3DKMT_VIDMMESCAPETYPE_EVICT                        = 5,
    D3DKMT_VIDMMESCAPETYPE_EVICT_BY_NT_HANDLE           = 6
} D3DKMT_VIDMMESCAPETYPE;

typedef enum _D3DKMT_VIDSCHESCAPETYPE
{
    D3DKMT_VIDSCHESCAPETYPE_PREEMPTIONCONTROL   = 0, //Enable/Disable preemption
    D3DKMT_VIDSCHESCAPETYPE_SUSPENDSCHEDULER    = 1, //Suspend/Resume scheduler (obsolate)
    D3DKMT_VIDSCHESCAPETYPE_TDRCONTROL          = 2, //Tdr control
    D3DKMT_VIDSCHESCAPETYPE_SUSPENDRESUME       = 3, //Suspend/Resume scheduler
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    D3DKMT_VIDSCHESCAPETYPE_ENABLECONTEXTDELAY  = 4, //Enable/Disable context delay
#endif
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
                    ULONG Unused : 1;
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
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
                    ULONG NeverDiscardOfferedAllocation : 1;
                    ULONG AlwaysDiscardOfferedAllocation : 1;
                    ULONG Reserved : 17;
#else
                    ULONG Reserved : 19;
#endif
                };
                ULONG Value;
            };
        } SetFault;
        struct
        {
            D3DKMT_HANDLE ResourceHandle;
            D3DKMT_HANDLE AllocationHandle;
        } Evict;
        struct
        {
            UINT64 NtHandle;           // Used by D3DKMT_VIDMMESCAPETYPE_EVICT_BY_NT_HANDLE
        } EvictByNtHandle;
    };
} D3DKMT_VIDMM_ESCAPE;

typedef struct _D3DKMT_VIDSCH_ESCAPE
{
    D3DKMT_VIDSCHESCAPETYPE Type;
    union
    {
        BOOL PreemptionControl; // enable/disable preemption
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
        BOOL EnableContextDelay; // enable/disable context delay
        struct
        {
            ULONG TdrControl;   // control tdr
            union
            {
                ULONG NodeOrdinal;  // valid if TdrControl is set to D3DKMT_TDRDBGCTRLTYPE_ENGINETDR
            };
        } TdrControl2;
#endif
        BOOL SuspendScheduler;  // suspend/resume scheduler (obsolate)
        ULONG TdrControl;       // control tdr
        ULONG SuspendTime;      // time period to suspend.
    };
} D3DKMT_VIDSCH_ESCAPE;

typedef struct _D3DKMT_TDRDBGCTRL_ESCAPE
{
    D3DKMT_TDRDBGCTRLTYPE TdrControl;   // control tdr
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
    union
    {
        ULONG NodeOrdinal;  // valid if TdrControl is set to D3DKMT_TDRDBGCTRLTYPE_ENGINETDR
    };
#endif
} D3DKMT_TDRDBGCTRL_ESCAPE;

// Upper boundary on the DMM escape data size (in bytes).
enum
{
    D3DKMT_MAX_DMM_ESCAPE_DATASIZE = 100*1024
};

// NOTE: If (ProvidedBufferSize >= MinRequiredBufferSize), then MinRequiredBufferSize = size of the actual complete data set in the Data[] array.
typedef struct _D3DKMT_DMM_ESCAPE
{
    _In_  D3DKMT_DMMESCAPETYPE  Type;
    _In_  SIZE_T                ProvidedBufferSize;     // actual size of Data[] array, in bytes.
    _Out_ SIZE_T                MinRequiredBufferSize;  // minimum required size of Data[] array to contain requested data.
    _Out_writes_bytes_(ProvidedBufferSize) UCHAR  Data[1];
} D3DKMT_DMM_ESCAPE;

typedef enum _D3DKMT_BRIGHTNESS_INFO_TYPE
{
    D3DKMT_BRIGHTNESS_INFO_GET_POSSIBLE_LEVELS  = 1,
    D3DKMT_BRIGHTNESS_INFO_GET                  = 2,
    D3DKMT_BRIGHTNESS_INFO_SET                  = 3,
    D3DKMT_BRIGHTNESS_INFO_GET_CAPS             = 4,
    D3DKMT_BRIGHTNESS_INFO_SET_STATE            = 5,
    D3DKMT_BRIGHTNESS_INFO_SET_OPTIMIZATION     = 6,
    D3DKMT_BRIGHTNESS_INFO_GET_REDUCTION        = 7,
    D3DKMT_BRIGHTNESS_INFO_BEGIN_MANUAL_MODE    = 8,
    D3DKMT_BRIGHTNESS_INFO_END_MANUAL_MODE      = 9,
    D3DKMT_BRIGHTNESS_INFO_TOGGLE_LOGGING       = 10,
} D3DKMT_BRIGHTNESS_INFO_TYPE;

typedef struct _D3DKMT_BRIGHTNESS_POSSIBLE_LEVELS
{
    UCHAR LevelCount;
    UCHAR BrightnessLevels[256];
} D3DKMT_BRIGHTNESS_POSSIBLE_LEVELS;

typedef struct _D3DKMT_BRIGHTNESS_INFO
{
    D3DKMT_BRIGHTNESS_INFO_TYPE    Type;
    union
    {
        D3DKMT_BRIGHTNESS_POSSIBLE_LEVELS   PossibleLevels;
        UCHAR                               Brightness;
        DXGK_BRIGHTNESS_CAPS                BrightnessCaps;
        DXGK_BRIGHTNESS_STATE               BrightnessState;
        DXGK_BACKLIGHT_OPTIMIZATION_LEVEL   OptimizationLevel;
        DXGK_BACKLIGHT_INFO                 ReductionInfo;
        BOOLEAN                             VerboseLogging;
    };
} D3DKMT_BRIGHTNESS_INFO;

typedef enum _D3DKMT_DEVICEESCAPE_TYPE
{
    D3DKMT_DEVICEESCAPE_VIDPNFROMALLOCATION = 0,
    D3DKMT_DEVICEESCAPE_RESTOREGAMMA        = 1,
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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
#ifndef DXGK_DIAG_PROCESS_NAME_LENGTH
#define DXGK_DIAG_PROCESS_NAME_LENGTH 16
#endif

typedef enum _OUTPUTDUPL_CONTEXT_DEBUG_STATUS
{
    OUTPUTDUPL_CONTEXT_DEBUG_STATUS_INACTIVE = 0,
    OUTPUTDUPL_CONTEXT_DEBUG_STATUS_ACTIVE = 1,
    OUTPUTDUPL_CONTEXT_DEBUG_STATUS_PENDING_DESTROY = 2,
    OUTPUTDUPL_CONTEXT_DEBUG_STATUS_FORCE_UINT32 = 0xffffffff
}OUTPUTDUPL_CONTEXT_DEBUG_STATUS;

typedef struct _OUTPUTDUPL_CONTEXT_DEBUG_INFO
{
    OUTPUTDUPL_CONTEXT_DEBUG_STATUS Status;
    HANDLE                          ProcessID;
    UINT32                          AccumulatedPresents;
    LARGE_INTEGER                   LastPresentTime;
    LARGE_INTEGER                   LastMouseTime;
    CHAR                            ProcessName[DXGK_DIAG_PROCESS_NAME_LENGTH];
} OUTPUTDUPL_CONTEXT_DEBUG_INFO;

#define GET_OUTPUT_DUPL_DEBUG_INFO_FROM_SNAPSHOT(pSnapshot, VidPnSource, OutputDuplContextIndex) \
    (pSnapshot->OutputDuplDebugInfos[(VidPnSource * pSnapshot->NumOutputDuplContexts) + OutputDuplContextIndex])

typedef struct _D3DKMT_OUTPUTDUPL_SNAPSHOT
{
    UINT Size;                          // _In_/out: Size of entire structure

    UINT SessionProcessCount;           // _Out_: Number of processes currently duplicating output in this session (max possible will be equal to NumOutputDuplContexts)
    UINT SessionActiveConnectionsCount; // _Out_: Total number of active contexts in this session, may be more than number active in 2D array because that is per adapter

    UINT NumVidPnSources;               // _Out_: Max of first array index
    UINT NumOutputDuplContexts;         // _Out_: Max of second array index

    // This field is in reality a two dimensional array, use GET_OUTPUT_DUPL_DEBUG_INFO_FROM_SNAPSHOT macro to get a specific one
    _Field_size_bytes_(Size - sizeof(_D3DKMT_OUTPUTDUPL_SNAPSHOT)) OUTPUTDUPL_CONTEXT_DEBUG_INFO OutputDuplDebugInfos[0];
} D3DKMT_OUTPUTDUPL_SNAPSHOT;
#endif

typedef struct _D3DKMT_ACTIVATE_SPECIFIC_DIAG_ESCAPE
{
    D3DKMT_ESCAPETYPE Type;     // The escape type that needs to be (de)activated
    BOOL              Activate; // FALSE means deactivate
} D3DKMT_ACTIVATE_SPECIFIC_DIAG_ESCAPE;

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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_VIDPNSOURCEOWNER_FLAGS
{
    union
    {
        struct
        {
            UINT AllowOutputDuplication : 1;
            UINT Reserved               : 31;
        };
        UINT Value;
    };
} D3DKMT_VIDPNSOURCEOWNER_FLAGS;
#endif

typedef struct _D3DKMT_SETVIDPNSOURCEOWNER
{
    D3DKMT_HANDLE                           hDevice;            // in: Device handle
    CONST D3DKMT_VIDPNSOURCEOWNER_TYPE*     pType;              // in: OwnerType array
    CONST D3DDDI_VIDEO_PRESENT_SOURCE_ID*   pVidPnSourceId;     // in: VidPn source ID array
    UINT                                    VidPnSourceCount;   // in: Number of valid entries in above array
} D3DKMT_SETVIDPNSOURCEOWNER;

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef struct _D3DKMT_SETVIDPNSOURCEOWNER1
{
    D3DKMT_SETVIDPNSOURCEOWNER              Version0;
    D3DKMT_VIDPNSOURCEOWNER_FLAGS           Flags;
} D3DKMT_SETVIDPNSOURCEOWNER1;
#endif

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
    _Field_size_bytes_(ProvidedSize) D3DKMT_PRESENTHISTORYTOKEN  *pTokens;      // in: Pointer to buffer.
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

#define D3DKMT_MAX_WAITFORVERTICALBLANK_OBJECTS 8

typedef struct _D3DKMT_WAITFORVERTICALBLANKEVENT2
{
    D3DKMT_HANDLE                   hAdapter;      // in: adapter handle
    D3DKMT_HANDLE                   hDevice;       // in: device handle [Optional]
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId; // in: adapter's VidPN Source ID
    UINT                            NumObjects;
    HANDLE                          ObjectHandleArray[D3DKMT_MAX_WAITFORVERTICALBLANK_OBJECTS]; // in: Specifies the objects to wait on.
} D3DKMT_WAITFORVERTICALBLANKEVENT2;

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

typedef struct _D3DKMT_SETCONTEXTINPROCESSSCHEDULINGPRIORITY
{
    D3DKMT_HANDLE                   hContext;      // in: context handle
    INT                             Priority;      // in: context priority
} D3DKMT_SETCONTEXTINPROCESSSCHEDULINGPRIORITY;

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

typedef struct _D3DKMT_GETCONTEXTINPROCESSSCHEDULINGPRIORITY
{
    D3DKMT_HANDLE                   hContext;      // in: context handle
    INT                             Priority;      // out: context priority
} D3DKMT_GETCONTEXTINPROCESSSCHEDULINGPRIORITY;

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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)

typedef struct _D3DKMT_CREATEKEYEDMUTEX2_FLAGS
{
    union
    {
        struct
        {
            UINT NtSecuritySharing      : 1;    // If set, the keyed mutex will be shared using DxgkShareObjects instead of D3DKMT_CREATEKEYEDMUTEX2::hSharedHandle
            UINT Reserved               : 31;
        };
        UINT Value;
    };
} D3DKMT_CREATEKEYEDMUTEX2_FLAGS;

typedef struct _D3DKMT_CREATEKEYEDMUTEX2
{
    UINT64                                        InitialValue;           // in:  Initial value to release to
    D3DKMT_HANDLE                                 hSharedHandle;          // out: Global handle to keyed mutex, NULL if NtSecuritySharing is set.
    D3DKMT_HANDLE                                 hKeyedMutex;            // out: Handle to the keyed mutex in this process
    _In_reads_bytes_opt_(PrivateRuntimeDataSize) VOID* pPrivateRuntimeData;    // in:  Buffer containing initial private data.
                                                                          //      If NULL then PrivateRuntimeDataSize must be 0.
    UINT                                          PrivateRuntimeDataSize; // in:  Size in bytes of pPrivateRuntimeData.
    D3DKMT_CREATEKEYEDMUTEX2_FLAGS                Flags;                  // in:  Creation flags.
} D3DKMT_CREATEKEYEDMUTEX2;

typedef struct _D3DKMT_OPENKEYEDMUTEX2
{
    D3DKMT_HANDLE                                 hSharedHandle;          // in:  Global handle to keyed mutex
    D3DKMT_HANDLE                                 hKeyedMutex;            // out: Handle to the keyed mutex in this process
    _In_reads_bytes_opt_(PrivateRuntimeDataSize) VOID* pPrivateRuntimeData;    // in:  Buffer containing initial private data.
                                                                          //      If NULL then PrivateRuntimeDataSize must be 0.
                                                                          //      It will only be copied if the keyed mutex does not already have private data.
    UINT                                          PrivateRuntimeDataSize; // in:  Size in bytes of pPrivateRuntimeData.
} D3DKMT_OPENKEYEDMUTEX2;

typedef struct _D3DKMT_ACQUIREKEYEDMUTEX2
{
    D3DKMT_HANDLE                                       hKeyedMutex;            // in:  Handle to the keyed mutex
    UINT64                                              Key;                    // in:  Key value to Acquire
    PLARGE_INTEGER                                      pTimeout;               // in:  NT-style timeout value
    UINT64                                              FenceValue;             // out: Current fence value of the GPU sync object
    _Out_writes_bytes_all_opt_(PrivateRuntimeDataSize) VOID* pPrivateRuntimeData;    // out: Buffer to copy private data to.
                                                                                //      If NULL then PrivateRuntimeDataSize must be 0.
    UINT                                                PrivateRuntimeDataSize; // in:  Size in bytes of pPrivateRuntimeData.
} D3DKMT_ACQUIREKEYEDMUTEX2;

typedef struct _D3DKMT_RELEASEKEYEDMUTEX2
{
    D3DKMT_HANDLE                                 hKeyedMutex;            // in: Handle to the keyed mutex
    UINT64                                        Key;                    // in: Key value to Release to
    UINT64                                        FenceValue;             // in: New fence value to use for GPU sync object
    _In_reads_bytes_opt_(PrivateRuntimeDataSize) VOID* pPrivateRuntimeData;    // in: Buffer containing new private data.
                                                                          //     If NULL then PrivateRuntimeDataSize must be 0.
    UINT                                          PrivateRuntimeDataSize; // in: Size in bytes of pPrivateRuntimeData.
} D3DKMT_RELEASEKEYEDMUTEX2;
#endif

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

#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef enum _D3DKMT_OFFER_PRIORITY
{
    D3DKMT_OFFER_PRIORITY_LOW=1,    // Content is not useful
    D3DKMT_OFFER_PRIORITY_NORMAL,   // Content is useful but easy to regenerate
    D3DKMT_OFFER_PRIORITY_HIGH,     // Content is useful and difficult to regenerate
    D3DKMT_OFFER_PRIORITY_AUTO,     // Let VidMm decide offer priority based on eviction priority
} D3DKMT_OFFER_PRIORITY;

typedef struct _D3DKMT_OFFERALLOCATIONS
{
    D3DKMT_HANDLE hDevice;          // in: Device that created the allocations
    D3DKMT_HANDLE* pResources;      // in: array of D3D runtime resource handles.
    CONST D3DKMT_HANDLE* HandleList;// in: array of allocation handles. If non-NULL, pResources must be NULL.
    UINT NumAllocations;            // in: number of items in whichever of pResources or HandleList is non-NULL.
    D3DKMT_OFFER_PRIORITY Priority; // in: priority with which to offer the allocations
} D3DKMT_OFFERALLOCATIONS;

typedef struct _D3DKMT_RECLAIMALLOCATIONS
{
    D3DKMT_HANDLE hDevice;          // in:  Device that created the allocations
    D3DKMT_HANDLE* pResources;      // in:  array of D3D runtime resource handles.
    CONST D3DKMT_HANDLE* HandleList;// in:  array of allocation handles. If non-NULL, pResources must be NULL.
    BOOL* pDiscarded;               // out: optional array of booleans specifying whether each resource or allocation was discarded.
    UINT NumAllocations;            // in:  number of items in pDiscarded and whichever of pResources or HandleList is non-NULL.
} D3DKMT_RECLAIMALLOCATIONS;

typedef struct _D3DKMT_CREATE_OUTPUTDUPL
{
    D3DKMT_HANDLE                   hAdapter;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
    D3DKMT_HANDLE                   hSharedSurfaceGlobal;
    D3DKMT_HANDLE                   hGPUFencefaceGlobal;
    D3DKMT_HANDLE                   hKeyedMutexGlobal;
} D3DKMT_CREATE_OUTPUTDUPL;

typedef struct _D3DKMT_DESTROY_OUTPUTDUPL
{
    D3DKMT_HANDLE                   hAdapter;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
    BOOL                            bDestroyAllContexts;
} D3DKMT_DESTROY_OUTPUTDUPL;

typedef struct _D3DKMT_OUTPUTDUPL_POINTER_POSITION
{
    POINT   Position;
    BOOL    Visible;
} D3DKMT_OUTPUTDUPL_POINTER_POSITION;

typedef struct _D3DKMT_OUTPUTDUPL_FRAMEINFO
{
    LARGE_INTEGER                       LastPresentTime;
    LARGE_INTEGER                       LastMouseUpdateTime;
    UINT                                AccumulatedFrames;
    BOOL                                RectsCoalesced;
    BOOL                                ProtectedContentMaskedOut;
    D3DKMT_OUTPUTDUPL_POINTER_POSITION  PointerPosition;
    UINT                                TotalMetadataBufferSize;
    UINT                                PointerShapeBufferSize;
} D3DKMT_OUTPUTDUPL_FRAMEINFO;

typedef struct _D3DKMT_OUTPUTDUPL_GET_FRAMEINFO
{
    D3DKMT_HANDLE                   hAdapter;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
    D3DKMT_OUTPUTDUPL_FRAMEINFO     FrameInfo;
} D3DKMT_OUTPUTDUPL_GET_FRAMEINFO;

typedef enum _D3DKMT_OUTPUTDUPL_METADATATYPE
{
    D3DKMT_OUTPUTDUPL_METADATATYPE_DIRTY_RECTS = 0,
    D3DKMT_OUTPUTDUPL_METADATATYPE_MOVE_RECTS  = 1
} D3DKMT_OUTPUTDUPL_METADATATYPE;

typedef struct _D3DKMT_OUTPUTDUPL_METADATA
{
    D3DKMT_HANDLE                                                       hAdapter;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID                                      VidPnSourceId;
    D3DKMT_OUTPUTDUPL_METADATATYPE                                      Type;
    UINT                                                                BufferSizeSupplied;
    _Field_size_bytes_part_(BufferSizeSupplied, BufferSizeRequired) PVOID   pBuffer;
    UINT                                                                BufferSizeRequired;
} D3DKMT_OUTPUTDUPL_METADATA;

typedef enum _D3DKMT_OUTDUPL_POINTER_SHAPE_TYPE
{
    D3DKMT_OUTDUPL_POINTER_SHAPE_TYPE_MONOCHROME     = 0x00000001,
    D3DKMT_OUTDUPL_POINTER_SHAPE_TYPE_COLOR          = 0x00000002,
    D3DKMT_OUTDUPL_POINTER_SHAPE_TYPE_MASKED_COLOR   = 0x00000004
} D3DKMT_OUTDUPL_POINTER_SHAPE_TYPE;

typedef struct _D3DKMT_OUTDUPL_POINTER_SHAPE_INFO
{
    D3DKMT_OUTDUPL_POINTER_SHAPE_TYPE   Type;
    UINT                                Width;
    UINT                                Height;
    UINT                                Pitch;
    POINT                               HotSpot;
} D3DKMT_OUTDUPL_POINTER_SHAPE_INFO;

typedef struct _D3DKMT_OUTPUTDUPL_GET_POINTER_SHAPE_DATA
{
    D3DKMT_HANDLE                                                       hAdapter;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID                                      VidPnSourceId;
    UINT                                                                BufferSizeSupplied;
    _Field_size_bytes_part_(BufferSizeSupplied, BufferSizeRequired) PVOID   pShapeBuffer;
    UINT                                                                BufferSizeRequired;
    D3DKMT_OUTDUPL_POINTER_SHAPE_INFO                                   ShapeInfo;
} D3DKMT_OUTPUTDUPL_GET_POINTER_SHAPE_DATA;

typedef struct _D3DKMT_OUTPUTDUPL_RELEASE_FRAME
{
    D3DKMT_HANDLE                   hAdapter;
    D3DDDI_VIDEO_PRESENT_SOURCE_ID  VidPnSourceId;
} D3DKMT_OUTPUTDUPL_RELEASE_FRAME;

#define D3DKMT_MAX_OBJECTS_PER_HANDLE 3

#define D3DKMT_GDI_STYLE_HANDLE_DECORATION 0x2

typedef struct _D3DKMT_GETSHAREDRESOURCEADAPTERLUID
{
    D3DKMT_HANDLE hGlobalShare; // in : Shared resource handle
    HANDLE hNtHandle;           // in : Process's NT handle
    LUID AdapterLuid;           // out: adapter LUID
} D3DKMT_GETSHAREDRESOURCEADAPTERLUID;

#endif


typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEALLOCATION)(_Inout_ D3DKMT_CREATEALLOCATION*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEALLOCATION2)(_Inout_ D3DKMT_CREATEALLOCATION*); // _ADVSCH_
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_QUERYRESOURCEINFO)(_Inout_ D3DKMT_QUERYRESOURCEINFO*);
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_QUERYRESOURCEINFOFROMNTHANDLE)(_Inout_ D3DKMT_QUERYRESOURCEINFOFROMNTHANDLE*);

typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SHAREOBJECTS)(
    _In_range_(1, D3DKMT_MAX_OBJECTS_PER_HANDLE) UINT   cObjects,
    _In_reads_(cObjects) CONST D3DKMT_HANDLE *          hObjects,
    _In_ POBJECT_ATTRIBUTES                             pObjectAttributes,
    _In_ DWORD                                          dwDesiredAccess,
    _Out_ HANDLE *                                      phSharedNtHandle
    );
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENNTHANDLEFROMNAME)(_Inout_ D3DKMT_OPENNTHANDLEFROMNAME*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENRESOURCEFROMNTHANDLE)(_Inout_ D3DKMT_OPENRESOURCEFROMNTHANDLE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENSYNCOBJECTFROMNTHANDLE)(_Inout_ D3DKMT_OPENSYNCOBJECTFROMNTHANDLE*);
#endif
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENRESOURCE)(_Inout_ D3DKMT_OPENRESOURCE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENRESOURCE2)(_Inout_ D3DKMT_OPENRESOURCE*); // _ADVSCH_
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYALLOCATION)(_In_ CONST D3DKMT_DESTROYALLOCATION*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETALLOCATIONPRIORITY)(_In_ CONST D3DKMT_SETALLOCATIONPRIORITY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_QUERYALLOCATIONRESIDENCY)(_In_ CONST D3DKMT_QUERYALLOCATIONRESIDENCY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEDEVICE)(_Inout_ D3DKMT_CREATEDEVICE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYDEVICE)(_In_ CONST D3DKMT_DESTROYDEVICE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATECONTEXT)(_Inout_ D3DKMT_CREATECONTEXT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYCONTEXT)(_In_ CONST D3DKMT_DESTROYCONTEXT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATESYNCHRONIZATIONOBJECT)(_Inout_ D3DKMT_CREATESYNCHRONIZATIONOBJECT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATESYNCHRONIZATIONOBJECT2)(_Inout_ D3DKMT_CREATESYNCHRONIZATIONOBJECT2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENSYNCHRONIZATIONOBJECT)(_Inout_ D3DKMT_OPENSYNCHRONIZATIONOBJECT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYSYNCHRONIZATIONOBJECT)(_In_ CONST D3DKMT_DESTROYSYNCHRONIZATIONOBJECT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_WAITFORSYNCHRONIZATIONOBJECT)(_In_ D3DKMT_WAITFORSYNCHRONIZATIONOBJECT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_WAITFORSYNCHRONIZATIONOBJECT2)(_In_ D3DKMT_WAITFORSYNCHRONIZATIONOBJECT2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SIGNALSYNCHRONIZATIONOBJECT)(_In_ CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SIGNALSYNCHRONIZATIONOBJECT2)(_In_ CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_LOCK)(_Inout_ D3DKMT_LOCK*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_UNLOCK)(_In_ CONST D3DKMT_UNLOCK*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETDISPLAYMODELIST)(_Inout_ D3DKMT_GETDISPLAYMODELIST*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETDISPLAYMODE)(_Inout_ CONST D3DKMT_SETDISPLAYMODE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETMULTISAMPLEMETHODLIST)(_Inout_ D3DKMT_GETMULTISAMPLEMETHODLIST*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_PRESENT)(_In_ CONST D3DKMT_PRESENT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_RENDER)(_Inout_ D3DKMT_RENDER*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETRUNTIMEDATA)(_Inout_ CONST D3DKMT_GETRUNTIMEDATA*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_QUERYADAPTERINFO)(_Inout_ CONST D3DKMT_QUERYADAPTERINFO*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMHDC)(_Inout_ D3DKMT_OPENADAPTERFROMHDC*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMGDIDISPLAYNAME)(_Inout_ D3DKMT_OPENADAPTERFROMGDIDISPLAYNAME*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMDEVICENAME)(_Inout_ D3DKMT_OPENADAPTERFROMDEVICENAME*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CLOSEADAPTER)(_In_ CONST D3DKMT_CLOSEADAPTER*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETSHAREDPRIMARYHANDLE)(_Inout_ D3DKMT_GETSHAREDPRIMARYHANDLE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_ESCAPE)(_In_ CONST D3DKMT_ESCAPE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETVIDPNSOURCEOWNER)(_In_ CONST D3DKMT_SETVIDPNSOURCEOWNER*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETPRESENTHISTORY)(_Inout_ D3DKMT_GETPRESENTHISTORY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEOVERLAY)(_Inout_ D3DKMT_CREATEOVERLAY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_UPDATEOVERLAY)(_In_ CONST D3DKMT_UPDATEOVERLAY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_FLIPOVERLAY)(_In_ CONST D3DKMT_FLIPOVERLAY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYOVERLAY)(_In_ CONST D3DKMT_DESTROYOVERLAY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_WAITFORVERTICALBLANKEVENT)(_In_ CONST D3DKMT_WAITFORVERTICALBLANKEVENT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETGAMMARAMP)(_In_ CONST D3DKMT_SETGAMMARAMP*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETDEVICESTATE)(_Inout_ D3DKMT_GETDEVICESTATE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEDCFROMMEMORY)(_Inout_ D3DKMT_CREATEDCFROMMEMORY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYDCFROMMEMORY)(_In_ CONST D3DKMT_DESTROYDCFROMMEMORY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETCONTEXTSCHEDULINGPRIORITY)(_In_ CONST D3DKMT_SETCONTEXTSCHEDULINGPRIORITY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETCONTEXTSCHEDULINGPRIORITY)(_Inout_ D3DKMT_GETCONTEXTSCHEDULINGPRIORITY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETPROCESSSCHEDULINGPRIORITYCLASS)(_In_ HANDLE, _In_ D3DKMT_SCHEDULINGPRIORITYCLASS);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETPROCESSSCHEDULINGPRIORITYCLASS)(_In_ HANDLE, _Out_ D3DKMT_SCHEDULINGPRIORITYCLASS*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_RELEASEPROCESSVIDPNSOURCEOWNERS)(_In_ HANDLE);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETSCANLINE)(_Inout_ D3DKMT_GETSCANLINE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CHANGESURFACEPOINTER)(_In_ CONST D3DKMT_CHANGESURFACEPOINTER*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETQUEUEDLIMIT)(_In_ CONST D3DKMT_SETQUEUEDLIMIT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_POLLDISPLAYCHILDREN)(_In_ CONST D3DKMT_POLLDISPLAYCHILDREN*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_INVALIDATEACTIVEVIDPN)(_In_ CONST D3DKMT_INVALIDATEACTIVEVIDPN*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CHECKOCCLUSION)(_In_ CONST D3DKMT_CHECKOCCLUSION*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_WAITFORIDLE)(_In_ CONST D3DKMT_WAITFORIDLE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CHECKMONITORPOWERSTATE)(_In_ CONST D3DKMT_CHECKMONITORPOWERSTATE*);
typedef _Check_return_ BOOLEAN  (APIENTRY *PFND3DKMT_CHECKEXCLUSIVEOWNERSHIP)();
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP)(_In_ CONST D3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT)(_In_ CONST D3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SHAREDPRIMARYLOCKNOTIFICATION)(_In_ CONST D3DKMT_SHAREDPRIMARYLOCKNOTIFICATION*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION)(_In_ CONST D3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEKEYEDMUTEX)(_Inout_ D3DKMT_CREATEKEYEDMUTEX*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENKEYEDMUTEX)(_Inout_ D3DKMT_OPENKEYEDMUTEX*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYKEYEDMUTEX)(_In_ CONST D3DKMT_DESTROYKEYEDMUTEX*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_ACQUIREKEYEDMUTEX)(_Inout_ D3DKMT_ACQUIREKEYEDMUTEX*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_RELEASEKEYEDMUTEX)(_Inout_ D3DKMT_RELEASEKEYEDMUTEX*);
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEKEYEDMUTEX2)(_Inout_ D3DKMT_CREATEKEYEDMUTEX2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENKEYEDMUTEX2)(_Inout_ D3DKMT_OPENKEYEDMUTEX2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_ACQUIREKEYEDMUTEX2)(_Inout_ D3DKMT_ACQUIREKEYEDMUTEX2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_RELEASEKEYEDMUTEX2)(_Inout_ D3DKMT_RELEASEKEYEDMUTEX2*);
#endif
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CONFIGURESHAREDRESOURCE)(_In_ D3DKMT_CONFIGURESHAREDRESOURCE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETOVERLAYSTATE)(_Inout_ D3DKMT_GETOVERLAYSTATE*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CHECKSHAREDRESOURCEACCESS)(_In_ CONST D3DKMT_CHECKSHAREDRESOURCEACCESS*);
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OFFERALLOCATIONS)(_In_ CONST D3DKMT_OFFERALLOCATIONS*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_RECLAIMALLOCATIONS)(_Inout_ CONST D3DKMT_RECLAIMALLOCATIONS*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_CREATEOUTPUTDUPL)(_In_ CONST D3DKMT_CREATE_OUTPUTDUPL*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_DESTROYOUTPUTDUPL)(_In_ CONST D3DKMT_DESTROY_OUTPUTDUPL*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OUTPUTDUPLGETFRAMEINFO)(_Inout_ D3DKMT_OUTPUTDUPL_GET_FRAMEINFO*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OUTPUTDUPLGETMETADATA)(_Inout_ D3DKMT_OUTPUTDUPL_METADATA*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OUTPUTDUPLGETPOINTERSHAPEDATA)(_Inout_ D3DKMT_OUTPUTDUPL_GET_POINTER_SHAPE_DATA*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OUTPUTDUPLRELEASEFRAME)(_In_ D3DKMT_OUTPUTDUPL_RELEASE_FRAME*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OUTPUTDUPLPRESENT)(_In_ CONST D3DKMT_OUTPUTDUPLPRESENT*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_ENUMADAPTERS)(_Inout_ CONST D3DKMT_ENUMADAPTERS*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_OPENADAPTERFROMLUID)(_Inout_ D3DKMT_OPENADAPTERFROMLUID*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_QUERYREMOTEVIDPNSOURCEFROMGDIDISPLAYNAME)(_Inout_ D3DKMT_QUERYREMOTEVIDPNSOURCEFROMGDIDISPLAYNAME*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETVIDPNSOURCEOWNER1)(_In_ CONST D3DKMT_SETVIDPNSOURCEOWNER1*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_PINDIRECTFLIPRESOURCES)(_In_ CONST D3DKMT_PINDIRECTFLIPRESOURCES*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_UNPINDIRECTFLIPRESOURCES)(_In_ CONST D3DKMT_UNPINDIRECTFLIPRESOURCES*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_WAITFORVERTICALBLANKEVENT2)(_In_ CONST D3DKMT_WAITFORVERTICALBLANKEVENT2*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETCONTEXTINPROCESSSCHEDULINGPRIORITY)(_In_ CONST D3DKMT_SETCONTEXTINPROCESSSCHEDULINGPRIORITY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETCONTEXTINPROCESSSCHEDULINGPRIORITY)(_Inout_ D3DKMT_GETCONTEXTINPROCESSSCHEDULINGPRIORITY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_PRESENTMULTIPLANEOVERLAY)(_In_ CONST D3DKMT_PRESENT_MULTIPLANE_OVERLAY*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_GETSHAREDRESOURCEADAPTERLUID)(_Inout_ D3DKMT_GETSHAREDRESOURCEADAPTERLUID*);
typedef _Check_return_ NTSTATUS (APIENTRY *PFND3DKMT_SETSTEREOENABLED)(_In_ BOOL);
#endif

#if !defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

#ifdef __cplusplus
extern "C"
{
#endif

EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateAllocation(_Inout_ D3DKMT_CREATEALLOCATION*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateAllocation2(_Inout_ D3DKMT_CREATEALLOCATION*); // _ADVSCH_
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTQueryResourceInfo(_Inout_ D3DKMT_QUERYRESOURCEINFO*);
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTQueryResourceInfoFromNtHandle(_Inout_ D3DKMT_QUERYRESOURCEINFOFROMNTHANDLE*);

EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTShareObjects(
    _In_range_(1, D3DKMT_MAX_OBJECTS_PER_HANDLE) UINT   cObjects,
    _In_reads_(cObjects) CONST D3DKMT_HANDLE *          hObjects,
    _In_ POBJECT_ATTRIBUTES                             pObjectAttributes,
    _In_ DWORD                                          dwDesiredAccess,
    _Out_ HANDLE *                                      phSharedNtHandle
    );

EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenNtHandleFromName(_Inout_ D3DKMT_OPENNTHANDLEFROMNAME*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenResourceFromNtHandle(_Inout_ D3DKMT_OPENRESOURCEFROMNTHANDLE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenSyncObjectFromNtHandle(_Inout_ D3DKMT_OPENSYNCOBJECTFROMNTHANDLE*);
#endif
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenResource(_Inout_ D3DKMT_OPENRESOURCE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenResource2(_Inout_ D3DKMT_OPENRESOURCE*); // _ADVSCH_
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyAllocation(_In_ CONST D3DKMT_DESTROYALLOCATION*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetAllocationPriority(_In_ CONST D3DKMT_SETALLOCATIONPRIORITY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTQueryAllocationResidency(_In_ CONST D3DKMT_QUERYALLOCATIONRESIDENCY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateDevice(_Inout_ D3DKMT_CREATEDEVICE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyDevice(_In_ CONST D3DKMT_DESTROYDEVICE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateContext(_Inout_ D3DKMT_CREATECONTEXT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyContext(_In_ CONST D3DKMT_DESTROYCONTEXT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateSynchronizationObject(_Inout_ D3DKMT_CREATESYNCHRONIZATIONOBJECT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateSynchronizationObject2(_Inout_ D3DKMT_CREATESYNCHRONIZATIONOBJECT2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenSynchronizationObject(_Inout_ D3DKMT_OPENSYNCHRONIZATIONOBJECT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroySynchronizationObject(_In_ CONST D3DKMT_DESTROYSYNCHRONIZATIONOBJECT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTWaitForSynchronizationObject(_In_ CONST D3DKMT_WAITFORSYNCHRONIZATIONOBJECT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTWaitForSynchronizationObject2(_In_ CONST D3DKMT_WAITFORSYNCHRONIZATIONOBJECT2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSignalSynchronizationObject(_In_ CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSignalSynchronizationObject2(_In_ CONST D3DKMT_SIGNALSYNCHRONIZATIONOBJECT2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTLock(_Inout_ D3DKMT_LOCK*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTUnlock(_In_ CONST D3DKMT_UNLOCK*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetDisplayModeList(_Inout_ D3DKMT_GETDISPLAYMODELIST*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetDisplayMode(_Inout_ CONST D3DKMT_SETDISPLAYMODE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetMultisampleMethodList(_Inout_ D3DKMT_GETMULTISAMPLEMETHODLIST*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTPresent(_In_ CONST D3DKMT_PRESENT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTRender(_Inout_ D3DKMT_RENDER*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetRuntimeData(_Inout_ CONST D3DKMT_GETRUNTIMEDATA*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTQueryAdapterInfo(_Inout_ CONST D3DKMT_QUERYADAPTERINFO*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenAdapterFromHdc(_Inout_ D3DKMT_OPENADAPTERFROMHDC*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenAdapterFromGdiDisplayName(_Inout_ D3DKMT_OPENADAPTERFROMGDIDISPLAYNAME*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenAdapterFromDeviceName(_Inout_ D3DKMT_OPENADAPTERFROMDEVICENAME*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCloseAdapter(_In_ CONST D3DKMT_CLOSEADAPTER*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetSharedPrimaryHandle(_Inout_ D3DKMT_GETSHAREDPRIMARYHANDLE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTEscape(_In_ CONST D3DKMT_ESCAPE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetVidPnSourceOwner(_In_ CONST D3DKMT_SETVIDPNSOURCEOWNER*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetPresentHistory(_Inout_ D3DKMT_GETPRESENTHISTORY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetPresentQueueEvent(_In_ D3DKMT_HANDLE hAdapter, _Inout_ HANDLE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateOverlay(_Inout_ D3DKMT_CREATEOVERLAY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTUpdateOverlay(_In_ CONST D3DKMT_UPDATEOVERLAY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTFlipOverlay(_In_ CONST D3DKMT_FLIPOVERLAY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyOverlay(_In_ CONST D3DKMT_DESTROYOVERLAY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTWaitForVerticalBlankEvent(_In_ CONST D3DKMT_WAITFORVERTICALBLANKEVENT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetGammaRamp(_In_ CONST D3DKMT_SETGAMMARAMP*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetDeviceState(_Inout_ D3DKMT_GETDEVICESTATE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateDCFromMemory(_Inout_ D3DKMT_CREATEDCFROMMEMORY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyDCFromMemory(_In_ CONST D3DKMT_DESTROYDCFROMMEMORY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetContextSchedulingPriority(_In_ CONST D3DKMT_SETCONTEXTSCHEDULINGPRIORITY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetContextSchedulingPriority(_Inout_ D3DKMT_GETCONTEXTSCHEDULINGPRIORITY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetProcessSchedulingPriorityClass(_In_ HANDLE, _In_ D3DKMT_SCHEDULINGPRIORITYCLASS);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetProcessSchedulingPriorityClass(_In_ HANDLE, _Out_ D3DKMT_SCHEDULINGPRIORITYCLASS*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTReleaseProcessVidPnSourceOwners(_In_ HANDLE);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetScanLine(_Inout_ D3DKMT_GETSCANLINE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTChangeSurfacePointer(_In_ CONST D3DKMT_CHANGESURFACEPOINTER*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetQueuedLimit(_In_ CONST D3DKMT_SETQUEUEDLIMIT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTPollDisplayChildren(_In_ CONST D3DKMT_POLLDISPLAYCHILDREN*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTInvalidateActiveVidPn(_In_ CONST D3DKMT_INVALIDATEACTIVEVIDPN*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCheckOcclusion(_In_ CONST D3DKMT_CHECKOCCLUSION*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTWaitForIdle(IN CONST D3DKMT_WAITFORIDLE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCheckMonitorPowerState(_In_ CONST D3DKMT_CHECKMONITORPOWERSTATE*);
EXTERN_C _Check_return_ BOOLEAN  APIENTRY D3DKMTCheckExclusiveOwnership(VOID);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCheckVidPnExclusiveOwnership(_In_ CONST D3DKMT_CHECKVIDPNEXCLUSIVEOWNERSHIP*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetDisplayPrivateDriverFormat(_In_ CONST D3DKMT_SETDISPLAYPRIVATEDRIVERFORMAT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSharedPrimaryLockNotification(_In_ CONST D3DKMT_SHAREDPRIMARYLOCKNOTIFICATION*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSharedPrimaryUnLockNotification(_In_ CONST D3DKMT_SHAREDPRIMARYUNLOCKNOTIFICATION*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateKeyedMutex(_Inout_ D3DKMT_CREATEKEYEDMUTEX*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenKeyedMutex(_Inout_ D3DKMT_OPENKEYEDMUTEX*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyKeyedMutex(_In_ CONST D3DKMT_DESTROYKEYEDMUTEX*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTAcquireKeyedMutex(_Inout_ D3DKMT_ACQUIREKEYEDMUTEX*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTReleaseKeyedMutex(_Inout_ D3DKMT_RELEASEKEYEDMUTEX*);
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateKeyedMutex2(_Inout_ D3DKMT_CREATEKEYEDMUTEX2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenKeyedMutex2(_Inout_ D3DKMT_OPENKEYEDMUTEX2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTAcquireKeyedMutex2(_Inout_ D3DKMT_ACQUIREKEYEDMUTEX2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTReleaseKeyedMutex2(_Inout_ D3DKMT_RELEASEKEYEDMUTEX2*);
#endif
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTConfigureSharedResource(_In_ CONST D3DKMT_CONFIGURESHAREDRESOURCE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetOverlayState(_Inout_ D3DKMT_GETOVERLAYSTATE*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCheckSharedResourceAccess(_In_ CONST D3DKMT_CHECKSHAREDRESOURCEACCESS*);
#if (DXGKDDI_INTERFACE_VERSION >= DXGKDDI_INTERFACE_VERSION_WIN8)
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOfferAllocations(_In_ CONST D3DKMT_OFFERALLOCATIONS*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTReclaimAllocations(_Inout_ CONST D3DKMT_RECLAIMALLOCATIONS*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTCreateOutputDupl(_In_ CONST D3DKMT_CREATE_OUTPUTDUPL*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTDestroyOutputDupl(_In_ CONST D3DKMT_DESTROY_OUTPUTDUPL*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOutputDuplGetFrameInfo(_Inout_ D3DKMT_OUTPUTDUPL_GET_FRAMEINFO*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOutputDuplGetMetaData(_Inout_ D3DKMT_OUTPUTDUPL_METADATA*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOutputDuplGetPointerShapeData(_Inout_ D3DKMT_OUTPUTDUPL_GET_POINTER_SHAPE_DATA*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOutputDuplReleaseFrame(_Inout_ D3DKMT_OUTPUTDUPL_RELEASE_FRAME*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOutputDuplPresent(_In_ CONST D3DKMT_OUTPUTDUPLPRESENT*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTEnumAdapters(_Inout_ CONST D3DKMT_ENUMADAPTERS*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTOpenAdapterFromLuid(_Inout_ CONST D3DKMT_OPENADAPTERFROMLUID*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTQueryRemoteVidPnSourceFromGdiDisplayName(_Inout_ D3DKMT_QUERYREMOTEVIDPNSOURCEFROMGDIDISPLAYNAME*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTSetVidPnSourceOwner1(_In_ CONST D3DKMT_SETVIDPNSOURCEOWNER1*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTWaitForVerticalBlankEvent2(_In_ CONST D3DKMT_WAITFORVERTICALBLANKEVENT2*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTPresentMultiPlaneOverlay(_In_ CONST D3DKMT_PRESENT_MULTIPLANE_OVERLAY*);
EXTERN_C _Check_return_ NTSTATUS APIENTRY D3DKMTGetSharedResourceAdapterLuid(_Inout_ D3DKMT_GETSHAREDRESOURCEADAPTERLUID*);
#endif

#ifdef __cplusplus
}
#endif

#endif // !defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)

#endif // (NTDDI_VERSION >= NTDDI_LONGHORN) || defined(D3DKMDT_SPECIAL_MULTIPLATFORM_TOOL)


#pragma warning(pop)

#endif /* _D3DKMTHK_H_ */

