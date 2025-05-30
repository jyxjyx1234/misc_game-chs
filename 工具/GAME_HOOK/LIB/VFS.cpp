#include "VFS.h"
#include "winapi_def.h"
#include <iostream>
#include "detours.h"
#include "CHS_PACK_LIB.h"
#include <filesystem>
#include <map>


HMODULE h = GetModuleHandleA("kernel32.dll");
pCreateFileA TrueCreateFileA = (pCreateFileA) GetProcAddress(h, "CreateFileA");
pCreateFileW TrueCreateFileW = CreateFileW;
pReadFile TrueReadFile = (pReadFile)GetProcAddress(h, "ReadFile");

std::string packname;
std::string key;
std::map<HANDLE, std::shared_ptr<VirtualFileHandle>> virtualHandles;
std::map<std::string, std::string> notFoundMap;

HANDLE WINAPI HookedCreateFileW(
    LPCWSTR lpFileName,
    DWORD dwDesiredAccess,
    DWORD dwShareMode,
    LPSECURITY_ATTRIBUTES lpSecurityAttributes,
    DWORD dwCreationDisposition,
    DWORD dwFlagsAndAttributes,
    HANDLE hTemplateFile)
{
	if (!lpFileName) {
        return TrueCreateFileW(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
	}
    char fullfilename[MAX_PATH];
    WideCharToMultiByte(CP_ACP, 0, lpFileName, -1, fullfilename, MAX_PATH, NULL, NULL);
    printf("HookedCreateFileW: %s\n", fullfilename);
	std::filesystem::path fn = fullfilename;
	std::string filename = fn.filename().string();
    if (notFoundMap.find(filename) != notFoundMap.end()) {
		return TrueCreateFileW(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
    }
    if (CustomPack::isInPack(packname, filename)) {
        std::string res = CustomPack::getFile(packname, key, filename);
        auto handleInfo = std::make_shared<VirtualFileHandle>(filename, res);
        HANDLE hVirtualFile = reinterpret_cast<HANDLE>(handleInfo.get());
        virtualHandles[hVirtualFile] = handleInfo;
		printf("HookedCreateFileW: %s in pack\n", filename.c_str());
        return hVirtualFile;
	}
	else {
		notFoundMap[filename] = filename;
	}
	printf("HookedCreateFileW: %s not in pack\n", filename.c_str());
    return TrueCreateFileW(lpFileName, dwDesiredAccess, dwShareMode,lpSecurityAttributes, dwCreationDisposition,dwFlagsAndAttributes, hTemplateFile);
}

HANDLE WINAPI HookedCreateFileA(
	LPCSTR lpFileName,
	DWORD dwDesiredAccess,
	DWORD dwShareMode,
	LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	DWORD dwCreationDisposition,
	DWORD dwFlagsAndAttributes,
	HANDLE hTemplateFile)
{
	if (!lpFileName) {
        return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
	}
	char fullfilename[MAX_PATH];
	strcpy_s(fullfilename, lpFileName);
	printf("HookedCreateFileA: %s\n", fullfilename);
	std::filesystem::path fn = fullfilename;
	std::string filename = fn.filename().string();
	if (notFoundMap.find(filename) != notFoundMap.end()) {
        printf("HookedCreateFileA: fastsearch: %s not in pack \n", filename.c_str());
		return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
	}
	if (CustomPack::isInPack(packname, filename)) {
        std::string res = CustomPack::getFile(packname, key, filename);
        auto handleInfo = std::make_shared<VirtualFileHandle>(filename, res);
        HANDLE hVirtualFile = reinterpret_cast<HANDLE>(handleInfo.get());
        virtualHandles[hVirtualFile] = handleInfo;
        return hVirtualFile;
		printf("HookedCreateFileA: %s in pack\n", filename.c_str());
	}
    else {
		notFoundMap[filename] = filename;
    }
	printf("HookedCreateFileA: %s not in pack\n", filename.c_str());
	return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
}

BOOL WINAPI HookedReadFile(
    HANDLE hFile,
    LPVOID lpBuffer,
    DWORD nNumberOfBytesToRead,
    LPDWORD lpNumberOfBytesRead,
    LPOVERLAPPED lpOverlapped)
{
	printf("HookedReadFile\n");
    auto it = virtualHandles.find(hFile);
    if (it != virtualHandles.end()) {
		printf("HookedReadFile: %s\n", it->second->filename.c_str());
        auto& handleInfo = it->second;
        if (lpOverlapped) {
            SetLastError(ERROR_NOT_SUPPORTED);
            return FALSE;
        }
        size_t remaining = handleInfo->content.size() - handleInfo->position;
        size_t toRead = (nNumberOfBytesToRead < remaining) ? nNumberOfBytesToRead : remaining;
        if (toRead > 0) {
            memcpy(lpBuffer, handleInfo->content.data() + handleInfo->position, toRead);
            handleInfo->position += toRead;
        }
        if (lpNumberOfBytesRead) {
            *lpNumberOfBytesRead = static_cast<DWORD>(toRead);
        }
        return TRUE;
    }
    return TrueReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
}



void InstallHookCreateFileA(std::string pkgname, std::string key) {
	packname = pkgname;
	key = key;
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	HMODULE h = GetModuleHandleA("kernel32.dll");
	DetourAttach(&(PVOID&)TrueCreateFileA, HookedCreateFileA);
	DetourAttach(&(PVOID&)TrueReadFile, HookedReadFile);
	DetourTransactionCommit();
}
void InstallHookCreateFileW(std::string pkgname, std::string key) {
    packname = pkgname;
    key = key;
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFileW, HookedCreateFileA);
    DetourAttach(&(PVOID&)TrueReadFile, HookedReadFile);
    DetourTransactionCommit();
}