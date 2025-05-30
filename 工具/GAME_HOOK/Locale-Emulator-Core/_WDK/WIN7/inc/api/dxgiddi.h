/*==========================================================================;
 *
 *  Copyright (C) Microsoft Corporation.  All Rights Reserved.
 *
 *  Content: DXGI Basic Device Driver Interface Definitions
 *
 ***************************************************************************/

#ifndef _DXGIDDI_H
#define _DXGIDDI_H


#include "dxgitype.h"


//--------------------------------------------------------------------------------------------------------
// DXGI error codes
//--------------------------------------------------------------------------------------------------------
#define _FACDXGI_DDI 0x87b
#define MAKE_DXGI_DDI_HRESULT( code )  MAKE_HRESULT( 1, _FACDXGI_DDI, code )
#define MAKE_DXGI_DDI_STATUS( code )   MAKE_HRESULT( 0, _FACDXGI_DDI, code )

#define DXGI_DDI_ERR_WASSTILLDRAWING MAKE_DXGI_DDI_HRESULT(1)
#define DXGI_DDI_ERR_UNSUPPORTED MAKE_DXGI_DDI_HRESULT(2)
#define DXGI_DDI_ERR_NONEXCLUSIVE MAKE_DXGI_DDI_HRESULT(3)

//========================================================================================================
// This is the standard DDI that any DXGI-enabled user-mode driver should support
//

//--------------------------------------------------------------------------------------------------------
typedef	UINT_PTR	DXGI_DDI_HDEVICE;
typedef	UINT_PTR	DXGI_DDI_HRESOURCE;

//--------------------------------------------------------------------------------------------------------
typedef enum DXGI_DDI_RESIDENCY
{
    DXGI_DDI_RESIDENCY_FULLY_RESIDENT = 1,
    DXGI_DDI_RESIDENCY_RESIDENT_IN_SHARED_MEMORY = 2,
    DXGI_DDI_RESIDENCY_EVICTED_TO_DISK = 3,
} DXGI_DDI_RESIDENCY;

//--------------------------------------------------------------------------------------------------------
typedef enum DXGI_DDI_FLIP_INTERVAL_TYPE
{
    DXGI_DDI_FLIP_INTERVAL_IMMEDIATE = 0,
    DXGI_DDI_FLIP_INTERVAL_ONE       = 1,
    DXGI_DDI_FLIP_INTERVAL_TWO       = 2,
    DXGI_DDI_FLIP_INTERVAL_THREE     = 3,
    DXGI_DDI_FLIP_INTERVAL_FOUR      = 4,
} DXGI_DDI_FLIP_INTERVAL_TYPE;

//--------------------------------------------------------------------------------------------------------
typedef struct DXGI_DDI_PRESENT_FLAGS
{
    union
    {
        struct
        {
            UINT    Blt                 : 1;        // 0x00000001
            UINT    Flip                : 1;        // 0x00000002
            UINT    Reserved            :30;        // 0xFFFFFFFC            
        };
        UINT    Value;
    };            
} DXGI_DDI_PRESENT_FLAGS;

//--------------------------------------------------------------------------------------------------------
typedef struct DXGI_DDI_ARG_PRESENT
{
    DXGI_DDI_HDEVICE            hDevice;             //in
    DXGI_DDI_HRESOURCE          hSurfaceToPresent;   //in
    UINT                        SrcSubResourceIndex; // Index of surface level
    DXGI_DDI_HRESOURCE          hDstResource;        // if non-zero, it's the destination of the present
    UINT                        DstSubResourceIndex; // Index of surface level
    void *                      pDXGIContext;        // opaque: Pass this to the Present callback
    DXGI_DDI_PRESENT_FLAGS      Flags;               // Presentation flags.
    DXGI_DDI_FLIP_INTERVAL_TYPE FlipInterval;        // Presentation interval (flip only)
}DXGI_DDI_ARG_PRESENT;

