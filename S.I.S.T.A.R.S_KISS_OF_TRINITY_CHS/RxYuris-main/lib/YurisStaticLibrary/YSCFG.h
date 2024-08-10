#pragma once
#include <string>
#include "YSCFG_Struct.h"


namespace YurisLibrary
{
	namespace YSCFG
	{
		class YSCFG_V5
		{
		private:
			std::string m_wsCaption;
			YSCFG_Struct_V5 m_YSCFG;

		public:
			YSCFG_V5();
			YSCFG_V5(const std::wstring& wsYSCFG);
			
			void Init(const std::wstring& wsYSCFG);
			void ToJson(const std::wstring& wsJson);
		};
	}
}