#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
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
	changeWindowCfg.isCheckOri = true;
	changeWindowCfg.oriWindowName = "夏色小町";
	changeWindowCfg.newWindowName = L"夏色小町";
	changeWindowCfg.modeltype = "Gemini-2.5-pro";
	hookTitle_main();
	InstallHook_replacetext();
}