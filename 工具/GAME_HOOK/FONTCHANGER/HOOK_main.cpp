#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "readconfig.h"
#include "hookFont.h"
#include "HookTitle.h"
#include "LE.h"
#include "textReplacer.h"
//#include "FVPSaveChanger.h"

rr::RConfig config;

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

void loadfont(){
    std::string fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        printf("Load Font %s: Sucessful!\n", fontfn.c_str());
    }
    else {
        printf("Fail to Load Font!\n");
    }
}

void HOOK_main() {
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}
	if (config.ReadInt("GLOBAL", "LE", 0) == 1) {
		install_LE();
	}
	LoadLibraryA(config.ReadString("GLOBAL", "LOADDLL", "").c_str());

	std::string newFontNameA = config.ReadString("FONT", "FONTNAME", "NOTCHANGE");
	newFontName = GBKStringToWString(newFontNameA);
	HeightScaleFactor = config.ReadInt("FONT", "HEIGHTSCALEFACTOR", 100);
	WidthScaleFactor = config.ReadInt("FONT", "WIDTHSCALEFACTOR", 100);
	newWeight = config.ReadInt("FONT", "WEIGHT", 0);
	newCharset = config.ReadInt("FONT", "CHARSET", 1);
	loadfont();
	installFontHook_main(config.ReadInt("FONT","A", 0), config.ReadInt("FONT", "W", 0), config.ReadInt("FONT", "IA", 0), config.ReadInt("FONT", "IW", 0));

	if (config.ReadInt("WINDOW", "ENABLE", 0) == 1) {
		changeWindowCfg.oriWindowName = config.ReadString("WINDOW", "ORI", "");
		changeWindowCfg.newWindowName = config.ReadString("WINDOW", "NEW", "");
		changeWindowCfg.modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3.5-sonnet");
		changeWindowCfg.isCheckOri = config.ReadInt("WINDOW", "CHECKORI", 1);
		hookTitle_main();
	}
	if (config.ReadInt("TEXTREPLACE", "MODE", 0) != 0) {
		install_hook_textreplace(config.ReadInt("TEXTREPLACE", "MODE", 0));
	}
}