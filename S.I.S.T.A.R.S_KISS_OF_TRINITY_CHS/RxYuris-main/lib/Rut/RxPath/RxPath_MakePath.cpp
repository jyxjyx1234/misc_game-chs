#include "RxPath_MakePath.h"
#include "../RxString.h"
#include "../RxStream.h"

#include <Windows.h>


namespace Rut::RxPath
{
	bool FileExist(const char* cpPath)
	{
		std::wstring path = RxString::ToWCS(cpPath, CP_ACP);
		return FileExist(path.data());
	}

	bool FileExist(const wchar_t* wpPath)
	{
		return (GetFileAttributesW(wpPath) == INVALID_FILE_ATTRIBUTES) ? false : true;
	}

	bool FileExist(std::string_view msPath)
	{
		return FileExist(msPath.data());
	}

	bool FileExist(std::wstring_view wsPath)
	{
		return FileExist(wsPath.data());
	}


	void MakeDirViaPath(const char* cpPath)
	{
		MakeDirViaPath(RxString::ToWCS(cpPath, CP_ACP).c_str());
	}

	void MakeDirViaPath(const wchar_t* wpPath)
	{
		size_t len = wcslen(wpPath);
		wchar_t path[MAX_PATH];
		memcpy(path, wpPath, (len + 1) * 2);

		for (size_t ite_char = 0; ite_char < len; ite_char++)
		{
			switch (path[ite_char])
			{
			case L'/':
			case L'\\':
			{
				path[ite_char] = L'\0';
				CreateDirectoryW(path, NULL);
				path[ite_char] = L'\\';
			}
			break;

			case L'.':
			case L':': { ite_char++; } break;
			}
		}
	}

	void MakeDirViaPath(std::string_view msPath)
	{
		MakeDirViaPath(msPath.data());
	}

	void MakeDirViaPath(std::wstring_view wsPath)
	{
		MakeDirViaPath(wsPath.data());
	}


	size_t GetModuleNameViaBase_Ptr(char* cpBuf, void* pBase)
	{
		GetModuleFileNameA((HMODULE)pBase, cpBuf, MAX_PATH);
		return PathGetFileName_Ptr(cpBuf);
	}

	size_t GetModuleNameViaBase_Ptr(wchar_t* wpBuf, void* pBase)
	{
		GetModuleFileNameW((HMODULE)pBase, wpBuf, MAX_PATH);
		return PathGetFileName_Ptr(wpBuf);
	}

	std::string GetModuleNameViaBaseA(void* pBase)
	{
		std::string name;
		name.resize(MAX_PATH);
		name.resize(GetModuleNameViaBase_Ptr((char*)name.c_str(), pBase));
		return name;
	}

	std::wstring GetModuleNameViaBaseW(void* pBase)
	{
		std::wstring name;
		name.resize(MAX_PATH);
		name.resize(GetModuleNameViaBase_Ptr((wchar_t*)name.c_str(), pBase));
		return name;
	}


	size_t GetCurrentDir_Ptr(char* pPath)
	{
		size_t size = GetCurrentDirectoryA(MAX_PATH, pPath);
		memcpy(pPath + size, "\\", 2);
		return ++size;
	}

	size_t GetCurrentDir_Ptr(wchar_t* pPath)
	{
		size_t size = GetCurrentDirectoryW(MAX_PATH, pPath);
		memcpy(pPath + size, L"\\", 4);
		return ++size;
	}

	std::string GetCurrentDirA()
	{
		char tmp[MAX_PATH];
		size_t sz = GetCurrentDir_Ptr(tmp);
		std::string path;
		path.resize(sz);
		memcpy((void*)path.c_str(), tmp, sz);
		return path;
	}

	std::wstring GetCurrentDirW()
	{
		wchar_t tmp[MAX_PATH];
		size_t sz = GetCurrentDir_Ptr(tmp);
		std::wstring path;
		path.resize(sz);
		memcpy((void*)path.c_str(), tmp, sz * 2);
		return path;
	}


	char* FormatSlash_Ptr(char* cpPath, char cSlash)
	{
		switch (cSlash)
		{
		case '\\':
		{
			for (size_t ite = 0; cpPath[ite]; ite++)
			{
				if ((uint8_t)cpPath[ite] > 0x7F) { ite++; continue; }

				if (cpPath[ite] == '/') { cpPath[ite] = '\\'; }
			}
		}
		break;

		case '/':
		{
			for (size_t ite = 0; cpPath[ite]; ite++)
			{
				if ((uint8_t)cpPath[ite] > 0x7F) { ite++; continue; }

				if (cpPath[ite] == '\\') { cpPath[ite] = '/'; }
			}
		}
		break;
		}

		return cpPath;
	}

	wchar_t* FormatSlash_Ptr(wchar_t* wpPath, wchar_t wcSlash)
	{
		switch (wcSlash)
		{
		case L'\\':
		{
			for (size_t ite = 0; wpPath[ite]; ite++)
			{
				if (wpPath[ite] == L'/') { wpPath[ite] = L'\\'; }
			}
		}
		break;

		case L'/':
		{
			for (size_t ite = 0; wpPath[ite]; ite++)
			{
				if (wpPath[ite] == L'\\') { wpPath[ite] = L'/'; }
			}
		}
		break;
		}

		return wpPath;
	}

	std::string FormatSlash(const std::string& msPath, char cSlash)
	{
		FormatSlash_Ptr(const_cast<char*>(msPath.data()), cSlash);
		return msPath;
	}