//--------------------------------------------------------------------------------------------------------
typedef struct DXGI_DDI_ARG_ROTATE_RESOURCE_IDENTITIES
{
    DXGI_DDI_HDEVICE hDevice; //in
    CONST DXGI_DDI_HRESOURCE* pResources; //in: Array of Resources to rotate identities; 0 <= 1, 1 <= 2, etc.
    UINT Resources;
} DXGI_DDI_ARG_ROTATE_RESOURCE_IDENTITIES;

typedef struct DXGI_DDI_ARG_GET_GAMMA_CONTROL_CAPS
{
    DXGI_DDI_HDEVICE		            hDevice;			//in
    DXGI_GAMMA_CONTROL_CAPABILITIES *   pGammaCapabilities; //in/out
} DXGI_DDI_ARG_GET_GAMMA_CONTROL_CAPS;

typedef struct DXGI_DDI_ARG_SET_GAMMA_CONTROL
{
    DXGI_DDI_HDEVICE		            hDevice;			//in
    DXGI_GAMMA_CONTROL                  GammaControl;       //in
} DXGI_DDI_ARG_SET_GAMMA_CONTROL;

typedef struct DXGI_DDI_ARG_SETDISPLAYMODE
{
    DXGI_DDI_HDEVICE		    hDevice;			    //in
    DXGI_DDI_HRESOURCE          hResource;              // Source surface
    UINT                        SubResourceIndex;       // Index of surface level
} DXGI_DDI_ARG_SETDISPLAYMODE;

typedef struct DXGI_DDI_ARG_SETRESOURCEPRIORITY
{
    DXGI_DDI_HDEVICE            hDevice;                //in
    DXGI_DDI_HRESOURCE          hResource;              //in
    UINT                        Priority;               //in
} DXGI_DDI_ARG_SETRESOURCEPRIORITY;

typedef struct DXGI_DDI_ARG_QUERYRESOURCERESIDENCY
{
    DXGI_DDI_HDEVICE            hDevice;                //in
    __ecount( Resources ) CONST DXGI_DDI_HRESOURCE *  pResources;             //in
    __ecount( Resources ) DXGI_DDI_RESIDENCY *        pStatus;                //out
    SIZE_T                      Resources;              //in
} DXGI_DDI_ARG_QUERYRESOURCERESIDENCY;

//--------------------------------------------------------------------------------------------------------
// Remarks: Fractional value used to represent vertical and horizontal frequencies of a video mode
//          (i.e. VSync and HSync). Vertical frequencies are stored in Hz. Horizontal frequencies
//          are stored in KHz.
//          The dynamic range of this encoding format, given 10^-7 resolution is {0..(2^32 - 1) / 10^7},
//          which translates to {0..428.4967296} [Hz] for vertical frequencies and {0..428.4967296} [KHz]
//          for horizontal frequencies. This sub-microseconds precision range should be acceptable even
//          for a pro-video application (error in one microsecond for video signal synchronization would
//          imply a time drift with a cycle of 10^7/(60*60*24) = 115.741 days.
//
//          If rational number with a finite fractional sequence, use denominator of form 10^(length of fractional sequence).
//          If rational number without a finite fractional sequence, or a sequence exceeding the precision allowed by the 
//          dynamic range of the denominator, or an irrational number, use an appropriate ratio of integers which best 
//          represents the value.
//          
typedef struct DXGI_DDI_RATIONAL
{
    UINT Numerator;
    UINT Denominator;
} DXGI_DDI_RATIONAL;

//--------------------------------------------------------------------------------------------------------
typedef enum DXGI_DDI_MODE_SCANLINE_ORDER
{
    DXGI_DDI_MODE_SCANLINE_ORDER_UNSPECIFIED = 0,
    DXGI_DDI_MODE_SCANLINE_ORDER_PROGRESSIVE = 1,
    DXGI_DDI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST = 2,
    DXGI_DDI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST = 3,
} DXGI_DDI_MODE_SCANLINE_ORDER;

typedef enum DXGI_DDI_MODE_SCALING
{
    DXGI_DDI_MODE_SCALING_UNSPECIFIED = 0,
    DXGI_DDI_MODE_SCALING_STRETCHED = 1,
    DXGI_DDI_MODE_SCALING_CENTERED = 2,
} DXGI_DDI_MODE_SCALING;

