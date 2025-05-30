

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

#ifndef __ieautomation_h__
#define __ieautomation_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IInternetExplorerManager_FWD_DEFINED__
#define __IInternetExplorerManager_FWD_DEFINED__
typedef interface IInternetExplorerManager IInternetExplorerManager;

#endif 	/* __IInternetExplorerManager_FWD_DEFINED__ */


#ifndef __InternetExplorerManager_FWD_DEFINED__
#define __InternetExplorerManager_FWD_DEFINED__

#ifdef __cplusplus
typedef class InternetExplorerManager InternetExplorerManager;
#else
typedef struct InternetExplorerManager InternetExplorerManager;
#endif /* __cplusplus */

#endif 	/* __InternetExplorerManager_FWD_DEFINED__ */


/* header files for imported files */
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_ieautomation_0000_0000 */
/* [local] */ 

//=--------------------------------------------------------------------------=
// ieautomation.h
//=--------------------------------------------------------------------------=
// (C) Copyright Microsoft Corporation.  All Rights Reserved.
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//=--------------------------------------------------------------------------=

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
typedef /* [helpstring][uuid] */  DECLSPEC_UUID("44EC9B57-DCAB-4CDE-B373-EE94962950E3") 
enum INTERNETEXPLORERCONFIGURATION
    {
        INTERNETEXPLORERCONFIGURATION_HOST	= 0x1
    } 	INTERNETEXPLORERCONFIGURATION;



extern RPC_IF_HANDLE __MIDL_itf_ieautomation_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_ieautomation_0000_0000_v0_0_s_ifspec;

#ifndef __IInternetExplorerManager_INTERFACE_DEFINED__
#define __IInternetExplorerManager_INTERFACE_DEFINED__

/* interface IInternetExplorerManager */
/* [unique][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IInternetExplorerManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("ACC84351-04FF-44F9-B23F-655ED168C6D5")
    IInternetExplorerManager : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE CreateObject( 
            /* [in] */ DWORD dwConfig,
            /* [string][unique][in] */ __RPC__in_opt_string LPCWSTR pszURL,
            /* [in] */ __RPC__in REFIID riid,
            /* [iid_is][out] */ __RPC__deref_out_opt void **ppv) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IInternetExplorerManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IInternetExplorerManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IInternetExplorerManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IInternetExplorerManager * This);
        
        HRESULT ( STDMETHODCALLTYPE *CreateObject )( 
            __RPC__in IInternetExplorerManager * This,
            /* [in] */ DWORD dwConfig,
            /* [string][unique][in] */ __RPC__in_opt_string LPCWSTR pszURL,
            /* [in] */ __RPC__in REFIID riid,
            /* [iid_is][out] */ __RPC__deref_out_opt void **ppv);
        
        END_INTERFACE
    } IInternetExplorerManagerVtbl;

    interface IInternetExplorerManager
    {
        CONST_VTBL struct IInternetExplorerManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IInternetExplorerManager_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IInternetExplorerManager_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IInternetExplorerManager_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IInternetExplorerManager_CreateObject(This,dwConfig,pszURL,riid,ppv)	\
    ( (This)->lpVtbl -> CreateObject(This,dwConfig,pszURL,riid,ppv) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IInternetExplorerManager_INTERFACE_DEFINED__ */



#ifndef __InternetExplorerAutomationLib_LIBRARY_DEFINED__
#define __InternetExplorerAutomationLib_LIBRARY_DEFINED__

/* library InternetExplorerAutomationLib */
/* [helpstring][version][uuid] */ 


EXTERN_C const IID LIBID_InternetExplorerAutomationLib;

EXTERN_C const CLSID CLSID_InternetExplorerManager;

#ifdef __cplusplus

class DECLSPEC_UUID("DF4FCC34-067A-4E0A-8352-4A1A5095346E")
InternetExplorerManager;
#endif
#endif /* __InternetExplorerAutomationLib_LIBRARY_DEFINED__ */

/* interface __MIDL_itf_ieautomation_0000_0002 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_ieautomation_0000_0002_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_ieautomation_0000_0002_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


