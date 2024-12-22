#include "TextStream.h"


namespace Rut::RxStream
{
	void Text::WriteBOM()
	{
		switch (m_rxFormat)
		{
		case RFM::RFM_UTF8:
			Write((char*)"\xEF\xBB\xBF", 3);
			break;
		case RFM::RFM_UTF16:
			Write((void*)"\xFF\xFE", 2);
			break;
		}
	}

	void Text::CheckBOM()
	{
		uint32_t bom = 0; Read(&bom, sizeof(bom));

		switch (m_rxFormat)
		{
		case RFM::RFM_UTF8:
		{
			if ((bom & 0x00FFFFFFU) == 0x00BFBBEFU) { MovePointer(-1); } // Skip BOM
		}
		break;

		case RFM::RFM_UTF16:
		{
			if ((bom & 0x0000FFFFU) == 0x0000FEFF) { MovePointer(-2); } // Skip BOM
		}
		break;

		default: MovePointer(-4); // Not BOM Back Pointer
		}
	}

	void Text::EnsureBOM(RIO emAccess)
	{
		switch (emAccess)
		{
		case RIO::RIO_IN:
			CheckBOM();
			break;
		case RIO::RIO_OUT:
			WriteBOM();
			break;
		case RIO::RIO_IN_OUT:
			CheckBOM();
			break;
		default:
			break;
		}
	}


	uint32_t Text::WriteLine(const char* cpStr)
	{
		uint32_t char_count = (uint32_t)strlen(cpStr);
		return WriteLine((char*)cpStr, char_count);
	}

	uint32_t Text::WriteLine(const char* cpStr, uint32_t nChar)
	{
		switch (m_rxFormat)
		{
		case RFM::RFM_ANSI:
		{
			return Write((char*)cpStr, nChar);
		}
		break;

		case RFM::RFM_UTF8:
		{
			std::string u8str;
			std::wstring wide;
			RxString::ToWCS(cpStr, wide, CP_ACP);
			RxString::ToMBCS(wide, u8str, CP_UTF8);
			return Write(u8str.data(), (uint32_t)u8str.size());
		}
		break;

		case RFM::RFM_UTF16:
		{
			std::wstring wide;
			RxString::ToWCS(cpStr, wide, CP_ACP);
			return Write(wide.data(), (uint32_t)(wide.size() * 2));
		}
		break;

		default:
			throw std::runtime_error("TextStream::WriteLine: Unknow Format!");
			break;
		}

		return WRITELINE_ERROR;
	}

	uint32_t Text::WriteLine(std::string_view msStr)
	{
		return WriteLine(msStr.data(), (uint32_t)msStr.size());
	}


	uint32_t Text::WriteLine(const wchar_t* cpStr)
	{
		uint32_t wchar_len = (uint32_t)wcslen(cpStr);
		return WriteLine(cpStr, wchar_len);
	}

	uint32_t Text::WriteLine(const wchar_t* cpStr, uint32_t nChar)
	{
		switch (m_rxFormat)
		{
		case RFM::RFM_ANSI:
		{
			std::string ansi;
			RxString::ToMBCS(cpStr, ansi, CP_ACP);
			return Write(ansi.data(), (uint32_t)ansi.size());
		}
		break;

		case RFM::RFM_UTF8:
		{
			std::string u8str;
			RxString::ToMBCS(cpStr, u8str, CP_UTF8);
			return Write(u8str.data(), (uint32_t)u8str.size());
		}
		break;

		case RFM::RFM_UTF16:
		{
			return Write((wchar_t*)cpStr, nChar * 2);
		}
		break;

		default:
			throw std::runtime_error("TextStream::WriteLine: Unknow Format!");
			break;
		}

		return WRITELINE_ERROR;
	}

	uint32_t Text::WriteLine(std::wstring_view wsStr)
	{
		return WriteLine(wsStr.data(), (uint32_t)wsStr.size());
	}


	void Text::MoveNextLine()
	{
		switch (m_rxFormat)
		{
		case RFM::RFM_ANSI: case RFM::RFM_UTF8: ReadLineMBCS(nullptr, READLINE_ERROR); break;
		case RFM::RFM_UTF16: ReadLineWide(nullptr, READLINE_ERROR); break;
		default: throw std::runtime_error("TextStream::MoveNextLine: Unknow Format!"); break;
		}
	}


	std::string Text::ReadLineA()
	{
		std::string line;
		return ReadLine(line) ? line : "";
	}

	std::wstring Text::ReadLineW()
	{
		std::wstring line;
		return ReadLine(line) ? line : L"";
	}

	bool Text::ReadLine(std::string& msLine)
	{
		uint32_t line_len = 0;
		uint32_t buf_size = 0x100;

		while (true)
		{
			msLine.resize(buf_size);
			line_len = ReadLine(msLine.data(), buf_size);

			if (line_len == -1)
			{
				if (IsEnd()) { return false; }
				buf_size <<= 1;
				continue;
			}

			msLine.resize(line_len);
			return true;
		}
	}

	bool Text::ReadLine(std::wstring& wsLine)
	{
		uint32_t line_len = 0;
		uint32_t buf_size = 0x100;

		while (true)
		{
			wsLine.resize(buf_size);
			line_len = ReadLine(wsLine.data(), buf_size);

			if (line_len == READLINE_ERROR)
			{
				if (IsEnd()) { return false; }
				buf_size <<= 1;
				continue;
			}

			wsLine.resize(line_len);
			return true;
		}
	}

