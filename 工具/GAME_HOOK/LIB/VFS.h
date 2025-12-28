#pragma once
#include "hook_def.h"
#include <map>
#include <iostream>
#include "winapi_def.h"
#include <filesystem>
#include "detours.h"

struct string_with_pointer {
	int ptr = 0;
	std::string content = "";
};

void InstallVFS(std::string packname, std::string enc);
void UninstallVFS();