// BaseAudioProcessingObject.h -- Copyright (c) 2002 Microsoft Corporation
//
// Description:
//
//  CBaseAudioProcessingObject declaration
//

#pragma once

#include <AudioEngineBaseAPO.h>

// define this to keep older string functions from being deprecated
// this is needed because some windows headers are still using deprecated string functions.
#define STRSAFE_NO_DEPRECATE  
#include <strsafe.h>
#include <ks.h>
#include <ksmedia.h>

#include <intsafe.h>
#include <crtdbg.h>


// Locked memory utility APIs for System Effect APOs
extern "C" 
{
    //-------------------------------------------------------------------------
    // Description: Locked memory allocator
    //
    // Parameters:
    //      size  - [in] Number of input connections.
    //      pMemory - [in/out] Void** pointer.
    //
    // Return codes:
    //      S_OK  - pMemory points to allocated memory.
    //      E_OUTOFMEMORY - No memory is available.
    //
    HRESULT AERT_Allocate(size_t size, void **pMemory);

    //-------------------------------------------------------------------------
    // Description: Locked memory free
    //
    // Parameters:
    //      pMemory - [in] Pointer to memory to free.
    //
    // Return codes:
    //      S_OK
    //
    HRESULT AERT_Free(void *pMemory);
}


// TODO: REMOVE THESE WHEN WE HAVE THESE IN OFFICIAL HEADERS"
#ifndef AVRT_CODE_BEGIN
// These are copied out of the old AvRt.h file.
#define AVRT_CODE_BEGIN   code_seg( push, "RT_CODE" )
#define AVRT_DATA_BEGIN   data_seg( push, "RT_DATA" )
#define AVRT_BSS_BEGIN    bss_seg( push, "RT_BSS" )
#define AVRT_CONST_BEGIN  const_seg( push, "RT_CONST" )
#define AVRT_VTABLES_BEGIN AVRT_CONST_BEGIN
#define AVRT_CODE_END   code_seg( pop )
#define AVRT_DATA_END   data_seg( pop )
#define AVRT_BSS_END    bss_seg( pop )
#define AVRT_CONST_END  const_seg( pop )
#define AVRT_VTABLES_END AVRT_CONST_END
#define AVRT_DATA __declspec(allocate("RT_DATA"))
#define AVRT_BSS __declspec(allocate("RT_BSS"))
#define AVRT_CONST __declspec(allocate("RT_CONST"))

// Now declare our sections to the compiler so AVRT_DATA, AVRT_BSS and
// AVRT_CONST work.

#if defined(_IA64_)
#pragma section( "RT_CONST", read, long)
#endif

#pragma AVRT_CODE_BEGIN
#pragma AVRT_CODE_END
#pragma AVRT_CONST_BEGIN
#pragma AVRT_CONST_END
#pragma AVRT_BSS_BEGIN
#pragma AVRT_BSS_END
#pragma AVRT_DATA_BEGIN
#pragma AVRT_DATA_END

#define ASSERT_REALTIME()    // Used to mark real-time code.
#define ASSERT_NONREALTIME() // Used to mark non-real time code
#endif

#pragma AVRT_VTABLES_BEGIN
//  Base class for APOs
class __declspec(novtable) CBaseAudioProcessingObject : public IAudioProcessingObject, public IAudioProcessingObjectRT, public IAudioProcessingObjectConfiguration
{
public:
    CBaseAudioProcessingObject(const APO_REG_PROPERTIES* pRegProperties);
    virtual ~CBaseAudioProcessingObject();

public:

    //-------------------------------------------------------------------------
    // Description:
    //
    //  This must be implemented by subclasses.
    //
    // Parameters:
    //
    //      u32NumInputConnections - [in] Number of input connections.
    //
    //      ppInputConnections - [in] Array of input connection property
    //              structures, one per input connection.
    //
    //      u32NumOutputConnections - [in] Number of output connections.
    //
    //      ppOutputConnections - [in, out] Array of output connection
    //              property structures, one per output connection.
    //
    STDMETHOD_(void, APOProcess)(UINT32 u32NumInputConnections,
        APO_CONNECTION_PROPERTY** ppInputConnections,
        UINT32 u32NumOutputConnections,
        APO_CONNECTION_PROPERTY** ppOutputConnections) = 0;
    STDMETHOD_(UINT32, CalcInputFrames)(UINT32 u32OutputFrameCount);
    STDMETHOD_(UINT32, CalcOutputFrames)(UINT32 u32InputFrameCount);

