 
/********************************************************************************
*                                                                               *
* profileapi.h -- ApiSet Contract for api-ms-win-core-profile-l1                *  
*                                                                               *
* Copyright (c) Microsoft Corporation. All rights reserved.                     *
*                                                                               *
********************************************************************************/

#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER

#ifndef _PROFILEAPI_H_
#define _PROFILEAPI_H_

#include <apiset.h>
#include <apisetcconv.h>
#include <minwindef.h>

/* APISET_NAME: api-ms-win-core-profile-l1 */

#ifndef _APISET_PROFILE_VER
#ifdef _APISET_MINWIN_VERSION
#if _APISET_MINWIN_VERSION >= 0x0101
#define _APISET_PROFILE_VER 0x0100
#endif
#endif
#endif

#ifdef __cplusplus
extern "C" {
#endif

//
// Performance counter API's
//

WINBASEAPI
BOOL
WINAPI
QueryPerformanceCounter(
    _Out_ LARGE_INTEGER * lpPerformanceCount
    );


WINBASEAPI
BOOL
WINAPI
QueryPerformanceFrequency(
    _Out_ LARGE_INTEGER * lpFrequency
    );


#ifdef __cplusplus
}
#endif

#endif // _PROFILEAPI_H_
