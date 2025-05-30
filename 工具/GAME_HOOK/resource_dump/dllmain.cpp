#include <Windows.h>
#include <Shlwapi.h>
#include <fstream>
#include <iostream>
#include <string>
#include <filesystem>
#include "detours.h"
#pragma comment(lib, "detours.lib")

HMODULE GlobalHModule;

VOID __declspec(dllexport) _(){
}

typedef HMENU(WINAPI* pLoadMenuA)(
	HINSTANCE hInstance,
	LPCSTR lpMenuName
	);

pLoadMenuA TrueLoadMenuA = LoadMenuA;

typedef HMENU(WINAPI* pGetSubMenu)(
	HMENU hMenu,
	int nPos
);

pGetSubMenu TrueGetSubMenu = GetSubMenu;

void showMessageBox(const char* message) {
	MessageBoxA(NULL, message, "Resource Dumper", MB_OK | MB_ICONINFORMATION);
}

void showMessageBox(int message) {
    MessageBoxA(NULL, std::to_string(message).c_str(), "Resource Dumper", MB_OK | MB_ICONINFORMATION);
}

#include <windows.h>
#include <iostream>
#include <fstream>

void WriteMenuToRc(HMENU hMenu, std::ofstream& outFile, int level = 0) {
    int count = GetMenuItemCount(hMenu);
    for (int i = 0; i < count; ++i) {
        MENUITEMINFOA mii = { 0 };
        mii.cbSize = sizeof(MENUITEMINFOA);
        mii.fMask = MIIM_STRING | MIIM_SUBMENU | MIIM_ID | MIIM_FTYPE;
        char buffer[256] = { 0 };
        mii.dwTypeData = buffer;
        mii.cch = sizeof(buffer);

        if (GetMenuItemInfoA(hMenu, i, TRUE, &mii)) {
            // 写入菜单项
            if (mii.fType & MFT_SEPARATOR) {
                // 分隔符
                outFile << std::string(level * 4, ' ') << "MENUITEM SEPARATOR" << std::endl;
            }
            else {
                // 普通菜单项
                outFile << std::string(level * 4, ' ') << "MENUITEM \"" << buffer << "\", " << mii.wID << std::endl;
            }

            // 如果有子菜单，递归处理
            if (mii.hSubMenu) {
                outFile << std::string(level * 4, ' ') << "POPUP \"" << buffer << "\"" << std::endl;
                outFile << std::string(level * 4, ' ') << "BEGIN" << std::endl;
                WriteMenuToRc(mii.hSubMenu, outFile, level + 1);
                outFile << std::string(level * 4, ' ') << "END" << std::endl;
            }
        }
    }
}

void DumpMenuToRcFile(HMENU hMenu, const std::string& filename, int menuID) {
    std::ofstream outFile(filename);
    if (outFile.is_open()) {
        // 写入菜单资源头
        outFile << menuID << " MENU" << std::endl;
        outFile << "BEGIN" << std::endl;

        // 写入菜单内容
        WriteMenuToRc(hMenu, outFile);

        // 结束菜单资源
        outFile << "END" << std::endl;
        outFile.close();
        std::cout << "Menu dumped to " << filename << std::endl;
    }
    else {
        std::cerr << "Failed to open file for writing." << std::endl;
    }
}
HMENU WINAPI HookLoadMenuA(
	HINSTANCE hInstance,
	LPCSTR lpMenuName
) {
    HMENU res = TrueLoadMenuA(hInstance, lpMenuName);
	if (res != NULL) {
        WORD menuID = LOWORD((ULONG_PTR)lpMenuName);
        DumpMenuToRcFile(res, std::to_string(int(res)), menuID);
	}
    else {
        showMessageBox("Failed to load menu.\n");
    }
	return res;
}

HMENU WINAPI HookGetSubMenu(
	HMENU hMenu,
	int nPos
) {
	HMENU res = TrueGetSubMenu(hMenu, nPos);
	if (res != NULL) {
		DumpMenuToRcFile(res, std::to_string(int(res)), nPos);
	}
	else {
		showMessageBox("Failed to load submenu.\n");
	}
	return res;
}



void HOOK_main() {
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	//DetourAttach(&(PVOID&)TrueLoadMenuA, HookLoadMenuA);
	//DetourAttach(&(PVOID&)TrueGetSubMenu, HookGetSubMenu);
	DetourTransactionCommit();
}

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
        RegisterHotKey(NULL, 1, MOD_ALT, 'S');
		GlobalHModule = hModule;
        HOOK_main();
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
