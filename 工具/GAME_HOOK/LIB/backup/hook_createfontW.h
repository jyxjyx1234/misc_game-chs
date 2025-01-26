#ifndef hook_cfW_h
#define hook_cfW_h

#include <Windows.h>
#include "detours.h"

void hook_createfontW_main();
HFONT WINAPI HookedCreateFontW_changefont(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCWSTR pszFaceName);
bool ifchangeW(
    int    cHeight,
    int    cWidth,
    int    cWeight,
    LPCWSTR pszFaceName);

#endif // !hook_cfW_h
