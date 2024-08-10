#pragma once
#include <cstdint>

namespace YurisLibrary
{
	namespace YSCOM
	{
		// For Version 486
		
		// Mapping OBJ Name YU-RISCompilerFileMapObject : yu-ris.exe : 0x0045E484
		struct YSCOM_Compiler_HDR
		{
			uint32_t uiCompileState0;          // State For Compiler Open YSCOM_Compiler_HDR            1 = Successfully
			uint32_t uiCompileState1;          // State For Engine Create YU-RISCompilerFileMapObject2  1 = Successfully
			uint32_t uiCompileState2;          // State For Compiler Compiled All Script                1 = Successfully
			uint32_t uiCompileState3;          // State For Compiler Compiled All Script                1 = Successfully
			uint32_t uiCompiledScriptCount;
			uint32_t uiCompiledScriptsSize;
			uint32_t uiUnknow1[0x1A];
			uint32_t uiEngineVersion;          // 486
			uint8_t  ucProjectPath[0x17C];
		};

		struct YSCOM_Compiled_Script_Entry
		{
			uint32_t uiScriptNameSize;         // With End 0x00, With Path
			uint32_t uiScriptFileSize;
			// file data
		};

		// Mapping OBJ Name YU-RISCompilerFileMapObject2 : YSCom.exe : 0x0040168C
		//struct YSCOM_Compiled_Script
		//{
		//	YSCOM_Compiled_Script_Entry[YSCOM_Compiler_HDR.uiCompiledScriptCount];
		//};
	}
}