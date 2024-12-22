#include "BasicStream.h"

namespace Rut::RxStream
{
	BasicStream::BasicStream() : m_hFile(INVALID_HANDLE_VALUE)
	{

	}

	BasicStream::BasicStream(BasicStream&& refStream) noexcept
	{
		this->m_hFile = refStream.m_hFile;
		refStream.m_hFile = INVALID_HANDLE_VALUE;
	}

	BasicStream::~BasicStream()
	{
		Close();
	}

	void BasicStream::Create(const char* cpPath, RIO emAccess, RCO emCreate)
	{
		Create(RxString::ToWCS(cpPath, CP_ACP).c_str(), emAccess, emCreate);
	}

	void BasicStream::Create(const wchar_t* wpPath, RIO emAccess, RCO emCreate)
	{
		DWORD access_flag = 0, create_flag = 0;
		switch (emAccess)
		{
		case RIO::RIO_IN: access_flag = GENERIC_READ; break;
		case RIO::RIO_OUT: access_flag = GENERIC_WRITE; break;
		case RIO::RIO_IN_OUT: access_flag = GENERIC_READ | GENERIC_WRITE; break;
		}
		switch (emCreate)
		{
		case RCO::RCO_OPEN: create_flag = OPEN_EXISTING; break;
		case RCO::RCO_CREATE: create_flag = CREATE_ALWAYS; break;
		case RCO::RCO_OPEN_UNSAFE: create_flag = OPEN_ALWAYS; break;
		case RCO::RCO_CREATE_SAFE: create_flag = CREATE_NEW; break;
		case RCO::RCO_AUTO:
		{
			switch (emAccess)
			{
			case RIO::RIO_IN: create_flag = OPEN_EXISTING; break;
			case RIO::RIO_OUT: create_flag = CREATE_ALWAYS; break;
			case RIO::RIO_IN_OUT: create_flag = OPEN_EXISTING; break;
			}
		}
		break;
		}

		m_hFile = ::CreateFileW(wpPath, access_flag, FILE_SHARE_READ, NULL, create_flag, FILE_ATTRIBUTE_NORMAL, NULL);
		if (m_hFile == INVALID_HANDLE_VALUE) { throw std::runtime_error("RxStream Create File Error!"); }
	}

	void BasicStream::Create(std::string_view msPath, RIO emAccess, RCO emCreate)
	{
		Create(msPath.data(), emAccess, emCreate);
	}

	void BasicStream::Create(std::wstring_view wsPath, RIO emAccess, RCO emCreate)
	{
		Create(wsPath.data(), emAccess, emCreate);
	}


	bool BasicStream::Close()
	{
		bool is_close = ::CloseHandle(m_hFile);
		m_hFile = INVALID_HANDLE_VALUE;
		return is_close;
	}

	bool BasicStream::Flush()
	{
		return FlushFileBuffers(m_hFile);
	}

	bool BasicStream::IsEnd()
	{
		size_t file_size = GetSize();
		size_t current_pointer = GetPointer();
		return current_pointer >= file_size;
	}


	uint32_t BasicStream::SetPointer(long nOffset)
	{
		return ::SetFilePointer(m_hFile, nOffset, NULL, FILE_BEGIN);
	}

	uint32_t BasicStream::GetPointer()
	{
		return ::SetFilePointer(m_hFile, NULL, NULL, FILE_CURRENT);
	}

	uint32_t BasicStream::MovePointer(long nDistance)
	{
		return ::SetFilePointer(m_hFile, nDistance, NULL, FILE_CURRENT);
	}

	uint32_t BasicStream::GetSize(uint32_t* pHigh)
	{
		return ::GetFileSize(m_hFile, (LPDWORD)pHigh);
	}


	uint32_t BasicStream::Read(void* pBuffer, uint32_t nSize)
	{
		DWORD read = 0;
		return ::ReadFile(m_hFile, pBuffer, nSize, &read, NULL) ? read : 0;
	}

	uint32_t BasicStream::Write(void* pData, uint32_t nSize)
	{
		DWORD written = 0;
		return ::WriteFile(m_hFile, pData, nSize, &written, NULL) ? written : 0;
	}
}