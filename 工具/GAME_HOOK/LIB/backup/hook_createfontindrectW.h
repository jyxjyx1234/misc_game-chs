#ifndef hook_cfiw_h
#define hook_cfiw_h

#include <Windows.h>
#include "detours.h"

void hook_createfontindirectW_main();
HFONT WINAPI HookedCreateFontIndirectW(CONST LOGFONTW* lplf);
#endif // !hook_cfiA_h
