#include <Windows.h>
#include <iostream>
#include <filesystem>
#include "detours.h"
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif
#include "readconfig.h"
#include "convert.h"
#include "LE.h"


int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    PSTR lpCmdLine, int nCmdShow)
{
    //FreeConsole();
    
    std::wstring current_path = std::filesystem::current_path().wstring();
	rr::RConfig config;
	config.ReadConfig("hook.ini");
    if (config.ReadInt("GLOBAL", "LE", 1) == 1) install_LE();

	std::string target = config.ReadString("LOADER", "target", "");
    std::wstring targetW = GBKStringToWString(target);
    std::string dllPath = config.ReadString("LOADER", "DLL", "");
	std::wstring dllPathW = GBKStringToWString(dllPath);
    dllPathW = current_path + L"\\" + dllPathW;
    STARTUPINFO si = { sizeof(STARTUPINFOA) };
    PROCESS_INFORMATION pi = { 0 };
    si.cb = sizeof(si);
    DetourCreateProcessWithDllW(
        targetW.c_str(),           // 目标 EXE 路径
        NULL,                // 命令行参数（可为空）
        NULL,                // 安全属性
        NULL,                // 线程安全属性
        TRUE,               // 是否继承句柄
        CREATE_SUSPENDED, // 创建标志
        NULL,                // 环境变量
        NULL,                // 工作目录
        &si,                 // STARTUPINFO
        &pi,                 // PROCESS_INFORMATION
        WideStringToLPCSTR(dllPathW, GetACP()),             // DLL 路径
        NULL);             // 保留字段
    ResumeThread(pi.hThread);
    //WaitForSingleObject(pi.hProcess, INFINITE);

    // 清理句柄
    //CloseHandle(pi.hProcess);
    //CloseHandle(pi.hThread);
    return 0;
}