#ifndef hook_cfW_h
#define hook_cfW_h

#include <Windows.h>
#include "detours.h"
#pragma comment(lib, "detours.lib")

void hook_createfontW_main();
bool ifchangeW(
    int    cHeight,
    int    cWidth,
    int    cWeight,
    LPCWSTR pszFaceName);

#endif // !hook_cfW_h
