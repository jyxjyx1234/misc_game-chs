/*++

Copyright (c) 2007 Microsoft Corporation


Module Name:

    winbio_types.h

Abstract:

    Type definitions, constants, and structures used
    by Windows Biometrics components.


Environment:

    User or Kernel mode.

Revision History:

--*/

#ifndef _WINBIO_TYPES_H_712486DB_3EF5_41da_937A_55DCB7B66A53_
#define _WINBIO_TYPES_H_712486DB_3EF5_41da_937A_55DCB7B66A53_

#if (NTDDI_VERSION >= NTDDI_VISTA)

#pragma warning( push )
#pragma warning( disable : 4324 ) // structure-padding message

#ifdef __cplusplus
extern "C"{
#endif

///////////////////////////////////////////////////////////////////////////////
//
// Types used throughout WinBio
//
///////////////////////////////////////////////////////////////////////////////

typedef ULONG WINBIO_UNIT_ID, *PWINBIO_UNIT_ID;
typedef ULONG WINBIO_SESSION_HANDLE, *PWINBIO_SESSION_HANDLE;

//
// A GUID
//
typedef GUID WINBIO_UUID, *PWINBIO_UUID;

//
// Represents a NULL-terminated Unicode character
// string inside a fixed-length buffer.
//
#define WINBIO_MAX_STRING_LEN 256
typedef WCHAR WINBIO_STRING[WINBIO_MAX_STRING_LEN];
typedef WINBIO_STRING *PWINBIO_STRING;

//
// Version
//
typedef struct _WINBIO_VERSION {
    DWORD MajorVersion;
    DWORD MinorVersion;
} WINBIO_VERSION, *PWINBIO_VERSION;

///////////////////////////////////////////////////////////////////////////////
//
// Enumeration for template identity types...
//

typedef ULONG WINBIO_IDENTITY_TYPE, *PWINBIO_IDENTITY_TYPE;

#ifdef MIDL_PASS

const WINBIO_IDENTITY_TYPE  WINBIO_ID_TYPE_NULL     = (WINBIO_IDENTITY_TYPE)0;  // The Identity structure is empty.
const WINBIO_IDENTITY_TYPE  WINBIO_ID_TYPE_WILDCARD = (WINBIO_IDENTITY_TYPE)1;  // The Identity matches "all identities".
const WINBIO_IDENTITY_TYPE  WINBIO_ID_TYPE_GUID     = (WINBIO_IDENTITY_TYPE)2;  // A GUID identifies the template.
const WINBIO_IDENTITY_TYPE  WINBIO_ID_TYPE_SID      = (WINBIO_IDENTITY_TYPE)3;  // An account SID identifies the template.

const ULONG SECURITY_MAX_SID_SIZE = (ULONG)68;

typedef union switch(WINBIO_IDENTITY_TYPE Type) _WINBIO_IDENTITY {
    case WINBIO_ID_TYPE_NULL:       ULONG Null;
    case WINBIO_ID_TYPE_WILDCARD:   ULONG Wildcard;
    case WINBIO_ID_TYPE_GUID:       GUID TemplateGuid;
    case WINBIO_ID_TYPE_SID:        struct {
                                        ULONG Size;
                                        UCHAR Data[SECURITY_MAX_SID_SIZE];
                                    } AccountSid;
} WINBIO_IDENTITY;

#else // MIDL_PASS

#define WINBIO_ID_TYPE_NULL     ((WINBIO_IDENTITY_TYPE)0)  // The Identity structure is empty.
#define WINBIO_ID_TYPE_WILDCARD ((WINBIO_IDENTITY_TYPE)1)  // The Identity matches "all identities"
#define WINBIO_ID_TYPE_GUID     ((WINBIO_IDENTITY_TYPE)2)  // A GUID identifies the template.
#define WINBIO_ID_TYPE_SID      ((WINBIO_IDENTITY_TYPE)3)  // An account SID identifies the template.

//
// Structure that contains the identity value associated
// with a biometric template.
//
//#ifndef SECURITY_MAX_SID_SIZE
//#define SECURITY_MAX_SID_SIZE 68
//#endif
typedef struct _WINBIO_IDENTITY {
    WINBIO_IDENTITY_TYPE Type;
    union {
        ULONG Null;
        ULONG Wildcard;
        GUID TemplateGuid;
        struct {
            ULONG Size;
            UCHAR Data[SECURITY_MAX_SID_SIZE];
        } AccountSid;
    } Value;
} WINBIO_IDENTITY;

#endif // MIDL_PASS

typedef WINBIO_IDENTITY *PWINBIO_IDENTITY;

#define WINBIO_IDENTITY_WILDCARD  ((ULONG)0x25066282)

///////////////////////////////////////////////////////////////////////////////
//
// Things related to get/set property operations
//
typedef ULONG32 WINBIO_PROPERTY_TYPE, *PWINBIO_PROPERTY_TYPE;

#define WINBIO_PROPERTY_TYPE_SESSION    ((WINBIO_PROPERTY_TYPE)1)
#define WINBIO_PROPERTY_TYPE_UNIT       ((WINBIO_PROPERTY_TYPE)2)
#define WINBIO_PROPERTY_TYPE_TEMPLATE   ((WINBIO_PROPERTY_TYPE)3)


typedef ULONG32 WINBIO_PROPERTY_ID, *PWINBIO_PROPERTY_ID;

#define WINBIO_PROPERTY_SAMPLE_HINT     ((WINBIO_PROPERTY_ID)1)  //(read-only)

///////////////////////////////////////////////////////////////////////////////
//
// Bitmask describing the supported set of biometric types (factors).
//
typedef ULONG32 WINBIO_BIOMETRIC_TYPE, *PWINBIO_BIOMETRIC_TYPE;

#define WINBIO_STANDARD_TYPE_MASK           ((WINBIO_BIOMETRIC_TYPE)0x00FFFFFF)

#define WINBIO_NO_TYPE_AVAILABLE            ((WINBIO_BIOMETRIC_TYPE)0x00000000)
//
// Standard biometric types (from NISTIR 6529-A)
//
#define WINBIO_TYPE_MULTIPLE                ((WINBIO_BIOMETRIC_TYPE)0x00000001)
#define WINBIO_TYPE_FACIAL_FEATURES         ((WINBIO_BIOMETRIC_TYPE)0x00000002)
#define WINBIO_TYPE_VOICE                   ((WINBIO_BIOMETRIC_TYPE)0x00000004)
#define WINBIO_TYPE_FINGERPRINT             ((WINBIO_BIOMETRIC_TYPE)0x00000008)
#define WINBIO_TYPE_IRIS                    ((WINBIO_BIOMETRIC_TYPE)0x00000010)
#define WINBIO_TYPE_RETINA                  ((WINBIO_BIOMETRIC_TYPE)0x00000020)
#define WINBIO_TYPE_HAND_GEOMETRY           ((WINBIO_BIOMETRIC_TYPE)0x00000040)
#define WINBIO_TYPE_SIGNATURE_DYNAMICS      ((WINBIO_BIOMETRIC_TYPE)0x00000080)
#define WINBIO_TYPE_KEYSTROKE_DYNAMICS      ((WINBIO_BIOMETRIC_TYPE)0x00000100)
#define WINBIO_TYPE_LIP_MOVEMENT            ((WINBIO_BIOMETRIC_TYPE)0x00000200)
#define WINBIO_TYPE_THERMAL_FACE_IMAGE      ((WINBIO_BIOMETRIC_TYPE)0x00000400)
#define WINBIO_TYPE_THERMAL_HAND_IMAGE      ((WINBIO_BIOMETRIC_TYPE)0x00000800)
#define WINBIO_TYPE_GAIT                    ((WINBIO_BIOMETRIC_TYPE)0x00001000)
#define WINBIO_TYPE_SCENT                   ((WINBIO_BIOMETRIC_TYPE)0x00002000)
#define WINBIO_TYPE_DNA                     ((WINBIO_BIOMETRIC_TYPE)0x00004000)
#define WINBIO_TYPE_EAR_SHAPE               ((WINBIO_BIOMETRIC_TYPE)0x00008000)
#define WINBIO_TYPE_FINGER_GEOMETRY         ((WINBIO_BIOMETRIC_TYPE)0x00010000)
#define WINBIO_TYPE_PALM_PRINT              ((WINBIO_BIOMETRIC_TYPE)0x00020000)
#define WINBIO_TYPE_VEIN_PATTERN            ((WINBIO_BIOMETRIC_TYPE)0x00040000)
#define WINBIO_TYPE_FOOT_PRINT              ((WINBIO_BIOMETRIC_TYPE)0x00080000)
//
// WinBio extended types
//
#define WINBIO_TYPE_OTHER                   ((WINBIO_BIOMETRIC_TYPE)0x40000000)
#define WINBIO_TYPE_PASSWORD                ((WINBIO_BIOMETRIC_TYPE)0x80000000)

#define WINBIO_TYPE_ANY                     ((WINBIO_BIOMETRIC_TYPE)(WINBIO_STANDARD_TYPE_MASK |    \
                                                                     WINBIO_TYPE_OTHER |            \
                                                                     WINBIO_TYPE_PASSWORD))


