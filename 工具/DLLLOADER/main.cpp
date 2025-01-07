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

bool IsRunAsAdmin()
{
    BOOL fIsRunAsAdmin = FALSE;
    PSID pAdministratorsGroup = NULL;

    // 创建一个 SID for the Administrators group.
    SID_IDENTIFIER_AUTHORITY NtAuthority = SECURITY_NT_AUTHORITY;
    if (AllocateAndInitializeSid(
        &NtAuthority, 2,
        SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS,
        0, 0, 0, 0, 0, 0,
        &pAdministratorsGroup))
    {
        CheckTokenMembership(NULL, pAdministratorsGroup, &fIsRunAsAdmin);
        FreeSid(pAdministratorsGroup);
    }

    return fIsRunAsAdmin;
}

int RequestAdminPrivileges()
{
    TCHAR szPath[MAX_PATH];
    if (!GetModuleFileName(NULL, szPath, ARRAYSIZE(szPath)))
        return 1;

    SHELLEXECUTEINFO sei = { sizeof(sei) };
    sei.lpVerb = TEXT("runas");
    sei.lpFile = szPath;
    sei.nShow = SW_NORMAL;

    if (!ShellExecuteEx(&sei))
    {
        DWORD dwError = GetLastError();
        if (dwError == ERROR_CANCELLED)
            std::cout << "User canceled the elevation.\n";
        return 1;
    }

    return 0;
}

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    PSTR lpCmdLine, int nCmdShow)
{
    //FreeConsole();
    if (!IsRunAsAdmin())
    {
        std::cout << "Not running as admin, attempting to elevate...\n";
        return RequestAdminPrivileges();
    }
    
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

	/*CreateProcessW(targetW.c_str(), NULL, NULL, NULL, FALSE, CREATE_SUSPENDED, NULL, NULL, &si, &pi);
    ResumeThread(pi.hThread);*/
    return 0;
}