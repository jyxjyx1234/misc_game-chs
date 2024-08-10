#include <iostream>

#include "../../lib/Rut/RxString.h"
#include "../../lib/Rut/RxStream.h"
#include "../../lib/YurisStaticLibrary/YSCFG.h"

using namespace Rut;
using namespace YurisLibrary;


int wmain(int argc, wchar_t* argv[])
{
	try
	{
		RxStream::Binary ifs_ystl = { L"ysbin/yst_list.ybn", RIO::RIO_IN };
		ifs_ystl.SetPointer(0x4);
		uint32_t version = ifs_ystl;

		if (version > 300)
		{
			YSCFG::YSCFG_V5 yscfg(argv[1]);
			yscfg.ToJson(L"yscfg.json");
		}

		if (argc == 1)
		{
			YSCFG::YSCFG_V5 yscfg(L"yscfg.ybn");
			yscfg.ToJson(L"yscfg.json");
		}
	}
	catch (const std::runtime_error& err)
	{
		std::cerr << err.what() << std::endl;
	}
}