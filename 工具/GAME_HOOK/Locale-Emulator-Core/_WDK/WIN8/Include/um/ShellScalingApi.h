
#ifdef _MSC_VER
#pragma once
#endif // _MSC_VER
#include <shtypes.h>

#include <winapifamily.h>

#pragma region Desktop Family
#if WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP)



#ifndef SCALING_ENUMS_DECLARED

// The scaling API only operates over the primary display and the immersive display.  Scaling information
// is not provided for displays other than those.
// This enum matches #defines in IETouch.h.  Don't update this without keeping that in sync.
typedef enum
{
    DEVICE_PRIMARY = 0,
    DEVICE_IMMERSIVE = 1,
} DISPLAY_DEVICE_TYPE;

typedef enum
{
    SCF_VALUE_NONE = 0x00,
    SCF_SCALE = 0x01,
    SCF_PHYSICAL = 0x02,
} SCALE_CHANGE_FLAGS;
DEFINE_ENUM_FLAG_OPERATORS(SCALE_CHANGE_FLAGS);

#define SCALING_ENUMS_DECLARED
#endif

#if (NTDDI_VERSION >= NTDDI_WIN8)

// Given a display device, return the preferred DEVICE_SCALE_FACTOR to be used for scaling values.
// Default is SCALE_100_PERCENT
STDAPI_(DEVICE_SCALE_FACTOR) GetScaleFactorForDevice(_In_ DISPLAY_DEVICE_TYPE deviceType);

// Register a window to recieve callbacks when scaling information changes.  The uMsgNotify param specifies a message
// that will be posted to the requesting window.  The wParam for this message is a combination of SCALE_CHANGE_FLAGS
STDAPI RegisterScaleChangeNotifications(_In_ DISPLAY_DEVICE_TYPE displayDevice, _In_ HWND hwndNotify, _In_ UINT uMsgNotify, _Out_ DWORD *pdwCookie);
STDAPI RevokeScaleChangeNotifications(_In_ DISPLAY_DEVICE_TYPE displayDevice, _In_ DWORD dwCookie);


#endif // (NTDDI_VERSION >= NTDDI_WIN8)

#endif /* WINAPI_FAMILY_PARTITION(WINAPI_PARTITION_DESKTOP) */
#pragma endregion

