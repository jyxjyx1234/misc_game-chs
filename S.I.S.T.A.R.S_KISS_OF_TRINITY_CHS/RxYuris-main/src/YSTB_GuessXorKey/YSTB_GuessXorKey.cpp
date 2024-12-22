#include <iostream>

#include "../../lib/YurisStaticLibrary/YSTB.h"

#include "../../lib/Rut/RxStream.h"

using namespace Rut;
using namespace YurisLibrary;


int wmain(int argc, wchar_t* argv[])
{
	if (argc <= 1)
	{
		std::cout
			<< "YSTB_GuessXorKey:\n"
			<< "\tChoose the largest ystb file as possible\n"
			<< "Example\n"
			<< "\tYSTB_GuessXorKey.exe yst00004.ybn\n\n";

		system("pasue");
		return 0;
	}

	try
	{
		char key_str_buf[0xF] = { 0 };
		sprintf_s(key_str_buf, sizeof(key_str_buf), "0x%X", YSTB::YSTB_Coder().GetXorKey(argv[1]));
		RxStream::Text(L"Key.txt", RIO::RIO_OUT, RFM::RFM_ANSI).WriteLine(key_str_buf);
	}
	catch (const std::runtime_error& err)
	{
		std::cerr << err.what() << std::endl;
		system("pause");
	}

}