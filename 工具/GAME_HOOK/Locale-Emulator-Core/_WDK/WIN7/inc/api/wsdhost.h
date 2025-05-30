

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 7.00.0555 */
/* Compiler settings for wsdhost.idl:
    Oicf, W1, Zp8, env=Win32 (32b run), target_arch=X86 7.00.0555 
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
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

#ifndef __wsdhost_h__
#define __wsdhost_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IWSDDeviceHost_FWD_DEFINED__
#define __IWSDDeviceHost_FWD_DEFINED__
typedef interface IWSDDeviceHost IWSDDeviceHost;
#endif 	/* __IWSDDeviceHost_FWD_DEFINED__ */


#ifndef __IWSDDeviceHostNotify_FWD_DEFINED__
#define __IWSDDeviceHostNotify_FWD_DEFINED__
typedef interface IWSDDeviceHostNotify IWSDDeviceHostNotify;
#endif 	/* __IWSDDeviceHostNotify_FWD_DEFINED__ */


#ifndef __IWSDServiceMessaging_FWD_DEFINED__
#define __IWSDServiceMessaging_FWD_DEFINED__
typedef interface IWSDServiceMessaging IWSDServiceMessaging;
#endif 	/* __IWSDServiceMessaging_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"
#include "wsdxmldom.h"
#include "wsdtypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_wsdhost_0000_0000 */
/* [local] */ 






HRESULT WINAPI
WSDCreateDeviceHost(
    __in LPCWSTR pszLocalId,
    IWSDXMLContext* pContext,
    __deref_out IWSDDeviceHost** ppDeviceHost);
HRESULT WINAPI
WSDCreateDeviceHostAdvanced(
    __in LPCWSTR pszLocalId,
    IWSDXMLContext* pContext,
    __in_ecount_opt(dwHostAddressCount) IWSDAddress** ppHostAddresses,
    DWORD dwHostAddressCount,
    __deref_out IWSDDeviceHost** ppDeviceHost);
#if (WINVER >= _WIN32_WINNT_WIN7)
HRESULT WINAPI
WSDCreateDeviceHost2(
    __in LPCWSTR pszLocalId,
    IWSDXMLContext* pContext,
    __in_ecount_opt(dwConfigParamCount) WSD_CONFIG_PARAM* pConfigParams,
    DWORD dwConfigParamCount,
    __deref_out IWSDDeviceHost** ppDeviceHost);
#endif


extern RPC_IF_HANDLE __MIDL_itf_wsdhost_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_wsdhost_0000_0000_v0_0_s_ifspec;

#ifndef __IWSDDeviceHost_INTERFACE_DEFINED__
#define __IWSDDeviceHost_INTERFACE_DEFINED__

