#include "YSCM.h"
#include "../Rut/RxStream.h"


namespace YurisLibrary
{
	namespace YSCM
	{
		using namespace Rut;


		YSCM_Arg_V5::YSCM_Arg_V5()
		{
			m_uiValue0 = 0;
			m_uiValue1 = 0;
		}

		YSCM_Arg_V5::YSCM_Arg_V5(uint8_t* pArg)
		{
			Init(pArg);
		}

		void YSCM_Arg_V5::Init(uint8_t* pArg)
		{
			this->m_msArgName = (char*)pArg;
			this->m_uiValue0 = *(pArg + m_msArgName.size() + 1);
			this->m_uiValue1 = *(pArg + m_msArgName.size() + 2);
		}


		YSCM_Command_V5::YSCM_Command_V5()
		{
			this->m_ucOpcode = 0;
		}

		YSCM_Command_V5::YSCM_Command_V5(uint8_t ucOpcode, uint8_t* pCommand)
		{
			Init(ucOpcode, pCommand);
		}

		void YSCM_Command_V5::Init(uint8_t ucOpcode, uint8_t* pCommand)
		{
			this->m_ucOpcode = ucOpcode;
			this->m_msCommandName = (char*)pCommand;
			
			uint8_t arg_count = *(pCommand + m_msCommandName.size() + 1);
			uint8_t* arg_ptr = pCommand + m_msCommandName.size() + 2;

			for (size_t ite_arg = 0; ite_arg < arg_count; ite_arg++)
			{
				YSCM_Arg_V5 arg(arg_ptr);
				m_vecArgs.emplace_back(arg);
				arg_ptr += arg.GetArgSize();
			}
		}

		uint32_t YSCM_Command_V5::GetCommandSize()
		{
			uint32_t command_size = m_msCommandName.size() + 1 + 1;

			for (auto& arg : m_vecArgs)
			{
				command_size += arg.GetArgSize();
			}

			return command_size;
		}


		YSCM_V5::YSCM_V5()
		{
			this->m_Header = { 0 };
		}

		YSCM_V5::YSCM_V5(const std::wstring& wsYSCM)
		{
			Init(wsYSCM);
		}

		void YSCM_V5::Init(const std::wstring& wsYSCM)
		{
			RxStream::AutoMem yscm_buf(wsYSCM);

			// Read Header
			uint8_t* yscm_ptr = yscm_buf;
			memcpy(&m_Header, yscm_ptr, sizeof(m_Header));

			// Read Command [161222] [Chealseasoft] 恋は夢見る妄烈ガール！: 0046302E
			uint8_t* command_ptr = yscm_ptr + sizeof(m_Header);
			for (uint8_t ite_command = 0; ite_command < m_Header.uiCommandCount; ite_command++)
			{
				YSCM_Command_V5 command(ite_command,command_ptr);
				command_ptr += command.GetCommandSize();
				m_vecCommand.emplace_back(command);
			}

			// Read Error Msg 0x24 messages [161222] [Chealseasoft] 恋は夢見る妄烈ガール！: 00463128
			uint8_t* error_msg_ptr = command_ptr;
			for (size_t ite_msg = 0; ite_msg <= 0x24; ite_msg++)
			{
				std::string msg = (char*)error_msg_ptr;
				error_msg_ptr += msg.size() + 1;
				m_vecErrorMsg.emplace_back(msg);
			}

			// Read Unknow Table = 0x100bytes [161222] [Chealseasoft] 恋は夢見る妄烈ガール！: 0046314D
			uint8_t* unknow_table_ptr = error_msg_ptr;
			m_amUnknowTable.SetSize(0x100);
			memcpy((uint8_t*)m_amUnknowTable, unknow_table_ptr, 0x100);
		}

		void YSCM_V5::ToJson(const std::wstring& wsJson)
		{
			RxStream::Text ofs_text = { wsJson, RIO::RIO_OUT, RFM::RFM_ANSI };

			ofs_text.WriteLine("{\n\t\"Commands\":\n\t[\n");

			char tmp[256] = { 0 };
			for (auto& command : m_vecCommand)
			{
				sprintf_s
				(
					tmp, 256, 
					"\t\t{\n\t\t\t\"OP\":\"0x%x\",\n\t\t\t\"Command\":\"%s\",\n\t\t\t\"Args\":\n\t\t\t[\n",
					command.GetOpcode(), command.GetCommandName().c_str()
				);
				ofs_text.WriteLine(tmp);

				uint32_t arg_id = 0;
				for (auto& arg : command.GetArgList())
				{
					sprintf_s
					(
						tmp, 256, 
						"\t\t\t\t{\n\t\t\t\t\t\"ID\":\"0x%x\",\n\t\t\t\t\t\"Arg\":\"%s\",\n\t\t\t\t\t\"Value0\":\"0x%x\",\n\t\t\t\t\t\"Value1\":\"0x%x\",\n\t\t\t\t},\n", 
						arg_id, arg.GetArgName().c_str(), arg.GetArgValue0(), arg.GetArgValue1()
					);
					ofs_text.WriteLine(tmp);
					arg_id++;
				}

				ofs_text.WriteLine("\t\t\t],\n\t\t},\n");
			}

			ofs_text.WriteLine("\t],\n}\n");
		}
	}
}