typedef enum DXGI_DDI_MODE_ROTATION
{
    DXGI_DDI_MODE_ROTATION_UNSPECIFIED = 0,
    DXGI_DDI_MODE_ROTATION_IDENTITY = 1,
    DXGI_DDI_MODE_ROTATION_ROTATE90 = 2,
    DXGI_DDI_MODE_ROTATION_ROTATE180 = 3,
    DXGI_DDI_MODE_ROTATION_ROTATE270 = 4,
} DXGI_DDI_MODE_ROTATION;

typedef struct DXGI_DDI_MODE_DESC
{
    UINT Width;
    UINT Height;
    DXGI_FORMAT Format;
    DXGI_DDI_RATIONAL RefreshRate;
    DXGI_DDI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_DDI_MODE_ROTATION Rotation;
    DXGI_DDI_MODE_SCALING Scaling;
} DXGI_DDI_MODE_DESC;

// Bit indicates that UMD has the option to prevent this Resource from ever being a Primary
// UMD can prevent the actual flip (from optional primary to regular primary) and use a copy
// operation, during Present. Thus, it's possible the UMD can opt out of this Resource being
// actually used as a primary.
#define DXGI_DDI_PRIMARY_OPTIONAL 0x1

// Bit indicates that the Primary really represents the IDENTITY rotation, eventhough it will
// be used with non-IDENTITY display modes, since the application will take on the burden of
// honoring the output orientation by rotating, say the viewport and projection matrix.
#define DXGI_DDI_PRIMARY_NONPREROTATED 0x2


// Bit indicates that the driver cannot tolerate setting any subresource of the specified
// resource as a primary. The UMD should set this bit at resource creation time if it
// chooses to implement presentation from this surface via a copy operation. The DXGI 
// runtime will not employ flip-style presentation if this bit is set
#define DXGI_DDI_PRIMARY_DRIVER_FLAG_NO_SCANOUT 0x1

typedef struct DXGI_DDI_PRIMARY_DESC
{
    UINT                           Flags;			// [in]
    D3DDDI_VIDEO_PRESENT_SOURCE_ID VidPnSourceId;	// [in]
    DXGI_DDI_MODE_DESC             ModeDesc;		// [in]
    UINT						   DriverFlags;		// [out] Filled by the driver 
} DXGI_DDI_PRIMARY_DESC;

typedef struct DXGI_DDI_ARG_BLT_FLAGS
{
    union
    {
        struct
        {
            UINT    Resolve                : 1;     // 0x00000001
            UINT    Convert                : 1;     // 0x00000002
            UINT    Stretch                : 1;     // 0x00000004
            UINT    Present                : 1;     // 0x00000008
            UINT    Reserved               :28;
        };
        UINT Value;
    };
} DXGI_DDI_ARG_BLT_FLAGS;

typedef struct DXGI_DDI_ARG_BLT
{
    DXGI_DDI_HDEVICE            hDevice;                //in
    DXGI_DDI_HRESOURCE          hDstResource;           //in
    UINT                        DstSubresource;         //in
    UINT                        DstLeft;                //in
    UINT                        DstTop;                 //in
    UINT                        DstRight;               //in
    UINT                        DstBottom;              //in
    DXGI_DDI_HRESOURCE          hSrcResource;           //in
    UINT                        SrcSubresource;         //in
    DXGI_DDI_ARG_BLT_FLAGS      Flags;                  //in
    DXGI_DDI_MODE_ROTATION      Rotate;                 //in
} DXGI_DDI_ARG_BLT;

typedef struct DXGI_DDI_ARG_RESOLVESHAREDRESOURCE
{
    DXGI_DDI_HDEVICE            hDevice;                //in
    DXGI_DDI_HRESOURCE          hResource;              //in
} DXGI_DDI_ARG_RESOLVESHAREDRESOURCE;

