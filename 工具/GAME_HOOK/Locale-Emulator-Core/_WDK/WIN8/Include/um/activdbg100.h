

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

#ifndef __activdbg100_h__
#define __activdbg100_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IDebugApplicationNode100_FWD_DEFINED__
#define __IDebugApplicationNode100_FWD_DEFINED__
typedef interface IDebugApplicationNode100 IDebugApplicationNode100;

#endif 	/* __IDebugApplicationNode100_FWD_DEFINED__ */


#ifndef __IWebAppDiagnosticsSetup_FWD_DEFINED__
#define __IWebAppDiagnosticsSetup_FWD_DEFINED__
typedef interface IWebAppDiagnosticsSetup IWebAppDiagnosticsSetup;

#endif 	/* __IWebAppDiagnosticsSetup_FWD_DEFINED__ */


#ifndef __IRemoteDebugApplication110_FWD_DEFINED__
#define __IRemoteDebugApplication110_FWD_DEFINED__
typedef interface IRemoteDebugApplication110 IRemoteDebugApplication110;

#endif 	/* __IRemoteDebugApplication110_FWD_DEFINED__ */


#ifndef __IDebugApplication11032_FWD_DEFINED__
#define __IDebugApplication11032_FWD_DEFINED__
typedef interface IDebugApplication11032 IDebugApplication11032;

#endif 	/* __IDebugApplication11032_FWD_DEFINED__ */


#ifndef __IDebugApplication11064_FWD_DEFINED__
#define __IDebugApplication11064_FWD_DEFINED__
typedef interface IDebugApplication11064 IDebugApplication11064;

#endif 	/* __IDebugApplication11064_FWD_DEFINED__ */


#ifndef __IWebAppDiagnosticsObjectInitialization_FWD_DEFINED__
#define __IWebAppDiagnosticsObjectInitialization_FWD_DEFINED__
typedef interface IWebAppDiagnosticsObjectInitialization IWebAppDiagnosticsObjectInitialization;

#endif 	/* __IWebAppDiagnosticsObjectInitialization_FWD_DEFINED__ */


#ifndef __IActiveScriptWinRTErrorDebug_FWD_DEFINED__
#define __IActiveScriptWinRTErrorDebug_FWD_DEFINED__
typedef interface IActiveScriptWinRTErrorDebug IActiveScriptWinRTErrorDebug;

#endif 	/* __IActiveScriptWinRTErrorDebug_FWD_DEFINED__ */


#ifndef __IActiveScriptErrorDebug110_FWD_DEFINED__
#define __IActiveScriptErrorDebug110_FWD_DEFINED__
typedef interface IActiveScriptErrorDebug110 IActiveScriptErrorDebug110;

#endif 	/* __IActiveScriptErrorDebug110_FWD_DEFINED__ */


#ifndef __IDebugApplicationThreadEvents110_FWD_DEFINED__
#define __IDebugApplicationThreadEvents110_FWD_DEFINED__
typedef interface IDebugApplicationThreadEvents110 IDebugApplicationThreadEvents110;

#endif 	/* __IDebugApplicationThreadEvents110_FWD_DEFINED__ */


#ifndef __IDebugApplicationThread11032_FWD_DEFINED__
#define __IDebugApplicationThread11032_FWD_DEFINED__
typedef interface IDebugApplicationThread11032 IDebugApplicationThread11032;

#endif 	/* __IDebugApplicationThread11032_FWD_DEFINED__ */


#ifndef __IDebugApplicationThread11064_FWD_DEFINED__
#define __IDebugApplicationThread11064_FWD_DEFINED__
typedef interface IDebugApplicationThread11064 IDebugApplicationThread11064;

#endif 	/* __IDebugApplicationThread11064_FWD_DEFINED__ */


#ifndef __IRemoteDebugCriticalErrorEvent110_FWD_DEFINED__
#define __IRemoteDebugCriticalErrorEvent110_FWD_DEFINED__
typedef interface IRemoteDebugCriticalErrorEvent110 IRemoteDebugCriticalErrorEvent110;

#endif 	/* __IRemoteDebugCriticalErrorEvent110_FWD_DEFINED__ */


/* header files for imported files */
#include "activdbg.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_activdbg100_0000_0000 */
/* [local] */ 

//=--------------------------------------------------------------------------=
// ActivDbg100.h
//=--------------------------------------------------------------------------=
// (C) Copyright Microsoft Corporation.  All Rights Reserved.
//
// THIS CODE AND INFORMATION IS PROVIDED "AS IS" WITHOUT WARRANTY OF
// ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING BUT NOT LIMITED TO
// THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS FOR A
// PARTICULAR PURPOSE.
//=--------------------------------------------------------------------------=
//
#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
//
// Declarations for ActiveX Scripting authoring/Debugging.
//
#pragma once
typedef 
enum tagAPPLICATION_NODE_EVENT_FILTER
    {
        FILTER_EXCLUDE_NOTHING	= 0,
        FILTER_EXCLUDE_ANONYMOUS_CODE	= 0x1,
        FILTER_EXCLUDE_EVAL_CODE	= 0x2
    } 	APPLICATION_NODE_EVENT_FILTER;

