

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

#ifndef __napenforcementclient_h__
#define __napenforcementclient_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __INapEnforcementClientBinding_FWD_DEFINED__
#define __INapEnforcementClientBinding_FWD_DEFINED__
typedef interface INapEnforcementClientBinding INapEnforcementClientBinding;

#endif 	/* __INapEnforcementClientBinding_FWD_DEFINED__ */


#ifndef __INapEnforcementClientCallback_FWD_DEFINED__
#define __INapEnforcementClientCallback_FWD_DEFINED__
typedef interface INapEnforcementClientCallback INapEnforcementClientCallback;

#endif 	/* __INapEnforcementClientCallback_FWD_DEFINED__ */


#ifndef __INapEnforcementClientConnection_FWD_DEFINED__
#define __INapEnforcementClientConnection_FWD_DEFINED__
typedef interface INapEnforcementClientConnection INapEnforcementClientConnection;

#endif 	/* __INapEnforcementClientConnection_FWD_DEFINED__ */


#ifndef __INapEnforcementClientConnection2_FWD_DEFINED__
#define __INapEnforcementClientConnection2_FWD_DEFINED__
typedef interface INapEnforcementClientConnection2 INapEnforcementClientConnection2;

#endif 	/* __INapEnforcementClientConnection2_FWD_DEFINED__ */


/* header files for imported files */
#include "NapTypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_napenforcementclient_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)




extern RPC_IF_HANDLE __MIDL_itf_napenforcementclient_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napenforcementclient_0000_0000_v0_0_s_ifspec;

#ifndef __INapEnforcementClientBinding_INTERFACE_DEFINED__
#define __INapEnforcementClientBinding_INTERFACE_DEFINED__

