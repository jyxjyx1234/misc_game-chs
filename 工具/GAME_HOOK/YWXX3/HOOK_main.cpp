#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "hook_createfontindrectA.h"
#include "text_process.h"
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

	std::string fontfilename = config.ReadString("FONT", "FONTFILENAME", "");
	std::string fontname = config.ReadString("FONT", "FONTNAME", "");
	AddFontResourceExA(fontfilename.c_str(), FR_PRIVATE, 0);

	if (config.ReadInt("GLOBAL", "CHANGEFONT", 0) == 1){
		void hook_createfontindirectA_changefont_main(std::string fontname, std::string fontfilename);
	}
	if (config.ReadInt("TEXTPROCESS", "ENABLE", 0) == 1) {
		InstallHook_ChangeText();
	}
}