//
// WinBio sensor sub-types.  These are defined per Biometric type, and are
// defined only for fingerprints in this version.
//
typedef ULONG WINBIO_BIOMETRIC_SENSOR_SUBTYPE, *PWINBIO_BIOMETRIC_SENSOR_SUBTYPE;

#define WINBIO_SENSOR_SUBTYPE_UNKNOWN       ((WINBIO_BIOMETRIC_SENSOR_SUBTYPE)0x00000000)

#define WINBIO_FP_SENSOR_SUBTYPE_SWIPE      ((WINBIO_BIOMETRIC_SENSOR_SUBTYPE)0x00000001)
#define WINBIO_FP_SENSOR_SUBTYPE_TOUCH      ((WINBIO_BIOMETRIC_SENSOR_SUBTYPE)0x00000002)

//
// Bitmask of sensor capabilities
//
typedef ULONG WINBIO_CAPABILITIES, *PWINBIO_CAPABILITIES;

#define WINBIO_CAPABILITY_SENSOR        ((WINBIO_CAPABILITIES)0x00000001)
#define WINBIO_CAPABILITY_MATCHING      ((WINBIO_CAPABILITIES)0x00000002)
#define WINBIO_CAPABILITY_DATABASE      ((WINBIO_CAPABILITIES)0x00000004)
#define WINBIO_CAPABILITY_PROCESSING    ((WINBIO_CAPABILITIES)0x00000008)
#define WINBIO_CAPABILITY_ENCRYPTION    ((WINBIO_CAPABILITIES)0x00000010)
#define WINBIO_CAPABILITY_NAVIGATION    ((WINBIO_CAPABILITIES)0x00000020)
#define WINBIO_CAPABILITY_INDICATOR     ((WINBIO_CAPABILITIES)0x00000040)

//
// Values used to set the indicator on or off
//
// By default, sensors will not have a light on.
// Applications can use these values to enable
// or disable indicator lights on the sensor.
// WINBIO_SENSOR_STATUS will provide more detail
// about the status of the light when it is "on."
//
typedef DWORD WINBIO_INDICATOR_STATUS, *PWINBIO_INDICATOR_STATUS;

#define WINBIO_INDICATOR_ON     ((WINBIO_INDICATOR_STATUS)1)
#define WINBIO_INDICATOR_OFF    ((WINBIO_INDICATOR_STATUS)2)

///////////////////////////////////////////////////////////////////////////////
//
// Sensor operating modes
//
typedef ULONG WINBIO_SENSOR_MODE, *PWINBIO_SENSOR_MODE;

#define WINBIO_SENSOR_UNKNOWN_MODE      ((WINBIO_SENSOR_MODE)0)
#define WINBIO_SENSOR_BASIC_MODE        ((WINBIO_SENSOR_MODE)1)
#define WINBIO_SENSOR_ADVANCED_MODE     ((WINBIO_SENSOR_MODE)2)
#define WINBIO_SENSOR_NAVIGATION_MODE   ((WINBIO_SENSOR_MODE)3)
#define WINBIO_SENSOR_SLEEP_MODE        ((WINBIO_SENSOR_MODE)4)

