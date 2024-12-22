#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "hook_createfontA.h"
//#include "hook_setWindowTextA.h"
#include "LE.h"

void HOOK_main() {
	hook_createfontA_main();
	//hook_setWindowTextA_main();
	install_LE();
}