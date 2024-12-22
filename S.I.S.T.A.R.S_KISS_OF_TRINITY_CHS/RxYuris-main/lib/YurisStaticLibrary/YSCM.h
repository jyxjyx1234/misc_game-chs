#include <string>
#include <vector>

#include "YSCM_Struct.h"
#include "../Rut/RxStream.h"


namespace YurisLibrary
{
	namespace YSCM
	{
		class YSCM_Arg_V5
		{
		private:
			std::string  m_msArgName;
			std::uint8_t m_uiValue0;
			std::uint8_t m_uiValue1;

		public:
			YSCM_Arg_V5();
			YSCM_Arg_V5(uint8_t* pArg);

			void Init(uint8_t* pArg);

			std::uint8_t  GetArgValue0() const { return m_uiValue0; }
			std::uint8_t  GetArgValue1() const { return m_uiValue1; }
			std::string   GetArgName()   const { return m_msArgName; }
			std::uint32_t GetArgSize()   const { return m_msArgName.size() + 3; }

		};

		class YSCM_Command_V5
		{
		private:
			std::uint8_t m_ucOpcode;
			std::string m_msCommandName;
			std::vector<YSCM_Arg_V5> m_vecArgs;

		public:
			YSCM_Command_V5();
			YSCM_Command_V5(uint8_t ucOpcode, uint8_t* pCommand);

			void Init(uint8_t ucOpcode, uint8_t* pCommand);
			std::uint8_t GetOpcode() const { return m_ucOpcode; }
			std::string& GetCommandName() { return m_msCommandName; }
			std::vector<YSCM_Arg_V5>& GetArgList() { return m_vecArgs; }
			std::uint32_t GetCommandSize();
		};

		class YSCM_V5
		{
		private:
			YSCM_Header_V5 m_Header;
			std::vector<YSCM_Command_V5> m_vecCommand;
			std::vector<std::string> m_vecErrorMsg;
			Rut::RxStream::AutoMem m_amUnknowTable;

		public:
			YSCM_V5();
			YSCM_V5(const std::wstring& wsYSCM);

			void Init(const std::wstring& wsYSCM);
			void ToJson(const std::wstring& wsJson);
			std::vector<YSCM_Command_V5>& GetCommandList() { return m_vecCommand; }
		};
	}
}