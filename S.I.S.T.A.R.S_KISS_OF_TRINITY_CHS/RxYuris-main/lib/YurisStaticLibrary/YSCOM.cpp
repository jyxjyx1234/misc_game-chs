#include "YSCOM.h"
#include "YSTB.h"
#include "YSCOM_Struct.h"
#include "../Rut/RxPath.h"
#include "../Rut/RxStream.h"

#include <Windows.h>


namespace YurisLibrary
{
	namespace YSCOM
	{
		using namespace Rut;

		YSCOM_Loader::YSCOM_Loader()
		{
			this->m_uiScriptCount = 0;
		}

		void YSCOM_Loader::Compile(uint32_t uiVersion)
		{
			HANDLE h_map_hdr = CreateFileMappingA(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, NULL, sizeof(YSCOM_Compiler_HDR), "YU-RISCompilerFileMapObject");
			if (!h_map_hdr) { throw std::runtime_error("CreateFileMapping Failed!"); }

			YSCOM_Compiler_HDR* hdr_ptr = (YSCOM_Compiler_HDR*)MapViewOfFile(h_map_hdr, FILE_MAP_ALL_ACCESS, NULL, NULL, NULL);
			if (!hdr_ptr) { throw std::runtime_error("MapViewOfFile Failed!"); }

			// set version
			hdr_ptr->uiEngineVersion = uiVersion; // 490, 486

			// set project dir
			std::string current_path = RxPath::GetCurrentDirA();
			lstrcpyA((CHAR*)hdr_ptr->ucProjectPath, current_path.c_str());

			// Setup Compiler exe
			DWORD exit_code = 0;
			STARTUPINFOA si = { 0 };
			PROCESS_INFORMATION pi = { 0 };
			si.cb = sizeof(si);
			char command_line[] = "system\\YSCom\\YSCom.exe ys";
			CreateProcessA(NULL, command_line, NULL, NULL, FALSE, NORMAL_PRIORITY_CLASS, NULL, NULL, &si, &pi);
			Sleep(10);
			while (true)
			{
				GetExitCodeProcess(pi.hProcess, &exit_code);
				if (exit_code != STILL_ACTIVE)
				{
					UnmapViewOfFile(hdr_ptr);
					CloseHandle(h_map_hdr);
					CloseHandle(pi.hProcess);
					CloseHandle(pi.hThread);
					throw std::runtime_error("Setup Compiler EXE Failed!");
				}

				if (hdr_ptr->uiCompileState0 == 1) { break; }

				Sleep(10);
			}

			// Get Bin Size , Script Count
			uint32_t script_count = hdr_ptr->uiCompiledScriptCount;
			uint32_t bin_size = hdr_ptr->uiCompiledScriptsSize;
			if (!bin_size) { bin_size = 16; }

			HANDLE h_map_bin = CreateFileMappingA(INVALID_HANDLE_VALUE, NULL, PAGE_READWRITE, NULL, bin_size, "YU-RISCompilerFileMapObject2");
			if (!h_map_bin){ throw std::runtime_error("CreateFileMapping Failed!"); }

			PDWORD bin_ptr = (PDWORD)MapViewOfFile(h_map_bin, FILE_MAP_ALL_ACCESS, NULL, NULL, NULL);
			if (!bin_ptr){ throw std::runtime_error("MapViewOfFile Failed!"); }

			hdr_ptr->uiCompileState1 = 1;

			// Waiting For Compiler EXE Exit
			while (true)
			{
				GetExitCodeProcess(pi.hProcess, &exit_code);
				if (exit_code != STILL_ACTIVE) { break; }
				Sleep(10);
			}

			// Save Binary Data
			uint8_t* save_bin_ptr = m_amBin[bin_size];
			memcpy(save_bin_ptr, bin_ptr, bin_size);
			m_uiScriptCount = script_count;

			// Free
			UnmapViewOfFile(bin_ptr);
			UnmapViewOfFile(hdr_ptr);
			CloseHandle(h_map_bin);
			CloseHandle(h_map_hdr);
			CloseHandle(pi.hThread);
			CloseHandle(pi.hProcess);
		}

		void YSCOM_Loader::Extract(uint32_t uiXorKey)
		{
			YSTB::YSTB_Coder coder(uiXorKey);
			uint8_t* bin_ptr = m_amBin;
			for (size_t ite_bin = 0; ite_bin < m_uiScriptCount; ite_bin++)
			{
				uint32_t bin_name_size = *(uint32_t*)(bin_ptr + 0);
				std::string bin_name = (char*)(bin_ptr + 4);
				uint32_t bin_size = *(uint32_t*)(bin_ptr + 4 + bin_name_size);
				uint8_t* bin_data_ptr = bin_ptr + 4 + bin_name_size + 4;

				coder.Xor(bin_data_ptr);
				RxStream::SaveFileViaPath(bin_name.c_str(), bin_data_ptr, bin_size);
				RxStream::PutConsoleFormat("Save: -> %s\n", bin_name.c_str());

				bin_ptr += 4 + bin_name_size + 4 + bin_size;
			}
		}
	}
}