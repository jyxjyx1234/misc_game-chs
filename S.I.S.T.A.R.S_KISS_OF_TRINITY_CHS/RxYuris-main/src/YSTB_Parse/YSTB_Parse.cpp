#include "../../lib/Rut/RxPath.h"

#include "../../lib/YurisStaticLibrary/YSTB.h"
#include "../../lib/YurisStaticLibrary/YSCM.h"

using namespace Rut;
using namespace YurisLibrary;


int main()
{
	std::vector<std::wstring> filename_list;
	RxPath::GetAllFileNameW(L"dec/", filename_list);
	YSCM::YSCM_V5 yscm(L"ysc.ybn");
	std::vector<YSCM::YSCM_Command_V5>& command_list = yscm.GetCommandList();

	for (auto& file : filename_list)
	{
		YSTB::YSTB_V5 ystb(L"dec/" + file);
		RxStream::Text ofs_text(L"text/" + file + L".txt", RIO::RIO_OUT, RFM::RFM_ANSI);

		for (auto& inst : ystb.GetInstList())
		{
			uint8_t opcode = inst.GetOpcode();
			YSCM::YSCM_Command_V5 command = command_list[opcode];
			std::string command_name = command.GetCommandName();
			std::vector<YSCM::YSCM_Arg_V5>& args_list = command.GetArgList();

			ofs_text.WriteLine(command_name + "[");
			for (auto& arg : inst.GetArgList())
			{
				uint16_t arg_id = arg.GetArgID();
				if (args_list.empty())
				{
					break;
				}
				YSCM::YSCM_Arg_V5 arg_v5 = args_list[arg_id];
				std::string arg_name = arg_v5.GetArgName();
				uint16_t type = arg.GetType();
				uint32_t size = arg.GetDataSize();
				uint8_t* data_ptr = arg.GetDataPtr();

				if (command_name == "WORD")
				{
					std::string text;
					text.resize(size);
					memcpy((char*)text.data(), data_ptr, size);
					ofs_text.WriteLine(arg_name + "\"" + text + "\", ");
					continue;
				}


				if (type == 3)
				{
					std::string str;
					uint16_t str_size = *(uint16_t*)(data_ptr + 1) - 2;
					uint8_t* str_ptr = data_ptr + 3;
					if (str_ptr[0] == 0x22)
					{
						str_ptr++;
						int a = 0;
						str.resize(str_size);
						memcpy((char*)str.data(), str_ptr, str_size);
						ofs_text.WriteLine(arg_name + "=\"" + str + "\", ");
						continue;
					}
				}

				if (type == 2)
				{
					if (data_ptr[0] == 0x46)
					{
						uint8_t* p_d = data_ptr + 3;
						double x = *(double*)p_d;
						ofs_text.WriteLine(arg_name + "=\"" + std::to_string(x) + "\", ");
						continue;
					}
				}

				ofs_text.WriteLine(arg_name + "=\"" + "\", ");
			}
			ofs_text.WriteLine("]\n");
		}
	}
}