    STDMETHOD(LockForProcess)(UINT32 u32NumInputConnections, APO_CONNECTION_DESCRIPTOR** ppInputConnections, UINT32 u32NumOutputConnections, APO_CONNECTION_DESCRIPTOR** ppOuputConnections);
    STDMETHOD(UnlockForProcess)(void);
    STDMETHOD(Reset)(void);
    STDMETHOD(GetLatency)(HNSTIME* pTime);
    STDMETHOD(GetRegistrationProperties)(APO_REG_PROPERTIES** pRegProps);
    STDMETHOD(Initialize)(UINT32 cbDataSize, BYTE* pbyData);
    STDMETHOD(IsInputFormatSupported)(IAudioMediaType* pOutputFormat, IAudioMediaType* pRequestedInputFormat, IAudioMediaType** ppSupportedInputFormat);
    STDMETHOD(IsOutputFormatSupported)(IAudioMediaType* pInputFormat, IAudioMediaType* pRequestedOutputFormat, IAudioMediaType** ppSupportedOutputFormat);
    STDMETHOD(GetInputChannelCount)(UINT32* pu32ChannelCount);

protected:
    HRESULT IsFormatTypeSupported( 
        IAudioMediaType* pOppositeFormat,
        IAudioMediaType* pRequestedFormat,
        IAudioMediaType** ppSupportedFormat,
        bool bIsInput );
    HRESULT __fastcall ValidateConnection(const UNCOMPRESSEDAUDIOFORMAT &pUncompressedAudioFormat);
    virtual HRESULT ValidateAndCacheConnectionInfo(UINT32 u32NumInputConnections,
        APO_CONNECTION_DESCRIPTOR** ppInputConnections,
        UINT32 u32NumOutputConnections,
        APO_CONNECTION_DESCRIPTOR** ppOutputConnections);

    bool BuffersOverlap(UINT32 u32NumInputConnections,
        APO_CONNECTION_DESCRIPTOR** ppInputConnections,
        UINT32 u32NumOutputConnections,
        APO_CONNECTION_DESCRIPTOR** ppOutputConnections);

    UINT32 __fastcall GetSamplesPerFrame();
    UINT32 __fastcall GetBytesPerSampleContainer();
    UINT32 __fastcall GetValidBitsPerSample();
    FLOAT32 __fastcall GetFramesPerSecond();

    HRESULT __fastcall ValidateInitializeParameters(UINT32 cbDataSize, BYTE* pbyData, REFCLSID clsid, UINT32 cbStructSize);
    virtual HRESULT __fastcall ValidateDefaultAPOFormat(UNCOMPRESSEDAUDIOFORMAT& audioFormat, bool bIsInput);

protected:
    // Flag that determines if the APO is locked.
    bool                            m_bIsLocked;

    // Flag that determines if the APO has been initialized.
    bool                            m_bIsInitialized;

    // pointer to registration properties for this APO
    const APO_REG_PROPERTIES*       m_pRegProperties;

    // critical section for APOs
    CRITICAL_SECTION                m_CritSec;

    // Number of samples per frame.  Only valid if the APO_FLAG_SAMPLESPERFRAME_MUST_MATCH
    // registry property is set.
    UINT32                          m_u32SamplesPerFrame;

private:
    // The following variables are stored for convenience and for validation purposes.  They are all set to
    // zero initially and any time there are no valid connections attached to the APO.

    // The size of the container for each audio sample.  Only valid if the APO_FLAG_BITSPERSAMPLE_MUST_MATCH
    // registry property is set.
    UINT32                          m_u32BytesPerSampleContainer;

    // Valid number of bits per sample.   Only valid if the APO_FLAG_BITSPERSAMPLE_MUST_MATCH
    // registry property is set.
    UINT32                          m_u32ValidBitsPerSample;

    // Frame rate, in frames per second (hertz).  Only valid if the APO_FLAG_FRAMESPERSECOND_MUST_MATCH
    // registry property is set.
    FLOAT32                         m_f32FramesPerSecond;
};
#pragma AVRT_VTABLES_END

// The default APO registration flags
#define DEFAULT_APOREG_FLAGS                            APO_FLAG_DEFAULT
// The default minimum number of connection for input
#define DEFAULT_APOREG_MININPUTCONNECTIONS              1
// The default maximum number of connection for input
#define DEFAULT_APOREG_MAXINPUTCONNECTIONS              1
// The default minimum number of connections for output
#define DEFAULT_APOREG_MINOUTPUTCONNECTIONS             1
// The default maximum number of connections for output
#define DEFAULT_APOREG_MAXOUTPUTCONNECTIONS             1
// The maximum number of instances
#define DEFAULT_APOREG_MAXINSTANCES                     ULONG_MAX


