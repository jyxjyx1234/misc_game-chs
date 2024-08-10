#pragma once
#include <string>
#include <vector>

#include "YPF_Struct.h"


namespace YurisLibrary
{
	namespace YPF
	{
		class YPF_V5
		{
		private:
			std::wstring m_wsYPF;
			YPF_HDR_V2 m_Header;
			std::vector<YPF_Entry_V5> m_vecEntry;

			void InitIndex();
			static unsigned char DecodePathSize(unsigned char szEncRelativePath);
			static void DecodePathName(char* lpEncRelativePath, size_t szEncRelativePath);

		public:
			YPF_V5(std::wstring wsFile);
			~YPF_V5();

			//用于处理屋子对YPF的加密
			void DecodeFile_WZ();

		private:

		};
	}
}

