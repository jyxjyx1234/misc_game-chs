#include "AllocConsole.h"

#include <stdio.h>
#include <locale.h>
#include <Windows.h>


namespace Rut::RxStream
{
	bool __stdcall SetConsoleTop(LPVOID lpParameter)
	{
		HWND consoleHWND = NULL;
		WCHAR consoleTitle[MAX_PATH] = { 0 };

		for (size_t ite = 20; ite-- > 0;)
		{
			GetConsoleTitleW(consoleTitle, MAX_PATH);
			consoleHWND = FindWindowW(NULL, (LPWSTR)consoleTitle);
			if (consoleHWND != NULL)
			{
				SetWindowPos(consoleHWND, HWND_TOPMOST, NULL, NULL, NULL, NULL, SWP_NOMOVE | SWP_NOSIZE | SWP_SHOWWINDOW);
				return true;
			}

			Sleep(1000);
		}

		MessageBoxW(NULL, L"Topmost Console Window Failed!", NULL, NULL);
		return false;
	}

	void __stdcall SetConsoleNoQuickEdit()
	{
		DWORD mode = 0;
		GetConsoleMode(GetStdHandle(STD_INPUT_HANDLE), &mode);
		SetConsoleMode(GetStdHandle(STD_INPUT_HANDLE), mode & ~ENABLE_QUICK_EDIT_MODE);
	}

	void __stdcall SetConsoleLocale()
	{
		//system("chcp 65001");
		//system("chcp 936");
		setlocale(LC_ALL, "chs");
		//std::locale::global(std::locale(""));
	}

	FILE* __stdcall SetConsoleSTDIO()
	{
		FILE* fpConsole = NULL;

		freopen_s(&fpConsole, "CONIN$", "r+t", stdin);
		freopen_s(&fpConsole, "CONOUT$", "w+t", stdout);

		return fpConsole;
	}


	FILE* SetConsole(const wchar_t* lpTitle)
	{
		AllocConsole();
		AttachConsole(ATTACH_PARENT_PROCESS);

		SetConsoleTitleW(lpTitle);
		CreateThread(NULL, NULL, (LPTHREAD_START_ROUTINE)SetConsoleTop, NULL, NULL, NULL);
		SetConsoleNoQuickEdit();
		SetConsoleLocale();

		return SetConsoleSTDIO();
	}
}