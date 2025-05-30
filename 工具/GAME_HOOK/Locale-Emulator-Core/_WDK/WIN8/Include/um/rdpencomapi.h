

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 8.00.0595 */
/* @@MIDL_FILE_HEADING(  ) */

#pragma warning( disable: 4049 )  /* more than 64k source lines */


/* verify that the <rpcndr.h> version is high enough to compile this file*/
#ifndef __REQUIRED_RPCNDR_H_VERSION__
#define __REQUIRED_RPCNDR_H_VERSION__ 475
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

#ifndef __rdpencomapi_h__
#define __rdpencomapi_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IRDPSRAPIDebug_FWD_DEFINED__
#define __IRDPSRAPIDebug_FWD_DEFINED__
typedef interface IRDPSRAPIDebug IRDPSRAPIDebug;

#endif 	/* __IRDPSRAPIDebug_FWD_DEFINED__ */


#ifndef __IRDPSRAPIWindow_FWD_DEFINED__
#define __IRDPSRAPIWindow_FWD_DEFINED__
typedef interface IRDPSRAPIWindow IRDPSRAPIWindow;

#endif 	/* __IRDPSRAPIWindow_FWD_DEFINED__ */


#ifndef __IRDPSRAPIWindowList_FWD_DEFINED__
#define __IRDPSRAPIWindowList_FWD_DEFINED__
typedef interface IRDPSRAPIWindowList IRDPSRAPIWindowList;

#endif 	/* __IRDPSRAPIWindowList_FWD_DEFINED__ */


#ifndef __IRDPSRAPIApplication_FWD_DEFINED__
#define __IRDPSRAPIApplication_FWD_DEFINED__
typedef interface IRDPSRAPIApplication IRDPSRAPIApplication;

#endif 	/* __IRDPSRAPIApplication_FWD_DEFINED__ */


#ifndef __IRDPSRAPIApplicationList_FWD_DEFINED__
#define __IRDPSRAPIApplicationList_FWD_DEFINED__
typedef interface IRDPSRAPIApplicationList IRDPSRAPIApplicationList;

#endif 	/* __IRDPSRAPIApplicationList_FWD_DEFINED__ */


#ifndef __IRDPSRAPIApplicationFilter_FWD_DEFINED__
#define __IRDPSRAPIApplicationFilter_FWD_DEFINED__
typedef interface IRDPSRAPIApplicationFilter IRDPSRAPIApplicationFilter;

#endif 	/* __IRDPSRAPIApplicationFilter_FWD_DEFINED__ */


#ifndef __IRDPSRAPISessionProperties_FWD_DEFINED__
#define __IRDPSRAPISessionProperties_FWD_DEFINED__
typedef interface IRDPSRAPISessionProperties IRDPSRAPISessionProperties;

#endif 	/* __IRDPSRAPISessionProperties_FWD_DEFINED__ */


#ifndef __IRDPSRAPIInvitation_FWD_DEFINED__
#define __IRDPSRAPIInvitation_FWD_DEFINED__
typedef interface IRDPSRAPIInvitation IRDPSRAPIInvitation;

#endif 	/* __IRDPSRAPIInvitation_FWD_DEFINED__ */


#ifndef __IRDPSRAPIInvitationManager_FWD_DEFINED__
#define __IRDPSRAPIInvitationManager_FWD_DEFINED__
typedef interface IRDPSRAPIInvitationManager IRDPSRAPIInvitationManager;

#endif 	/* __IRDPSRAPIInvitationManager_FWD_DEFINED__ */


#ifndef __IRDPSRAPITcpConnectionInfo_FWD_DEFINED__
#define __IRDPSRAPITcpConnectionInfo_FWD_DEFINED__
typedef interface IRDPSRAPITcpConnectionInfo IRDPSRAPITcpConnectionInfo;

#endif 	/* __IRDPSRAPITcpConnectionInfo_FWD_DEFINED__ */


#ifndef __IRDPSRAPIAttendee_FWD_DEFINED__
#define __IRDPSRAPIAttendee_FWD_DEFINED__
typedef interface IRDPSRAPIAttendee IRDPSRAPIAttendee;

#endif 	/* __IRDPSRAPIAttendee_FWD_DEFINED__ */


#ifndef __IRDPSRAPIAttendeeManager_FWD_DEFINED__
#define __IRDPSRAPIAttendeeManager_FWD_DEFINED__
typedef interface IRDPSRAPIAttendeeManager IRDPSRAPIAttendeeManager;

#endif 	/* __IRDPSRAPIAttendeeManager_FWD_DEFINED__ */


#ifndef __IRDPSRAPIAttendeeDisconnectInfo_FWD_DEFINED__
#define __IRDPSRAPIAttendeeDisconnectInfo_FWD_DEFINED__
typedef interface IRDPSRAPIAttendeeDisconnectInfo IRDPSRAPIAttendeeDisconnectInfo;

#endif 	/* __IRDPSRAPIAttendeeDisconnectInfo_FWD_DEFINED__ */


#ifndef __IRDPSRAPIVirtualChannel_FWD_DEFINED__
#define __IRDPSRAPIVirtualChannel_FWD_DEFINED__
typedef interface IRDPSRAPIVirtualChannel IRDPSRAPIVirtualChannel;

#endif 	/* __IRDPSRAPIVirtualChannel_FWD_DEFINED__ */


#ifndef __IRDPSRAPIVirtualChannelManager_FWD_DEFINED__
#define __IRDPSRAPIVirtualChannelManager_FWD_DEFINED__
typedef interface IRDPSRAPIVirtualChannelManager IRDPSRAPIVirtualChannelManager;

#endif 	/* __IRDPSRAPIVirtualChannelManager_FWD_DEFINED__ */


#ifndef __IRDPSRAPIViewer_FWD_DEFINED__
#define __IRDPSRAPIViewer_FWD_DEFINED__
typedef interface IRDPSRAPIViewer IRDPSRAPIViewer;

#endif 	/* __IRDPSRAPIViewer_FWD_DEFINED__ */


#ifndef __IRDPViewerRenderingSurface_FWD_DEFINED__
#define __IRDPViewerRenderingSurface_FWD_DEFINED__
typedef interface IRDPViewerRenderingSurface IRDPViewerRenderingSurface;

#endif 	/* __IRDPViewerRenderingSurface_FWD_DEFINED__ */


#ifndef __IRDPSRAPISharingSession_FWD_DEFINED__
#define __IRDPSRAPISharingSession_FWD_DEFINED__
typedef interface IRDPSRAPISharingSession IRDPSRAPISharingSession;

#endif 	/* __IRDPSRAPISharingSession_FWD_DEFINED__ */


#ifndef ___IRDPSessionEvents_FWD_DEFINED__
#define ___IRDPSessionEvents_FWD_DEFINED__
typedef interface _IRDPSessionEvents _IRDPSessionEvents;

#endif 	/* ___IRDPSessionEvents_FWD_DEFINED__ */


#ifndef __RDPViewer_FWD_DEFINED__
#define __RDPViewer_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPViewer RDPViewer;
#else
typedef struct RDPViewer RDPViewer;
#endif /* __cplusplus */

#endif 	/* __RDPViewer_FWD_DEFINED__ */


#ifndef __RDPSRAPISessionProperties_FWD_DEFINED__
#define __RDPSRAPISessionProperties_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPISessionProperties RDPSRAPISessionProperties;
#else
typedef struct RDPSRAPISessionProperties RDPSRAPISessionProperties;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPISessionProperties_FWD_DEFINED__ */


#ifndef __RDPSRAPIInvitationManager_FWD_DEFINED__
#define __RDPSRAPIInvitationManager_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIInvitationManager RDPSRAPIInvitationManager;
#else
typedef struct RDPSRAPIInvitationManager RDPSRAPIInvitationManager;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIInvitationManager_FWD_DEFINED__ */


#ifndef __RDPSRAPIInvitation_FWD_DEFINED__
#define __RDPSRAPIInvitation_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIInvitation RDPSRAPIInvitation;
#else
typedef struct RDPSRAPIInvitation RDPSRAPIInvitation;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIInvitation_FWD_DEFINED__ */


#ifndef __RDPSRAPIAttendeeManager_FWD_DEFINED__
#define __RDPSRAPIAttendeeManager_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIAttendeeManager RDPSRAPIAttendeeManager;
#else
typedef struct RDPSRAPIAttendeeManager RDPSRAPIAttendeeManager;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIAttendeeManager_FWD_DEFINED__ */


#ifndef __RDPSRAPIAttendee_FWD_DEFINED__
#define __RDPSRAPIAttendee_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIAttendee RDPSRAPIAttendee;
#else
typedef struct RDPSRAPIAttendee RDPSRAPIAttendee;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIAttendee_FWD_DEFINED__ */


#ifndef __RDPSRAPIAttendeeDisconnectInfo_FWD_DEFINED__
#define __RDPSRAPIAttendeeDisconnectInfo_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIAttendeeDisconnectInfo RDPSRAPIAttendeeDisconnectInfo;
#else
typedef struct RDPSRAPIAttendeeDisconnectInfo RDPSRAPIAttendeeDisconnectInfo;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIAttendeeDisconnectInfo_FWD_DEFINED__ */


#ifndef __RDPSRAPIApplicationFilter_FWD_DEFINED__
#define __RDPSRAPIApplicationFilter_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIApplicationFilter RDPSRAPIApplicationFilter;
#else
typedef struct RDPSRAPIApplicationFilter RDPSRAPIApplicationFilter;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIApplicationFilter_FWD_DEFINED__ */


