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
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		SetConsoleOutputCP(95003);
	}
}

void HOOK_main() {
	//CreateConsole();
	InstallHook_replacetext();
	changeWindowCfg.isCheckOri = false;
	changeWindowCfg.modeltype = "Claude-3.7-sonnet";
	hookTitle_main();

}