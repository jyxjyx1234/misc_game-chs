#pragma once
#include <vector>
#include <fstream>
#include <Windows.h>

#include "YSTL_Struct.h"


namespace YurisLibrary
{
    namespace YSTL
    {
        class YSTL_V2
        {
        private:
            YSTL_Struct::YSTL_Header m_Header;
            std::vector<YSTL_Struct::YSTL_Entry_V2> m_vecEntry;

        public:
            YSTL_V2();
            YSTL_V2(const std::wstring& wsYSTL);

            void Init(const std::wstring& wsYSTL);

            void ToJson(const std::wstring& wsJson);
            void MakeStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder);
            void BackStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder);
        };

        class YSTL_V5
        {
        private:
            YSTL_Struct::YSTL_Header m_Header;
            std::vector<YSTL_Struct::YSTL_Entry_V5> m_vecEntry;

        public:
            YSTL_V5();
            YSTL_V5(const std::wstring& wsYSTL);

            void Init(const std::wstring& wsYSTL);

            void ToJson(const std::wstring& wsJson);
            void MakeStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder);
            void BackStructure(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder);

            std::vector<YSTL_Struct::YSTL_Entry_V5>& GetEntryList() { return m_vecEntry; }
        };
    }
}