typedef struct tagTEXT_DOCUMENT_ARRAY
    {
    DWORD dwCount;
    /* [size_is] */ IDebugDocumentText **Members;
    } 	TEXT_DOCUMENT_ARRAY;



extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0000_v0_0_s_ifspec;

#ifndef __IDebugApplicationNode100_INTERFACE_DEFINED__
#define __IDebugApplicationNode100_INTERFACE_DEFINED__

/* interface IDebugApplicationNode100 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IDebugApplicationNode100;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("90a7734e-841b-4f77-9384-a2891e76e7e2")
    IDebugApplicationNode100 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetFilterForEventSink( 
            /* [in] */ DWORD dwCookie,
            /* [in] */ APPLICATION_NODE_EVENT_FILTER filter) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetExcludedDocuments( 
            /* [in] */ APPLICATION_NODE_EVENT_FILTER filter,
            /* [out] */ __RPC__out TEXT_DOCUMENT_ARRAY *pDocuments) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE QueryIsChildNode( 
            /* [in] */ __RPC__in_opt IDebugDocument *pSearchKey) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDebugApplicationNode100Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IDebugApplicationNode100 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IDebugApplicationNode100 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IDebugApplicationNode100 * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetFilterForEventSink )( 
            __RPC__in IDebugApplicationNode100 * This,
            /* [in] */ DWORD dwCookie,
            /* [in] */ APPLICATION_NODE_EVENT_FILTER filter);
        
        HRESULT ( STDMETHODCALLTYPE *GetExcludedDocuments )( 
            __RPC__in IDebugApplicationNode100 * This,
            /* [in] */ APPLICATION_NODE_EVENT_FILTER filter,
            /* [out] */ __RPC__out TEXT_DOCUMENT_ARRAY *pDocuments);
        
        HRESULT ( STDMETHODCALLTYPE *QueryIsChildNode )( 
            __RPC__in IDebugApplicationNode100 * This,
            /* [in] */ __RPC__in_opt IDebugDocument *pSearchKey);
        
        END_INTERFACE
    } IDebugApplicationNode100Vtbl;

    interface IDebugApplicationNode100
    {
        CONST_VTBL struct IDebugApplicationNode100Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDebugApplicationNode100_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDebugApplicationNode100_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDebugApplicationNode100_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDebugApplicationNode100_SetFilterForEventSink(This,dwCookie,filter)	\
    ( (This)->lpVtbl -> SetFilterForEventSink(This,dwCookie,filter) ) 

#define IDebugApplicationNode100_GetExcludedDocuments(This,filter,pDocuments)	\
    ( (This)->lpVtbl -> GetExcludedDocuments(This,filter,pDocuments) ) 

#define IDebugApplicationNode100_QueryIsChildNode(This,pSearchKey)	\
    ( (This)->lpVtbl -> QueryIsChildNode(This,pSearchKey) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDebugApplicationNode100_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_activdbg100_0000_0001 */
/* [local] */ 




extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0001_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0001_v0_0_s_ifspec;

#ifndef __IWebAppDiagnosticsSetup_INTERFACE_DEFINED__
#define __IWebAppDiagnosticsSetup_INTERFACE_DEFINED__

/* interface IWebAppDiagnosticsSetup */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IWebAppDiagnosticsSetup;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("379BFBE1-C6C9-432A-93E1-6D17656C538C")
    IWebAppDiagnosticsSetup : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE DiagnosticsSupported( 
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CreateObjectWithSiteAtWebApp( 
            /* [in] */ __RPC__in REFCLSID rclsid,
            /* [in] */ DWORD dwClsContext,
            /* [in] */ __RPC__in REFIID riid,
            /* [in] */ DWORD_PTR hPassToObject) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IWebAppDiagnosticsSetupVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IWebAppDiagnosticsSetup * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IWebAppDiagnosticsSetup * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IWebAppDiagnosticsSetup * This);
        
        HRESULT ( STDMETHODCALLTYPE *DiagnosticsSupported )( 
            __RPC__in IWebAppDiagnosticsSetup * This,
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal);
        
        HRESULT ( STDMETHODCALLTYPE *CreateObjectWithSiteAtWebApp )( 
            __RPC__in IWebAppDiagnosticsSetup * This,
            /* [in] */ __RPC__in REFCLSID rclsid,
            /* [in] */ DWORD dwClsContext,
            /* [in] */ __RPC__in REFIID riid,
            /* [in] */ DWORD_PTR hPassToObject);
        
        END_INTERFACE
    } IWebAppDiagnosticsSetupVtbl;

    interface IWebAppDiagnosticsSetup
    {
        CONST_VTBL struct IWebAppDiagnosticsSetupVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWebAppDiagnosticsSetup_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWebAppDiagnosticsSetup_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWebAppDiagnosticsSetup_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IWebAppDiagnosticsSetup_DiagnosticsSupported(This,pRetVal)	\
    ( (This)->lpVtbl -> DiagnosticsSupported(This,pRetVal) ) 

#define IWebAppDiagnosticsSetup_CreateObjectWithSiteAtWebApp(This,rclsid,dwClsContext,riid,hPassToObject)	\
    ( (This)->lpVtbl -> CreateObjectWithSiteAtWebApp(This,rclsid,dwClsContext,riid,hPassToObject) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWebAppDiagnosticsSetup_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_activdbg100_0000_0002 */
/* [local] */ 


enum SCRIPT_DEBUGGER_OPTIONS
    {
        SDO_NONE	= 0,
        SDO_ENABLE_FIRST_CHANCE_EXCEPTIONS	= 0x1,
        SDO_ENABLE_WEB_WORKER_SUPPORT	= 0x2,
        SDO_ENABLE_NONUSER_CODE_SUPPORT	= 0x4
    } ;
DEFINE_ENUM_FLAG_OPERATORS(SCRIPT_DEBUGGER_OPTIONS)


extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0002_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0002_v0_0_s_ifspec;

#ifndef __IRemoteDebugApplication110_INTERFACE_DEFINED__
#define __IRemoteDebugApplication110_INTERFACE_DEFINED__

/* interface IRemoteDebugApplication110 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IRemoteDebugApplication110;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("D5FE005B-2836-485e-B1F9-89D91AA24FD4")
    IRemoteDebugApplication110 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetDebuggerOptions( 
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS mask,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS value) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetCurrentDebuggerOptions( 
            /* [out] */ __RPC__out enum SCRIPT_DEBUGGER_OPTIONS *pCurrentOptions) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetMainThread( 
            /* [out] */ __RPC__deref_out_opt IRemoteDebugApplicationThread **ppThread) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRemoteDebugApplication110Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRemoteDebugApplication110 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRemoteDebugApplication110 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRemoteDebugApplication110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDebuggerOptions )( 
            __RPC__in IRemoteDebugApplication110 * This,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS mask,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS value);
        
        HRESULT ( STDMETHODCALLTYPE *GetCurrentDebuggerOptions )( 
            __RPC__in IRemoteDebugApplication110 * This,
            /* [out] */ __RPC__out enum SCRIPT_DEBUGGER_OPTIONS *pCurrentOptions);
        
        HRESULT ( STDMETHODCALLTYPE *GetMainThread )( 
            __RPC__in IRemoteDebugApplication110 * This,
            /* [out] */ __RPC__deref_out_opt IRemoteDebugApplicationThread **ppThread);
        
        END_INTERFACE
    } IRemoteDebugApplication110Vtbl;

    interface IRemoteDebugApplication110
    {
        CONST_VTBL struct IRemoteDebugApplication110Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRemoteDebugApplication110_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRemoteDebugApplication110_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRemoteDebugApplication110_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRemoteDebugApplication110_SetDebuggerOptions(This,mask,value)	\
    ( (This)->lpVtbl -> SetDebuggerOptions(This,mask,value) ) 

#define IRemoteDebugApplication110_GetCurrentDebuggerOptions(This,pCurrentOptions)	\
    ( (This)->lpVtbl -> GetCurrentDebuggerOptions(This,pCurrentOptions) ) 

#define IRemoteDebugApplication110_GetMainThread(This,ppThread)	\
    ( (This)->lpVtbl -> GetMainThread(This,ppThread) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRemoteDebugApplication110_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_activdbg100_0000_0003 */
/* [local] */ 

#ifndef DISABLE_ACTIVDBG_INTERFACE_WRAPPERS
#ifdef _WIN64
#define IDebugApplication110 IDebugApplication11064
#define IID_IDebugApplication110 IID_IDebugApplication11064
#else
#define IDebugApplication110 IDebugApplication11032
#define IID_IDebugApplication110 IID_IDebugApplication11032
#endif
#endif


extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0003_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0003_v0_0_s_ifspec;

#ifndef __IDebugApplication11032_INTERFACE_DEFINED__
#define __IDebugApplication11032_INTERFACE_DEFINED__

/* interface IDebugApplication11032 */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_IDebugApplication11032;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("BDB3B5DE-89F2-4E11-84A5-97445F941C7D")
    IDebugApplication11032 : public IRemoteDebugApplication110
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SynchronousCallInMainThread( 
            /* [in] */ IDebugThreadCall32 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AsynchronousCallInMainThread( 
            /* [in] */ IDebugThreadCall32 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CallableWaitForHandles( 
            /* [in] */ DWORD handleCount,
            /* [size_is][in] */ const HANDLE *pHandles,
            /* [out] */ DWORD *pIndex) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDebugApplication11032Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDebugApplication11032 * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDebugApplication11032 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDebugApplication11032 * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDebuggerOptions )( 
            IDebugApplication11032 * This,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS mask,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS value);
        
        HRESULT ( STDMETHODCALLTYPE *GetCurrentDebuggerOptions )( 
            IDebugApplication11032 * This,
            /* [out] */ enum SCRIPT_DEBUGGER_OPTIONS *pCurrentOptions);
        
        HRESULT ( STDMETHODCALLTYPE *GetMainThread )( 
            IDebugApplication11032 * This,
            /* [out] */ IRemoteDebugApplicationThread **ppThread);
        
        HRESULT ( STDMETHODCALLTYPE *SynchronousCallInMainThread )( 
            IDebugApplication11032 * This,
            /* [in] */ IDebugThreadCall32 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3);
        
        HRESULT ( STDMETHODCALLTYPE *AsynchronousCallInMainThread )( 
            IDebugApplication11032 * This,
            /* [in] */ IDebugThreadCall32 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3);
        
        HRESULT ( STDMETHODCALLTYPE *CallableWaitForHandles )( 
            IDebugApplication11032 * This,
            /* [in] */ DWORD handleCount,
            /* [size_is][in] */ const HANDLE *pHandles,
            /* [out] */ DWORD *pIndex);
        
        END_INTERFACE
    } IDebugApplication11032Vtbl;

    interface IDebugApplication11032
    {
        CONST_VTBL struct IDebugApplication11032Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDebugApplication11032_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDebugApplication11032_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDebugApplication11032_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDebugApplication11032_SetDebuggerOptions(This,mask,value)	\
    ( (This)->lpVtbl -> SetDebuggerOptions(This,mask,value) ) 

#define IDebugApplication11032_GetCurrentDebuggerOptions(This,pCurrentOptions)	\
    ( (This)->lpVtbl -> GetCurrentDebuggerOptions(This,pCurrentOptions) ) 

#define IDebugApplication11032_GetMainThread(This,ppThread)	\
    ( (This)->lpVtbl -> GetMainThread(This,ppThread) ) 


#define IDebugApplication11032_SynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3)	\
    ( (This)->lpVtbl -> SynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3) ) 

#define IDebugApplication11032_AsynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3)	\
    ( (This)->lpVtbl -> AsynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3) ) 

#define IDebugApplication11032_CallableWaitForHandles(This,handleCount,pHandles,pIndex)	\
    ( (This)->lpVtbl -> CallableWaitForHandles(This,handleCount,pHandles,pIndex) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDebugApplication11032_INTERFACE_DEFINED__ */


#ifndef __IDebugApplication11064_INTERFACE_DEFINED__
#define __IDebugApplication11064_INTERFACE_DEFINED__

/* interface IDebugApplication11064 */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_IDebugApplication11064;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("2039D958-4EEB-496A-87BB-2E5201EADEEF")
    IDebugApplication11064 : public IRemoteDebugApplication110
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SynchronousCallInMainThread( 
            /* [in] */ IDebugThreadCall64 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AsynchronousCallInMainThread( 
            /* [in] */ IDebugThreadCall64 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CallableWaitForHandles( 
            /* [in] */ DWORD handleCount,
            /* [size_is][in] */ const HANDLE *pHandles,
            /* [out] */ DWORD *pIndex) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDebugApplication11064Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDebugApplication11064 * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDebugApplication11064 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDebugApplication11064 * This);
        
        HRESULT ( STDMETHODCALLTYPE *SetDebuggerOptions )( 
            IDebugApplication11064 * This,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS mask,
            /* [in] */ enum SCRIPT_DEBUGGER_OPTIONS value);
        
        HRESULT ( STDMETHODCALLTYPE *GetCurrentDebuggerOptions )( 
            IDebugApplication11064 * This,
            /* [out] */ enum SCRIPT_DEBUGGER_OPTIONS *pCurrentOptions);
        
        HRESULT ( STDMETHODCALLTYPE *GetMainThread )( 
            IDebugApplication11064 * This,
            /* [out] */ IRemoteDebugApplicationThread **ppThread);
        
        HRESULT ( STDMETHODCALLTYPE *SynchronousCallInMainThread )( 
            IDebugApplication11064 * This,
            /* [in] */ IDebugThreadCall64 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3);
        
        HRESULT ( STDMETHODCALLTYPE *AsynchronousCallInMainThread )( 
            IDebugApplication11064 * This,
            /* [in] */ IDebugThreadCall64 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3);
        
        HRESULT ( STDMETHODCALLTYPE *CallableWaitForHandles )( 
            IDebugApplication11064 * This,
            /* [in] */ DWORD handleCount,
            /* [size_is][in] */ const HANDLE *pHandles,
            /* [out] */ DWORD *pIndex);
        
        END_INTERFACE
    } IDebugApplication11064Vtbl;

    interface IDebugApplication11064
    {
        CONST_VTBL struct IDebugApplication11064Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDebugApplication11064_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDebugApplication11064_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDebugApplication11064_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDebugApplication11064_SetDebuggerOptions(This,mask,value)	\
    ( (This)->lpVtbl -> SetDebuggerOptions(This,mask,value) ) 

#define IDebugApplication11064_GetCurrentDebuggerOptions(This,pCurrentOptions)	\
    ( (This)->lpVtbl -> GetCurrentDebuggerOptions(This,pCurrentOptions) ) 

#define IDebugApplication11064_GetMainThread(This,ppThread)	\
    ( (This)->lpVtbl -> GetMainThread(This,ppThread) ) 


#define IDebugApplication11064_SynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3)	\
    ( (This)->lpVtbl -> SynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3) ) 

#define IDebugApplication11064_AsynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3)	\
    ( (This)->lpVtbl -> AsynchronousCallInMainThread(This,pptc,dwParam1,dwParam2,dwParam3) ) 

#define IDebugApplication11064_CallableWaitForHandles(This,handleCount,pHandles,pIndex)	\
    ( (This)->lpVtbl -> CallableWaitForHandles(This,handleCount,pHandles,pIndex) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDebugApplication11064_INTERFACE_DEFINED__ */


#ifndef __IWebAppDiagnosticsObjectInitialization_INTERFACE_DEFINED__
#define __IWebAppDiagnosticsObjectInitialization_INTERFACE_DEFINED__

/* interface IWebAppDiagnosticsObjectInitialization */
/* [unique][local][uuid][object] */ 


EXTERN_C const IID IID_IWebAppDiagnosticsObjectInitialization;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("16FF3A42-A5F5-432B-B625-8E8E16F57E15")
    IWebAppDiagnosticsObjectInitialization : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [annotation][in] */ 
            _In_  HANDLE_PTR hPassedHandle,
            /* [annotation][in] */ 
            _In_  IUnknown *pDebugApplication) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IWebAppDiagnosticsObjectInitializationVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IWebAppDiagnosticsObjectInitialization * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IWebAppDiagnosticsObjectInitialization * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IWebAppDiagnosticsObjectInitialization * This);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            IWebAppDiagnosticsObjectInitialization * This,
            /* [annotation][in] */ 
            _In_  HANDLE_PTR hPassedHandle,
            /* [annotation][in] */ 
            _In_  IUnknown *pDebugApplication);
        
        END_INTERFACE
    } IWebAppDiagnosticsObjectInitializationVtbl;

    interface IWebAppDiagnosticsObjectInitialization
    {
        CONST_VTBL struct IWebAppDiagnosticsObjectInitializationVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWebAppDiagnosticsObjectInitialization_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWebAppDiagnosticsObjectInitialization_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWebAppDiagnosticsObjectInitialization_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IWebAppDiagnosticsObjectInitialization_Initialize(This,hPassedHandle,pDebugApplication)	\
    ( (This)->lpVtbl -> Initialize(This,hPassedHandle,pDebugApplication) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWebAppDiagnosticsObjectInitialization_INTERFACE_DEFINED__ */


#ifndef __IActiveScriptWinRTErrorDebug_INTERFACE_DEFINED__
#define __IActiveScriptWinRTErrorDebug_INTERFACE_DEFINED__

/* interface IActiveScriptWinRTErrorDebug */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IActiveScriptWinRTErrorDebug;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("73A3F82A-0FE9-4B33-BA3B-FE095F697E0A")
    IActiveScriptWinRTErrorDebug : public IActiveScriptError
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetRestrictedErrorString( 
            /* [out] */ __RPC__deref_out_opt BSTR *errorString) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetRestrictedErrorReference( 
            /* [out] */ __RPC__deref_out_opt BSTR *referenceString) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetCapabilitySid( 
            /* [out] */ __RPC__deref_out_opt BSTR *capabilitySid) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IActiveScriptWinRTErrorDebugVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *GetExceptionInfo )( 
            IActiveScriptWinRTErrorDebug * This,
            /* [out] */ EXCEPINFO *pexcepinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetSourcePosition )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This,
            /* [out] */ __RPC__out DWORD *pdwSourceContext,
            /* [out] */ __RPC__out ULONG *pulLineNumber,
            /* [out] */ __RPC__out LONG *plCharacterPosition);
        
        HRESULT ( STDMETHODCALLTYPE *GetSourceLineText )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This,
            /* [out] */ __RPC__deref_out_opt BSTR *pbstrSourceLine);
        
        HRESULT ( STDMETHODCALLTYPE *GetRestrictedErrorString )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This,
            /* [out] */ __RPC__deref_out_opt BSTR *errorString);
        
        HRESULT ( STDMETHODCALLTYPE *GetRestrictedErrorReference )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This,
            /* [out] */ __RPC__deref_out_opt BSTR *referenceString);
        
        HRESULT ( STDMETHODCALLTYPE *GetCapabilitySid )( 
            __RPC__in IActiveScriptWinRTErrorDebug * This,
            /* [out] */ __RPC__deref_out_opt BSTR *capabilitySid);
        
        END_INTERFACE
    } IActiveScriptWinRTErrorDebugVtbl;

    interface IActiveScriptWinRTErrorDebug
    {
        CONST_VTBL struct IActiveScriptWinRTErrorDebugVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IActiveScriptWinRTErrorDebug_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IActiveScriptWinRTErrorDebug_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IActiveScriptWinRTErrorDebug_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IActiveScriptWinRTErrorDebug_GetExceptionInfo(This,pexcepinfo)	\
    ( (This)->lpVtbl -> GetExceptionInfo(This,pexcepinfo) ) 

#define IActiveScriptWinRTErrorDebug_GetSourcePosition(This,pdwSourceContext,pulLineNumber,plCharacterPosition)	\
    ( (This)->lpVtbl -> GetSourcePosition(This,pdwSourceContext,pulLineNumber,plCharacterPosition) ) 

#define IActiveScriptWinRTErrorDebug_GetSourceLineText(This,pbstrSourceLine)	\
    ( (This)->lpVtbl -> GetSourceLineText(This,pbstrSourceLine) ) 


#define IActiveScriptWinRTErrorDebug_GetRestrictedErrorString(This,errorString)	\
    ( (This)->lpVtbl -> GetRestrictedErrorString(This,errorString) ) 

#define IActiveScriptWinRTErrorDebug_GetRestrictedErrorReference(This,referenceString)	\
    ( (This)->lpVtbl -> GetRestrictedErrorReference(This,referenceString) ) 

#define IActiveScriptWinRTErrorDebug_GetCapabilitySid(This,capabilitySid)	\
    ( (This)->lpVtbl -> GetCapabilitySid(This,capabilitySid) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IActiveScriptWinRTErrorDebug_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_activdbg100_0000_0007 */
/* [local] */ 

typedef 
enum tagSCRIPT_ERROR_DEBUG_EXCEPTION_THROWN_KIND
    {
        ETK_FIRST_CHANCE	= 0,
        ETK_USER_UNHANDLED	= 0x1,
        ETK_UNHANDLED	= 0x2
    } 	SCRIPT_ERROR_DEBUG_EXCEPTION_THROWN_KIND;



extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0007_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0007_v0_0_s_ifspec;

#ifndef __IActiveScriptErrorDebug110_INTERFACE_DEFINED__
#define __IActiveScriptErrorDebug110_INTERFACE_DEFINED__

/* interface IActiveScriptErrorDebug110 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IActiveScriptErrorDebug110;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("516E42B6-89A8-4530-937B-5F0708431442")
    IActiveScriptErrorDebug110 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetExceptionThrownKind( 
            /* [out] */ __RPC__out SCRIPT_ERROR_DEBUG_EXCEPTION_THROWN_KIND *pExceptionKind) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IActiveScriptErrorDebug110Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IActiveScriptErrorDebug110 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IActiveScriptErrorDebug110 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IActiveScriptErrorDebug110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetExceptionThrownKind )( 
            __RPC__in IActiveScriptErrorDebug110 * This,
            /* [out] */ __RPC__out SCRIPT_ERROR_DEBUG_EXCEPTION_THROWN_KIND *pExceptionKind);
        
        END_INTERFACE
    } IActiveScriptErrorDebug110Vtbl;

    interface IActiveScriptErrorDebug110
    {
        CONST_VTBL struct IActiveScriptErrorDebug110Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IActiveScriptErrorDebug110_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IActiveScriptErrorDebug110_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IActiveScriptErrorDebug110_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IActiveScriptErrorDebug110_GetExceptionThrownKind(This,pExceptionKind)	\
    ( (This)->lpVtbl -> GetExceptionThrownKind(This,pExceptionKind) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IActiveScriptErrorDebug110_INTERFACE_DEFINED__ */


#ifndef __IDebugApplicationThreadEvents110_INTERFACE_DEFINED__
#define __IDebugApplicationThreadEvents110_INTERFACE_DEFINED__

/* interface IDebugApplicationThreadEvents110 */
/* [unique][local][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IDebugApplicationThreadEvents110;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("84E5E468-D5DA-48A8-83F4-40366429007B")
    IDebugApplicationThreadEvents110 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE OnSuspendForBreakPoint( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE OnResumeFromBreakPoint( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE OnThreadRequestComplete( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE OnBeginThreadRequest( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDebugApplicationThreadEvents110Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDebugApplicationThreadEvents110 * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDebugApplicationThreadEvents110 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDebugApplicationThreadEvents110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *OnSuspendForBreakPoint )( 
            IDebugApplicationThreadEvents110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *OnResumeFromBreakPoint )( 
            IDebugApplicationThreadEvents110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *OnThreadRequestComplete )( 
            IDebugApplicationThreadEvents110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *OnBeginThreadRequest )( 
            IDebugApplicationThreadEvents110 * This);
        
        END_INTERFACE
    } IDebugApplicationThreadEvents110Vtbl;

    interface IDebugApplicationThreadEvents110
    {
        CONST_VTBL struct IDebugApplicationThreadEvents110Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDebugApplicationThreadEvents110_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDebugApplicationThreadEvents110_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDebugApplicationThreadEvents110_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDebugApplicationThreadEvents110_OnSuspendForBreakPoint(This)	\
    ( (This)->lpVtbl -> OnSuspendForBreakPoint(This) ) 

#define IDebugApplicationThreadEvents110_OnResumeFromBreakPoint(This)	\
    ( (This)->lpVtbl -> OnResumeFromBreakPoint(This) ) 

#define IDebugApplicationThreadEvents110_OnThreadRequestComplete(This)	\
    ( (This)->lpVtbl -> OnThreadRequestComplete(This) ) 

#define IDebugApplicationThreadEvents110_OnBeginThreadRequest(This)	\
    ( (This)->lpVtbl -> OnBeginThreadRequest(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDebugApplicationThreadEvents110_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_activdbg100_0000_0009 */
/* [local] */ 

#ifndef DISABLE_ACTIVDBG_INTERFACE_WRAPPERS
#ifdef _WIN64
#define IDebugApplicationThread110 IDebugApplicationThread11064
#define IID_IDebugApplicationThread110 IID_IDebugApplicationThread11064
#else
#define IDebugApplicationThread110 IDebugApplicationThread11032
#define IID_IDebugApplicationThread110 IID_IDebugApplicationThread11032
#endif
#endif


extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0009_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0009_v0_0_s_ifspec;

#ifndef __IDebugApplicationThread11032_INTERFACE_DEFINED__
#define __IDebugApplicationThread11032_INTERFACE_DEFINED__

/* interface IDebugApplicationThread11032 */
/* [unique][local][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IDebugApplicationThread11032;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("2194AC5C-6561-404A-A2E9-F57D72DE3702")
    IDebugApplicationThread11032 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetActiveThreadRequestCount( 
            /* [annotation][out] */ 
            _Out_  UINT *puiThreadRequests) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsSuspendedForBreakPoint( 
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsSuspended) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsThreadCallable( 
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsCallable) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AsynchronousCallIntoThread( 
            /* [in] */ IDebugThreadCall32 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDebugApplicationThread11032Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDebugApplicationThread11032 * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDebugApplicationThread11032 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDebugApplicationThread11032 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetActiveThreadRequestCount )( 
            IDebugApplicationThread11032 * This,
            /* [annotation][out] */ 
            _Out_  UINT *puiThreadRequests);
        
        HRESULT ( STDMETHODCALLTYPE *IsSuspendedForBreakPoint )( 
            IDebugApplicationThread11032 * This,
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsSuspended);
        
        HRESULT ( STDMETHODCALLTYPE *IsThreadCallable )( 
            IDebugApplicationThread11032 * This,
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsCallable);
        
        HRESULT ( STDMETHODCALLTYPE *AsynchronousCallIntoThread )( 
            IDebugApplicationThread11032 * This,
            /* [in] */ IDebugThreadCall32 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3);
        
        END_INTERFACE
    } IDebugApplicationThread11032Vtbl;

    interface IDebugApplicationThread11032
    {
        CONST_VTBL struct IDebugApplicationThread11032Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDebugApplicationThread11032_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDebugApplicationThread11032_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDebugApplicationThread11032_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDebugApplicationThread11032_GetActiveThreadRequestCount(This,puiThreadRequests)	\
    ( (This)->lpVtbl -> GetActiveThreadRequestCount(This,puiThreadRequests) ) 

#define IDebugApplicationThread11032_IsSuspendedForBreakPoint(This,pfIsSuspended)	\
    ( (This)->lpVtbl -> IsSuspendedForBreakPoint(This,pfIsSuspended) ) 

#define IDebugApplicationThread11032_IsThreadCallable(This,pfIsCallable)	\
    ( (This)->lpVtbl -> IsThreadCallable(This,pfIsCallable) ) 

#define IDebugApplicationThread11032_AsynchronousCallIntoThread(This,pptc,dwParam1,dwParam2,dwParam3)	\
    ( (This)->lpVtbl -> AsynchronousCallIntoThread(This,pptc,dwParam1,dwParam2,dwParam3) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDebugApplicationThread11032_INTERFACE_DEFINED__ */


#ifndef __IDebugApplicationThread11064_INTERFACE_DEFINED__
#define __IDebugApplicationThread11064_INTERFACE_DEFINED__

/* interface IDebugApplicationThread11064 */
/* [unique][local][helpstring][uuid][object] */ 


EXTERN_C const IID IID_IDebugApplicationThread11064;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("420AA4CC-EFD8-4DAC-983B-47127826917D")
    IDebugApplicationThread11064 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetActiveThreadRequestCount( 
            /* [annotation][out] */ 
            _Out_  UINT *puiThreadRequests) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsSuspendedForBreakPoint( 
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsSuspended) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsThreadCallable( 
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsCallable) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AsynchronousCallIntoThread( 
            /* [in] */ IDebugThreadCall64 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IDebugApplicationThread11064Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IDebugApplicationThread11064 * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IDebugApplicationThread11064 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IDebugApplicationThread11064 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetActiveThreadRequestCount )( 
            IDebugApplicationThread11064 * This,
            /* [annotation][out] */ 
            _Out_  UINT *puiThreadRequests);
        
        HRESULT ( STDMETHODCALLTYPE *IsSuspendedForBreakPoint )( 
            IDebugApplicationThread11064 * This,
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsSuspended);
        
        HRESULT ( STDMETHODCALLTYPE *IsThreadCallable )( 
            IDebugApplicationThread11064 * This,
            /* [annotation][out] */ 
            _Out_  BOOL *pfIsCallable);
        
        HRESULT ( STDMETHODCALLTYPE *AsynchronousCallIntoThread )( 
            IDebugApplicationThread11064 * This,
            /* [in] */ IDebugThreadCall64 *pptc,
            /* [in] */ DWORD_PTR dwParam1,
            /* [in] */ DWORD_PTR dwParam2,
            /* [in] */ DWORD_PTR dwParam3);
        
        END_INTERFACE
    } IDebugApplicationThread11064Vtbl;

    interface IDebugApplicationThread11064
    {
        CONST_VTBL struct IDebugApplicationThread11064Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IDebugApplicationThread11064_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IDebugApplicationThread11064_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IDebugApplicationThread11064_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IDebugApplicationThread11064_GetActiveThreadRequestCount(This,puiThreadRequests)	\
    ( (This)->lpVtbl -> GetActiveThreadRequestCount(This,puiThreadRequests) ) 

#define IDebugApplicationThread11064_IsSuspendedForBreakPoint(This,pfIsSuspended)	\
    ( (This)->lpVtbl -> IsSuspendedForBreakPoint(This,pfIsSuspended) ) 

#define IDebugApplicationThread11064_IsThreadCallable(This,pfIsCallable)	\
    ( (This)->lpVtbl -> IsThreadCallable(This,pfIsCallable) ) 

#define IDebugApplicationThread11064_AsynchronousCallIntoThread(This,pptc,dwParam1,dwParam2,dwParam3)	\
    ( (This)->lpVtbl -> AsynchronousCallIntoThread(This,pptc,dwParam1,dwParam2,dwParam3) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IDebugApplicationThread11064_INTERFACE_DEFINED__ */


#ifndef __IRemoteDebugCriticalErrorEvent110_INTERFACE_DEFINED__
#define __IRemoteDebugCriticalErrorEvent110_INTERFACE_DEFINED__

/* interface IRemoteDebugCriticalErrorEvent110 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IRemoteDebugCriticalErrorEvent110;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("2f69c611-6b14-47e8-9260-4bb7c52f504b")
    IRemoteDebugCriticalErrorEvent110 : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetErrorInfo( 
            /* [out] */ __RPC__deref_out_opt BSTR *pbstrSource,
            /* [out] */ __RPC__out int *pMessageId,
            /* [out] */ __RPC__deref_out_opt BSTR *pbstrMessage,
            /* [out] */ __RPC__deref_out_opt IDebugDocumentContext **ppLocation) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRemoteDebugCriticalErrorEvent110Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRemoteDebugCriticalErrorEvent110 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRemoteDebugCriticalErrorEvent110 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRemoteDebugCriticalErrorEvent110 * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetErrorInfo )( 
            __RPC__in IRemoteDebugCriticalErrorEvent110 * This,
            /* [out] */ __RPC__deref_out_opt BSTR *pbstrSource,
            /* [out] */ __RPC__out int *pMessageId,
            /* [out] */ __RPC__deref_out_opt BSTR *pbstrMessage,
            /* [out] */ __RPC__deref_out_opt IDebugDocumentContext **ppLocation);
        
        END_INTERFACE
    } IRemoteDebugCriticalErrorEvent110Vtbl;

    interface IRemoteDebugCriticalErrorEvent110
    {
        CONST_VTBL struct IRemoteDebugCriticalErrorEvent110Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRemoteDebugCriticalErrorEvent110_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRemoteDebugCriticalErrorEvent110_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRemoteDebugCriticalErrorEvent110_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRemoteDebugCriticalErrorEvent110_GetErrorInfo(This,pbstrSource,pMessageId,pbstrMessage,ppLocation)	\
    ( (This)->lpVtbl -> GetErrorInfo(This,pbstrSource,pMessageId,pbstrMessage,ppLocation) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRemoteDebugCriticalErrorEvent110_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_activdbg100_0000_0012 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0012_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_activdbg100_0000_0012_v0_0_s_ifspec;

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


