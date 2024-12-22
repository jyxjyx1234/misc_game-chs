//#include <windows.h>
//#include "detours.h"
//#include <string>
//#include <iostream>
//#include "FVPSaveChanger.h"
//
//DWORD returnAddress1;
//DWORD returnAddress2;
//
//void ChangePath(char* path) {
//	if (path[0] == '%') {
//		return;
//	}
//    char AppPath[MAX_PATH];
//    memset(AppPath, 0, MAX_PATH);
//    GetModuleFileNameA(NULL, AppPath, MAX_PATH);
//    int i;
//    for (i = strlen(AppPath) + 1; i >= 0; i--)
//    {
//        if (AppPath[i] == '\\')
//        {
//            break;
//        }
//    }
//    AppPath[i] = 0;
//    std::cout << "oriPath:" << path << std::endl;
//    strcpy_s(path, strlen(AppPath) + 1, AppPath);
//}
//
//void __declspec(naked) HookFunction_savechanger1()
//{
//    __asm
//    {
//        pushfd
//        pushad
//
//        mov eax, [esp + 0x24 + 0xc]
//        push eax
//        call ChangePath
//        add esp, 4
//
//        popad
//        popfd
//
//        mov edi, edi
//        push ebp
//        mov ebp, esp
//
//        jmp dword ptr[returnAddress1]
//    }
//}
//
//void __declspec(naked) HookFunction_savechanger2()
//{
//    __asm
//    {
//        pushfd
//        pushad
//
//        mov eax, [esp + 0x24 + 8]
//        push eax
//        call ChangePath
//        add esp, 4
//
//        popad
//        popfd
//
//        //call 0x4488b7
//
//        jmp dword ptr[returnAddress2]
//    }
//}
//
//void InstallHook_savechanger(int offset1) {
//    DWORD oldProtect;
//
//    DWORD originalFuncAddr1 = offset1;
//    returnAddress1 = offset1 + 5;
//    /*DWORD originalFuncAddr2 = offset2;
//    returnAddress2 = offset2 + 5;*/
//
//    // 修改内存保护
//    VirtualProtect((LPVOID)originalFuncAddr1, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
//    //VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
//
//    // 写入跳转指令
//    *(BYTE*)originalFuncAddr1 = 0xE9;  // JMP
//    *(DWORD*)(originalFuncAddr1 + 1) = (DWORD)HookFunction_savechanger1 - originalFuncAddr1 - 5;
//    //*(BYTE*)originalFuncAddr2 = 0xE9;  // JMP
//    //*(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_savechanger2 - originalFuncAddr2 - 5;
//
//    // 恢复内存保护
//    VirtualProtect((LPVOID)originalFuncAddr1, 5, oldProtect, &oldProtect);
//    //VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);
//}