#ifndef __RDPSRAPIApplicationList_FWD_DEFINED__
#define __RDPSRAPIApplicationList_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIApplicationList RDPSRAPIApplicationList;
#else
typedef struct RDPSRAPIApplicationList RDPSRAPIApplicationList;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIApplicationList_FWD_DEFINED__ */


#ifndef __RDPSRAPIApplication_FWD_DEFINED__
#define __RDPSRAPIApplication_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIApplication RDPSRAPIApplication;
#else
typedef struct RDPSRAPIApplication RDPSRAPIApplication;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIApplication_FWD_DEFINED__ */


#ifndef __RDPSRAPIWindowList_FWD_DEFINED__
#define __RDPSRAPIWindowList_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIWindowList RDPSRAPIWindowList;
#else
typedef struct RDPSRAPIWindowList RDPSRAPIWindowList;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIWindowList_FWD_DEFINED__ */


#ifndef __RDPSRAPIWindow_FWD_DEFINED__
#define __RDPSRAPIWindow_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPIWindow RDPSRAPIWindow;
#else
typedef struct RDPSRAPIWindow RDPSRAPIWindow;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPIWindow_FWD_DEFINED__ */


#ifndef __RDPSRAPITcpConnectionInfo_FWD_DEFINED__
#define __RDPSRAPITcpConnectionInfo_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSRAPITcpConnectionInfo RDPSRAPITcpConnectionInfo;
#else
typedef struct RDPSRAPITcpConnectionInfo RDPSRAPITcpConnectionInfo;
#endif /* __cplusplus */

#endif 	/* __RDPSRAPITcpConnectionInfo_FWD_DEFINED__ */


#ifndef __RDPSession_FWD_DEFINED__
#define __RDPSession_FWD_DEFINED__

#ifdef __cplusplus
typedef class RDPSession RDPSession;
#else
typedef struct RDPSession RDPSession;
#endif /* __cplusplus */

#endif 	/* __RDPSession_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_rdpencomapi_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Application Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
#define	DISPID_RDPSRAPI_METHOD_OPEN	( 100 )

#define	DISPID_RDPSRAPI_METHOD_CLOSE	( 101 )

#define	DISPID_RDPSRAPI_METHOD_SETSHAREDRECT	( 102 )

#define	DISPID_RDPSRAPI_METHOD_GETSHAREDRECT	( 103 )

#define	DISPID_RDPSRAPI_METHOD_VIEWERCONNECT	( 104 )

#define	DISPID_RDPSRAPI_METHOD_VIEWERDISCONNECT	( 105 )

#define	DISPID_RDPSRAPI_METHOD_TERMINATE_CONNECTION	( 106 )

#define	DISPID_RDPSRAPI_METHOD_CREATE_INVITATION	( 107 )

#define	DISPID_RDPSRAPI_METHOD_REQUEST_CONTROL	( 108 )

#define	DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_CREATE	( 109 )

#define	DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_SEND_DATA	( 110 )

#define	DISPID_RDPSRAPI_METHOD_VIRTUAL_CHANNEL_SET_ACCESS	( 111 )

#define	DISPID_RDPSRAPI_METHOD_PAUSE	( 112 )

#define	DISPID_RDPSRAPI_METHOD_RESUME	( 113 )

#define	DISPID_RDPSRAPI_METHOD_SHOW_WINDOW	( 114 )

#define	DISPID_RDPSRAPI_METHOD_REQUEST_COLOR_DEPTH_CHANGE	( 115 )

#define	DISPID_RDPSRAPI_METHOD_STARTREVCONNECTLISTENER	( 116 )

#define	DISPID_RDPSRAPI_METHOD_CONNECTTOCLIENT	( 117 )

#define	DISPID_RDPSRAPI_METHOD_SET_RENDERING_SURFACE	( 118 )

#define	DISPID_RDPSRAPI_PROP_DISPIDVALUE	( 200 )

#define	DISPID_RDPSRAPI_PROP_ID	( 201 )

#define	DISPID_RDPSRAPI_PROP_SESSION_PROPERTIES	( 202 )

#define	DISPID_RDPSRAPI_PROP_ATTENDEES	( 203 )

#define	DISPID_RDPSRAPI_PROP_INVITATIONS	( 204 )

#define	DISPID_RDPSRAPI_PROP_INVITATION	( 205 )

#define	DISPID_RDPSRAPI_PROP_CHANNELMANAGER	( 206 )

#define	DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETNAME	( 207 )

#define	DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETFLAGS	( 208 )

#define	DISPID_RDPSRAPI_PROP_VIRTUAL_CHANNEL_GETPRIORITY	( 209 )

#define	DISPID_RDPSRAPI_PROP_WINDOWID	( 210 )

#define	DISPID_RDPSRAPI_PROP_APPLICATION	( 211 )

#define	DISPID_RDPSRAPI_PROP_WINDOWSHARED	( 212 )

#define	DISPID_RDPSRAPI_PROP_WINDOWNAME	( 213 )

#define	DISPID_RDPSRAPI_PROP_APPNAME	( 214 )

#define	DISPID_RDPSRAPI_PROP_APPLICATION_FILTER	( 215 )

#define	DISPID_RDPSRAPI_PROP_WINDOW_LIST	( 216 )

#define	DISPID_RDPSRAPI_PROP_APPLICATION_LIST	( 217 )

#define	DISPID_RDPSRAPI_PROP_APPFILTER_ENABLED	( 218 )

#define	DISPID_RDPSRAPI_PROP_APPFILTERENABLED	( 219 )

#define	DISPID_RDPSRAPI_PROP_SHARED	( 220 )

#define	DISPID_RDPSRAPI_PROP_INVITATIONITEM	( 221 )

#define	DISPID_RDPSRAPI_PROP_DBG_CLX_CMDLINE	( 222 )

#define	DISPID_RDPSRAPI_PROP_APPFLAGS	( 223 )

#define	DISPID_RDPSRAPI_PROP_WNDFLAGS	( 224 )

#define	DISPID_RDPSRAPI_PROP_PROTOCOL_TYPE	( 225 )

#define	DISPID_RDPSRAPI_PROP_LOCAL_PORT	( 226 )

#define	DISPID_RDPSRAPI_PROP_LOCAL_IP	( 227 )

#define	DISPID_RDPSRAPI_PROP_PEER_PORT	( 228 )

#define	DISPID_RDPSRAPI_PROP_PEER_IP	( 229 )

#define	DISPID_RDPSRAPI_PROP_ATTENDEE_FLAGS	( 230 )

#define	DISPID_RDPSRAPI_PROP_CONINFO	( 231 )

#define	DISPID_RDPSRAPI_PROP_CONNECTION_STRING	( 232 )

#define	DISPID_RDPSRAPI_PROP_GROUP_NAME	( 233 )

#define	DISPID_RDPSRAPI_PROP_PASSWORD	( 234 )

#define	DISPID_RDPSRAPI_PROP_ATTENDEELIMIT	( 235 )

#define	DISPID_RDPSRAPI_PROP_REVOKED	( 236 )

#define	DISPID_RDPSRAPI_PROP_DISCONNECTED_STRING	( 237 )

#define	DISPID_RDPSRAPI_PROP_USESMARTSIZING	( 238 )

#define	DISPID_RDPSRAPI_PROP_SESSION_COLORDEPTH	( 239 )

#define	DISPID_RDPSRAPI_PROP_REASON	( 240 )

#define	DISPID_RDPSRAPI_PROP_CODE	( 241 )

#define	DISPID_RDPSRAPI_PROP_CTRL_LEVEL	( 242 )

#define	DISPID_RDPSRAPI_PROP_REMOTENAME	( 243 )

#define	DISPID_RDPSRAPI_PROP_COUNT	( 244 )

#define	DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_CONNECTED	( 301 )

#define	DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_DISCONNECTED	( 302 )

#define	DISPID_RDPSRAPI_EVENT_ON_ATTENDEE_UPDATE	( 303 )

#define	DISPID_RDPSRAPI_EVENT_ON_ERROR	( 304 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIEWER_CONNECTED	( 305 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIEWER_DISCONNECTED	( 306 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIEWER_AUTHENTICATED	( 307 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIEWER_CONNECTFAILED	( 308 )

#define	DISPID_RDPSRAPI_EVENT_ON_CTRLLEVEL_CHANGE_REQUEST	( 309 )

#define	DISPID_RDPSRAPI_EVENT_ON_GRAPHICS_STREAM_PAUSED	( 310 )

#define	DISPID_RDPSRAPI_EVENT_ON_GRAPHICS_STREAM_RESUMED	( 311 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_JOIN	( 312 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_LEAVE	( 313 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_DATARECEIVED	( 314 )

#define	DISPID_RDPSRAPI_EVENT_ON_VIRTUAL_CHANNEL_SENDCOMPLETED	( 315 )

#define	DISPID_RDPSRAPI_EVENT_ON_APPLICATION_OPEN	( 316 )

#define	DISPID_RDPSRAPI_EVENT_ON_APPLICATION_CLOSE	( 317 )

#define	DISPID_RDPSRAPI_EVENT_ON_APPLICATION_UPDATE	( 318 )

#define	DISPID_RDPSRAPI_EVENT_ON_WINDOW_OPEN	( 319 )

#define	DISPID_RDPSRAPI_EVENT_ON_WINDOW_CLOSE	( 320 )

#define	DISPID_RDPSRAPI_EVENT_ON_WINDOW_UPDATE	( 321 )

#define	DISPID_RDPSRAPI_EVENT_ON_APPFILTER_UPDATE	( 322 )

#define	DISPID_RDPSRAPI_EVENT_ON_SHARED_RECT_CHANGED	( 323 )

#define	DISPID_RDPSRAPI_EVENT_ON_FOCUSRELEASED	( 324 )

