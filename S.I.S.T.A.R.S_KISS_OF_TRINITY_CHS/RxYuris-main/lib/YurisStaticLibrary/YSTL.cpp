#include "YSTL.h"
#include "../Rut/RxPath.h"
#include "../Rut/RxStream.h"
#include "../Rut/RxString.h"

#include <Windows.h>
#include <shlobj_core.h>
#include <shlwapi.h>
#include <fstream>


namespace YurisLibrary
{
	namespace YSTL
	{
		using namespace Rut;
		using namespace YSTL_Struct;

		YSTL_V2::YSTL_V2()
		{
			this->m_Header = { 0 };
		}

		YSTL_V2::YSTL_V2(const std::wstring& wsYSTL)
		{
			Init(wsYSTL);
		}

		void YSTL_V2::Init(const std::wstring& wsYSTL)
		{
			RxStream::AutoMem ystl_buf(wsYSTL);

			uint8_t* header_ptr = ystl_buf;
			m_Header = *(YSTL_Header*)header_ptr;

			if (m_Header.uiVersion > 466) { throw std::runtime_error("Incorrect Version!"); }

			YSTL_Entry_V2 entry = { 0 };
			uint8_t* entry_ptr = header_ptr + sizeof(m_Header);
			for (uint32_t ite_entry = 0; ite_entry < m_Header.uiEntryCount; ite_entry++)
			{
				entry.uiSequence = *(uint32_t*)(entry_ptr + 0x0);
				entry.uiPathSize = *(uint32_t*)(entry_ptr + 0x4);

				memcpy(entry.ucPathStr, entry_ptr + 0x8, entry.uiPathSize);
				entry.ucPathStr[entry.uiPathSize] = '\0';

				entry_ptr += 0x8 + entry.uiPathSize;

				entry.uiHighDateTime = *(uint32_t*)(entry_ptr + 0x0);
				entry.uiLowDateTime = *(uint32_t*)(entry_ptr + 0x4);
				entry.uiUnknow00 = *(uint32_t*)(entry_ptr + 0x8);
				entry.uiUnknow01 = *(uint32_t*)(entry_ptr + 0xC);

				m_vecEntry.emplace_back(entry);

				entry_ptr += 0x10;
			}
		}

		void YSTL_V2::ToJson(const std::wstring& wsJson)
		{
			std::wofstream ofs_json;
			ofs_json << L"{\n";

			ofs_json << L"\t\"YSTL_Header\":\n\t{\n";
			ofs_json << L"\t\t\"Signature\" : " << L"\"" << L"YSTL" << L"\",\n";
			ofs_json << L"\t\t\"Version\"   : " << L"\"" << m_Header.uiVersion << L"\",\n";
			ofs_json << L"\t\t\"EntryCount\": " << L"\"" << m_Header.uiEntryCount << L"\",\n";
			ofs_json << L"\t},\n\n";

			ofs_json << L"\t\"YSTL_Entry\":\n\t[\n";
			for (auto& entry : m_vecEntry)
			{
				ofs_json << L"\t\t{\n";
				ofs_json << L"\t\t\t\"Sequence\"  : " << L"\"" << entry.uiSequence << L"\",\n";
				ofs_json << L"\t\t\t\"ScriptPath\": " << L"\"" << RxString::ToWCS(RxPath::FormatSlash((char*)entry.ucPathStr, L'/'), 932) << L"\",\n";

				SYSTEMTIME system_time = { 0 };
				FILETIME file_time = { 0 }, file_time_local = { 0 };
				file_time.dwHighDateTime = entry.uiHighDateTime;
				file_time.dwLowDateTime = entry.uiLowDateTime;
				FileTimeToLocalFileTime(&file_time, &file_time_local);
				FileTimeToSystemTime(&file_time, &system_time);
				wchar_t time_str[MAX_PATH] = { 0 };
				swprintf_s
				(
					time_str, MAX_PATH,
					L"%d-%d-%d %02d:%02d:%02d",
					system_time.wYear, system_time.wMonth, system_time.wDay, system_time.wHour, system_time.wMinute, system_time.wMilliseconds
				);
				ofs_json << L"\t\t\t\"LastWrite\" : " << L"\"" << time_str << L"\",\n";

				ofs_json << L"\t\t\t\"Unknow00\"  : " << L"\"" << (uint32_t*)entry.uiUnknow00 << L"\",\n";
				ofs_json << L"\t\t\t\"Unknow01\"  : " << L"\"" << (uint32_t*)entry.uiUnknow01 << L"\",\n";

				ofs_json << L"\t\t},\n\n";

			}
			ofs_json << L"\t],\n";


			ofs_json << L"}\n";
		}

