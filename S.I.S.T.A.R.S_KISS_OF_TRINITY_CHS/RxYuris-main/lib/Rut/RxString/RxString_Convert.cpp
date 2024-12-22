#include "RxString_Convert.h"
#include <Windows.h>


namespace Rut::RxString
{
	std::wstring ToWCS(const std::string_view msStr, uint32_t uCodePage)
	{
		std::wstring wsString;
		if (ToWCS(msStr, wsString, uCodePage) == 0) { return std::wstring(); }
		return wsString;
	}

	std::string ToMBCS(const std::wstring_view wsStr, uint32_t uCodePage)
	{
		std::string msString;
		if (ToMBCS(wsStr, msString, uCodePage) == 0) { return std::string(); }
		return msString;
	}

	int32_t ToWCS(const std::string_view msStr, std::wstring& wsStr, uint32_t uCodePage)
	{
		int charCount = MultiByteToWideChar
		(
			uCodePage, NULL, msStr.data(), static_cast<int>(msStr.size()), NULL, NULL
		);

		if (charCount == 0) { wsStr = L""; return 0; }

		wsStr.resize(charCount);

		MultiByteToWideChar
		(
			uCodePage, NULL, msStr.data(), static_cast<int>(msStr.size()), const_cast<wchar_t*>(wsStr.data()), charCount
		);

		return charCount;
	}

	int32_t ToMBCS(const std::wstring_view wsStr, std::string& msStr, uint32_t uCodePage)
	{
		int wcharCount = WideCharToMultiByte
		(
			uCodePage, NULL, wsStr.data(), static_cast<int>(wsStr.size()), NULL, NULL, NULL, NULL
		);

		if (wcharCount == 0) { msStr = ""; return 0; }

		msStr.resize(wcharCount);

		WideCharToMultiByte
		(
			uCodePage, NULL, wsStr.data(), static_cast<int>(wsStr.size()), const_cast<char*>(msStr.data()), wcharCount, NULL, NULL
		);

		return wcharCount;
	}
}