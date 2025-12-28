#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include <filesystem>
#include "HOOK_main.h"
#include "LE.h"
#include "convert.h"
#include "text_process.h"

VOID __declspec(dllexport) startmessage()
{
    std::wstring msg = L"本补丁由jyxjyx1234制作，使用 Claude-3.7-sonnet 进行翻译，免费发布，首发御爱同萌（ai2.moe）、jyxjyx1234的博客（jyxjyx1234.github.io)，禁止任何形式的收费转载。\n请仔细阅读README.md，如果补丁运行遇到问题，可在御爱评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费网站、付费群 等下载到本补丁，请顺手点个举报。";

#ifndef Release_for_others
    WCHAR current_path[MAX_PATH] = { 0 };
    GetModuleFileNameW(NULL, current_path, MAX_PATH);
    std::wstring current_path_str = current_path;
    if (std::filesystem::path(current_path_str).filename() != L"KimiIta_CHS.exe")
    {
        MessageBoxW(NULL, msg.c_str(), L"信息", NULL);
    }
#endif
}

VOID __declspec(dllexport) _(){
}
bool IsUserAdmin()
{
    BOOL isAdmin = FALSE;
    PSID adminGroup;

    SID_IDENTIFIER_AUTHORITY ntAuthority = SECURITY_NT_AUTHORITY;
    if (AllocateAndInitializeSid(&ntAuthority, 2, SECURITY_BUILTIN_DOMAIN_RID,
        DOMAIN_ALIAS_RID_ADMINS, 0, 0, 0, 0, 0, 0, &adminGroup))
    {
        if (!CheckTokenMembership(NULL, adminGroup, &isAdmin))
        {
            isAdmin = FALSE;
        }
        FreeSid(adminGroup);
    }
    return isAdmin == TRUE;
}

bool RestartAsAdministrator()
{
    wchar_t szPath[MAX_PATH];
    if (GetModuleFileName(NULL, szPath, ARRAYSIZE(szPath)))
    {
        SHELLEXECUTEINFO sei = { sizeof(sei) };
        sei.lpVerb = L"runas"; // 请求管理员权限
        sei.lpFile = szPath;
        sei.hwnd = NULL;
        sei.nShow = SW_NORMAL;

        if (ShellExecuteEx(&sei))
        {
            return true;
        }
    }
    return false;
}


BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
		//install_LE();
        //if (!IsUserAdmin())
        //{
        //    // 如果不是管理员，重新启动程序
        //    if (RestartAsAdministrator())
        //    {
        //        return 0; // 当前实例退出
        //    }
        //    else
        //    {
        //        MessageBox(NULL, L"需要管理员权限才能运行此程序", L"错误", MB_ICONERROR);
        //        return 1;
        //    }
        //}
        HOOK_main();
        startmessage();
        break;
    case DLL_THREAD_ATTACH:
        break;
    case DLL_THREAD_DETACH:
        break;
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}