/* interface INapEnforcementClientBinding */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapEnforcementClientBinding;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("92B93223-7487-42d9-9A91-5B8507720384")
    INapEnforcementClientBinding : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [in] */ EnforcementEntityId id,
            /* [in] */ __RPC__in_opt INapEnforcementClientCallback *callback) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Uninitialize( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CreateConnection( 
            /* [out] */ __RPC__deref_out_opt INapEnforcementClientConnection **connection) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetSoHRequest( 
            /* [in] */ __RPC__in_opt INapEnforcementClientConnection *connection,
            /* [out] */ __RPC__out BOOL *retriggerHint) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE ProcessSoHResponse( 
            /* [in] */ __RPC__in_opt INapEnforcementClientConnection *connection) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE NotifyConnectionStateDown( 
            /* [in] */ __RPC__in_opt INapEnforcementClientConnection *downCxn) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE NotifySoHChangeFailure( void) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapEnforcementClientBindingVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapEnforcementClientBinding * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapEnforcementClientBinding * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapEnforcementClientBinding * This);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in INapEnforcementClientBinding * This,
            /* [in] */ EnforcementEntityId id,
            /* [in] */ __RPC__in_opt INapEnforcementClientCallback *callback);
        
        HRESULT ( STDMETHODCALLTYPE *Uninitialize )( 
            __RPC__in INapEnforcementClientBinding * This);
        
        HRESULT ( STDMETHODCALLTYPE *CreateConnection )( 
            __RPC__in INapEnforcementClientBinding * This,
            /* [out] */ __RPC__deref_out_opt INapEnforcementClientConnection **connection);
        
        HRESULT ( STDMETHODCALLTYPE *GetSoHRequest )( 
            __RPC__in INapEnforcementClientBinding * This,
            /* [in] */ __RPC__in_opt INapEnforcementClientConnection *connection,
            /* [out] */ __RPC__out BOOL *retriggerHint);
        
        HRESULT ( STDMETHODCALLTYPE *ProcessSoHResponse )( 
            __RPC__in INapEnforcementClientBinding * This,
            /* [in] */ __RPC__in_opt INapEnforcementClientConnection *connection);
        
        HRESULT ( STDMETHODCALLTYPE *NotifyConnectionStateDown )( 
            __RPC__in INapEnforcementClientBinding * This,
            /* [in] */ __RPC__in_opt INapEnforcementClientConnection *downCxn);
        
        HRESULT ( STDMETHODCALLTYPE *NotifySoHChangeFailure )( 
            __RPC__in INapEnforcementClientBinding * This);
        
        END_INTERFACE
    } INapEnforcementClientBindingVtbl;

    interface INapEnforcementClientBinding
    {
        CONST_VTBL struct INapEnforcementClientBindingVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapEnforcementClientBinding_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapEnforcementClientBinding_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapEnforcementClientBinding_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapEnforcementClientBinding_Initialize(This,id,callback)	\
    ( (This)->lpVtbl -> Initialize(This,id,callback) ) 

#define INapEnforcementClientBinding_Uninitialize(This)	\
    ( (This)->lpVtbl -> Uninitialize(This) ) 

#define INapEnforcementClientBinding_CreateConnection(This,connection)	\
    ( (This)->lpVtbl -> CreateConnection(This,connection) ) 

#define INapEnforcementClientBinding_GetSoHRequest(This,connection,retriggerHint)	\
    ( (This)->lpVtbl -> GetSoHRequest(This,connection,retriggerHint) ) 

#define INapEnforcementClientBinding_ProcessSoHResponse(This,connection)	\
    ( (This)->lpVtbl -> ProcessSoHResponse(This,connection) ) 

#define INapEnforcementClientBinding_NotifyConnectionStateDown(This,downCxn)	\
    ( (This)->lpVtbl -> NotifyConnectionStateDown(This,downCxn) ) 

#define INapEnforcementClientBinding_NotifySoHChangeFailure(This)	\
    ( (This)->lpVtbl -> NotifySoHChangeFailure(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapEnforcementClientBinding_INTERFACE_DEFINED__ */


#ifndef __INapEnforcementClientCallback_INTERFACE_DEFINED__
#define __INapEnforcementClientCallback_INTERFACE_DEFINED__

/* interface INapEnforcementClientCallback */
/* [unique][uuid][object] */ 

typedef struct tagConnections
    {
    /* [range] */ UINT16 count;
    /* [size_is] */ INapEnforcementClientConnection **connections;
    } 	Connections;


EXTERN_C const IID IID_INapEnforcementClientCallback;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("F5A0B90A-83A1-4f76-BA3F-025418682814")
    INapEnforcementClientCallback : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE NotifySoHChange( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetConnections( 
            /* [out] */ __RPC__deref_out_opt Connections **connections) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapEnforcementClientCallbackVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapEnforcementClientCallback * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapEnforcementClientCallback * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapEnforcementClientCallback * This);
        
        HRESULT ( STDMETHODCALLTYPE *NotifySoHChange )( 
            __RPC__in INapEnforcementClientCallback * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetConnections )( 
            __RPC__in INapEnforcementClientCallback * This,
            /* [out] */ __RPC__deref_out_opt Connections **connections);
        
        END_INTERFACE
    } INapEnforcementClientCallbackVtbl;

    interface INapEnforcementClientCallback
    {
        CONST_VTBL struct INapEnforcementClientCallbackVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapEnforcementClientCallback_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapEnforcementClientCallback_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapEnforcementClientCallback_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapEnforcementClientCallback_NotifySoHChange(This)	\
    ( (This)->lpVtbl -> NotifySoHChange(This) ) 

#define INapEnforcementClientCallback_GetConnections(This,connections)	\
    ( (This)->lpVtbl -> GetConnections(This,connections) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapEnforcementClientCallback_INTERFACE_DEFINED__ */


#ifndef __INapEnforcementClientConnection_INTERFACE_DEFINED__
#define __INapEnforcementClientConnection_INTERFACE_DEFINED__

/* interface INapEnforcementClientConnection */
/* [unique][uuid][object] */ 

#define	defaultProtocolMaxSize	( 4000 )

#define	minProtocolMaxSize	( 300 )

#define	maxProtocolMaxSize	( 0xffff )

typedef /* [range] */ __RPC__range(minProtocolMaxSize,maxProtocolMaxSize) UINT32 ProtocolMaxSize;


EXTERN_C const IID IID_INapEnforcementClientConnection;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("FB3A3505-DDB1-468a-B307-F328A57419D8")
    INapEnforcementClientConnection : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [in] */ EnforcementEntityId id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetMaxSize( 
            /* [in] */ ProtocolMaxSize maxSize) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetMaxSize( 
            /* [out] */ __RPC__out ProtocolMaxSize *maxSize) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetFlags( 
            /* [in] */ UINT8 flags) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetFlags( 
            /* [out] */ __RPC__out UINT8 *flags) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetConnectionId( 
            /* [in] */ __RPC__in const ConnectionId *connectionId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetConnectionId( 
            /* [out] */ __RPC__deref_out_opt ConnectionId **connectionId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetCorrelationId( 
            /* [out] */ __RPC__out CorrelationId *correlationId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetStringCorrelationId( 
            /* [out] */ __RPC__deref_out_opt StringCorrelationId **correlationId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetCorrelationId( 
            /* [in] */ CorrelationId correlationId) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSoHRequest( 
            /* [unique][in] */ __RPC__in_opt const NetworkSoHRequest *sohRequest) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetSoHRequest( 
            /* [out] */ __RPC__deref_out_opt NetworkSoHRequest **sohRequest) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetSoHResponse( 
            /* [in] */ __RPC__in const NetworkSoHResponse *sohResponse) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetSoHResponse( 
            /* [out] */ __RPC__deref_out_opt NetworkSoHResponse **sohResponse) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetIsolationInfo( 
            /* [in] */ __RPC__in const IsolationInfo *isolationInfo) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetIsolationInfo( 
            /* [out] */ __RPC__deref_out_opt IsolationInfo **isolationInfo) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetPrivateData( 
            /* [in] */ __RPC__in const PrivateData *privateData) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetPrivateData( 
            /* [out] */ __RPC__deref_out_opt PrivateData **privateData) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetEnforcerPrivateData( 
            /* [in] */ __RPC__in const PrivateData *privateData) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetEnforcerPrivateData( 
            /* [out] */ __RPC__deref_out_opt PrivateData **privateData) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapEnforcementClientConnectionVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapEnforcementClientConnection * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapEnforcementClientConnection * This);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ EnforcementEntityId id);
        
        HRESULT ( STDMETHODCALLTYPE *SetMaxSize )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ ProtocolMaxSize maxSize);
        
        HRESULT ( STDMETHODCALLTYPE *GetMaxSize )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__out ProtocolMaxSize *maxSize);
        
        HRESULT ( STDMETHODCALLTYPE *SetFlags )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ UINT8 flags);
        
        HRESULT ( STDMETHODCALLTYPE *GetFlags )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__out UINT8 *flags);
        
        HRESULT ( STDMETHODCALLTYPE *SetConnectionId )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ __RPC__in const ConnectionId *connectionId);
        
        HRESULT ( STDMETHODCALLTYPE *GetConnectionId )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt ConnectionId **connectionId);
        
        HRESULT ( STDMETHODCALLTYPE *GetCorrelationId )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__out CorrelationId *correlationId);
        
        HRESULT ( STDMETHODCALLTYPE *GetStringCorrelationId )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt StringCorrelationId **correlationId);
        
        HRESULT ( STDMETHODCALLTYPE *SetCorrelationId )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ CorrelationId correlationId);
        
        HRESULT ( STDMETHODCALLTYPE *SetSoHRequest )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [unique][in] */ __RPC__in_opt const NetworkSoHRequest *sohRequest);
        
        HRESULT ( STDMETHODCALLTYPE *GetSoHRequest )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt NetworkSoHRequest **sohRequest);
        
        HRESULT ( STDMETHODCALLTYPE *SetSoHResponse )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ __RPC__in const NetworkSoHResponse *sohResponse);
        
        HRESULT ( STDMETHODCALLTYPE *GetSoHResponse )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt NetworkSoHResponse **sohResponse);
        
        HRESULT ( STDMETHODCALLTYPE *SetIsolationInfo )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ __RPC__in const IsolationInfo *isolationInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIsolationInfo )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt IsolationInfo **isolationInfo);
        
        HRESULT ( STDMETHODCALLTYPE *SetPrivateData )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ __RPC__in const PrivateData *privateData);
        
        HRESULT ( STDMETHODCALLTYPE *GetPrivateData )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt PrivateData **privateData);
        
        HRESULT ( STDMETHODCALLTYPE *SetEnforcerPrivateData )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [in] */ __RPC__in const PrivateData *privateData);
        
        HRESULT ( STDMETHODCALLTYPE *GetEnforcerPrivateData )( 
            __RPC__in INapEnforcementClientConnection * This,
            /* [out] */ __RPC__deref_out_opt PrivateData **privateData);
        
        END_INTERFACE
    } INapEnforcementClientConnectionVtbl;

    interface INapEnforcementClientConnection
    {
        CONST_VTBL struct INapEnforcementClientConnectionVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapEnforcementClientConnection_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapEnforcementClientConnection_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapEnforcementClientConnection_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapEnforcementClientConnection_Initialize(This,id)	\
    ( (This)->lpVtbl -> Initialize(This,id) ) 

#define INapEnforcementClientConnection_SetMaxSize(This,maxSize)	\
    ( (This)->lpVtbl -> SetMaxSize(This,maxSize) ) 

#define INapEnforcementClientConnection_GetMaxSize(This,maxSize)	\
    ( (This)->lpVtbl -> GetMaxSize(This,maxSize) ) 

#define INapEnforcementClientConnection_SetFlags(This,flags)	\
    ( (This)->lpVtbl -> SetFlags(This,flags) ) 

#define INapEnforcementClientConnection_GetFlags(This,flags)	\
    ( (This)->lpVtbl -> GetFlags(This,flags) ) 

#define INapEnforcementClientConnection_SetConnectionId(This,connectionId)	\
    ( (This)->lpVtbl -> SetConnectionId(This,connectionId) ) 

#define INapEnforcementClientConnection_GetConnectionId(This,connectionId)	\
    ( (This)->lpVtbl -> GetConnectionId(This,connectionId) ) 

#define INapEnforcementClientConnection_GetCorrelationId(This,correlationId)	\
    ( (This)->lpVtbl -> GetCorrelationId(This,correlationId) ) 

#define INapEnforcementClientConnection_GetStringCorrelationId(This,correlationId)	\
    ( (This)->lpVtbl -> GetStringCorrelationId(This,correlationId) ) 

#define INapEnforcementClientConnection_SetCorrelationId(This,correlationId)	\
    ( (This)->lpVtbl -> SetCorrelationId(This,correlationId) ) 

#define INapEnforcementClientConnection_SetSoHRequest(This,sohRequest)	\
    ( (This)->lpVtbl -> SetSoHRequest(This,sohRequest) ) 

#define INapEnforcementClientConnection_GetSoHRequest(This,sohRequest)	\
    ( (This)->lpVtbl -> GetSoHRequest(This,sohRequest) ) 

#define INapEnforcementClientConnection_SetSoHResponse(This,sohResponse)	\
    ( (This)->lpVtbl -> SetSoHResponse(This,sohResponse) ) 

#define INapEnforcementClientConnection_GetSoHResponse(This,sohResponse)	\
    ( (This)->lpVtbl -> GetSoHResponse(This,sohResponse) ) 

#define INapEnforcementClientConnection_SetIsolationInfo(This,isolationInfo)	\
    ( (This)->lpVtbl -> SetIsolationInfo(This,isolationInfo) ) 

#define INapEnforcementClientConnection_GetIsolationInfo(This,isolationInfo)	\
    ( (This)->lpVtbl -> GetIsolationInfo(This,isolationInfo) ) 

#define INapEnforcementClientConnection_SetPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> SetPrivateData(This,privateData) ) 

#define INapEnforcementClientConnection_GetPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> GetPrivateData(This,privateData) ) 

#define INapEnforcementClientConnection_SetEnforcerPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> SetEnforcerPrivateData(This,privateData) ) 

#define INapEnforcementClientConnection_GetEnforcerPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> GetEnforcerPrivateData(This,privateData) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapEnforcementClientConnection_INTERFACE_DEFINED__ */


#ifndef __INapEnforcementClientConnection2_INTERFACE_DEFINED__
#define __INapEnforcementClientConnection2_INTERFACE_DEFINED__

/* interface INapEnforcementClientConnection2 */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapEnforcementClientConnection2;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("BD244906-70DD-4690-BEEA-648653393500")
    INapEnforcementClientConnection2 : public INapEnforcementClientConnection
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE SetIsolationInfoEx( 
            /* [in] */ __RPC__in const IsolationInfoEx *isolationInfo) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetIsolationInfoEx( 
            /* [out] */ __RPC__deref_out_opt IsolationInfoEx **isolationInfo) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetInstalledShvs( 
            /* [out] */ __RPC__out SystemHealthEntityCount *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) SystemHealthEntityId **ids) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE SetInstalledShvs( 
            /* [in] */ SystemHealthEntityCount count,
            /* [size_is][in] */ __RPC__in_ecount_full(count) SystemHealthEntityId *ids) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapEnforcementClientConnection2Vtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapEnforcementClientConnection2 * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapEnforcementClientConnection2 * This);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ EnforcementEntityId id);
        
        HRESULT ( STDMETHODCALLTYPE *SetMaxSize )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ ProtocolMaxSize maxSize);
        
        HRESULT ( STDMETHODCALLTYPE *GetMaxSize )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__out ProtocolMaxSize *maxSize);
        
        HRESULT ( STDMETHODCALLTYPE *SetFlags )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ UINT8 flags);
        
        HRESULT ( STDMETHODCALLTYPE *GetFlags )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__out UINT8 *flags);
        
        HRESULT ( STDMETHODCALLTYPE *SetConnectionId )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in const ConnectionId *connectionId);
        
        HRESULT ( STDMETHODCALLTYPE *GetConnectionId )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt ConnectionId **connectionId);
        
        HRESULT ( STDMETHODCALLTYPE *GetCorrelationId )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__out CorrelationId *correlationId);
        
        HRESULT ( STDMETHODCALLTYPE *GetStringCorrelationId )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt StringCorrelationId **correlationId);
        
        HRESULT ( STDMETHODCALLTYPE *SetCorrelationId )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ CorrelationId correlationId);
        
        HRESULT ( STDMETHODCALLTYPE *SetSoHRequest )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [unique][in] */ __RPC__in_opt const NetworkSoHRequest *sohRequest);
        
        HRESULT ( STDMETHODCALLTYPE *GetSoHRequest )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt NetworkSoHRequest **sohRequest);
        
        HRESULT ( STDMETHODCALLTYPE *SetSoHResponse )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in const NetworkSoHResponse *sohResponse);
        
        HRESULT ( STDMETHODCALLTYPE *GetSoHResponse )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt NetworkSoHResponse **sohResponse);
        
        HRESULT ( STDMETHODCALLTYPE *SetIsolationInfo )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in const IsolationInfo *isolationInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIsolationInfo )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt IsolationInfo **isolationInfo);
        
        HRESULT ( STDMETHODCALLTYPE *SetPrivateData )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in const PrivateData *privateData);
        
        HRESULT ( STDMETHODCALLTYPE *GetPrivateData )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt PrivateData **privateData);
        
        HRESULT ( STDMETHODCALLTYPE *SetEnforcerPrivateData )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in const PrivateData *privateData);
        
        HRESULT ( STDMETHODCALLTYPE *GetEnforcerPrivateData )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt PrivateData **privateData);
        
        HRESULT ( STDMETHODCALLTYPE *SetIsolationInfoEx )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ __RPC__in const IsolationInfoEx *isolationInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIsolationInfoEx )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__deref_out_opt IsolationInfoEx **isolationInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetInstalledShvs )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [out] */ __RPC__out SystemHealthEntityCount *count,
            /* [size_is][size_is][out] */ __RPC__deref_out_ecount_full_opt(*count) SystemHealthEntityId **ids);
        
        HRESULT ( STDMETHODCALLTYPE *SetInstalledShvs )( 
            __RPC__in INapEnforcementClientConnection2 * This,
            /* [in] */ SystemHealthEntityCount count,
            /* [size_is][in] */ __RPC__in_ecount_full(count) SystemHealthEntityId *ids);
        
        END_INTERFACE
    } INapEnforcementClientConnection2Vtbl;

    interface INapEnforcementClientConnection2
    {
        CONST_VTBL struct INapEnforcementClientConnection2Vtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapEnforcementClientConnection2_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapEnforcementClientConnection2_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapEnforcementClientConnection2_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapEnforcementClientConnection2_Initialize(This,id)	\
    ( (This)->lpVtbl -> Initialize(This,id) ) 

#define INapEnforcementClientConnection2_SetMaxSize(This,maxSize)	\
    ( (This)->lpVtbl -> SetMaxSize(This,maxSize) ) 

#define INapEnforcementClientConnection2_GetMaxSize(This,maxSize)	\
    ( (This)->lpVtbl -> GetMaxSize(This,maxSize) ) 

#define INapEnforcementClientConnection2_SetFlags(This,flags)	\
    ( (This)->lpVtbl -> SetFlags(This,flags) ) 

#define INapEnforcementClientConnection2_GetFlags(This,flags)	\
    ( (This)->lpVtbl -> GetFlags(This,flags) ) 

#define INapEnforcementClientConnection2_SetConnectionId(This,connectionId)	\
    ( (This)->lpVtbl -> SetConnectionId(This,connectionId) ) 

#define INapEnforcementClientConnection2_GetConnectionId(This,connectionId)	\
    ( (This)->lpVtbl -> GetConnectionId(This,connectionId) ) 

#define INapEnforcementClientConnection2_GetCorrelationId(This,correlationId)	\
    ( (This)->lpVtbl -> GetCorrelationId(This,correlationId) ) 

#define INapEnforcementClientConnection2_GetStringCorrelationId(This,correlationId)	\
    ( (This)->lpVtbl -> GetStringCorrelationId(This,correlationId) ) 

#define INapEnforcementClientConnection2_SetCorrelationId(This,correlationId)	\
    ( (This)->lpVtbl -> SetCorrelationId(This,correlationId) ) 

#define INapEnforcementClientConnection2_SetSoHRequest(This,sohRequest)	\
    ( (This)->lpVtbl -> SetSoHRequest(This,sohRequest) ) 

#define INapEnforcementClientConnection2_GetSoHRequest(This,sohRequest)	\
    ( (This)->lpVtbl -> GetSoHRequest(This,sohRequest) ) 

#define INapEnforcementClientConnection2_SetSoHResponse(This,sohResponse)	\
    ( (This)->lpVtbl -> SetSoHResponse(This,sohResponse) ) 

#define INapEnforcementClientConnection2_GetSoHResponse(This,sohResponse)	\
    ( (This)->lpVtbl -> GetSoHResponse(This,sohResponse) ) 

#define INapEnforcementClientConnection2_SetIsolationInfo(This,isolationInfo)	\
    ( (This)->lpVtbl -> SetIsolationInfo(This,isolationInfo) ) 

#define INapEnforcementClientConnection2_GetIsolationInfo(This,isolationInfo)	\
    ( (This)->lpVtbl -> GetIsolationInfo(This,isolationInfo) ) 

#define INapEnforcementClientConnection2_SetPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> SetPrivateData(This,privateData) ) 

#define INapEnforcementClientConnection2_GetPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> GetPrivateData(This,privateData) ) 

#define INapEnforcementClientConnection2_SetEnforcerPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> SetEnforcerPrivateData(This,privateData) ) 

#define INapEnforcementClientConnection2_GetEnforcerPrivateData(This,privateData)	\
    ( (This)->lpVtbl -> GetEnforcerPrivateData(This,privateData) ) 


#define INapEnforcementClientConnection2_SetIsolationInfoEx(This,isolationInfo)	\
    ( (This)->lpVtbl -> SetIsolationInfoEx(This,isolationInfo) ) 

#define INapEnforcementClientConnection2_GetIsolationInfoEx(This,isolationInfo)	\
    ( (This)->lpVtbl -> GetIsolationInfoEx(This,isolationInfo) ) 

#define INapEnforcementClientConnection2_GetInstalledShvs(This,count,ids)	\
    ( (This)->lpVtbl -> GetInstalledShvs(This,count,ids) ) 

#define INapEnforcementClientConnection2_SetInstalledShvs(This,count,ids)	\
    ( (This)->lpVtbl -> SetInstalledShvs(This,count,ids) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapEnforcementClientConnection2_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_napenforcementclient_0000_0004 */
/* [local] */ 

// Declarations of CLSIDs of objects provided  
// by the system. Link to uuid.lib to get them 
// defined.                                    
EXTERN_C const CLSID 
   CLSID_NapEnforcementClientBinding;
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_napenforcementclient_0000_0004_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napenforcementclient_0000_0004_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