///////////////////////////////////////////////////////////////////////////////
//
// Factor-specific value giving additional information about
// a biometric measurement (e.g., *which* finger a fingerprint
// sample was taken from).
//
typedef UCHAR WINBIO_BIOMETRIC_SUBTYPE, *PWINBIO_BIOMETRIC_SUBTYPE;

#define WINBIO_SUBTYPE_NO_INFORMATION       ((WINBIO_BIOMETRIC_SUBTYPE)0x00)
#define WINBIO_SUBTYPE_ANY                  ((WINBIO_BIOMETRIC_SUBTYPE)0xFF)
//
// If the biometric type is WINBIO_TYPE_FINGERPRINT, WinBio uses
// 'WINBIO_ANSI_381_POS_xyz' constants to represent fingerprint sub-type
// information. (These are defined below in the WINBIO_BDB_ANSI_381_RECORD.)
//

///////////////////////////////////////////////////////////////////////////////
//
// Factor-specific value that describes the reason a
// biometric sampling operation failed.
//
typedef ULONG WINBIO_REJECT_DETAIL, *PWINBIO_REJECT_DETAIL;

//
// Failure detail values for WINBIO_TYPE_FINGERPRINT
//
#define WINBIO_FP_TOO_HIGH          ((WINBIO_REJECT_DETAIL)1)
#define WINBIO_FP_TOO_LOW           ((WINBIO_REJECT_DETAIL)2)
#define WINBIO_FP_TOO_LEFT          ((WINBIO_REJECT_DETAIL)3)
#define WINBIO_FP_TOO_RIGHT         ((WINBIO_REJECT_DETAIL)4)
#define WINBIO_FP_TOO_FAST          ((WINBIO_REJECT_DETAIL)5)
#define WINBIO_FP_TOO_SLOW          ((WINBIO_REJECT_DETAIL)6)
#define WINBIO_FP_POOR_QUALITY      ((WINBIO_REJECT_DETAIL)7)
#define WINBIO_FP_TOO_SKEWED        ((WINBIO_REJECT_DETAIL)8)
#define WINBIO_FP_TOO_SHORT         ((WINBIO_REJECT_DETAIL)9)
#define WINBIO_FP_MERGE_FAILURE     ((WINBIO_REJECT_DETAIL)10)


///////////////////////////////////////////////////////////////////////////////
//
// Biometric Information Record (BIR)
//
///////////////////////////////////////////////////////////////////////////////
//
//      +---------------------------------------+
// 1.   |   WINBIO_BIR                          |
//      +---------------------------------------+
// 2.   |   WINBIO_BIR_HEADER                   |
//      +---------------------------------------+
// 3.   |   Standard Data Block (optional)      |
//      |                                       |
//      |       WINBIO_BDB_ANSI_381_HEADER      |
//      |       [0] WINBIO_BDB_ANSI_381_RECORD  |
//      |           :                           |
//      |       [N] WINBIO_BDB_ANSI_381_RECORD  |
//      +---------------------------------------+
// 4.   |   Vendor Data Block (optional)        |
//      +---------------------------------------+
// 5.   |   Signature Block (optional)          |
//      +---------------------------------------+
//
// NOTES:
//      - The format of the Standard Data Block is determined
//      by the 'BiometricDataFormat' field of WINBIO_BIR_HEADER.
//
//      - Currently, the only supported format for the Standard
//      Data Block is ANSI 381 fingerprint image data. Data in
//      any other form must go into the Vendor Data Block instead.
//
//      - It's vital that BIR structures and sub-structures be aligned
//      on 8-byte boundaries. This means both C++ and MIDL compilation
//      with at least /Zp8 alignment. This also applies to BIRs that
//      are allocated dynamically from the heap.
//
#define WINBIO_BIR_ALIGN_SIZE   (8)
//
// Also define legacy typo to be synonymous
//
#define WINBIO_BIR_ALGIN_SIZE   WINBIO_BIR_ALIGN_SIZE

//
// The following gives the location and size of a block
// in a BIR. The offset is measured from the beginning of
// the WINBIO_BIR structure.
//
typedef struct _WINBIO_BIR_DATA {
    ULONG Size;
    ULONG Offset;
} WINBIO_BIR_DATA;

typedef WINBIO_BIR_DATA *PWINBIO_BIR_DATA;

//
// Top-level structure contains offset/size
// information needed to find other items.
//
typedef struct _WINBIO_BIR {
    WINBIO_BIR_DATA HeaderBlock;
    WINBIO_BIR_DATA StandardDataBlock;
    WINBIO_BIR_DATA VendorDataBlock;
    WINBIO_BIR_DATA SignatureBlock;
} WINBIO_BIR;

typedef WINBIO_BIR *PWINBIO_BIR;

///////////////////////////////////////////////////////////////////////////////
//
// Elements used in a BIR header
//
///////////////////////////////////////////////////////////////////////////////
//
// BIR 'ValidFields' flags...
//
#define WINBIO_BIR_FIELD_SUBHEAD_COUNT          ((USHORT)0x0001)
#define WINBIO_BIR_FIELD_PRODUCT_ID             ((USHORT)0x0002)
#define WINBIO_BIR_FIELD_PATRON_ID              ((USHORT)0x0004)
#define WINBIO_BIR_FIELD_INDEX                  ((USHORT)0x0008)

#define WINBIO_BIR_FIELD_CREATION_DATE          ((USHORT)0x0010)
#define WINBIO_BIR_FIELD_VALIDITY_PERIOD        ((USHORT)0x0020)
#define WINBIO_BIR_FIELD_BIOMETRIC_TYPE         ((USHORT)0x0040)
#define WINBIO_BIR_FIELD_BIOMETRIC_SUBTYPE      ((USHORT)0x0080)

#define WINBIO_BIR_FIELD_CBEFF_HEADER_VERSION   ((USHORT)0x0100)
#define WINBIO_BIR_FIELD_PATRON_HEADER_VERSION  ((USHORT)0x0200)
#define WINBIO_BIR_FIELD_BIOMETRIC_PURPOSE      ((USHORT)0x0400)
#define WINBIO_BIR_FIELD_BIOMETRIC_CONDITION    ((USHORT)0x0800)

