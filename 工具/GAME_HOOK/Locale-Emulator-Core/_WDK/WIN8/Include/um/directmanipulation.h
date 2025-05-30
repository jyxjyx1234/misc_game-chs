

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 8.00.0595 */
/* @@MIDL_FILE_HEADING(  ) */

#pragma warning( disable: 4049 )  /* more than 64k source lines */


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 500
#endif

/* verify that the <rpcsal.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCSAL_H_VERSION__
#define __REQUIRED_RPCSAL_H_VERSION__ 100
#endif

#include "rpc.h"
#include "rpcndr.h"

#ifndef __RPCNDR_H_VERSION__
#error this stub requires an updated version of <rpcndr.h>
#endif // __RPCNDR_H_VERSION__

#ifndef COM_NO_WINDOWS_H
#include "windows.h"
#include "ole2.h"
#endif /*COM_NO_WINDOWS_H*/

#ifndef __directmanipulation_h__
#define __directmanipulation_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IDirectManipulationManager_FWD_DEFINED__
#define __IDirectManipulationManager_FWD_DEFINED__
typedef interface IDirectManipulationManager IDirectManipulationManager;

#endif 	/* __IDirectManipulationManager_FWD_DEFINED__ */


#ifndef __IDirectManipulationViewport_FWD_DEFINED__
#define __IDirectManipulationViewport_FWD_DEFINED__
typedef interface IDirectManipulationViewport IDirectManipulationViewport;

#endif 	/* __IDirectManipulationViewport_FWD_DEFINED__ */


#ifndef __IDirectManipulationViewportEventHandler_FWD_DEFINED__
#define __IDirectManipulationViewportEventHandler_FWD_DEFINED__
typedef interface IDirectManipulationViewportEventHandler IDirectManipulationViewportEventHandler;

#endif 	/* __IDirectManipulationViewportEventHandler_FWD_DEFINED__ */


#ifndef __IDirectManipulationContent_FWD_DEFINED__
#define __IDirectManipulationContent_FWD_DEFINED__
typedef interface IDirectManipulationContent IDirectManipulationContent;

#endif 	/* __IDirectManipulationContent_FWD_DEFINED__ */


#ifndef __IDirectManipulationPrimaryContent_FWD_DEFINED__
#define __IDirectManipulationPrimaryContent_FWD_DEFINED__
typedef interface IDirectManipulationPrimaryContent IDirectManipulationPrimaryContent;

#endif 	/* __IDirectManipulationPrimaryContent_FWD_DEFINED__ */


#ifndef __IDirectManipulationFrameInfoProvider_FWD_DEFINED__
#define __IDirectManipulationFrameInfoProvider_FWD_DEFINED__
typedef interface IDirectManipulationFrameInfoProvider IDirectManipulationFrameInfoProvider;

#endif 	/* __IDirectManipulationFrameInfoProvider_FWD_DEFINED__ */


#ifndef __IDirectManipulationCompositor_FWD_DEFINED__
#define __IDirectManipulationCompositor_FWD_DEFINED__
typedef interface IDirectManipulationCompositor IDirectManipulationCompositor;

#endif 	/* __IDirectManipulationCompositor_FWD_DEFINED__ */


#ifndef __IDirectManipulationUpdateHandler_FWD_DEFINED__
#define __IDirectManipulationUpdateHandler_FWD_DEFINED__
typedef interface IDirectManipulationUpdateHandler IDirectManipulationUpdateHandler;

#endif 	/* __IDirectManipulationUpdateHandler_FWD_DEFINED__ */


#ifndef __IDirectManipulationUpdateManager_FWD_DEFINED__
#define __IDirectManipulationUpdateManager_FWD_DEFINED__
typedef interface IDirectManipulationUpdateManager IDirectManipulationUpdateManager;

#endif 	/* __IDirectManipulationUpdateManager_FWD_DEFINED__ */


#ifndef __IDirectManipulationContactHandler_FWD_DEFINED__
#define __IDirectManipulationContactHandler_FWD_DEFINED__
typedef interface IDirectManipulationContactHandler IDirectManipulationContactHandler;

#endif 	/* __IDirectManipulationContactHandler_FWD_DEFINED__ */


#ifndef __DirectManipulationViewport_FWD_DEFINED__
#define __DirectManipulationViewport_FWD_DEFINED__

#ifdef __cplusplus
typedef class DirectManipulationViewport DirectManipulationViewport;
#else
typedef struct DirectManipulationViewport DirectManipulationViewport;
#endif /* __cplusplus */

#endif 	/* __DirectManipulationViewport_FWD_DEFINED__ */


#ifndef __DirectManipulationContactHandler_FWD_DEFINED__
#define __DirectManipulationContactHandler_FWD_DEFINED__

#ifdef __cplusplus
typedef class DirectManipulationContactHandler DirectManipulationContactHandler;
#else
typedef struct DirectManipulationContactHandler DirectManipulationContactHandler;
#endif /* __cplusplus */

#endif 	/* __DirectManipulationContactHandler_FWD_DEFINED__ */


#ifndef __DirectManipulationUpdateManager_FWD_DEFINED__
#define __DirectManipulationUpdateManager_FWD_DEFINED__

#ifdef __cplusplus
typedef class DirectManipulationUpdateManager DirectManipulationUpdateManager;
#else
typedef struct DirectManipulationUpdateManager DirectManipulationUpdateManager;
#endif /* __cplusplus */

#endif 	/* __DirectManipulationUpdateManager_FWD_DEFINED__ */


#ifndef __DirectManipulationPrimaryContent_FWD_DEFINED__
#define __DirectManipulationPrimaryContent_FWD_DEFINED__

#ifdef __cplusplus
typedef class DirectManipulationPrimaryContent DirectManipulationPrimaryContent;
#else
typedef struct DirectManipulationPrimaryContent DirectManipulationPrimaryContent;
#endif /* __cplusplus */

#endif 	/* __DirectManipulationPrimaryContent_FWD_DEFINED__ */


#ifndef __DirectManipulationManager_FWD_DEFINED__
#define __DirectManipulationManager_FWD_DEFINED__

#ifdef __cplusplus
typedef class DirectManipulationManager DirectManipulationManager;
#else
typedef struct DirectManipulationManager DirectManipulationManager;
#endif /* __cplusplus */

#endif 	/* __DirectManipulationManager_FWD_DEFINED__ */


#ifndef __DCompManipulationCompositor_FWD_DEFINED__
#define __DCompManipulationCompositor_FWD_DEFINED__

#ifdef __cplusplus
typedef class DCompManipulationCompositor DCompManipulationCompositor;
#else
typedef struct DCompManipulationCompositor DCompManipulationCompositor;
#endif /* __cplusplus */

#endif 	/* __DCompManipulationCompositor_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_directmanipulation_0000_0000 */
/* [local] */ 

