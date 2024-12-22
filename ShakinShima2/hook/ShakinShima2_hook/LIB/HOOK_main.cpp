#include <Windows.h>
#include "HOOK_main.h"
#include "hook_LoadLib.h"
#include "process_text.h"


void HOOK_main() {
	HMODULE a = GetModuleHandleA("Flash Asset.x32");
	if (a){
		replace_text_main();
	}
	else {
		HOOK_LL_main();
	}
}