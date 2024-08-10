#pragma once
#include <string>
#include <vector>


namespace Rut::RxString
{
	std::wstring Trim(std::wstring wsLine, const wchar_t* wFilterChar = L" \r\n\t");

	class FormatLine
	{
	private:
		std::wstring m_wsInsert;
		std::vector<const wchar_t*> m_vecBreakChar;

	public:
		FormatLine(std::wstring wsInsert, std::vector<const wchar_t*> vecBreakChar);
		~FormatLine();

		void SetInsertString(std::wstring wsInsert);
		void SetBreakChar(std::vector<const wchar_t*> vecBreakChar);

		bool BreakLine(std::wstring& wsLine, size_t szMaxLine);

	};
}

