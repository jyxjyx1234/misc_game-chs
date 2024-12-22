#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "readconfig.h"

void HOOK_main() {
	LoadLibraryA("fontchanger.dll");
	InstallHook_replacecharmap();
}