	std::wstring FormatSlash(const std::wstring& wsPath, wchar_t wcSlash)
	{
		FormatSlash_Ptr(const_cast<wchar_t*>(wsPath.data()), wcSlash);
		return wsPath;
	}


	size_t PathRemoveFileName_Ptr(char* cpPath)
	{
		size_t len = strlen(cpPath);

		for (size_t ite_char = len - 1; ite_char > 0; ite_char--)
		{
			if (cpPath[ite_char] == '\\')
			{
				if (cpPath[ite_char - 1] <= 0x7F)
				{
					cpPath[ite_char + 1] = '\0';
					return ite_char + 1;
				}
			}

			if (cpPath[ite_char] == '/')
			{
				if (cpPath[ite_char - 1] <= 0x7F)
				{
					cpPath[ite_char + 1] = L'\0';
					return ite_char + 1;
				}
			}
		}

		return len;
	}

	size_t PathRemoveFileName_Ptr(wchar_t* wpPath)
	{
		size_t len = wcslen(wpPath);

		for (size_t ite_char = len - 1; ite_char > 0; ite_char--)
		{
			if (wpPath[ite_char] == L'\\')
			{
				wpPath[ite_char + 1] = L'\0';
				return ite_char + 1;
			}

			if (wpPath[ite_char] == L'/')
			{
				wpPath[ite_char + 1] = L'\0';
				return ite_char + 1;
			}
		}

		return len;
	}

	void PathRemoveFileName_Ref(std::string& msPath)
	{
		msPath.resize(PathRemoveFileName_Ptr((char*)msPath.c_str()));
	}

	void PathRemoveFileName_Ref(std::wstring& wsPath)
	{
		wsPath.resize(PathRemoveFileName_Ptr((wchar_t*)wsPath.c_str()));
	}

	std::string PathRemoveFileName(std::string msPath)
	{
		msPath.resize(PathRemoveFileName_Ptr((char*)msPath.c_str()));
		return msPath;
	}

	std::wstring PathRemoveFileName(std::wstring wsPath)
	{
		wsPath.resize(PathRemoveFileName_Ptr((wchar_t*)wsPath.c_str()));
		return wsPath;
	}


	size_t PathRemoveExtension_Ptr(char* cpPath)
	{
		size_t len = strlen(cpPath);

		for (size_t ite_char = len - 1; ite_char > 0; ite_char--)
		{
			if (cpPath[ite_char] == '.')
			{
				cpPath[ite_char] = '\0';
				return ite_char;
			}
		}

		return len;
	}

	size_t PathRemoveExtension_Ptr(wchar_t* wpPath)
	{
		size_t len = wcslen(wpPath);

		for (size_t ite_char = len - 1; ite_char > 0; ite_char--)
		{
			if (wpPath[ite_char] == L'.')
			{
				wpPath[ite_char] = L'\0';
				return ite_char;
			}
		}

		return len;
	}

	void PathRemoveExtension_Ref(std::string& msPath)
	{
		msPath.resize(PathRemoveExtension_Ptr((char*)msPath.c_str()));
	}

	void PathRemoveExtension_Ref(std::wstring& wsPath)
	{
		wsPath.resize(PathRemoveExtension_Ptr((wchar_t*)wsPath.c_str()));
	}

	std::string PathRemoveExtension(std::string msPath)
	{
		msPath.resize(PathRemoveExtension_Ptr((char*)msPath.c_str()));
		return msPath;
	}

	std::wstring PathRemoveExtension(std::wstring wsPath)
	{
		wsPath.resize(PathRemoveExtension_Ptr((wchar_t*)wsPath.c_str()));
		return wsPath;
	}


	size_t PathGetFileName_Ptr(char* cpPath)
	{
		size_t len = strlen(cpPath);

		for (size_t iteChar = len - 1; iteChar > 0; iteChar--)
		{
			if (cpPath[iteChar] != '\\' && cpPath[iteChar] != '/')
			{
				continue;
			}

			if (cpPath[iteChar - 1] <= 0x7F)
			{
				size_t name_len = len - iteChar - 1;
				memcpy(cpPath, cpPath + iteChar + 1, name_len);
				cpPath[name_len] = '\0';
				return name_len;
			}
		}

		return len;
	}

	size_t PathGetFileName_Ptr(wchar_t* wpPath)
	{
		size_t len = wcslen(wpPath);

		for (size_t iteChar = len - 1; iteChar > 0; iteChar--)
		{
			if (wpPath[iteChar] != L'\\' && wpPath[iteChar] != L'/')
			{
				continue;
			}

			size_t name_len = len - iteChar - 1;
			memcpy(wpPath, wpPath + iteChar + 1, name_len * 2);
			wpPath[name_len] = L'\0';
			return name_len;
		}

		return len;
	}

	void PathGetFileName_Ref(std::string& msPath)
	{
		msPath.resize(PathGetFileName_Ptr((char*)msPath.data()));
	}

	void PathGetFileName_Ref(std::wstring& wsPath)
	{
		wsPath.resize(PathGetFileName_Ptr((wchar_t*)wsPath.data()));
	}

	std::string PathGetFileName(std::string msPath)
	{
		msPath.resize(PathGetFileName_Ptr((char*)msPath.c_str()));
		return msPath;
	}

	std::wstring PathGetFileName(std::wstring wsPath)
	{
		wsPath.resize(PathGetFileName_Ptr((wchar_t*)wsPath.c_str()));
		return wsPath;
	}
}