//--------------------------------------------------------------------------
//
//  directmanipulation.h
//
//  Direct Manipulation interface definitions and related types and enums
//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//
//--------------------------------------------------------------------------
#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#if (NTDDI_VERSION >= NTDDI_WIN8)
#if 0
typedef void *HWND;

#endif







typedef 
enum DIRECTMANIPULATION_STATUS
    {
        DIRECTMANIPULATION_BUILDING	= 0,
        DIRECTMANIPULATION_ENABLED	= 1,
        DIRECTMANIPULATION_DISABLED	= 2,
        DIRECTMANIPULATION_RUNNING	= 3,
        DIRECTMANIPULATION_INERTIA	= 4,
        DIRECTMANIPULATION_READY	= 5,
        DIRECTMANIPULATION_SUSPENDED	= 6
    } 	DIRECTMANIPULATION_STATUS;

typedef 
enum DIRECTMANIPULATION_HITTEST_TYPE
    {
        DIRECTMANIPULATION_HITTEST_TYPE_ASYNCHRONOUS	= 0,
        DIRECTMANIPULATION_HITTEST_TYPE_SYNCHRONOUS	= 0x1,
        DIRECTMANIPULATION_HITTEST_TYPE_AUTO_SYNCHRONOUS	= 0x2
    } 	DIRECTMANIPULATION_HITTEST_TYPE;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_HITTEST_TYPE)
typedef 
enum DIRECTMANIPULATION_CONFIGURATION
    {
        DIRECTMANIPULATION_CONFIGURATION_NONE	= 0,
        DIRECTMANIPULATION_CONFIGURATION_INTERACTION	= 0x1,
        DIRECTMANIPULATION_CONFIGURATION_TRANSLATION_X	= 0x2,
        DIRECTMANIPULATION_CONFIGURATION_TRANSLATION_Y	= 0x4,
        DIRECTMANIPULATION_CONFIGURATION_SCALING	= 0x10,
        DIRECTMANIPULATION_CONFIGURATION_TRANSLATION_INERTIA	= 0x20,
        DIRECTMANIPULATION_CONFIGURATION_SCALING_INERTIA	= 0x80,
        DIRECTMANIPULATION_CONFIGURATION_RAILS_X	= 0x100,
        DIRECTMANIPULATION_CONFIGURATION_RAILS_Y	= 0x200
    } 	DIRECTMANIPULATION_CONFIGURATION;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_CONFIGURATION)
typedef 
enum DIRECTMANIPULATION_GESTURE_CONFIGURATION
    {
        DIRECTMANIPULATION_GESTURE_NONE	= 0,
        DIRECTMANIPULATION_GESTURE_DEFAULT	= 0,
        DIRECTMANIPULATION_GESTURE_CROSS_SLIDE_VERTICAL	= 0x8,
        DIRECTMANIPULATION_GESTURE_CROSS_SLIDE_HORIZONTAL	= 0x10,
        DIRECTMANIPULATION_GESTURE_PINCH_ZOOM	= 0x20
    } 	DIRECTMANIPULATION_GESTURE_CONFIGURATION;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_GESTURE_CONFIGURATION)
typedef 
enum DIRECTMANIPULATION_MOTION_TYPES
    {
        DIRECTMANIPULATION_MOTION_NONE	= 0,
        DIRECTMANIPULATION_MOTION_TRANSLATEX	= 0x1,
        DIRECTMANIPULATION_MOTION_TRANSLATEY	= 0x2,
        DIRECTMANIPULATION_MOTION_ZOOM	= 0x4,
        DIRECTMANIPULATION_MOTION_CENTERX	= 0x10,
        DIRECTMANIPULATION_MOTION_CENTERY	= 0x20,
        DIRECTMANIPULATION_MOTION_ALL	= ( ( ( ( DIRECTMANIPULATION_MOTION_TRANSLATEX | DIRECTMANIPULATION_MOTION_TRANSLATEY )  | DIRECTMANIPULATION_MOTION_ZOOM )  | DIRECTMANIPULATION_MOTION_CENTERX )  | DIRECTMANIPULATION_MOTION_CENTERY ) 
    } 	DIRECTMANIPULATION_MOTION_TYPES;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_MOTION_TYPES)
typedef 
enum DIRECTMANIPULATION_VIEWPORT_OPTIONS
    {
        DIRECTMANIPULATION_VIEWPORT_OPTIONS_DEFAULT	= 0,
        DIRECTMANIPULATION_VIEWPORT_OPTIONS_AUTODISABLE	= 0x1,
        DIRECTMANIPULATION_VIEWPORT_OPTIONS_MANUALUPDATE	= 0x2,
        DIRECTMANIPULATION_VIEWPORT_OPTIONS_INPUT	= 0x4
    } 	DIRECTMANIPULATION_VIEWPORT_OPTIONS;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_VIEWPORT_OPTIONS)
typedef 
enum DIRECTMANIPULATION_SNAPPOINT_TYPE
    {
        DIRECTMANIPULATION_SNAPPOINT_MANDATORY	= 0,
        DIRECTMANIPULATION_SNAPPOINT_OPTIONAL	= 1,
        DIRECTMANIPULATION_SNAPPOINT_MANDATORY_SINGLE	= 2,
        DIRECTMANIPULATION_SNAPPOINT_OPTIONAL_SINGLE	= 3
    } 	DIRECTMANIPULATION_SNAPPOINT_TYPE;

typedef 
enum DIRECTMANIPULATION_SNAPPOINT_COORDINATE
    {
        DIRECTMANIPULATION_COORDINATE_BOUNDARY	= 0,
        DIRECTMANIPULATION_COORDINATE_ORIGIN	= 0x1,
        DIRECTMANIPULATION_COORDINATE_MIRRORED	= 0x10
    } 	DIRECTMANIPULATION_SNAPPOINT_COORDINATE;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_SNAPPOINT_COORDINATE)
typedef 
enum DIRECTMANIPULATION_HORIZONTALALIGNMENT
    {
        DIRECTMANIPULATION_HORIZONTALALIGNMENT_NONE	= 0,
        DIRECTMANIPULATION_HORIZONTALALIGNMENT_LEFT	= 0x1,
        DIRECTMANIPULATION_HORIZONTALALIGNMENT_CENTER	= 0x2,
        DIRECTMANIPULATION_HORIZONTALALIGNMENT_RIGHT	= 0x4,
        DIRECTMANIPULATION_HORIZONTALALIGNMENT_UNLOCKCENTER	= 0x8
    } 	DIRECTMANIPULATION_HORIZONTALALIGNMENT;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_HORIZONTALALIGNMENT)
