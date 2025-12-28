#define fixpath

#include <Windows.h>
#include <iostream>
#include <filesystem>
#include "detours.h"
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif

#ifndef fixpath
#include "readconfig.h"
#endif

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
    STARTUPINFO si = { sizeof(STARTUPINFOA) };
    PROCESS_INFORMATION pi = { 0 };
    si.cb = sizeof(si);
    std::string current_pathA = std::filesystem::current_path().string();
#ifndef fixpath
	rr::RConfig config;
	config.ReadConfig("hook.ini");
    if (config.ReadInt("LOADER", "ADMIN", 0) == 1) {
        if (!IsRunAsAdmin())
        {
            std::cout << "Not running as admin, attempting to elevate...\n";
            return RequestAdminPrivileges();
        }
    }
    std::wstring current_path = std::filesystem::current_path().wstring();
    if (config.ReadInt("GLOBAL", "DEBUG", 1) == 1) {
        if (AllocConsole())
        {
            FILE* fp;
            freopen_s(&fp, "CONOUT$", "w", stdout);
            setlocale(LC_CTYPE, "zh-ch");
            SetConsoleOutputCP(95003);
        }
    }
    //if (config.ReadInt("GLOBAL", "LE", 1) == 1) {
    //    if (std::filesystem::exists(current_path + L"\\LocaleEmulator")) {
    //        install_LE();
    //    } else {
    //        std::cout << "LocaleEmulator.dll not found, skipping install_LE.\n";
    //    }
    //}
    std::vector<LPCSTR> dllpaths;

	std::string target = config.ReadString("LOADER", "TARGET", "");
    std::wstring targetW = GBKStringToWString(target);
    std::string dllPath = current_pathA + "\\" + config.ReadString("LOADER", "DLL", "");
	LPCSTR full_dllpath = new char[100];
	strcpy_s((char*)full_dllpath, 100, dllPath.c_str());
	dllpaths.push_back(full_dllpath);
	int i = 2;
    while (1) {
		dllPath = current_pathA  + "\\" + config.ReadString("LOADER", ("DLL" + std::to_string(i)).c_str(), "");
		if (dllPath == current_pathA + "\\") {
			break;
		}
        LPCSTR full_dllpath = new char[100];
        strcpy_s((char*)full_dllpath, 100, dllPath.c_str());
		dllpaths.push_back(full_dllpath);
		i++;
    }

    LPCSTR* dllArray = new LPCSTR[dllpaths.size() + 1]; // +1 是为了最后一个元素为 nullptr
    for (size_t j = 0; j < dllpaths.size(); j++) {
        dllArray[j] = dllpaths[j];
		printf("DLL Path: %s\n", dllArray[j]);
    }
    dllArray[dllpaths.size()] = nullptr; // 最后一个元素设置为 nullptr
    
    DetourCreateProcessWithDllsW(
        targetW.c_str(),           // 目标 EXE 路径
        NULL,                // 命令行参数（可为空）
        NULL,                // 安全属性
        NULL,                // 线程安全属性
        TRUE,               // 是否继承句柄
        CREATE_SUSPENDED, // 创建标志
        NULL,                // 环境变量
        NULL,                // 工作目录
        &si,                 // STARTUPINFO
        &pi,
        dllpaths.size(),
        dllArray,            // DLL 路径
        NULL);             // 保留字段

#else
	install_LE();
    MessageBoxW(NULL, L"本补丁由jyxjyx1234制作，使用 Claude-3.7-sonnet 进行翻译，免费发布，首发御爱同萌（ai2.moe）、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可在御爱评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。", L"信息", NULL);
    DetourCreateProcessWithDllEx(
        L"RB.exe",           // 目标 EXE 路径
        NULL,                // 命令行参数（可为空）
        NULL,                // 安全属性
        NULL,                // 线程安全属性
        TRUE,               // 是否继承句柄
        CREATE_SUSPENDED, // 创建标志
        NULL,                // 环境变量
        NULL,                // 工作目录
        &si,                 // STARTUPINFO
        &pi,
        (current_pathA + "\\RB_CHS.dll").c_str(),            // DLL 路径
        NULL);             // 保留字段
#endif
    ResumeThread(pi.hThread);
    return 0;
}