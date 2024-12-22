#include "../../lib/YurisStaticLibrary/YSCM.h"


using namespace YurisLibrary;

int wmain(int argc, wchar_t* argv[])
{
	if (argc > 1)
	{
		YSCM::YSCM_V5 cm(argv[1]);
		cm.ToJson(L"ysc_dump.json");
	}
}