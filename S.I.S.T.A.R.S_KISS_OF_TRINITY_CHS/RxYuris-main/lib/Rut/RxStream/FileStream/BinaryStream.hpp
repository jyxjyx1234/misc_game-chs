#pragma once
#include <string>
#include <stdexcept>
#include <Windows.h>

#include "BasicStream.h"
#include "../../RxPath/RxPath_MakePath.h"


namespace Rut::RxStream
{
	class Binary : public BasicStream
	{
	public:
		Binary() 
		{

		}

		template <typename T_STR> Binary(T_STR PATH, RIO emAccess, RCO emCreate = RCO::RCO_AUTO) 
		{ 
			this->Create(PATH, emAccess, emCreate);
		}

		Binary(const Binary& refStream) = delete;

		~Binary()
		{ 
			this->Close();
		}

	public:
		template <typename T_TYPE> operator T_TYPE() 
		{ 
			T_TYPE tmp{ 0 };
			Read((T_TYPE*)&tmp, sizeof(T_TYPE)); 
			return tmp; 
		}

		template <typename T_TYPE> Binary& operator >>(T_TYPE& TYPE) 
		{ 
			Read((void*)&TYPE, sizeof(TYPE)); 
			return *this; 
		}

		template <typename T_TYPE> Binary& operator <<(T_TYPE& TPYE) 
		{ 
			Write((void*)&TPYE, sizeof(TPYE));
			return *this; 
		}

	};

	template <typename T_STR> void SaveFileViaPath(T_STR PATH, void* pData, uint32_t nBytes)
	{
		RxPath::MakeDirViaPath(PATH);
		Binary ofs{ PATH, RIO::RIO_OUT };
		ofs.Write(pData, nBytes);
	}

	template <typename T_STR> std::streamsize GetFileSize(T_STR PATH)
	{
		std::ifstream ifs{PATH, std::ios::binary};
		if (!ifs) { throw std::runtime_error("GetFileSize: Open File Error!"); }
		ifs.seekg(0, std::ios::end);
		return ifs.tellg();
	}

	template <typename T_STREAM> std::streamsize GetFileSize(T_STREAM& FSTREAM)
	{
		std::streamsize file_size = 0;
		std::streampos file_pos = FSTREAM.tellg();
		FSTREAM.seekg(0, std::ios::end);
		file_size = FSTREAM.tellg();
		FSTREAM.seekg(file_pos, std::ios::beg);
		return file_size;
	}
}