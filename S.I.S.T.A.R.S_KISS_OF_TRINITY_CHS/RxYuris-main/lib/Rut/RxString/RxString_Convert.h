#pragma once
#include <string>


namespace Rut::RxString
{
	std::wstring ToWCS(const std::string_view msStr, uint32_t uCodePage);
	int32_t ToWCS(const std::string_view msStr, std::wstring& wsStr, uint32_t uCodePage);

	std::string  ToMBCS(const std::wstring_view wsStr, uint32_t uCodePage);
	int32_t ToMBCS(const std::wstring_view wsStr, std::string& msStr, uint32_t uCodePage);
}