#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "readconfig.h"
#include "hook_LoadLib.h"

void HOOK_main() {
	HMODULE a = GetModuleHandleA("GameAssembly.dll");
	if (a) {
		text_process_install();
	}
	else {
		HOOK_LL_main();
	}
}