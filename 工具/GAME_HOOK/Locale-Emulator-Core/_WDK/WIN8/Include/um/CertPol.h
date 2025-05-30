

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

#ifndef __certpol_h__
#define __certpol_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __ICertPolicy_FWD_DEFINED__
#define __ICertPolicy_FWD_DEFINED__
typedef interface ICertPolicy ICertPolicy;

#endif 	/* __ICertPolicy_FWD_DEFINED__ */


#ifndef __ICertPolicy2_FWD_DEFINED__
#define __ICertPolicy2_FWD_DEFINED__
typedef interface ICertPolicy2 ICertPolicy2;

#endif 	/* __ICertPolicy2_FWD_DEFINED__ */


/* header files for imported files */
#include "wtypes.h"
#include "certmod.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_certpol_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


extern RPC_IF_HANDLE __MIDL_itf_certpol_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_certpol_0000_0000_v0_0_s_ifspec;

#ifndef __ICertPolicy_INTERFACE_DEFINED__
#define __ICertPolicy_INTERFACE_DEFINED__

/* interface ICertPolicy */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_ICertPolicy;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("38bb5a00-7636-11d0-b413-00a0c91bbf8c")
    ICertPolicy : public IDispatch
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [in] */ __RPC__in const BSTR strConfig) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE VerifyRequest( 
            /* [in] */ __RPC__in const BSTR strConfig,
            /* [in] */ LONG Context,
            /* [in] */ LONG bNewRequest,
            /* [in] */ LONG Flags,
            /* [retval][out] */ __RPC__out LONG *pDisposition) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetDescription( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pstrDescription) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ShutDown( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct ICertPolicyVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in ICertPolicy * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in ICertPolicy * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in ICertPolicy * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in ICertPolicy * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in ICertPolicy * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in ICertPolicy * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            ICertPolicy * This,
            /* [annotation][in] */ 
            _In_  DISPID dispIdMember,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][in] */ 
            _In_  LCID lcid,
            /* [annotation][in] */ 
            _In_  WORD wFlags,
            /* [annotation][out][in] */ 
            _In_  DISPPARAMS *pDispParams,
            /* [annotation][out] */ 
            _Out_opt_  VARIANT *pVarResult,
            /* [annotation][out] */ 
            _Out_opt_  EXCEPINFO *pExcepInfo,
            /* [annotation][out] */ 
            _Out_opt_  UINT *puArgErr);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in ICertPolicy * This,
            /* [in] */ __RPC__in const BSTR strConfig);
        
        HRESULT ( STDMETHODCALLTYPE *VerifyRequest )( 
            __RPC__in ICertPolicy * This,
            /* [in] */ __RPC__in const BSTR strConfig,
            /* [in] */ LONG Context,
            /* [in] */ LONG bNewRequest,
            /* [in] */ LONG Flags,
            /* [retval][out] */ __RPC__out LONG *pDisposition);
        
        HRESULT ( STDMETHODCALLTYPE *GetDescription )( 
            __RPC__in ICertPolicy * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pstrDescription);
        
        HRESULT ( STDMETHODCALLTYPE *ShutDown )( 
            __RPC__in ICertPolicy * This);
        
        END_INTERFACE
    } ICertPolicyVtbl;

    interface ICertPolicy
    {
        CONST_VTBL struct ICertPolicyVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ICertPolicy_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define ICertPolicy_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define ICertPolicy_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define ICertPolicy_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define ICertPolicy_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define ICertPolicy_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define ICertPolicy_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define ICertPolicy_Initialize(This,strConfig)	\
    ( (This)->lpVtbl -> Initialize(This,strConfig) ) 

#define ICertPolicy_VerifyRequest(This,strConfig,Context,bNewRequest,Flags,pDisposition)	\
    ( (This)->lpVtbl -> VerifyRequest(This,strConfig,Context,bNewRequest,Flags,pDisposition) ) 

#define ICertPolicy_GetDescription(This,pstrDescription)	\
    ( (This)->lpVtbl -> GetDescription(This,pstrDescription) ) 

#define ICertPolicy_ShutDown(This)	\
    ( (This)->lpVtbl -> ShutDown(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __ICertPolicy_INTERFACE_DEFINED__ */


#ifndef __ICertPolicy2_INTERFACE_DEFINED__
#define __ICertPolicy2_INTERFACE_DEFINED__

/* interface ICertPolicy2 */
/* [unique][helpstring][dual][uuid][object] */ 


EXTERN_C const IID IID_ICertPolicy2;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("3db4910e-8001-4bf1-aa1b-f43a808317a0")
    ICertPolicy2 : public ICertPolicy
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetManageModule( 
            /* [retval][out] */ __RPC__deref_out_opt ICertManageModule **ppManageModule) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct ICertPolicy2Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in ICertPolicy2 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in ICertPolicy2 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in ICertPolicy2 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in ICertPolicy2 * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in ICertPolicy2 * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in ICertPolicy2 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            ICertPolicy2 * This,
            /* [annotation][in] */ 
            _In_  DISPID dispIdMember,
            /* [annotation][in] */ 
            _In_  REFIID riid,
            /* [annotation][in] */ 
            _In_  LCID lcid,
            /* [annotation][in] */ 
            _In_  WORD wFlags,
            /* [annotation][out][in] */ 
            _In_  DISPPARAMS *pDispParams,
            /* [annotation][out] */ 
            _Out_opt_  VARIANT *pVarResult,
            /* [annotation][out] */ 
            _Out_opt_  EXCEPINFO *pExcepInfo,
            /* [annotation][out] */ 
            _Out_opt_  UINT *puArgErr);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in ICertPolicy2 * This,
            /* [in] */ __RPC__in const BSTR strConfig);
        
        HRESULT ( STDMETHODCALLTYPE *VerifyRequest )( 
            __RPC__in ICertPolicy2 * This,
            /* [in] */ __RPC__in const BSTR strConfig,
            /* [in] */ LONG Context,
            /* [in] */ LONG bNewRequest,
            /* [in] */ LONG Flags,
            /* [retval][out] */ __RPC__out LONG *pDisposition);
        
        HRESULT ( STDMETHODCALLTYPE *GetDescription )( 
            __RPC__in ICertPolicy2 * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pstrDescription);
        
        HRESULT ( STDMETHODCALLTYPE *ShutDown )( 
            __RPC__in ICertPolicy2 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetManageModule )( 
            __RPC__in ICertPolicy2 * This,
            /* [retval][out] */ __RPC__deref_out_opt ICertManageModule **ppManageModule);
        
        END_INTERFACE
    } ICertPolicy2Vtbl;

    interface ICertPolicy2
    {
        CONST_VTBL struct ICertPolicy2Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define ICertPolicy2_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define ICertPolicy2_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define ICertPolicy2_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define ICertPolicy2_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define ICertPolicy2_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define ICertPolicy2_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define ICertPolicy2_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define ICertPolicy2_Initialize(This,strConfig)	\
    ( (This)->lpVtbl -> Initialize(This,strConfig) ) 

#define ICertPolicy2_VerifyRequest(This,strConfig,Context,bNewRequest,Flags,pDisposition)	\
    ( (This)->lpVtbl -> VerifyRequest(This,strConfig,Context,bNewRequest,Flags,pDisposition) ) 

#define ICertPolicy2_GetDescription(This,pstrDescription)	\
    ( (This)->lpVtbl -> GetDescription(This,pstrDescription) ) 

#define ICertPolicy2_ShutDown(This)	\
    ( (This)->lpVtbl -> ShutDown(This) ) 


#define ICertPolicy2_GetManageModule(This,ppManageModule)	\
    ( (This)->lpVtbl -> GetManageModule(This,ppManageModule) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __ICertPolicy2_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_certpol_0000_0002 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_certpol_0000_0002_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_certpol_0000_0002_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     __RPC__in unsigned long *, unsigned long            , __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out BSTR * ); 
void                      __RPC_USER  BSTR_UserFree(     __RPC__in unsigned long *, __RPC__in BSTR * ); 

unsigned long             __RPC_USER  BSTR_UserSize64(     __RPC__in unsigned long *, unsigned long            , __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal64(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal64(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out BSTR * ); 
void                      __RPC_USER  BSTR_UserFree64(     __RPC__in unsigned long *, __RPC__in BSTR * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


