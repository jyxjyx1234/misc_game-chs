#pragma once
#include <cstdint>

namespace YurisLibrary
{
	namespace YSCM
	{
        /*
        Frome:[161222] [Chealseasoft] 恋は夢見る妄烈ガール！: 0046302E

        YSCM_File_V5
        {
            YSCM_Header_V5
            YSCM_Command_V5
            YSCM_ErrorMsg_V5
            YSCM_UnknowTable_V5
        }

        */

        struct YSCM_Header_V5
        {
            uint8_t  ucSignature[0x4];
            uint32_t uiVersion;
            uint32_t uiCommandCount;
            uint32_t uiUnknow0;
        };
        /*
        struct YSCM_Command_V5
        {
        	uint8_t ucCommandName[??];
        	uint8_t uiArgsCount;
        	YSC_Arg_V5[uiArgsCount]
        }
        
        struct YSCM_Arg_V5
        {
        	uint8_t ucArgName[??];
        	uint8_t uiucUnknow0;
        	uint8_t uiucUnknow1;
        }
        */
	}
}