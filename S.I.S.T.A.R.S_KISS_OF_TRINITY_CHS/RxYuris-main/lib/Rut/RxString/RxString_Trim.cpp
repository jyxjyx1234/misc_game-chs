#include "RxString_Trim.h"


namespace Rut::RxString
{
	std::wstring Trim(std::wstring wsLine, const wchar_t* wFilterChar)
	{
		wsLine.erase(0, wsLine.find_first_not_of(wFilterChar));
		wsLine.erase(wsLine.find_last_not_of(wFilterChar) + 1);
		return wsLine;
	}


	FormatLine::FormatLine(std::wstring wsInsert, std::vector<const wchar_t*> vecBreakChar)
	{
		m_wsInsert = wsInsert;
		m_vecBreakChar = vecBreakChar;
		//FormatLine formatLine(L"[n]", { L"。", L"？", L"，", L"。" });
	}

	FormatLine::~FormatLine()
	{

	}

	void FormatLine::SetBreakChar(std::vector<const wchar_t*> vecBreakChar)
	{
		m_vecBreakChar = vecBreakChar;
	}

	void FormatLine::SetInsertString(std::wstring wsInsert)
	{
		m_wsInsert = wsInsert;
	}

	bool FormatLine::BreakLine(std::wstring& wsLine, size_t szMaxLine)
	{
		size_t findPos = 0;
		size_t strLen = wsLine.size();
		if (strLen <= szMaxLine) return false;

		for (auto breakChar : m_vecBreakChar)
		{
			findPos = strLen - 3;

			for (;;)
			{
				findPos = wsLine.rfind(breakChar, findPos);
				if (findPos-- == std::wstring::npos) break;
				if ((findPos < szMaxLine) && ((strLen - findPos) < szMaxLine))
				{
					wsLine.insert(findPos + 2, m_wsInsert);
					return true;
				}
			}

			findPos = 0;
		}

		return false;
	}
}