		void YSTL_V2::MakeStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder)
		{
			std::wstring cur_dir = RxPath::GetCurrentDirW();
			std::wstring yst_dir = cur_dir + wsBinFolder + L"\\";
			std::wstring script_dir = cur_dir + wsScriptFolder + L"\\";

			wchar_t yst_name_buf[13] = { 0 };
			for (auto& iteEntry : m_vecEntry)
			{
				std::string  script_rel_path = RxPath::FormatSlash((char*)iteEntry.ucPathStr, '\\');
				std::wstring script_full_path = script_dir + RxString::ToWCS(script_rel_path, 932);

				SHCreateDirectoryExW(NULL, RxPath::PathRemoveFileName(script_full_path).c_str(), NULL);

				swprintf_s(yst_name_buf, L"yst%05d.ybn", iteEntry.uiSequence);
				std::wstring yst_full_path = yst_dir + yst_name_buf;

				CopyFileW(yst_full_path.c_str(), script_full_path.c_str(), FALSE);
			}
		}

		void YSTL_V2::BackStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder)
		{
			std::wstring cur_dir = RxPath::GetCurrentDirW();
			std::wstring yst_dir = cur_dir + wsBinFolder + L"_new" + L"\\";
			std::wstring script_dir = cur_dir + wsScriptFolder + L"\\";

			CreateDirectoryW(yst_dir.c_str(), NULL);

			wchar_t yst_name_buf[13] = { 0 };
			for (auto& iteEntry : m_vecEntry)
			{
				std::string  script_rel_path = RxPath::FormatSlash((char*)iteEntry.ucPathStr, '\\');
				std::wstring script_full_path = script_dir + RxString::ToWCS(script_rel_path, 932);

				swprintf_s(yst_name_buf, L"yst%05d.ybn", iteEntry.uiSequence);
				std::wstring yst_full_path = yst_dir + yst_name_buf;

				CopyFileW(script_full_path.c_str(), yst_full_path.c_str(), FALSE);
			}
		}


		YSTL_V5::YSTL_V5()
		{
			this->m_Header = { 0 };
		}

		YSTL_V5::YSTL_V5(const std::wstring& wsYSTL)
		{
			Init(wsYSTL);
		}

		void YSTL_V5::Init(const std::wstring& wsYSTL)
		{
			RxStream::AutoMem ystl_buf(wsYSTL);

			uint8_t* header_ptr = ystl_buf;
			m_Header = *(YSTL_Header*)header_ptr;

			if (m_Header.uiVersion < 300) { throw std::runtime_error("Incorrect Version!"); }

			YSTL_Entry_V5 entry = { 0 };
			uint8_t* entry_ptr = header_ptr + sizeof(m_Header);
			for (uint32_t ite_entry = 0; ite_entry < m_Header.uiEntryCount; ite_entry++)
			{
				entry.uiSequence = *(uint32_t*)(entry_ptr + 0x0);
				entry.uiPathSize = *(uint32_t*)(entry_ptr + 0x4);
				
				memcpy(entry.ucPathStr, entry_ptr + 0x8, entry.uiPathSize);
				entry.ucPathStr[entry.uiPathSize] = '\0';

				entry_ptr += 0x8 + entry.uiPathSize;

				entry.uiHighDateTime  = *(uint32_t*)(entry_ptr + 0x0);
				entry.uiLowDateTime   = *(uint32_t*)(entry_ptr + 0x4);
				entry.uiVariableCount = *(uint32_t*)(entry_ptr + 0x8);
				entry.uiLabelCount    = *(uint32_t*)(entry_ptr + 0xC);
				entry.uiTextCount     = *(uint32_t*)(entry_ptr + 0x10);

				m_vecEntry.emplace_back(entry);

				entry_ptr += 0x14 ;
			}
		}

		void YSTL_V5::ToJson(const std::wstring& wsJson)
		{
			std::wofstream ofs_json;
			ofs_json << L"{\n";

			ofs_json << L"\t\"YSTL_Header\":\n\t{\n";
			ofs_json << L"\t\t\"Signature\" : " << L"\"" << L"YSTL" << L"\",\n";
			ofs_json << L"\t\t\"Version\"   : " << L"\"" << m_Header.uiVersion << L"\",\n";
			ofs_json << L"\t\t\"EntryCount\": " << L"\"" << m_Header.uiEntryCount << L"\",\n";
			ofs_json << L"\t},\n\n";

			ofs_json << L"\t\"YSTL_Entry\":\n\t[\n";
			for (auto& entry : m_vecEntry)
			{
				ofs_json << L"\t\t{\n";
				ofs_json << L"\t\t\t\"Sequence\"     : " << L"\"" << entry.uiSequence << L"\",\n";
				ofs_json << L"\t\t\t\"ScriptPath\"   : " << L"\"" << RxString::ToWCS(RxPath::FormatSlash((char*)entry.ucPathStr, L'/'), 932) << L"\",\n";

				SYSTEMTIME system_time = { 0 };
				FILETIME file_time = { 0 }, file_time_local = { 0 };
				file_time.dwHighDateTime = entry.uiHighDateTime;
				file_time.dwLowDateTime = entry.uiLowDateTime;
				FileTimeToLocalFileTime(&file_time, &file_time_local);
				FileTimeToSystemTime(&file_time, &system_time);
				wchar_t time_str[MAX_PATH] = { 0 };
				swprintf_s
				(
					time_str, MAX_PATH,
					L"%d-%d-%d %02d:%02d:%02d",
					system_time.wYear, system_time.wMonth, system_time.wDay, system_time.wHour, system_time.wMinute, system_time.wMilliseconds
				);
				ofs_json << L"\t\t\t\"LastWrite\"    : " << L"\"" << time_str << L"\",\n";

				ofs_json << L"\t\t\t\"VariableCount\": " << L"\"" << entry.uiVariableCount << L"\",\n";
				ofs_json << L"\t\t\t\"LabelCount\"   : " << L"\"" << entry.uiLabelCount << L"\",\n";
				ofs_json << L"\t\t\t\"TextCount\"    : " << L"\"" << entry.uiTextCount << L"\",\n";

				ofs_json << L"\t\t},\n\n";

			}
			ofs_json << L"\t],\n";


			ofs_json << L"}\n";
		}

		void YSTL_V5::MakeStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder)
		{
			std::wstring cur_dir = RxPath::GetCurrentDirW();
			std::wstring yst_dir = cur_dir + wsBinFolder + L"\\";
			std::wstring script_dir = cur_dir + wsScriptFolder + L"\\";

			wchar_t yst_name_buf[13] = { 0 };
			for (auto& iteEntry : m_vecEntry)
			{
				std::string  script_rel_path  = RxPath::FormatSlash((char*)iteEntry.ucPathStr, '\\');
				std::wstring script_full_path = script_dir + RxString::ToWCS(script_rel_path, 932);

				SHCreateDirectoryExW(NULL, RxPath::PathRemoveFileName(script_full_path).c_str(), NULL);

				swprintf_s(yst_name_buf, L"yst%05d.ybn", iteEntry.uiSequence);
				std::wstring yst_full_path = yst_dir + yst_name_buf;

				CopyFileW(yst_full_path.c_str(), script_full_path.c_str(), FALSE);
			}
		}

		void YSTL_V5::BackStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder)
		{
			std::wstring cur_dir = RxPath::GetCurrentDirW();
			std::wstring yst_dir = cur_dir + wsBinFolder + L"_new" + L"\\";
			std::wstring script_dir = cur_dir + wsScriptFolder + L"\\";

			CreateDirectoryW(yst_dir.c_str(), NULL);

			wchar_t yst_name_buf[13] = { 0 };
			for (auto& iteEntry : m_vecEntry)
			{
				std::string  script_rel_path = RxPath::FormatSlash((char*)iteEntry.ucPathStr, '\\');
				std::wstring script_full_path = script_dir + RxString::ToWCS(script_rel_path, 932);

				swprintf_s(yst_name_buf, L"yst%05d.ybn", iteEntry.uiSequence);
				std::wstring yst_full_path = yst_dir + yst_name_buf;

				CopyFileW(script_full_path.c_str(), yst_full_path.c_str(), FALSE);
			}
		}
	}
}