// default format values, used in ValidateDefaultAPOFormat()

// The default format
#define DEFAULT_APO_FORMAT                      KSDATAFORMAT_SUBTYPE_IEEE_FLOAT
// The default minimum samples per frame
#define DEFAULT_APO_MINSAMPLESPERFRAME          AUDIO_MIN_CHANNELS
// The default maximum samples per frame
#define DEFAULT_APO_MAXSAMPLESPERFRAME          AUDIO_MAX_CHANNELS
// The default bytes per sample contrainer
#define DEFAULT_APO_BYTESPERSAMPLECONTAINER     4
// The default bits per sample
#define DEFAULT_APO_VALIDBITSPERSAMPLE          32
// The default minimum frames per second
#define DEFAULT_APO_MINFRAMESPERSECOND          AUDIO_MIN_FRAMERATE
// The default maximum frames per second
#define DEFAULT_APO_MAXFRAMESPERSECOND          AUDIO_MAX_FRAMERATE


//-------------------------------------------------------------------------
// Description:
//
//  Template class for CRegAPOProperties.
//
//  Helper class for APO_REG_PROPERTIES that handles the variable-size issue
//  and does some default initialization of the struct.
//
// Parameters:
//
//  NumAPOInterfaces - [in] The number of APO interfaces in this properties class.
//
template<int NumAPOInterfaces>
class CRegAPOProperties
{
public:
    CRegAPOProperties(REFCLSID clsid,
                      LPCWSTR pszFriendlyName, LPCWSTR pszCopyrightInfo,
                      UINT32 u32MajorVersion, UINT32 u32MinorVersion,
                      REFIID iidAPOInterface1,
                      APO_FLAG Flags = DEFAULT_APOREG_FLAGS,
                      UINT32 u32MinInputConnections = DEFAULT_APOREG_MININPUTCONNECTIONS,
                      UINT32 u32MaxInputConnections = DEFAULT_APOREG_MAXINPUTCONNECTIONS,
                      UINT32 u32MinOutputConnections = DEFAULT_APOREG_MINOUTPUTCONNECTIONS,
                      UINT32 u32MaxOutputConnections = DEFAULT_APOREG_MAXOUTPUTCONNECTIONS,
                      UINT32 u32MaxInstances = DEFAULT_APOREG_MAXINSTANCES,
                      ...)
    {
        int index;
        va_list va;
        HRESULT hResult;

        m_Properties.clsid = clsid;
        m_Properties.Flags = Flags;
        hResult = StringCbCopyW(m_Properties.szFriendlyName, sizeof(m_Properties.szFriendlyName), pszFriendlyName);
        _ASSERTE(S_OK == hResult);     // nothing to do here except assert
        hResult = StringCbCopyW(m_Properties.szCopyrightInfo, sizeof(m_Properties.szCopyrightInfo), pszCopyrightInfo);
        _ASSERTE(S_OK == hResult);     // nothing to do here except assert
        m_Properties.u32MajorVersion = u32MajorVersion;
        m_Properties.u32MinorVersion = u32MinorVersion;
        m_Properties.u32MinInputConnections = u32MinInputConnections;
        m_Properties.u32MaxInputConnections = u32MaxInputConnections;
        m_Properties.u32MinOutputConnections = u32MinOutputConnections;
        m_Properties.u32MaxOutputConnections = u32MaxOutputConnections;
        m_Properties.u32MaxInstances = u32MaxInstances;
        m_Properties.u32NumAPOInterfaces = NumAPOInterfaces;
        m_Properties.iidAPOInterfaceList[0] = iidAPOInterface1;
        va_start(va, u32MaxInstances);
        // this is a "while" instead of a "for" loop for Prefast conformance
        index = 0;
        while (index < NumAPOInterfaces - 1)
        {
            m_aAdditionalAPOIIDs[index] = va_arg(va, IID);
            index++;
        }
        va_end(va);
    }

    operator APO_REG_PROPERTIES&() const
    {
        return m_Properties;
    }

    //-------------------------------------------------------------------------
    // Description:
    //
    //  The dereference operator returns a reference to the APO registration
    //  properties.
    //
    // Return values:
    //
    //      Address of property member
    //
    operator const APO_REG_PROPERTIES*() const
    {
        return &m_Properties;
    }

public:
    //
    // Holds the properties for this APO
    //
    APO_REG_PROPERTIES m_Properties;
#pragma warning(push)
#pragma warning(disable: 4200) // zero length array
    IID                m_aAdditionalAPOIIDs[NumAPOInterfaces - 1]; // Set up the array of interface IDs this APO supports
#pragma warning(pop)
};




