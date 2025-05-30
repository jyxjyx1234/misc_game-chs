/*++

Copyright (c) 2008  Microsoft Corporation

Module Name:

    apiset.h

Abstract:

    This module contains definitions related to the management of API namespaces.

Author:

    Arun Kishan (arunki) 14-Sep-2008

--*/

#ifndef _API_SET_H_
#define _API_SET_H_

//
// API schema DLL information.
//

#define API_SET_PREFIX_NAME_A           "API-"
#define API_SET_PREFIX_NAME_U           L"API-"
#define API_SET_EXTENSION_NAME_A        "EXT-"
#define API_SET_EXTENSION_NAME_U        L"EXT-"

#define API_SET_SCHEMA_NAME             ApiSetSchema
#define API_SET_SECTION_NAME            ".apiset"
#define API_SET_SCHEMA_SUFFIX           L".sys"


#define API_SET_SCHEMA_VERSION          0x00000002UL

#define API_SET_HELPER_NAME             ApiSetHelp

#define API_SET_LOAD_SCHEMA_ORDINAL     1
#define API_SET_LOOKUP_ORDINAL          2
#define API_SET_RELEASE_SCHEMA_ORDINAL  3

#define API_SET_STRING_X(s)             #s
#define API_SET_STRING(s)               API_SET_STRING_X(s)
#define API_SET_STRING_U_Y(s)           L ## s
#define API_SET_STRING_U_X(s)           API_SET_STRING_U_Y(s)
#define API_SET_STRING_U(s)             API_SET_STRING_U_X(API_SET_STRING(s))

//
// API set interface definitions.
//

#define API_SET_OVERRIDE(X)             X##Implementation
#define API_SET_LEGACY_OVERRIDE_DEF(X)  X = API_SET_OVERRIDE(X)
#define API_SET_OVERRIDE_DEF(X)         API_SET_LEGACY_OVERRIDE_DEF(X) PRIVATE

#define API_SET_PRIVATE(X)              X     PRIVATE

#ifdef _API_SET_HOST

#undef API_SET
#undef API_SET_LIBRARY

#define API_SET_LIBRARY(X)

#define API_SET(X)                      X     PRIVATE

#else

#ifndef _API_SET_LEGACY_TARGET

#define API_SET(X)                      X

#else

#undef API_SET_PRIVATE

#define API_SET(X)                      X = _API_SET_LEGACY_TARGET##.##X
#define API_SET_PRIVATE(X)              X = _API_SET_LEGACY_TARGET##.##X   PRIVATE

#endif // _API_SET_LEGACY_TARGET

#define API_SET_LIBRARY(X)              LIBRARY X

#endif // _API_SET_HOST

#ifdef _NTDEF_

//
// Data structures.
//

typedef struct _API_SET_VALUE_ENTRY {
    ULONG NameOffset;
    ULONG NameLength;
    ULONG ValueOffset;
    ULONG ValueLength;
} API_SET_VALUE_ENTRY, *PAPI_SET_VALUE_ENTRY;

typedef struct _API_SET_VALUE_ARRAY {
    ULONG               Count;
    API_SET_VALUE_ENTRY  Array[1]; // variable size array
} API_SET_VALUE_ARRAY,*PAPI_SET_VALUE_ARRAY;

typedef struct _API_SET_NAMESPACE_ENTRY {
    ULONG NameOffset;
    ULONG NameLength;
    ULONG DataOffset;   // API_SET_VALUE_ARRAY
} API_SET_NAMESPACE_ENTRY, *PAPI_SET_NAMESPACE_ENTRY;

typedef struct _API_SET_NAMESPACE_ARRAY {
    ULONG Version;
    ULONG Count;
    API_SET_NAMESPACE_ENTRY Array[1]; // variable size array
} API_SET_NAMESPACE_ARRAY, *PAPI_SET_NAMESPACE_ARRAY;

typedef const API_SET_VALUE_ENTRY *PCAPI_SET_VALUE_ENTRY;
typedef const API_SET_VALUE_ARRAY *PCAPI_SET_VALUE_ARRAY;
typedef const API_SET_NAMESPACE_ENTRY *PCAPI_SET_NAMESPACE_ENTRY;
typedef const API_SET_NAMESPACE_ARRAY *PCAPI_SET_NAMESPACE_ARRAY;

//
// Offline API set resolution support.
//

typedef
_Function_class_(API_SET_LOAD_SCHEMA_RTN)
NTSTATUS
(NTAPI API_SET_LOAD_SCHEMA_RTN) (
    _In_ PCSTR SchemaPath,
    _Outptr_ PCAPI_SET_NAMESPACE_ARRAY *Schema,
    _Outptr_ PVOID *Context
    );

typedef API_SET_LOAD_SCHEMA_RTN *PAPI_SET_LOAD_SCHEMA_RTN;

typedef
_Function_class_(API_SET_LOOKUP_HELPER_RTN)
NTSTATUS
(NTAPI API_SET_LOOKUP_HELPER_RTN) (
    _In_ PCAPI_SET_NAMESPACE_ARRAY Schema,
    _In_ PCSTR FileName,
    _In_ PCSTR ParentName,
    _Out_ PBOOLEAN Resolved,
    _Out_writes_bytes_(Length) PSTR ResolvedName,
    _In_ ULONG Length
    );

typedef API_SET_LOOKUP_HELPER_RTN *PAPI_SET_LOOKUP_HELPER_RTN;

typedef
_Function_class_(API_SET_RELEASE_SCHEMA_RTN)
NTSTATUS
(NTAPI API_SET_RELEASE_SCHEMA_RTN) (
    _In_ PVOID Context
    );

typedef API_SET_RELEASE_SCHEMA_RTN *PAPI_SET_RELEASE_SCHEMA_RTN;

//
// Prototypes
//

NTSTATUS
NTAPI
ApiSetResolveToHost (
    _In_ PCAPI_SET_NAMESPACE_ARRAY ApiSetSchema,
    _In_ PCUNICODE_STRING FileNameIn,
    _In_opt_ PCUNICODE_STRING ParentName,
    _Out_ PBOOLEAN Resolved,
    _Out_ PUNICODE_STRING HostBinary
    );

#endif // _NTDEF_

#endif // _API_SET_H_
