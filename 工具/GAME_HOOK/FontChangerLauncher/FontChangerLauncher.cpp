// FontChangerLauncher.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <iostream>
#include "winapi_def.h"
#include "detours.h"
#include "LE.h"
#include "convert.h"
#include "hook_createfontA.h"
#include "hook_createfontW.h"
#include "hook_createfontindrectA.h"
#include "hook_createfontindrectW.h"
#include "hook_setWindowTextA.h"
#include "readconfig.h"
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#else
#pragma comment(lib, "detours.lib")
#endif

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

void install_detours_hook(rr::RConfig config, HANDLE hThread)
{
	DetourTransactionBegin();
	DetourUpdateThread(hThread);
    if (config.ReadInt("GLOBAL", "MODE", 0) == 1 || config.ReadInt("GLOBAL", "MODE", 0) == 3) {
		pCreateFontA TrueCreateFontA = CreateFontA;
        DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA_changefont);
		pCreateFontW TrueCreateFontW = CreateFontW;
		DetourAttach(&(PVOID&)TrueCreateFontW, HookedCreateFontW_changefont);
    }
    if (config.ReadInt("GLOBAL", "MODE", 0) == 2 || config.ReadInt("GLOBAL", "MODE", 0) == 3) {
        pCreateFontIndirectA TrueCreateFontIndirectA = CreateFontIndirectA;
        DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
		//pCreateFontIndirectW TrueCreateFontIndirectW = CreateFontIndirectW;
		//DetourAttach(&(PVOID&)TrueCreateFontIndirectW, HookedCreateFontIndirectW);
    }
    if (config.ReadInt("GLOBAL", "CHANGEWINDOW", 0) == 1) {
        pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;
		DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);
		pCreateWindowExW TrueCreateWindowExW = CreateWindowExW;
		DetourAttach(&(PVOID&)TrueCreateWindowExW, HOOKEDCreateWindowExW);
		psetWindowTextA TrueSetWindowTextA = SetWindowTextA;
		DetourAttach(&(PVOID&)TrueSetWindowTextA, HookedsetWindowTextA);
		psetWindowTextW TrueSetWindowTextW = SetWindowTextW;
		DetourAttach(&(PVOID&)TrueSetWindowTextW, HookedsetWindowTextW);
    }
    LONG error = DetourTransactionCommit();
    if (error != NO_ERROR) {
        printf("DetourTransactionCommit failed with error: %ld\n", error);
    }
}

VOID stratmessage(rr::RConfig config)
{
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-haiku");
    LPCWSTR modeltypew = string2LPCWSTR(modeltype);
    std::wstring msg = L"本补丁由ALyCE / jyxjyx1234制作，使用"
        + std::wstring(modeltypew)
        + L"进行翻译，免费发布，首发2dfan、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n本人制作以及参与制作的所有补丁禁止转载至“鲲Galgame”补丁站。\n请仔细阅读README.md，如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";
    MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
}


int main()
{
    rr::RConfig config;
	config.ReadConfig("hook.ini");
	if (config.ReadInt("GLOBAL", "ADMIN", 0) == 1){
		if (!IsRunAsAdmin())
		{
			return RequestAdminPrivileges();
		}
	}
    if (config.ReadInt("GLOBAL", "LE", 1) == 1) install_LE();
	stratmessage(config);
    std::string target = config.ReadString("LOADER", "target", "");
    std::wstring targetW = GBKStringToWString(target);
    STARTUPINFO si = { sizeof(STARTUPINFOA) };
    PROCESS_INFORMATION pi = { 0 };
    si.cb = sizeof(si);
    CreateProcessW(targetW.c_str(), NULL, NULL, NULL, FALSE, CREATE_SUSPENDED, NULL, NULL, &si, &pi);
	install_detours_hook(config, pi.hThread);
    ResumeThread(pi.hThread);
    WaitForSingleObject(pi.hProcess, INFINITE);
    CloseHandle(pi.hProcess);
	CloseHandle(pi.hThread); 
    return 0;
}
