

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

#ifndef __napprotocol_h__
#define __napprotocol_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __INapSoHConstructor_FWD_DEFINED__
#define __INapSoHConstructor_FWD_DEFINED__
typedef interface INapSoHConstructor INapSoHConstructor;

#endif 	/* __INapSoHConstructor_FWD_DEFINED__ */


#ifndef __INapSoHProcessor_FWD_DEFINED__
#define __INapSoHProcessor_FWD_DEFINED__
typedef interface INapSoHProcessor INapSoHProcessor;

#endif 	/* __INapSoHProcessor_FWD_DEFINED__ */


/* header files for imported files */
#include "NapTypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_napprotocol_0000_0000 */
/* [local] */ 

#include <winapifamily.h>
#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)


extern RPC_IF_HANDLE __MIDL_itf_napprotocol_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napprotocol_0000_0000_v0_0_s_ifspec;

#ifndef __INapSoHTypes_INTERFACE_DEFINED__
#define __INapSoHTypes_INTERFACE_DEFINED__

/* interface INapSoHTypes */
/* [unique] */ 

typedef 
enum tagSoHAttributeType
    {
        sohAttributeTypeSystemHealthId	= 2,
        sohAttributeTypeIpv4FixupServers	= 3,
        sohAttributeTypeComplianceResultCodes	= 4,
        sohAttributeTypeTimeOfLastUpdate	= 5,
        sohAttributeTypeClientId	= 6,
        sohAttributeTypeVendorSpecific	= 7,
        sohAttributeTypeHealthClass	= 8,
        sohAttributeTypeSoftwareVersion	= 9,
        sohAttributeTypeProductName	= 10,
        sohAttributeTypeHealthClassStatus	= 11,
        sohAttributeTypeSoHGenerationTime	= 12,
        sohAttributeTypeErrorCodes	= 13,
        sohAttributeTypeFailureCategory	= 14,
        sohAttributeTypeIpv6FixupServers	= 15,
        sohAttributeTypeExtendedIsolationState	= 16
    } 	SoHAttributeType;

typedef 
enum tagHealthClassValue
    {
        healthClassFirewall	= 0,
        healthClassPatchLevel	= 1,
        healthClassAntiVirus	= 2,
        healthClassCriticalUpdate	= 3,
        healthClassReserved	= 128
    } 	HealthClassValue;

typedef /* [switch_type] */ union tagSoHAttributeValue
    {
    /* [case()] */ SystemHealthEntityId idVal;
    /* [case()] */ struct tagIpv4Addresses
        {
        /* [range] */ UINT16 count;
        /* [size_is] */ Ipv4Address *addresses;
        } 	v4AddressesVal;
    /* [case()] */ struct tagIpv6Addresses
        {
        /* [range] */ UINT16 count;
        /* [size_is] */ Ipv6Address *addresses;
        } 	v6AddressesVal;
    /* [case()] */ ResultCodes codesVal;
    /* [case()] */ FILETIME dateTimeVal;
    /* [case()] */ struct tagVendorSpecific
        {
        UINT32 vendorId;
        /* [range] */ UINT16 size;
        /* [size_is] */ BYTE *vendorSpecificData;
        } 	vendorSpecificVal;
    /* [case()] */ UINT8 uint8Val;
    /* [default] */ struct tagOctetString
        {
        /* [range] */ UINT16 size;
        /* [size_is] */ BYTE *data;
        } 	octetStringVal;
    } 	SoHAttributeValue;



extern RPC_IF_HANDLE INapSoHTypes_v0_0_c_ifspec;
extern RPC_IF_HANDLE INapSoHTypes_v0_0_s_ifspec;
#endif /* __INapSoHTypes_INTERFACE_DEFINED__ */

#ifndef __INapSoHConstructor_INTERFACE_DEFINED__
#define __INapSoHConstructor_INTERFACE_DEFINED__

