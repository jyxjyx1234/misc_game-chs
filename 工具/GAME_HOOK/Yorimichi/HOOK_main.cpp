#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "HookTitle.h"
#include "text_process.h"
#include "textReplacer.h"

void HOOK_main() {
	InstallHook_replacetext();
	changeWindowCfg.isCheckOri = false;
	//changeWindowCfg.newWindowName = L"标题中文测试";
	changeWindowCfg.modeltype = "Deepseek-R1";
	hookTitle_main();

	install_hook_textreplaceEx(2, "trans\\data.bin", "yorimichi");

	newFontName = L"SimSun";
	installFontHook_main(1, 1, 1, 0);
}