#define WINBIO_BIR_FIELD_QUALITY                ((USHORT)0x1000)
#define WINBIO_BIR_FIELD_CREATOR                ((USHORT)0x2000)
#define WINBIO_BIR_FIELD_CHALLENGE              ((USHORT)0x4000)
#define WINBIO_BIR_FIELD_PAYLOAD                ((USHORT)0x8000)

//
// The following collection of optional fields will NEVER be
// part of a WinBio BIR. If any of these bits are asserted,
// the BIR is malformed.
//
#define WINBIO_BIR_FIELD_NEVER_VALID    (WINBIO_BIR_FIELD_SUBHEAD_COUNT |   \
                                         WINBIO_BIR_FIELD_PATRON_ID |       \
                                         WINBIO_BIR_FIELD_INDEX |           \
                                         WINBIO_BIR_FIELD_CHALLENGE |       \
                                         WINBIO_BIR_FIELD_PAYLOAD )

///////////////////////////////////////////////////////////////////////////////
//
// BIR 'HeaderVersion' and 'PatronHeaderVersion' fields:
//
// Versions are represented as 8-bit values of the
// form: 0xNM, where 'N' is the major version and 'M'
// is the minor version.
//
typedef UCHAR WINBIO_BIR_VERSION, *PWINBIO_BIR_VERSION;

#define WINBIO_CBEFF_HEADER_VERSION     ((WINBIO_BIR_VERSION)0x11)
#define WINBIO_PATRON_HEADER_VERSION    ((WINBIO_BIR_VERSION)0x11)

///////////////////////////////////////////////////////////////////////////////
//
// BIR 'DataFlags' field:
//      * Security and integrity-checking options
//          PRIVACY     - BDB is encrypted
//          INTEGRITY   - BDB is signed or MAC'ed
//          SIGNED      - 1 -> BDB is signed; 0 -> BDB is MAC'ed
//      * Processing level of the data
//
typedef UCHAR WINBIO_BIR_DATA_FLAGS, *PWINBIO_BIR_DATA_FLAGS;

#define WINBIO_DATA_FLAG_PRIVACY                ((UCHAR)0x02)
#define WINBIO_DATA_FLAG_INTEGRITY              ((UCHAR)0x01)
#define WINBIO_DATA_FLAG_SIGNED                 ((UCHAR)0x04)

#define WINBIO_DATA_FLAG_RAW                    ((UCHAR)0x20)
#define WINBIO_DATA_FLAG_INTERMEDIATE           ((UCHAR)0x40)
#define WINBIO_DATA_FLAG_PROCESSED              ((UCHAR)0x80)

#define WINBIO_DATA_FLAG_OPTION_MASK_PRESENT    ((UCHAR)0x08)   // Always '1'.

///////////////////////////////////////////////////////////////////////////////
//
// BIR 'Purpose' field:
//
// A value defining the purpose for which the BIR
//
//  - is intended, when used as input to a WinBio function
//
//  - is suitable, when used as output from a WinBio function
//  or within a BIR header.
//
// NOTE:
//  In a WINBIO BIR, the 'Purpose' field is defined as a set of flag bits
//  rather than an enumerated type (as specified in NISTIR 6529-A). Transferring
//  a WINBIO BIR to another environment (e.g., BioAPI) will require conversion.
//
//  The suggested way to handle this conversion is to generate a set of nested
//  BIRs for any WINBIO BIRs that have multiple 'Purpose' bits set.
//
typedef UCHAR WINBIO_BIR_PURPOSE, *PWINBIO_BIR_PURPOSE;

#define WINBIO_NO_PURPOSE_AVAILABLE                     ((WINBIO_BIR_PURPOSE)0x00)
#define WINBIO_PURPOSE_VERIFY                           ((WINBIO_BIR_PURPOSE)0x01)
#define WINBIO_PURPOSE_IDENTIFY                         ((WINBIO_BIR_PURPOSE)0x02)
#define WINBIO_PURPOSE_ENROLL                           ((WINBIO_BIR_PURPOSE)0x04)
#define WINBIO_PURPOSE_ENROLL_FOR_VERIFICATION          ((WINBIO_BIR_PURPOSE)0x08)
#define WINBIO_PURPOSE_ENROLL_FOR_IDENTIFICATION        ((WINBIO_BIR_PURPOSE)0x10)
#define WINBIO_PURPOSE_AUDIT                            ((WINBIO_BIR_PURPOSE)0x80)

///////////////////////////////////////////////////////////////////////////////
//
// BIR 'DataQuality' field:
//
// FIndicates the relative quality of the biometric
// data in the BIR.
//
// Quality measurements are represented as signed
// integers in the range 0-100, except:
//
//      -1  Quality measurements are supported by the
//          BIR creator, but no value is set in the BIR.
//
//      -2  Quality measurements are not supported
//          by the BIR creator.
//
typedef CHAR WINBIO_BIR_QUALITY, *PWINBIO_BIR_QUALITY;

#define WINBIO_DATA_QUALITY_NOT_SET         ((WINBIO_BIR_QUALITY)-1)
#define WINBIO_DATA_QUALITY_NOT_SUPPORTED   ((WINBIO_BIR_QUALITY)-2)

///////////////////////////////////////////////////////////////////////////////
//
// BIR 'BiometricDataFormat' and 'ProductId' fields:
//
// Identifies a registered data format as a pair consisting of
// an IBIA-assigned owner value plus an owner-assigned format-type
// value.
//
typedef struct _WINBIO_REGISTERED_FORMAT {
    USHORT Owner;
    USHORT Type;
} WINBIO_REGISTERED_FORMAT, *PWINBIO_REGISTERED_FORMAT;

#define WINBIO_NO_FORMAT_OWNER_AVAILABLE    ((USHORT)0)
#define WINBIO_NO_FORMAT_TYPE_AVAILABLE     ((USHORT)0)

