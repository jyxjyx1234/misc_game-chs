#include <windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include "readconfig.h"
#include "convert.h"
#include "CONTRY_CHANGE.h"
#include "text_process.h"
#include "HOOK_MAIN.h"
#include "changefont.h"
#include "hook_LoadLib.h"
#include "hook_createfontindrectA.h"

void CreateConsole()
{
	// �����µĿ���̨
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "ja-jp");
		// ���ÿ���̨����ҳΪUTF-8
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

	hook_createfontindirectA_changefont_main("Shakinashima_font","Shakinashima.ttf");

	MessageBoxW(NULL, L"������ʹ��sakura-32b-qwen2beta-v0.9.1-q3km���з��룬��jyxjyx1234/ALyCE���������������github/2dfan������bug��ӭ��2dfan��������github��Ŀ�·�����", L"��Ϣ", NULL);

	HMODULE a = GetModuleHandleA("Text Asset.x32");

	if ( a ) {
		InstallHook_replacetext();
	}
	else {
		HOOK_LL_main();
		printf("Try to hook loadlibrary!\n");
	}
}
