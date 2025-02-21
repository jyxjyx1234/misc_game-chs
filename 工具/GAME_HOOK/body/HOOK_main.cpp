
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "hookFont.h"

void CreateConsole()
{
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		SetConsoleOutputCP(932);
	}
}

void HOOK_main() {
	//CreateConsole();
	newFontName = L"Simsun";
	//AddFontResourceExA("body.ttf", FR_PRIVATE, NULL);
	//HeightScaleFactor = 200;
	//WidthScaleFactor = 200;
	installFontHook_main(TRUE, TRUE, TRUE, 0);

	InstallHook_replacetext();
}