///////////////////////////////////////////////////////////////////////////////
//
// NISTIR 6529-A -- Common Biometric Exchange Formats Framework (CBEFF)
// April 5, 2004
//
// CBEFF Patron Format A: Standard Biometric Header Block
//
// NOTE:
//      This structure is COMPATIBLE with CBEFF Patron Format A in that
//      it can be transformed to/from a fully-conformant Format A record.
//      The following fields are NOT part of this structure:
//          - Subheader -- WinBio doesn't support nested CBEFF structures
//          - Patron format owner/type -- used only for nested CBEFF structures
//          - Index
//          - Creator
//          - Challenge/response
//          - Payload
//
///////////////////////////////////////////////////////////////////////////////
typedef struct _WINBIO_BIR_HEADER {
    //
    // Mask indicating which fields are valid
    //
    // Annex A -- Note (1) to Table A.1
    //
    USHORT ValidFields;

    //
    // CBEFF Header version
    //
    // SECTION 5.2.1.3
    //
    WINBIO_BIR_VERSION HeaderVersion;   // = WINBIO_CBEFF_HEADER_VERSION

    //
    // Patron header version
    //
    // SECTION 5.2.1.4
    //
    WINBIO_BIR_VERSION PatronHeaderVersion; // = WINBIO_PATRON_HEADER_VERSION

    //
    // 'DataFlags' is a combination of the 'Security
    // Options' field and the 'Biometric Data Type'
    // (RAW, INTERMEDIATE,PROCESSED) field.
    //
    // SECTION 5.2.1.1, 5.2.1.2, and 5.2.1.7
    //
    WINBIO_BIR_DATA_FLAGS DataFlags;

    //
    // Biometric type
    //
    // SECTION 5.2.1.5
    //
    WINBIO_BIOMETRIC_TYPE Type;

    //
    // Biometric subtype
    //
    // SECTION 5.2.1.6
    //
    WINBIO_BIOMETRIC_SUBTYPE Subtype;

    //
    // Intended use of the data
    //
    // SECTION 5.2.1.8
    //
    WINBIO_BIR_PURPOSE Purpose;

    //
    // Biometric data quality
    //
    // SECTION 5.2.1.9
    //
    WINBIO_BIR_QUALITY DataQuality;

    //
    // Creation date and time of this BIR (in UTC)
    //
    // SECTION 5.2.1.10
    //
    LARGE_INTEGER CreationDate;

    //
    // Validity period of this BIR (in UTC)
    //
    // SECTION 5.2.1.11
    //
    struct {
        LARGE_INTEGER BeginDate;
        LARGE_INTEGER EndDate;
    } ValidityPeriod;

    ///////////////////////////////////////////////////////////////////////////
    //
    // Data format of Standard Data Block.
    //
    // NOTE: If BIR doesn't contain 'StandardDataBlock'
    // element, this is set to "no owner/type available".
    //
    WINBIO_REGISTERED_FORMAT BiometricDataFormat;

    //
    // Product identifier for the component that
    // generated the 'StandardDataBlock' element.
    //
    // NOTE: If BIR doesn't contain 'StandardDataBlock'
    // element, this is set to "no owner/type available".
    //
    WINBIO_REGISTERED_FORMAT ProductId;

} WINBIO_BIR_HEADER;

typedef WINBIO_BIR_HEADER *PWINBIO_BIR_HEADER;


///////////////////////////////////////////////////////////////////////////////
//
// ANSI INCITS 381-2004 -- Finger Image-Based Data Interchange Format
//
///////////////////////////////////////////////////////////////////////////////
//
// SECTION 7 -- Registered Format
//
// WINBIO_BIR_HEADER.BiometricDataFormat.Owner = WINBIO_ANSI_381_FORMAT_OWNER
// WINBIO_BIR_HEADER.BiometricDataFormat.Type  = WINBIO_ANSI_381_FORMAT_TYPE
//
#define WINBIO_ANSI_381_FORMAT_OWNER    ((USHORT)0x001B)    // INCITS Technical Committee M1
#define WINBIO_ANSI_381_FORMAT_TYPE     ((USHORT)0x0401)    // ANSI-381

//
// SECTION 7.1 -- General Record Header
//
typedef struct _WINBIO_BDB_ANSI_381_HEADER {
    ULONG64 RecordLength;               // Only the low 6 bytes of this number are valid.
                                        // sizeof(WINBIO_BDB_ANSI_381_HEADER)
                                        // + sizeof( all WINBIO_BDB_ANSI_381_RECORD records)

    ULONG FormatIdentifier;             // Must be 0x46495200 (ASCII: 'F' 'I' 'R' 0x0)
    ULONG VersionNumber;                // Must be 0x30313000 (ASCII: '0' '1' '0' 0x0)

    WINBIO_REGISTERED_FORMAT ProductId;

    USHORT CaptureDeviceId;
    USHORT ImageAcquisitionLevel;
    USHORT HorizontalScanResolution;
    USHORT VerticalScanResolution;
    USHORT HorizontalImageResolution;
    USHORT VerticalImageResolution;

    UCHAR ElementCount;                 // Number of finger/palm records in the block
    UCHAR ScaleUnits;                   // cm or inch
    UCHAR PixelDepth;                   // 1-16 bits per pixel (2-64K gray levels)
    UCHAR ImageCompressionAlg;

    USHORT Reserved;
    // 38 bytes (because of unused 2 bytes in ULONG64) vs. 36 bytes defined in ANSI INCITS spec

} WINBIO_BDB_ANSI_381_HEADER;

typedef WINBIO_BDB_ANSI_381_HEADER *PWINBIO_BDB_ANSI_381_HEADER;

//
// SECTION 7.1.6 Image acquistion level
//
// Table 1 -- Image acquistion setting levels
//
#define WINBIO_ANSI_381_IMG_ACQ_LEVEL_10    ((USHORT)10)
#define WINBIO_ANSI_381_IMG_ACQ_LEVEL_20    ((USHORT)20)
#define WINBIO_ANSI_381_IMG_ACQ_LEVEL_30    ((USHORT)30)
#define WINBIO_ANSI_381_IMG_ACQ_LEVEL_31    ((USHORT)31)
#define WINBIO_ANSI_381_IMG_ACQ_LEVEL_40    ((USHORT)40)
#define WINBIO_ANSI_381_IMG_ACQ_LEVEL_41    ((USHORT)41)

