#include "textReplacer.h"
#include "text_process.h"
#include "hook_def.h"
#include "VFS.h"

INIT_PACK_INFO("imouto_CHS.CPK", "imouto")

void InstallHook_replacetext() {
	InstallVFS(packname, enc);
	install_hook_textreplaceFromPackEx(6, packname, "replace.bin", enc);
}
