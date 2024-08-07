#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "readconfig.h"
#include "convert.h"
#include "CONTRY_CHANGE.h"
#include "dump_text.h"
#include "HOOK_MAIN.h"

void CreateConsole()
{
	// 分配新的控制台
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-CH");
		// 设置控制台代码页为UTF-8
		//_setmode(_fileno(stdout), _O_U16TEXT);
		SetConsoleOutputCP(0);
	}
}

VOID WINAPI HOOK_MAIN() {
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}

	//启动时消息
	std::string STARTMESSAGE = config.ReadString("STARTMESSAGE", "MESSAGE", "");
	if (config.ReadInt("STARTMESSAGE", "ENABLE", 0) == 1) {
		MessageBoxW(NULL, string2LPCWSTR(STARTMESSAGE), L"信息", NULL);
	}

	//转区
	if (config.ReadInt("LE", "ENABLE", 0) == 1) {
		CONTRY_C(config);
		//test
		//MessageBoxW(NULL, string2LPCWSTR("GetACP():" + std::to_string(GetACP())), L"test", NULL);
	}

	if (config.ReadInt("DUMPTEXT", "ENABLE", 0) == 1) {
		dump_text(config);
	}
}
