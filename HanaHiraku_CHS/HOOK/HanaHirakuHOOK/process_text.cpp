#include <Windows.h>
#include <fstream>
#include <string>
#include "trans.h"
#include "process_text.h"
#include <map>

DWORD originalFuncAddr_dumptext;
DWORD returnAddress_dumptext;

DWORD originalFuncAddr_changetext;
DWORD returnAddress_changetext;


void SaveTextToFile(const char* text) {
    std::ofstream file("output.txt", std::ios::app);
    if (file.is_open()) {
        file << text << std::endl;
        file.close();
    }
}

void __declspec(naked) HookFunction_dumptext() {
    __asm {
        //原始指令
        lea ebx, ds: [esi + 0x418]
        push edi
        push ebx

        pushad
        pushfd

        push edi  // EDI 中包含我们想要的文本指针
        call SaveTextToFile
        add esp, 4  // 恢复堆栈

        popfd
        popad

        call ebp
        jmp dword ptr[returnAddress_dumptext]
    }
}

void InstallHook_dumptext()
{
    DWORD oldProtect;

    originalFuncAddr_dumptext = 0x406a3d;  
    returnAddress_dumptext = 0x406a47;  

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr_dumptext, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr_dumptext = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr_dumptext + 1) = (DWORD)HookFunction_dumptext - originalFuncAddr_dumptext - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr_dumptext, 5, oldProtect, &oldProtect);
}

std::map <std::string, std::string> t_map = initTransMap();

void ReplaceString(char* str) {
    std::string s(str);  // 将 char* 转换为 std::string
    auto it = t_map.find(s);
    if (it != t_map.end())
    {
        // 如果找到匹配，替换整个字符串
        s = it->second;
    }

    // 使用 strcpy_s 将结果复制回原始的 char*
    strcpy_s(str, s.length() + 1, s.c_str());
}

void __declspec(naked) HookFunction_changetext() {
    __asm {
        //原始指令
        lea ebx, ds: [esi + 0x418]
        push edi
        push ebx

        pushad
        pushfd

        push edi
        call ReplaceString
        add esp, 4

        // 恢复寄存器
        popfd
        popad

        call ebp
        jmp dword ptr[returnAddress_changetext]
    }
}

void InstallHook_changetext()
{
    DWORD oldProtect;

    originalFuncAddr_changetext = 0x406a3d;
    returnAddress_changetext = 0x406a47;

    // 修改内存保护
    VirtualProtect((LPVOID)originalFuncAddr_changetext, 5, PAGE_EXECUTE_READWRITE, &oldProtect);

    // 写入跳转指令
    *(BYTE*)originalFuncAddr_changetext = 0xE9;  // JMP
    *(DWORD*)(originalFuncAddr_changetext + 1) = (DWORD)HookFunction_changetext - originalFuncAddr_changetext - 5;

    // 恢复内存保护
    VirtualProtect((LPVOID)originalFuncAddr_changetext, 5, oldProtect, &oldProtect);
}