#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
//#include "hook_createfontA.h"
#include "text_process.h"
//#include "hook_setWindowTextA.h"
#include "LE.h"

void CreateConsole()
{
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "ja-jp");
		SetConsoleOutputCP(932);
	}
}

void HOOK_main() {
	//CreateConsole();
	//hook_createfontA_main();
	//hook_setWindowTextA_main();
	InstallHook_replacetext();
	install_LE();
}