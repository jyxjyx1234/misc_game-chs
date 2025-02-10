
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
	changeWindowCfg.isCheckOri = true;
	changeWindowCfg.oriWindowName = "Vermilion";
	changeWindowCfg.newWindowName = "Vermilion Deepseek-R1 »ú·­ by ALyCE";
	hookTitle_main();

	newFontName = L"ALyCE_Humming";
	//HeightScaleFactor = 200;
	//WidthScaleFactor = 200;
	installFontHook_main(TRUE, TRUE, TRUE, TRUE);

	InstallHook_replacetext_LL();
}