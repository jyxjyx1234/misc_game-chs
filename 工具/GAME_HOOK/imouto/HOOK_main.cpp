#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "HookTitle.h"
#include "text_process.h"
#include "textReplacer.h"

void CreateConsole()
{
	if (AllocConsole())
	{
		system("chcp 65001");
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		//SetConsoleOutputCP(95003);
	}
}

void HOOK_main() {
	//CreateConsole();
	InstallHook_replacetext();
	changeWindowCfg.isCheckOri = true;
	changeWindowCfg.oriWindowName = "鍛　わたし、どんなことだって´";
	changeWindowCfg.modeltype = "Gemini-2.5-pro";
	hookTitle_main();
}