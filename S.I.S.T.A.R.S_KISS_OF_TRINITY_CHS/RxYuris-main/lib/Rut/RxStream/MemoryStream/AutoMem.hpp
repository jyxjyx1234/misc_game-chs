#pragma once
#include <string>

#include "../FileStream/BinaryStream.hpp"


namespace Rut::RxStream
{
	static constexpr uint32_t AutoMem_AutoSize = -1;

	class AutoMem
	{
	private:
		uint32_t m_uiMemSize;
		uint8_t* m_pMemData;

	public:
		AutoMem() : m_pMemData(nullptr), m_uiMemSize(0) 
		{

		}

		AutoMem(const AutoMem& buffer)
		{
			if (buffer.m_pMemData != nullptr)
			{
				this->m_uiMemSize = buffer.m_uiMemSize;
				this->m_pMemData = new uint8_t[buffer.m_uiMemSize];
				memcpy(m_pMemData, buffer.m_pMemData, m_uiMemSize);
			}
			else
			{
				this->m_pMemData = nullptr;
				this->m_uiMemSize = 0;
			}
		}

		AutoMem(AutoMem&& buffer) noexcept
		{
			this->m_pMemData = buffer.m_pMemData;
			this->m_uiMemSize = buffer.m_uiMemSize;

			buffer.m_pMemData = nullptr;
			buffer.m_uiMemSize = 0;
		}

		template <typename T_STR> AutoMem(T_STR T_PATH) : m_pMemData(nullptr), m_uiMemSize(0)
		{
			LoadFileViaSize(T_PATH);
		}

		template <typename T_STR> AutoMem(T_STR T_PATH, uint32_t szFile) : m_pMemData(nullptr), m_uiMemSize(0)
		{
			LoadFileViaSize(T_PATH, szFile);
		}

		~AutoMem()
		{
			if (m_pMemData != nullptr) { delete[] m_pMemData; }
			m_uiMemSize = 0;
			m_pMemData = nullptr;
		}

	public:
		uint8_t* SetSize(uint32_t uiNewSize, bool isCopy = false)
		{
			if (this->m_uiMemSize == 0)
			{
				this->m_pMemData = new uint8_t[uiNewSize];
				this->m_uiMemSize = uiNewSize;
			}

			if (uiNewSize > this->m_uiMemSize)
			{
				uint8_t* new_mem = new uint8_t[uiNewSize];
				if (isCopy) { memcpy(new_mem, this->m_pMemData, this->m_uiMemSize); }
				delete[] this->m_pMemData;
				this->m_pMemData = new_mem;
				this->m_uiMemSize = uiNewSize;
			}

			return this->m_pMemData;
		}

		template <typename T_STR> void SaveDataToFile(T_STR PATH)
		{
			SaveFileViaPath(PATH, m_pMemData, m_uiMemSize);
		}

		template <typename T_STR> uint8_t* LoadFileViaSize(T_STR PATH, uint32_t uiSize = AutoMem_AutoSize)
		{
			Binary ifs{ PATH, RIO::RIO_IN };
			if (uiSize == AutoMem_AutoSize) { uiSize = ifs.GetSize(); }
			ifs.Read(SetSize(uiSize), uiSize);
			return m_pMemData;
		}

		uint32_t GetSize() 
		{ 
			return m_uiMemSize;
		}

		uint8_t* GetPtr() 
		{ 
			return m_pMemData;
		}

	public:
		template <typename T_PTR> operator T_PTR* () 
		{ 
			return (T_PTR*)m_pMemData;
		}

		template <typename T_TYPE> operator T_TYPE () 
		{ 
			return (T_TYPE)m_uiMemSize;
		}

		AutoMem& operator[] (uint32_t tSize) 
		{ 
			SetSize(tSize); 
			return *this; 
		}
	};
}