/* interface IWSDDeviceHost */
/* [local][restricted][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IWSDDeviceHost;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("917fe891-3d13-4138-9809-934c8abeb12c")
    IWSDDeviceHost : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Init( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszLocalId,
            /* [optional][in] */ IWSDXMLContext *pContext,
            /* [annotation][optional][in] */ 
            __in_ecount_opt(dwHostAddressCount)  IWSDAddress **ppHostAddresses,
            /* [optional][in] */ DWORD dwHostAddressCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Start( 
            /* [in] */ ULONGLONG ullInstanceId,
            /* [in] */ const WSD_URI_LIST *pScopeList,
            /* [optional][in] */ IWSDDeviceHostNotify *pNotificationSink) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Stop( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Terminate( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RegisterPortType( 
            /* [in] */ const WSD_PORT_TYPE *pPortType) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetMetadata( 
            /* [in] */ const WSD_THIS_MODEL_METADATA *pThisModelMetadata,
            /* [in] */ const WSD_THIS_DEVICE_METADATA *pThisDeviceMetadata,
            /* [optional][in] */ const WSD_HOST_METADATA *pHostMetadata,
            /* [optional][in] */ const WSD_METADATA_SECTION_LIST *pCustomMetadata) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RegisterService( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [in] */ IUnknown *pService) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RetireService( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AddDynamicService( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [annotation][optional][in] */ 
            __in_opt  LPCWSTR pszEndpointAddress,
            /* [optional][in] */ const WSD_PORT_TYPE *pPortType,
            /* [optional][in] */ const WSDXML_NAME *pPortName,
            /* [optional][in] */ const WSDXML_ELEMENT *pAny,
            /* [optional][in] */ IUnknown *pService) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE RemoveDynamicService( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetServiceDiscoverable( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [in] */ BOOL fDiscoverable) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SignalEvent( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [annotation][in] */ 
            __in_opt  const void *pBody,
            /* [in] */ const WSD_OPERATION *pOperation) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IWSDDeviceHostVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IWSDDeviceHost * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IWSDDeviceHost * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IWSDDeviceHost * This);
        
        HRESULT ( STDMETHODCALLTYPE *Init )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszLocalId,
            /* [optional][in] */ IWSDXMLContext *pContext,
            /* [annotation][optional][in] */ 
            __in_ecount_opt(dwHostAddressCount)  IWSDAddress **ppHostAddresses,
            /* [optional][in] */ DWORD dwHostAddressCount);
        
        HRESULT ( STDMETHODCALLTYPE *Start )( 
            IWSDDeviceHost * This,
            /* [in] */ ULONGLONG ullInstanceId,
            /* [in] */ const WSD_URI_LIST *pScopeList,
            /* [optional][in] */ IWSDDeviceHostNotify *pNotificationSink);
        
        HRESULT ( STDMETHODCALLTYPE *Stop )( 
            IWSDDeviceHost * This);
        
        HRESULT ( STDMETHODCALLTYPE *Terminate )( 
            IWSDDeviceHost * This);
        
        HRESULT ( STDMETHODCALLTYPE *RegisterPortType )( 
            IWSDDeviceHost * This,
            /* [in] */ const WSD_PORT_TYPE *pPortType);
        
        HRESULT ( STDMETHODCALLTYPE *SetMetadata )( 
            IWSDDeviceHost * This,
            /* [in] */ const WSD_THIS_MODEL_METADATA *pThisModelMetadata,
            /* [in] */ const WSD_THIS_DEVICE_METADATA *pThisDeviceMetadata,
            /* [optional][in] */ const WSD_HOST_METADATA *pHostMetadata,
            /* [optional][in] */ const WSD_METADATA_SECTION_LIST *pCustomMetadata);
        
        HRESULT ( STDMETHODCALLTYPE *RegisterService )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [in] */ IUnknown *pService);
        
        HRESULT ( STDMETHODCALLTYPE *RetireService )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId);
        
        HRESULT ( STDMETHODCALLTYPE *AddDynamicService )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [annotation][optional][in] */ 
            __in_opt  LPCWSTR pszEndpointAddress,
            /* [optional][in] */ const WSD_PORT_TYPE *pPortType,
            /* [optional][in] */ const WSDXML_NAME *pPortName,
            /* [optional][in] */ const WSDXML_ELEMENT *pAny,
            /* [optional][in] */ IUnknown *pService);
        
        HRESULT ( STDMETHODCALLTYPE *RemoveDynamicService )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId);
        
        HRESULT ( STDMETHODCALLTYPE *SetServiceDiscoverable )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [in] */ BOOL fDiscoverable);
        
        HRESULT ( STDMETHODCALLTYPE *SignalEvent )( 
            IWSDDeviceHost * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [annotation][in] */ 
            __in_opt  const void *pBody,
            /* [in] */ const WSD_OPERATION *pOperation);
        
        END_INTERFACE
    } IWSDDeviceHostVtbl;

    interface IWSDDeviceHost
    {
        CONST_VTBL struct IWSDDeviceHostVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWSDDeviceHost_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWSDDeviceHost_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWSDDeviceHost_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IWSDDeviceHost_Init(This,pszLocalId,pContext,ppHostAddresses,dwHostAddressCount)	\
    ( (This)->lpVtbl -> Init(This,pszLocalId,pContext,ppHostAddresses,dwHostAddressCount) ) 

#define IWSDDeviceHost_Start(This,ullInstanceId,pScopeList,pNotificationSink)	\
    ( (This)->lpVtbl -> Start(This,ullInstanceId,pScopeList,pNotificationSink) ) 

#define IWSDDeviceHost_Stop(This)	\
    ( (This)->lpVtbl -> Stop(This) ) 

#define IWSDDeviceHost_Terminate(This)	\
    ( (This)->lpVtbl -> Terminate(This) ) 

#define IWSDDeviceHost_RegisterPortType(This,pPortType)	\
    ( (This)->lpVtbl -> RegisterPortType(This,pPortType) ) 

#define IWSDDeviceHost_SetMetadata(This,pThisModelMetadata,pThisDeviceMetadata,pHostMetadata,pCustomMetadata)	\
    ( (This)->lpVtbl -> SetMetadata(This,pThisModelMetadata,pThisDeviceMetadata,pHostMetadata,pCustomMetadata) ) 

#define IWSDDeviceHost_RegisterService(This,pszServiceId,pService)	\
    ( (This)->lpVtbl -> RegisterService(This,pszServiceId,pService) ) 

#define IWSDDeviceHost_RetireService(This,pszServiceId)	\
    ( (This)->lpVtbl -> RetireService(This,pszServiceId) ) 

#define IWSDDeviceHost_AddDynamicService(This,pszServiceId,pszEndpointAddress,pPortType,pPortName,pAny,pService)	\
    ( (This)->lpVtbl -> AddDynamicService(This,pszServiceId,pszEndpointAddress,pPortType,pPortName,pAny,pService) ) 

#define IWSDDeviceHost_RemoveDynamicService(This,pszServiceId)	\
    ( (This)->lpVtbl -> RemoveDynamicService(This,pszServiceId) ) 

#define IWSDDeviceHost_SetServiceDiscoverable(This,pszServiceId,fDiscoverable)	\
    ( (This)->lpVtbl -> SetServiceDiscoverable(This,pszServiceId,fDiscoverable) ) 

#define IWSDDeviceHost_SignalEvent(This,pszServiceId,pBody,pOperation)	\
    ( (This)->lpVtbl -> SignalEvent(This,pszServiceId,pBody,pOperation) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWSDDeviceHost_INTERFACE_DEFINED__ */


#ifndef __IWSDDeviceHostNotify_INTERFACE_DEFINED__
#define __IWSDDeviceHostNotify_INTERFACE_DEFINED__

/* interface IWSDDeviceHostNotify */
/* [restricted][unique][helpstring][uuid][object] */ 




EXTERN_C const IID IID_IWSDDeviceHostNotify;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("b5bee9f9-eeda-41fe-96f7-f45e14990fb0")
    IWSDDeviceHostNotify : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetService( 
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [annotation][out] */ 
            __deref_out  IUnknown **ppService) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IWSDDeviceHostNotifyVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IWSDDeviceHostNotify * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IWSDDeviceHostNotify * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IWSDDeviceHostNotify * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetService )( 
            __RPC__in IWSDDeviceHostNotify * This,
            /* [annotation][in] */ 
            __in  LPCWSTR pszServiceId,
            /* [annotation][out] */ 
            __deref_out  IUnknown **ppService);
        
        END_INTERFACE
    } IWSDDeviceHostNotifyVtbl;

    interface IWSDDeviceHostNotify
    {
        CONST_VTBL struct IWSDDeviceHostNotifyVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWSDDeviceHostNotify_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWSDDeviceHostNotify_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWSDDeviceHostNotify_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IWSDDeviceHostNotify_GetService(This,pszServiceId,ppService)	\
    ( (This)->lpVtbl -> GetService(This,pszServiceId,ppService) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWSDDeviceHostNotify_INTERFACE_DEFINED__ */


#ifndef __IWSDServiceMessaging_INTERFACE_DEFINED__
#define __IWSDServiceMessaging_INTERFACE_DEFINED__

/* interface IWSDServiceMessaging */
/* [local][restricted][unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IWSDServiceMessaging;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("94974cf4-0cab-460d-a3f6-7a0ad623c0e6")
    IWSDServiceMessaging : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SendResponse( 
            /* [annotation][in] */ 
            __in_opt  void *pBody,
            /* [in] */ WSD_OPERATION *pOperation,
            /* [in] */ IWSDMessageParameters *pMessageParameters) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE FaultRequest( 
            /* [in] */ WSD_SOAP_HEADER *pRequestHeader,
            /* [in] */ IWSDMessageParameters *pMessageParameters,
            /* [optional][in] */ WSD_SOAP_FAULT *pFault) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IWSDServiceMessagingVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IWSDServiceMessaging * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IWSDServiceMessaging * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IWSDServiceMessaging * This);
        
        HRESULT ( STDMETHODCALLTYPE *SendResponse )( 
            IWSDServiceMessaging * This,
            /* [annotation][in] */ 
            __in_opt  void *pBody,
            /* [in] */ WSD_OPERATION *pOperation,
            /* [in] */ IWSDMessageParameters *pMessageParameters);
        
        HRESULT ( STDMETHODCALLTYPE *FaultRequest )( 
            IWSDServiceMessaging * This,
            /* [in] */ WSD_SOAP_HEADER *pRequestHeader,
            /* [in] */ IWSDMessageParameters *pMessageParameters,
            /* [optional][in] */ WSD_SOAP_FAULT *pFault);
        
        END_INTERFACE
    } IWSDServiceMessagingVtbl;

    interface IWSDServiceMessaging
    {
        CONST_VTBL struct IWSDServiceMessagingVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWSDServiceMessaging_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWSDServiceMessaging_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWSDServiceMessaging_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IWSDServiceMessaging_SendResponse(This,pBody,pOperation,pMessageParameters)	\
    ( (This)->lpVtbl -> SendResponse(This,pBody,pOperation,pMessageParameters) ) 

#define IWSDServiceMessaging_FaultRequest(This,pRequestHeader,pMessageParameters,pFault)	\
    ( (This)->lpVtbl -> FaultRequest(This,pRequestHeader,pMessageParameters,pFault) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWSDServiceMessaging_INTERFACE_DEFINED__ */


/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif



