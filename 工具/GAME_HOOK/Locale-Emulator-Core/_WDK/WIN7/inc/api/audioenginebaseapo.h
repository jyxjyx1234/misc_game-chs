

/* this ALWAYS GENERATED file contains the definitions for the interfaces */


 /* File created by MIDL compiler version 7.00.0555 */
/* Compiler settings for audioenginebaseapo.idl:
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

#ifndef __audioenginebaseapo_h__
#define __audioenginebaseapo_h__

#if defined(_MSC_VER) && (_MSC_VER >= 1020)
#pragma once
#endif

/* Forward Declarations */ 

#ifndef __IAudioProcessingObjectRT_FWD_DEFINED__
#define __IAudioProcessingObjectRT_FWD_DEFINED__
typedef interface IAudioProcessingObjectRT IAudioProcessingObjectRT;
#endif 	/* __IAudioProcessingObjectRT_FWD_DEFINED__ */


#ifndef __IAudioProcessingObjectVBR_FWD_DEFINED__
#define __IAudioProcessingObjectVBR_FWD_DEFINED__
typedef interface IAudioProcessingObjectVBR IAudioProcessingObjectVBR;
#endif 	/* __IAudioProcessingObjectVBR_FWD_DEFINED__ */


#ifndef __IAudioProcessingObjectConfiguration_FWD_DEFINED__
#define __IAudioProcessingObjectConfiguration_FWD_DEFINED__
typedef interface IAudioProcessingObjectConfiguration IAudioProcessingObjectConfiguration;
#endif 	/* __IAudioProcessingObjectConfiguration_FWD_DEFINED__ */


#ifndef __IAudioProcessingObject_FWD_DEFINED__
#define __IAudioProcessingObject_FWD_DEFINED__
typedef interface IAudioProcessingObject IAudioProcessingObject;
#endif 	/* __IAudioProcessingObject_FWD_DEFINED__ */


#ifndef __IAudioSystemEffects_FWD_DEFINED__
#define __IAudioSystemEffects_FWD_DEFINED__
typedef interface IAudioSystemEffects IAudioSystemEffects;
#endif 	/* __IAudioSystemEffects_FWD_DEFINED__ */


#ifndef __IAudioSystemEffectsCustomFormats_FWD_DEFINED__
#define __IAudioSystemEffectsCustomFormats_FWD_DEFINED__
typedef interface IAudioSystemEffectsCustomFormats IAudioSystemEffectsCustomFormats;
#endif 	/* __IAudioSystemEffectsCustomFormats_FWD_DEFINED__ */


/* header files for imported files */
#include "oaidl.h"
#include "ocidl.h"
#include "mmdeviceapi.h"
#include "audiomediatype.h"
#include "AudioAPOTypes.h"

#ifdef __cplusplus
extern "C"{
#endif 


/* interface __MIDL_itf_audioenginebaseapo_0000_0000 */
/* [local] */ 

//
// Error Codes for APO
// The facility code for APOs is 0x87D.
//
// The object has already been initialized.
#define APOERR_ALREADY_INITIALIZED               _HRESULT_TYPEDEF_(0x887D0001)
// Object/structure is not initialized.
#define APOERR_NOT_INITIALIZED                   _HRESULT_TYPEDEF_(0x887D0002)
// a pin supporting the format cannot be found.
#define APOERR_FORMAT_NOT_SUPPORTED              _HRESULT_TYPEDEF_(0x887D0003)
// Invalid CLSID in an APO Initialization structure
#define APOERR_INVALID_APO_CLSID                 _HRESULT_TYPEDEF_(0x887D0004)
// Buffers overlap on an APO that does not accept in-place buffers.
#define APOERR_BUFFERS_OVERLAP                   _HRESULT_TYPEDEF_(0x887D0005)
// APO is already in an unlocked state
#define APOERR_ALREADY_UNLOCKED                  _HRESULT_TYPEDEF_(0x887D0006)
// number of input or output connections not valid on this APO
#define APOERR_NUM_CONNECTIONS_INVALID           _HRESULT_TYPEDEF_(0x887D0007)
// Output maxFrameCount not large enough.
#define APOERR_INVALID_OUTPUT_MAXFRAMECOUNT      _HRESULT_TYPEDEF_(0x887D0008)
// Invalid connection format for this operation
#define APOERR_INVALID_CONNECTION_FORMAT         _HRESULT_TYPEDEF_(0x887D0009)
// APO is locked ready to process and can not be changed
#define APOERR_APO_LOCKED                        _HRESULT_TYPEDEF_(0x887D000A)
// Invalid coefficient count
#define APOERR_INVALID_COEFFCOUNT                _HRESULT_TYPEDEF_(0x887D000B)
// Invalid coefficient
#define APOERR_INVALID_COEFFICIENT               _HRESULT_TYPEDEF_(0x887D000C)
// an invalid curve parameter was specified
#define APOERR_INVALID_CURVE_PARAM               _HRESULT_TYPEDEF_(0x887D000D)
//
// Signatures for data structures.
//
#define APO_CONNECTION_DESCRIPTOR_SIGNATURE     'ACDS'
#define APO_CONNECTION_PROPERTY_SIGNATURE       'ACPS'

// Min and max framerates for the engine
#define AUDIO_MIN_FRAMERATE                    10.0     // Minimum frame rate for APOs
#define AUDIO_MAX_FRAMERATE                     384000.0 // Maximum frame rate for APOs

// Min and max # of channels (samples per frame) for the APOs
#define AUDIO_MIN_CHANNELS                      1    // Current minimum number of channels for APOs
#define AUDIO_MAX_CHANNELS                      4096 // Current maximum number of channels for APOs

//-----------------------------------------------------------------------------

typedef 
enum APO_CONNECTION_BUFFER_TYPE
    {	APO_CONNECTION_BUFFER_TYPE_ALLOCATED	= 0,
	APO_CONNECTION_BUFFER_TYPE_EXTERNAL	= 1,
	APO_CONNECTION_BUFFER_TYPE_DEPENDANT	= 2
    } 	APO_CONNECTION_BUFFER_TYPE;

typedef struct APO_CONNECTION_DESCRIPTOR
    {
    APO_CONNECTION_BUFFER_TYPE Type;
    UINT_PTR pBuffer;
    UINT32 u32MaxFrameCount;
    IAudioMediaType *pFormat;
    UINT32 u32Signature;
    } 	APO_CONNECTION_DESCRIPTOR;

typedef 
enum APO_FLAG
    {	APO_FLAG_NONE	= 0,
	APO_FLAG_INPLACE	= 0x1,
	APO_FLAG_SAMPLESPERFRAME_MUST_MATCH	= 0x2,
	APO_FLAG_FRAMESPERSECOND_MUST_MATCH	= 0x4,
	APO_FLAG_BITSPERSAMPLE_MUST_MATCH	= 0x8,
	APO_FLAG_DEFAULT	= ( ( APO_FLAG_SAMPLESPERFRAME_MUST_MATCH | APO_FLAG_FRAMESPERSECOND_MUST_MATCH )  | APO_FLAG_BITSPERSAMPLE_MUST_MATCH ) 
    } 	APO_FLAG;

typedef struct APO_REG_PROPERTIES
    {
    CLSID clsid;
    APO_FLAG Flags;
    WCHAR szFriendlyName[ 256 ];
    WCHAR szCopyrightInfo[ 256 ];
    UINT32 u32MajorVersion;
    UINT32 u32MinorVersion;
    UINT32 u32MinInputConnections;
    UINT32 u32MaxInputConnections;
    UINT32 u32MinOutputConnections;
    UINT32 u32MaxOutputConnections;
    UINT32 u32MaxInstances;
    UINT32 u32NumAPOInterfaces;
    IID iidAPOInterfaceList[ 1 ];
    } 	APO_REG_PROPERTIES;

typedef struct APO_REG_PROPERTIES *PAPO_REG_PROPERTIES;

typedef struct APOInitBaseStruct
    {
    UINT32 cbSize;
    CLSID clsid;
    } 	APOInitBaseStruct;

typedef 
enum AUDIO_FLOW_TYPE
    {	AUDIO_FLOW_PULL	= 0,
	AUDIO_FLOW_PUSH	= ( AUDIO_FLOW_PULL + 1 ) 
    } 	AUDIO_FLOW_TYPE;



extern RPC_IF_HANDLE __MIDL_itf_audioenginebaseapo_0000_0000_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_audioenginebaseapo_0000_0000_v0_0_s_ifspec;

#ifndef __IAudioProcessingObjectRT_INTERFACE_DEFINED__
#define __IAudioProcessingObjectRT_INTERFACE_DEFINED__

/* interface IAudioProcessingObjectRT */
/* [local][unique][uuid][object] */ 


EXTERN_C const IID IID_IAudioProcessingObjectRT;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("9E1D6A6D-DDBC-4E95-A4C7-AD64BA37846C")
    IAudioProcessingObjectRT : public IUnknown
    {
    public:
        virtual void STDMETHODCALLTYPE APOProcess( 
            /* [annotation][in] */ 
            __in  UINT32 u32NumInputConnections,
            /* [annotation][in] */ 
            __in  APO_CONNECTION_PROPERTY **ppInputConnections,
            /* [annotation][in] */ 
            __in  UINT32 u32NumOutputConnections,
            /* [annotation][out][in] */ 
            __inout  APO_CONNECTION_PROPERTY **ppOutputConnections) = 0;
        
        virtual UINT32 STDMETHODCALLTYPE CalcInputFrames( 
            /* [in] */ UINT32 u32OutputFrameCount) = 0;
        
        virtual UINT32 STDMETHODCALLTYPE CalcOutputFrames( 
            /* [annotation][in] */ 
            __in  UINT32 u32InputFrameCount) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IAudioProcessingObjectRTVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IAudioProcessingObjectRT * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IAudioProcessingObjectRT * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IAudioProcessingObjectRT * This);
        
        void ( STDMETHODCALLTYPE *APOProcess )( 
            IAudioProcessingObjectRT * This,
            /* [annotation][in] */ 
            __in  UINT32 u32NumInputConnections,
            /* [annotation][in] */ 
            __in  APO_CONNECTION_PROPERTY **ppInputConnections,
            /* [annotation][in] */ 
            __in  UINT32 u32NumOutputConnections,
            /* [annotation][out][in] */ 
            __inout  APO_CONNECTION_PROPERTY **ppOutputConnections);
        
        UINT32 ( STDMETHODCALLTYPE *CalcInputFrames )( 
            IAudioProcessingObjectRT * This,
            /* [in] */ UINT32 u32OutputFrameCount);
        
        UINT32 ( STDMETHODCALLTYPE *CalcOutputFrames )( 
            IAudioProcessingObjectRT * This,
            /* [annotation][in] */ 
            __in  UINT32 u32InputFrameCount);
        
        END_INTERFACE
    } IAudioProcessingObjectRTVtbl;

    interface IAudioProcessingObjectRT
    {
        CONST_VTBL struct IAudioProcessingObjectRTVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IAudioProcessingObjectRT_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IAudioProcessingObjectRT_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IAudioProcessingObjectRT_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IAudioProcessingObjectRT_APOProcess(This,u32NumInputConnections,ppInputConnections,u32NumOutputConnections,ppOutputConnections)	\
    ( (This)->lpVtbl -> APOProcess(This,u32NumInputConnections,ppInputConnections,u32NumOutputConnections,ppOutputConnections) ) 

#define IAudioProcessingObjectRT_CalcInputFrames(This,u32OutputFrameCount)	\
    ( (This)->lpVtbl -> CalcInputFrames(This,u32OutputFrameCount) ) 

#define IAudioProcessingObjectRT_CalcOutputFrames(This,u32InputFrameCount)	\
    ( (This)->lpVtbl -> CalcOutputFrames(This,u32InputFrameCount) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IAudioProcessingObjectRT_INTERFACE_DEFINED__ */


#ifndef __IAudioProcessingObjectVBR_INTERFACE_DEFINED__
#define __IAudioProcessingObjectVBR_INTERFACE_DEFINED__

/* interface IAudioProcessingObjectVBR */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IAudioProcessingObjectVBR;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("7ba1db8f-78ad-49cd-9591-f79d80a17c81")
    IAudioProcessingObjectVBR : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE CalcMaxInputFrames( 
            /* [in] */ UINT32 u32MaxOutputFrameCount,
            /* [out] */ __RPC__out UINT32 *pu32InputFrameCount) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE CalcMaxOutputFrames( 
            /* [in] */ UINT32 u32MaxInputFrameCount,
            /* [out] */ __RPC__out UINT32 *pu32OutputFrameCount) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IAudioProcessingObjectVBRVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IAudioProcessingObjectVBR * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IAudioProcessingObjectVBR * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IAudioProcessingObjectVBR * This);
        
        HRESULT ( STDMETHODCALLTYPE *CalcMaxInputFrames )( 
            __RPC__in IAudioProcessingObjectVBR * This,
            /* [in] */ UINT32 u32MaxOutputFrameCount,
            /* [out] */ __RPC__out UINT32 *pu32InputFrameCount);
        
        HRESULT ( STDMETHODCALLTYPE *CalcMaxOutputFrames )( 
            __RPC__in IAudioProcessingObjectVBR * This,
            /* [in] */ UINT32 u32MaxInputFrameCount,
            /* [out] */ __RPC__out UINT32 *pu32OutputFrameCount);
        
        END_INTERFACE
    } IAudioProcessingObjectVBRVtbl;

    interface IAudioProcessingObjectVBR
    {
        CONST_VTBL struct IAudioProcessingObjectVBRVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IAudioProcessingObjectVBR_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IAudioProcessingObjectVBR_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IAudioProcessingObjectVBR_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IAudioProcessingObjectVBR_CalcMaxInputFrames(This,u32MaxOutputFrameCount,pu32InputFrameCount)	\
    ( (This)->lpVtbl -> CalcMaxInputFrames(This,u32MaxOutputFrameCount,pu32InputFrameCount) ) 

#define IAudioProcessingObjectVBR_CalcMaxOutputFrames(This,u32MaxInputFrameCount,pu32OutputFrameCount)	\
    ( (This)->lpVtbl -> CalcMaxOutputFrames(This,u32MaxInputFrameCount,pu32OutputFrameCount) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IAudioProcessingObjectVBR_INTERFACE_DEFINED__ */


#ifndef __IAudioProcessingObjectConfiguration_INTERFACE_DEFINED__
#define __IAudioProcessingObjectConfiguration_INTERFACE_DEFINED__

/* interface IAudioProcessingObjectConfiguration */
/* [local][unique][uuid][object] */ 


EXTERN_C const IID IID_IAudioProcessingObjectConfiguration;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("0E5ED805-ABA6-49c3-8F9A-2B8C889C4FA8")
    IAudioProcessingObjectConfiguration : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE LockForProcess( 
            /* [annotation][in] */ 
            __in  UINT32 u32NumInputConnections,
            /* [annotation][in] */ 
            __in  APO_CONNECTION_DESCRIPTOR **ppInputConnections,
            /* [annotation][in] */ 
            __in  UINT32 u32NumOutputConnections,
            /* [annotation][in] */ 
            __in  APO_CONNECTION_DESCRIPTOR **ppOutputConnections) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE UnlockForProcess( void) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IAudioProcessingObjectConfigurationVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            IAudioProcessingObjectConfiguration * This,
            /* [in] */ REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            IAudioProcessingObjectConfiguration * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            IAudioProcessingObjectConfiguration * This);
        
        HRESULT ( STDMETHODCALLTYPE *LockForProcess )( 
            IAudioProcessingObjectConfiguration * This,
            /* [annotation][in] */ 
            __in  UINT32 u32NumInputConnections,
            /* [annotation][in] */ 
            __in  APO_CONNECTION_DESCRIPTOR **ppInputConnections,
            /* [annotation][in] */ 
            __in  UINT32 u32NumOutputConnections,
            /* [annotation][in] */ 
            __in  APO_CONNECTION_DESCRIPTOR **ppOutputConnections);
        
        HRESULT ( STDMETHODCALLTYPE *UnlockForProcess )( 
            IAudioProcessingObjectConfiguration * This);
        
        END_INTERFACE
    } IAudioProcessingObjectConfigurationVtbl;

    interface IAudioProcessingObjectConfiguration
    {
        CONST_VTBL struct IAudioProcessingObjectConfigurationVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IAudioProcessingObjectConfiguration_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IAudioProcessingObjectConfiguration_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IAudioProcessingObjectConfiguration_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IAudioProcessingObjectConfiguration_LockForProcess(This,u32NumInputConnections,ppInputConnections,u32NumOutputConnections,ppOutputConnections)	\
    ( (This)->lpVtbl -> LockForProcess(This,u32NumInputConnections,ppInputConnections,u32NumOutputConnections,ppOutputConnections) ) 

#define IAudioProcessingObjectConfiguration_UnlockForProcess(This)	\
    ( (This)->lpVtbl -> UnlockForProcess(This) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IAudioProcessingObjectConfiguration_INTERFACE_DEFINED__ */


#ifndef __IAudioProcessingObject_INTERFACE_DEFINED__
#define __IAudioProcessingObject_INTERFACE_DEFINED__

/* interface IAudioProcessingObject */
/* [unique][uuid][object] */ 


EXTERN_C const IID IID_IAudioProcessingObject;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("FD7F2B29-24D0-4b5c-B177-592C39F9CA10")
    IAudioProcessingObject : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE Reset( void) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetLatency( 
            /* [out] */ __RPC__out HNSTIME *pTime) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetRegistrationProperties( 
            /* [out] */ __RPC__deref_out_opt APO_REG_PROPERTIES **ppRegProps) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE Initialize( 
            /* [in] */ UINT32 cbDataSize,
            /* [size_is][in] */ __RPC__in_ecount_full(cbDataSize) BYTE *pbyData) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsInputFormatSupported( 
            /* [unique][in] */ __RPC__in_opt IAudioMediaType *pOppositeFormat,
            /* [in] */ __RPC__in_opt IAudioMediaType *pRequestedInputFormat,
            /* [out] */ __RPC__deref_out_opt IAudioMediaType **ppSupportedInputFormat) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE IsOutputFormatSupported( 
            /* [unique][in] */ __RPC__in_opt IAudioMediaType *pOppositeFormat,
            /* [in] */ __RPC__in_opt IAudioMediaType *pRequestedOutputFormat,
            /* [out] */ __RPC__deref_out_opt IAudioMediaType **ppSupportedOutputFormat) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetInputChannelCount( 
            /* [out] */ __RPC__out UINT32 *pu32ChannelCount) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IAudioProcessingObjectVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IAudioProcessingObject * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IAudioProcessingObject * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IAudioProcessingObject * This);
        
        HRESULT ( STDMETHODCALLTYPE *Reset )( 
            __RPC__in IAudioProcessingObject * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetLatency )( 
            __RPC__in IAudioProcessingObject * This,
            /* [out] */ __RPC__out HNSTIME *pTime);
        
        HRESULT ( STDMETHODCALLTYPE *GetRegistrationProperties )( 
            __RPC__in IAudioProcessingObject * This,
            /* [out] */ __RPC__deref_out_opt APO_REG_PROPERTIES **ppRegProps);
        
        HRESULT ( STDMETHODCALLTYPE *Initialize )( 
            __RPC__in IAudioProcessingObject * This,
            /* [in] */ UINT32 cbDataSize,
            /* [size_is][in] */ __RPC__in_ecount_full(cbDataSize) BYTE *pbyData);
        
        HRESULT ( STDMETHODCALLTYPE *IsInputFormatSupported )( 
            __RPC__in IAudioProcessingObject * This,
            /* [unique][in] */ __RPC__in_opt IAudioMediaType *pOppositeFormat,
            /* [in] */ __RPC__in_opt IAudioMediaType *pRequestedInputFormat,
            /* [out] */ __RPC__deref_out_opt IAudioMediaType **ppSupportedInputFormat);
        
        HRESULT ( STDMETHODCALLTYPE *IsOutputFormatSupported )( 
            __RPC__in IAudioProcessingObject * This,
            /* [unique][in] */ __RPC__in_opt IAudioMediaType *pOppositeFormat,
            /* [in] */ __RPC__in_opt IAudioMediaType *pRequestedOutputFormat,
            /* [out] */ __RPC__deref_out_opt IAudioMediaType **ppSupportedOutputFormat);
        
        HRESULT ( STDMETHODCALLTYPE *GetInputChannelCount )( 
            __RPC__in IAudioProcessingObject * This,
            /* [out] */ __RPC__out UINT32 *pu32ChannelCount);
        
        END_INTERFACE
    } IAudioProcessingObjectVtbl;

    interface IAudioProcessingObject
    {
        CONST_VTBL struct IAudioProcessingObjectVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IAudioProcessingObject_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IAudioProcessingObject_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IAudioProcessingObject_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IAudioProcessingObject_Reset(This)	\
    ( (This)->lpVtbl -> Reset(This) ) 

#define IAudioProcessingObject_GetLatency(This,pTime)	\
    ( (This)->lpVtbl -> GetLatency(This,pTime) ) 

#define IAudioProcessingObject_GetRegistrationProperties(This,ppRegProps)	\
    ( (This)->lpVtbl -> GetRegistrationProperties(This,ppRegProps) ) 

#define IAudioProcessingObject_Initialize(This,cbDataSize,pbyData)	\
    ( (This)->lpVtbl -> Initialize(This,cbDataSize,pbyData) ) 

#define IAudioProcessingObject_IsInputFormatSupported(This,pOppositeFormat,pRequestedInputFormat,ppSupportedInputFormat)	\
    ( (This)->lpVtbl -> IsInputFormatSupported(This,pOppositeFormat,pRequestedInputFormat,ppSupportedInputFormat) ) 

#define IAudioProcessingObject_IsOutputFormatSupported(This,pOppositeFormat,pRequestedOutputFormat,ppSupportedOutputFormat)	\
    ( (This)->lpVtbl -> IsOutputFormatSupported(This,pOppositeFormat,pRequestedOutputFormat,ppSupportedOutputFormat) ) 

#define IAudioProcessingObject_GetInputChannelCount(This,pu32ChannelCount)	\
    ( (This)->lpVtbl -> GetInputChannelCount(This,pu32ChannelCount) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IAudioProcessingObject_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_audioenginebaseapo_0000_0004 */
/* [local] */ 

//
// APO registration functions
//
typedef HRESULT (WINAPI FNAPONOTIFICATIONCALLBACK)(APO_REG_PROPERTIES* pProperties, VOID* pvRefData);
extern HRESULT WINAPI RegisterAPO(APO_REG_PROPERTIES const* pProperties);
extern HRESULT WINAPI UnregisterAPO(REFCLSID clsid);
extern HRESULT WINAPI RegisterAPONotification(HANDLE hEvent);
extern HRESULT WINAPI UnregisterAPONotification(HANDLE hEvent);
extern HRESULT WINAPI EnumerateAPOs(FNAPONOTIFICATIONCALLBACK pfnCallback, PVOID pvRefData);
extern HRESULT WINAPI GetAPOProperties(REFCLSID clsid, APO_REG_PROPERTIES* pProperties);


extern RPC_IF_HANDLE __MIDL_itf_audioenginebaseapo_0000_0004_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_audioenginebaseapo_0000_0004_v0_0_s_ifspec;

#ifndef __IAudioSystemEffects_INTERFACE_DEFINED__
#define __IAudioSystemEffects_INTERFACE_DEFINED__

/* interface IAudioSystemEffects */
/* [object][uuid] */ 


EXTERN_C const IID IID_IAudioSystemEffects;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("5FA00F27-ADD6-499a-8A9D-6B98521FA75B")
    IAudioSystemEffects : public IUnknown
    {
    public:
    };
    
#else 	/* C style interface */

    typedef struct IAudioSystemEffectsVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IAudioSystemEffects * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IAudioSystemEffects * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IAudioSystemEffects * This);
        
        END_INTERFACE
    } IAudioSystemEffectsVtbl;

    interface IAudioSystemEffects
    {
        CONST_VTBL struct IAudioSystemEffectsVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IAudioSystemEffects_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IAudioSystemEffects_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IAudioSystemEffects_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IAudioSystemEffects_INTERFACE_DEFINED__ */


#ifndef __IAudioSystemEffectsCustomFormats_INTERFACE_DEFINED__
#define __IAudioSystemEffectsCustomFormats_INTERFACE_DEFINED__

/* interface IAudioSystemEffectsCustomFormats */
/* [object][uuid] */ 


EXTERN_C const IID IID_IAudioSystemEffectsCustomFormats;

#if defined(__cplusplus) && !defined(CINTERFACE)
    
    MIDL_INTERFACE("B1176E34-BB7F-4f05-BEBD-1B18A534E097")
    IAudioSystemEffectsCustomFormats : public IUnknown
    {
    public:
        virtual HRESULT STDMETHODCALLTYPE GetFormatCount( 
            /* [out] */ __RPC__out UINT *pcFormats) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetFormat( 
            /* [in] */ UINT nFormat,
            /* [out] */ __RPC__deref_out_opt IAudioMediaType **ppFormat) = 0;
        
        virtual HRESULT STDMETHODCALLTYPE GetFormatRepresentation( 
            /* [in] */ UINT nFormat,
            /* [out] */ __RPC__deref_out_opt LPWSTR *ppwstrFormatRep) = 0;
        
    };
    
#else 	/* C style interface */

    typedef struct IAudioSystemEffectsCustomFormatsVtbl
    {
        BEGIN_INTERFACE
        
        HRESULT ( STDMETHODCALLTYPE *QueryInterface )( 
            __RPC__in IAudioSystemEffectsCustomFormats * This,
            /* [in] */ __RPC__in REFIID riid,
            /* [annotation][iid_is][out] */ 
            __RPC__deref_out  void **ppvObject);
        
        ULONG ( STDMETHODCALLTYPE *AddRef )( 
            __RPC__in IAudioSystemEffectsCustomFormats * This);
        
        ULONG ( STDMETHODCALLTYPE *Release )( 
            __RPC__in IAudioSystemEffectsCustomFormats * This);
        
        HRESULT ( STDMETHODCALLTYPE *GetFormatCount )( 
            __RPC__in IAudioSystemEffectsCustomFormats * This,
            /* [out] */ __RPC__out UINT *pcFormats);
        
        HRESULT ( STDMETHODCALLTYPE *GetFormat )( 
            __RPC__in IAudioSystemEffectsCustomFormats * This,
            /* [in] */ UINT nFormat,
            /* [out] */ __RPC__deref_out_opt IAudioMediaType **ppFormat);
        
        HRESULT ( STDMETHODCALLTYPE *GetFormatRepresentation )( 
            __RPC__in IAudioSystemEffectsCustomFormats * This,
            /* [in] */ UINT nFormat,
            /* [out] */ __RPC__deref_out_opt LPWSTR *ppwstrFormatRep);
        
        END_INTERFACE
    } IAudioSystemEffectsCustomFormatsVtbl;

    interface IAudioSystemEffectsCustomFormats
    {
        CONST_VTBL struct IAudioSystemEffectsCustomFormatsVtbl *lpVtbl;
    };

    

#ifdef COBJMACROS


#define IAudioSystemEffectsCustomFormats_QueryInterface(This,riid,ppvObject)	\
    ( (This)->lpVtbl -> QueryInterface(This,riid,ppvObject) ) 

#define IAudioSystemEffectsCustomFormats_AddRef(This)	\
    ( (This)->lpVtbl -> AddRef(This) ) 

#define IAudioSystemEffectsCustomFormats_Release(This)	\
    ( (This)->lpVtbl -> Release(This) ) 


#define IAudioSystemEffectsCustomFormats_GetFormatCount(This,pcFormats)	\
    ( (This)->lpVtbl -> GetFormatCount(This,pcFormats) ) 

#define IAudioSystemEffectsCustomFormats_GetFormat(This,nFormat,ppFormat)	\
    ( (This)->lpVtbl -> GetFormat(This,nFormat,ppFormat) ) 

#define IAudioSystemEffectsCustomFormats_GetFormatRepresentation(This,nFormat,ppwstrFormatRep)	\
    ( (This)->lpVtbl -> GetFormatRepresentation(This,nFormat,ppwstrFormatRep) ) 

#endif /* COBJMACROS */


#endif 	/* C style interface */




#endif 	/* __IAudioSystemEffectsCustomFormats_INTERFACE_DEFINED__ */


/* interface __MIDL_itf_audioenginebaseapo_0000_0006 */
/* [local] */ 

typedef struct APOInitSystemEffects
    {
    APOInitBaseStruct APOInit;
    IPropertyStore *pAPOEndpointProperties;
    IPropertyStore *pAPOSystemEffectsProperties;
    void *pReserved;
    IMMDeviceCollection *pDeviceCollection;
    } 	APOInitSystemEffects;

typedef /* [public] */ struct __MIDL___MIDL_itf_audioenginebaseapo_0000_0006_0001
    {
    LPARAM AddPageParam;
    LPWSTR pwstrEndpointID;
    IPropertyStore *pFxProperties;
    } 	AudioFXExtensionParams;

DEFINE_PROPERTYKEY(PKEY_FX_Association, 0xD04E05A6, 0x594B, 0x4fb6, 0xA8, 0x0D, 0x01, 0xAF, 0x5E, 0xED, 0x7D, 0x1D, 0);
DEFINE_PROPERTYKEY(PKEY_FX_PreMixEffectClsid, 0xD04E05A6, 0x594B, 0x4fb6, 0xA8, 0x0D, 0x01, 0xAF, 0x5E, 0xED, 0x7D, 0x1D, 1);
DEFINE_PROPERTYKEY(PKEY_FX_PostMixEffectClsid, 0xD04E05A6, 0x594B, 0x4fb6, 0xA8, 0x0D, 0x01, 0xAF, 0x5E, 0xED, 0x7D, 0x1D, 2);
DEFINE_PROPERTYKEY(PKEY_FX_UserInterfaceClsid, 0xD04E05A6, 0x594B, 0x4fb6, 0xA8, 0x0D, 0x01, 0xAF, 0x5E, 0xED, 0x7D, 0x1D, 3);
DEFINE_PROPERTYKEY(PKEY_FX_FriendlyName, 0xD04E05A6, 0x594B, 0x4fb6, 0xA8, 0x0D, 0x01, 0xAF, 0x5E, 0xED, 0x7D, 0x1D, 4);


extern RPC_IF_HANDLE __MIDL_itf_audioenginebaseapo_0000_0006_v0_0_c_ifspec;
extern RPC_IF_HANDLE __MIDL_itf_audioenginebaseapo_0000_0006_v0_0_s_ifspec;

/* Additional Prototypes for ALL interfaces */

/* end of Additional Prototypes */

#ifdef __cplusplus
}
#endif

#endif



