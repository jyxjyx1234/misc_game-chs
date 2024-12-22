#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "hook_createfontA.h"
#include "hook_createfontindrectA.h"
#include "hook_createfontindrectW.h"
#include "hook_setWindowTextA.h"
#include "hook_createfontW.h"
#include "LE.h"
#include "hook_LoadLib.h"
#include "process_text.h"

void CreateConsole()
{
	// 分配新的控制台
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		// 设置控制台代码页为UTF-8
		//_setmode(_fileno(stdout), _O_U16TEXT);
		//SetConsoleOutputCP(932);
	}
}

void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}
	HMODULE a = GetModuleHandleA("Flash Asset.x32");
	if (a) {
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1) {
			dump_text_main();
		}
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
			replace_text_main();
		}
	}
	else {
		HOOK_LL_main();
	}

	if (config.ReadInt("GLOBAL", "CHANGEFONTMODE", 0) == 1) {
		hook_createfontA_main();
		hook_createfontW_main();
	}	
	if (config.ReadInt("GLOBAL", "CHANGEFONTMODE", 0) == 2) {
		hook_createfontindirectA_main();
		hook_createfontindirectW_main();
	}
	if (config.ReadInt("GLOBAL", "CHANGEFONTMODE", 0) == 3) {
		hook_createfontA_main();
		hook_createfontW_main();
		hook_createfontindirectA_main();
		hook_createfontindirectW_main();
	}
	if (config.ReadInt("GLOBAL", "CHANGEWINDOW", 0) == 1) {
		hook_setWindowTextA_main();
	}
	if (config.ReadInt("GLOBAL", "LE", 0) == 1) {
		install_LE();
	}
}