typedef 
enum DIRECTMANIPULATION_VERTICALALIGNMENT
    {
        DIRECTMANIPULATION_VERTICALALIGNMENT_NONE	= 0,
        DIRECTMANIPULATION_VERTICALALIGNMENT_TOP	= 0x1,
        DIRECTMANIPULATION_VERTICALALIGNMENT_CENTER	= 0x2,
        DIRECTMANIPULATION_VERTICALALIGNMENT_BOTTOM	= 0x4,
        DIRECTMANIPULATION_VERTICALALIGNMENT_UNLOCKCENTER	= 0x8
    } 	DIRECTMANIPULATION_VERTICALALIGNMENT;

DEFINE_ENUM_FLAG_OPERATORS(DIRECTMANIPULATION_VERTICALALIGNMENT)
typedef 
enum DIRECTMANIPULATION_INPUT_MODE
    {
        DIRECTMANIPULATION_INPUT_MODE_AUTOMATIC	= 0,
        DIRECTMANIPULATION_INPUT_MODE_MANUAL	= 1
    } 	DIRECTMANIPULATION_INPUT_MODE;

#define	DIRECTMANIPULATION_KEYBOARDFOCUS	( 0xfffffffe )

#define	DIRECTMANIPULATION_MOUSEFOCUS	( 0xfffffffd )

#define	DIRECTMANIPULATION_MINIMUM_ZOOM	( ( float  )0.1 )

DEFINE_GUID(CLSID_VerticalIndicatorContent, 0xa10b5f17, 0xafe0, 0x4aa2, 0x91, 0xe9, 0x3e, 0x70, 0x1, 0xd2, 0xe6, 0xb4);
DEFINE_GUID(CLSID_HorizontalIndicatorContent, 0xe7d18cf5, 0x3ec7, 0x44d5, 0xa7, 0x6b, 0x37, 0x70, 0xf3, 0xcf, 0x90, 0x3d);
DEFINE_GUID(CLSID_VirtualViewportContent, 0x3206a19a, 0x86f0, 0x4cb4, 0xa7, 0xf3, 0x16, 0xe3, 0xb7, 0xe2, 0xd8, 0x52);


extern RPC_IF_HANDLE __MIDL_itf_directmanipulation_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_directmanipulation_0000_0000_v0_0_s_ifspec;

#ifndef __IDirectManipulationManager_INTERFACE_DEFINED__
#define __IDirectManipulationManager_INTERFACE_DEFINED__