//
// SECTION 7.1.8 -- Scale units
//
#define WINBIO_ANSI_381_PIXELS_PER_INCH     ((UCHAR)0x01)
#define WINBIO_ANSI_381_PIXELS_PER_CM       ((UCHAR)0x02)

//
// SECTION 7.1.14 -- Image compression algorithm
//
// Table 3 -- Compression algorithm codes
//
#define WINBIO_ANSI_381_IMG_UNCOMPRESSED            ((UCHAR)0)
#define WINBIO_ANSI_381_IMG_BIT_PACKED              ((UCHAR)1)
#define WINBIO_ANSI_381_IMG_COMPRESSED_WSQ          ((UCHAR)2)
#define WINBIO_ANSI_381_IMG_COMPRESSED_JPEG         ((UCHAR)3)
#define WINBIO_ANSI_381_IMG_COMPRESSED_JPEG2000     ((UCHAR)4)
#define WINBIO_ANSI_381_IMG_COMPRESSED_PNG          ((UCHAR)5)

//
// SECTION 7.2 -- Finger Record Header
//
typedef struct _WINBIO_BDB_ANSI_381_RECORD {
    ULONG BlockLength;                  // sizeof(WINBIO_BDB_ANSI_381_RECORD)
                                        // + sizeof(image data)
    USHORT HorizontalLineLength;        // Number of pixels in a horizontal line
    USHORT VerticalLineLength;          // Number of horizontal lines in the image
    WINBIO_BIOMETRIC_SUBTYPE Position;
    UCHAR CountOfViews;                 // Must be set to one (1)
    UCHAR ViewNumber;                   // Must be set to one (1)
    UCHAR ImageQuality;                 // Reserved -- must be set to 254 (0xFE)
    UCHAR ImpressionType;
    UCHAR Reserved;                     // Must be set to zero
    // 14 bytes of header data
} WINBIO_BDB_ANSI_381_RECORD;
//
// Followed immediately by compressed/uncompressed image data.
// (Image data must be < 43 * 10^8 bytes in length.)
//

typedef WINBIO_BDB_ANSI_381_RECORD *PWINBIO_BDB_ANSI_381_RECORD;

//
// SECTION 7.2.2 -- Finger position codes
//
// Table 5 -- Finger position codes, areas, and maximum dimensions
//
#define WINBIO_ANSI_381_POS_UNKNOWN             ((WINBIO_BIOMETRIC_SUBTYPE)0)
#define WINBIO_ANSI_381_POS_RH_THUMB            ((WINBIO_BIOMETRIC_SUBTYPE)1)
#define WINBIO_ANSI_381_POS_RH_INDEX_FINGER     ((WINBIO_BIOMETRIC_SUBTYPE)2)
#define WINBIO_ANSI_381_POS_RH_MIDDLE_FINGER    ((WINBIO_BIOMETRIC_SUBTYPE)3)
#define WINBIO_ANSI_381_POS_RH_RING_FINGER      ((WINBIO_BIOMETRIC_SUBTYPE)4)
#define WINBIO_ANSI_381_POS_RH_LITTLE_FINGER    ((WINBIO_BIOMETRIC_SUBTYPE)5)
#define WINBIO_ANSI_381_POS_LH_THUMB            ((WINBIO_BIOMETRIC_SUBTYPE)6)
#define WINBIO_ANSI_381_POS_LH_INDEX_FINGER     ((WINBIO_BIOMETRIC_SUBTYPE)7)
#define WINBIO_ANSI_381_POS_LH_MIDDLE_FINGER    ((WINBIO_BIOMETRIC_SUBTYPE)8)
#define WINBIO_ANSI_381_POS_LH_RING_FINGER      ((WINBIO_BIOMETRIC_SUBTYPE)9)
#define WINBIO_ANSI_381_POS_LH_LITTLE_FINGER    ((WINBIO_BIOMETRIC_SUBTYPE)10)

#define WINBIO_ANSI_381_POS_RH_FOUR_FINGERS     ((WINBIO_BIOMETRIC_SUBTYPE)13)
#define WINBIO_ANSI_381_POS_LH_FOUR_FINGERS     ((WINBIO_BIOMETRIC_SUBTYPE)14)
#define WINBIO_ANSI_381_POS_TWO_THUMBS          ((WINBIO_BIOMETRIC_SUBTYPE)15)
//
// Table 6 -- Palm codes, areas, and maximum dimensions
//
#define WINBIO_ANSI_381_POS_UNKNOWN_PALM        ((WINBIO_BIOMETRIC_SUBTYPE)20)
#define WINBIO_ANSI_381_POS_RH_FULL_PALM        ((WINBIO_BIOMETRIC_SUBTYPE)21)
#define WINBIO_ANSI_381_POS_RH_WRITERS_PALM     ((WINBIO_BIOMETRIC_SUBTYPE)22)
#define WINBIO_ANSI_381_POS_LH_FULL_PALM        ((WINBIO_BIOMETRIC_SUBTYPE)23)
#define WINBIO_ANSI_381_POS_LH_WRITERS_PALM     ((WINBIO_BIOMETRIC_SUBTYPE)24)
#define WINBIO_ANSI_381_POS_RH_LOWER_PALM       ((WINBIO_BIOMETRIC_SUBTYPE)25)
#define WINBIO_ANSI_381_POS_RH_UPPER_PALM       ((WINBIO_BIOMETRIC_SUBTYPE)26)
#define WINBIO_ANSI_381_POS_LH_LOWER_PALM       ((WINBIO_BIOMETRIC_SUBTYPE)27)
#define WINBIO_ANSI_381_POS_LH_UPPER_PALM       ((WINBIO_BIOMETRIC_SUBTYPE)28)
#define WINBIO_ANSI_381_POS_RH_OTHER            ((WINBIO_BIOMETRIC_SUBTYPE)29)
#define WINBIO_ANSI_381_POS_LH_OTHER            ((WINBIO_BIOMETRIC_SUBTYPE)30)
#define WINBIO_ANSI_381_POS_RH_INTERDIGITAL     ((WINBIO_BIOMETRIC_SUBTYPE)31)
#define WINBIO_ANSI_381_POS_RH_THENAR           ((WINBIO_BIOMETRIC_SUBTYPE)32)
#define WINBIO_ANSI_381_POS_RH_HYPOTHENAR       ((WINBIO_BIOMETRIC_SUBTYPE)33)
#define WINBIO_ANSI_381_POS_LH_INTERDIGITAL     ((WINBIO_BIOMETRIC_SUBTYPE)34)
#define WINBIO_ANSI_381_POS_LH_THENAR           ((WINBIO_BIOMETRIC_SUBTYPE)35)
#define WINBIO_ANSI_381_POS_LH_HYPOTHENAR       ((WINBIO_BIOMETRIC_SUBTYPE)36)

