#ifndef hook_SWT_h
#define hook_SWT_h

#include <Windows.h>
#include "detours.h"
#pragma comment(lib, "detours.lib")

void hook_setWindowTextA_main();

#endif // 
