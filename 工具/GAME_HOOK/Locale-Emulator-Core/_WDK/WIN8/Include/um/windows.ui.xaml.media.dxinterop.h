

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

#ifndef __windows2Eui2Examl2Emedia2Edxinterop_h__
#define __windows2Eui2Examl2Emedia2Edxinterop_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __ISurfaceImageSourceNative_FWD_DEFINED__
#define __ISurfaceImageSourceNative_FWD_DEFINED__
typedef interface ISurfaceImageSourceNative ISurfaceImageSourceNative;

#endif 	/* __ISurfaceImageSourceNative_FWD_DEFINED__ */


#ifndef __IVirtualSurfaceUpdatesCallbackNative_FWD_DEFINED__
#define __IVirtualSurfaceUpdatesCallbackNative_FWD_DEFINED__
typedef interface IVirtualSurfaceUpdatesCallbackNative IVirtualSurfaceUpdatesCallbackNative;

#endif 	/* __IVirtualSurfaceUpdatesCallbackNative_FWD_DEFINED__ */


#ifndef __IVirtualSurfaceImageSourceNative_FWD_DEFINED__
#define __IVirtualSurfaceImageSourceNative_FWD_DEFINED__
typedef interface IVirtualSurfaceImageSourceNative IVirtualSurfaceImageSourceNative;

#endif 	/* __IVirtualSurfaceImageSourceNative_FWD_DEFINED__ */


#ifndef __ISwapChainBackgroundPanelNative_FWD_DEFINED__
#define __ISwapChainBackgroundPanelNative_FWD_DEFINED__
typedef interface ISwapChainBackgroundPanelNative ISwapChainBackgroundPanelNative;

#endif 	/* __ISwapChainBackgroundPanelNative_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "dxgi.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_windows2Eui2Examl2Emedia2Edxinterop_0000_0000 */
/* [local] */ 

#if (NTDDI_VERSION >= NTDDI_WIN8)


extern RPC_IF_HANDLE __MIDL_itf_windows2Eui2Examl2Emedia2Edxinterop_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_windows2Eui2Examl2Emedia2Edxinterop_0000_0000_v0_0_s_ifspec;

#ifndef __ISurfaceImageSourceNative_INTERFACE_DEFINED__
#define __ISurfaceImageSourceNative_INTERFACE_DEFINED__

