#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "hook_createfontindrectA.h"
#include "text_process.h"
#include "hook_LoadLib.h"
#include "readconfig.h"
#include "hook_createfontA.h"

void CreateConsole()
{
	// �����µĿ���̨
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		// ���ÿ���̨����ҳΪUTF-8
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

	if (config.ReadInt("FONT", "CHANGEFONTMODE", 0) == 1) {
		if (config.ReadInt("FONT", "CHANGECHARSET", 0) == 1) {
			hook_createfontindirectA_changecharset_main();
		}

		if (config.ReadInt("FONT", "CHANGEFONT", 0) == 1) {
			std::string fontname = config.ReadString("GLOBAL", "FONTNAME", "");
			std::string fontfilename = config.ReadString("GLOBAL", "FONTFILENAME", "");
			hook_createfontindirectA_changefont_main(fontname, fontfilename);
		}
	}

	if (config.ReadInt("FONT", "CHANGEFONTMODE", 0) == 2) {
		hook_createfontA_main();
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
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1){
			InstallHook_dumptext();
		}

		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
			InstallHook_replacetext();
		}
	}

}