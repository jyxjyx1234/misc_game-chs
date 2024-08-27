#ifndef hook_cfA_h
#define hook_cfA_h

#include <Windows.h>
#include "detours.h"
#pragma comment(lib, "detours.lib")

void hook_createfontA_main();
bool ifchange(
    int    cHeight,
    int    cWidth,
    int    cWeight,
    LPCSTR pszFaceName);

#endif // !hook_cfA_h
