#ifndef hook_cfiA_h
#define hook_cfiA_h

#include <Windows.h>
#include "detours.h"

void hook_createfontindirectA_main();
HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf);
#endif // !hook_cfiA_h
