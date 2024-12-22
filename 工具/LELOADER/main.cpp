#include <Windows.h>
#include <iostream>
#include "convert.h"
#include "LE.h"
#include <regex>


int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    PSTR lpCmdLine, int nCmdShow)
{
    //FreeConsole();
    install_LE();
	WCHAR current_path[MAX_PATH] = { 0 };
    GetModuleFileNameW(NULL, current_path, MAX_PATH);
	std::wstring current_path_str = current_path;
    std::wregex pattern(L"_.exe$");
    std::wstring current_path_str_n = std::regex_replace(current_path_str, pattern, L".exe");
	//MessageBox(NULL, current_path_str_n.c_str(), L"Info", MB_OK);
	if (current_path_str_n == current_path_str) {
		MessageBox(NULL, L"请将本文件命名为“aaa_.exe”，其中aaa为目标exe的文件名。", L"Error", MB_OK);
		return 0;
	}
    STARTUPINFO si = { sizeof(STARTUPINFOA) };
    PROCESS_INFORMATION pi = { 0 };
    si.cb = sizeof(si);
	CreateProcess(current_path_str_n.c_str(), NULL, NULL, NULL, FALSE, CREATE_SUSPENDED, NULL, NULL, &si, &pi);
    ResumeThread(pi.hThread);

    //WaitForSingleObject(pi.hProcess, INFINITE);
    // 清理句柄
    //CloseHandle(pi.hProcess);
    //CloseHandle(pi.hThread);
    return 0;
}