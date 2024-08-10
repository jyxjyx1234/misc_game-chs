#include "../../lib/Rut/RxPath.h"
#include "../../lib/Rut/RxStream.h"
#include "../../lib/YurisStaticLibrary/YSTB.h"


using namespace Rut;
using namespace YurisLibrary;


int main(int argc, char* argv[])
{
	try
	{
		uint32_t key = 0;
		sscanf_s(RxStream::Text(L"Key.txt", RIO::RIO_IN, RFM::RFM_ANSI).ReadLineA().c_str(), "0x%X", &key);

		std::vector<std::wstring> ybn_file_list;
		RxPath::GetAllFileNameW(L"ysbin/", ybn_file_list);

		YSTB::YSTB_Coder coder(key);
		for (auto& ybn_name : ybn_file_list)
		{
			if (coder.Xor(L"ysbin/" + ybn_name, L"ysbin_dec/" + ybn_name))
			{
				RxStream::PutConsoleFormat(L"Xor: -> %s -> key:0x%X\n", ybn_name.c_str(), key);
			}
		}
		system("pause");
	}
	catch (const std::runtime_error& err)
	{
		RxStream::PutConsoleFormat(err.what()); RxStream::PutConsoleFormat("\n");
		system("pause");
	}
}