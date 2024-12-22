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
#include "hook_EnumFontFamiliesA.h"

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

	//std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
	//AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0);

	hook_createfontA_main();
	//hook_TEXTOUTA_main();
	InstallHook_ifmessage();
	hook_EnumFontFamiliesA_main();
}