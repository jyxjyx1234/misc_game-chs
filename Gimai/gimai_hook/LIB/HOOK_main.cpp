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
	// �����µĿ���̨
	if (AllocConsole())
	{
		FILE* fp;
		freopen_s(&fp, "CONOUT$", "w", stdout);
		setlocale(LC_CTYPE, "zh-ch");
		// ���ÿ���̨����ҳΪUTF-8
		//_setmode(_fileno(stdout), _O_U16TEXT);
		SetConsoleOutputCP(932);
	}
}

void HOOK_main() {
	MessageBox(NULL, L"��������jyxjyx1234/ALyCE���������������github/2dfan��ʹ��cluade-3-5-sonnet���з��룬��������ѧϰ��������������ɵ�github��2dfan����������������\n��ʼ��Ϸǰ��ע�⣺\n1��ת������\n2���������н��ݥ������󥯥���Ϊoff�����գ�",L"��Ϣ",NULL);
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