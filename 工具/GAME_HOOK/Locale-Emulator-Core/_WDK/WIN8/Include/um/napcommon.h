

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

#ifndef __napcommon_h__
#define __napcommon_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __INapComponentInfo_FWD_DEFINED__
#define __INapComponentInfo_FWD_DEFINED__
typedef interface INapComponentInfo INapComponentInfo;

#endif 	/* __INapComponentInfo_FWD_DEFINED__ */


#ifndef __INapComponentConfig_FWD_DEFINED__
#define __INapComponentConfig_FWD_DEFINED__
typedef interface INapComponentConfig INapComponentConfig;

#endif 	/* __INapComponentConfig_FWD_DEFINED__ */


#ifndef __INapComponentConfig2_FWD_DEFINED__
#define __INapComponentConfig2_FWD_DEFINED__
typedef interface INapComponentConfig2 INapComponentConfig2;

#endif 	/* __INapComponentConfig2_FWD_DEFINED__ */


#ifndef __INapComponentConfig3_FWD_DEFINED__
#define __INapComponentConfig3_FWD_DEFINED__
typedef interface INapComponentConfig3 INapComponentConfig3;

#endif 	/* __INapComponentConfig3_FWD_DEFINED__ */


/* header files for imported files */
#include "NapTypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_napcommon_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


extern RPC_IF_HANDLE __MIDL_itf_napcommon_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napcommon_0000_0000_v0_0_s_ifspec;

#ifndef __INapComponentInfo_INTERFACE_DEFINED__
#define __INapComponentInfo_INTERFACE_DEFINED__

