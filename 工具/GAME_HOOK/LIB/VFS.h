#pragma once
#pragma comment(lib, "detours.lib")
#pragma comment(lib, "CHS_PACK_LIB.lib")
#include "winapi_def.h"
#include <iostream>

extern pCreateFileA TrueCreateFileA;
extern pCreateFileW TrueCreateFileW;
extern pReadFile TrueReadFile;



struct VirtualFileHandle {
    std::string filename;
    std::string content;
    size_t position;

    VirtualFileHandle(const std::string& fn, const std::string& cnt)
        : filename(fn), content(cnt), position(0) {
    }
};

void InstallHookCreateFileA(std::string pkgname, std::string key);
void InstallHookCreateFileW(std::string pkgname, std::string key);