//--------------------------------------------------------------------------------------------------------
typedef struct DXGI_DDI_BASE_FUNCTIONS
{
    HRESULT ( __stdcall /*APIENTRY*/ * pfnPresent )               (DXGI_DDI_ARG_PRESENT*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnGetGammaCaps )          (DXGI_DDI_ARG_GET_GAMMA_CONTROL_CAPS*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnSetDisplayMode )        (DXGI_DDI_ARG_SETDISPLAYMODE*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnSetResourcePriority )   (DXGI_DDI_ARG_SETRESOURCEPRIORITY*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnQueryResourceResidency )(DXGI_DDI_ARG_QUERYRESOURCERESIDENCY*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnRotateResourceIdentities )(DXGI_DDI_ARG_ROTATE_RESOURCE_IDENTITIES*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnBlt                    )(DXGI_DDI_ARG_BLT*);
}DXGI_DDI_BASE_FUNCTIONS;

//--------------------------------------------------------------------------------------------------------
typedef struct DXGI1_1_DDI_BASE_FUNCTIONS
{
    HRESULT ( __stdcall /*APIENTRY*/ * pfnPresent )               (DXGI_DDI_ARG_PRESENT*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnGetGammaCaps )          (DXGI_DDI_ARG_GET_GAMMA_CONTROL_CAPS*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnSetDisplayMode )        (DXGI_DDI_ARG_SETDISPLAYMODE*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnSetResourcePriority )   (DXGI_DDI_ARG_SETRESOURCEPRIORITY*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnQueryResourceResidency )(DXGI_DDI_ARG_QUERYRESOURCERESIDENCY*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnRotateResourceIdentities )(DXGI_DDI_ARG_ROTATE_RESOURCE_IDENTITIES*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnBlt                    )(DXGI_DDI_ARG_BLT*);
    HRESULT ( __stdcall /*APIENTRY*/ * pfnResolveSharedResource ) (DXGI_DDI_ARG_RESOLVESHAREDRESOURCE*);
}DXGI1_1_DDI_BASE_FUNCTIONS;

//========================================================================================================
// DXGI callback definitions.
//


//--------------------------------------------------------------------------------------------------------
typedef struct DXGIDDICB_PRESENT
{
    D3DKMT_HANDLE   hSrcAllocation;             // in: The allocation of which content will be presented
    D3DKMT_HANDLE   hDstAllocation;             // in: if non-zero, it's the destination allocation of the present
    void *          pDXGIContext;               // opaque: Fill this with the value in DXGI_DDI_ARG_PRESENT.pDXGIContext
    HANDLE          hContext;                   // in: Context being submitted to.
    UINT            BroadcastContextCount;      // in: Specifies the number of context 
                                                //     to broadcast this present operation to.
                                                //     Only supported for flip operation.
    HANDLE          BroadcastContext[D3DDDI_MAX_BROADCAST_CONTEXT]; // in: Specifies the handle of the context to
                                                                    //     broadcast to.    
} DXGIDDICB_PRESENT;


typedef __checkReturn HRESULT (APIENTRY CALLBACK *PFNDDXGIDDI_PRESENTCB)(
        __in HANDLE hDevice, __in CONST DXGIDDICB_PRESENT*);

//--------------------------------------------------------------------------------------------------------
typedef struct DXGI_DDI_BASE_CALLBACKS
{
    PFNDDXGIDDI_PRESENTCB                pfnPresentCb;
} DXGI_DDI_BASE_CALLBACKS;


//========================================================================================================
// DXGI basic DDI device creation arguments

typedef struct DXGI_DDI_BASE_ARGS
{
    DXGI_DDI_BASE_CALLBACKS *pDXGIBaseCallbacks;            // in: The driver should record this pointer for later use
    union
    {
        DXGI1_1_DDI_BASE_FUNCTIONS *pDXGIDDIBaseFunctions2; // in/out: The driver should fill the denoted struct with DXGI base driver entry points
        DXGI_DDI_BASE_FUNCTIONS *pDXGIDDIBaseFunctions;     // in/out: The driver should fill the denoted struct with DXGI base driver entry points
    };
} DXGI_DDI_BASE_ARGS;

#endif /* _DXGIDDI_H */