#define	DISPID_RDPSRAPI_EVENT_ON_SHARED_DESKTOP_SETTINGS_CHANGED	( 325 )

#define	DISPID_RDPAPI_EVENT_ON_BOUNDING_RECT_CHANGED	( 340 )

typedef /* [public][public][public][public][public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0001
    {
        CTRL_LEVEL_MIN	= 0,
        CTRL_LEVEL_INVALID	= 0,
        CTRL_LEVEL_NONE	= 1,
        CTRL_LEVEL_VIEW	= 2,
        CTRL_LEVEL_INTERACTIVE	= 3,
        CTRL_LEVEL_MAX	= 3
    } 	CTRL_LEVEL;

typedef /* [public][public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0002
    {
        ATTENDEE_DISCONNECT_REASON_MIN	= 0,
        ATTENDEE_DISCONNECT_REASON_APP	= 0,
        ATTENDEE_DISCONNECT_REASON_ERR	= 1,
        ATTENDEE_DISCONNECT_REASON_CLI	= 2,
        ATTENDEE_DISCONNECT_REASON_MAX	= 2
    } 	ATTENDEE_DISCONNECT_REASON;

typedef /* [public][public][public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0003
    {
        CHANNEL_PRIORITY_LO	= 0,
        CHANNEL_PRIORITY_MED	= ( CHANNEL_PRIORITY_LO + 1 ) ,
        CHANNEL_PRIORITY_HI	= ( CHANNEL_PRIORITY_MED + 1 ) 
    } 	CHANNEL_PRIORITY;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0004
    {
        CHANNEL_FLAGS_LEGACY	= 0x1,
        CHANNEL_FLAGS_UNCOMPRESSED	= 0x2
    } 	CHANNEL_FLAGS;

typedef /* [public][public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0005
    {
        CHANNEL_ACCESS_ENUM_NONE	= 0,
        CHANNEL_ACCESS_ENUM_SENDRECEIVE	= ( CHANNEL_ACCESS_ENUM_NONE + 1 ) 
    } 	CHANNEL_ACCESS_ENUM;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0006
    {
        ATTENDEE_FLAGS_LOCAL	= 1
    } 	RDPENCOMAPI_ATTENDEE_FLAGS;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0007
    {
        WND_FLAG_PRIVILEGED	= 1
    } 	RDPSRAPI_WND_FLAGS;

typedef /* [public][public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0000_0008
    {
        APP_FLAG_PRIVILEGED	= 1
    } 	RDPSRAPI_APP_FLAGS;



extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0000_v0_0_s_ifspec;

#ifndef __IRDPSRAPIDebug_INTERFACE_DEFINED__
#define __IRDPSRAPIDebug_INTERFACE_DEFINED__

/* interface IRDPSRAPIDebug */
/* [unique][hidden][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIDebug;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("aa1e42b5-496d-4ca4-a690-348dcb2ec4ad")
    IRDPSRAPIDebug : public IUnknown
    {
    public:
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_CLXCmdLine( 
            /* [in] */ __RPC__in BSTR CLXCmdLine) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_CLXCmdLine( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pCLXCmdLine) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIDebugVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIDebug * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIDebug * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIDebug * This);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_CLXCmdLine )( 
            __RPC__in IRDPSRAPIDebug * This,
            /* [in] */ __RPC__in BSTR CLXCmdLine);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_CLXCmdLine )( 
            __RPC__in IRDPSRAPIDebug * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pCLXCmdLine);
        
        END_INTERFACE
    } IRDPSRAPIDebugVtbl;

    interface IRDPSRAPIDebug
    {
        CONST_VTBL struct IRDPSRAPIDebugVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIDebug_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIDebug_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIDebug_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIDebug_put_CLXCmdLine(This,CLXCmdLine)	\
    ( (This)->lpVtbl -> put_CLXCmdLine(This,CLXCmdLine) ) 

#define IRDPSRAPIDebug_get_CLXCmdLine(This,pCLXCmdLine)	\
    ( (This)->lpVtbl -> get_CLXCmdLine(This,pCLXCmdLine) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIDebug_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_rdpencomapi_0000_0001 */
/* [local] */ 




extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0001_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0001_v0_0_s_ifspec;

#ifndef __IRDPSRAPIWindow_INTERFACE_DEFINED__
#define __IRDPSRAPIWindow_INTERFACE_DEFINED__

/* interface IRDPSRAPIWindow */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIWindow;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("beafe0f9-c77b-4933-ba9f-a24cddcc27cf")
    IRDPSRAPIWindow : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Id( 
            /* [retval][out] */ __RPC__out long *pRetVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Application( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplication **pApplication) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Shared( 
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Shared( 
            /* [in] */ VARIANT_BOOL NewVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Name( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pRetVal) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Show( void) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Flags( 
            /* [retval][out] */ __RPC__out unsigned long *pdwFlags) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIWindowVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIWindow * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIWindow * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIWindow * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Id )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [retval][out] */ __RPC__out long *pRetVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Application )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplication **pApplication);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Shared )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Shared )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [in] */ VARIANT_BOOL NewVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Name )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pRetVal);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Show )( 
            __RPC__in IRDPSRAPIWindow * This);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Flags )( 
            __RPC__in IRDPSRAPIWindow * This,
            /* [retval][out] */ __RPC__out unsigned long *pdwFlags);
        
        END_INTERFACE
    } IRDPSRAPIWindowVtbl;

    interface IRDPSRAPIWindow
    {
        CONST_VTBL struct IRDPSRAPIWindowVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIWindow_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIWindow_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIWindow_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIWindow_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIWindow_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIWindow_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIWindow_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIWindow_get_Id(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Id(This,pRetVal) ) 

#define IRDPSRAPIWindow_get_Application(This,pApplication)	\
    ( (This)->lpVtbl -> get_Application(This,pApplication) ) 

#define IRDPSRAPIWindow_get_Shared(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Shared(This,pRetVal) ) 

#define IRDPSRAPIWindow_put_Shared(This,NewVal)	\
    ( (This)->lpVtbl -> put_Shared(This,NewVal) ) 

#define IRDPSRAPIWindow_get_Name(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Name(This,pRetVal) ) 

#define IRDPSRAPIWindow_Show(This)	\
    ( (This)->lpVtbl -> Show(This) ) 

#define IRDPSRAPIWindow_get_Flags(This,pdwFlags)	\
    ( (This)->lpVtbl -> get_Flags(This,pdwFlags) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIWindow_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIWindowList_INTERFACE_DEFINED__
#define __IRDPSRAPIWindowList_INTERFACE_DEFINED__

/* interface IRDPSRAPIWindowList */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIWindowList;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("8a05ce44-715a-4116-a189-a118f30a07bd")
    IRDPSRAPIWindowList : public IDispatch
    {
    public:
        virtual /* [id][restricted][propget] */ HRESULT STDMETHODCALLTYPE get__NewEnum( 
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Item( 
            /* [in] */ long item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIWindow **pWindow) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIWindowListVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIWindowList * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIWindowList * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIWindowList * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIWindowList * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIWindowList * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIWindowList * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIWindowList * This,
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
        
        /* [id][restricted][propget] */ HRESULT ( STDMETHODCALLTYPE *get__NewEnum )( 
            __RPC__in IRDPSRAPIWindowList * This,
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Item )( 
            __RPC__in IRDPSRAPIWindowList * This,
            /* [in] */ long item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIWindow **pWindow);
        
        END_INTERFACE
    } IRDPSRAPIWindowListVtbl;

    interface IRDPSRAPIWindowList
    {
        CONST_VTBL struct IRDPSRAPIWindowListVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIWindowList_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIWindowList_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIWindowList_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIWindowList_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIWindowList_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIWindowList_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIWindowList_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIWindowList_get__NewEnum(This,retval)	\
    ( (This)->lpVtbl -> get__NewEnum(This,retval) ) 

#define IRDPSRAPIWindowList_get_Item(This,item,pWindow)	\
    ( (This)->lpVtbl -> get_Item(This,item,pWindow) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIWindowList_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIApplication_INTERFACE_DEFINED__
#define __IRDPSRAPIApplication_INTERFACE_DEFINED__

/* interface IRDPSRAPIApplication */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIApplication;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("41e7a09d-eb7a-436e-935d-780ca2628324")
    IRDPSRAPIApplication : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Windows( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIWindowList **pWindowList) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Id( 
            /* [retval][out] */ __RPC__out long *pRetVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Shared( 
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Shared( 
            /* [in] */ VARIANT_BOOL NewVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Name( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pRetVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Flags( 
            /* [retval][out] */ __RPC__out unsigned long *pdwFlags) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIApplicationVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIApplication * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIApplication * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIApplication * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Windows )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIWindowList **pWindowList);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Id )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [retval][out] */ __RPC__out long *pRetVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Shared )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Shared )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [in] */ VARIANT_BOOL NewVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Name )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pRetVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Flags )( 
            __RPC__in IRDPSRAPIApplication * This,
            /* [retval][out] */ __RPC__out unsigned long *pdwFlags);
        
        END_INTERFACE
    } IRDPSRAPIApplicationVtbl;

    interface IRDPSRAPIApplication
    {
        CONST_VTBL struct IRDPSRAPIApplicationVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIApplication_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIApplication_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIApplication_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIApplication_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIApplication_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIApplication_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIApplication_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIApplication_get_Windows(This,pWindowList)	\
    ( (This)->lpVtbl -> get_Windows(This,pWindowList) ) 

#define IRDPSRAPIApplication_get_Id(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Id(This,pRetVal) ) 

#define IRDPSRAPIApplication_get_Shared(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Shared(This,pRetVal) ) 

#define IRDPSRAPIApplication_put_Shared(This,NewVal)	\
    ( (This)->lpVtbl -> put_Shared(This,NewVal) ) 

#define IRDPSRAPIApplication_get_Name(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Name(This,pRetVal) ) 

#define IRDPSRAPIApplication_get_Flags(This,pdwFlags)	\
    ( (This)->lpVtbl -> get_Flags(This,pdwFlags) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIApplication_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIApplicationList_INTERFACE_DEFINED__
#define __IRDPSRAPIApplicationList_INTERFACE_DEFINED__

/* interface IRDPSRAPIApplicationList */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIApplicationList;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("d4b4aeb3-22dc-4837-b3b6-42ea2517849a")
    IRDPSRAPIApplicationList : public IDispatch
    {
    public:
        virtual /* [id][restricted][propget] */ HRESULT STDMETHODCALLTYPE get__NewEnum( 
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Item( 
            /* [in] */ long item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplication **pApplication) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIApplicationListVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIApplicationList * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIApplicationList * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIApplicationList * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIApplicationList * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIApplicationList * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIApplicationList * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIApplicationList * This,
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
        
        /* [id][restricted][propget] */ HRESULT ( STDMETHODCALLTYPE *get__NewEnum )( 
            __RPC__in IRDPSRAPIApplicationList * This,
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Item )( 
            __RPC__in IRDPSRAPIApplicationList * This,
            /* [in] */ long item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplication **pApplication);
        
        END_INTERFACE
    } IRDPSRAPIApplicationListVtbl;

    interface IRDPSRAPIApplicationList
    {
        CONST_VTBL struct IRDPSRAPIApplicationListVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIApplicationList_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIApplicationList_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIApplicationList_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIApplicationList_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIApplicationList_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIApplicationList_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIApplicationList_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIApplicationList_get__NewEnum(This,retval)	\
    ( (This)->lpVtbl -> get__NewEnum(This,retval) ) 

#define IRDPSRAPIApplicationList_get_Item(This,item,pApplication)	\
    ( (This)->lpVtbl -> get_Item(This,item,pApplication) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIApplicationList_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIApplicationFilter_INTERFACE_DEFINED__
#define __IRDPSRAPIApplicationFilter_INTERFACE_DEFINED__

/* interface IRDPSRAPIApplicationFilter */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIApplicationFilter;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("d20f10ca-6637-4f06-b1d5-277ea7e5160d")
    IRDPSRAPIApplicationFilter : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Applications( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplicationList **pApplications) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Windows( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIWindowList **pWindows) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Enabled( 
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Enabled( 
            /* [in] */ VARIANT_BOOL NewVal) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIApplicationFilterVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIApplicationFilter * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIApplicationFilter * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIApplicationFilter * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Applications )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplicationList **pApplications);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Windows )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIWindowList **pWindows);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Enabled )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Enabled )( 
            __RPC__in IRDPSRAPIApplicationFilter * This,
            /* [in] */ VARIANT_BOOL NewVal);
        
        END_INTERFACE
    } IRDPSRAPIApplicationFilterVtbl;

    interface IRDPSRAPIApplicationFilter
    {
        CONST_VTBL struct IRDPSRAPIApplicationFilterVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIApplicationFilter_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIApplicationFilter_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIApplicationFilter_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIApplicationFilter_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIApplicationFilter_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIApplicationFilter_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIApplicationFilter_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIApplicationFilter_get_Applications(This,pApplications)	\
    ( (This)->lpVtbl -> get_Applications(This,pApplications) ) 

#define IRDPSRAPIApplicationFilter_get_Windows(This,pWindows)	\
    ( (This)->lpVtbl -> get_Windows(This,pWindows) ) 

#define IRDPSRAPIApplicationFilter_get_Enabled(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Enabled(This,pRetVal) ) 

#define IRDPSRAPIApplicationFilter_put_Enabled(This,NewVal)	\
    ( (This)->lpVtbl -> put_Enabled(This,NewVal) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIApplicationFilter_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPISessionProperties_INTERFACE_DEFINED__
#define __IRDPSRAPISessionProperties_INTERFACE_DEFINED__

/* interface IRDPSRAPISessionProperties */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPISessionProperties;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("339b24f2-9bc0-4f16-9aac-f165433d13d4")
    IRDPSRAPISessionProperties : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Property( 
            /* [in] */ __RPC__in BSTR PropertyName,
            /* [retval][out] */ __RPC__out VARIANT *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Property( 
            /* [in] */ __RPC__in BSTR PropertyName,
            /* [in] */ VARIANT newVal) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPISessionPropertiesVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPISessionProperties * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPISessionProperties * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPISessionProperties * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPISessionProperties * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPISessionProperties * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPISessionProperties * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPISessionProperties * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Property )( 
            __RPC__in IRDPSRAPISessionProperties * This,
            /* [in] */ __RPC__in BSTR PropertyName,
            /* [retval][out] */ __RPC__out VARIANT *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Property )( 
            __RPC__in IRDPSRAPISessionProperties * This,
            /* [in] */ __RPC__in BSTR PropertyName,
            /* [in] */ VARIANT newVal);
        
        END_INTERFACE
    } IRDPSRAPISessionPropertiesVtbl;

    interface IRDPSRAPISessionProperties
    {
        CONST_VTBL struct IRDPSRAPISessionPropertiesVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPISessionProperties_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPISessionProperties_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPISessionProperties_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPISessionProperties_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPISessionProperties_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPISessionProperties_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPISessionProperties_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPISessionProperties_get_Property(This,PropertyName,pVal)	\
    ( (This)->lpVtbl -> get_Property(This,PropertyName,pVal) ) 

#define IRDPSRAPISessionProperties_put_Property(This,PropertyName,newVal)	\
    ( (This)->lpVtbl -> put_Property(This,PropertyName,newVal) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPISessionProperties_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIInvitation_INTERFACE_DEFINED__
#define __IRDPSRAPIInvitation_INTERFACE_DEFINED__

/* interface IRDPSRAPIInvitation */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIInvitation;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("4fac1d43-fc51-45bb-b1b4-2b53aa562fa3")
    IRDPSRAPIInvitation : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ConnectionString( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_GroupName( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Password( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_AttendeeLimit( 
            /* [retval][out] */ __RPC__out long *pRetVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_AttendeeLimit( 
            /* [in] */ long NewVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Revoked( 
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_Revoked( 
            /* [in] */ VARIANT_BOOL NewVal) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIInvitationVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIInvitation * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIInvitation * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIInvitation * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ConnectionString )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_GroupName )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Password )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_AttendeeLimit )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [retval][out] */ __RPC__out long *pRetVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_AttendeeLimit )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [in] */ long NewVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Revoked )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pRetVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_Revoked )( 
            __RPC__in IRDPSRAPIInvitation * This,
            /* [in] */ VARIANT_BOOL NewVal);
        
        END_INTERFACE
    } IRDPSRAPIInvitationVtbl;

    interface IRDPSRAPIInvitation
    {
        CONST_VTBL struct IRDPSRAPIInvitationVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIInvitation_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIInvitation_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIInvitation_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIInvitation_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIInvitation_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIInvitation_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIInvitation_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIInvitation_get_ConnectionString(This,pbstrVal)	\
    ( (This)->lpVtbl -> get_ConnectionString(This,pbstrVal) ) 

#define IRDPSRAPIInvitation_get_GroupName(This,pbstrVal)	\
    ( (This)->lpVtbl -> get_GroupName(This,pbstrVal) ) 

#define IRDPSRAPIInvitation_get_Password(This,pbstrVal)	\
    ( (This)->lpVtbl -> get_Password(This,pbstrVal) ) 

#define IRDPSRAPIInvitation_get_AttendeeLimit(This,pRetVal)	\
    ( (This)->lpVtbl -> get_AttendeeLimit(This,pRetVal) ) 

#define IRDPSRAPIInvitation_put_AttendeeLimit(This,NewVal)	\
    ( (This)->lpVtbl -> put_AttendeeLimit(This,NewVal) ) 

#define IRDPSRAPIInvitation_get_Revoked(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Revoked(This,pRetVal) ) 

#define IRDPSRAPIInvitation_put_Revoked(This,NewVal)	\
    ( (This)->lpVtbl -> put_Revoked(This,NewVal) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIInvitation_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIInvitationManager_INTERFACE_DEFINED__
#define __IRDPSRAPIInvitationManager_INTERFACE_DEFINED__

/* interface IRDPSRAPIInvitationManager */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIInvitationManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("4722b049-92c3-4c2d-8a65-f7348f644dcf")
    IRDPSRAPIInvitationManager : public IDispatch
    {
    public:
        virtual /* [id][restricted][propget] */ HRESULT STDMETHODCALLTYPE get__NewEnum( 
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Item( 
            /* [in] */ VARIANT item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitation **ppInvitation) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Count( 
            /* [retval][out] */ __RPC__out long *pRetVal) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE CreateInvitation( 
            /* [in] */ __RPC__in BSTR bstrAuthString,
            /* [in] */ __RPC__in BSTR bstrGroupName,
            /* [in] */ __RPC__in BSTR bstrPassword,
            /* [in] */ long AttendeeLimit,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitation **ppInvitation) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIInvitationManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIInvitationManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIInvitationManager * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIInvitationManager * This,
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
        
        /* [id][restricted][propget] */ HRESULT ( STDMETHODCALLTYPE *get__NewEnum )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Item )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [in] */ VARIANT item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitation **ppInvitation);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Count )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [retval][out] */ __RPC__out long *pRetVal);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *CreateInvitation )( 
            __RPC__in IRDPSRAPIInvitationManager * This,
            /* [in] */ __RPC__in BSTR bstrAuthString,
            /* [in] */ __RPC__in BSTR bstrGroupName,
            /* [in] */ __RPC__in BSTR bstrPassword,
            /* [in] */ long AttendeeLimit,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitation **ppInvitation);
        
        END_INTERFACE
    } IRDPSRAPIInvitationManagerVtbl;

    interface IRDPSRAPIInvitationManager
    {
        CONST_VTBL struct IRDPSRAPIInvitationManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIInvitationManager_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIInvitationManager_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIInvitationManager_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIInvitationManager_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIInvitationManager_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIInvitationManager_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIInvitationManager_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIInvitationManager_get__NewEnum(This,retval)	\
    ( (This)->lpVtbl -> get__NewEnum(This,retval) ) 

#define IRDPSRAPIInvitationManager_get_Item(This,item,ppInvitation)	\
    ( (This)->lpVtbl -> get_Item(This,item,ppInvitation) ) 

#define IRDPSRAPIInvitationManager_get_Count(This,pRetVal)	\
    ( (This)->lpVtbl -> get_Count(This,pRetVal) ) 

#define IRDPSRAPIInvitationManager_CreateInvitation(This,bstrAuthString,bstrGroupName,bstrPassword,AttendeeLimit,ppInvitation)	\
    ( (This)->lpVtbl -> CreateInvitation(This,bstrAuthString,bstrGroupName,bstrPassword,AttendeeLimit,ppInvitation) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIInvitationManager_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPITcpConnectionInfo_INTERFACE_DEFINED__
#define __IRDPSRAPITcpConnectionInfo_INTERFACE_DEFINED__

/* interface IRDPSRAPITcpConnectionInfo */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPITcpConnectionInfo;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("f74049a4-3d06-4028-8193-0a8c29bc2452")
    IRDPSRAPITcpConnectionInfo : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Protocol( 
            /* [retval][out] */ __RPC__out long *plProtocol) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_LocalPort( 
            /* [retval][out] */ __RPC__out long *plPort) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_LocalIP( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbsrLocalIP) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_PeerPort( 
            /* [retval][out] */ __RPC__out long *plPort) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_PeerIP( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrIP) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPITcpConnectionInfoVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPITcpConnectionInfo * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Protocol )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [retval][out] */ __RPC__out long *plProtocol);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_LocalPort )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [retval][out] */ __RPC__out long *plPort);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_LocalIP )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbsrLocalIP);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_PeerPort )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [retval][out] */ __RPC__out long *plPort);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_PeerIP )( 
            __RPC__in IRDPSRAPITcpConnectionInfo * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrIP);
        
        END_INTERFACE
    } IRDPSRAPITcpConnectionInfoVtbl;

    interface IRDPSRAPITcpConnectionInfo
    {
        CONST_VTBL struct IRDPSRAPITcpConnectionInfoVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPITcpConnectionInfo_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPITcpConnectionInfo_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPITcpConnectionInfo_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPITcpConnectionInfo_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPITcpConnectionInfo_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPITcpConnectionInfo_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPITcpConnectionInfo_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPITcpConnectionInfo_get_Protocol(This,plProtocol)	\
    ( (This)->lpVtbl -> get_Protocol(This,plProtocol) ) 

#define IRDPSRAPITcpConnectionInfo_get_LocalPort(This,plPort)	\
    ( (This)->lpVtbl -> get_LocalPort(This,plPort) ) 

#define IRDPSRAPITcpConnectionInfo_get_LocalIP(This,pbsrLocalIP)	\
    ( (This)->lpVtbl -> get_LocalIP(This,pbsrLocalIP) ) 

#define IRDPSRAPITcpConnectionInfo_get_PeerPort(This,plPort)	\
    ( (This)->lpVtbl -> get_PeerPort(This,plPort) ) 

#define IRDPSRAPITcpConnectionInfo_get_PeerIP(This,pbstrIP)	\
    ( (This)->lpVtbl -> get_PeerIP(This,pbstrIP) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPITcpConnectionInfo_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIAttendee_INTERFACE_DEFINED__
#define __IRDPSRAPIAttendee_INTERFACE_DEFINED__

/* interface IRDPSRAPIAttendee */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIAttendee;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("ec0671b3-1b78-4b80-a464-9132247543e3")
    IRDPSRAPIAttendee : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Id( 
            /* [retval][out] */ __RPC__out long *pId) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_RemoteName( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ControlLevel( 
            /* [retval][out] */ __RPC__out CTRL_LEVEL *pVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_ControlLevel( 
            /* [in] */ CTRL_LEVEL pNewVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Invitation( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitation **ppVal) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE TerminateConnection( void) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Flags( 
            /* [retval][out] */ __RPC__out long *plFlags) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ConnectivityInfo( 
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **ppVal) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIAttendeeVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIAttendee * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIAttendee * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIAttendee * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Id )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [retval][out] */ __RPC__out long *pId);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_RemoteName )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ControlLevel )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [retval][out] */ __RPC__out CTRL_LEVEL *pVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_ControlLevel )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [in] */ CTRL_LEVEL pNewVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Invitation )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitation **ppVal);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *TerminateConnection )( 
            __RPC__in IRDPSRAPIAttendee * This);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Flags )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [retval][out] */ __RPC__out long *plFlags);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ConnectivityInfo )( 
            __RPC__in IRDPSRAPIAttendee * This,
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **ppVal);
        
        END_INTERFACE
    } IRDPSRAPIAttendeeVtbl;

    interface IRDPSRAPIAttendee
    {
        CONST_VTBL struct IRDPSRAPIAttendeeVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIAttendee_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIAttendee_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIAttendee_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIAttendee_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIAttendee_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIAttendee_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIAttendee_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIAttendee_get_Id(This,pId)	\
    ( (This)->lpVtbl -> get_Id(This,pId) ) 

#define IRDPSRAPIAttendee_get_RemoteName(This,pVal)	\
    ( (This)->lpVtbl -> get_RemoteName(This,pVal) ) 

#define IRDPSRAPIAttendee_get_ControlLevel(This,pVal)	\
    ( (This)->lpVtbl -> get_ControlLevel(This,pVal) ) 

#define IRDPSRAPIAttendee_put_ControlLevel(This,pNewVal)	\
    ( (This)->lpVtbl -> put_ControlLevel(This,pNewVal) ) 

#define IRDPSRAPIAttendee_get_Invitation(This,ppVal)	\
    ( (This)->lpVtbl -> get_Invitation(This,ppVal) ) 

#define IRDPSRAPIAttendee_TerminateConnection(This)	\
    ( (This)->lpVtbl -> TerminateConnection(This) ) 

#define IRDPSRAPIAttendee_get_Flags(This,plFlags)	\
    ( (This)->lpVtbl -> get_Flags(This,plFlags) ) 

#define IRDPSRAPIAttendee_get_ConnectivityInfo(This,ppVal)	\
    ( (This)->lpVtbl -> get_ConnectivityInfo(This,ppVal) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIAttendee_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIAttendeeManager_INTERFACE_DEFINED__
#define __IRDPSRAPIAttendeeManager_INTERFACE_DEFINED__

/* interface IRDPSRAPIAttendeeManager */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIAttendeeManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("ba3a37e8-33da-4749-8da0-07fa34da7944")
    IRDPSRAPIAttendeeManager : public IDispatch
    {
    public:
        virtual /* [id][restricted][propget] */ HRESULT STDMETHODCALLTYPE get__NewEnum( 
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Item( 
            /* [in] */ long id,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendee **ppItem) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIAttendeeManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIAttendeeManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIAttendeeManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIAttendeeManager * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIAttendeeManager * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIAttendeeManager * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIAttendeeManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIAttendeeManager * This,
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
        
        /* [id][restricted][propget] */ HRESULT ( STDMETHODCALLTYPE *get__NewEnum )( 
            __RPC__in IRDPSRAPIAttendeeManager * This,
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Item )( 
            __RPC__in IRDPSRAPIAttendeeManager * This,
            /* [in] */ long id,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendee **ppItem);
        
        END_INTERFACE
    } IRDPSRAPIAttendeeManagerVtbl;

    interface IRDPSRAPIAttendeeManager
    {
        CONST_VTBL struct IRDPSRAPIAttendeeManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIAttendeeManager_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIAttendeeManager_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIAttendeeManager_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIAttendeeManager_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIAttendeeManager_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIAttendeeManager_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIAttendeeManager_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIAttendeeManager_get__NewEnum(This,retval)	\
    ( (This)->lpVtbl -> get__NewEnum(This,retval) ) 

#define IRDPSRAPIAttendeeManager_get_Item(This,id,ppItem)	\
    ( (This)->lpVtbl -> get_Item(This,id,ppItem) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIAttendeeManager_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIAttendeeDisconnectInfo_INTERFACE_DEFINED__
#define __IRDPSRAPIAttendeeDisconnectInfo_INTERFACE_DEFINED__

/* interface IRDPSRAPIAttendeeDisconnectInfo */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIAttendeeDisconnectInfo;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("c187689f-447c-44a1-9c14-fffbb3b7ec17")
    IRDPSRAPIAttendeeDisconnectInfo : public IDispatch
    {
    public:
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Attendee( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendee **retval) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Reason( 
            /* [retval][out] */ __RPC__out ATTENDEE_DISCONNECT_REASON *pReason) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Code( 
            /* [retval][out] */ __RPC__out long *pVal) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIAttendeeDisconnectInfoVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIAttendeeDisconnectInfo * This,
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
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Attendee )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendee **retval);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Reason )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [retval][out] */ __RPC__out ATTENDEE_DISCONNECT_REASON *pReason);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Code )( 
            __RPC__in IRDPSRAPIAttendeeDisconnectInfo * This,
            /* [retval][out] */ __RPC__out long *pVal);
        
        END_INTERFACE
    } IRDPSRAPIAttendeeDisconnectInfoVtbl;

    interface IRDPSRAPIAttendeeDisconnectInfo
    {
        CONST_VTBL struct IRDPSRAPIAttendeeDisconnectInfoVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIAttendeeDisconnectInfo_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIAttendeeDisconnectInfo_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIAttendeeDisconnectInfo_get_Attendee(This,retval)	\
    ( (This)->lpVtbl -> get_Attendee(This,retval) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_get_Reason(This,pReason)	\
    ( (This)->lpVtbl -> get_Reason(This,pReason) ) 

#define IRDPSRAPIAttendeeDisconnectInfo_get_Code(This,pVal)	\
    ( (This)->lpVtbl -> get_Code(This,pVal) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIAttendeeDisconnectInfo_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIVirtualChannel_INTERFACE_DEFINED__
#define __IRDPSRAPIVirtualChannel_INTERFACE_DEFINED__

/* interface IRDPSRAPIVirtualChannel */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIVirtualChannel;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("05e12f95-28b3-4c9a-8780-d0248574a1e0")
    IRDPSRAPIVirtualChannel : public IDispatch
    {
    public:
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE SendData( 
            /* [in] */ __RPC__in BSTR bstrData,
            /* [in] */ long lAttendeeId,
            /* [in] */ unsigned long ChannelSendFlags) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE SetAccess( 
            /* [in] */ long lAttendeeId,
            /* [in] */ CHANNEL_ACCESS_ENUM AccessType) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Name( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrName) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Flags( 
            /* [retval][out] */ __RPC__out long *plFlags) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Priority( 
            /* [retval][out] */ __RPC__out CHANNEL_PRIORITY *pPriority) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIVirtualChannelVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIVirtualChannel * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIVirtualChannel * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIVirtualChannel * This,
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
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *SendData )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [in] */ __RPC__in BSTR bstrData,
            /* [in] */ long lAttendeeId,
            /* [in] */ unsigned long ChannelSendFlags);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *SetAccess )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [in] */ long lAttendeeId,
            /* [in] */ CHANNEL_ACCESS_ENUM AccessType);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Name )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrName);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Flags )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [retval][out] */ __RPC__out long *plFlags);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Priority )( 
            __RPC__in IRDPSRAPIVirtualChannel * This,
            /* [retval][out] */ __RPC__out CHANNEL_PRIORITY *pPriority);
        
        END_INTERFACE
    } IRDPSRAPIVirtualChannelVtbl;

    interface IRDPSRAPIVirtualChannel
    {
        CONST_VTBL struct IRDPSRAPIVirtualChannelVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIVirtualChannel_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIVirtualChannel_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIVirtualChannel_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIVirtualChannel_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIVirtualChannel_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIVirtualChannel_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIVirtualChannel_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIVirtualChannel_SendData(This,bstrData,lAttendeeId,ChannelSendFlags)	\
    ( (This)->lpVtbl -> SendData(This,bstrData,lAttendeeId,ChannelSendFlags) ) 

#define IRDPSRAPIVirtualChannel_SetAccess(This,lAttendeeId,AccessType)	\
    ( (This)->lpVtbl -> SetAccess(This,lAttendeeId,AccessType) ) 

#define IRDPSRAPIVirtualChannel_get_Name(This,pbstrName)	\
    ( (This)->lpVtbl -> get_Name(This,pbstrName) ) 

#define IRDPSRAPIVirtualChannel_get_Flags(This,plFlags)	\
    ( (This)->lpVtbl -> get_Flags(This,plFlags) ) 

#define IRDPSRAPIVirtualChannel_get_Priority(This,pPriority)	\
    ( (This)->lpVtbl -> get_Priority(This,pPriority) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIVirtualChannel_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIVirtualChannelManager_INTERFACE_DEFINED__
#define __IRDPSRAPIVirtualChannelManager_INTERFACE_DEFINED__

/* interface IRDPSRAPIVirtualChannelManager */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIVirtualChannelManager;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("0d11c661-5d0d-4ee4-89df-2166ae1fdfed")
    IRDPSRAPIVirtualChannelManager : public IDispatch
    {
    public:
        virtual /* [id][restricted][propget] */ HRESULT STDMETHODCALLTYPE get__NewEnum( 
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Item( 
            /* [in] */ VARIANT item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannel **pChannel) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE CreateVirtualChannel( 
            /* [in] */ __RPC__in BSTR bstrChannelName,
            /* [in] */ CHANNEL_PRIORITY Priority,
            /* [in] */ unsigned long ChannelFlags,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannel **ppChannel) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIVirtualChannelManagerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIVirtualChannelManager * This,
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
        
        /* [id][restricted][propget] */ HRESULT ( STDMETHODCALLTYPE *get__NewEnum )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [retval][out] */ __RPC__deref_out_opt IUnknown **retval);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Item )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [in] */ VARIANT item,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannel **pChannel);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *CreateVirtualChannel )( 
            __RPC__in IRDPSRAPIVirtualChannelManager * This,
            /* [in] */ __RPC__in BSTR bstrChannelName,
            /* [in] */ CHANNEL_PRIORITY Priority,
            /* [in] */ unsigned long ChannelFlags,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannel **ppChannel);
        
        END_INTERFACE
    } IRDPSRAPIVirtualChannelManagerVtbl;

    interface IRDPSRAPIVirtualChannelManager
    {
        CONST_VTBL struct IRDPSRAPIVirtualChannelManagerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIVirtualChannelManager_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIVirtualChannelManager_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIVirtualChannelManager_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIVirtualChannelManager_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIVirtualChannelManager_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIVirtualChannelManager_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIVirtualChannelManager_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIVirtualChannelManager_get__NewEnum(This,retval)	\
    ( (This)->lpVtbl -> get__NewEnum(This,retval) ) 

#define IRDPSRAPIVirtualChannelManager_get_Item(This,item,pChannel)	\
    ( (This)->lpVtbl -> get_Item(This,item,pChannel) ) 

#define IRDPSRAPIVirtualChannelManager_CreateVirtualChannel(This,bstrChannelName,Priority,ChannelFlags,ppChannel)	\
    ( (This)->lpVtbl -> CreateVirtualChannel(This,bstrChannelName,Priority,ChannelFlags,ppChannel) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIVirtualChannelManager_INTERFACE_DEFINED__ */


#ifndef __IRDPSRAPIViewer_INTERFACE_DEFINED__
#define __IRDPSRAPIViewer_INTERFACE_DEFINED__

/* interface IRDPSRAPIViewer */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPIViewer;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("c6bfcd38-8ce9-404d-8ae8-f31d00c65cb5")
    IRDPSRAPIViewer : public IDispatch
    {
    public:
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Connect( 
            /* [in] */ __RPC__in BSTR bstrConnectionString,
            /* [in] */ __RPC__in BSTR bstrName,
            /* [in] */ __RPC__in BSTR bstrPassword) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Disconnect( void) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Attendees( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendeeManager **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Invitations( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitationManager **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ApplicationFilter( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplicationFilter **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_VirtualChannelManager( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannelManager **ppVal) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_SmartSizing( 
            /* [in] */ VARIANT_BOOL vbSmartSizing) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_SmartSizing( 
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pvbSmartSizing) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE RequestControl( 
            /* [in] */ CTRL_LEVEL CtrlLevel) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_DisconnectedText( 
            /* [in] */ __RPC__in BSTR bstrDisconnectedText) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_DisconnectedText( 
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrDisconnectedText) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE RequestColorDepthChange( 
            /* [in] */ long Bpp) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Properties( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPISessionProperties **ppVal) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE StartReverseConnectListener( 
            /* [in] */ __RPC__in BSTR bstrConnectionString,
            /* [in] */ __RPC__in BSTR bstrUserName,
            /* [in] */ __RPC__in BSTR bstrPassword,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrReverseConnectString) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPIViewerVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPIViewer * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPIViewer * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPIViewer * This,
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
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Connect )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ __RPC__in BSTR bstrConnectionString,
            /* [in] */ __RPC__in BSTR bstrName,
            /* [in] */ __RPC__in BSTR bstrPassword);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Disconnect )( 
            __RPC__in IRDPSRAPIViewer * This);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Attendees )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendeeManager **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Invitations )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitationManager **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ApplicationFilter )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplicationFilter **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_VirtualChannelManager )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannelManager **ppVal);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_SmartSizing )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ VARIANT_BOOL vbSmartSizing);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_SmartSizing )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__out VARIANT_BOOL *pvbSmartSizing);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *RequestControl )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ CTRL_LEVEL CtrlLevel);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_DisconnectedText )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ __RPC__in BSTR bstrDisconnectedText);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_DisconnectedText )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrDisconnectedText);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *RequestColorDepthChange )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ long Bpp);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Properties )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPISessionProperties **ppVal);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *StartReverseConnectListener )( 
            __RPC__in IRDPSRAPIViewer * This,
            /* [in] */ __RPC__in BSTR bstrConnectionString,
            /* [in] */ __RPC__in BSTR bstrUserName,
            /* [in] */ __RPC__in BSTR bstrPassword,
            /* [retval][out] */ __RPC__deref_out_opt BSTR *pbstrReverseConnectString);
        
        END_INTERFACE
    } IRDPSRAPIViewerVtbl;

    interface IRDPSRAPIViewer
    {
        CONST_VTBL struct IRDPSRAPIViewerVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPIViewer_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPIViewer_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPIViewer_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPIViewer_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPIViewer_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPIViewer_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPIViewer_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPIViewer_Connect(This,bstrConnectionString,bstrName,bstrPassword)	\
    ( (This)->lpVtbl -> Connect(This,bstrConnectionString,bstrName,bstrPassword) ) 

#define IRDPSRAPIViewer_Disconnect(This)	\
    ( (This)->lpVtbl -> Disconnect(This) ) 

#define IRDPSRAPIViewer_get_Attendees(This,ppVal)	\
    ( (This)->lpVtbl -> get_Attendees(This,ppVal) ) 

#define IRDPSRAPIViewer_get_Invitations(This,ppVal)	\
    ( (This)->lpVtbl -> get_Invitations(This,ppVal) ) 

#define IRDPSRAPIViewer_get_ApplicationFilter(This,ppVal)	\
    ( (This)->lpVtbl -> get_ApplicationFilter(This,ppVal) ) 

#define IRDPSRAPIViewer_get_VirtualChannelManager(This,ppVal)	\
    ( (This)->lpVtbl -> get_VirtualChannelManager(This,ppVal) ) 

#define IRDPSRAPIViewer_put_SmartSizing(This,vbSmartSizing)	\
    ( (This)->lpVtbl -> put_SmartSizing(This,vbSmartSizing) ) 

#define IRDPSRAPIViewer_get_SmartSizing(This,pvbSmartSizing)	\
    ( (This)->lpVtbl -> get_SmartSizing(This,pvbSmartSizing) ) 

#define IRDPSRAPIViewer_RequestControl(This,CtrlLevel)	\
    ( (This)->lpVtbl -> RequestControl(This,CtrlLevel) ) 

#define IRDPSRAPIViewer_put_DisconnectedText(This,bstrDisconnectedText)	\
    ( (This)->lpVtbl -> put_DisconnectedText(This,bstrDisconnectedText) ) 

#define IRDPSRAPIViewer_get_DisconnectedText(This,pbstrDisconnectedText)	\
    ( (This)->lpVtbl -> get_DisconnectedText(This,pbstrDisconnectedText) ) 

#define IRDPSRAPIViewer_RequestColorDepthChange(This,Bpp)	\
    ( (This)->lpVtbl -> RequestColorDepthChange(This,Bpp) ) 

#define IRDPSRAPIViewer_get_Properties(This,ppVal)	\
    ( (This)->lpVtbl -> get_Properties(This,ppVal) ) 

#define IRDPSRAPIViewer_StartReverseConnectListener(This,bstrConnectionString,bstrUserName,bstrPassword,pbstrReverseConnectString)	\
    ( (This)->lpVtbl -> StartReverseConnectListener(This,bstrConnectionString,bstrUserName,bstrPassword,pbstrReverseConnectString) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPIViewer_INTERFACE_DEFINED__ */


#ifndef __IRDPViewerRenderingSurface_INTERFACE_DEFINED__
#define __IRDPViewerRenderingSurface_INTERFACE_DEFINED__

/* interface IRDPViewerRenderingSurface */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPViewerRenderingSurface;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("56bfce32-83e9-414d-82e8-f31d01c62cb5")
    IRDPViewerRenderingSurface : public IUnknown
    {
    public:
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE SetRenderingSurface( 
            /* [in] */ __RPC__in_opt IUnknown *pRenderingSurface,
            /* [in] */ long surfaceWidth,
            /* [in] */ long surfaceHeight) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPViewerRenderingSurfaceVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPViewerRenderingSurface * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPViewerRenderingSurface * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPViewerRenderingSurface * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *SetRenderingSurface )( 
            __RPC__in IRDPViewerRenderingSurface * This,
            /* [in] */ __RPC__in_opt IUnknown *pRenderingSurface,
            /* [in] */ long surfaceWidth,
            /* [in] */ long surfaceHeight);
        
        END_INTERFACE
    } IRDPViewerRenderingSurfaceVtbl;

    interface IRDPViewerRenderingSurface
    {
        CONST_VTBL struct IRDPViewerRenderingSurfaceVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPViewerRenderingSurface_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPViewerRenderingSurface_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPViewerRenderingSurface_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPViewerRenderingSurface_SetRenderingSurface(This,pRenderingSurface,surfaceWidth,surfaceHeight)	\
    ( (This)->lpVtbl -> SetRenderingSurface(This,pRenderingSurface,surfaceWidth,surfaceHeight) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPViewerRenderingSurface_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_rdpencomapi_0000_0017 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion  
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0017_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0017_v0_0_s_ifspec;

#ifndef __IRDPSRAPISharingSession_INTERFACE_DEFINED__
#define __IRDPSRAPISharingSession_INTERFACE_DEFINED__

/* interface IRDPSRAPISharingSession */
/* [unique][dual][uuid][object] */ 


EXTERN_C const IID IID_IRDPSRAPISharingSession;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("eeb20886-e470-4cf6-842b-2739c0ec5cfb")
    IRDPSRAPISharingSession : public IDispatch
    {
    public:
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Open( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Close( void) = 0;
        
        virtual /* [id][propput] */ HRESULT STDMETHODCALLTYPE put_ColorDepth( 
            /* [in] */ long colorDepth) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ColorDepth( 
            /* [retval][out] */ __RPC__out long *pColorDepth) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Properties( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPISessionProperties **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Attendees( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendeeManager **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_Invitations( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitationManager **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_ApplicationFilter( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplicationFilter **ppVal) = 0;
        
        virtual /* [id][propget] */ HRESULT STDMETHODCALLTYPE get_VirtualChannelManager( 
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannelManager **ppVal) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Pause( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE Resume( void) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE ConnectToClient( 
            /* [in] */ __RPC__in BSTR bstrConnectionString) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE SetDesktopSharedRect( 
            /* [in] */ long left,
            /* [in] */ long top,
            /* [in] */ long right,
            /* [in] */ long bottom) = 0;
        
        virtual /* [id] */ HRESULT STDMETHODCALLTYPE GetDesktopSharedRect( 
            /* [out] */ __RPC__out long *pleft,
            /* [out] */ __RPC__out long *ptop,
            /* [out] */ __RPC__out long *pright,
            /* [out] */ __RPC__out long *pbottom) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct IRDPSRAPISharingSessionVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IRDPSRAPISharingSession * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IRDPSRAPISharingSession * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            IRDPSRAPISharingSession * This,
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
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Open )( 
            __RPC__in IRDPSRAPISharingSession * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Close )( 
            __RPC__in IRDPSRAPISharingSession * This);
        
        /* [id][propput] */ HRESULT ( STDMETHODCALLTYPE *put_ColorDepth )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [in] */ long colorDepth);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ColorDepth )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [retval][out] */ __RPC__out long *pColorDepth);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Properties )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPISessionProperties **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Attendees )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIAttendeeManager **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_Invitations )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIInvitationManager **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_ApplicationFilter )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIApplicationFilter **ppVal);
        
        /* [id][propget] */ HRESULT ( STDMETHODCALLTYPE *get_VirtualChannelManager )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [retval][out] */ __RPC__deref_out_opt IRDPSRAPIVirtualChannelManager **ppVal);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Pause )( 
            __RPC__in IRDPSRAPISharingSession * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *Resume )( 
            __RPC__in IRDPSRAPISharingSession * This);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *ConnectToClient )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [in] */ __RPC__in BSTR bstrConnectionString);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *SetDesktopSharedRect )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [in] */ long left,
            /* [in] */ long top,
            /* [in] */ long right,
            /* [in] */ long bottom);
        
        /* [id] */ HRESULT ( STDMETHODCALLTYPE *GetDesktopSharedRect )( 
            __RPC__in IRDPSRAPISharingSession * This,
            /* [out] */ __RPC__out long *pleft,
            /* [out] */ __RPC__out long *ptop,
            /* [out] */ __RPC__out long *pright,
            /* [out] */ __RPC__out long *pbottom);
        
        END_INTERFACE
    } IRDPSRAPISharingSessionVtbl;

    interface IRDPSRAPISharingSession
    {
        CONST_VTBL struct IRDPSRAPISharingSessionVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IRDPSRAPISharingSession_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IRDPSRAPISharingSession_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IRDPSRAPISharingSession_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IRDPSRAPISharingSession_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define IRDPSRAPISharingSession_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define IRDPSRAPISharingSession_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define IRDPSRAPISharingSession_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 


#define IRDPSRAPISharingSession_Open(This)	\
    ( (This)->lpVtbl -> Open(This) ) 

#define IRDPSRAPISharingSession_Close(This)	\
    ( (This)->lpVtbl -> Close(This) ) 

#define IRDPSRAPISharingSession_put_ColorDepth(This,colorDepth)	\
    ( (This)->lpVtbl -> put_ColorDepth(This,colorDepth) ) 

#define IRDPSRAPISharingSession_get_ColorDepth(This,pColorDepth)	\
    ( (This)->lpVtbl -> get_ColorDepth(This,pColorDepth) ) 

#define IRDPSRAPISharingSession_get_Properties(This,ppVal)	\
    ( (This)->lpVtbl -> get_Properties(This,ppVal) ) 

#define IRDPSRAPISharingSession_get_Attendees(This,ppVal)	\
    ( (This)->lpVtbl -> get_Attendees(This,ppVal) ) 

#define IRDPSRAPISharingSession_get_Invitations(This,ppVal)	\
    ( (This)->lpVtbl -> get_Invitations(This,ppVal) ) 

#define IRDPSRAPISharingSession_get_ApplicationFilter(This,ppVal)	\
    ( (This)->lpVtbl -> get_ApplicationFilter(This,ppVal) ) 

#define IRDPSRAPISharingSession_get_VirtualChannelManager(This,ppVal)	\
    ( (This)->lpVtbl -> get_VirtualChannelManager(This,ppVal) ) 

#define IRDPSRAPISharingSession_Pause(This)	\
    ( (This)->lpVtbl -> Pause(This) ) 

#define IRDPSRAPISharingSession_Resume(This)	\
    ( (This)->lpVtbl -> Resume(This) ) 

#define IRDPSRAPISharingSession_ConnectToClient(This,bstrConnectionString)	\
    ( (This)->lpVtbl -> ConnectToClient(This,bstrConnectionString) ) 

#define IRDPSRAPISharingSession_SetDesktopSharedRect(This,left,top,right,bottom)	\
    ( (This)->lpVtbl -> SetDesktopSharedRect(This,left,top,right,bottom) ) 

#define IRDPSRAPISharingSession_GetDesktopSharedRect(This,pleft,ptop,pright,pbottom)	\
    ( (This)->lpVtbl -> GetDesktopSharedRect(This,pleft,ptop,pright,pbottom) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IRDPSRAPISharingSession_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_rdpencomapi_0000_0018 */
/* [local] */ 

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion  


extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0018_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_rdpencomapi_0000_0018_v0_0_s_ifspec;


#ifndef __RDPCOMAPILib_LIBRARY_DEFINED__
#define __RDPCOMAPILib_LIBRARY_DEFINED__

/* library RDPCOMAPILib */
/* [version][uuid] */ 

#pragma region Application Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP)
typedef /* [public] */ 
enum __MIDL___MIDL_itf_rdpencomapi_0000_0018_0001
    {
        CONST_MAX_CHANNEL_MESSAGE_SIZE	= 1024,
        CONST_MAX_CHANNEL_NAME_LEN	= 8,
        CONST_MAX_LEGACY_CHANNEL_MESSAGE_SIZE	= 409600,
        CONST_ATTENDEE_ID_EVERYONE	= -1,
        CONST_ATTENDEE_ID_HOST	= 0,
        CONST_CONN_INTERVAL	= 50
    } 	RDPENCOMAPI_CONSTANTS;

typedef /* [hidden] */ struct __ReferenceRemainingTypes__
    {
    CTRL_LEVEL __ctrlLevel__;
    ATTENDEE_DISCONNECT_REASON __attendeeDisconnectReason__;
    CHANNEL_PRIORITY __channelPriority__;
    CHANNEL_FLAGS __channelFlags__;
    CHANNEL_ACCESS_ENUM __channelAccessEnum__;
    RDPENCOMAPI_ATTENDEE_FLAGS __rdpencomapiAttendeeFlags__;
    RDPSRAPI_WND_FLAGS __rdpsrapiWndFlags__;
    RDPSRAPI_APP_FLAGS __rdpsrapiAppFlags__;
    } 	__ReferenceRemainingTypes__;

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_APP) */
#pragma endregion  
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion  

EXTERN_C const IID LIBID_RDPCOMAPILib;

#ifndef ___IRDPSessionEvents_DISPINTERFACE_DEFINED__
#define ___IRDPSessionEvents_DISPINTERFACE_DEFINED__

/* dispinterface _IRDPSessionEvents */
/* [uuid] */ 


EXTERN_C const IID DIID__IRDPSessionEvents;

#if defined(__cplusplus) && !defined(CINTERFACE)

    MIDL_INTERFACE("98a97042-6698-40e9-8efd-b3200990004b")
    _IRDPSessionEvents : public IDispatch
    {
    };
    
#else 	/* C style interface */

    typedef struct _IRDPSessionEventsVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in _IRDPSessionEvents * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in _IRDPSessionEvents * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in _IRDPSessionEvents * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfoCount )( 
            __RPC__in _IRDPSessionEvents * This,
            /* [out] */ __RPC__out UINT *pctinfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetTypeInfo )( 
            __RPC__in _IRDPSessionEvents * This,
            /* [in] */ UINT iTInfo,
            /* [in] */ LCID lcid,
            /* [out] */ __RPC__deref_out_opt ITypeInfo **ppTInfo);
        
        HRESULT ( STDMETHODCALLTYPE *GetIDsOfNames )( 
            __RPC__in _IRDPSessionEvents * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [size_is][in] */ __RPC__in_ecount_full(cNames) LPOLESTR *rgszNames,
            /* [range][in] */ __RPC__in_range(0,16384) UINT cNames,
            /* [in] */ LCID lcid,
            /* [size_is][out] */ __RPC__out_ecount_full(cNames) DISPID *rgDispId);
        
        /* [local] */ HRESULT ( STDMETHODCALLTYPE *Invoke )( 
            _IRDPSessionEvents * This,
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
        
        END_INTERFACE
    } _IRDPSessionEventsVtbl;

    interface _IRDPSessionEvents
    {
        CONST_VTBL struct _IRDPSessionEventsVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define _IRDPSessionEvents_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define _IRDPSessionEvents_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define _IRDPSessionEvents_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define _IRDPSessionEvents_GetTypeInfoCount(This,pctinfo)	\
    ( (This)->lpVtbl -> GetTypeInfoCount(This,pctinfo) ) 

#define _IRDPSessionEvents_GetTypeInfo(This,iTInfo,lcid,ppTInfo)	\
    ( (This)->lpVtbl -> GetTypeInfo(This,iTInfo,lcid,ppTInfo) ) 

#define _IRDPSessionEvents_GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId)	\
    ( (This)->lpVtbl -> GetIDsOfNames(This,riid,rgszNames,cNames,lcid,rgDispId) ) 

#define _IRDPSessionEvents_Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr)	\
    ( (This)->lpVtbl -> Invoke(This,dispIdMember,riid,lcid,wFlags,pDispParams,pVarResult,pExcepInfo,puArgErr) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */


#endif 	/* ___IRDPSessionEvents_DISPINTERFACE_DEFINED__ */


EXTERN_C const CLSID CLSID_RDPViewer;

#ifdef __cplusplus

class DECLSPEC_UUID("32be5ed2-5c86-480f-a914-0ff8885a1b3f")
RDPViewer;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPISessionProperties;

#ifdef __cplusplus

class DECLSPEC_UUID("dd7594ff-ea2a-4c06-8fdf-132de48b6510")
RDPSRAPISessionProperties;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIInvitationManager;

#ifdef __cplusplus

class DECLSPEC_UUID("53d9c9db-75ab-4271-948a-4c4eb36a8f2b")
RDPSRAPIInvitationManager;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIInvitation;

#ifdef __cplusplus

class DECLSPEC_UUID("49174dc6-0731-4b5e-8ee1-83a63d3868fa")
RDPSRAPIInvitation;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIAttendeeManager;

#ifdef __cplusplus

class DECLSPEC_UUID("d7b13a01-f7d4-42a6-8595-12fc8c24e851")
RDPSRAPIAttendeeManager;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIAttendee;

#ifdef __cplusplus

class DECLSPEC_UUID("74f93bb5-755f-488e-8a29-2390108aef55")
RDPSRAPIAttendee;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIAttendeeDisconnectInfo;

#ifdef __cplusplus

class DECLSPEC_UUID("b47d7250-5bdb-405d-b487-caad9c56f4f8")
RDPSRAPIAttendeeDisconnectInfo;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIApplicationFilter;

#ifdef __cplusplus

class DECLSPEC_UUID("e35ace89-c7e8-427e-a4f9-b9da072826bd")
RDPSRAPIApplicationFilter;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIApplicationList;

#ifdef __cplusplus

class DECLSPEC_UUID("9e31c815-7433-4876-97fb-ed59fe2baa22")
RDPSRAPIApplicationList;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIApplication;

#ifdef __cplusplus

class DECLSPEC_UUID("c116a484-4b25-4b9f-8a54-b934b06e57fa")
RDPSRAPIApplication;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIWindowList;

#ifdef __cplusplus

class DECLSPEC_UUID("9c21e2b8-5dd4-42cc-81ba-1c099852e6fa")
RDPSRAPIWindowList;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPIWindow;

#ifdef __cplusplus

class DECLSPEC_UUID("03cf46db-ce45-4d36-86ed-ed28b74398bf")
RDPSRAPIWindow;
#endif

EXTERN_C const CLSID CLSID_RDPSRAPITcpConnectionInfo;

#ifdef __cplusplus

class DECLSPEC_UUID("be49db3f-ebb6-4278-8ce0-d5455833eaee")
RDPSRAPITcpConnectionInfo;
#endif

EXTERN_C const CLSID CLSID_RDPSession;

#ifdef __cplusplus

class DECLSPEC_UUID("9B78F0E6-3E05-4A5B-B2E8-E743A8956B65")
RDPSession;
#endif
#endif /* __RDPCOMAPILib_LIBRARY_DEFINED__ */

/* Additional Prototypes for ALL interfaces */

unsigned long             __RPC_USER  BSTR_UserSize(     __RPC__in unsigned long *, unsigned long            , __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserMarshal(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in BSTR * ); 
unsigned char * __RPC_USER  BSTR_UserUnmarshal(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out BSTR * ); 
void                      __RPC_USER  BSTR_UserFree(     __RPC__in unsigned long *, __RPC__in BSTR * ); 

unsigned long             __RPC_USER  VARIANT_UserSize(     __RPC__in unsigned long *, unsigned long            , __RPC__in VARIANT * ); 
unsigned char * __RPC_USER  VARIANT_UserMarshal(  __RPC__in unsigned long *, __RPC__inout_xcount(0) unsigned char *, __RPC__in VARIANT * ); 
unsigned char * __RPC_USER  VARIANT_UserUnmarshal(__RPC__in unsigned long *, __RPC__in_xcount(0) unsigned char *, __RPC__out VARIANT * ); 
void                      __RPC_USER  VARIANT_UserFree(     __RPC__in unsigned long *, __RPC__in VARIANT * ); 

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


