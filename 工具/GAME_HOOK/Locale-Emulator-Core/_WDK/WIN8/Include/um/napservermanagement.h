

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

#ifndef __napservermanagement_h__
#define __napservermanagement_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __INapServerInfo_FWD_DEFINED__
#define __INapServerInfo_FWD_DEFINED__
typedef interface INapServerInfo INapServerInfo;

#endif 	/* __INapServerInfo_FWD_DEFINED__ */


#ifndef __INapServerManagement_FWD_DEFINED__
#define __INapServerManagement_FWD_DEFINED__
typedef interface INapServerManagement INapServerManagement;

#endif 	/* __INapServerManagement_FWD_DEFINED__ */


/* header files for imported files */
#include "NapTypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_napservermanagement_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


extern RPC_IF_HANDLE __MIDL_itf_napservermanagement_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napservermanagement_0000_0000_v0_0_s_ifspec;

#ifndef __INapServerInfo_INTERFACE_DEFINED__
#define __INapServerInfo_INTERFACE_DEFINED__

/* interface INapServerInfo */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapServerInfo;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("599F9021-5643-4965-9949-E88975EFFF0E")
    INapServerInfo : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetNapServerInfo( 
            /* [out] */ __RPC__deref_out_opt CountedString **serverName,
            /* [out] */ __RPC__deref_out_opt CountedString **serverDescription,
            /* [out] */ __RPC__deref_out_opt CountedString **protocolVersion) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetRegisteredSystemHealthValidators( 
            /* [out] */ __RPC__out SystemHealthEntityCount *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) NapComponentRegistrationInfo **validators,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) CLSID **validatorClsids) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetFailureCategoryMappings( 
            /* [in] */ SystemHealthEntityId id,
            /* [out] */ __RPC__out FailureCategoryMapping *mapping) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapServerInfoVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapServerInfo * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapServerInfo * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapServerInfo * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetNapServerInfo )( 
            __RPC__in INapServerInfo * This,
            /* [out] */ __RPC__deref_out_opt CountedString **serverName,
            /* [out] */ __RPC__deref_out_opt CountedString **serverDescription,
            /* [out] */ __RPC__deref_out_opt CountedString **protocolVersion);
        
        HRESULT ( STDMETHODCALLTYPE *GetRegisteredSystemHealthValidators )( 
            __RPC__in INapServerInfo * This,
            /* [out] */ __RPC__out SystemHealthEntityCount *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) NapComponentRegistrationInfo **validators,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) CLSID **validatorClsids);
        
        HRESULT ( STDMETHODCALLTYPE *GetFailureCategoryMappings )( 
            __RPC__in INapServerInfo * This,
            /* [in] */ SystemHealthEntityId id,
            /* [out] */ __RPC__out FailureCategoryMapping *mapping);
        
        END_INTERFACE
    } INapServerInfoVtbl;

    interface INapServerInfo
    {
        CONST_VTBL struct INapServerInfoVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapServerInfo_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapServerInfo_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapServerInfo_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapServerInfo_GetNapServerInfo(This,serverName,serverDescription,protocolVersion)	\
    ( (This)->lpVtbl -> GetNapServerInfo(This,serverName,serverDescription,protocolVersion) ) 

#define INapServerInfo_GetRegisteredSystemHealthValidators(This,count,validators,validatorClsids)	\
    ( (This)->lpVtbl -> GetRegisteredSystemHealthValidators(This,count,validators,validatorClsids) ) 

#define INapServerInfo_GetFailureCategoryMappings(This,id,mapping)	\
    ( (This)->lpVtbl -> GetFailureCategoryMappings(This,id,mapping) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapServerInfo_INTERFACE_DEFINED__ */


#ifndef __INapServerManagement_INTERFACE_DEFINED__
#define __INapServerManagement_INTERFACE_DEFINED__

/* interface INapServerManagement */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapServerManagement;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("9DE543E7-0F23-47e0-A8BC-971A894F86D4")
    INapServerManagement : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE RegisterSystemHealthValidator( 
            /* [in] */ __RPC__in const NapComponentRegistrationInfo *validator,
            /* [in] */ __RPC__in const CLSID *validatorClsid) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE UnregisterSystemHealthValidator( 
            /* [in] */ SystemHealthEntityId id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetFailureCategoryMappings( 
            /* [in] */ SystemHealthEntityId id,
            /* [in] */ const FailureCategoryMapping mapping) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapServerManagementVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapServerManagement * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapServerManagement * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapServerManagement * This);
        
        HRESULT ( STDMETHODCALLTYPE *RegisterSystemHealthValidator )( 
            __RPC__in INapServerManagement * This,
            /* [in] */ __RPC__in const NapComponentRegistrationInfo *validator,
            /* [in] */ __RPC__in const CLSID *validatorClsid);
        
        HRESULT ( STDMETHODCALLTYPE *UnregisterSystemHealthValidator )( 
            __RPC__in INapServerManagement * This,
            /* [in] */ SystemHealthEntityId id);
        
        HRESULT ( STDMETHODCALLTYPE *SetFailureCategoryMappings )( 
            __RPC__in INapServerManagement * This,
            /* [in] */ SystemHealthEntityId id,
            /* [in] */ const FailureCategoryMapping mapping);
        
        END_INTERFACE
    } INapServerManagementVtbl;

    interface INapServerManagement
    {
        CONST_VTBL struct INapServerManagementVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapServerManagement_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapServerManagement_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapServerManagement_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapServerManagement_RegisterSystemHealthValidator(This,validator,validatorClsid)	\
    ( (This)->lpVtbl -> RegisterSystemHealthValidator(This,validator,validatorClsid) ) 

#define INapServerManagement_UnregisterSystemHealthValidator(This,id)	\
    ( (This)->lpVtbl -> UnregisterSystemHealthValidator(This,id) ) 

#define INapServerManagement_SetFailureCategoryMappings(This,id,mapping)	\
    ( (This)->lpVtbl -> SetFailureCategoryMappings(This,id,mapping) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapServerManagement_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_napservermanagement_0000_0002 */
/* [local] */ 

// Declarations of CLSIDs of objects provided  
// by the system. Link to uuid.lib to get them 
// defined.                                    
EXTERN_C const CLSID 
   CLSID_NapServerInfo;
EXTERN_C const CLSID 
   CLSID_NapServerManagement;
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_napservermanagement_0000_0002_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napservermanagement_0000_0002_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