//
// SECTION 7.2.6 -- Impression-Type Codes
//
// Table 7 -- Finger and palm impression types
//
#define WINBIO_ANSI_381_IMP_TYPE_LIVE_SCAN_PLAIN        ((UCHAR)0)
#define WINBIO_ANSI_381_IMP_TYPE_LIVE_SCAN_ROLLED       ((UCHAR)1)
#define WINBIO_ANSI_381_IMP_TYPE_NONLIVE_SCAN_PLAIN     ((UCHAR)2)
#define WINBIO_ANSI_381_IMP_TYPE_NONLIVE_SCAN_ROLLED    ((UCHAR)3)
#define WINBIO_ANSI_381_IMP_TYPE_LATENT                 ((UCHAR)7)
#define WINBIO_ANSI_381_IMP_TYPE_SWIPE                  ((UCHAR)8)
#define WINBIO_ANSI_381_IMP_TYPE_LIVE_SCAN_CONTACTLESS  ((UCHAR)9)


//
//
//
typedef ULONG WINBIO_POOL_TYPE, *PWINBIO_POOL_TYPE;

#define WINBIO_POOL_UNKNOWN         ((WINBIO_POOL_TYPE)0)
#define WINBIO_POOL_SYSTEM          ((WINBIO_POOL_TYPE)1)
#define WINBIO_POOL_PRIVATE         ((WINBIO_POOL_TYPE)2)
#define WINBIO_POOL_UNASSIGNED      ((WINBIO_POOL_TYPE)3) // Reserved for Microsoft - do not use.

//
// Specific access rights for Biometric Units
//
#define BIO_UNIT_RAW                ((USHORT)0x0001)
#define BIO_UNIT_MAINTENANCE        ((USHORT)0x0002)
#define BIO_UNIT_OPEN_SESSION       ((USHORT)0x0004)
#define BIO_UNIT_EXTENDED_ACCESS    ((USHORT)0x0008)
#define BIO_UNIT_ENROLL             ((USHORT)0x0010)

//
// OpenSession parameter that controls session attributes...
//
typedef ULONG WINBIO_SESSION_FLAGS, *PWINBIO_SESSION_FLAGS;
//
// Sensor configuration flags...
//
#define WINBIO_FLAG_DEFAULT         ((WINBIO_SESSION_FLAGS)0x00000000)
#define WINBIO_FLAG_BASIC           ((WINBIO_SESSION_FLAGS)((WINBIO_SENSOR_BASIC_MODE & 0xFFFF)<<16))
#define WINBIO_FLAG_ADVANCED        ((WINBIO_SESSION_FLAGS)((WINBIO_SENSOR_ADVANCED_MODE & 0xFFFF)<<16))
//
// Desired access flags...
//
#define WINBIO_FLAG_RAW             ((WINBIO_SESSION_FLAGS)BIO_UNIT_RAW)
#define WINBIO_FLAG_MAINTENANCE     ((WINBIO_SESSION_FLAGS)BIO_UNIT_MAINTENANCE)

//
// Well-known database IDs used by WinBioOpenSession
//
#define WINBIO_DB_DEFAULT           ((GUID *)1)
#define WINBIO_DB_BOOTSTRAP         ((GUID *)2)
#define WINBIO_DB_ONCHIP            ((GUID *)3)

//
// Identify one of the components in a Biometric Unit's
// processing pipeline (for ControlUnit operations)...
//
typedef ULONG WINBIO_COMPONENT, *PWINBIO_COMPONENT;

#define WINBIO_COMPONENT_SENSOR     ((WINBIO_COMPONENT)1)
#define WINBIO_COMPONENT_ENGINE     ((WINBIO_COMPONENT)2)
#define WINBIO_COMPONENT_STORAGE    ((WINBIO_COMPONENT)3)

//
// Event Monitor stuff...
//
typedef ULONG WINBIO_EVENT_TYPE, *PWINBIO_EVENT_TYPE;

#ifdef MIDL_PASS

//
// Generic events
//
const WINBIO_EVENT_TYPE WINBIO_EVENT_ERROR                  = (WINBIO_EVENT_TYPE)0xFFFFFFFF;

//
// Fingerprint events.
//
const WINBIO_EVENT_TYPE WINBIO_EVENT_FP_UNCLAIMED           = (WINBIO_EVENT_TYPE)0x00000001;
const WINBIO_EVENT_TYPE WINBIO_EVENT_FP_UNCLAIMED_IDENTIFY  = (WINBIO_EVENT_TYPE)0x00000002;

typedef union switch(WINBIO_EVENT_TYPE Type) _WINBIO_EVENT {

    case WINBIO_EVENT_FP_UNCLAIMED:             struct {
                                                    WINBIO_UNIT_ID UnitId;
                                                    WINBIO_REJECT_DETAIL RejectDetail;
                                                } Unclaimed;

    case WINBIO_EVENT_FP_UNCLAIMED_IDENTIFY:    struct {
                                                    WINBIO_UNIT_ID UnitId;
                                                    WINBIO_IDENTITY Identity;
                                                    WINBIO_BIOMETRIC_SUBTYPE SubFactor;
                                                    WINBIO_REJECT_DETAIL RejectDetail;
                                                } UnclaimedIdentify;

    case WINBIO_EVENT_ERROR:                    struct {
                                                    HRESULT ErrorCode;
                                                } Error;
} WINBIO_EVENT, *PWINBIO_EVENT;

#else // MIDL_PASS

