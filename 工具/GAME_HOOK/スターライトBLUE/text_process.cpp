#include "textReplacer.h"
#include "text_process.h"
#include "hook_def.h"
#include "VFS.h"
#include "HookTitle.h"

#define _DWORD DWORD

INIT_PACK_INFO("CHS.dat", "blue")

void InstallHook_replacetext() {
	InstallVFS(packname, enc);
	changeWindowCfg.isCheckOri = false;
	changeWindowCfg.newWindowName = L"¥¹¥¿©`¥é¥¤¥ÈBLUE";
	changeWindowCfg.modeltype = "Gemini-2.5-pro";
	hookTitle_main();
    install_hook_textreplaceFromPackEx(1, packname, "data.bin", enc);
}
