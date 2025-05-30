
//---------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation.  All rights reserved.
//---------------------------------------------------------------------------
#pragma once

#include <dxgitype.h>   // for DXGI_RATIONAL
#include <dxgi1_2.h>    // for DXGI_ALPHA_MODE



#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#if (NTDDI_VERSION >= NTDDI_WIN8)


//
// DirectComposition types
//

enum DCOMPOSITION_BITMAP_INTERPOLATION_MODE
{
    DCOMPOSITION_BITMAP_INTERPOLATION_MODE_NEAREST_NEIGHBOR = 0,
    DCOMPOSITION_BITMAP_INTERPOLATION_MODE_LINEAR           = 1,

    DCOMPOSITION_BITMAP_INTERPOLATION_MODE_INHERIT          = 0xffffffff
};

enum DCOMPOSITION_BORDER_MODE
{
    DCOMPOSITION_BORDER_MODE_SOFT       = 0,
    DCOMPOSITION_BORDER_MODE_HARD       = 1,

    DCOMPOSITION_BORDER_MODE_INHERIT    = 0xffffffff
};

enum DCOMPOSITION_COMPOSITE_MODE
{
    DCOMPOSITION_COMPOSITE_MODE_SOURCE_OVER        = 0,
    DCOMPOSITION_COMPOSITE_MODE_DESTINATION_INVERT = 1,

    DCOMPOSITION_COMPOSITE_MODE_INHERIT            = 0xffffffff
};

typedef struct
{
    LARGE_INTEGER lastFrameTime;
    DXGI_RATIONAL currentCompositionRate;
    LARGE_INTEGER currentTime;
    LARGE_INTEGER timeFrequency;
    LARGE_INTEGER nextEstimatedFrameTime;
} DCOMPOSITION_FRAME_STATISTICS;


//
// CompositionSurface specific access flags
//

#define COMPOSITIONSURFACE_READ         0x0001L
#define COMPOSITIONSURFACE_WRITE        0x0002L

#define COMPOSITIONSURFACE_ALL_ACCESS   (COMPOSITIONSURFACE_READ    |\
                                         COMPOSITIONSURFACE_WRITE)

#endif // NTDDI_WIN8

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

