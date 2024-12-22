#include <Windows.h>
#include <iostream>
#include <filesystem>
#include <wincrypt.h>
#include "detours.h"
#if defined(_M_X64) || defined(__amd64__)
#pragma comment(lib, "detours_x64.lib")
#endif

int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    PSTR lpCmdLine, int nCmdShow)
{
    //FreeConsole();
    MessageBoxW(NULL, L"本补丁由Steins;Gate，julixian，coroz，SUAD，ALyCE，是幼微鸭mua，冥语，魔神海谢拉 等集资，使用官方渠道claude-3.5-sonnet进行翻译，免费发布，首发2dfan及github，禁止任何形式的收费转载。\n特别感谢魔神海谢拉大佬的放流。\n如果补丁运行遇到问题，可在2dfan评论区留言或发邮件至jyxjyx1234@outlook.com。\n如果从 网赚盘（如飞猫云）、付费群、付费网站 下载到本补丁，请顺手点个举报。", L"信息", NULL);
    STARTUPINFO si = { sizeof(STARTUPINFOA) };
    PROCESS_INFORMATION pi = { 0 };
    si.cb = sizeof(si);
    //std::wstring exepath = L"あの日の君を振り向かせて.exe";
    DetourCreateProcessWithDllW(
        L"あの日の君を振り向かせて.exe",         // 目标 EXE 路径
        NULL,               // 命令行参数（可为空）
        NULL,               // 安全属性
        NULL,               // 线程安全属性
        TRUE,               // 是否继承句柄
        CREATE_SUSPENDED,   // 创建标志
        NULL,               // 环境变量
        NULL,               // 工作目录
        &si,                // STARTUPINFO
        &pi,                // PROCESS_INFORMATION
        "AnoHinoKimi_CHS.dll",             // DLL 路径
        NULL);             // 保留字段
    
    //CreateProcessW(targetW.c_str(), NULL, NULL, NULL, FALSE, CREATE_SUSPENDED, NULL, NULL, &si, &pi);
    ResumeThread(pi.hThread);
    //WaitForSingleObject(pi.hProcess, INFINITE);

    // 清理句柄
    //CloseHandle(pi.hProcess);
    //CloseHandle(pi.hThread);
    return 0;
}