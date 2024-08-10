#include <fstream>
#include <string>
#include <locale>
#include <map>
#include <Windows.h>
#include "process_text.h"
#include "trans_map.h"


//提取
// 写入文件的函数
void appendToFile(const wchar_t* str) {
    const std::string& filename = "output.txt";
    std::wofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
        // 设置 locale 以正确处理宽字符
        outFile.imbue(std::locale(""));

        // 写入字符串
        outFile << str;

        // 添加换行符
        outFile << L"\n";

        outFile.close();
    }
}

// 保存原始 call 的目标地址
DWORD originalCallTarget;
DWORD ReturnAddress;

// Hook函数
void __declspec(naked) HookFunction_dump()
{
    __asm
    {
        // 保存所有寄存器
        pushad

        // 保存 edi
        push edi
        call appendToFile
        add esp, 4 

        // 恢复所有寄存器
        popad

        // 执行原始指令
        push ebx
        push edi

        push ReturnAddress
        jmp dword ptr[originalCallTarget] // 跳转到原始 call 的目标

    }
}

// 替换
// 定义原始函数类型
typedef void (*OriginalFunction)(wchar_t* str);

// 保存原始函数地址
OriginalFunction originalFunction = nullptr;

std::map <std::wstring, std::wstring, CompareWideString> t_map;

// 自定义的替换函数
void ReplaceString(wchar_t* str) {
    std::wstring originalStr(str);
    auto it = t_map.find(originalStr);
    if (it != t_map.end()) {
        wcscpy_s(str, wcslen(it->second.c_str()) + 1, it->second.c_str());
    }
    else {
        appendToFile(str);
        //测试用
        //std::wstring t = std::wstring(L"汉化测试汉化测试汉化测试汉化测试汉化测试");
        //wcscpy_s(str, wcslen(t.c_str()) + 1, t.c_str());
    }
}


void __declspec(naked) HookFunction_replace()
{
    __asm {
        // 保存寄存器
        pushad
        pushfd

        // 调用替换函数
        push edi
        call ReplaceString
        add esp, 4

        // 恢复寄存器
        popfd
        popad

        // 执行原始指令
        push ebx
        push edi

        // 模拟原始的 call 指令
        push ReturnAddress // 保存返回地址
        jmp dword ptr[originalCallTarget] // 跳转到原始 call 的目标

        // 这里不需要 ret，因为原始的 call 指令会返回到 ReturnAddress
    }
}


void replace_text_main()
{
    initTransMap(t_map);
    //std::wstring test(L"香純「わたくし、宮森香純は……」");
    //std::wstring aa = t_map.find(test)->second;
    //MessageBoxW(NULL, aa.c_str(), NULL, NULL);

    DWORD baseAddress = (DWORD)GetModuleHandle("Flash Asset.x32");
    // 计算Hook地址
    DWORD hookAddress = baseAddress + 0x3D51D;

    // 计算原始 call 的目标地址
    DWORD relativeAddress = *(DWORD*)(hookAddress + 3);
    originalCallTarget = hookAddress + 7 + relativeAddress;

    // 保存返回地址（原始指令序列之后的地址）
    ReturnAddress = hookAddress + 7;

    // 修改内存保护
    DWORD oldProtect;
    VirtualProtect((LPVOID)hookAddress, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)hookAddress = 0xE9;  // JMP指令
    *(DWORD*)(hookAddress + 1) = (DWORD)HookFunction_replace - hookAddress - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)hookAddress, 5, oldProtect, &oldProtect);
}


void dump_text_main() {
    DWORD baseAddress = (DWORD)GetModuleHandle("Flash Asset.x32");
    // 计算Hook地址
    DWORD hookAddress = baseAddress + 0x3D51D;

    // 计算原始 call 的目标地址
    DWORD relativeAddress = *(DWORD*)(hookAddress + 3);
    originalCallTarget = hookAddress + 7 + relativeAddress;

    // 保存返回地址（原始指令序列之后的地址）
    ReturnAddress = hookAddress + 7;

    // 修改内存保护
    DWORD oldProtect;
    VirtualProtect((LPVOID)hookAddress, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)hookAddress = 0xE9;  // JMP指令
    *(DWORD*)(hookAddress + 1) = (DWORD)HookFunction_dump - hookAddress - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)hookAddress, 5, oldProtect, &oldProtect);
}