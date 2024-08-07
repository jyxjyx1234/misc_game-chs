#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "hook_createfontindrectA.h"
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

void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}

	if (config.ReadInt("GLOBAL", "CHANGECHARSET", 0) == 1) {
		hook_createfontindirectA_changecharset_main();
	}

	if (config.ReadInt("GLOBAL", "CHANGEFONT", 0) == 1) {
		std::string fontname = config.ReadString("GLOBAL", "FONTNAME", "");
		std::string fontfilename = config.ReadString("GLOBAL", "FONTFILENAME", "");
		hook_createfontindirectA_changefont_main(fontname, fontfilename);
	}

	if (config.ReadInt("TEXTPROCESS", "ENABLE", 0) == 1) {
		HMODULE a = GetModuleHandleA("resident.dll");

		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1){
			if (a) {
				InstallHook_dumptext();
			}
			else {
				HOOK_LL_main();
			}
		}

		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
			if (a) {
				InstallHook_replacetext();
			}
			else {
				HOOK_LL_main();
			}
		}
	}

}