#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "readconfig.h"

void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");

	if (config.ReadInt("TEXTPROCESS", "ENABLE", 0) == 1) {
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1){
			//MessageBoxA(NULL, "Dump Text Mode", "Text Process", MB_OK);
			InstallHook_dumptext();
		}

		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
			InstallHook_replacetext();
		}
	}
}