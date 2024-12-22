#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "HOOK_main.h"
#include "hook_createfontindrectA.h"
#include "text_process.h"
#include "hook_LoadLib.h"
#include "readconfig.h"

void CreateConsole()
{
	// 分配新的控制台
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		// 设置控制台代码页为UTF-8
		//_setmode(_fileno(stdout), _O_U16TEXT);
		SetConsoleOutputCP(932);
	}
}

void HOOK_main() {
	MessageBox(NULL, L"本补丁由jyxjyx1234/ALyCE免费制作并发布于github/2dfan，使用cluade-3-5-sonnet进行翻译，仅供交流学习。如遇运行问题可到github或2dfan补丁评论区反馈。\n开始游戏前请注意：\n1、转区运行\n2、在设置中将ポイスシンクロ设为off（オフ）",L"信息",NULL);
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "DEBUG", 0) == 1) {
		CreateConsole();
	}

	if (config.ReadInt("TEXTPROCESS", "ENABLE", 0) == 1) {
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 1){
			Dump_text_main();
		}
		if (config.ReadInt("TEXTPROCESS", "MODE", 0) == 2) {
			Trans_text_main();
		}
	}
}