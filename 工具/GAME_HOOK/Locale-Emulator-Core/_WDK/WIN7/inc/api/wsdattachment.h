

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 7.00.0555 */
/* Compiler settings for wsdattachment.idl:
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

#ifndef __wsdattachment_h__
#define __wsdattachment_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IWSDAttachment_FWD_DEFINED__
#define __IWSDAttachment_FWD_DEFINED__
typedef interface IWSDAttachment IWSDAttachment;
#endif 	/* __IWSDAttachment_FWD_DEFINED__ */


#ifndef __IWSDOutboundAttachment_FWD_DEFINED__
#define __IWSDOutboundAttachment_FWD_DEFINED__
typedef interface IWSDOutboundAttachment IWSDOutboundAttachment;
#endif 	/* __IWSDOutboundAttachment_FWD_DEFINED__ */


#ifndef __IWSDInboundAttachment_FWD_DEFINED__
#define __IWSDInboundAttachment_FWD_DEFINED__
typedef interface IWSDInboundAttachment IWSDInboundAttachment;
#endif 	/* __IWSDInboundAttachment_FWD_DEFINED__ */


/* header files for imported files */
#include "objidl.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_wsdattachment_0000_0000 */
/* [local] */ 




HRESULT WINAPI
WSDCreateOutboundAttachment(
    __deref_out IWSDOutboundAttachment** ppAttachment);


extern RPC_IF_HANDLE __MIDL_itf_wsdattachment_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_wsdattachment_0000_0000_v0_0_s_ifspec;

#ifndef __IWSDAttachment_INTERFACE_DEFINED__
#define __IWSDAttachment_INTERFACE_DEFINED__

/* interface IWSDAttachment */
/* [uuid][object] */ 


EXTERN_C const IID IID_IWSDAttachment;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("5d55a616-9df8-4b09-b156-9ba351a48b76")
    IWSDAttachment : public IUnknown
    {
    public:
    };
    
#else 	/* C style interface */

    typedef struct IWSDAttachmentVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IWSDAttachment * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IWSDAttachment * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IWSDAttachment * This);
        
        END_INTERFACE
    } IWSDAttachmentVtbl;

    interface IWSDAttachment
    {
        CONST_VTBL struct IWSDAttachmentVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWSDAttachment_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWSDAttachment_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWSDAttachment_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWSDAttachment_INTERFACE_DEFINED__ */


#ifndef __IWSDOutboundAttachment_INTERFACE_DEFINED__
#define __IWSDOutboundAttachment_INTERFACE_DEFINED__

/* interface IWSDOutboundAttachment */
/* [local][uuid][object] */ 


EXTERN_C const IID IID_IWSDOutboundAttachment;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("aa302f8d-5a22-4ba5-b392-aa8486f4c15d")
    IWSDOutboundAttachment : public IWSDAttachment
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Write( 
            /* [annotation][size_is][in] */ 
            __in_ecount(dwBytesToWrite)  const BYTE *pBuffer,
            /* [in] */ DWORD dwBytesToWrite,
            /* [annotation][out] */ 
            __out  LPDWORD pdwNumberOfBytesWritten) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Close( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Abort( void) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IWSDOutboundAttachmentVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IWSDOutboundAttachment * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IWSDOutboundAttachment * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IWSDOutboundAttachment * This);
        
        HRESULT ( STDMETHODCALLTYPE *Write )( 
            IWSDOutboundAttachment * This,
            /* [annotation][size_is][in] */ 
            __in_ecount(dwBytesToWrite)  const BYTE *pBuffer,
            /* [in] */ DWORD dwBytesToWrite,
            /* [annotation][out] */ 
            __out  LPDWORD pdwNumberOfBytesWritten);
        
        HRESULT ( STDMETHODCALLTYPE *Close )( 
            IWSDOutboundAttachment * This);
        
        HRESULT ( STDMETHODCALLTYPE *Abort )( 
            IWSDOutboundAttachment * This);
        
        END_INTERFACE
    } IWSDOutboundAttachmentVtbl;

    interface IWSDOutboundAttachment
    {
        CONST_VTBL struct IWSDOutboundAttachmentVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWSDOutboundAttachment_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWSDOutboundAttachment_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWSDOutboundAttachment_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 



#define IWSDOutboundAttachment_Write(This,pBuffer,dwBytesToWrite,pdwNumberOfBytesWritten)	\
    ( (This)->lpVtbl -> Write(This,pBuffer,dwBytesToWrite,pdwNumberOfBytesWritten) ) 

#define IWSDOutboundAttachment_Close(This)	\
    ( (This)->lpVtbl -> Close(This) ) 

#define IWSDOutboundAttachment_Abort(This)	\
    ( (This)->lpVtbl -> Abort(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWSDOutboundAttachment_INTERFACE_DEFINED__ */


#ifndef __IWSDInboundAttachment_INTERFACE_DEFINED__
#define __IWSDInboundAttachment_INTERFACE_DEFINED__

/* interface IWSDInboundAttachment */
/* [local][uuid][object] */ 


EXTERN_C const IID IID_IWSDInboundAttachment;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("5bd6ca65-233c-4fb8-9f7a-2641619655c9")
    IWSDInboundAttachment : public IWSDAttachment
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Read( 
            /* [annotation][length_is][size_is][out] */ 
            __out_ecount_part(dwBytesToRead, *pdwNumberOfBytesRead)  BYTE *pBuffer,
            /* [in] */ DWORD dwBytesToRead,
            /* [out] */ LPDWORD pdwNumberOfBytesRead) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Close( void) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IWSDInboundAttachmentVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IWSDInboundAttachment * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IWSDInboundAttachment * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IWSDInboundAttachment * This);
        
        HRESULT ( STDMETHODCALLTYPE *Read )( 
            IWSDInboundAttachment * This,
            /* [annotation][length_is][size_is][out] */ 
            __out_ecount_part(dwBytesToRead, *pdwNumberOfBytesRead)  BYTE *pBuffer,
            /* [in] */ DWORD dwBytesToRead,
            /* [out] */ LPDWORD pdwNumberOfBytesRead);
        
        HRESULT ( STDMETHODCALLTYPE *Close )( 
            IWSDInboundAttachment * This);
        
        END_INTERFACE
    } IWSDInboundAttachmentVtbl;

    interface IWSDInboundAttachment
    {
        CONST_VTBL struct IWSDInboundAttachmentVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IWSDInboundAttachment_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IWSDInboundAttachment_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IWSDInboundAttachment_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 



#define IWSDInboundAttachment_Read(This,pBuffer,dwBytesToRead,pdwNumberOfBytesRead)	\
    ( (This)->lpVtbl -> Read(This,pBuffer,dwBytesToRead,pdwNumberOfBytesRead) ) 

#define IWSDInboundAttachment_Close(This)	\
    ( (This)->lpVtbl -> Close(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IWSDInboundAttachment_INTERFACE_DEFINED__ */


/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif



