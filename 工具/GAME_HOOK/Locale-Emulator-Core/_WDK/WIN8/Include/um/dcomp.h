
//---------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation.  All rights reserved.
//---------------------------------------------------------------------------
#pragma once


#include <dcomptypes.h>     // for CompositionSurfaceType
#include <d2dbasetypes.h>   // for D2D_MATRIX_3X2_F
#ifndef D3DMATRIX_DEFINED
#include <d3d9types.h>      // for D3DMATRIX
#endif
#include <dcompanimation.h> // for IDirectCompositionAnimation interface
#include <d2d1_1.h>         // for D2D1_COMPOSITE_MODE


#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)

#if (NTDDI_VERSION >= NTDDI_WIN8)


typedef interface IDCompositionDevice               IDCompositionDevice;
typedef interface IDCompositionTarget               IDCompositionTarget;
typedef interface IDCompositionVisual               IDCompositionVisual;
typedef interface IDCompositionTransform            IDCompositionTransform;
typedef interface IDCompositionTransform3D          IDCompositionTransform3D;
typedef interface IDCompositionTranslateTransform   IDCompositionTranslateTransform;
typedef interface IDCompositionTranslateTransform3D IDCompositionTranslateTransform3D;
typedef interface IDCompositionScaleTransform       IDCompositionScaleTransform;
typedef interface IDCompositionScaleTransform3D     IDCompositionScaleTransform3D;
typedef interface IDCompositionRotateTransform      IDCompositionRotateTransform;
typedef interface IDCompositionRotateTransform3D    IDCompositionRotateTransform3D;
typedef interface IDCompositionSkewTransform        IDCompositionSkewTransform;
typedef interface IDCompositionMatrixTransform      IDCompositionMatrixTransform;
typedef interface IDCompositionMatrixTransform3D    IDCompositionMatrixTransform3D;
typedef interface IDCompositionEffect               IDCompositionEffect;
typedef interface IDCompositionEffectGroup          IDCompositionEffectGroup;
typedef interface IDCompositionClip                 IDCompositionClip;
typedef interface IDCompositionRectangleClip        IDCompositionRectangleClip;
typedef interface IDCompositionAnimation            IDCompositionAnimation;
typedef interface IDCompositionSurface              IDCompositionSurface;
typedef interface IDCompositionVirtualSurface       IDCompositionVirtualSurface;

#ifndef __IDXGISwapChain1_FWD_DEFINED__
#define __IDXGISwapChain1_FWD_DEFINED__
typedef interface IDXGISwapChain1 IDXGISwapChain1;
#endif // __IDXGISwapChain1_FWD_DEFINED__


//+-----------------------------------------------------------------------------
//
//  Function:
//      DCompositionCreateDevice
//
//  Synopsis:
//      Creates a new DirectComposition device object, which can be used to create
//      other DirectComposition objects.
//
//------------------------------------------------------------------------------
STDAPI DCompositionCreateDevice(
    _In_ IDXGIDevice *dxgiDevice,
    _In_ REFIID iid,
    _Outptr_ void **dcompositionDevice
    );