/* interface INapSoHConstructor */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapSoHConstructor;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("35298344-96A6-45e7-9B6B-62ECC6E09920")
    INapSoHConstructor : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [in] */ SystemHealthEntityId id,
            /* [in] */ BOOL isRequest) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE AppendAttribute( 
            /* [in] */ SoHAttributeType type,
            /* [switch_is][in] */ __RPC__in const SoHAttributeValue *value) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetSoH( 
            /* [out] */ __RPC__deref_out_opt SoH **soh) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Validate( 
            /* [in] */ __RPC__in const SoH *soh,
            /* [in] */ BOOL isRequest) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapSoHConstructorVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapSoHConstructor * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapSoHConstructor * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapSoHConstructor * This);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in INapSoHConstructor * This,
            /* [in] */ SystemHealthEntityId id,
            /* [in] */ BOOL isRequest);
        
        HRESULT ( STDMETHODCALLTYPE *AppendAttribute )( 
            __RPC__in INapSoHConstructor * This,
            /* [in] */ SoHAttributeType type,
            /* [switch_is][in] */ __RPC__in const SoHAttributeValue *value);
        
        HRESULT ( STDMETHODCALLTYPE *GetSoH )( 
            __RPC__in INapSoHConstructor * This,
            /* [out] */ __RPC__deref_out_opt SoH **soh);
        
        HRESULT ( STDMETHODCALLTYPE *Validate )( 
            __RPC__in INapSoHConstructor * This,
            /* [in] */ __RPC__in const SoH *soh,
            /* [in] */ BOOL isRequest);
        
        END_INTERFACE
    } INapSoHConstructorVtbl;

    interface INapSoHConstructor
    {
        CONST_VTBL struct INapSoHConstructorVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapSoHConstructor_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapSoHConstructor_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapSoHConstructor_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapSoHConstructor_Initialize(This,id,isRequest)	\
    ( (This)->lpVtbl -> Initialize(This,id,isRequest) ) 

#define INapSoHConstructor_AppendAttribute(This,type,value)	\
    ( (This)->lpVtbl -> AppendAttribute(This,type,value) ) 

#define INapSoHConstructor_GetSoH(This,soh)	\
    ( (This)->lpVtbl -> GetSoH(This,soh) ) 

#define INapSoHConstructor_Validate(This,soh,isRequest)	\
    ( (This)->lpVtbl -> Validate(This,soh,isRequest) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapSoHConstructor_INTERFACE_DEFINED__ */


#ifndef __INapSoHProcessor_INTERFACE_DEFINED__
#define __INapSoHProcessor_INTERFACE_DEFINED__

/* interface INapSoHProcessor */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_INapSoHProcessor;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("FB2FA8B0-2CD5-457d-ABA8-4376F63EA1C0")
    INapSoHProcessor : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [in] */ __RPC__in const SoH *soh,
            /* [in] */ BOOL isRequest,
            /* [out] */ __RPC__out SystemHealthEntityId *id) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE FindNextAttribute( 
            /* [in] */ UINT16 fromLocation,
            /* [in] */ SoHAttributeType type,
            /* [out] */ __RPC__out UINT16 *attributeLocation) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetAttribute( 
            /* [in] */ UINT16 attributeLocation,
            /* [out] */ __RPC__out SoHAttributeType *type,
            /* [switch_is][out] */ __RPC__deref_out_opt SoHAttributeValue **value) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetNumberOfAttributes( 
            /* [out] */ __RPC__out UINT16 *attributeCount) = 0;
        
    };
    
    
#else 	/* C style interface */

    typedef struct INapSoHProcessorVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in INapSoHProcessor * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            _COM_Outptr_  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in INapSoHProcessor * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in INapSoHProcessor * This);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in INapSoHProcessor * This,
            /* [in] */ __RPC__in const SoH *soh,
            /* [in] */ BOOL isRequest,
            /* [out] */ __RPC__out SystemHealthEntityId *id);
        
        HRESULT ( STDMETHODCALLTYPE *FindNextAttribute )( 
            __RPC__in INapSoHProcessor * This,
            /* [in] */ UINT16 fromLocation,
            /* [in] */ SoHAttributeType type,
            /* [out] */ __RPC__out UINT16 *attributeLocation);
        
        HRESULT ( STDMETHODCALLTYPE *GetAttribute )( 
            __RPC__in INapSoHProcessor * This,
            /* [in] */ UINT16 attributeLocation,
            /* [out] */ __RPC__out SoHAttributeType *type,
            /* [switch_is][out] */ __RPC__deref_out_opt SoHAttributeValue **value);
        
        HRESULT ( STDMETHODCALLTYPE *GetNumberOfAttributes )( 
            __RPC__in INapSoHProcessor * This,
            /* [out] */ __RPC__out UINT16 *attributeCount);
        
        END_INTERFACE
    } INapSoHProcessorVtbl;

    interface INapSoHProcessor
    {
        CONST_VTBL struct INapSoHProcessorVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define INapSoHProcessor_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define INapSoHProcessor_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define INapSoHProcessor_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define INapSoHProcessor_Initialize(This,soh,isRequest,id)	\
    ( (This)->lpVtbl -> Initialize(This,soh,isRequest,id) ) 

#define INapSoHProcessor_FindNextAttribute(This,fromLocation,type,attributeLocation)	\
    ( (This)->lpVtbl -> FindNextAttribute(This,fromLocation,type,attributeLocation) ) 

#define INapSoHProcessor_GetAttribute(This,attributeLocation,type,value)	\
    ( (This)->lpVtbl -> GetAttribute(This,attributeLocation,type,value) ) 

#define INapSoHProcessor_GetNumberOfAttributes(This,attributeCount)	\
    ( (This)->lpVtbl -> GetNumberOfAttributes(This,attributeCount) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __INapSoHProcessor_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_napprotocol_0000_0003 */
/* [local] */ 

// Declarations of CLSIDs of objects provided  
// by the system. Link to uuid.lib to get them 
// defined.                                    
EXTERN_C const CLSID CLSID_NapSoHConstructor;
EXTERN_C const CLSID CLSID_NapSoHProcessor;
#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion


extern RPC_IF_HANDLE __MIDL_itf_napprotocol_0000_0003_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_napprotocol_0000_0003_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif


