#pragma once
#include "BinaryStream.hpp"
#include "../../RxString.h"


namespace Rut
{
	enum RFM
	{
		RFM_ANSI,
		RFM_UTF8,
		RFM_UTF16
	};
}

namespace Rut::RxStream
{
	static constexpr uint32_t READLINE_ERROR = -1;
	static constexpr uint32_t WRITELINE_ERROR = -1;


	class Text : private BasicStream
	{
	private:
		RFM m_rxFormat;

	public:
		Text() : m_rxFormat(RFM::RFM_ANSI)
		{

		}

		template <typename T_STR> Text(T_STR PATH, RIO emAccess, RFM emFormat, RCO emCreate = RCO::RCO_AUTO) : m_rxFormat(emFormat)
		{
			this->Create(PATH, emAccess, emCreate);
			EnsureBOM(emAccess);
		}

		Text& operator >>(std::string& msStr) { ReadLine(msStr); return *this; }
		Text& operator >>(std::wstring& wsStr) { ReadLine(wsStr); return *this; }
		Text& operator <<(const char* cpStr) { WriteLine(cpStr); return *this; }
		Text& operator <<(const wchar_t* wpStr) { WriteLine(wpStr); return *this; }
		Text& operator <<(std::string_view msStr) { WriteLine(msStr.data(), (uint32_t)msStr.size()); return *this; }
		Text& operator <<(std::wstring_view wsStr) { WriteLine(wsStr.data(), (uint32_t)wsStr.size()); return *this; }

		void WriteBOM();
		void CheckBOM();
		void EnsureBOM(RIO emAccess);

		uint32_t WriteLine(const char* cpStr);
		uint32_t WriteLine(const char* cpStr, uint32_t nChar);
		uint32_t WriteLine(std::string_view msStr);
		uint32_t WriteLine(const wchar_t* cpStr);
		uint32_t WriteLine(const wchar_t* cpStr, uint32_t nChar);
		uint32_t WriteLine(std::wstring_view wsStr);

		void MoveNextLine();

		std::string ReadLineA();
		std::wstring ReadLineW();
		bool ReadLine(std::string& msLine);
		bool ReadLine(std::wstring& wsLine);
		uint32_t ReadLine(char* cpBuffer, uint32_t nMaxChar);
		uint32_t ReadLine(wchar_t* wpBuffer, uint32_t nMaxChar);

	private:
		uint32_t ReadLineMBCS(char* cpBuffer, uint32_t nMaxChar);
		uint32_t ReadLineWide(wchar_t* wpBuffer, uint32_t nMaxChar);

	};
}