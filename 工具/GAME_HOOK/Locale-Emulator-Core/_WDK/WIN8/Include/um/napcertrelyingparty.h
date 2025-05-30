

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

#ifndef __napcertrelyingparty_h__
#define __napcertrelyingparty_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __INapCertRelyingParty_FWD_DEFINED__
#define __INapCertRelyingParty_FWD_DEFINED__
typedef interface INapCertRelyingParty INapCertRelyingParty;

#endif 	/* __INapCertRelyingParty_FWD_DEFINED__ */


/* header files for imported files */
#include "NapTypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_napcertrelyingparty_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#include <wincrypt.h>
static const UINT32 NapAfwZonePropId = CERT_FIRST_USER_PROP_ID;
static const UINT32 NapAfwProtectionLevelPropId = CERT_FIRST_USER_PROP_ID + 1;


extern RPC_IF_HANDLE __MIDL_itf_napcertrelyingparty_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napcertrelyingparty_0000_0000_v0_0_s_ifspec;

#ifndef __INapCertRelyingParty_INTERFACE_DEFINED__
#define __INapCertRelyingParty_INTERFACE_DEFINED__

/* interface INapCertRelyingParty */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapCertRelyingParty;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("62c02ffc-4c77-4158-8754-782d5b4ee66e")
    INapCertRelyingParty : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SubscribeCertByGroup( 
            /* [in] */ EnforcementEntityId id,
            /* [in] */ __RPC__in const BSTR subscriberName,
            /* [unique][in] */ __RPC__in_opt const VARIANT *reserved,
            /* [out] */ __RPC__out BOOL *certExists) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE UnSubscribeCertByGroup( 
            /* [in] */ EnforcementEntityId id,
            /* [unique][in] */ __RPC__in_opt const VARIANT *reserved) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetSubscribedRelyingParties( 
            /* [out] */ __RPC__out EnforcementEntityCount *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) EnforcementEntityId **relyingParties) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapCertRelyingPartyVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapCertRelyingParty * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapCertRelyingParty * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapCertRelyingParty * This);
        
        HRESULT ( STDMETHODCALLTYPE *SubscribeCertByGroup )( 
            __RPC__in INapCertRelyingParty * This,
            /* [in] */ EnforcementEntityId id,
            /* [in] */ __RPC__in const BSTR subscriberName,
            /* [unique][in] */ __RPC__in_opt const VARIANT *reserved,
            /* [out] */ __RPC__out BOOL *certExists);
        
        HRESULT ( STDMETHODCALLTYPE *UnSubscribeCertByGroup )( 
            __RPC__in INapCertRelyingParty * This,
            /* [in] */ EnforcementEntityId id,
            /* [unique][in] */ __RPC__in_opt const VARIANT *reserved);
        
        HRESULT ( STDMETHODCALLTYPE *GetSubscribedRelyingParties )( 
            __RPC__in INapCertRelyingParty * This,
            /* [out] */ __RPC__out EnforcementEntityCount *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) EnforcementEntityId **relyingParties);
        
        END_INTERFACE
    } INapCertRelyingPartyVtbl;

    interface INapCertRelyingParty
    {
        CONST_VTBL struct INapCertRelyingPartyVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapCertRelyingParty_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapCertRelyingParty_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapCertRelyingParty_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapCertRelyingParty_SubscribeCertByGroup(This,id,subscriberName,reserved,certExists)	\
    ( (This)->lpVtbl -> SubscribeCertByGroup(This,id,subscriberName,reserved,certExists) ) 

#define INapCertRelyingParty_UnSubscribeCertByGroup(This,id,reserved)	\
    ( (This)->lpVtbl -> UnSubscribeCertByGroup(This,id,reserved) ) 

#define INapCertRelyingParty_GetSubscribedRelyingParties(This,count,relyingParties)	\
    ( (This)->lpVtbl -> GetSubscribedRelyingParties(This,count,relyingParties) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapCertRelyingParty_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_napcertrelyingparty_0000_0001 */
/* [local] */ 

// Declarations of CLSIDs of objects provided  
// by the system. Link to uuid.lib to get them 
// defined.                                    
EXTERN_C const CLSID 
   CLSID_NapCertRelyingParty;
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_napcertrelyingparty_0000_0001_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napcertrelyingparty_0000_0001_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     __RPC__in unsigned long *, unsigned long            , __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out BSTR * ); 
void                      __RPC_USER  BSTR_UserFree(     __RPC__in unsigned long *, __RPC__in BSTR * ); 

unsigned long             __RPC_USER  VARIANT_UserSize(     __RPC__in unsigned long *, unsigned long            , __RPC__in VARIANT * ); 
unsigned char * __RPC_USER  VARIANT_UserMarshal(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in VARIANT * ); 
unsigned char * __RPC_USER  VARIANT_UserUnmarshal(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out VARIANT * ); 
void                      __RPC_USER  VARIANT_UserFree(     __RPC__in unsigned long *, __RPC__in VARIANT * ); 

unsigned long             __RPC_USER  BSTR_UserSize64(     __RPC__in unsigned long *, unsigned long            , __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal64(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal64(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out BSTR * ); 
void                      __RPC_USER  BSTR_UserFree64(     __RPC__in unsigned long *, __RPC__in BSTR * ); 

unsigned long             __RPC_USER  VARIANT_UserSize64(     __RPC__in unsigned long *, unsigned long            , __RPC__in VARIANT * ); 
unsigned char * __RPC_USER  VARIANT_UserMarshal64(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in VARIANT * ); 
unsigned char * __RPC_USER  VARIANT_UserUnmarshal64(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out VARIANT * ); 
void                      __RPC_USER  VARIANT_UserFree64(     __RPC__in unsigned long *, __RPC__in VARIANT * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


