#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "hook_createfontA.h"
#include "hook_createfontindrectA.h"
#include "hook_setWindowTextA.h"
#include "LE.h"

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
		SetConsoleOutputCP(932);
	}
}

void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}
	if (config.ReadInt("GLOBAL", "MODE", 0) == 1) {
		hook_createfontA_main();
	}	
	if (config.ReadInt("GLOBAL", "MODE", 0) == 2) {
		hook_createfontindirectA_main();
	}
	if (config.ReadInt("GLOBAL", "MODE", 0) == 3) {
		hook_createfontA_main();
		hook_createfontindirectA_main();
	}
	if (config.ReadInt("GLOBAL", "CHANGEWINDOW", 0) == 1) {
		hook_setWindowTextA_main();
	}
	if (config.ReadInt("GLOBAL", "LE", 0) == 1) {
		install_LE();
	}
}