/* interface INapComponentInfo */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapComponentInfo;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("B475F925-E3F7-414c-8C72-1CEE64B9D8F6")
    INapComponentInfo : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetFriendlyName( 
            /* [out] */ __RPC__out MessageId *friendlyName) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetDescription( 
            /* [out] */ __RPC__out MessageId *description) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetVendorName( 
            /* [out] */ __RPC__out MessageId *vendorName) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetVersion( 
            /* [out] */ __RPC__out MessageId *version) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetIcon( 
            /* [out] */ __RPC__deref_out_opt CountedString **dllFilePath,
            /* [out] */ __RPC__out UINT32 *iconResourceId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ConvertErrorCodeToMessageId( 
            /* [in] */ HRESULT errorCode,
            /* [out] */ __RPC__out MessageId *msgId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetLocalizedString( 
            /* [in] */ MessageId msgId,
            /* [out] */ __RPC__deref_out_opt CountedString **string) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapComponentInfoVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapComponentInfo * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapComponentInfo * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapComponentInfo * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetFriendlyName )( 
            __RPC__in INapComponentInfo * This,
            /* [out] */ __RPC__out MessageId *friendlyName);
        
        HRESULT ( STDMETHODCALLTYPE *GetDescription )( 
            __RPC__in INapComponentInfo * This,
            /* [out] */ __RPC__out MessageId *description);
        
        HRESULT ( STDMETHODCALLTYPE *GetVendorName )( 
            __RPC__in INapComponentInfo * This,
            /* [out] */ __RPC__out MessageId *vendorName);
        
        HRESULT ( STDMETHODCALLTYPE *GetVersion )( 
            __RPC__in INapComponentInfo * This,
            /* [out] */ __RPC__out MessageId *version);
        
        HRESULT ( STDMETHODCALLTYPE *GetIcon )( 
            __RPC__in INapComponentInfo * This,
            /* [out] */ __RPC__deref_out_opt CountedString **dllFilePath,
            /* [out] */ __RPC__out UINT32 *iconResourceId);
        
        HRESULT ( STDMETHODCALLTYPE *ConvertErrorCodeToMessageId )( 
            __RPC__in INapComponentInfo * This,
            /* [in] */ HRESULT errorCode,
            /* [out] */ __RPC__out MessageId *msgId);
        
        HRESULT ( STDMETHODCALLTYPE *GetLocalizedString )( 
            __RPC__in INapComponentInfo * This,
            /* [in] */ MessageId msgId,
            /* [out] */ __RPC__deref_out_opt CountedString **string);
        
        END_INTERFACE
    } INapComponentInfoVtbl;

    interface INapComponentInfo
    {
        CONST_VTBL struct INapComponentInfoVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapComponentInfo_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapComponentInfo_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapComponentInfo_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapComponentInfo_GetFriendlyName(This,friendlyName)	\
    ( (This)->lpVtbl -> GetFriendlyName(This,friendlyName) ) 

#define INapComponentInfo_GetDescription(This,description)	\
    ( (This)->lpVtbl -> GetDescription(This,description) ) 

#define INapComponentInfo_GetVendorName(This,vendorName)	\
    ( (This)->lpVtbl -> GetVendorName(This,vendorName) ) 

#define INapComponentInfo_GetVersion(This,version)	\
    ( (This)->lpVtbl -> GetVersion(This,version) ) 

#define INapComponentInfo_GetIcon(This,dllFilePath,iconResourceId)	\
    ( (This)->lpVtbl -> GetIcon(This,dllFilePath,iconResourceId) ) 

#define INapComponentInfo_ConvertErrorCodeToMessageId(This,errorCode,msgId)	\
    ( (This)->lpVtbl -> ConvertErrorCodeToMessageId(This,errorCode,msgId) ) 

#define INapComponentInfo_GetLocalizedString(This,msgId,string)	\
    ( (This)->lpVtbl -> GetLocalizedString(This,msgId,string) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapComponentInfo_INTERFACE_DEFINED__ */


#ifndef __INapComponentConfig_INTERFACE_DEFINED__
#define __INapComponentConfig_INTERFACE_DEFINED__

/* interface INapComponentConfig */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapComponentConfig;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("a9e0af1a-3713-478e-ae03-8edd272d21fa")
    INapComponentConfig : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE IsUISupported( 
            /* [out] */ __RPC__out BOOL *isSupported) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE InvokeUI( 
            /* [unique][in] */ __RPC__in_opt HWND hwndParent) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetConfig( 
            /* [out] */ __RPC__out UINT16 *bCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*bCount) BYTE **data) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetConfig( 
            /* [in] */ UINT16 bCount,
            /* [size_is][in] */ __RPC__in_ecount_full(bCount) BYTE *data) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapComponentConfigVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapComponentConfig * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapComponentConfig * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapComponentConfig * This);
        
        HRESULT ( STDMETHODCALLTYPE *IsUISupported )( 
            __RPC__in INapComponentConfig * This,
            /* [out] */ __RPC__out BOOL *isSupported);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUI )( 
            __RPC__in INapComponentConfig * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent);
        
        HRESULT ( STDMETHODCALLTYPE *GetConfig )( 
            __RPC__in INapComponentConfig * This,
            /* [out] */ __RPC__out UINT16 *bCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*bCount) BYTE **data);
        
        HRESULT ( STDMETHODCALLTYPE *SetConfig )( 
            __RPC__in INapComponentConfig * This,
            /* [in] */ UINT16 bCount,
            /* [size_is][in] */ __RPC__in_ecount_full(bCount) BYTE *data);
        
        END_INTERFACE
    } INapComponentConfigVtbl;

    interface INapComponentConfig
    {
        CONST_VTBL struct INapComponentConfigVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapComponentConfig_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapComponentConfig_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapComponentConfig_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapComponentConfig_IsUISupported(This,isSupported)	\
    ( (This)->lpVtbl -> IsUISupported(This,isSupported) ) 

#define INapComponentConfig_InvokeUI(This,hwndParent)	\
    ( (This)->lpVtbl -> InvokeUI(This,hwndParent) ) 

#define INapComponentConfig_GetConfig(This,bCount,data)	\
    ( (This)->lpVtbl -> GetConfig(This,bCount,data) ) 

#define INapComponentConfig_SetConfig(This,bCount,data)	\
    ( (This)->lpVtbl -> SetConfig(This,bCount,data) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapComponentConfig_INTERFACE_DEFINED__ */


#ifndef __INapComponentConfig2_INTERFACE_DEFINED__
#define __INapComponentConfig2_INTERFACE_DEFINED__

/* interface INapComponentConfig2 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapComponentConfig2;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("47cbdb9e-1972-4f5e-bd3c-5eb6230614b5")
    INapComponentConfig2 : public INapComponentConfig
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE IsRemoteConfigSupported( 
            /* [out] */ __RPC__out BOOL *isSupported,
            /* [out] */ __RPC__out UINT8 *remoteConfigType) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE InvokeUIForMachine( 
            /* [unique][in] */ __RPC__in_opt HWND hwndParent,
            /* [unique][in] */ __RPC__in_opt CountedString *machineName) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE InvokeUIFromConfigBlob( 
            /* [unique][in] */ __RPC__in_opt HWND hwndParent,
            /* [in] */ UINT16 inbCount,
            /* [size_is][in] */ __RPC__in_ecount_full(inbCount) BYTE *inData,
            /* [out] */ __RPC__out UINT16 *outbCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*outbCount) BYTE **outdata,
            /* [out] */ __RPC__out BOOL *fConfigChanged) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapComponentConfig2Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapComponentConfig2 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapComponentConfig2 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapComponentConfig2 * This);
        
        HRESULT ( STDMETHODCALLTYPE *IsUISupported )( 
            __RPC__in INapComponentConfig2 * This,
            /* [out] */ __RPC__out BOOL *isSupported);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUI )( 
            __RPC__in INapComponentConfig2 * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent);
        
        HRESULT ( STDMETHODCALLTYPE *GetConfig )( 
            __RPC__in INapComponentConfig2 * This,
            /* [out] */ __RPC__out UINT16 *bCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*bCount) BYTE **data);
        
        HRESULT ( STDMETHODCALLTYPE *SetConfig )( 
            __RPC__in INapComponentConfig2 * This,
            /* [in] */ UINT16 bCount,
            /* [size_is][in] */ __RPC__in_ecount_full(bCount) BYTE *data);
        
        HRESULT ( STDMETHODCALLTYPE *IsRemoteConfigSupported )( 
            __RPC__in INapComponentConfig2 * This,
            /* [out] */ __RPC__out BOOL *isSupported,
            /* [out] */ __RPC__out UINT8 *remoteConfigType);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUIForMachine )( 
            __RPC__in INapComponentConfig2 * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent,
            /* [unique][in] */ __RPC__in_opt CountedString *machineName);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUIFromConfigBlob )( 
            __RPC__in INapComponentConfig2 * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent,
            /* [in] */ UINT16 inbCount,
            /* [size_is][in] */ __RPC__in_ecount_full(inbCount) BYTE *inData,
            /* [out] */ __RPC__out UINT16 *outbCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*outbCount) BYTE **outdata,
            /* [out] */ __RPC__out BOOL *fConfigChanged);
        
        END_INTERFACE
    } INapComponentConfig2Vtbl;

    interface INapComponentConfig2
    {
        CONST_VTBL struct INapComponentConfig2Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapComponentConfig2_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapComponentConfig2_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapComponentConfig2_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapComponentConfig2_IsUISupported(This,isSupported)	\
    ( (This)->lpVtbl -> IsUISupported(This,isSupported) ) 

#define INapComponentConfig2_InvokeUI(This,hwndParent)	\
    ( (This)->lpVtbl -> InvokeUI(This,hwndParent) ) 

#define INapComponentConfig2_GetConfig(This,bCount,data)	\
    ( (This)->lpVtbl -> GetConfig(This,bCount,data) ) 

#define INapComponentConfig2_SetConfig(This,bCount,data)	\
    ( (This)->lpVtbl -> SetConfig(This,bCount,data) ) 


#define INapComponentConfig2_IsRemoteConfigSupported(This,isSupported,remoteConfigType)	\
    ( (This)->lpVtbl -> IsRemoteConfigSupported(This,isSupported,remoteConfigType) ) 

#define INapComponentConfig2_InvokeUIForMachine(This,hwndParent,machineName)	\
    ( (This)->lpVtbl -> InvokeUIForMachine(This,hwndParent,machineName) ) 

#define INapComponentConfig2_InvokeUIFromConfigBlob(This,hwndParent,inbCount,inData,outbCount,outdata,fConfigChanged)	\
    ( (This)->lpVtbl -> InvokeUIFromConfigBlob(This,hwndParent,inbCount,inData,outbCount,outdata,fConfigChanged) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapComponentConfig2_INTERFACE_DEFINED__ */


#ifndef __INapComponentConfig3_INTERFACE_DEFINED__
#define __INapComponentConfig3_INTERFACE_DEFINED__

/* interface INapComponentConfig3 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapComponentConfig3;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("9C4A8101-8CFE-4332-876E-C4A49D1D3F77")
    INapComponentConfig3 : public INapComponentConfig2
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE NewConfig( 
            UINT32 configID) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE DeleteConfig( 
            UINT32 configID) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE DeleteAllConfig( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetConfigFromID( 
            /* [in] */ UINT32 configID,
            /* [out] */ __RPC__out UINT16 *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) BYTE **outdata) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetConfigToID( 
            /* [in] */ UINT32 configID,
            /* [in] */ UINT16 count,
            /* [size_is][in] */ __RPC__in_ecount_full(count) BYTE *data) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapComponentConfig3Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapComponentConfig3 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapComponentConfig3 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapComponentConfig3 * This);
        
        HRESULT ( STDMETHODCALLTYPE *IsUISupported )( 
            __RPC__in INapComponentConfig3 * This,
            /* [out] */ __RPC__out BOOL *isSupported);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUI )( 
            __RPC__in INapComponentConfig3 * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent);
        
        HRESULT ( STDMETHODCALLTYPE *GetConfig )( 
            __RPC__in INapComponentConfig3 * This,
            /* [out] */ __RPC__out UINT16 *bCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*bCount) BYTE **data);
        
        HRESULT ( STDMETHODCALLTYPE *SetConfig )( 
            __RPC__in INapComponentConfig3 * This,
            /* [in] */ UINT16 bCount,
            /* [size_is][in] */ __RPC__in_ecount_full(bCount) BYTE *data);
        
        HRESULT ( STDMETHODCALLTYPE *IsRemoteConfigSupported )( 
            __RPC__in INapComponentConfig3 * This,
            /* [out] */ __RPC__out BOOL *isSupported,
            /* [out] */ __RPC__out UINT8 *remoteConfigType);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUIForMachine )( 
            __RPC__in INapComponentConfig3 * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent,
            /* [unique][in] */ __RPC__in_opt CountedString *machineName);
        
        HRESULT ( STDMETHODCALLTYPE *InvokeUIFromConfigBlob )( 
            __RPC__in INapComponentConfig3 * This,
            /* [unique][in] */ __RPC__in_opt HWND hwndParent,
            /* [in] */ UINT16 inbCount,
            /* [size_is][in] */ __RPC__in_ecount_full(inbCount) BYTE *inData,
            /* [out] */ __RPC__out UINT16 *outbCount,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*outbCount) BYTE **outdata,
            /* [out] */ __RPC__out BOOL *fConfigChanged);
        
        HRESULT ( STDMETHODCALLTYPE *NewConfig )( 
            __RPC__in INapComponentConfig3 * This,
            UINT32 configID);
        
        HRESULT ( STDMETHODCALLTYPE *DeleteConfig )( 
            __RPC__in INapComponentConfig3 * This,
            UINT32 configID);
        
        HRESULT ( STDMETHODCALLTYPE *DeleteAllConfig )( 
            __RPC__in INapComponentConfig3 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetConfigFromID )( 
            __RPC__in INapComponentConfig3 * This,
            /* [in] */ UINT32 configID,
            /* [out] */ __RPC__out UINT16 *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) BYTE **outdata);
        
        HRESULT ( STDMETHODCALLTYPE *SetConfigToID )( 
            __RPC__in INapComponentConfig3 * This,
            /* [in] */ UINT32 configID,
            /* [in] */ UINT16 count,
            /* [size_is][in] */ __RPC__in_ecount_full(count) BYTE *data);
        
        END_INTERFACE
    } INapComponentConfig3Vtbl;

    interface INapComponentConfig3
    {
        CONST_VTBL struct INapComponentConfig3Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapComponentConfig3_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapComponentConfig3_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapComponentConfig3_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapComponentConfig3_IsUISupported(This,isSupported)	\
    ( (This)->lpVtbl -> IsUISupported(This,isSupported) ) 

#define INapComponentConfig3_InvokeUI(This,hwndParent)	\
    ( (This)->lpVtbl -> InvokeUI(This,hwndParent) ) 

#define INapComponentConfig3_GetConfig(This,bCount,data)	\
    ( (This)->lpVtbl -> GetConfig(This,bCount,data) ) 

#define INapComponentConfig3_SetConfig(This,bCount,data)	\
    ( (This)->lpVtbl -> SetConfig(This,bCount,data) ) 


#define INapComponentConfig3_IsRemoteConfigSupported(This,isSupported,remoteConfigType)	\
    ( (This)->lpVtbl -> IsRemoteConfigSupported(This,isSupported,remoteConfigType) ) 

#define INapComponentConfig3_InvokeUIForMachine(This,hwndParent,machineName)	\
    ( (This)->lpVtbl -> InvokeUIForMachine(This,hwndParent,machineName) ) 

#define INapComponentConfig3_InvokeUIFromConfigBlob(This,hwndParent,inbCount,inData,outbCount,outdata,fConfigChanged)	\
    ( (This)->lpVtbl -> InvokeUIFromConfigBlob(This,hwndParent,inbCount,inData,outbCount,outdata,fConfigChanged) ) 


#define INapComponentConfig3_NewConfig(This,configID)	\
    ( (This)->lpVtbl -> NewConfig(This,configID) ) 

#define INapComponentConfig3_DeleteConfig(This,configID)	\
    ( (This)->lpVtbl -> DeleteConfig(This,configID) ) 

#define INapComponentConfig3_DeleteAllConfig(This)	\
    ( (This)->lpVtbl -> DeleteAllConfig(This) ) 

#define INapComponentConfig3_GetConfigFromID(This,configID,count,outdata)	\
    ( (This)->lpVtbl -> GetConfigFromID(This,configID,count,outdata) ) 

#define INapComponentConfig3_SetConfigToID(This,configID,count,data)	\
    ( (This)->lpVtbl -> SetConfigToID(This,configID,count,data) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapComponentConfig3_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_napcommon_0000_0004 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_napcommon_0000_0004_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napcommon_0000_0004_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  HWND_UserSize(     __RPC__in unsigned long *, unsigned long            , __RPC__in HWND * ); 
unsigned char * __RPC_USER  HWND_UserMarshal(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in HWND * ); 
unsigned char * __RPC_USER  HWND_UserUnmarshal(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out HWND * ); 
void                      __RPC_USER  HWND_UserFree(     __RPC__in unsigned long *, __RPC__in HWND * ); 

unsigned long             __RPC_USER  HWND_UserSize64(     __RPC__in unsigned long *, unsigned long            , __RPC__in HWND * ); 
unsigned char * __RPC_USER  HWND_UserMarshal64(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in HWND * ); 
unsigned char * __RPC_USER  HWND_UserUnmarshal64(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out HWND * ); 
void                      __RPC_USER  HWND_UserFree64(     __RPC__in unsigned long *, __RPC__in HWND * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


