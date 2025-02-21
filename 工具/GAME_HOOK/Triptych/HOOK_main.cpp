
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "HookTitle.h"
#include "hookFont.h"

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
	changeWindowCfg.isCheckOri = false;
	changeWindowCfg.isCheckStart = true;
	changeWindowCfg.oriWindowName = "Triptych";
	hookTitle_main();

	//newFontName = L"SimHei";
	//HeightScaleFactor = 90;
	newWeight = 800;
	installFontHook_main(TRUE, 0, TRUE, 0);
	InstallHook_replaceFile();
}