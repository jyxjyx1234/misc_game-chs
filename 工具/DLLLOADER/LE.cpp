#include <Windows.h>
#include <iostream>
#include "LE.h"
#include <filesystem>

ULONG codepage = 0;
ULONG locale = 0;
ULONG charset = 0;
std::string timezone{};

bool relaunch(ML_PROCESS_INFORMATION* pProcessInfo, const HMODULE hLoader)
{
	printf(" Attempting to relaunch with codepage %d.\n", codepage);

	LEB leb{};
	leb.AnsiCodePage = codepage;
	leb.OemCodePage = codepage;
	leb.LocaleID = locale;
	leb.DefaultCharset = charset;

	HKEY hTimeZone;
	const std::string key = "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Time Zones\\" + timezone;
	if (RegOpenKeyA(HKEY_LOCAL_MACHINE, key.c_str(), &hTimeZone) == ERROR_SUCCESS)
	{
		DWORD bufferSize = sizeof leb.Timezone.StandardName;
		RegGetValue(hTimeZone, nullptr, L"Std", RRF_RT_REG_SZ, nullptr, leb.Timezone.StandardName, &bufferSize);

		bufferSize = sizeof leb.Timezone.DaylightName;
		RegGetValue(hTimeZone, nullptr, L"Dlt", RRF_RT_REG_SZ, nullptr, leb.Timezone.DaylightName, &bufferSize);

		REG_TZI_FORMAT timeZoneInfo;
		bufferSize = sizeof timeZoneInfo;
		RegGetValue(hTimeZone, nullptr, L"TZI", RRF_RT_REG_BINARY, nullptr, &timeZoneInfo, &bufferSize);
		leb.Timezone.Bias = timeZoneInfo.Bias;
		leb.Timezone.StandardBias = timeZoneInfo.StandardBias;
		leb.Timezone.DaylightBias = 0;

		RegCloseKey(hTimeZone);
	}

	wchar_t exePath[MAX_PATH];
	GetModuleFileName(nullptr, exePath, std::size(exePath));

	const wchar_t* commandLine = GetCommandLine();

	wchar_t currentDirectory[MAX_PATH];
	GetCurrentDirectory(std::size(currentDirectory), currentDirectory);

	STARTUPINFO startInfo{};
	ML_PROCESS_INFORMATION processInfo{};

	//const HMODULE hLoader = LoadLibraryA("JYXJYX1234.dll");
	if (hLoader == nullptr)
	{
		exit(0);
		return false;
	}

	const auto LeCreateProcess = reinterpret_cast<LeCreateProcess_t>(GetProcAddress(hLoader, "LeCreateProcess"));
	if (LeCreateProcess == nullptr)
	{
		printf(" Failed to find function LeCreateProcess\n");
		return false;
	}

	const auto result = LeCreateProcess(
		&leb,
		exePath,
		commandLine,
		currentDirectory,
		0,
		&startInfo,
		pProcessInfo != nullptr ? pProcessInfo : &processInfo,
		nullptr,
		nullptr,
		nullptr,
		nullptr
	);

	return result == ERROR_SUCCESS;
}


void install_LE() {
	codepage = 932;
	locale = 1041;
	charset = SHIFTJIS_CHARSET;
	timezone = "Tokyo Standard Time";
	if (GetACP() == 932)
	{
		return;
	}

	if (!std::filesystem::exists("LoaderDll.dll"))
	{
		//printf(" LoaderDll.dll not exists, skipping installation.\n");
		return;
	}
	const HMODULE hLoader = LoadLibraryA("LoaderDll.dll");
	ML_PROCESS_INFORMATION processInfo;
	relaunch(&processInfo, hLoader);
	ExitProcess(0);
}