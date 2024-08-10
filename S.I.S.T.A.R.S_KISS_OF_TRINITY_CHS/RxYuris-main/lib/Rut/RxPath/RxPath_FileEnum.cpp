#include "RxPath_FileEnum.h"

#include <queue>
#include <Windows.h>


namespace Rut::RxPath
{
	bool GetAllFilesPathA(std::string msPath, std::vector<std::string>& vecList)
	{
		std::queue<std::string> queDir;
		WIN32_FIND_DATAA findData = { 0 };

		queDir.push(msPath);

		for (HANDLE hFind = INVALID_HANDLE_VALUE; !queDir.empty(); queDir.pop())
		{
			std::string& dirName = queDir.front();

			hFind = FindFirstFileA((dirName + "*").c_str(), &findData);
			if (hFind == INVALID_HANDLE_VALUE) { return false; }

			do
			{
				if (!strcmp(findData.cFileName, ".") || !strcmp(findData.cFileName, "..")) { continue; }

				if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
				{
					queDir.push(dirName + findData.cFileName + "\\");
					continue;
				}

				vecList.emplace_back(dirName + findData.cFileName);

			} while (FindNextFileA(hFind, &findData));

			FindClose(hFind);
		}

		return true;
	}

	bool GetAllFileNameA(std::string msFolder, std::vector<std::string>& vecList)
	{
		WIN32_FIND_DATAA findData = { 0 };

		HANDLE hFind = FindFirstFileA((msFolder + "*").c_str(), &findData);
		if (hFind == INVALID_HANDLE_VALUE) { return false; }

		do
		{
			if (!strcmp(findData.cFileName, ".") || !strcmp(findData.cFileName, "..")) { continue; }
			if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) continue;

			vecList.emplace_back(findData.cFileName);

		} while (FindNextFileA(hFind, &findData));

		FindClose(hFind);
		return true;
	}

	bool GetAllFilesPathW(std::wstring wsPath, std::vector<std::wstring>& vecList)
	{
		std::queue<std::wstring> queDir;
		WIN32_FIND_DATAW findData = { 0 };

		queDir.push(wsPath);

		for (HANDLE hFind = INVALID_HANDLE_VALUE; !queDir.empty(); queDir.pop())
		{
			std::wstring& dirName = queDir.front();

			hFind = FindFirstFileW((dirName + L"*").c_str(), &findData);
			if (hFind == INVALID_HANDLE_VALUE) { return false; }

			do
			{
				if (!wcscmp(findData.cFileName, L".") || !wcscmp(findData.cFileName, L"..")) { continue; }

				if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)
				{
					queDir.push(dirName + findData.cFileName + L"\\");
					continue;
				}

				vecList.emplace_back(dirName + findData.cFileName);

			} while (FindNextFileW(hFind, &findData));

			FindClose(hFind);
		}

		return true;
	}

	bool GetAllFileNameW(std::wstring wsFolder, std::vector<std::wstring>& vecList)
	{
		WIN32_FIND_DATAW findData = { 0 };

		HANDLE hFind = FindFirstFileW((wsFolder + L"*").c_str(), &findData);
		if (hFind == INVALID_HANDLE_VALUE) { return false; }

		do
		{
			if (!wcscmp(findData.cFileName, L".") || !wcscmp(findData.cFileName, L"..")) { continue; }
			if (findData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) continue;

			vecList.emplace_back(findData.cFileName);

		} while (FindNextFileW(hFind, &findData));

		FindClose(hFind);
		return true;
	}
}