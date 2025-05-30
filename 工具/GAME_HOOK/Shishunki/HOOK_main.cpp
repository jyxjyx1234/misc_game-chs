#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "text_process.h"
#include "textReplacer.h"
#include "hookFont.h"

void HOOK_main() {
	InstallHook_replacetext();
	install_hook_textreplaceEx(2, "trans\\data.bin", "\0");

	newFontName = L"SimSun";
	installFontHook_main(1, 1, 1, 0);
}