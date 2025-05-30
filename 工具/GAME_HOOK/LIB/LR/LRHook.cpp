#include<Windows.h>
#include<detours.h>
#include "LRHook.h"
#include "../LR/LRHookFunc.h"
#include"../LR/LRCommonLibrary.h"
//#pragma comment(lib, "LRCommonLibrary.lib")

LRProfile settings;
BOOL LR_MAIN(HMODULE hModule) {
	std::cout << "DLL_PROCESS_ATTACH\n";
	LRConfigFileMap filemap;
	filemap.ReadConfigFileMap(&settings);
	GetModuleFileNameA(hModule, Original.DllPath, MAX_PATH);
	Original.hHeap = GetProcessHeap();
	DetourRestoreAfterWith();
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	AttachFunctions();
	DetourTransactionCommit();
	return true;
}
