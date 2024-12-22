#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "dll_proxy.h"
#include "HOOK_main.h"
#include <thread>

VOID __declspec(dllexport) stratmessage()
{
	std::wstring t1 = L"test";
	MessageBoxW(NULL, t1.c_str(), L"信息", NULL);
}

BOOL APIENTRY DllMain(HMODULE hModule,
	DWORD  ul_reason_for_call,
	LPVOID lpReserved
)
{
	if (ul_reason_for_call == DLL_PROCESS_ATTACH) {
		std::thread newt(stratmessage);
		newt.detach();
	}
	switch (ul_reason_for_call)
	{
	case DLL_PROCESS_ATTACH: {

		DisableThreadLibraryCalls(hModule);
		Load(); Init();
		HOOK_main();
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