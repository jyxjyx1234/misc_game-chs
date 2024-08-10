#pragma once
#include <string>

#include "../Rut/RxStream.h"


namespace YurisLibrary
{
	namespace YSCOM
	{
		class YSCOM_Loader
		{
		private:
			uint32_t m_uiScriptCount;
			Rut::RxStream::AutoMem m_amBin;

		public:
			YSCOM_Loader();

			void Compile(uint32_t uiVersion);
			void Extract(uint32_t uiXorKey);
		};
	}
}