//
//    Copyright (C) Microsoft.  All rights reserved.
//
#ifndef __dxgitype_h__
#define __dxgitype_h__


#include "dxgiformat.h"

#define _FACDXGI    0x87a
#define MAKE_DXGI_HRESULT(code) MAKE_HRESULT(1, _FACDXGI, code)
#define MAKE_DXGI_STATUS(code)  MAKE_HRESULT(0, _FACDXGI, code)

// DXGI error messages have moved to winerror.h

#define DXGI_CPU_ACCESS_NONE                    ( 0 )
#define DXGI_CPU_ACCESS_DYNAMIC                 ( 1 )
#define DXGI_CPU_ACCESS_READ_WRITE              ( 2 )
#define DXGI_CPU_ACCESS_SCRATCH                 ( 3 )
#define DXGI_CPU_ACCESS_FIELD                   15

#define DXGI_USAGE_SHADER_INPUT                 ( 1L << (0 + 4) )
#define DXGI_USAGE_RENDER_TARGET_OUTPUT         ( 1L << (1 + 4) )
#define DXGI_USAGE_BACK_BUFFER                  ( 1L << (2 + 4) )
#define DXGI_USAGE_SHARED                       ( 1L << (3 + 4) )
#define DXGI_USAGE_READ_ONLY                    ( 1L << (4 + 4) )
#define DXGI_USAGE_DISCARD_ON_PRESENT           ( 1L << (5 + 4) )
#define DXGI_USAGE_UNORDERED_ACCESS             ( 1L << (6 + 4) )

typedef struct DXGI_RGB
{
    float Red;
    float Green;
    float Blue;
} DXGI_RGB;

#ifndef D3DCOLORVALUE_DEFINED
typedef struct _D3DCOLORVALUE {
    float r;
    float g;
    float b;
    float a;
} D3DCOLORVALUE;

#define D3DCOLORVALUE_DEFINED
#endif

typedef D3DCOLORVALUE DXGI_RGBA;

typedef struct DXGI_GAMMA_CONTROL
{
    DXGI_RGB Scale;
    DXGI_RGB Offset;
    DXGI_RGB GammaCurve[ 1025 ];
} DXGI_GAMMA_CONTROL;

typedef struct DXGI_GAMMA_CONTROL_CAPABILITIES
{
    BOOL ScaleAndOffsetSupported;
    float MaxConvertedValue;
    float MinConvertedValue;
    UINT NumGammaControlPoints;
    float ControlPointPositions[1025];
} DXGI_GAMMA_CONTROL_CAPABILITIES;

typedef struct DXGI_RATIONAL
{
    UINT Numerator;
    UINT Denominator;
} DXGI_RATIONAL;

typedef enum DXGI_MODE_SCANLINE_ORDER
{
    DXGI_MODE_SCANLINE_ORDER_UNSPECIFIED        = 0,
    DXGI_MODE_SCANLINE_ORDER_PROGRESSIVE        = 1,
    DXGI_MODE_SCANLINE_ORDER_UPPER_FIELD_FIRST  = 2,
    DXGI_MODE_SCANLINE_ORDER_LOWER_FIELD_FIRST  = 3
} DXGI_MODE_SCANLINE_ORDER;

typedef enum DXGI_MODE_SCALING
{
    DXGI_MODE_SCALING_UNSPECIFIED   = 0,
    DXGI_MODE_SCALING_CENTERED      = 1,
    DXGI_MODE_SCALING_STRETCHED     = 2
} DXGI_MODE_SCALING;

typedef enum DXGI_MODE_ROTATION
{
    DXGI_MODE_ROTATION_UNSPECIFIED  = 0,
    DXGI_MODE_ROTATION_IDENTITY     = 1,
    DXGI_MODE_ROTATION_ROTATE90     = 2,
    DXGI_MODE_ROTATION_ROTATE180    = 3,
    DXGI_MODE_ROTATION_ROTATE270    = 4
} DXGI_MODE_ROTATION;

typedef struct DXGI_MODE_DESC
{
    UINT Width;
    UINT Height;
    DXGI_RATIONAL RefreshRate;
    DXGI_FORMAT Format;
    DXGI_MODE_SCANLINE_ORDER ScanlineOrdering;
    DXGI_MODE_SCALING Scaling;
} DXGI_MODE_DESC;

typedef struct DXGI_SAMPLE_DESC
{
    UINT Count;
    UINT Quality;
} DXGI_SAMPLE_DESC;

#endif // __dxgitype_h__

