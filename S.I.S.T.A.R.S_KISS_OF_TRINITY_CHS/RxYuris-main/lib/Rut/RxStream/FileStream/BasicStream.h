#pragma once
#include <stdexcept>
#include <Windows.h>
#include <cstdint>

#include "../../RxString.h"


namespace Rut
{
	enum RIO
	{
		RIO_IN,
		RIO_OUT,
		RIO_IN_OUT
	};

	enum RCO
	{
		RCO_CREATE,
		RCO_OPEN,
		RCO_AUTO,
		RCO_CREATE_SAFE,
		RCO_OPEN_UNSAFE,
	};
}

namespace Rut::RxStream
{
	class BasicStream
	{
	protected:
		HANDLE m_hFile;

	protected:
		BasicStream();
		BasicStream(BasicStream&& refStream) noexcept;
		virtual ~BasicStream();

	public:
		void Create(const char* cpPath, RIO emAccess, RCO emCreate);
		void Create(const wchar_t* wpPath, RIO emAccess, RCO emCreate);
		void Create(std::string_view msPath, RIO emAccess, RCO emCreate);
		void Create(std::wstring_view wsPath, RIO emAccess, RCO emCreate);

		bool Close();
		bool Flush();
		bool IsEnd();

		uint32_t SetPointer(long nOffset);
		uint32_t GetPointer();
		uint32_t MovePointer(long nDistance);

		uint32_t GetSize(uint32_t* pHigh = nullptr);

		uint32_t Read(void* pBuffer, uint32_t nSize);
		uint32_t Write(void* pData, uint32_t nSize);

	};
}