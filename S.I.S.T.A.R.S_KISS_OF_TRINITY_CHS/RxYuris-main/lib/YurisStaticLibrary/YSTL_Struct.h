#pragma once
#include <cstdint>


namespace YurisLibrary
{
    namespace YSTL_Struct
    {
        //from https://github.com/arcusmaximus/VNTranslationTools/blob/main/VNTextPatch.Shared/Scripts/Yuris/Notes.txt

        /*
        * YSTLFile_V2
        * {
        *   YSTL_Header_V2
        *   YSTL_Entry_V2[YSTL_Header_V2.uiScriptCount]
        * }
        */
        struct YSTL_Header
        {
            uint8_t  ucSignature[4];          // "YSTL"
            uint32_t uiVersion;
            uint32_t uiEntryCount;
        };

        struct YSTL_Entry_V2
        {
            uint32_t uiSequence;
            uint32_t uiPathSize;              // Char Count
            uint8_t  ucPathStr[256];          // aRelativePath[szRelativePath]
            uint32_t uiHighDateTime;          // LastWriteTime
            uint32_t uiLowDateTime;
            uint32_t uiUnknow00;
            uint32_t uiUnknow01;
        };


        /*
        * YSTLFile_V5
        * {
        *   YSTLHeader_V2
        *   YSTL_Entry_V5[YSTL_Header_V2.uiScriptCount]
        * }
        */
        struct YSTL_Entry_V5
        {
            uint32_t uiSequence;
            uint32_t uiPathSize;              // Char Count
            uint8_t  ucPathStr[256];          // uiPathLength[szRelativePath]
            uint32_t uiHighDateTime;
            uint32_t uiLowDateTime;
            uint32_t uiVariableCount;
            uint32_t uiLabelCount;
            uint32_t uiTextCount;
        };
    }
}
