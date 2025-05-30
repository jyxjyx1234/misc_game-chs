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
	InstallHook_replacetext();
	changeWindowCfg.isCheckOri = false;
	changeWindowCfg.modeltype = "Deepseek-R1";
	hookTitle_main();

	install_hook_textreplaceEx(2, "trans\\data.bin", "yorimichi");

	newFontName = L"SimSun";
	installFontHook_main(1, 1, 1, 0);
}