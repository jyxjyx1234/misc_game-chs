#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "hook_createfontA.h"
#include "hook_createfontindrectA.h"
#include "hook_createfontindrectW.h"
#include "hook_setWindowTextA.h"
#include "hook_createfontW.h"
#include "LE.h"
//#include "FVPSaveChanger.h"

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

void loadfont(){
	rr::RConfig config;
    config.ReadConfig("hook.ini");
    std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        printf("Load Font %s: Sucessful!\n", fontfn.c_str());
    }
    else {
        printf("Fail to Load Font!\n");
    }
}


void HOOK_main() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");

	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}
	if (config.ReadInt("GLOBAL", "LE", 0) == 1) {
		install_LE();
	}
	LoadLibraryA(config.ReadString("GLOBAL", "LOADDLL", "").c_str());
	if (config.ReadInt("GLOBAL", "MODE", 0) == 1) {
		loadfont();
		hook_createfontA_main();
		hook_createfontW_main();
	}	
	if (config.ReadInt("GLOBAL", "MODE", 0) == 2) {
		loadfont();
		hook_createfontindirectA_main();
		hook_createfontindirectW_main();
	}
	if (config.ReadInt("GLOBAL", "MODE", 0) == 3) {
		loadfont();
		hook_createfontA_main();
		hook_createfontW_main();
		hook_createfontindirectA_main();
		//hook_createfontindirectW_main();
	}
	if (config.ReadInt("GLOBAL", "CHANGEWINDOW", 0) == 1) {
		hook_setWindowTextA_main();
	}
	if (config.ReadInt("TEXTREPLACE", "TextOutA", 0) == 1) {
		//hook_TextOutA_textReplace_main();
	}
	/*if (config.ReadInt("FVPSaveChanger", "ENABLE", 0) == 1) {
		InstallHook_savechanger(config.ReadInt("FVPSaveChanger", "offset", 0));
	}*/
}