#ifndef hook_cfA_h
#define hook_cfA_h

#include <Windows.h>
#include "detours.h"

void hook_createfontA_main();
extern BOOL isFontAdded;
void addfontres(std::string fontfn);
HFONT WINAPI HookedCreateFontA_changefont(
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
    LPCSTR pszFaceName);
bool ifchange(
    int    cHeight,
    int    cWidth,
    int    cWeight,
    LPCSTR pszFaceName);

#endif // !hook_cfA_h
