#ifndef hook_cfiw_h
#define hook_cfiw_h

#include <Windows.h>
#include "detours.h"
#pragma comment(lib, "detours.lib")

void hook_createfontindirectW_main();

#endif // !hook_cfiA_h