//+-----------------------------------------------------------------------------
//
//  Function:
//      DCompositionCreateSurfaceHandle
//
//  Synopsis:
//      Creates a new composition surface object, which can be bound to a
//      DirectX swap chain or swap buffer or to a GDI bitmap and associated
//      with a visual.
//
//------------------------------------------------------------------------------
STDAPI DCompositionCreateSurfaceHandle(
    _In_ DWORD desiredAccess,
    _In_opt_ SECURITY_ATTRIBUTES *securityAttributes,
    _Out_ HANDLE *surfaceHandle
    );

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionDevice
//
//  Synopsis:
//      Serves as the root factory for all other DirectComposition objects and
//      controls transactional composition.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionDevice
DECLARE_INTERFACE_IID_(IDCompositionDevice, IUnknown, "C37EA93A-E7AA-450D-B16F-9746CB0407F3")
{
    // Commits all DirectComposition commands pending on this device.
    STDMETHOD(Commit)(THIS
        ) PURE;

    // Waits for the last Commit to be processed by the composition engine
    STDMETHOD(WaitForCommitCompletion)(THIS
        ) PURE;

    // Gets timing information about the composition engine.
    STDMETHOD(GetFrameStatistics)(THIS_
        _Out_ DCOMPOSITION_FRAME_STATISTICS *statistics
        ) PURE;

    // Creates a composition target bound to a window represented by an HWND.
    STDMETHOD(CreateTargetForHwnd)(THIS_
        _In_ HWND hwnd,
        BOOL topmost,
        _Outptr_ IDCompositionTarget **target
        ) PURE;

    // Creates a new visual object.
    STDMETHOD(CreateVisual)(THIS_
        _Outptr_ IDCompositionVisual **visual
        ) PURE;

    // Creates a DirectComposition surface object
    STDMETHOD(CreateSurface)(THIS_
        _In_ UINT width,
        _In_ UINT height,
        _In_ DXGI_FORMAT pixelFormat,
        _In_ DXGI_ALPHA_MODE alphaMode,
        _Outptr_ IDCompositionSurface **surface
        ) PURE;

    // Creates a DirectComposition virtual surface object
    STDMETHOD(CreateVirtualSurface)(THIS_
        _In_ UINT initialWidth,
        _In_ UINT initialHeight,
        _In_ DXGI_FORMAT pixelFormat,
        _In_ DXGI_ALPHA_MODE alphaMode,
        _Outptr_ IDCompositionVirtualSurface **virtualSurface
        ) PURE;

    // Creates a surface wrapper around a pre-existing surface that can be associated with one or more visuals for composition.
    STDMETHOD(CreateSurfaceFromHandle)(THIS_
        _In_ HANDLE handle,
        _Outptr_ IUnknown **surface
        ) PURE;

    // Creates a wrapper object that represents the rasterization of a layered window and which can be associated with a visual for composition.
    STDMETHOD(CreateSurfaceFromHwnd)(THIS_
        _In_ HWND hwnd,
        _Outptr_ IUnknown **surface
        ) PURE;

    // Creates a 2D translation transform object.
    STDMETHOD(CreateTranslateTransform)(THIS_
        _Outptr_ IDCompositionTranslateTransform **translateTransform
        ) PURE;

    // Creates a 2D scale transform object.
    STDMETHOD(CreateScaleTransform)(THIS_
        _Outptr_ IDCompositionScaleTransform **scaleTransform
        ) PURE;

    // Creates a 2D rotation transform object.
    STDMETHOD(CreateRotateTransform)(THIS_
        _Outptr_ IDCompositionRotateTransform **rotateTransform
        ) PURE;

    // Creates a 2D skew transform object.
    STDMETHOD(CreateSkewTransform)(THIS_
        _Outptr_ IDCompositionSkewTransform **skewTransform
        ) PURE;

    // Creates a 2D 3x2 matrix transform object.
    STDMETHOD(CreateMatrixTransform)(THIS_
        _Outptr_ IDCompositionMatrixTransform **matrixTransform
        ) PURE;

    // Creates a 2D transform object that holds an array of 2D transform objects.
    STDMETHOD(CreateTransformGroup)(THIS_
        _In_reads_(elements) IDCompositionTransform **transforms,
        UINT elements,
        _Outptr_ IDCompositionTransform **transformGroup
        ) PURE;

    // Creates a 3D translation transform object.
    STDMETHOD(CreateTranslateTransform3D)(THIS_
        _Outptr_ IDCompositionTranslateTransform3D **translateTransform3D
        ) PURE;

    // Creates a 3D scale transform object.
    STDMETHOD(CreateScaleTransform3D)(THIS_
        _Outptr_ IDCompositionScaleTransform3D **scaleTransform3D
        ) PURE;

    // Creates a 3D rotation transform object.
    STDMETHOD(CreateRotateTransform3D)(THIS_
        _Outptr_ IDCompositionRotateTransform3D **rotateTransform3D
        ) PURE;

    // Creates a 3D 4x4 matrix transform object.
    STDMETHOD(CreateMatrixTransform3D)(THIS_
        _Outptr_ IDCompositionMatrixTransform3D **matrixTransform3D
        ) PURE;

    // Creates a 3D transform object that holds an array of 3D transform objects.
    STDMETHOD(CreateTransform3DGroup)(THIS_
        _In_reads_(elements) IDCompositionTransform3D **transforms3D,
        UINT elements,
        _Outptr_ IDCompositionTransform3D **transform3DGroup
        ) PURE;

    // Creates an effect group
    STDMETHOD(CreateEffectGroup)(THIS_
        _Outptr_ IDCompositionEffectGroup **effectGroup
        ) PURE;

    // Creates a clip object that can be used to clip the contents of a visual subtree.
    STDMETHOD(CreateRectangleClip)(THIS_
        _Outptr_ IDCompositionRectangleClip **clip
        ) PURE;

    // Creates an animation object
    STDMETHOD(CreateAnimation)(THIS_
        _Outptr_ IDCompositionAnimation **animation
        ) PURE;

    // Returns the states of the app's DX device and DWM's dx devices
    STDMETHOD(CheckDeviceState)(THIS_
        _Out_ BOOL *pfValid
        ) PURE;
};


