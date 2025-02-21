#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "hook_LoadLib.h"
#include "readconfig.h"


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

void win10Patch() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "WIN10PATCH", 0) == 1) {
		LoadLibrary(L"win10_patch.dll");
	}
}

void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");

	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}

	InstallHook_replacetext_LL();
}