

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

#ifndef __mfmediaengine_h__
#define __mfmediaengine_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IMFMediaError_FWD_DEFINED__
#define __IMFMediaError_FWD_DEFINED__
typedef interface IMFMediaError IMFMediaError;

#endif 	/* __IMFMediaError_FWD_DEFINED__ */


#ifndef __IMFMediaTimeRange_FWD_DEFINED__
#define __IMFMediaTimeRange_FWD_DEFINED__
typedef interface IMFMediaTimeRange IMFMediaTimeRange;

#endif 	/* __IMFMediaTimeRange_FWD_DEFINED__ */


#ifndef __IMFMediaEngineNotify_FWD_DEFINED__
#define __IMFMediaEngineNotify_FWD_DEFINED__
typedef interface IMFMediaEngineNotify IMFMediaEngineNotify;

#endif 	/* __IMFMediaEngineNotify_FWD_DEFINED__ */


#ifndef __IMFMediaEngineSrcElements_FWD_DEFINED__
#define __IMFMediaEngineSrcElements_FWD_DEFINED__
typedef interface IMFMediaEngineSrcElements IMFMediaEngineSrcElements;

#endif 	/* __IMFMediaEngineSrcElements_FWD_DEFINED__ */


#ifndef __IMFMediaEngine_FWD_DEFINED__
#define __IMFMediaEngine_FWD_DEFINED__
typedef interface IMFMediaEngine IMFMediaEngine;

#endif 	/* __IMFMediaEngine_FWD_DEFINED__ */


#ifndef __IMFMediaEngineEx_FWD_DEFINED__
#define __IMFMediaEngineEx_FWD_DEFINED__
typedef interface IMFMediaEngineEx IMFMediaEngineEx;

#endif 	/* __IMFMediaEngineEx_FWD_DEFINED__ */


#ifndef __IMFMediaEngineExtension_FWD_DEFINED__
#define __IMFMediaEngineExtension_FWD_DEFINED__
typedef interface IMFMediaEngineExtension IMFMediaEngineExtension;

#endif 	/* __IMFMediaEngineExtension_FWD_DEFINED__ */


#ifndef __IMFMediaEngineProtectedContent_FWD_DEFINED__
#define __IMFMediaEngineProtectedContent_FWD_DEFINED__
typedef interface IMFMediaEngineProtectedContent IMFMediaEngineProtectedContent;

#endif 	/* __IMFMediaEngineProtectedContent_FWD_DEFINED__ */


#ifndef __IMFMediaEngineClassFactory_FWD_DEFINED__
#define __IMFMediaEngineClassFactory_FWD_DEFINED__
typedef interface IMFMediaEngineClassFactory IMFMediaEngineClassFactory;

#endif 	/* __IMFMediaEngineClassFactory_FWD_DEFINED__ */


/* header files for imported files */
#include "unknwn.h"
#include "mfidl.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_mfmediaengine_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#if (WINVER >= _WIN32_WINNT_WIN8) 

// Prevent a name collision
#undef GetCurrentTime

#pragma region Application Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
#define MF_INVALID_PRESENTATION_TIME 0x8000000000000000
typedef 
enum MF_MEDIA_ENGINE_ERR
    {
        MF_MEDIA_ENGINE_ERR_NOERROR	= 0,
        MF_MEDIA_ENGINE_ERR_ABORTED	= 1,
        MF_MEDIA_ENGINE_ERR_NETWORK	= 2,
        MF_MEDIA_ENGINE_ERR_DECODE	= 3,
        MF_MEDIA_ENGINE_ERR_SRC_NOT_SUPPORTED	= 4
    } 	MF_MEDIA_ENGINE_ERR;



extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0000_v0_0_s_ifspec;

#ifndef __IMFMediaError_INTERFACE_DEFINED__
#define __IMFMediaError_INTERFACE_DEFINED__