/* interface ISurfaceImageSourceNative */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_ISurfaceImageSourceNative;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("f2e9edc1-d307-4525-9886-0fafaa44163c")
    ISurfaceImageSourceNative : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetDevice( 
            /* [annotation][in] */ 
            _In_  IDXGIDevice *pDevice) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE BeginDraw( 
            /* [annotation][in] */ 
            _In_  RECT updateRect,
            /* [annotation][out] */ 
            _Out_  IDXGISurface **pSurface,
            /* [annotation][out] */ 
            _Out_  POINT *offset) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE EndDraw( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct ISurfaceImageSourceNativeVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            ISurfaceImageSourceNative * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            ISurfaceImageSourceNative * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            ISurfaceImageSourceNative * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDevice )( 
            ISurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  IDXGIDevice *pDevice);
        
        HRESULT ( STDMETHODCALLTYPE *BeginDraw )( 
            ISurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  RECT updateRect,
            /* [annotation][out] */ 
            _Out_  IDXGISurface **pSurface,
            /* [annotation][out] */ 
            _Out_  POINT *offset);
        
        HRESULT ( STDMETHODCALLTYPE *EndDraw )( 
            ISurfaceImageSourceNative * This);
        
        END_INTERFACE
    } ISurfaceImageSourceNativeVtbl;

    interface ISurfaceImageSourceNative
    {
        CONST_VTBL struct ISurfaceImageSourceNativeVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ISurfaceImageSourceNative_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define ISurfaceImageSourceNative_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define ISurfaceImageSourceNative_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define ISurfaceImageSourceNative_SetDevice(This,pDevice)	\
    ( (This)->lpVtbl -> SetDevice(This,pDevice) ) 

#define ISurfaceImageSourceNative_BeginDraw(This,updateRect,pSurface,offset)	\
    ( (This)->lpVtbl -> BeginDraw(This,updateRect,pSurface,offset) ) 

#define ISurfaceImageSourceNative_EndDraw(This)	\
    ( (This)->lpVtbl -> EndDraw(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __ISurfaceImageSourceNative_INTERFACE_DEFINED__ */


#ifndef __IVirtualSurfaceUpdatesCallbackNative_INTERFACE_DEFINED__
#define __IVirtualSurfaceUpdatesCallbackNative_INTERFACE_DEFINED__

/* interface IVirtualSurfaceUpdatesCallbackNative */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_IVirtualSurfaceUpdatesCallbackNative;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("dbf2e947-8e6c-4254-9eee-7738f71386c9")
    IVirtualSurfaceUpdatesCallbackNative : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE UpdatesNeeded( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IVirtualSurfaceUpdatesCallbackNativeVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IVirtualSurfaceUpdatesCallbackNative * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IVirtualSurfaceUpdatesCallbackNative * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IVirtualSurfaceUpdatesCallbackNative * This);
        
        HRESULT ( STDMETHODCALLTYPE *UpdatesNeeded )( 
            IVirtualSurfaceUpdatesCallbackNative * This);
        
        END_INTERFACE
    } IVirtualSurfaceUpdatesCallbackNativeVtbl;

    interface IVirtualSurfaceUpdatesCallbackNative
    {
        CONST_VTBL struct IVirtualSurfaceUpdatesCallbackNativeVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IVirtualSurfaceUpdatesCallbackNative_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IVirtualSurfaceUpdatesCallbackNative_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IVirtualSurfaceUpdatesCallbackNative_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IVirtualSurfaceUpdatesCallbackNative_UpdatesNeeded(This)	\
    ( (This)->lpVtbl -> UpdatesNeeded(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IVirtualSurfaceUpdatesCallbackNative_INTERFACE_DEFINED__ */


#ifndef __IVirtualSurfaceImageSourceNative_INTERFACE_DEFINED__
#define __IVirtualSurfaceImageSourceNative_INTERFACE_DEFINED__

/* interface IVirtualSurfaceImageSourceNative */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_IVirtualSurfaceImageSourceNative;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("e9550983-360b-4f53-b391-afd695078691")
    IVirtualSurfaceImageSourceNative : public ISurfaceImageSourceNative
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Invalidate( 
            /* [annotation][in] */ 
            _In_  RECT updateRect) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetUpdateRectCount( 
            /* [annotation][out] */ 
            _Out_  DWORD *pCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetUpdateRects( 
            /* [annotation][size_is][out] */ 
            _Out_writes_(count)  RECT *pUpdates,
            /* [annotation][in] */ 
            _In_  DWORD count) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetVisibleBounds( 
            /* [annotation][out] */ 
            _Out_  RECT *pBounds) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RegisterForUpdatesNeeded( 
            /* [annotation][in] */ 
            _In_  IVirtualSurfaceUpdatesCallbackNative *pCallback) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Resize( 
            /* [annotation][in] */ 
            _In_  INT newWidth,
            /* [annotation][in] */ 
            _In_  INT newHeight) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IVirtualSurfaceImageSourceNativeVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IVirtualSurfaceImageSourceNative * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IVirtualSurfaceImageSourceNative * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDevice )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  IDXGIDevice *pDevice);
        
        HRESULT ( STDMETHODCALLTYPE *BeginDraw )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  RECT updateRect,
            /* [annotation][out] */ 
            _Out_  IDXGISurface **pSurface,
            /* [annotation][out] */ 
            _Out_  POINT *offset);
        
        HRESULT ( STDMETHODCALLTYPE *EndDraw )( 
            IVirtualSurfaceImageSourceNative * This);
        
        HRESULT ( STDMETHODCALLTYPE *Invalidate )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  RECT updateRect);
        
        HRESULT ( STDMETHODCALLTYPE *GetUpdateRectCount )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][out] */ 
            _Out_  DWORD *pCount);
        
        HRESULT ( STDMETHODCALLTYPE *GetUpdateRects )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][size_is][out] */ 
            _Out_writes_(count)  RECT *pUpdates,
            /* [annotation][in] */ 
            _In_  DWORD count);
        
        HRESULT ( STDMETHODCALLTYPE *GetVisibleBounds )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][out] */ 
            _Out_  RECT *pBounds);
        
        HRESULT ( STDMETHODCALLTYPE *RegisterForUpdatesNeeded )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  IVirtualSurfaceUpdatesCallbackNative *pCallback);
        
        HRESULT ( STDMETHODCALLTYPE *Resize )( 
            IVirtualSurfaceImageSourceNative * This,
            /* [annotation][in] */ 
            _In_  INT newWidth,
            /* [annotation][in] */ 
            _In_  INT newHeight);
        
        END_INTERFACE
    } IVirtualSurfaceImageSourceNativeVtbl;

    interface IVirtualSurfaceImageSourceNative
    {
        CONST_VTBL struct IVirtualSurfaceImageSourceNativeVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IVirtualSurfaceImageSourceNative_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IVirtualSurfaceImageSourceNative_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IVirtualSurfaceImageSourceNative_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IVirtualSurfaceImageSourceNative_SetDevice(This,pDevice)	\
    ( (This)->lpVtbl -> SetDevice(This,pDevice) ) 

#define IVirtualSurfaceImageSourceNative_BeginDraw(This,updateRect,pSurface,offset)	\
    ( (This)->lpVtbl -> BeginDraw(This,updateRect,pSurface,offset) ) 

#define IVirtualSurfaceImageSourceNative_EndDraw(This)	\
    ( (This)->lpVtbl -> EndDraw(This) ) 


#define IVirtualSurfaceImageSourceNative_Invalidate(This,updateRect)	\
    ( (This)->lpVtbl -> Invalidate(This,updateRect) ) 

#define IVirtualSurfaceImageSourceNative_GetUpdateRectCount(This,pCount)	\
    ( (This)->lpVtbl -> GetUpdateRectCount(This,pCount) ) 

#define IVirtualSurfaceImageSourceNative_GetUpdateRects(This,pUpdates,count)	\
    ( (This)->lpVtbl -> GetUpdateRects(This,pUpdates,count) ) 

#define IVirtualSurfaceImageSourceNative_GetVisibleBounds(This,pBounds)	\
    ( (This)->lpVtbl -> GetVisibleBounds(This,pBounds) ) 

#define IVirtualSurfaceImageSourceNative_RegisterForUpdatesNeeded(This,pCallback)	\
    ( (This)->lpVtbl -> RegisterForUpdatesNeeded(This,pCallback) ) 

#define IVirtualSurfaceImageSourceNative_Resize(This,newWidth,newHeight)	\
    ( (This)->lpVtbl -> Resize(This,newWidth,newHeight) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IVirtualSurfaceImageSourceNative_INTERFACE_DEFINED__ */


#ifndef __ISwapChainBackgroundPanelNative_INTERFACE_DEFINED__
#define __ISwapChainBackgroundPanelNative_INTERFACE_DEFINED__

/* interface ISwapChainBackgroundPanelNative */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_ISwapChainBackgroundPanelNative;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("43bebd4e-add5-4035-8f85-5608d08e9dc9")
    ISwapChainBackgroundPanelNative : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetSwapChain( 
            /* [annotation][in] */ 
            _In_  IDXGISwapChain *pSwapChain) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct ISwapChainBackgroundPanelNativeVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            ISwapChainBackgroundPanelNative * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            ISwapChainBackgroundPanelNative * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            ISwapChainBackgroundPanelNative * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetSwapChain )( 
            ISwapChainBackgroundPanelNative * This,
            /* [annotation][in] */ 
            _In_  IDXGISwapChain *pSwapChain);
        
        END_INTERFACE
    } ISwapChainBackgroundPanelNativeVtbl;

    interface ISwapChainBackgroundPanelNative
    {
        CONST_VTBL struct ISwapChainBackgroundPanelNativeVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ISwapChainBackgroundPanelNative_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define ISwapChainBackgroundPanelNative_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define ISwapChainBackgroundPanelNative_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define ISwapChainBackgroundPanelNative_SetSwapChain(This,pSwapChain)	\
    ( (This)->lpVtbl -> SetSwapChain(This,pSwapChain) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __ISwapChainBackgroundPanelNative_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_windows2Eui2Examl2Emedia2Edxinterop_0000_0004 */
/* [local] */ 

#endif // NTDDI_VERSION >= NTDDI_WIN8


extern RPC_IF_HANDLE __MIDL_itf_windows2Eui2Examl2Emedia2Edxinterop_0000_0004_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_windows2Eui2Examl2Emedia2Edxinterop_0000_0004_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


