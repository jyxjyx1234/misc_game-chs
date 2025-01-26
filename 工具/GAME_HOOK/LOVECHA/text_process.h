#ifndef text_process_h
#define text_process_h
#include "winapi_def.h"
#include <map>
#include "readconfig.h"
#include "convert.h"
#include <vector>
#include <detours.h>
#pragma comment(lib, "detours.lib")
#include <locale>
#include <vector>


void InstallHook_replacetext();
std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k);
#endif // !text_process_h