/* interface IMFMediaError */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaError;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("fc0e10d2-ab2a-4501-a951-06bb1075184c")
    IMFMediaError : public IUnknown
    {
    public:
        virtual USHORT STDMETHODCALLTYPE GetErrorCode( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetExtendedErrorCode( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetErrorCode( 
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_ERR error) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetExtendedErrorCode( 
            /* [annotation][in] */ 
            _In_  HRESULT error) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaErrorVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaError * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaError * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaError * This);
        
        USHORT ( STDMETHODCALLTYPE *GetErrorCode )( 
            IMFMediaError * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetExtendedErrorCode )( 
            IMFMediaError * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetErrorCode )( 
            IMFMediaError * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_ERR error);
        
        HRESULT ( STDMETHODCALLTYPE *SetExtendedErrorCode )( 
            IMFMediaError * This,
            /* [annotation][in] */ 
            _In_  HRESULT error);
        
        END_INTERFACE
    } IMFMediaErrorVtbl;

    interface IMFMediaError
    {
        CONST_VTBL struct IMFMediaErrorVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaError_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaError_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaError_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaError_GetErrorCode(This)	\
    ( (This)->lpVtbl -> GetErrorCode(This) ) 

#define IMFMediaError_GetExtendedErrorCode(This)	\
    ( (This)->lpVtbl -> GetExtendedErrorCode(This) ) 

#define IMFMediaError_SetErrorCode(This,error)	\
    ( (This)->lpVtbl -> SetErrorCode(This,error) ) 

#define IMFMediaError_SetExtendedErrorCode(This,error)	\
    ( (This)->lpVtbl -> SetExtendedErrorCode(This,error) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaError_INTERFACE_DEFINED__ */


#ifndef __IMFMediaTimeRange_INTERFACE_DEFINED__
#define __IMFMediaTimeRange_INTERFACE_DEFINED__

/* interface IMFMediaTimeRange */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaTimeRange;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("db71a2fc-078a-414e-9df9-8c2531b0aa6c")
    IMFMediaTimeRange : public IUnknown
    {
    public:
        virtual DWORD STDMETHODCALLTYPE GetLength( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStart( 
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  double *pStart) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetEnd( 
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  double *pEnd) = 0;
        
        virtual BOOL STDMETHODCALLTYPE ContainsTime( 
            /* [annotation][in] */ 
            _In_  double time) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AddRange( 
            /* [annotation][in] */ 
            _In_  double startTime,
            /* [annotation][in] */ 
            _In_  double endTime) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Clear( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaTimeRangeVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaTimeRange * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaTimeRange * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaTimeRange * This);
        
        DWORD ( STDMETHODCALLTYPE *GetLength )( 
            IMFMediaTimeRange * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetStart )( 
            IMFMediaTimeRange * This,
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  double *pStart);
        
        HRESULT ( STDMETHODCALLTYPE *GetEnd )( 
            IMFMediaTimeRange * This,
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  double *pEnd);
        
        BOOL ( STDMETHODCALLTYPE *ContainsTime )( 
            IMFMediaTimeRange * This,
            /* [annotation][in] */ 
            _In_  double time);
        
        HRESULT ( STDMETHODCALLTYPE *AddRange )( 
            IMFMediaTimeRange * This,
            /* [annotation][in] */ 
            _In_  double startTime,
            /* [annotation][in] */ 
            _In_  double endTime);
        
        HRESULT ( STDMETHODCALLTYPE *Clear )( 
            IMFMediaTimeRange * This);
        
        END_INTERFACE
    } IMFMediaTimeRangeVtbl;

    interface IMFMediaTimeRange
    {
        CONST_VTBL struct IMFMediaTimeRangeVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaTimeRange_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaTimeRange_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaTimeRange_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaTimeRange_GetLength(This)	\
    ( (This)->lpVtbl -> GetLength(This) ) 

#define IMFMediaTimeRange_GetStart(This,index,pStart)	\
    ( (This)->lpVtbl -> GetStart(This,index,pStart) ) 

#define IMFMediaTimeRange_GetEnd(This,index,pEnd)	\
    ( (This)->lpVtbl -> GetEnd(This,index,pEnd) ) 

#define IMFMediaTimeRange_ContainsTime(This,time)	\
    ( (This)->lpVtbl -> ContainsTime(This,time) ) 

#define IMFMediaTimeRange_AddRange(This,startTime,endTime)	\
    ( (This)->lpVtbl -> AddRange(This,startTime,endTime) ) 

#define IMFMediaTimeRange_Clear(This)	\
    ( (This)->lpVtbl -> Clear(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaTimeRange_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0002 */
/* [local] */ 

typedef 
enum MF_MEDIA_ENGINE_EVENT
    {
        MF_MEDIA_ENGINE_EVENT_LOADSTART	= 1,
        MF_MEDIA_ENGINE_EVENT_PROGRESS	= 2,
        MF_MEDIA_ENGINE_EVENT_SUSPEND	= 3,
        MF_MEDIA_ENGINE_EVENT_ABORT	= 4,
        MF_MEDIA_ENGINE_EVENT_ERROR	= 5,
        MF_MEDIA_ENGINE_EVENT_EMPTIED	= 6,
        MF_MEDIA_ENGINE_EVENT_STALLED	= 7,
        MF_MEDIA_ENGINE_EVENT_PLAY	= 8,
        MF_MEDIA_ENGINE_EVENT_PAUSE	= 9,
        MF_MEDIA_ENGINE_EVENT_LOADEDMETADATA	= 10,
        MF_MEDIA_ENGINE_EVENT_LOADEDDATA	= 11,
        MF_MEDIA_ENGINE_EVENT_WAITING	= 12,
        MF_MEDIA_ENGINE_EVENT_PLAYING	= 13,
        MF_MEDIA_ENGINE_EVENT_CANPLAY	= 14,
        MF_MEDIA_ENGINE_EVENT_CANPLAYTHROUGH	= 15,
        MF_MEDIA_ENGINE_EVENT_SEEKING	= 16,
        MF_MEDIA_ENGINE_EVENT_SEEKED	= 17,
        MF_MEDIA_ENGINE_EVENT_TIMEUPDATE	= 18,
        MF_MEDIA_ENGINE_EVENT_ENDED	= 19,
        MF_MEDIA_ENGINE_EVENT_RATECHANGE	= 20,
        MF_MEDIA_ENGINE_EVENT_DURATIONCHANGE	= 21,
        MF_MEDIA_ENGINE_EVENT_VOLUMECHANGE	= 22,
        MF_MEDIA_ENGINE_EVENT_FORMATCHANGE	= 1000,
        MF_MEDIA_ENGINE_EVENT_PURGEQUEUEDEVENTS	= 1001,
        MF_MEDIA_ENGINE_EVENT_TIMELINE_MARKER	= 1002,
        MF_MEDIA_ENGINE_EVENT_BALANCECHANGE	= 1003,
        MF_MEDIA_ENGINE_EVENT_DOWNLOADCOMPLETE	= 1004,
        MF_MEDIA_ENGINE_EVENT_BUFFERINGSTARTED	= 1005,
        MF_MEDIA_ENGINE_EVENT_BUFFERINGENDED	= 1006,
        MF_MEDIA_ENGINE_EVENT_FRAMESTEPCOMPLETED	= 1007,
        MF_MEDIA_ENGINE_EVENT_NOTIFYSTABLESTATE	= 1008,
        MF_MEDIA_ENGINE_EVENT_FIRSTFRAMEREADY	= 1009
    } 	MF_MEDIA_ENGINE_EVENT;



extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0002_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0002_v0_0_s_ifspec;

#ifndef __IMFMediaEngineNotify_INTERFACE_DEFINED__
#define __IMFMediaEngineNotify_INTERFACE_DEFINED__

/* interface IMFMediaEngineNotify */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngineNotify;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("fee7c112-e776-42b5-9bbf-0048524e2bd5")
    IMFMediaEngineNotify : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE EventNotify( 
            /* [annotation][in] */ 
            _In_  DWORD event,
            /* [annotation][in] */ 
            _In_  DWORD_PTR param1,
            /* [annotation][in] */ 
            _In_  DWORD param2) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineNotifyVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngineNotify * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngineNotify * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngineNotify * This);
        
        HRESULT ( STDMETHODCALLTYPE *EventNotify )( 
            IMFMediaEngineNotify * This,
            /* [annotation][in] */ 
            _In_  DWORD event,
            /* [annotation][in] */ 
            _In_  DWORD_PTR param1,
            /* [annotation][in] */ 
            _In_  DWORD param2);
        
        END_INTERFACE
    } IMFMediaEngineNotifyVtbl;

    interface IMFMediaEngineNotify
    {
        CONST_VTBL struct IMFMediaEngineNotifyVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngineNotify_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngineNotify_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngineNotify_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngineNotify_EventNotify(This,event,param1,param2)	\
    ( (This)->lpVtbl -> EventNotify(This,event,param1,param2) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngineNotify_INTERFACE_DEFINED__ */


#ifndef __IMFMediaEngineSrcElements_INTERFACE_DEFINED__
#define __IMFMediaEngineSrcElements_INTERFACE_DEFINED__

/* interface IMFMediaEngineSrcElements */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngineSrcElements;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("7a5e5354-b114-4c72-b991-3131d75032ea")
    IMFMediaEngineSrcElements : public IUnknown
    {
    public:
        virtual DWORD STDMETHODCALLTYPE GetLength( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetURL( 
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  BSTR *pURL) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetType( 
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  BSTR *pType) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetMedia( 
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  BSTR *pMedia) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AddElement( 
            /* [annotation][in] */ 
            _In_opt_  BSTR pURL,
            /* [annotation][in] */ 
            _In_opt_  BSTR pType,
            /* [annotation][in] */ 
            _In_opt_  BSTR pMedia) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveAllElements( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineSrcElementsVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngineSrcElements * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngineSrcElements * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngineSrcElements * This);
        
        DWORD ( STDMETHODCALLTYPE *GetLength )( 
            IMFMediaEngineSrcElements * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetURL )( 
            IMFMediaEngineSrcElements * This,
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  BSTR *pURL);
        
        HRESULT ( STDMETHODCALLTYPE *GetType )( 
            IMFMediaEngineSrcElements * This,
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  BSTR *pType);
        
        HRESULT ( STDMETHODCALLTYPE *GetMedia )( 
            IMFMediaEngineSrcElements * This,
            /* [annotation][in] */ 
            _In_  DWORD index,
            /* [annotation][out] */ 
            _Out_  BSTR *pMedia);
        
        HRESULT ( STDMETHODCALLTYPE *AddElement )( 
            IMFMediaEngineSrcElements * This,
            /* [annotation][in] */ 
            _In_opt_  BSTR pURL,
            /* [annotation][in] */ 
            _In_opt_  BSTR pType,
            /* [annotation][in] */ 
            _In_opt_  BSTR pMedia);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveAllElements )( 
            IMFMediaEngineSrcElements * This);
        
        END_INTERFACE
    } IMFMediaEngineSrcElementsVtbl;

    interface IMFMediaEngineSrcElements
    {
        CONST_VTBL struct IMFMediaEngineSrcElementsVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngineSrcElements_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngineSrcElements_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngineSrcElements_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngineSrcElements_GetLength(This)	\
    ( (This)->lpVtbl -> GetLength(This) ) 

#define IMFMediaEngineSrcElements_GetURL(This,index,pURL)	\
    ( (This)->lpVtbl -> GetURL(This,index,pURL) ) 

#define IMFMediaEngineSrcElements_GetType(This,index,pType)	\
    ( (This)->lpVtbl -> GetType(This,index,pType) ) 

#define IMFMediaEngineSrcElements_GetMedia(This,index,pMedia)	\
    ( (This)->lpVtbl -> GetMedia(This,index,pMedia) ) 

#define IMFMediaEngineSrcElements_AddElement(This,pURL,pType,pMedia)	\
    ( (This)->lpVtbl -> AddElement(This,pURL,pType,pMedia) ) 

#define IMFMediaEngineSrcElements_RemoveAllElements(This)	\
    ( (This)->lpVtbl -> RemoveAllElements(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngineSrcElements_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0004 */
/* [local] */ 

typedef 
enum MF_MEDIA_ENGINE_NETWORK
    {
        MF_MEDIA_ENGINE_NETWORK_EMPTY	= 0,
        MF_MEDIA_ENGINE_NETWORK_IDLE	= 1,
        MF_MEDIA_ENGINE_NETWORK_LOADING	= 2,
        MF_MEDIA_ENGINE_NETWORK_NO_SOURCE	= 3
    } 	MF_MEDIA_ENGINE_NETWORK;

typedef 
enum MF_MEDIA_ENGINE_READY
    {
        MF_MEDIA_ENGINE_READY_HAVE_NOTHING	= 0,
        MF_MEDIA_ENGINE_READY_HAVE_METADATA	= 1,
        MF_MEDIA_ENGINE_READY_HAVE_CURRENT_DATA	= 2,
        MF_MEDIA_ENGINE_READY_HAVE_FUTURE_DATA	= 3,
        MF_MEDIA_ENGINE_READY_HAVE_ENOUGH_DATA	= 4
    } 	MF_MEDIA_ENGINE_READY;

typedef 
enum MF_MEDIA_ENGINE_CANPLAY
    {
        MF_MEDIA_ENGINE_CANPLAY_NOT_SUPPORTED	= 0,
        MF_MEDIA_ENGINE_CANPLAY_MAYBE	= 1,
        MF_MEDIA_ENGINE_CANPLAY_PROBABLY	= 2
    } 	MF_MEDIA_ENGINE_CANPLAY;

typedef 
enum MF_MEDIA_ENGINE_PRELOAD
    {
        MF_MEDIA_ENGINE_PRELOAD_MISSING	= 0,
        MF_MEDIA_ENGINE_PRELOAD_EMPTY	= 1,
        MF_MEDIA_ENGINE_PRELOAD_NONE	= 2,
        MF_MEDIA_ENGINE_PRELOAD_METADATA	= 3,
        MF_MEDIA_ENGINE_PRELOAD_AUTOMATIC	= 4
    } 	MF_MEDIA_ENGINE_PRELOAD;

#ifndef _MFVideoNormalizedRect_
#define _MFVideoNormalizedRect_
typedef struct MFVideoNormalizedRect
    {
    float left;
    float top;
    float right;
    float bottom;
    } 	MFVideoNormalizedRect;

#endif


extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0004_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0004_v0_0_s_ifspec;

#ifndef __IMFMediaEngine_INTERFACE_DEFINED__
#define __IMFMediaEngine_INTERFACE_DEFINED__

/* interface IMFMediaEngine */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngine;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("98a1b0bb-03eb-4935-ae7c-93c1fa0e1c93")
    IMFMediaEngine : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetError( 
            /* [annotation][out] */ 
            _Outptr_  IMFMediaError **ppError) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetErrorCode( 
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_ERR error) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSourceElements( 
            /* [annotation][in] */ 
            _In_  IMFMediaEngineSrcElements *pSrcElements) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSource( 
            /* [annotation][in] */ 
            _In_  BSTR pUrl) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetCurrentSource( 
            /* [annotation][out] */ 
            _Out_  BSTR *ppUrl) = 0;
        
        virtual USHORT STDMETHODCALLTYPE GetNetworkState( void) = 0;
        
        virtual MF_MEDIA_ENGINE_PRELOAD STDMETHODCALLTYPE GetPreload( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetPreload( 
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_PRELOAD Preload) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetBuffered( 
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppBuffered) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Load( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CanPlayType( 
            /* [annotation][in] */ 
            _In_  BSTR type,
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_CANPLAY *pAnswer) = 0;
        
        virtual USHORT STDMETHODCALLTYPE GetReadyState( void) = 0;
        
        virtual BOOL STDMETHODCALLTYPE IsSeeking( void) = 0;
        
        virtual double STDMETHODCALLTYPE GetCurrentTime( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetCurrentTime( 
            /* [annotation][in] */ 
            _In_  double seekTime) = 0;
        
        virtual double STDMETHODCALLTYPE GetStartTime( void) = 0;
        
        virtual double STDMETHODCALLTYPE GetDuration( void) = 0;
        
        virtual BOOL STDMETHODCALLTYPE IsPaused( void) = 0;
        
        virtual double STDMETHODCALLTYPE GetDefaultPlaybackRate( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetDefaultPlaybackRate( 
            /* [annotation][in] */ 
            _In_  double Rate) = 0;
        
        virtual double STDMETHODCALLTYPE GetPlaybackRate( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetPlaybackRate( 
            /* [annotation][in] */ 
            _In_  double Rate) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetPlayed( 
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppPlayed) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetSeekable( 
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppSeekable) = 0;
        
        virtual BOOL STDMETHODCALLTYPE IsEnded( void) = 0;
        
        virtual BOOL STDMETHODCALLTYPE GetAutoPlay( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetAutoPlay( 
            /* [annotation][in] */ 
            _In_  BOOL AutoPlay) = 0;
        
        virtual BOOL STDMETHODCALLTYPE GetLoop( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetLoop( 
            /* [annotation][in] */ 
            _In_  BOOL Loop) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Play( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Pause( void) = 0;
        
        virtual BOOL STDMETHODCALLTYPE GetMuted( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetMuted( 
            /* [annotation][in] */ 
            _In_  BOOL Muted) = 0;
        
        virtual double STDMETHODCALLTYPE GetVolume( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetVolume( 
            /* [annotation][in] */ 
            _In_  double Volume) = 0;
        
        virtual BOOL STDMETHODCALLTYPE HasVideo( void) = 0;
        
        virtual BOOL STDMETHODCALLTYPE HasAudio( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetNativeVideoSize( 
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cx,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cy) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetVideoAspectRatio( 
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cx,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cy) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Shutdown( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE TransferVideoFrame( 
            /* [annotation][in] */ 
            _In_  IUnknown *pDstSurf,
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE OnVideoStreamTick( 
            /* [annotation][out] */ 
            _Out_  LONGLONG *pPts) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngine * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngine * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetError )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaError **ppError);
        
        HRESULT ( STDMETHODCALLTYPE *SetErrorCode )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_ERR error);
        
        HRESULT ( STDMETHODCALLTYPE *SetSourceElements )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  IMFMediaEngineSrcElements *pSrcElements);
        
        HRESULT ( STDMETHODCALLTYPE *SetSource )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  BSTR pUrl);
        
        HRESULT ( STDMETHODCALLTYPE *GetCurrentSource )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Out_  BSTR *ppUrl);
        
        USHORT ( STDMETHODCALLTYPE *GetNetworkState )( 
            IMFMediaEngine * This);
        
        MF_MEDIA_ENGINE_PRELOAD ( STDMETHODCALLTYPE *GetPreload )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetPreload )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_PRELOAD Preload);
        
        HRESULT ( STDMETHODCALLTYPE *GetBuffered )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppBuffered);
        
        HRESULT ( STDMETHODCALLTYPE *Load )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *CanPlayType )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  BSTR type,
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_CANPLAY *pAnswer);
        
        USHORT ( STDMETHODCALLTYPE *GetReadyState )( 
            IMFMediaEngine * This);
        
        BOOL ( STDMETHODCALLTYPE *IsSeeking )( 
            IMFMediaEngine * This);
        
        double ( STDMETHODCALLTYPE *GetCurrentTime )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetCurrentTime )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  double seekTime);
        
        double ( STDMETHODCALLTYPE *GetStartTime )( 
            IMFMediaEngine * This);
        
        double ( STDMETHODCALLTYPE *GetDuration )( 
            IMFMediaEngine * This);
        
        BOOL ( STDMETHODCALLTYPE *IsPaused )( 
            IMFMediaEngine * This);
        
        double ( STDMETHODCALLTYPE *GetDefaultPlaybackRate )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDefaultPlaybackRate )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  double Rate);
        
        double ( STDMETHODCALLTYPE *GetPlaybackRate )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetPlaybackRate )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  double Rate);
        
        HRESULT ( STDMETHODCALLTYPE *GetPlayed )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppPlayed);
        
        HRESULT ( STDMETHODCALLTYPE *GetSeekable )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppSeekable);
        
        BOOL ( STDMETHODCALLTYPE *IsEnded )( 
            IMFMediaEngine * This);
        
        BOOL ( STDMETHODCALLTYPE *GetAutoPlay )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetAutoPlay )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  BOOL AutoPlay);
        
        BOOL ( STDMETHODCALLTYPE *GetLoop )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetLoop )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  BOOL Loop);
        
        HRESULT ( STDMETHODCALLTYPE *Play )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *Pause )( 
            IMFMediaEngine * This);
        
        BOOL ( STDMETHODCALLTYPE *GetMuted )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetMuted )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  BOOL Muted);
        
        double ( STDMETHODCALLTYPE *GetVolume )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetVolume )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  double Volume);
        
        BOOL ( STDMETHODCALLTYPE *HasVideo )( 
            IMFMediaEngine * This);
        
        BOOL ( STDMETHODCALLTYPE *HasAudio )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetNativeVideoSize )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cx,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cy);
        
        HRESULT ( STDMETHODCALLTYPE *GetVideoAspectRatio )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cx,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cy);
        
        HRESULT ( STDMETHODCALLTYPE *Shutdown )( 
            IMFMediaEngine * This);
        
        HRESULT ( STDMETHODCALLTYPE *TransferVideoFrame )( 
            IMFMediaEngine * This,
            /* [annotation][in] */ 
            _In_  IUnknown *pDstSurf,
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr);
        
        HRESULT ( STDMETHODCALLTYPE *OnVideoStreamTick )( 
            IMFMediaEngine * This,
            /* [annotation][out] */ 
            _Out_  LONGLONG *pPts);
        
        END_INTERFACE
    } IMFMediaEngineVtbl;

    interface IMFMediaEngine
    {
        CONST_VTBL struct IMFMediaEngineVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngine_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngine_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngine_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngine_GetError(This,ppError)	\
    ( (This)->lpVtbl -> GetError(This,ppError) ) 

#define IMFMediaEngine_SetErrorCode(This,error)	\
    ( (This)->lpVtbl -> SetErrorCode(This,error) ) 

#define IMFMediaEngine_SetSourceElements(This,pSrcElements)	\
    ( (This)->lpVtbl -> SetSourceElements(This,pSrcElements) ) 

#define IMFMediaEngine_SetSource(This,pUrl)	\
    ( (This)->lpVtbl -> SetSource(This,pUrl) ) 

#define IMFMediaEngine_GetCurrentSource(This,ppUrl)	\
    ( (This)->lpVtbl -> GetCurrentSource(This,ppUrl) ) 

#define IMFMediaEngine_GetNetworkState(This)	\
    ( (This)->lpVtbl -> GetNetworkState(This) ) 

#define IMFMediaEngine_GetPreload(This)	\
    ( (This)->lpVtbl -> GetPreload(This) ) 

#define IMFMediaEngine_SetPreload(This,Preload)	\
    ( (This)->lpVtbl -> SetPreload(This,Preload) ) 

#define IMFMediaEngine_GetBuffered(This,ppBuffered)	\
    ( (This)->lpVtbl -> GetBuffered(This,ppBuffered) ) 

#define IMFMediaEngine_Load(This)	\
    ( (This)->lpVtbl -> Load(This) ) 

#define IMFMediaEngine_CanPlayType(This,type,pAnswer)	\
    ( (This)->lpVtbl -> CanPlayType(This,type,pAnswer) ) 

#define IMFMediaEngine_GetReadyState(This)	\
    ( (This)->lpVtbl -> GetReadyState(This) ) 

#define IMFMediaEngine_IsSeeking(This)	\
    ( (This)->lpVtbl -> IsSeeking(This) ) 

#define IMFMediaEngine_GetCurrentTime(This)	\
    ( (This)->lpVtbl -> GetCurrentTime(This) ) 

#define IMFMediaEngine_SetCurrentTime(This,seekTime)	\
    ( (This)->lpVtbl -> SetCurrentTime(This,seekTime) ) 

#define IMFMediaEngine_GetStartTime(This)	\
    ( (This)->lpVtbl -> GetStartTime(This) ) 

#define IMFMediaEngine_GetDuration(This)	\
    ( (This)->lpVtbl -> GetDuration(This) ) 

#define IMFMediaEngine_IsPaused(This)	\
    ( (This)->lpVtbl -> IsPaused(This) ) 

#define IMFMediaEngine_GetDefaultPlaybackRate(This)	\
    ( (This)->lpVtbl -> GetDefaultPlaybackRate(This) ) 

#define IMFMediaEngine_SetDefaultPlaybackRate(This,Rate)	\
    ( (This)->lpVtbl -> SetDefaultPlaybackRate(This,Rate) ) 

#define IMFMediaEngine_GetPlaybackRate(This)	\
    ( (This)->lpVtbl -> GetPlaybackRate(This) ) 

#define IMFMediaEngine_SetPlaybackRate(This,Rate)	\
    ( (This)->lpVtbl -> SetPlaybackRate(This,Rate) ) 

#define IMFMediaEngine_GetPlayed(This,ppPlayed)	\
    ( (This)->lpVtbl -> GetPlayed(This,ppPlayed) ) 

#define IMFMediaEngine_GetSeekable(This,ppSeekable)	\
    ( (This)->lpVtbl -> GetSeekable(This,ppSeekable) ) 

#define IMFMediaEngine_IsEnded(This)	\
    ( (This)->lpVtbl -> IsEnded(This) ) 

#define IMFMediaEngine_GetAutoPlay(This)	\
    ( (This)->lpVtbl -> GetAutoPlay(This) ) 

#define IMFMediaEngine_SetAutoPlay(This,AutoPlay)	\
    ( (This)->lpVtbl -> SetAutoPlay(This,AutoPlay) ) 

#define IMFMediaEngine_GetLoop(This)	\
    ( (This)->lpVtbl -> GetLoop(This) ) 

#define IMFMediaEngine_SetLoop(This,Loop)	\
    ( (This)->lpVtbl -> SetLoop(This,Loop) ) 

#define IMFMediaEngine_Play(This)	\
    ( (This)->lpVtbl -> Play(This) ) 

#define IMFMediaEngine_Pause(This)	\
    ( (This)->lpVtbl -> Pause(This) ) 

#define IMFMediaEngine_GetMuted(This)	\
    ( (This)->lpVtbl -> GetMuted(This) ) 

#define IMFMediaEngine_SetMuted(This,Muted)	\
    ( (This)->lpVtbl -> SetMuted(This,Muted) ) 

#define IMFMediaEngine_GetVolume(This)	\
    ( (This)->lpVtbl -> GetVolume(This) ) 

#define IMFMediaEngine_SetVolume(This,Volume)	\
    ( (This)->lpVtbl -> SetVolume(This,Volume) ) 

#define IMFMediaEngine_HasVideo(This)	\
    ( (This)->lpVtbl -> HasVideo(This) ) 

#define IMFMediaEngine_HasAudio(This)	\
    ( (This)->lpVtbl -> HasAudio(This) ) 

#define IMFMediaEngine_GetNativeVideoSize(This,cx,cy)	\
    ( (This)->lpVtbl -> GetNativeVideoSize(This,cx,cy) ) 

#define IMFMediaEngine_GetVideoAspectRatio(This,cx,cy)	\
    ( (This)->lpVtbl -> GetVideoAspectRatio(This,cx,cy) ) 

#define IMFMediaEngine_Shutdown(This)	\
    ( (This)->lpVtbl -> Shutdown(This) ) 

#define IMFMediaEngine_TransferVideoFrame(This,pDstSurf,pSrc,pDst,pBorderClr)	\
    ( (This)->lpVtbl -> TransferVideoFrame(This,pDstSurf,pSrc,pDst,pBorderClr) ) 

#define IMFMediaEngine_OnVideoStreamTick(This,pPts)	\
    ( (This)->lpVtbl -> OnVideoStreamTick(This,pPts) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngine_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0005 */
/* [local] */ 

typedef 
enum MF_MEDIA_ENGINE_S3D_PACKING_MODE
    {
        MF_MEDIA_ENGINE_S3D_PACKING_MODE_NONE	= 0,
        MF_MEDIA_ENGINE_S3D_PACKING_MODE_SIDE_BY_SIDE	= 1,
        MF_MEDIA_ENGINE_S3D_PACKING_MODE_TOP_BOTTOM	= 2
    } 	MF_MEDIA_ENGINE_S3D_PACKING_MODE;

typedef 
enum MF_MEDIA_ENGINE_STATISTIC
    {
        MF_MEDIA_ENGINE_STATISTIC_FRAMES_RENDERED	= 0,
        MF_MEDIA_ENGINE_STATISTIC_FRAMES_DROPPED	= 1,
        MF_MEDIA_ENGINE_STATISTIC_BYTES_DOWNLOADED	= 2,
        MF_MEDIA_ENGINE_STATISTIC_BUFFER_PROGRESS	= 3,
        MF_MEDIA_ENGINE_STATISTIC_FRAMES_PER_SECOND	= 4
    } 	MF_MEDIA_ENGINE_STATISTIC;

typedef 
enum MF_MEDIA_ENGINE_SEEK_MODE
    {
        MF_MEDIA_ENGINE_SEEK_MODE_NORMAL	= 0,
        MF_MEDIA_ENGINE_SEEK_MODE_APPROXIMATE	= 1
    } 	MF_MEDIA_ENGINE_SEEK_MODE;



extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0005_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0005_v0_0_s_ifspec;

#ifndef __IMFMediaEngineEx_INTERFACE_DEFINED__
#define __IMFMediaEngineEx_INTERFACE_DEFINED__

/* interface IMFMediaEngineEx */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngineEx;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("83015ead-b1e6-40d0-a98a-37145ffe1ad1")
    IMFMediaEngineEx : public IMFMediaEngine
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetSourceFromByteStream( 
            /* [annotation][in] */ 
            _In_  IMFByteStream *pByteStream,
            /* [annotation][in] */ 
            _In_  BSTR pURL) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStatistics( 
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_STATISTIC StatisticID,
            /* [annotation][out] */ 
            _Out_  PROPVARIANT *pStatistic) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE UpdateVideoStream( 
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_opt_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr) = 0;
        
        virtual double STDMETHODCALLTYPE GetBalance( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetBalance( 
            /* [annotation][in] */ 
            _In_  double balance) = 0;
        
        virtual BOOL STDMETHODCALLTYPE IsPlaybackRateSupported( 
            /* [annotation][in] */ 
            _In_  double rate) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE FrameStep( 
            /* [annotation][in] */ 
            _In_  BOOL Forward) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetResourceCharacteristics( 
            /* [annotation][out] */ 
            _Out_  DWORD *pCharacteristics) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetPresentationAttribute( 
            /* [annotation][in] */ 
            _In_  REFGUID guidMFAttribute,
            /* [annotation][out] */ 
            _Out_  PROPVARIANT *pvValue) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetNumberOfStreams( 
            /* [annotation][out] */ 
            _Out_  DWORD *pdwStreamCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStreamAttribute( 
            /* [annotation][in] */ 
            _In_  DWORD dwStreamIndex,
            /* [annotation][in] */ 
            _In_  REFGUID guidMFAttribute,
            /* [annotation][out] */ 
            _Out_  PROPVARIANT *pvValue) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStreamSelection( 
            /* [annotation][in] */ 
            _In_  DWORD dwStreamIndex,
            /* [annotation][in] */ 
            _Out_  BOOL *pEnabled) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetStreamSelection( 
            /* [annotation][in] */ 
            _In_  DWORD dwStreamIndex,
            /* [annotation][in] */ 
            _In_  BOOL Enabled) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ApplyStreamSelections( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsProtected( 
            /* [annotation][out] */ 
            _Out_  BOOL *pProtected) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE InsertVideoEffect( 
            /* [annotation][in] */ 
            _In_  IUnknown *pEffect,
            /* [annotation][in] */ 
            _In_  BOOL fOptional) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE InsertAudioEffect( 
            /* [annotation][in] */ 
            _In_  IUnknown *pEffect,
            /* [annotation][in] */ 
            _In_  BOOL fOptional) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveAllEffects( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetTimelineMarkerTimer( 
            /* [annotation][in] */ 
            _In_  double timeToFire) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetTimelineMarkerTimer( 
            /* [annotation][out] */ 
            _Out_  double *pTimeToFire) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CancelTimelineMarkerTimer( void) = 0;
        
        virtual BOOL STDMETHODCALLTYPE IsStereo3D( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStereo3DFramePackingMode( 
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_S3D_PACKING_MODE *packMode) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetStereo3DFramePackingMode( 
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStereo3DRenderMode( 
            /* [annotation][out] */ 
            _Out_  MF3DVideoOutputType *outputType) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetStereo3DRenderMode( 
            /* [annotation][in] */ 
            _In_  MF3DVideoOutputType outputType) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE EnableWindowlessSwapchainMode( 
            /* [annotation][in] */ 
            _In_  BOOL fEnable) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetVideoSwapchainHandle( 
            /* [annotation][out] */ 
            _Out_  HANDLE *phSwapchain) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE EnableHorizontalMirrorMode( 
            /* [annotation][in] */ 
            _In_  BOOL fEnable) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetAudioStreamCategory( 
            /* [annotation][out] */ 
            _Out_  UINT32 *pCategory) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetAudioStreamCategory( 
            /* [annotation][in] */ 
            _In_  UINT32 category) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetAudioEndpointRole( 
            /* [annotation][out] */ 
            _Out_  UINT32 *pRole) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetAudioEndpointRole( 
            /* [annotation][in] */ 
            _In_  UINT32 role) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetRealTimeMode( 
            /* [annotation][out] */ 
            _Out_  BOOL *pfEnabled) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetRealTimeMode( 
            /* [annotation][in] */ 
            _In_  BOOL fEnable) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetCurrentTimeEx( 
            /* [annotation][in] */ 
            _In_  double seekTime,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_SEEK_MODE seekMode) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE EnableTimeUpdateTimer( 
            /* [annotation][in] */ 
            _In_  BOOL fEnableTimer) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineExVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngineEx * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngineEx * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetError )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaError **ppError);
        
        HRESULT ( STDMETHODCALLTYPE *SetErrorCode )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_ERR error);
        
        HRESULT ( STDMETHODCALLTYPE *SetSourceElements )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  IMFMediaEngineSrcElements *pSrcElements);
        
        HRESULT ( STDMETHODCALLTYPE *SetSource )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BSTR pUrl);
        
        HRESULT ( STDMETHODCALLTYPE *GetCurrentSource )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  BSTR *ppUrl);
        
        USHORT ( STDMETHODCALLTYPE *GetNetworkState )( 
            IMFMediaEngineEx * This);
        
        MF_MEDIA_ENGINE_PRELOAD ( STDMETHODCALLTYPE *GetPreload )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetPreload )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_PRELOAD Preload);
        
        HRESULT ( STDMETHODCALLTYPE *GetBuffered )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppBuffered);
        
        HRESULT ( STDMETHODCALLTYPE *Load )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *CanPlayType )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BSTR type,
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_CANPLAY *pAnswer);
        
        USHORT ( STDMETHODCALLTYPE *GetReadyState )( 
            IMFMediaEngineEx * This);
        
        BOOL ( STDMETHODCALLTYPE *IsSeeking )( 
            IMFMediaEngineEx * This);
        
        double ( STDMETHODCALLTYPE *GetCurrentTime )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetCurrentTime )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double seekTime);
        
        double ( STDMETHODCALLTYPE *GetStartTime )( 
            IMFMediaEngineEx * This);
        
        double ( STDMETHODCALLTYPE *GetDuration )( 
            IMFMediaEngineEx * This);
        
        BOOL ( STDMETHODCALLTYPE *IsPaused )( 
            IMFMediaEngineEx * This);
        
        double ( STDMETHODCALLTYPE *GetDefaultPlaybackRate )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDefaultPlaybackRate )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double Rate);
        
        double ( STDMETHODCALLTYPE *GetPlaybackRate )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetPlaybackRate )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double Rate);
        
        HRESULT ( STDMETHODCALLTYPE *GetPlayed )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppPlayed);
        
        HRESULT ( STDMETHODCALLTYPE *GetSeekable )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppSeekable);
        
        BOOL ( STDMETHODCALLTYPE *IsEnded )( 
            IMFMediaEngineEx * This);
        
        BOOL ( STDMETHODCALLTYPE *GetAutoPlay )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetAutoPlay )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL AutoPlay);
        
        BOOL ( STDMETHODCALLTYPE *GetLoop )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetLoop )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL Loop);
        
        HRESULT ( STDMETHODCALLTYPE *Play )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *Pause )( 
            IMFMediaEngineEx * This);
        
        BOOL ( STDMETHODCALLTYPE *GetMuted )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetMuted )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL Muted);
        
        double ( STDMETHODCALLTYPE *GetVolume )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetVolume )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double Volume);
        
        BOOL ( STDMETHODCALLTYPE *HasVideo )( 
            IMFMediaEngineEx * This);
        
        BOOL ( STDMETHODCALLTYPE *HasAudio )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetNativeVideoSize )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cx,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cy);
        
        HRESULT ( STDMETHODCALLTYPE *GetVideoAspectRatio )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cx,
            /* [annotation][out] */ 
            _Out_opt_  DWORD *cy);
        
        HRESULT ( STDMETHODCALLTYPE *Shutdown )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *TransferVideoFrame )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  IUnknown *pDstSurf,
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr);
        
        HRESULT ( STDMETHODCALLTYPE *OnVideoStreamTick )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  LONGLONG *pPts);
        
        HRESULT ( STDMETHODCALLTYPE *SetSourceFromByteStream )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  IMFByteStream *pByteStream,
            /* [annotation][in] */ 
            _In_  BSTR pURL);
        
        HRESULT ( STDMETHODCALLTYPE *GetStatistics )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_STATISTIC StatisticID,
            /* [annotation][out] */ 
            _Out_  PROPVARIANT *pStatistic);
        
        HRESULT ( STDMETHODCALLTYPE *UpdateVideoStream )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_opt_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr);
        
        double ( STDMETHODCALLTYPE *GetBalance )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetBalance )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double balance);
        
        BOOL ( STDMETHODCALLTYPE *IsPlaybackRateSupported )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double rate);
        
        HRESULT ( STDMETHODCALLTYPE *FrameStep )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL Forward);
        
        HRESULT ( STDMETHODCALLTYPE *GetResourceCharacteristics )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  DWORD *pCharacteristics);
        
        HRESULT ( STDMETHODCALLTYPE *GetPresentationAttribute )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  REFGUID guidMFAttribute,
            /* [annotation][out] */ 
            _Out_  PROPVARIANT *pvValue);
        
        HRESULT ( STDMETHODCALLTYPE *GetNumberOfStreams )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  DWORD *pdwStreamCount);
        
        HRESULT ( STDMETHODCALLTYPE *GetStreamAttribute )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  DWORD dwStreamIndex,
            /* [annotation][in] */ 
            _In_  REFGUID guidMFAttribute,
            /* [annotation][out] */ 
            _Out_  PROPVARIANT *pvValue);
        
        HRESULT ( STDMETHODCALLTYPE *GetStreamSelection )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  DWORD dwStreamIndex,
            /* [annotation][in] */ 
            _Out_  BOOL *pEnabled);
        
        HRESULT ( STDMETHODCALLTYPE *SetStreamSelection )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  DWORD dwStreamIndex,
            /* [annotation][in] */ 
            _In_  BOOL Enabled);
        
        HRESULT ( STDMETHODCALLTYPE *ApplyStreamSelections )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *IsProtected )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  BOOL *pProtected);
        
        HRESULT ( STDMETHODCALLTYPE *InsertVideoEffect )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  IUnknown *pEffect,
            /* [annotation][in] */ 
            _In_  BOOL fOptional);
        
        HRESULT ( STDMETHODCALLTYPE *InsertAudioEffect )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  IUnknown *pEffect,
            /* [annotation][in] */ 
            _In_  BOOL fOptional);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveAllEffects )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetTimelineMarkerTimer )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double timeToFire);
        
        HRESULT ( STDMETHODCALLTYPE *GetTimelineMarkerTimer )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  double *pTimeToFire);
        
        HRESULT ( STDMETHODCALLTYPE *CancelTimelineMarkerTimer )( 
            IMFMediaEngineEx * This);
        
        BOOL ( STDMETHODCALLTYPE *IsStereo3D )( 
            IMFMediaEngineEx * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetStereo3DFramePackingMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_S3D_PACKING_MODE *packMode);
        
        HRESULT ( STDMETHODCALLTYPE *SetStereo3DFramePackingMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_S3D_PACKING_MODE packMode);
        
        HRESULT ( STDMETHODCALLTYPE *GetStereo3DRenderMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  MF3DVideoOutputType *outputType);
        
        HRESULT ( STDMETHODCALLTYPE *SetStereo3DRenderMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  MF3DVideoOutputType outputType);
        
        HRESULT ( STDMETHODCALLTYPE *EnableWindowlessSwapchainMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL fEnable);
        
        HRESULT ( STDMETHODCALLTYPE *GetVideoSwapchainHandle )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  HANDLE *phSwapchain);
        
        HRESULT ( STDMETHODCALLTYPE *EnableHorizontalMirrorMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL fEnable);
        
        HRESULT ( STDMETHODCALLTYPE *GetAudioStreamCategory )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  UINT32 *pCategory);
        
        HRESULT ( STDMETHODCALLTYPE *SetAudioStreamCategory )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  UINT32 category);
        
        HRESULT ( STDMETHODCALLTYPE *GetAudioEndpointRole )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  UINT32 *pRole);
        
        HRESULT ( STDMETHODCALLTYPE *SetAudioEndpointRole )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  UINT32 role);
        
        HRESULT ( STDMETHODCALLTYPE *GetRealTimeMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][out] */ 
            _Out_  BOOL *pfEnabled);
        
        HRESULT ( STDMETHODCALLTYPE *SetRealTimeMode )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL fEnable);
        
        HRESULT ( STDMETHODCALLTYPE *SetCurrentTimeEx )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  double seekTime,
            /* [annotation][in] */ 
            _In_  MF_MEDIA_ENGINE_SEEK_MODE seekMode);
        
        HRESULT ( STDMETHODCALLTYPE *EnableTimeUpdateTimer )( 
            IMFMediaEngineEx * This,
            /* [annotation][in] */ 
            _In_  BOOL fEnableTimer);
        
        END_INTERFACE
    } IMFMediaEngineExVtbl;

    interface IMFMediaEngineEx
    {
        CONST_VTBL struct IMFMediaEngineExVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngineEx_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngineEx_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngineEx_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngineEx_GetError(This,ppError)	\
    ( (This)->lpVtbl -> GetError(This,ppError) ) 

#define IMFMediaEngineEx_SetErrorCode(This,error)	\
    ( (This)->lpVtbl -> SetErrorCode(This,error) ) 

#define IMFMediaEngineEx_SetSourceElements(This,pSrcElements)	\
    ( (This)->lpVtbl -> SetSourceElements(This,pSrcElements) ) 

#define IMFMediaEngineEx_SetSource(This,pUrl)	\
    ( (This)->lpVtbl -> SetSource(This,pUrl) ) 

#define IMFMediaEngineEx_GetCurrentSource(This,ppUrl)	\
    ( (This)->lpVtbl -> GetCurrentSource(This,ppUrl) ) 

#define IMFMediaEngineEx_GetNetworkState(This)	\
    ( (This)->lpVtbl -> GetNetworkState(This) ) 

#define IMFMediaEngineEx_GetPreload(This)	\
    ( (This)->lpVtbl -> GetPreload(This) ) 

#define IMFMediaEngineEx_SetPreload(This,Preload)	\
    ( (This)->lpVtbl -> SetPreload(This,Preload) ) 

#define IMFMediaEngineEx_GetBuffered(This,ppBuffered)	\
    ( (This)->lpVtbl -> GetBuffered(This,ppBuffered) ) 

#define IMFMediaEngineEx_Load(This)	\
    ( (This)->lpVtbl -> Load(This) ) 

#define IMFMediaEngineEx_CanPlayType(This,type,pAnswer)	\
    ( (This)->lpVtbl -> CanPlayType(This,type,pAnswer) ) 

#define IMFMediaEngineEx_GetReadyState(This)	\
    ( (This)->lpVtbl -> GetReadyState(This) ) 

#define IMFMediaEngineEx_IsSeeking(This)	\
    ( (This)->lpVtbl -> IsSeeking(This) ) 

#define IMFMediaEngineEx_GetCurrentTime(This)	\
    ( (This)->lpVtbl -> GetCurrentTime(This) ) 

#define IMFMediaEngineEx_SetCurrentTime(This,seekTime)	\
    ( (This)->lpVtbl -> SetCurrentTime(This,seekTime) ) 

#define IMFMediaEngineEx_GetStartTime(This)	\
    ( (This)->lpVtbl -> GetStartTime(This) ) 

#define IMFMediaEngineEx_GetDuration(This)	\
    ( (This)->lpVtbl -> GetDuration(This) ) 

#define IMFMediaEngineEx_IsPaused(This)	\
    ( (This)->lpVtbl -> IsPaused(This) ) 

#define IMFMediaEngineEx_GetDefaultPlaybackRate(This)	\
    ( (This)->lpVtbl -> GetDefaultPlaybackRate(This) ) 

#define IMFMediaEngineEx_SetDefaultPlaybackRate(This,Rate)	\
    ( (This)->lpVtbl -> SetDefaultPlaybackRate(This,Rate) ) 

#define IMFMediaEngineEx_GetPlaybackRate(This)	\
    ( (This)->lpVtbl -> GetPlaybackRate(This) ) 

#define IMFMediaEngineEx_SetPlaybackRate(This,Rate)	\
    ( (This)->lpVtbl -> SetPlaybackRate(This,Rate) ) 

#define IMFMediaEngineEx_GetPlayed(This,ppPlayed)	\
    ( (This)->lpVtbl -> GetPlayed(This,ppPlayed) ) 

#define IMFMediaEngineEx_GetSeekable(This,ppSeekable)	\
    ( (This)->lpVtbl -> GetSeekable(This,ppSeekable) ) 

#define IMFMediaEngineEx_IsEnded(This)	\
    ( (This)->lpVtbl -> IsEnded(This) ) 

#define IMFMediaEngineEx_GetAutoPlay(This)	\
    ( (This)->lpVtbl -> GetAutoPlay(This) ) 

#define IMFMediaEngineEx_SetAutoPlay(This,AutoPlay)	\
    ( (This)->lpVtbl -> SetAutoPlay(This,AutoPlay) ) 

#define IMFMediaEngineEx_GetLoop(This)	\
    ( (This)->lpVtbl -> GetLoop(This) ) 

#define IMFMediaEngineEx_SetLoop(This,Loop)	\
    ( (This)->lpVtbl -> SetLoop(This,Loop) ) 

#define IMFMediaEngineEx_Play(This)	\
    ( (This)->lpVtbl -> Play(This) ) 

#define IMFMediaEngineEx_Pause(This)	\
    ( (This)->lpVtbl -> Pause(This) ) 

#define IMFMediaEngineEx_GetMuted(This)	\
    ( (This)->lpVtbl -> GetMuted(This) ) 

#define IMFMediaEngineEx_SetMuted(This,Muted)	\
    ( (This)->lpVtbl -> SetMuted(This,Muted) ) 

#define IMFMediaEngineEx_GetVolume(This)	\
    ( (This)->lpVtbl -> GetVolume(This) ) 

#define IMFMediaEngineEx_SetVolume(This,Volume)	\
    ( (This)->lpVtbl -> SetVolume(This,Volume) ) 

#define IMFMediaEngineEx_HasVideo(This)	\
    ( (This)->lpVtbl -> HasVideo(This) ) 

#define IMFMediaEngineEx_HasAudio(This)	\
    ( (This)->lpVtbl -> HasAudio(This) ) 

#define IMFMediaEngineEx_GetNativeVideoSize(This,cx,cy)	\
    ( (This)->lpVtbl -> GetNativeVideoSize(This,cx,cy) ) 

#define IMFMediaEngineEx_GetVideoAspectRatio(This,cx,cy)	\
    ( (This)->lpVtbl -> GetVideoAspectRatio(This,cx,cy) ) 

#define IMFMediaEngineEx_Shutdown(This)	\
    ( (This)->lpVtbl -> Shutdown(This) ) 

#define IMFMediaEngineEx_TransferVideoFrame(This,pDstSurf,pSrc,pDst,pBorderClr)	\
    ( (This)->lpVtbl -> TransferVideoFrame(This,pDstSurf,pSrc,pDst,pBorderClr) ) 

#define IMFMediaEngineEx_OnVideoStreamTick(This,pPts)	\
    ( (This)->lpVtbl -> OnVideoStreamTick(This,pPts) ) 


#define IMFMediaEngineEx_SetSourceFromByteStream(This,pByteStream,pURL)	\
    ( (This)->lpVtbl -> SetSourceFromByteStream(This,pByteStream,pURL) ) 

#define IMFMediaEngineEx_GetStatistics(This,StatisticID,pStatistic)	\
    ( (This)->lpVtbl -> GetStatistics(This,StatisticID,pStatistic) ) 

#define IMFMediaEngineEx_UpdateVideoStream(This,pSrc,pDst,pBorderClr)	\
    ( (This)->lpVtbl -> UpdateVideoStream(This,pSrc,pDst,pBorderClr) ) 

#define IMFMediaEngineEx_GetBalance(This)	\
    ( (This)->lpVtbl -> GetBalance(This) ) 

#define IMFMediaEngineEx_SetBalance(This,balance)	\
    ( (This)->lpVtbl -> SetBalance(This,balance) ) 

#define IMFMediaEngineEx_IsPlaybackRateSupported(This,rate)	\
    ( (This)->lpVtbl -> IsPlaybackRateSupported(This,rate) ) 

#define IMFMediaEngineEx_FrameStep(This,Forward)	\
    ( (This)->lpVtbl -> FrameStep(This,Forward) ) 

#define IMFMediaEngineEx_GetResourceCharacteristics(This,pCharacteristics)	\
    ( (This)->lpVtbl -> GetResourceCharacteristics(This,pCharacteristics) ) 

#define IMFMediaEngineEx_GetPresentationAttribute(This,guidMFAttribute,pvValue)	\
    ( (This)->lpVtbl -> GetPresentationAttribute(This,guidMFAttribute,pvValue) ) 

#define IMFMediaEngineEx_GetNumberOfStreams(This,pdwStreamCount)	\
    ( (This)->lpVtbl -> GetNumberOfStreams(This,pdwStreamCount) ) 

#define IMFMediaEngineEx_GetStreamAttribute(This,dwStreamIndex,guidMFAttribute,pvValue)	\
    ( (This)->lpVtbl -> GetStreamAttribute(This,dwStreamIndex,guidMFAttribute,pvValue) ) 

#define IMFMediaEngineEx_GetStreamSelection(This,dwStreamIndex,pEnabled)	\
    ( (This)->lpVtbl -> GetStreamSelection(This,dwStreamIndex,pEnabled) ) 

#define IMFMediaEngineEx_SetStreamSelection(This,dwStreamIndex,Enabled)	\
    ( (This)->lpVtbl -> SetStreamSelection(This,dwStreamIndex,Enabled) ) 

#define IMFMediaEngineEx_ApplyStreamSelections(This)	\
    ( (This)->lpVtbl -> ApplyStreamSelections(This) ) 

#define IMFMediaEngineEx_IsProtected(This,pProtected)	\
    ( (This)->lpVtbl -> IsProtected(This,pProtected) ) 

#define IMFMediaEngineEx_InsertVideoEffect(This,pEffect,fOptional)	\
    ( (This)->lpVtbl -> InsertVideoEffect(This,pEffect,fOptional) ) 

#define IMFMediaEngineEx_InsertAudioEffect(This,pEffect,fOptional)	\
    ( (This)->lpVtbl -> InsertAudioEffect(This,pEffect,fOptional) ) 

#define IMFMediaEngineEx_RemoveAllEffects(This)	\
    ( (This)->lpVtbl -> RemoveAllEffects(This) ) 

#define IMFMediaEngineEx_SetTimelineMarkerTimer(This,timeToFire)	\
    ( (This)->lpVtbl -> SetTimelineMarkerTimer(This,timeToFire) ) 

#define IMFMediaEngineEx_GetTimelineMarkerTimer(This,pTimeToFire)	\
    ( (This)->lpVtbl -> GetTimelineMarkerTimer(This,pTimeToFire) ) 

#define IMFMediaEngineEx_CancelTimelineMarkerTimer(This)	\
    ( (This)->lpVtbl -> CancelTimelineMarkerTimer(This) ) 

#define IMFMediaEngineEx_IsStereo3D(This)	\
    ( (This)->lpVtbl -> IsStereo3D(This) ) 

#define IMFMediaEngineEx_GetStereo3DFramePackingMode(This,packMode)	\
    ( (This)->lpVtbl -> GetStereo3DFramePackingMode(This,packMode) ) 

#define IMFMediaEngineEx_SetStereo3DFramePackingMode(This,packMode)	\
    ( (This)->lpVtbl -> SetStereo3DFramePackingMode(This,packMode) ) 

#define IMFMediaEngineEx_GetStereo3DRenderMode(This,outputType)	\
    ( (This)->lpVtbl -> GetStereo3DRenderMode(This,outputType) ) 

#define IMFMediaEngineEx_SetStereo3DRenderMode(This,outputType)	\
    ( (This)->lpVtbl -> SetStereo3DRenderMode(This,outputType) ) 

#define IMFMediaEngineEx_EnableWindowlessSwapchainMode(This,fEnable)	\
    ( (This)->lpVtbl -> EnableWindowlessSwapchainMode(This,fEnable) ) 

#define IMFMediaEngineEx_GetVideoSwapchainHandle(This,phSwapchain)	\
    ( (This)->lpVtbl -> GetVideoSwapchainHandle(This,phSwapchain) ) 

#define IMFMediaEngineEx_EnableHorizontalMirrorMode(This,fEnable)	\
    ( (This)->lpVtbl -> EnableHorizontalMirrorMode(This,fEnable) ) 

#define IMFMediaEngineEx_GetAudioStreamCategory(This,pCategory)	\
    ( (This)->lpVtbl -> GetAudioStreamCategory(This,pCategory) ) 

#define IMFMediaEngineEx_SetAudioStreamCategory(This,category)	\
    ( (This)->lpVtbl -> SetAudioStreamCategory(This,category) ) 

#define IMFMediaEngineEx_GetAudioEndpointRole(This,pRole)	\
    ( (This)->lpVtbl -> GetAudioEndpointRole(This,pRole) ) 

#define IMFMediaEngineEx_SetAudioEndpointRole(This,role)	\
    ( (This)->lpVtbl -> SetAudioEndpointRole(This,role) ) 

#define IMFMediaEngineEx_GetRealTimeMode(This,pfEnabled)	\
    ( (This)->lpVtbl -> GetRealTimeMode(This,pfEnabled) ) 

#define IMFMediaEngineEx_SetRealTimeMode(This,fEnable)	\
    ( (This)->lpVtbl -> SetRealTimeMode(This,fEnable) ) 

#define IMFMediaEngineEx_SetCurrentTimeEx(This,seekTime,seekMode)	\
    ( (This)->lpVtbl -> SetCurrentTimeEx(This,seekTime,seekMode) ) 

#define IMFMediaEngineEx_EnableTimeUpdateTimer(This,fEnableTimer)	\
    ( (This)->lpVtbl -> EnableTimeUpdateTimer(This,fEnableTimer) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngineEx_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0006 */
/* [local] */ 

typedef 
enum MF_MEDIA_ENGINE_EXTENSION_TYPE
    {
        MF_MEDIA_ENGINE_EXTENSION_TYPE_MEDIASOURCE	= 0,
        MF_MEDIA_ENGINE_EXTENSION_TYPE_BYTESTREAM	= 1
    } 	MF_MEDIA_ENGINE_EXTENSION_TYPE;



extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0006_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0006_v0_0_s_ifspec;

#ifndef __IMFMediaEngineExtension_INTERFACE_DEFINED__
#define __IMFMediaEngineExtension_INTERFACE_DEFINED__

/* interface IMFMediaEngineExtension */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngineExtension;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("2f69d622-20b5-41e9-afdf-89ced1dda04e")
    IMFMediaEngineExtension : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE CanPlayType( 
            /* [annotation][in] */ 
            _In_  BOOL AudioOnly,
            /* [annotation][in] */ 
            _In_  BSTR MimeType,
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_CANPLAY *pAnswer) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE BeginCreateObject( 
            /* [annotation][in] */ 
            _In_  BSTR bstrURL,
            /* [annotation][in] */ 
            _In_opt_  IMFByteStream *pByteStream,
            /* [annotation][in] */ 
            _In_  MF_OBJECT_TYPE type,
            /* [annotation][out] */ 
            _Outptr_  IUnknown **ppIUnknownCancelCookie,
            /* [annotation][in] */ 
            _In_  IMFAsyncCallback *pCallback,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *punkState) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CancelObjectCreation( 
            /* [annotation][in] */ 
            _In_  IUnknown *pIUnknownCancelCookie) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE EndCreateObject( 
            /* [annotation][in] */ 
            _In_  IMFAsyncResult *pResult,
            /* [annotation][out] */ 
            _Outptr_  IUnknown **ppObject) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineExtensionVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngineExtension * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngineExtension * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngineExtension * This);
        
        HRESULT ( STDMETHODCALLTYPE *CanPlayType )( 
            IMFMediaEngineExtension * This,
            /* [annotation][in] */ 
            _In_  BOOL AudioOnly,
            /* [annotation][in] */ 
            _In_  BSTR MimeType,
            /* [annotation][out] */ 
            _Out_  MF_MEDIA_ENGINE_CANPLAY *pAnswer);
        
        HRESULT ( STDMETHODCALLTYPE *BeginCreateObject )( 
            IMFMediaEngineExtension * This,
            /* [annotation][in] */ 
            _In_  BSTR bstrURL,
            /* [annotation][in] */ 
            _In_opt_  IMFByteStream *pByteStream,
            /* [annotation][in] */ 
            _In_  MF_OBJECT_TYPE type,
            /* [annotation][out] */ 
            _Outptr_  IUnknown **ppIUnknownCancelCookie,
            /* [annotation][in] */ 
            _In_  IMFAsyncCallback *pCallback,
            /* [annotation][in] */ 
            _In_opt_  IUnknown *punkState);
        
        HRESULT ( STDMETHODCALLTYPE *CancelObjectCreation )( 
            IMFMediaEngineExtension * This,
            /* [annotation][in] */ 
            _In_  IUnknown *pIUnknownCancelCookie);
        
        HRESULT ( STDMETHODCALLTYPE *EndCreateObject )( 
            IMFMediaEngineExtension * This,
            /* [annotation][in] */ 
            _In_  IMFAsyncResult *pResult,
            /* [annotation][out] */ 
            _Outptr_  IUnknown **ppObject);
        
        END_INTERFACE
    } IMFMediaEngineExtensionVtbl;

    interface IMFMediaEngineExtension
    {
        CONST_VTBL struct IMFMediaEngineExtensionVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngineExtension_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngineExtension_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngineExtension_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngineExtension_CanPlayType(This,AudioOnly,MimeType,pAnswer)	\
    ( (This)->lpVtbl -> CanPlayType(This,AudioOnly,MimeType,pAnswer) ) 

#define IMFMediaEngineExtension_BeginCreateObject(This,bstrURL,pByteStream,type,ppIUnknownCancelCookie,pCallback,punkState)	\
    ( (This)->lpVtbl -> BeginCreateObject(This,bstrURL,pByteStream,type,ppIUnknownCancelCookie,pCallback,punkState) ) 

#define IMFMediaEngineExtension_CancelObjectCreation(This,pIUnknownCancelCookie)	\
    ( (This)->lpVtbl -> CancelObjectCreation(This,pIUnknownCancelCookie) ) 

#define IMFMediaEngineExtension_EndCreateObject(This,pResult,ppObject)	\
    ( (This)->lpVtbl -> EndCreateObject(This,pResult,ppObject) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngineExtension_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0007 */
/* [local] */ 


enum MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAGS
    {
        MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAG_PROTECTED	= 0x1,
        MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAG_REQUIRES_SURFACE_PROTECTION	= 0x2,
        MF_MEDIA_ENGINE_FRAME_PROTECTION_FLAG_REQUIRES_ANTI_SCREEN_SCRAPE_PROTECTION	= 0x4
    } ;


extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0007_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0007_v0_0_s_ifspec;

#ifndef __IMFMediaEngineProtectedContent_INTERFACE_DEFINED__
#define __IMFMediaEngineProtectedContent_INTERFACE_DEFINED__

/* interface IMFMediaEngineProtectedContent */
/* [local][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngineProtectedContent;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("9f8021e8-9c8c-487e-bb5c-79aa4779938c")
    IMFMediaEngineProtectedContent : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE ShareResources( 
            /* [annotation] */ 
            _In_  IUnknown *pUnkDeviceContext) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetRequiredProtections( 
            /* [annotation][out] */ 
            _Out_  DWORD *pFrameProtectionFlags) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetOPMWindow( 
            /* [annotation][in] */ 
            _In_  HWND hwnd) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE TransferVideoFrame( 
            /* [annotation][in] */ 
            _In_  IUnknown *pDstSurf,
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr,
            /* [annotation][out] */ 
            _Out_  DWORD *pFrameProtectionFlags) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetContentProtectionManager( 
            /* [annotation][in] */ 
            _In_opt_  IMFContentProtectionManager *pCPM) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetApplicationCertificate( 
            /* [annotation][in] */ 
            _In_reads_bytes_(cbBlob)  const BYTE *pbBlob,
            /* [annotation][in] */ 
            _In_  DWORD cbBlob) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineProtectedContentVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngineProtectedContent * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngineProtectedContent * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngineProtectedContent * This);
        
        HRESULT ( STDMETHODCALLTYPE *ShareResources )( 
            IMFMediaEngineProtectedContent * This,
            /* [annotation] */ 
            _In_  IUnknown *pUnkDeviceContext);
        
        HRESULT ( STDMETHODCALLTYPE *GetRequiredProtections )( 
            IMFMediaEngineProtectedContent * This,
            /* [annotation][out] */ 
            _Out_  DWORD *pFrameProtectionFlags);
        
        HRESULT ( STDMETHODCALLTYPE *SetOPMWindow )( 
            IMFMediaEngineProtectedContent * This,
            /* [annotation][in] */ 
            _In_  HWND hwnd);
        
        HRESULT ( STDMETHODCALLTYPE *TransferVideoFrame )( 
            IMFMediaEngineProtectedContent * This,
            /* [annotation][in] */ 
            _In_  IUnknown *pDstSurf,
            /* [annotation][in] */ 
            _In_opt_  const MFVideoNormalizedRect *pSrc,
            /* [annotation][in] */ 
            _In_  const RECT *pDst,
            /* [annotation][in] */ 
            _In_opt_  const MFARGB *pBorderClr,
            /* [annotation][out] */ 
            _Out_  DWORD *pFrameProtectionFlags);
        
        HRESULT ( STDMETHODCALLTYPE *SetContentProtectionManager )( 
            IMFMediaEngineProtectedContent * This,
            /* [annotation][in] */ 
            _In_opt_  IMFContentProtectionManager *pCPM);
        
        HRESULT ( STDMETHODCALLTYPE *SetApplicationCertificate )( 
            IMFMediaEngineProtectedContent * This,
            /* [annotation][in] */ 
            _In_reads_bytes_(cbBlob)  const BYTE *pbBlob,
            /* [annotation][in] */ 
            _In_  DWORD cbBlob);
        
        END_INTERFACE
    } IMFMediaEngineProtectedContentVtbl;

    interface IMFMediaEngineProtectedContent
    {
        CONST_VTBL struct IMFMediaEngineProtectedContentVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngineProtectedContent_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngineProtectedContent_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngineProtectedContent_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngineProtectedContent_ShareResources(This,pUnkDeviceContext)	\
    ( (This)->lpVtbl -> ShareResources(This,pUnkDeviceContext) ) 

#define IMFMediaEngineProtectedContent_GetRequiredProtections(This,pFrameProtectionFlags)	\
    ( (This)->lpVtbl -> GetRequiredProtections(This,pFrameProtectionFlags) ) 

#define IMFMediaEngineProtectedContent_SetOPMWindow(This,hwnd)	\
    ( (This)->lpVtbl -> SetOPMWindow(This,hwnd) ) 

#define IMFMediaEngineProtectedContent_TransferVideoFrame(This,pDstSurf,pSrc,pDst,pBorderClr,pFrameProtectionFlags)	\
    ( (This)->lpVtbl -> TransferVideoFrame(This,pDstSurf,pSrc,pDst,pBorderClr,pFrameProtectionFlags) ) 

#define IMFMediaEngineProtectedContent_SetContentProtectionManager(This,pCPM)	\
    ( (This)->lpVtbl -> SetContentProtectionManager(This,pCPM) ) 

#define IMFMediaEngineProtectedContent_SetApplicationCertificate(This,pbBlob,cbBlob)	\
    ( (This)->lpVtbl -> SetApplicationCertificate(This,pbBlob,cbBlob) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngineProtectedContent_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0008 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion
#ifndef NO_MEDIA_ENGINE_FACTORY
#pragma region Application Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
EXTERN_GUID(MF_MEDIA_ENGINE_CALLBACK,
0xc60381b8,0x83a4,0x41f8,0xa3,0xd0,0xde,0x05,0x07,0x68,0x49,0xa9);
EXTERN_GUID(MF_MEDIA_ENGINE_DXGI_MANAGER,
0x065702da,0x1094,0x486d,0x86,0x17,0xee,0x7c,0xc4,0xee,0x46,0x48);
EXTERN_GUID(MF_MEDIA_ENGINE_EXTENSION,
0x3109fd46,0x060d,0x4b62,0x8d,0xcf,0xfa,0xff,0x81,0x13,0x18,0xd2);
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
EXTERN_GUID(MF_MEDIA_ENGINE_PLAYBACK_HWND,
0xd988879b,0x67c9,0x4d92,0xba,0xa7,0x6e,0xad,0xd4,0x46,0x03,0x9d);
EXTERN_GUID(MF_MEDIA_ENGINE_OPM_HWND,
0xa0be8ee7, 0x0572, 0x4f2c, 0xa8, 0x01, 0x2a, 0x15, 0x1b, 0xd3, 0xe7, 0x26);
EXTERN_GUID(MF_MEDIA_ENGINE_PLAYBACK_VISUAL,
0x6debd26f,0x6ab9,0x4d7e,0xb0,0xee,0xc6,0x1a,0x73,0xff,0xad,0x15);
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion
#pragma region Application Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
EXTERN_GUID(MF_MEDIA_ENGINE_COREWINDOW,
0xfccae4dc, 0x0b7f, 0x41c2, 0x9f, 0x96, 0x46, 0x59, 0x94, 0x8a, 0xcd, 0xdc);
EXTERN_GUID(MF_MEDIA_ENGINE_VIDEO_OUTPUT_FORMAT,
0x5066893c,0x8cf9,0x42bc,0x8b,0x8a,0x47,0x22,0x12,0xe5,0x27,0x26);
EXTERN_GUID(MF_MEDIA_ENGINE_CONTENT_PROTECTION_FLAGS,
0xe0350223, 0x5aaf, 0x4d76, 0xa7, 0xc3, 0x06, 0xde, 0x70, 0x89, 0x4d, 0xb4);
EXTERN_GUID(MF_MEDIA_ENGINE_CONTENT_PROTECTION_MANAGER,
0xfdd6dfaa, 0xbd85, 0x4af3, 0x9e, 0x0f, 0xa0, 0x1d, 0x53, 0x9d, 0x87, 0x6a);
EXTERN_GUID(MF_MEDIA_ENGINE_AUDIO_ENDPOINT_ROLE,
0xd2cb93d1, 0x116a, 0x44f2, 0x93, 0x85, 0xf7, 0xd0, 0xfd, 0xa2, 0xfb, 0x46);
EXTERN_GUID(MF_MEDIA_ENGINE_AUDIO_CATEGORY,
0xc8d4c51d, 0x350e, 0x41f2, 0xba, 0x46, 0xfa, 0xeb, 0xbb, 0x08, 0x57, 0xf6);
EXTERN_GUID(MF_MEDIA_ENGINE_STREAM_CONTAINS_ALPHA_CHANNEL,
0x5cbfaf44, 0xd2b2, 0x4cfb, 0x80, 0xa7, 0xd4, 0x29, 0xc7, 0x4c, 0x78, 0x9d);
EXTERN_GUID(MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE,
0x4e0212e2, 0xe18f, 0x41e1, 0x95, 0xe5, 0xc0, 0xe7, 0xe9, 0x23, 0x5b, 0xc3);
EXTERN_GUID(MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE_IE9,
0x052c2d39, 0x40c0, 0x4188, 0xab, 0x86, 0xf8, 0x28, 0x27, 0x3b, 0x75, 0x22);
EXTERN_GUID(MF_MEDIA_ENGINE_BROWSER_COMPATIBILITY_MODE_IE10,
0x11a47afd, 0x6589, 0x4124, 0xb3, 0x12, 0x61, 0x58, 0xec, 0x51, 0x7f, 0xc3);
EXTERN_GUID(MF_MEDIA_ENGINE_SOURCE_RESOLVER_CONFIG_STORE,
0x0ac0c497, 0xb3c4, 0x48c9, 0x9c, 0xde, 0xbb, 0x8c, 0xa2, 0x44, 0x2c, 0xa3);
typedef 
enum MF_MEDIA_ENGINE_CREATEFLAGS
    {
        MF_MEDIA_ENGINE_AUDIOONLY	= 0x1,
        MF_MEDIA_ENGINE_WAITFORSTABLE_STATE	= 0x2,
        MF_MEDIA_ENGINE_FORCEMUTE	= 0x4,
        MF_MEDIA_ENGINE_REAL_TIME_MODE	= 0x8,
        MF_MEDIA_ENGINE_DISABLE_LOCAL_PLUGINS	= 0x10,
        MF_MEDIA_ENGINE_CREATEFLAGS_MASK	= 0x1f
    } 	MF_MEDIA_ENGINE_CREATEFLAGS;

typedef 
enum MF_MEDIA_ENGINE_PROTECTION_FLAGS
    {
        MF_MEDIA_ENGINE_ENABLE_PROTECTED_CONTENT	= 1,
        MF_MEDIA_ENGINE_USE_PMP_FOR_ALL_CONTENT	= 2,
        MF_MEDIA_ENGINE_USE_UNPROTECTED_PMP	= 4
    } 	MF_MEDIA_ENGINE_PROTECTION_FLAGS;



extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0008_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0008_v0_0_s_ifspec;

#ifndef __IMFMediaEngineClassFactory_INTERFACE_DEFINED__
#define __IMFMediaEngineClassFactory_INTERFACE_DEFINED__

/* interface IMFMediaEngineClassFactory */
/* [local][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IMFMediaEngineClassFactory;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("4D645ACE-26AA-4688-9BE1-DF3516990B93")
    IMFMediaEngineClassFactory : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE CreateInstance( 
            /* [annotation][in] */ 
            _In_  DWORD dwFlags,
            /* [annotation][in] */ 
            _In_  IMFAttributes *pAttr,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaEngine **ppPlayer) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CreateTimeRange( 
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppTimeRange) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CreateError( 
            /* [annotation][out] */ 
            _Outptr_  IMFMediaError **ppError) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IMFMediaEngineClassFactoryVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IMFMediaEngineClassFactory * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IMFMediaEngineClassFactory * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IMFMediaEngineClassFactory * This);
        
        HRESULT ( STDMETHODCALLTYPE *CreateInstance )( 
            IMFMediaEngineClassFactory * This,
            /* [annotation][in] */ 
            _In_  DWORD dwFlags,
            /* [annotation][in] */ 
            _In_  IMFAttributes *pAttr,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaEngine **ppPlayer);
        
        HRESULT ( STDMETHODCALLTYPE *CreateTimeRange )( 
            IMFMediaEngineClassFactory * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaTimeRange **ppTimeRange);
        
        HRESULT ( STDMETHODCALLTYPE *CreateError )( 
            IMFMediaEngineClassFactory * This,
            /* [annotation][out] */ 
            _Outptr_  IMFMediaError **ppError);
        
        END_INTERFACE
    } IMFMediaEngineClassFactoryVtbl;

    interface IMFMediaEngineClassFactory
    {
        CONST_VTBL struct IMFMediaEngineClassFactoryVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IMFMediaEngineClassFactory_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IMFMediaEngineClassFactory_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IMFMediaEngineClassFactory_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IMFMediaEngineClassFactory_CreateInstance(This,dwFlags,pAttr,ppPlayer)	\
    ( (This)->lpVtbl -> CreateInstance(This,dwFlags,pAttr,ppPlayer) ) 

#define IMFMediaEngineClassFactory_CreateTimeRange(This,ppTimeRange)	\
    ( (This)->lpVtbl -> CreateTimeRange(This,ppTimeRange) ) 

#define IMFMediaEngineClassFactory_CreateError(This,ppError)	\
    ( (This)->lpVtbl -> CreateError(This,ppError) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IMFMediaEngineClassFactory_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_mfmediaengine_0000_0009 */
/* [local] */ 

EXTERN_GUID(CLSID_MFMediaEngineClassFactory,
0xb44392da, 0x499b, 0x446b, 0xa4, 0xcb, 0x0, 0x5f, 0xea, 0xd0, 0xe6, 0xd5);
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion
#endif // (NO_MEDIA_ENGINE_FACTORY) 
#endif // (WINVER >= _WIN32_WINNT_WIN7) 


extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0009_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_mfmediaengine_0000_0009_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


