#pragma once
#include <string>
#include <vector>


namespace Rut::RxPath
{
	bool GetAllFilesPathA(std::string msBasePath, std::vector<std::string>& vecList);
	bool GetAllFilesPathW(std::wstring wsBasePath, std::vector<std::wstring>& vecList);

	bool GetAllFileNameA(std::string msBasePath, std::vector<std::string>& vecList);
	bool GetAllFileNameW(std::wstring wsBasePath, std::vector<std::wstring>& vecList);
}