//
// Generic events
//
#define WINBIO_EVENT_ERROR                  ((WINBIO_EVENT_TYPE)0xFFFFFFFF)

//
// Fingerprint events.
//
#define WINBIO_EVENT_FP_UNCLAIMED           ((WINBIO_EVENT_TYPE)0x00000001)
#define WINBIO_EVENT_FP_UNCLAIMED_IDENTIFY  ((WINBIO_EVENT_TYPE)0x00000002)


//
// Event structure passed back to applications.
//
typedef struct _WINBIO_EVENT {
    WINBIO_EVENT_TYPE Type;
    union {
        struct {
            WINBIO_UNIT_ID UnitId;
            WINBIO_REJECT_DETAIL RejectDetail;
        } Unclaimed;
        struct {
            WINBIO_UNIT_ID UnitId;
            WINBIO_IDENTITY Identity;
            WINBIO_BIOMETRIC_SUBTYPE SubFactor;
            WINBIO_REJECT_DETAIL RejectDetail;
        } UnclaimedIdentify;
        struct {
            HRESULT ErrorCode;
        } Error;
    } Parameters;
} WINBIO_EVENT, *PWINBIO_EVENT;

#endif // MIDL_PASS

///////////////////////////////////////////////////////////////////////////////
//
// Schemata returned by enumeration APIs...
//
///////////////////////////////////////////////////////////////////////////////
//
// Results from EnumServiceProviders...
//
typedef struct _WINBIO_BSP_SCHEMA {
    WINBIO_BIOMETRIC_TYPE BiometricFactor;
    WINBIO_UUID BspId;
    WINBIO_STRING Description;
    WINBIO_STRING Vendor;
    WINBIO_VERSION Version;
} WINBIO_BSP_SCHEMA, *PWINBIO_BSP_SCHEMA;

//
// Results from EnumBiometricUnits...
//
typedef struct _WINBIO_UNIT_SCHEMA {
    WINBIO_UNIT_ID UnitId;
    WINBIO_POOL_TYPE PoolType;
    WINBIO_BIOMETRIC_TYPE BiometricFactor;
    WINBIO_BIOMETRIC_SENSOR_SUBTYPE SensorSubType;
    WINBIO_CAPABILITIES Capabilities;
    WINBIO_STRING DeviceInstanceId;
    WINBIO_STRING Description;
    WINBIO_STRING Manufacturer;
    WINBIO_STRING Model;
    WINBIO_STRING SerialNumber;
    WINBIO_VERSION FirmwareVersion;
} WINBIO_UNIT_SCHEMA, *PWINBIO_UNIT_SCHEMA;

///////////////////////////////////////////////////////////////////////////////
//
// Definitions for the 'Attributes' database value...
//
///////////////////////////////////////////////////////////////////////////////
#define WINBIO_DATABASE_TYPE_MASK       ((ULONG)0x0000FFFF)
//
// Type values...
//
#define WINBIO_DATABASE_TYPE_FILE       ((ULONG)0x00000001)
#define WINBIO_DATABASE_TYPE_DBMS       ((ULONG)0x00000002)
#define WINBIO_DATABASE_TYPE_ONCHIP     ((ULONG)0x00000003)
#define WINBIO_DATABASE_TYPE_SMARTCARD  ((ULONG)0x00000004)

#define WINBIO_DATABASE_FLAG_MASK       ((ULONG)0xFFFF0000)
//
// Flag values...
//
#define WINBIO_DATABASE_FLAG_REMOVABLE  ((ULONG)0x00010000)
#define WINBIO_DATABASE_FLAG_REMOTE     ((ULONG)0x00020000)

//
// Results from EnumDatabases...
//
typedef struct _WINBIO_STORAGE_SCHEMA {
    WINBIO_BIOMETRIC_TYPE BiometricFactor;
    WINBIO_UUID DatabaseId;
    WINBIO_UUID DataFormat;
    ULONG Attributes;
    WINBIO_STRING FilePath;
    WINBIO_STRING ConnectionString;
} WINBIO_STORAGE_SCHEMA, *PWINBIO_STORAGE_SCHEMA;

///////////////////////////////////////////////////////////////////////////////
//
// Credential management
//
///////////////////////////////////////////////////////////////////////////////

typedef enum _WINBIO_CREDENTIAL_TYPE
{
    WINBIO_CREDENTIAL_PASSWORD  = 0x00000001,
    WINBIO_CREDENTIAL_ALL = 0xffffffff,
} WINBIO_CREDENTIAL_TYPE;

typedef enum _WINBIO_CREDENTIAL_FORMAT
{
    WINBIO_PASSWORD_GENERIC     = 0x00000001,
    WINBIO_PASSWORD_PACKED      = 0x00000002,
} WINBIO_CREDENTIAL_FORMAT;

typedef enum _WINBIO_CREDENTIAL_STATE {
    WINBIO_CREDENTIAL_NOT_SET   = 0x00000001,
    WINBIO_CREDENTIAL_SET       = 0x00000002,
} WINBIO_CREDENTIAL_STATE, *PWINBIO_CREDENTIAL_STATE;

///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////


///////////////////////////////////////////////////////////////////////////////
//
// Settings
//
///////////////////////////////////////////////////////////////////////////////

typedef ULONG32 WINBIO_SETTING_SOURCE_TYPE, *PWINBIO_SETTING_SOURCE_TYPE;

#define WINBIO_SETTING_SOURCE_INVALID    ((WINBIO_SETTING_SOURCE_TYPE)0)
#define WINBIO_SETTING_SOURCE_DEFAULT    ((WINBIO_SETTING_SOURCE_TYPE)1)
#define WINBIO_SETTING_SOURCE_POLICY     ((WINBIO_SETTING_SOURCE_TYPE)2)
#define WINBIO_SETTING_SOURCE_LOCAL      ((WINBIO_SETTING_SOURCE_TYPE)3)


#ifdef __cplusplus
} // extern "C"
#endif

#pragma warning( pop )

#endif // (NTDDI_VERSION >= NTDDI_WIN7)

#endif // _WINBIO_TYPES_H_712486DB_3EF5_41da_937A_55DCB7B66A53_