/* interface IDirectManipulationManager */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("FBF5D3B4-70C7-4163-9322-5A6F660D6FBC")
    IDirectManipulationManager : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Activate( 
            /* [annotation][in] */ 
            _In_  HWND window) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Deactivate( 
            /* [annotation][in] */ 
            _In_  HWND window) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RegisterHitTestTarget( 
            /* [annotation][in] */ 
            _In_opt_  HWND window,
            /* [annotation][in] */ 
            _In_  HWND hitTestWindow,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_HITTEST_TYPE type) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ProcessInput( 
            /* [annotation][in] */ 
            _In_  const MSG *message,
            /* [annotation][retval][out] */ 
            _Out_  BOOL *handled) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetUpdateManager( 
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CreateViewport( 
            /* [annotation][in] */ 
            _In_opt_  IDirectManipulationFrameInfoProvider *frameInfo,
            /* [annotation][in] */ 
            _In_  HWND window,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CreateContent( 
            /* [annotation][in] */ 
            _In_opt_  IDirectManipulationFrameInfoProvider *frameInfo,
            /* [annotation][in] */ 
            _In_  REFCLSID clsid,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationManager * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationManager * This);
        
        HRESULT ( STDMETHODCALLTYPE *Activate )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_  HWND window);
        
        HRESULT ( STDMETHODCALLTYPE *Deactivate )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_  HWND window);
        
        HRESULT ( STDMETHODCALLTYPE *RegisterHitTestTarget )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_opt_  HWND window,
            /* [annotation][in] */ 
            _In_  HWND hitTestWindow,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_HITTEST_TYPE type);
        
        HRESULT ( STDMETHODCALLTYPE *ProcessInput )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_  const MSG *message,
            /* [annotation][retval][out] */ 
            _Out_  BOOL *handled);
        
        HRESULT ( STDMETHODCALLTYPE *GetUpdateManager )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object);
        
        HRESULT ( STDMETHODCALLTYPE *CreateViewport )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_opt_  IDirectManipulationFrameInfoProvider *frameInfo,
            /* [annotation][in] */ 
            _In_  HWND window,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object);
        
        HRESULT ( STDMETHODCALLTYPE *CreateContent )( 
            IDirectManipulationManager * This,
            /* [annotation][in] */ 
            _In_opt_  IDirectManipulationFrameInfoProvider *frameInfo,
            /* [annotation][in] */ 
            _In_  REFCLSID clsid,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object);
        
        END_INTERFACE
    } IDirectManipulationManagerVtbl;

    interface IDirectManipulationManager
    {
        CONST_VTBL struct IDirectManipulationManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationManager_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationManager_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationManager_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationManager_Activate(This,window)	\
    ( (This)->lpVtbl -> Activate(This,window) ) 

#define IDirectManipulationManager_Deactivate(This,window)	\
    ( (This)->lpVtbl -> Deactivate(This,window) ) 

#define IDirectManipulationManager_RegisterHitTestTarget(This,window,hitTestWindow,type)	\
    ( (This)->lpVtbl -> RegisterHitTestTarget(This,window,hitTestWindow,type) ) 

#define IDirectManipulationManager_ProcessInput(This,message,handled)	\
    ( (This)->lpVtbl -> ProcessInput(This,message,handled) ) 

#define IDirectManipulationManager_GetUpdateManager(This,riid,object)	\
    ( (This)->lpVtbl -> GetUpdateManager(This,riid,object) ) 

#define IDirectManipulationManager_CreateViewport(This,frameInfo,window,riid,object)	\
    ( (This)->lpVtbl -> CreateViewport(This,frameInfo,window,riid,object) ) 

#define IDirectManipulationManager_CreateContent(This,frameInfo,clsid,riid,object)	\
    ( (This)->lpVtbl -> CreateContent(This,frameInfo,clsid,riid,object) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationManager_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationViewport_INTERFACE_DEFINED__
#define __IDirectManipulationViewport_INTERFACE_DEFINED__

/* interface IDirectManipulationViewport */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationViewport;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("28b85a3d-60a0-48bd-9ba1-5ce8d9ea3a6d")
    IDirectManipulationViewport : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Enable( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Disable( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetContact( 
            /* [annotation][in] */ 
            _In_  UINT32 pointerId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ReleaseContact( 
            /* [annotation][in] */ 
            _In_  UINT32 pointerId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ReleaseAllContacts( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStatus( 
            /* [annotation][retval][out] */ 
            _Out_  DIRECTMANIPULATION_STATUS *status) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetTag( 
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_opt_  void **object,
            /* [annotation][out] */ 
            _Out_opt_  UINT32 *id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetTag( 
            /* [annotation][unique][in] */ 
            _In_opt_  IUnknown *object,
            /* [annotation][in] */ 
            _In_  UINT32 id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetViewportRect( 
            /* [annotation][retval][out] */ 
            _Out_  RECT *viewport) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetViewportRect( 
            /* [annotation][in] */ 
            _In_  const RECT *viewport) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ZoomToRect( 
            /* [annotation][in] */ 
            _In_  const float left,
            /* [annotation][in] */ 
            _In_  const float top,
            /* [annotation][in] */ 
            _In_  const float right,
            /* [annotation][in] */ 
            _In_  const float bottom,
            /* [annotation][in] */ 
            _In_  BOOL animate) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetViewportTransform( 
            /* [annotation][in] */ 
            _In_reads_(pointCount)  const float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SyncDisplayTransform( 
            /* [annotation][in] */ 
            _In_reads_(pointCount)  const float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetPrimaryContent( 
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AddContent( 
            /* [annotation][unique][in] */ 
            _In_  IDirectManipulationContent *content) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveContent( 
            /* [annotation][unique][in] */ 
            _In_  IDirectManipulationContent *content) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetViewportOptions( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_VIEWPORT_OPTIONS options) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AddConfiguration( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_CONFIGURATION configuration) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveConfiguration( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_CONFIGURATION configuration) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ActivateConfiguration( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_CONFIGURATION configuration) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetManualGesture( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_GESTURE_CONFIGURATION configuration) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetChaining( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES enabledTypes) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AddEventHandler( 
            /* [annotation][in] */ 
            _In_opt_  HWND window,
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewportEventHandler *eventHandler,
            /* [annotation][retval][out] */ 
            _Out_  DWORD *cookie) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveEventHandler( 
            /* [annotation][in] */ 
            _In_  DWORD cookie) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetInputMode( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_INPUT_MODE mode) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetUpdateMode( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_INPUT_MODE mode) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Stop( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Abandon( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationViewportVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationViewport * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationViewport * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationViewport * This);
        
        HRESULT ( STDMETHODCALLTYPE *Enable )( 
            IDirectManipulationViewport * This);
        
        HRESULT ( STDMETHODCALLTYPE *Disable )( 
            IDirectManipulationViewport * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetContact )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  UINT32 pointerId);
        
        HRESULT ( STDMETHODCALLTYPE *ReleaseContact )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  UINT32 pointerId);
        
        HRESULT ( STDMETHODCALLTYPE *ReleaseAllContacts )( 
            IDirectManipulationViewport * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetStatus )( 
            IDirectManipulationViewport * This,
            /* [annotation][retval][out] */ 
            _Out_  DIRECTMANIPULATION_STATUS *status);
        
        HRESULT ( STDMETHODCALLTYPE *GetTag )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_opt_  void **object,
            /* [annotation][out] */ 
            _Out_opt_  UINT32 *id);
        
        HRESULT ( STDMETHODCALLTYPE *SetTag )( 
            IDirectManipulationViewport * This,
            /* [annotation][unique][in] */ 
            _In_opt_  IUnknown *object,
            /* [annotation][in] */ 
            _In_  UINT32 id);
        
        HRESULT ( STDMETHODCALLTYPE *GetViewportRect )( 
            IDirectManipulationViewport * This,
            /* [annotation][retval][out] */ 
            _Out_  RECT *viewport);
        
        HRESULT ( STDMETHODCALLTYPE *SetViewportRect )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  const RECT *viewport);
        
        HRESULT ( STDMETHODCALLTYPE *ZoomToRect )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  const float left,
            /* [annotation][in] */ 
            _In_  const float top,
            /* [annotation][in] */ 
            _In_  const float right,
            /* [annotation][in] */ 
            _In_  const float bottom,
            /* [annotation][in] */ 
            _In_  BOOL animate);
        
        HRESULT ( STDMETHODCALLTYPE *SetViewportTransform )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_reads_(pointCount)  const float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        HRESULT ( STDMETHODCALLTYPE *SyncDisplayTransform )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_reads_(pointCount)  const float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        HRESULT ( STDMETHODCALLTYPE *GetPrimaryContent )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object);
        
        HRESULT ( STDMETHODCALLTYPE *AddContent )( 
            IDirectManipulationViewport * This,
            /* [annotation][unique][in] */ 
            _In_  IDirectManipulationContent *content);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveContent )( 
            IDirectManipulationViewport * This,
            /* [annotation][unique][in] */ 
            _In_  IDirectManipulationContent *content);
        
        HRESULT ( STDMETHODCALLTYPE *SetViewportOptions )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_VIEWPORT_OPTIONS options);
        
        HRESULT ( STDMETHODCALLTYPE *AddConfiguration )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_CONFIGURATION configuration);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveConfiguration )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_CONFIGURATION configuration);
        
        HRESULT ( STDMETHODCALLTYPE *ActivateConfiguration )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_CONFIGURATION configuration);
        
        HRESULT ( STDMETHODCALLTYPE *SetManualGesture )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_GESTURE_CONFIGURATION configuration);
        
        HRESULT ( STDMETHODCALLTYPE *SetChaining )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES enabledTypes);
        
        HRESULT ( STDMETHODCALLTYPE *AddEventHandler )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_opt_  HWND window,
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewportEventHandler *eventHandler,
            /* [annotation][retval][out] */ 
            _Out_  DWORD *cookie);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveEventHandler )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DWORD cookie);
        
        HRESULT ( STDMETHODCALLTYPE *SetInputMode )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_INPUT_MODE mode);
        
        HRESULT ( STDMETHODCALLTYPE *SetUpdateMode )( 
            IDirectManipulationViewport * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_INPUT_MODE mode);
        
        HRESULT ( STDMETHODCALLTYPE *Stop )( 
            IDirectManipulationViewport * This);
        
        HRESULT ( STDMETHODCALLTYPE *Abandon )( 
            IDirectManipulationViewport * This);
        
        END_INTERFACE
    } IDirectManipulationViewportVtbl;

    interface IDirectManipulationViewport
    {
        CONST_VTBL struct IDirectManipulationViewportVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationViewport_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationViewport_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationViewport_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationViewport_Enable(This)	\
    ( (This)->lpVtbl -> Enable(This) ) 

#define IDirectManipulationViewport_Disable(This)	\
    ( (This)->lpVtbl -> Disable(This) ) 

#define IDirectManipulationViewport_SetContact(This,pointerId)	\
    ( (This)->lpVtbl -> SetContact(This,pointerId) ) 

#define IDirectManipulationViewport_ReleaseContact(This,pointerId)	\
    ( (This)->lpVtbl -> ReleaseContact(This,pointerId) ) 

#define IDirectManipulationViewport_ReleaseAllContacts(This)	\
    ( (This)->lpVtbl -> ReleaseAllContacts(This) ) 

#define IDirectManipulationViewport_GetStatus(This,status)	\
    ( (This)->lpVtbl -> GetStatus(This,status) ) 

#define IDirectManipulationViewport_GetTag(This,riid,object,id)	\
    ( (This)->lpVtbl -> GetTag(This,riid,object,id) ) 

#define IDirectManipulationViewport_SetTag(This,object,id)	\
    ( (This)->lpVtbl -> SetTag(This,object,id) ) 

#define IDirectManipulationViewport_GetViewportRect(This,viewport)	\
    ( (This)->lpVtbl -> GetViewportRect(This,viewport) ) 

#define IDirectManipulationViewport_SetViewportRect(This,viewport)	\
    ( (This)->lpVtbl -> SetViewportRect(This,viewport) ) 

#define IDirectManipulationViewport_ZoomToRect(This,left,top,right,bottom,animate)	\
    ( (This)->lpVtbl -> ZoomToRect(This,left,top,right,bottom,animate) ) 

#define IDirectManipulationViewport_SetViewportTransform(This,matrix,pointCount)	\
    ( (This)->lpVtbl -> SetViewportTransform(This,matrix,pointCount) ) 

#define IDirectManipulationViewport_SyncDisplayTransform(This,matrix,pointCount)	\
    ( (This)->lpVtbl -> SyncDisplayTransform(This,matrix,pointCount) ) 

#define IDirectManipulationViewport_GetPrimaryContent(This,riid,object)	\
    ( (This)->lpVtbl -> GetPrimaryContent(This,riid,object) ) 

#define IDirectManipulationViewport_AddContent(This,content)	\
    ( (This)->lpVtbl -> AddContent(This,content) ) 

#define IDirectManipulationViewport_RemoveContent(This,content)	\
    ( (This)->lpVtbl -> RemoveContent(This,content) ) 

#define IDirectManipulationViewport_SetViewportOptions(This,options)	\
    ( (This)->lpVtbl -> SetViewportOptions(This,options) ) 

#define IDirectManipulationViewport_AddConfiguration(This,configuration)	\
    ( (This)->lpVtbl -> AddConfiguration(This,configuration) ) 

#define IDirectManipulationViewport_RemoveConfiguration(This,configuration)	\
    ( (This)->lpVtbl -> RemoveConfiguration(This,configuration) ) 

#define IDirectManipulationViewport_ActivateConfiguration(This,configuration)	\
    ( (This)->lpVtbl -> ActivateConfiguration(This,configuration) ) 

#define IDirectManipulationViewport_SetManualGesture(This,configuration)	\
    ( (This)->lpVtbl -> SetManualGesture(This,configuration) ) 

#define IDirectManipulationViewport_SetChaining(This,enabledTypes)	\
    ( (This)->lpVtbl -> SetChaining(This,enabledTypes) ) 

#define IDirectManipulationViewport_AddEventHandler(This,window,eventHandler,cookie)	\
    ( (This)->lpVtbl -> AddEventHandler(This,window,eventHandler,cookie) ) 

#define IDirectManipulationViewport_RemoveEventHandler(This,cookie)	\
    ( (This)->lpVtbl -> RemoveEventHandler(This,cookie) ) 

#define IDirectManipulationViewport_SetInputMode(This,mode)	\
    ( (This)->lpVtbl -> SetInputMode(This,mode) ) 

#define IDirectManipulationViewport_SetUpdateMode(This,mode)	\
    ( (This)->lpVtbl -> SetUpdateMode(This,mode) ) 

#define IDirectManipulationViewport_Stop(This)	\
    ( (This)->lpVtbl -> Stop(This) ) 

#define IDirectManipulationViewport_Abandon(This)	\
    ( (This)->lpVtbl -> Abandon(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationViewport_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationViewportEventHandler_INTERFACE_DEFINED__
#define __IDirectManipulationViewportEventHandler_INTERFACE_DEFINED__

/* interface IDirectManipulationViewportEventHandler */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationViewportEventHandler;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("952121DA-D69F-45F9-B0F9-F23944321A6D")
    IDirectManipulationViewportEventHandler : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE OnViewportStatusChanged( 
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewport *viewport,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_STATUS current,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_STATUS previous) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE OnViewportUpdated( 
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewport *viewport) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE OnContentUpdated( 
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewport *viewport,
            /* [annotation][in] */ 
            _In_  IDirectManipulationContent *content) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationViewportEventHandlerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationViewportEventHandler * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationViewportEventHandler * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationViewportEventHandler * This);
        
        HRESULT ( STDMETHODCALLTYPE *OnViewportStatusChanged )( 
            IDirectManipulationViewportEventHandler * This,
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewport *viewport,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_STATUS current,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_STATUS previous);
        
        HRESULT ( STDMETHODCALLTYPE *OnViewportUpdated )( 
            IDirectManipulationViewportEventHandler * This,
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewport *viewport);
        
        HRESULT ( STDMETHODCALLTYPE *OnContentUpdated )( 
            IDirectManipulationViewportEventHandler * This,
            /* [annotation][in] */ 
            _In_  IDirectManipulationViewport *viewport,
            /* [annotation][in] */ 
            _In_  IDirectManipulationContent *content);
        
        END_INTERFACE
    } IDirectManipulationViewportEventHandlerVtbl;

    interface IDirectManipulationViewportEventHandler
    {
        CONST_VTBL struct IDirectManipulationViewportEventHandlerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationViewportEventHandler_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationViewportEventHandler_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationViewportEventHandler_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationViewportEventHandler_OnViewportStatusChanged(This,viewport,current,previous)	\
    ( (This)->lpVtbl -> OnViewportStatusChanged(This,viewport,current,previous) ) 

#define IDirectManipulationViewportEventHandler_OnViewportUpdated(This,viewport)	\
    ( (This)->lpVtbl -> OnViewportUpdated(This,viewport) ) 

#define IDirectManipulationViewportEventHandler_OnContentUpdated(This,viewport,content)	\
    ( (This)->lpVtbl -> OnContentUpdated(This,viewport,content) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationViewportEventHandler_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationContent_INTERFACE_DEFINED__
#define __IDirectManipulationContent_INTERFACE_DEFINED__

/* interface IDirectManipulationContent */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationContent;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("B89962CB-3D89-442B-BB58-5098FA0F9F16")
    IDirectManipulationContent : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetContentRect( 
            /* [annotation][out] */ 
            _Out_  RECT *contentSize) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetContentRect( 
            /* [annotation][in] */ 
            _In_  const RECT *contentSize) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetViewport( 
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetTag( 
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_opt_  void **object,
            /* [annotation][out] */ 
            _Out_opt_  UINT32 *id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetTag( 
            /* [annotation][unique][in] */ 
            _In_opt_  IUnknown *object,
            /* [annotation][in] */ 
            _In_  UINT32 id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetOutputTransform( 
            /* [annotation][out] */ 
            _Out_writes_(pointCount)  float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetContentTransform( 
            /* [annotation][out] */ 
            _Out_writes_(pointCount)  float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SyncContentTransform( 
            /* [annotation][in] */ 
            _In_reads_(pointCount)  const float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationContentVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationContent * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationContent * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationContent * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetContentRect )( 
            IDirectManipulationContent * This,
            /* [annotation][out] */ 
            _Out_  RECT *contentSize);
        
        HRESULT ( STDMETHODCALLTYPE *SetContentRect )( 
            IDirectManipulationContent * This,
            /* [annotation][in] */ 
            _In_  const RECT *contentSize);
        
        HRESULT ( STDMETHODCALLTYPE *GetViewport )( 
            IDirectManipulationContent * This,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][retval][iid_is][out] */ 
            _COM_Outptr_  void **object);
        
        HRESULT ( STDMETHODCALLTYPE *GetTag )( 
            IDirectManipulationContent * This,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_opt_  void **object,
            /* [annotation][out] */ 
            _Out_opt_  UINT32 *id);
        
        HRESULT ( STDMETHODCALLTYPE *SetTag )( 
            IDirectManipulationContent * This,
            /* [annotation][unique][in] */ 
            _In_opt_  IUnknown *object,
            /* [annotation][in] */ 
            _In_  UINT32 id);
        
        HRESULT ( STDMETHODCALLTYPE *GetOutputTransform )( 
            IDirectManipulationContent * This,
            /* [annotation][out] */ 
            _Out_writes_(pointCount)  float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        HRESULT ( STDMETHODCALLTYPE *GetContentTransform )( 
            IDirectManipulationContent * This,
            /* [annotation][out] */ 
            _Out_writes_(pointCount)  float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        HRESULT ( STDMETHODCALLTYPE *SyncContentTransform )( 
            IDirectManipulationContent * This,
            /* [annotation][in] */ 
            _In_reads_(pointCount)  const float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        END_INTERFACE
    } IDirectManipulationContentVtbl;

    interface IDirectManipulationContent
    {
        CONST_VTBL struct IDirectManipulationContentVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationContent_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationContent_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationContent_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationContent_GetContentRect(This,contentSize)	\
    ( (This)->lpVtbl -> GetContentRect(This,contentSize) ) 

#define IDirectManipulationContent_SetContentRect(This,contentSize)	\
    ( (This)->lpVtbl -> SetContentRect(This,contentSize) ) 

#define IDirectManipulationContent_GetViewport(This,riid,object)	\
    ( (This)->lpVtbl -> GetViewport(This,riid,object) ) 

#define IDirectManipulationContent_GetTag(This,riid,object,id)	\
    ( (This)->lpVtbl -> GetTag(This,riid,object,id) ) 

#define IDirectManipulationContent_SetTag(This,object,id)	\
    ( (This)->lpVtbl -> SetTag(This,object,id) ) 

#define IDirectManipulationContent_GetOutputTransform(This,matrix,pointCount)	\
    ( (This)->lpVtbl -> GetOutputTransform(This,matrix,pointCount) ) 

#define IDirectManipulationContent_GetContentTransform(This,matrix,pointCount)	\
    ( (This)->lpVtbl -> GetContentTransform(This,matrix,pointCount) ) 

#define IDirectManipulationContent_SyncContentTransform(This,matrix,pointCount)	\
    ( (This)->lpVtbl -> SyncContentTransform(This,matrix,pointCount) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationContent_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationPrimaryContent_INTERFACE_DEFINED__
#define __IDirectManipulationPrimaryContent_INTERFACE_DEFINED__

/* interface IDirectManipulationPrimaryContent */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationPrimaryContent;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("C12851E4-1698-4625-B9B1-7CA3EC18630B")
    IDirectManipulationPrimaryContent : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetSnapInterval( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_  float interval,
            /* [annotation][in] */ 
            _In_  float offset) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSnapPoints( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_reads_opt_(pointCount)  const float *points,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSnapType( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_SNAPPOINT_TYPE type) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSnapCoordinate( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_SNAPPOINT_COORDINATE coordinate,
            /* [annotation][in] */ 
            _In_  float origin) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetZoomBoundaries( 
            /* [annotation][in] */ 
            _In_  float zoomMinimum,
            /* [annotation][in] */ 
            _In_  float zoomMaximum) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetHorizontalAlignment( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_HORIZONTALALIGNMENT alignment) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetVerticalAlignment( 
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_VERTICALALIGNMENT alignment) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetInertiaEndTransform( 
            /* [annotation][out] */ 
            _Out_writes_(pointCount)  float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetCenterPoint( 
            /* [annotation][out] */ 
            _Out_  float *centerX,
            /* [annotation][out] */ 
            _Out_  float *centerY) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationPrimaryContentVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationPrimaryContent * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationPrimaryContent * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationPrimaryContent * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetSnapInterval )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_  float interval,
            /* [annotation][in] */ 
            _In_  float offset);
        
        HRESULT ( STDMETHODCALLTYPE *SetSnapPoints )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_reads_opt_(pointCount)  const float *points,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        HRESULT ( STDMETHODCALLTYPE *SetSnapType )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_SNAPPOINT_TYPE type);
        
        HRESULT ( STDMETHODCALLTYPE *SetSnapCoordinate )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_MOTION_TYPES motion,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_SNAPPOINT_COORDINATE coordinate,
            /* [annotation][in] */ 
            _In_  float origin);
        
        HRESULT ( STDMETHODCALLTYPE *SetZoomBoundaries )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  float zoomMinimum,
            /* [annotation][in] */ 
            _In_  float zoomMaximum);
        
        HRESULT ( STDMETHODCALLTYPE *SetHorizontalAlignment )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_HORIZONTALALIGNMENT alignment);
        
        HRESULT ( STDMETHODCALLTYPE *SetVerticalAlignment )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][in] */ 
            _In_  DIRECTMANIPULATION_VERTICALALIGNMENT alignment);
        
        HRESULT ( STDMETHODCALLTYPE *GetInertiaEndTransform )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][out] */ 
            _Out_writes_(pointCount)  float *matrix,
            /* [annotation][in] */ 
            _In_  DWORD pointCount);
        
        HRESULT ( STDMETHODCALLTYPE *GetCenterPoint )( 
            IDirectManipulationPrimaryContent * This,
            /* [annotation][out] */ 
            _Out_  float *centerX,
            /* [annotation][out] */ 
            _Out_  float *centerY);
        
        END_INTERFACE
    } IDirectManipulationPrimaryContentVtbl;

    interface IDirectManipulationPrimaryContent
    {
        CONST_VTBL struct IDirectManipulationPrimaryContentVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationPrimaryContent_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationPrimaryContent_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationPrimaryContent_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationPrimaryContent_SetSnapInterval(This,motion,interval,offset)	\
    ( (This)->lpVtbl -> SetSnapInterval(This,motion,interval,offset) ) 

#define IDirectManipulationPrimaryContent_SetSnapPoints(This,motion,points,pointCount)	\
    ( (This)->lpVtbl -> SetSnapPoints(This,motion,points,pointCount) ) 

#define IDirectManipulationPrimaryContent_SetSnapType(This,motion,type)	\
    ( (This)->lpVtbl -> SetSnapType(This,motion,type) ) 

#define IDirectManipulationPrimaryContent_SetSnapCoordinate(This,motion,coordinate,origin)	\
    ( (This)->lpVtbl -> SetSnapCoordinate(This,motion,coordinate,origin) ) 

#define IDirectManipulationPrimaryContent_SetZoomBoundaries(This,zoomMinimum,zoomMaximum)	\
    ( (This)->lpVtbl -> SetZoomBoundaries(This,zoomMinimum,zoomMaximum) ) 

#define IDirectManipulationPrimaryContent_SetHorizontalAlignment(This,alignment)	\
    ( (This)->lpVtbl -> SetHorizontalAlignment(This,alignment) ) 

#define IDirectManipulationPrimaryContent_SetVerticalAlignment(This,alignment)	\
    ( (This)->lpVtbl -> SetVerticalAlignment(This,alignment) ) 

#define IDirectManipulationPrimaryContent_GetInertiaEndTransform(This,matrix,pointCount)	\
    ( (This)->lpVtbl -> GetInertiaEndTransform(This,matrix,pointCount) ) 

#define IDirectManipulationPrimaryContent_GetCenterPoint(This,centerX,centerY)	\
    ( (This)->lpVtbl -> GetCenterPoint(This,centerX,centerY) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationPrimaryContent_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationFrameInfoProvider_INTERFACE_DEFINED__
#define __IDirectManipulationFrameInfoProvider_INTERFACE_DEFINED__

/* interface IDirectManipulationFrameInfoProvider */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationFrameInfoProvider;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("fb759dba-6f4c-4c01-874e-19c8a05907f9")
    IDirectManipulationFrameInfoProvider : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetNextFrameInfo( 
            /* [annotation][out] */ 
            _Out_  ULONGLONG *time,
            /* [annotation][out] */ 
            _Out_  ULONGLONG *processTime,
            /* [annotation][out] */ 
            _Out_  ULONGLONG *compositionTime) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationFrameInfoProviderVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationFrameInfoProvider * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationFrameInfoProvider * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationFrameInfoProvider * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetNextFrameInfo )( 
            IDirectManipulationFrameInfoProvider * This,
            /* [annotation][out] */ 
            _Out_  ULONGLONG *time,
            /* [annotation][out] */ 
            _Out_  ULONGLONG *processTime,
            /* [annotation][out] */ 
            _Out_  ULONGLONG *compositionTime);
        
        END_INTERFACE
    } IDirectManipulationFrameInfoProviderVtbl;

    interface IDirectManipulationFrameInfoProvider
    {
        CONST_VTBL struct IDirectManipulationFrameInfoProviderVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationFrameInfoProvider_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationFrameInfoProvider_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationFrameInfoProvider_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationFrameInfoProvider_GetNextFrameInfo(This,time,processTime,compositionTime)	\
    ( (This)->lpVtbl -> GetNextFrameInfo(This,time,processTime,compositionTime) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationFrameInfoProvider_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationCompositor_INTERFACE_DEFINED__
#define __IDirectManipulationCompositor_INTERFACE_DEFINED__

/* interface IDirectManipulationCompositor */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationCompositor;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("537A0825-0387-4EFA-B62F-71EB1F085A7E")
    IDirectManipulationCompositor : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE AddContent( 
            /* [annotation][in] */ 
            _In_  IDirectManipulationContent *content,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *device,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *parentVisual,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *childVisual) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveContent( 
            /* [annotation][in] */ 
            _In_  IDirectManipulationContent *content) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetUpdateManager( 
            /* [annotation][in] */ 
            _In_  IDirectManipulationUpdateManager *updateManager) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Flush( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationCompositorVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationCompositor * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationCompositor * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationCompositor * This);
        
        HRESULT ( STDMETHODCALLTYPE *AddContent )( 
            IDirectManipulationCompositor * This,
            /* [annotation][in] */ 
            _In_  IDirectManipulationContent *content,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *device,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *parentVisual,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *childVisual);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveContent )( 
            IDirectManipulationCompositor * This,
            /* [annotation][in] */ 
            _In_  IDirectManipulationContent *content);
        
        HRESULT ( STDMETHODCALLTYPE *SetUpdateManager )( 
            IDirectManipulationCompositor * This,
            /* [annotation][in] */ 
            _In_  IDirectManipulationUpdateManager *updateManager);
        
        HRESULT ( STDMETHODCALLTYPE *Flush )( 
            IDirectManipulationCompositor * This);
        
        END_INTERFACE
    } IDirectManipulationCompositorVtbl;

    interface IDirectManipulationCompositor
    {
        CONST_VTBL struct IDirectManipulationCompositorVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationCompositor_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationCompositor_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationCompositor_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationCompositor_AddContent(This,content,device,parentVisual,childVisual)	\
    ( (This)->lpVtbl -> AddContent(This,content,device,parentVisual,childVisual) ) 

#define IDirectManipulationCompositor_RemoveContent(This,content)	\
    ( (This)->lpVtbl -> RemoveContent(This,content) ) 

#define IDirectManipulationCompositor_SetUpdateManager(This,updateManager)	\
    ( (This)->lpVtbl -> SetUpdateManager(This,updateManager) ) 

#define IDirectManipulationCompositor_Flush(This)	\
    ( (This)->lpVtbl -> Flush(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationCompositor_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationUpdateHandler_INTERFACE_DEFINED__
#define __IDirectManipulationUpdateHandler_INTERFACE_DEFINED__

/* interface IDirectManipulationUpdateHandler */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationUpdateHandler;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("790B6337-64F8-4FF5-A269-B32BC2AF27A7")
    IDirectManipulationUpdateHandler : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Update( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationUpdateHandlerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationUpdateHandler * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationUpdateHandler * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationUpdateHandler * This);
        
        HRESULT ( STDMETHODCALLTYPE *Update )( 
            IDirectManipulationUpdateHandler * This);
        
        END_INTERFACE
    } IDirectManipulationUpdateHandlerVtbl;

    interface IDirectManipulationUpdateHandler
    {
        CONST_VTBL struct IDirectManipulationUpdateHandlerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationUpdateHandler_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationUpdateHandler_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationUpdateHandler_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationUpdateHandler_Update(This)	\
    ( (This)->lpVtbl -> Update(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationUpdateHandler_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationUpdateManager_INTERFACE_DEFINED__
#define __IDirectManipulationUpdateManager_INTERFACE_DEFINED__

/* interface IDirectManipulationUpdateManager */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationUpdateManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("B0AE62FD-BE34-46E7-9CAA-D361FACBB9CC")
    IDirectManipulationUpdateManager : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE RegisterWaitHandleCallback( 
            /* [annotation][in] */ 
            _In_  HANDLE handle,
            /* [annotation][in] */ 
            _In_  IDirectManipulationUpdateHandler *eventHandler,
            /* [annotation][out] */ 
            _Out_  DWORD *cookie) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE UnregisterWaitHandleCallback( 
            /* [annotation][in] */ 
            _In_  DWORD cookie) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Update( 
            /* [annotation][in] */ 
            _In_opt_  IDirectManipulationFrameInfoProvider *frameInfo) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationUpdateManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationUpdateManager * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationUpdateManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationUpdateManager * This);
        
        HRESULT ( STDMETHODCALLTYPE *RegisterWaitHandleCallback )( 
            IDirectManipulationUpdateManager * This,
            /* [annotation][in] */ 
            _In_  HANDLE handle,
            /* [annotation][in] */ 
            _In_  IDirectManipulationUpdateHandler *eventHandler,
            /* [annotation][out] */ 
            _Out_  DWORD *cookie);
        
        HRESULT ( STDMETHODCALLTYPE *UnregisterWaitHandleCallback )( 
            IDirectManipulationUpdateManager * This,
            /* [annotation][in] */ 
            _In_  DWORD cookie);
        
        HRESULT ( STDMETHODCALLTYPE *Update )( 
            IDirectManipulationUpdateManager * This,
            /* [annotation][in] */ 
            _In_opt_  IDirectManipulationFrameInfoProvider *frameInfo);
        
        END_INTERFACE
    } IDirectManipulationUpdateManagerVtbl;

    interface IDirectManipulationUpdateManager
    {
        CONST_VTBL struct IDirectManipulationUpdateManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationUpdateManager_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationUpdateManager_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationUpdateManager_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationUpdateManager_RegisterWaitHandleCallback(This,handle,eventHandler,cookie)	\
    ( (This)->lpVtbl -> RegisterWaitHandleCallback(This,handle,eventHandler,cookie) ) 

#define IDirectManipulationUpdateManager_UnregisterWaitHandleCallback(This,cookie)	\
    ( (This)->lpVtbl -> UnregisterWaitHandleCallback(This,cookie) ) 

#define IDirectManipulationUpdateManager_Update(This,frameInfo)	\
    ( (This)->lpVtbl -> Update(This,frameInfo) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationUpdateManager_INTERFACE_DEFINED__ */


#ifndef __IDirectManipulationContactHandler_INTERFACE_DEFINED__
#define __IDirectManipulationContactHandler_INTERFACE_DEFINED__

/* interface IDirectManipulationContactHandler */
/* [unique][helpstring][uuid][object][local] */ 


EXTERN_C const IID IID_IDirectManipulationContactHandler;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("DCF8B13E-3BA1-4616-844A-9CAA08B47583")
    IDirectManipulationContactHandler : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE OnPointerDown( 
            /* [annotation][in] */ 
            _In_  UINT32 pointerId) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDirectManipulationContactHandlerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDirectManipulationContactHandler * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDirectManipulationContactHandler * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDirectManipulationContactHandler * This);
        
        HRESULT ( STDMETHODCALLTYPE *OnPointerDown )( 
            IDirectManipulationContactHandler * This,
            /* [annotation][in] */ 
            _In_  UINT32 pointerId);
        
        END_INTERFACE
    } IDirectManipulationContactHandlerVtbl;

    interface IDirectManipulationContactHandler
    {
        CONST_VTBL struct IDirectManipulationContactHandlerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDirectManipulationContactHandler_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDirectManipulationContactHandler_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDirectManipulationContactHandler_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDirectManipulationContactHandler_OnPointerDown(This,pointerId)	\
    ( (This)->lpVtbl -> OnPointerDown(This,pointerId) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDirectManipulationContactHandler_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_directmanipulation_0000_0010 */
/* [local] */ 

#endif // #if (NTDDI_VERSION > NTDDI_WIN8)


extern RPC_IF_HANDLE __MIDL_itf_directmanipulation_0000_0010_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_directmanipulation_0000_0010_v0_0_s_ifspec;


#ifndef __DirectManipulation_LIBRARY_DEFINED__
#define __DirectManipulation_LIBRARY_DEFINED__

/* library DirectManipulation */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_DirectManipulation;

EXTERN_C const CLSID CLSID_DirectManipulationViewport;

#ifdef __cplusplus

class DECLSPEC_UUID("34E211B6-3650-4F75-8334-FA359598E1C5")
DirectManipulationViewport;
#endif

EXTERN_C const CLSID CLSID_DirectManipulationContactHandler;

#ifdef __cplusplus

class DECLSPEC_UUID("B294E8DD-A106-4B1A-A2B6-7A2CD00FCB90")
DirectManipulationContactHandler;
#endif

EXTERN_C const CLSID CLSID_DirectManipulationUpdateManager;

#ifdef __cplusplus

class DECLSPEC_UUID("9FC1BFD5-1835-441A-B3B1-B6CC74B727D0")
DirectManipulationUpdateManager;
#endif

EXTERN_C const CLSID CLSID_DirectManipulationPrimaryContent;

#ifdef __cplusplus

class DECLSPEC_UUID("CAA02661-D59E-41C7-8393-3BA3BACB6B57")
DirectManipulationPrimaryContent;
#endif

EXTERN_C const CLSID CLSID_DirectManipulationManager;

#ifdef __cplusplus

class DECLSPEC_UUID("54E211B6-3650-4F75-8334-FA359598E1C5")
DirectManipulationManager;
#endif

EXTERN_C const CLSID CLSID_DCompManipulationCompositor;

#ifdef __cplusplus

class DECLSPEC_UUID("79DEA627-A08A-43AC-8EF5-6900B9299126")
DCompManipulationCompositor;
#endif
#endif /* __DirectManipulation_LIBRARY_DEFINED__ */

/* interface __MIDL_itf_directmanipulation_0000_0011 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_directmanipulation_0000_0011_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_directmanipulation_0000_0011_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