	uint32_t Text::ReadLine(char* cpBuffer, uint32_t nMaxChar)
	{
		switch (m_rxFormat)
		{
		case RFM::RFM_ANSI: case RFM::RFM_UTF8:
		{
			uint32_t cch = ReadLineMBCS(cpBuffer, nMaxChar);
			if (cch == READLINE_ERROR) { return READLINE_ERROR; }
			if (m_rxFormat == RFM::RFM_ANSI)
			{
				return cch;
			}
			else if (m_rxFormat == RFM::RFM_UTF8)
			{
				std::string ansi;
				std::wstring wide;
				RxString::ToWCS(cpBuffer, wide, CP_UTF8);
				RxString::ToMBCS(wide, ansi, CP_ACP);
				if ((uint32_t)ansi.size() > nMaxChar) { return READLINE_ERROR; }
				memcpy(cpBuffer, ansi.data(), ansi.size() + 1);
				return (uint32_t)ansi.size();
			}
		}
		break;

		case RFM::RFM_UTF16:
		{
			std::string msstr;
			std::wstring wsstr;
			wsstr.resize(nMaxChar);
			uint32_t cch = ReadLineWide(wsstr.data(), nMaxChar);
			if (cch == READLINE_ERROR) { return READLINE_ERROR; }
			RxString::ToMBCS(wsstr, msstr, CP_ACP);
			memcpy(cpBuffer, msstr.data(), msstr.size() + 1);
			return (uint32_t)msstr.size();
		}
		break;

		default:
			throw std::runtime_error("TextStream::ReadLine: Unknow Format!");
			break;
		}

		return READLINE_ERROR;
	}

	uint32_t Text::ReadLine(wchar_t* wpBuffer, uint32_t nMaxChar)
	{
		switch (m_rxFormat)
		{
		case RFM::RFM_ANSI: case RFM::RFM_UTF8:
		{
			std::string msstr;
			std::wstring wsstr;
			msstr.resize(nMaxChar * 2);
			uint32_t cch = ReadLineMBCS(msstr.data(), nMaxChar);
			if (cch == READLINE_ERROR) { return READLINE_ERROR; }
			msstr.resize(cch);

			if (m_rxFormat == RFM::RFM_UTF8)
			{
				RxString::ToWCS(msstr, wsstr, CP_UTF8);
			}
			else if (m_rxFormat == RFM::RFM_ANSI)
			{
				RxString::ToWCS(msstr, wsstr, CP_ACP);
			}

			memcpy(wpBuffer, wsstr.data(), (wsstr.size() + 1) * 2);
			return (uint32_t)wsstr.size();
		}
		break;

		case RFM::RFM_UTF16:
		{
			return ReadLineWide(wpBuffer, nMaxChar);
		}
		break;

		default:
			throw std::runtime_error("TextStream::ReadLine: Unknow Format!");
			break;
		}
	}

	uint32_t Text::ReadLineMBCS(char* cpBuffer, uint32_t nMaxChar)
	{
		uint32_t beg_pointer = this->GetPointer();
		if (IsEnd()) { return READLINE_ERROR; } // End of File

		char buffer[0x100];
		char* buf_ptr = cpBuffer;
		uint32_t line_len = 0;
		while (true)
		{
			uint32_t ite_char = 0;
			uint32_t read_size = Read(buffer, sizeof(buffer));
			for (; ite_char < read_size; ite_char++) { if (buffer[ite_char] == '\n') { break; } }

			line_len += ite_char;

			if (nMaxChar <= line_len)  // Buffer Too Small
			{
				SetPointer(beg_pointer);
				return READLINE_ERROR;
			}

			if (cpBuffer != 0 && ite_char != 0) // Do Not Read To Buffer
			{
				memcpy(buf_ptr, buffer, ite_char);
				buf_ptr[ite_char] = '\0';
			}

			if (ite_char != sizeof(buffer)) // Read Finish
			{
				uint32_t skip_size = line_len + 1;

				if (line_len > 0 && cpBuffer != 0) // Delete /r
				{
					if (cpBuffer[line_len - 1] == '\r')
					{
						cpBuffer[line_len - 1] = '\0';
						line_len -= 1;
					}
				}

				SetPointer(beg_pointer + skip_size);
				return line_len;
			}
			else // Read Remain
			{
				buf_ptr += ite_char;
				continue;
			}
		}
	}

	uint32_t Text::ReadLineWide(wchar_t* wpBuffer, uint32_t nMaxChar)
	{
		uint32_t beg_pointer = this->GetPointer();
		if (IsEnd()) { return READLINE_ERROR; } // End of File

		wchar_t buffer[0x100];
		wchar_t* buf_ptr = wpBuffer;
		uint32_t line_len = 0;
		while (true)
		{
			uint32_t ite_char = 0;
			uint32_t read_size = Read(buffer, sizeof(buffer));
			uint32_t char_count = read_size / 2;
			for (; ite_char < char_count; ite_char++) { if (buffer[ite_char] == L'\n') { break; } }

			line_len += ite_char;

			if (nMaxChar <= line_len)  // Buffer Too Small
			{
				SetPointer(beg_pointer);
				return READLINE_ERROR;
			}

			if (wpBuffer != 0 && ite_char != 0) // Do Not Read To Buffer
			{
				memcpy(buf_ptr, buffer, ite_char * sizeof(wchar_t));
				buf_ptr[ite_char] = L'\0';
			}

			if (ite_char != (sizeof(buffer) / 2)) // Read Finish
			{
				uint32_t skip_size = (line_len + 1) * sizeof(wchar_t);

				if (line_len > 0 && wpBuffer != 0) // Delete /r
				{
					if (wpBuffer[line_len - 1] == L'\r')
					{
						wpBuffer[line_len - 1] = L'\0';
						line_len -= 1;
					}
				}

				SetPointer(beg_pointer + skip_size);
				return line_len;
			}
			else // Read Remain
			{
				buf_ptr += ite_char;
				continue;
			}
		}
	}
}