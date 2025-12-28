#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
//#include <shellscalingapi.h>
#include "readconfig.h"

#include "dll_proxy.h"

//#pragma comment(lib, "Shcore.lib")

BOOL APIENTRY DllMain(HMODULE hModule,
	DWORD  ul_reason_for_call,
	LPVOID lpReserved
)
{
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH: {
		rr::RConfig config;
		config.ReadConfig("hook.ini");
		std::string loaddll = config.ReadString("GLOBAL", "LOADDLL", "");
		LoadLibraryA(loaddll.c_str());
		std::string loaddll2 = config.ReadString("GLOBAL", "LOADDLL2", "");
		LoadLibraryA(loaddll2.c_str());

		DisableThreadLibraryCalls(hModule);
		Load(); Init();
		//SetProcessDpiAwareness(PROCESS_PER_MONITOR_DPI_AWARE);
		break;
	}
	case DLL_THREAD_ATTACH:
	case DLL_THREAD_DETACH:
	case DLL_PROCESS_DETACH:
		Free();
		break;
	}
	return TRUE;
}