//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionTarget
//
//  Synopsis:
//      An IDCompositionTarget interface represents a binding between a
//      DirectComposition visual tree and a destination on top of which the
//      visual tree should be composed.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionTarget
DECLARE_INTERFACE_IID_(IDCompositionTarget, IUnknown, "eacdd04c-117e-4e17-88f4-d1b12b0e3d89")
{
    // Sets the root visual
    STDMETHOD(SetRoot)(THIS_
        _In_opt_ IDCompositionVisual* visual
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionVisual
//
//  Synopsis:
//      An IDCompositionVisual interface represents a visual that participates in
//      a visual tree.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionVisual
DECLARE_INTERFACE_IID_(IDCompositionVisual, IUnknown, "4d93059d-097b-4651-9a60-f0f25116e2f3")
{
    // Changes the value of OffsetX property
    STDMETHOD(SetOffsetX)(THIS_
        float offsetX
        ) PURE;

    // Animates the value of the OffsetX property.
    STDMETHOD(SetOffsetX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of OffsetY property
    STDMETHOD(SetOffsetY)(THIS_
        float offsetY
        ) PURE;

    // Animates the value of the OffsetY property.
    STDMETHOD(SetOffsetY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Sets the matrix that modifies the coordinate system of this visual.
    STDMETHOD(SetTransform)(THIS_
        const D2D_MATRIX_3X2_F& matrix
        ) PURE;

    // Sets the transformation object that modifies the coordinate system of this visual.
    STDMETHOD(SetTransform)(THIS_
        _In_opt_ IDCompositionTransform* transform
        ) PURE;

    // Sets the visual that should act as this visual's parent for the
    // purpose of establishing a base coordinate system.
    STDMETHOD(SetTransformParent)(THIS_
        _In_opt_ IDCompositionVisual *visual
        ) PURE;

    // Sets the effect object that is applied during the rendering of this visual
    STDMETHOD(SetEffect)(THIS_
        _In_opt_ IDCompositionEffect *effect
        ) PURE;

    // Sets the mode to use when interpolating pixels from bitmaps drawn not
    // exactly at scale and axis-aligned.
    STDMETHOD(SetBitmapInterpolationMode)(THIS_
        _In_ DCOMPOSITION_BITMAP_INTERPOLATION_MODE interpolationMode
        ) PURE;

    // Sets the mode to use when drawing the edge of bitmaps that are not
    // exactly axis-aligned and at precise pixel boundaries.
    STDMETHOD(SetBorderMode)(THIS_
        _In_ DCOMPOSITION_BORDER_MODE borderMode
        ) PURE;

    // Sets the clip object that restricts the rendering of this visual to a D2D rectangle.
    STDMETHOD(SetClip)(THIS_
        const D2D_RECT_F& rect
        ) PURE;

    // Sets the clip object that restricts the rendering of this visual to a rectangle.
    STDMETHOD(SetClip)(THIS_
        _In_opt_ IDCompositionClip* clip
        ) PURE;

    // Associates a bitmap with a visual
    STDMETHOD(SetContent)(THIS_
        _In_opt_ IUnknown *content
        ) PURE;

    // Adds a visual to the children list of another visual.
    STDMETHOD(AddVisual)(THIS_
        _In_ IDCompositionVisual* visual,
        BOOL insertAbove,
        _In_opt_ IDCompositionVisual* referenceVisual
        ) PURE;

    // Removes a visual from the children list of another visual.
    STDMETHOD(RemoveVisual)(THIS_
        _In_ IDCompositionVisual* visual
        ) PURE;

    // Removes all visuals from the children list of another visual.
    STDMETHOD(RemoveAllVisuals)(THIS_
        ) PURE;

    // Sets the mode to use when composing the bitmap against the render target.
    STDMETHOD(SetCompositeMode)(THIS_
        _In_ DCOMPOSITION_COMPOSITE_MODE compositeMode
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionEffect
//
//  Synopsis:
//      An IDCompositionEffect interface represents an effect
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionEffect
DECLARE_INTERFACE_IID_(IDCompositionEffect, IUnknown, "EC81B08F-BFCB-4e8d-B193-A915587999E8")
{
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionTransform3D
//
//  Synopsis:
//      An IDCompositionTransform3D interface represents a 3D transformation.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionTransform3D
DECLARE_INTERFACE_IID_(IDCompositionTransform3D, IDCompositionEffect, "71185722-246B-41f2-AAD1-0443F7F4BFC2")
{
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionTransform
//
//  Synopsis:
//      An IDCompositionTransform interface represents a 2D transformation that
//      can be used to modify the coordinate space of a visual subtree.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionTransform
DECLARE_INTERFACE_IID_(IDCompositionTransform, IDCompositionTransform3D, "FD55FAA7-37E0-4c20-95D2-9BE45BC33F55")
{
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionTranslateTransform
//
//  Synopsis:
//      An IDCompositionTranslateTransform interface represents a 2D transformation
//      that affects only the offset of a visual along the x and y axes.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionTranslateTransform
DECLARE_INTERFACE_IID_(IDCompositionTranslateTransform, IDCompositionTransform, "06791122-C6F0-417d-8323-269E987F5954")
{
    // Changes the value of the OffsetX property.
    STDMETHOD(SetOffsetX)(THIS_
        float offsetX
        ) PURE;

    // Animates the value of the OffsetX property.
    STDMETHOD(SetOffsetX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

   // Changes the value of the OffsetY property.
    STDMETHOD(SetOffsetY)(THIS_
        float offsetY
        ) PURE;

    // Animates the value of the OffsetY property.
    STDMETHOD(SetOffsetY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionScaleTransform
//
//  Synopsis:
//      An IDCompositionScaleTransform interface represents a 2D transformation that
//      affects the scale of a visual along the x and y axes. The coordinate system
//      is scaled from the specified center point.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionScaleTransform
DECLARE_INTERFACE_IID_(IDCompositionScaleTransform, IDCompositionTransform, "71FDE914-40EF-45ef-BD51-68B037C339F9")
{
    // Changes the value of the ScaleX property.
    STDMETHOD(SetScaleX)(THIS_
        float scaleX
        ) PURE;

    // Animates the value of the ScaleX property.
    STDMETHOD(SetScaleX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the ScaleY property.
    STDMETHOD(SetScaleY)(THIS_
        float scaleY
        ) PURE;

    // Animates the value of the ScaleY property.
    STDMETHOD(SetScaleY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        float centerX
        ) PURE;

    // Animates the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        float centerY
        ) PURE;

    // Animates the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionRotateTransform
//
//  Synopsis:
//      An IDCompositionRotateTransform interface represents a 2D transformation
//      that affects the rotation of a visual along the z axis. The coordinate system
//      is rotated around the specified center point.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionRotateTransform
DECLARE_INTERFACE_IID_(IDCompositionRotateTransform, IDCompositionTransform, "641ED83C-AE96-46c5-90DC-32774CC5C6D5")
{
    // Changes the value of the Angle property.
    STDMETHOD(SetAngle)(THIS_
        float angle
        ) PURE;

    // Animates the value of the Angle property.
    STDMETHOD(SetAngle)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        float centerX
        ) PURE;

    // Animates the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        float centerY
        ) PURE;

    // Animates the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionSkewTransform
//
//  Synopsis:
//      An IDCompositionSkewTransform interface represents a 2D transformation that
//      affects the skew of a visual along the x and y axes. The coordinate system
//      is skewed around the specified center point.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionSkewTransform
DECLARE_INTERFACE_IID_(IDCompositionSkewTransform, IDCompositionTransform, "E57AA735-DCDB-4c72-9C61-0591F58889EE")
{
    // Changes the value of the AngleX property.
    STDMETHOD(SetAngleX)(THIS_
        float angleX
        ) PURE;

    // Animates the value of the AngleX property.
    STDMETHOD(SetAngleX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the AngleY property.
    STDMETHOD(SetAngleY)(THIS_
        float angleY
        ) PURE;

    // Animates the value of the AngleY property.
    STDMETHOD(SetAngleY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        float centerX
        ) PURE;

    // Animates the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        float centerY
        ) PURE;

    // Animates the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionMatrixTransform
//
//  Synopsis:
//      An IDCompositionMatrixTransform interface represents an arbitrary affine
//      2D transformation defined by a 3x2 matrix.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionMatrixTransform
DECLARE_INTERFACE_IID_(IDCompositionMatrixTransform, IDCompositionTransform, "16CDFF07-C503-419c-83F2-0965C7AF1FA6")
{
    // Changes all values of the matrix of this transform.
    STDMETHOD(SetMatrix)(THIS_
        const D2D_MATRIX_3X2_F& matrix
        ) PURE;

    // Changes a single element of the matrix of this transform.
    STDMETHOD(SetMatrixElement)(THIS_
        _In_ int row,
        _In_ int column,
        _In_ float value
        ) PURE;

    // Animates a single element of the matrix of this transform.
    STDMETHOD(SetMatrixElement)(THIS_
        _In_ int row,
        _In_ int column,
        _In_ IDCompositionAnimation *animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionEffectGroup
//
//  Synopsis:
//      An IDCompositionEffectGroup holds effects, inluding 3D transforms that can
//      be applied to a visual.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionEffectGroup
DECLARE_INTERFACE_IID_(IDCompositionEffectGroup, IDCompositionEffect, "A7929A74-E6B2-4bd6-8B95-4040119CA34D")
{
    // Changes the opacity property.
    STDMETHOD(SetOpacity)(THIS_
        float opacity
        ) PURE;

    // Animates the opacity property
    STDMETHOD(SetOpacity)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Sets the 3D transform
    STDMETHOD(SetTransform3D)(THIS_
        _In_opt_ IDCompositionTransform3D* transform3D
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionTranslateTransform3D
//
//  Synopsis:
//      An IDCompositionTranslateTransform3D interface represents a 3D transformation
//      that affects the offset of a visual along the x,y and z axes.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionTranslateTransform3D
DECLARE_INTERFACE_IID_(IDCompositionTranslateTransform3D, IDCompositionTransform3D, "91636D4B-9BA1-4532-AAF7-E3344994D788")
{
    // Changes the value of the OffsetX property.
    STDMETHOD(SetOffsetX)(THIS_
        float offsetX
        ) PURE;

    // Animates the value of the OffsetX property.
    STDMETHOD(SetOffsetX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

   // Changes the value of the OffsetY property.
    STDMETHOD(SetOffsetY)(THIS_
        float offsetY
        ) PURE;

    // Animates the value of the OffsetY property.
    STDMETHOD(SetOffsetY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

   // Changes the value of the OffsetZ property.
    STDMETHOD(SetOffsetZ)(THIS_
        float offsetZ
        ) PURE;

    // Animates the value of the OffsetZ property.
    STDMETHOD(SetOffsetZ)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionScaleTransform3D
//
//  Synopsis:
//      An IDCompositionScaleTransform3D interface represents a 3D transformation that
//      affects the scale of a visual along the x, y and z axes. The coordinate system
//      is scaled from the specified center point.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionScaleTransform3D
DECLARE_INTERFACE_IID_(IDCompositionScaleTransform3D, IDCompositionTransform3D, "2A9E9EAD-364B-4b15-A7C4-A1997F78B389")
{
    // Changes the value of the ScaleX property.
    STDMETHOD(SetScaleX)(THIS_
        float scaleX
        ) PURE;

    // Animates the value of the ScaleX property.
    STDMETHOD(SetScaleX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the ScaleY property.
    STDMETHOD(SetScaleY)(THIS_
        float scaleY
        ) PURE;

    // Animates the value of the ScaleY property.
    STDMETHOD(SetScaleY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the ScaleZ property.
    STDMETHOD(SetScaleZ)(THIS_
        float scaleZ
        ) PURE;

    // Animates the value of the ScaleZ property.
    STDMETHOD(SetScaleZ)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        float centerX
        ) PURE;

    // Animates the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        float centerY
        ) PURE;

    // Animates the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterZ property.
    STDMETHOD(SetCenterZ)(THIS_
        float centerZ
        ) PURE;

    // Animates the value of the CenterZ property.
    STDMETHOD(SetCenterZ)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionRotateTransform3D
//
//  Synopsis:
//      An IDCompositionRotateTransform3D interface represents a 3D transformation
//      that affects the rotation of a visual along the specified axis at the
//      specified center point.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionRotateTransform3D
DECLARE_INTERFACE_IID_(IDCompositionRotateTransform3D, IDCompositionTransform3D, "D8F5B23F-D429-4a91-B55A-D2F45FD75B18")
{
    // Changes the value of the Angle property.
    STDMETHOD(SetAngle)(THIS_
        float angle
        ) PURE;

    // Animates the value of the Angle property.
    STDMETHOD(SetAngle)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the AxisX property.
    STDMETHOD(SetAxisX)(THIS_
        float axisX
        ) PURE;

    // Animates the value of the AxisX property.
    STDMETHOD(SetAxisX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the AxisY property.
    STDMETHOD(SetAxisY)(THIS_
        float axisY
        ) PURE;

    // Animates the value of the AxisY property.
    STDMETHOD(SetAxisY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the AxisZ property.
    STDMETHOD(SetAxisZ)(THIS_
        float axisZ
        ) PURE;

    // Animates the value of the AxisZ property.
    STDMETHOD(SetAxisZ)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        float centerX
        ) PURE;

    // Animates the value of the CenterX property.
    STDMETHOD(SetCenterX)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        float centerY
        ) PURE;

    // Animates the value of the CenterY property.
    STDMETHOD(SetCenterY)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the CenterZ property.
    STDMETHOD(SetCenterZ)(THIS_
        float centerZ
        ) PURE;

    // Animates the value of the CenterZ property.
    STDMETHOD(SetCenterZ)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionMatrixTransform3D
//
//  Synopsis:
//      An IDCompositionMatrixTransform3D interface represents an arbitrary
//      3D transformation defined by a 4x4 matrix.
//
//------------------------------------------------------------------------------
#pragma warning(push)
#pragma warning(disable : 4995)    // D3DMATRIX': name was marked as #pragma deprecated
#undef INTERFACE
#define INTERFACE IDCompositionMatrixTransform3D
DECLARE_INTERFACE_IID_(IDCompositionMatrixTransform3D, IDCompositionTransform3D, "4B3363F0-643B-41b7-B6E0-CCF22D34467C")
{
    // Changes all values of the matrix of this transform.
    STDMETHOD(SetMatrix)(THIS_
        const D3DMATRIX& matrix
        ) PURE;

    // Changes a single element of the matrix of this transform.
    STDMETHOD(SetMatrixElement)(THIS_
        _In_ int row,
        _In_ int column,
        _In_ float value
        ) PURE;

    // Animates a single element of the matrix of this transform.
    STDMETHOD(SetMatrixElement)(THIS_
        _In_ int row,
        _In_ int column,
        _In_ IDCompositionAnimation *animation
        ) PURE;
};
#pragma warning(pop)

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionClip
//
//  Synopsis:
//      An IDCompositionClip interface represents a rectangle that restricts the
//      rasterization of a visual subtree.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionClip
DECLARE_INTERFACE_IID_(IDCompositionClip, IUnknown, "64AC3703-9D3F-45ec-A109-7CAC0E7A13A7")
{
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionRectangleClip
//
//  Synopsis:
//      An IDCompositionRectangleClip interface represents a rectangle that restricts
//      the rasterization of a visual subtree.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionRectangleClip
DECLARE_INTERFACE_IID_(IDCompositionRectangleClip, IDCompositionClip, "9842AD7D-D9CF-4908-AED7-48B51DA5E7C2")
{
    // Changes the value of the Left property.
    STDMETHOD(SetLeft)(THIS_
        float left
        ) PURE;

    // Animates the value of the Left property.
    STDMETHOD(SetLeft)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the Top property.
    STDMETHOD(SetTop)(THIS_
        float top
        ) PURE;

    // Animates the value of the Top property.
    STDMETHOD(SetTop)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the Right property.
    STDMETHOD(SetRight)(THIS_
        float right
        ) PURE;

    // Animates the value of the Right property.
    STDMETHOD(SetRight)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the Bottom property.
    STDMETHOD(SetBottom)(THIS_
        float bottom
        ) PURE;

    // Animates the value of the Bottom property.
    STDMETHOD(SetBottom)(THIS_
        _In_ IDCompositionAnimation* animation
        ) PURE;

    // Changes the value of the x radius of the ellipse that rounds the
    // top-left corner of the clip.
    STDMETHOD(SetTopLeftRadiusX)(THIS_
        float radius
        ) PURE;

    // Animates the value of the x radius of the ellipse that rounds the
    // top-left corner of the clip.
    STDMETHOD(SetTopLeftRadiusX)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the y radius of the ellipse that rounds the
    // top-left corner of the clip.
    STDMETHOD(SetTopLeftRadiusY)(THIS_
        float radius
        ) PURE;

    // Animates the value of the y radius of the ellipse that rounds the
    // top-left corner of the clip.
    STDMETHOD(SetTopLeftRadiusY)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the x radius of the ellipse that rounds the
    // top-right corner of the clip.
    STDMETHOD(SetTopRightRadiusX)(THIS_
        float radius
        ) PURE;

    // Animates the value of the x radius of the ellipse that rounds the
    // top-right corner of the clip.
    STDMETHOD(SetTopRightRadiusX)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the y radius of the ellipse that rounds the
    // top-right corner of the clip.
    STDMETHOD(SetTopRightRadiusY)(THIS_
        float radius
        ) PURE;

    // Animates the value of the y radius of the ellipse that rounds the
    // top-right corner of the clip.
    STDMETHOD(SetTopRightRadiusY)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the x radius of the ellipse that rounds the
    // bottom-left corner of the clip.
    STDMETHOD(SetBottomLeftRadiusX)(THIS_
        float radius
        ) PURE;

    // Animates the value of the x radius of the ellipse that rounds the
    // bottom-left corner of the clip.
    STDMETHOD(SetBottomLeftRadiusX)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the y radius of the ellipse that rounds the
    // bottom-left corner of the clip.
    STDMETHOD(SetBottomLeftRadiusY)(THIS_
        float radius
        ) PURE;

    // Animates the value of the y radius of the ellipse that rounds the
    // bottom-left corner of the clip.
    STDMETHOD(SetBottomLeftRadiusY)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the x radius of the ellipse that rounds the
    // bottom-right corner of the clip.
    STDMETHOD(SetBottomRightRadiusX)(THIS_
        float radius
        ) PURE;

    // Animates the value of the x radius of the ellipse that rounds the
    // bottom-right corner of the clip.
    STDMETHOD(SetBottomRightRadiusX)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;

    // Changes the value of the y radius of the ellipse that rounds the
    // bottom-right corner of the clip.
    STDMETHOD(SetBottomRightRadiusY)(THIS_
        float radius
        ) PURE;

    // Animates the value of the y radius of the ellipse that rounds the
    // bottom-right corner of the clip.
    STDMETHOD(SetBottomRightRadiusY)(THIS_
        _In_ IDCompositionAnimation *animation
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionSurface
//
//  Synopsis:
//      An IDCompositionSurface interface represents a wrapper around a DirectX
//      object, or a sub-rectangle of one of those objects.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionSurface
DECLARE_INTERFACE_IID_(IDCompositionSurface, IUnknown, "BB8A4953-2C99-4F5A-96F5-4819027FA3AC")
{
    STDMETHOD(BeginDraw)(THIS_
        _In_opt_ const RECT *updateRect,
        _In_ REFIID iid,
        _Outptr_ void **surface,
        _Out_ POINT *updateOffset
        ) PURE;

    STDMETHOD(EndDraw)(THIS
        ) PURE;

    STDMETHOD(SuspendDraw)(THIS
        ) PURE;

    STDMETHOD(ResumeDraw)(THIS
        ) PURE;
        
    STDMETHOD(Scroll)(THIS_
        _In_opt_ const RECT *scrollRect,
        _In_opt_ const RECT *clipRect,
        _In_ int offsetX,
        _In_ int offsetY
        ) PURE;
};

//+-----------------------------------------------------------------------------
//
//  Interface:
//      IDCompositionVirtualSurface
//
//  Synopsis:
//      An IDCompositionVirtualSurface interface represents a sparsely
//      allocated surface.
//
//------------------------------------------------------------------------------
#undef INTERFACE
#define INTERFACE IDCompositionVirtualSurface
DECLARE_INTERFACE_IID_(IDCompositionVirtualSurface, IDCompositionSurface, "AE471C51-5F53-4A24-8D3E-D0C39C30B3F0")
{
    STDMETHOD(Resize)(THIS_
        _In_ UINT width,
        _In_ UINT height
        ) PURE;

    STDMETHOD(Trim)(THIS_
        _In_reads_opt_(count) const RECT *rectangles,
        _In_ UINT count
        ) PURE;
};

#undef INTERFACE



#endif // NTDDI_WIN8

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

