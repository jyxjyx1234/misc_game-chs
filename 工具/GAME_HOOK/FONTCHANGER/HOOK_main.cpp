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
#include "VFS.h"
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

#define DEFAULT_DEBUG  0
#define DEFAULT_LE 1
#define DEFAULT_TEXTREPLACEMODE 7
#define DEFAULT_VFS 1
#define DEFAULT_VFS_PACKNAME "kagura_chs.cpk"
#define DEFAULT_VFS_ENC "kagura"
#define REPLACE_LIST_NAME "replace.bin"



void HOOK_main() {
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", DEFAULT_DEBUG) == 1) {
		CreateConsole();
	}
	if (config.ReadInt("GLOBAL", "LE", DEFAULT_LE) == 1) {
		install_LE();
	}
	LoadLibraryA(config.ReadString("GLOBAL", "LOADDLL", "").c_str());
	LoadLibraryA(config.ReadString("GLOBAL", "LOADDLL2", "").c_str());
	LoadLibraryA(config.ReadString("GLOBAL", "LOADDLL3", "").c_str());

	//if (config.ReadString("VFS", "PACKNAME", "") != "") {
	//	std::string packname = config.ReadString("VFS", "PACKNAME", "");
	//	printf("VFS PackName: %s\n", packname.c_str());
	//	std::string key = "jyxjyx1234";
	//	//InstallHookCreateFileA(packname, key);
	//	//InstallHookCreateFileW(packname, key);
	//}

	std::string newFontNameA = config.ReadString("FONT", "FONTNAME", "NOTCHANGE");
	newFontName = GBKStringToWString(newFontNameA);
	HeightScaleFactor = config.ReadInt("FONT", "HEIGHTSCALEFACTOR", 100);
	WidthScaleFactor = config.ReadInt("FONT", "WIDTHSCALEFACTOR", 100);
	newWeight = config.ReadInt("FONT", "WEIGHT", 0);
	newCharset = config.ReadInt("FONT", "CHARSET", 1);
	loadfont();
	installFontHook_main(config.ReadInt("FONT","A", 0), config.ReadInt("FONT", "W", 0), config.ReadInt("FONT", "IA", 0), config.ReadInt("FONT", "IW", 0));
	//installEnumFontHook_main();

	if (config.ReadInt("GLOBAL", "MBWC", 0)) {
		installMBWCHook_main();
	}

	if (config.ReadInt("WINDOW", "ENABLE", 1) == 0) {
		changeWindowCfg.oriWindowName = config.ReadString("WINDOW", "ORI", "");
		changeWindowCfg.newWindowName = GBKStringToWString(config.ReadString("WINDOW", "NEW", ""));
		changeWindowCfg.modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3.5-sonnet");
		changeWindowCfg.isCheckOri = config.ReadInt("WINDOW", "CHECKORI", 0);
		hookTitle_main();
	}
	if (config.ReadInt("TEXTREPLACE", "MODE", DEFAULT_TEXTREPLACEMODE) != 0) {
		if (config.ReadInt("VFS", "ENABLE", DEFAULT_VFS) == 0) {
			install_hook_textreplace(config.ReadInt("TEXTREPLACE", "MODE", DEFAULT_TEXTREPLACEMODE));
		}
		else {
			install_hook_textreplaceFromPackEx(config.ReadInt("TEXTREPLACE", "MODE", DEFAULT_TEXTREPLACEMODE), config.ReadString("VFS", "PACKNAME", DEFAULT_VFS_PACKNAME), REPLACE_LIST_NAME, DEFAULT_VFS_ENC);
		}
		//install_hook_textreplaceFromPackEx(config.ReadInt("TEXTREPLACE", "MODE", DEFAULT_TEXTREPLACEMODE), config.ReadString("VFS", "PACKNAME", DEFAULT_VFS_PACKNAME), "data2.bin", DEFAULT_VFS_ENC);
	}
	if (config.ReadInt("VFS", "ENABLE", DEFAULT_VFS) != 0) {
		InstallVFS(DEFAULT_VFS_PACKNAME,DEFAULT_VFS_ENC);
	}
}