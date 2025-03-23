#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "LE.h"
#include "HookTitle.h"
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
	}
}

void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");

	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}

	HMODULE a = GetModuleHandleA("flash asset.x32");
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

	//changeWindowCfg.isCheckOri = false;
	//changeWindowCfg.modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "");
	//DetourTransactionBegin();
	//DetourUpdateThread(GetCurrentThread());
	//printf("Title Hook Installed!\n");
	//DetourAttach(&(PVOID&)TruesetWindowTextA, HookedSetWindowTextA);
	//DetourTransactionCommit();

	if (config.ReadInt("GLOBAL", "LE", 0) == 1) {
		install_LE();
	}
}