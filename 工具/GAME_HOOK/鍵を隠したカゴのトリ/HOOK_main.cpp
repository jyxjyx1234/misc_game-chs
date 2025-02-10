#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "hook_LoadLib.h"
#include "readconfig.h"
#include "HookTitle.h"


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

	changeWindowCfg.isCheckOri = false;
	changeWindowCfg.oriWindowName = "鍵を隠したカゴのトリ-Bird in cage hiding the key-";
	changeWindowCfg.modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "");;
	hookTitle_main();
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}
	HOOK_LL_main();
}