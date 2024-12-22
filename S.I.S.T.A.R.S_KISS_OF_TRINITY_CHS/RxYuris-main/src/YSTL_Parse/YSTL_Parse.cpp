#include <iostream>

#include "../../lib/Rut/RxStream.h"
#include "../../lib/YurisStaticLibrary/YSTL.h"

using namespace Rut;
using namespace YurisLibrary;


int wmain(int argc, wchar_t* argv[])
{
	if (argc <= 1) 
	{ 
		std::cout
			<< "YSTL_Parse:\n"
			<< "\tPut the ysbin folder into the current directory\n"
			<< "Command:\n"
			<< "\t-json   printf ystl info to json file, save as ystl.json\n"
			<< "\t-make   copy and move file directory structure, save in script folder\n"
			<< "\t-back   copy and rename all script file to ystxx.ybn, save in ysbin_new folder\n"
			<< "Example\n"
			<< "\tYSTL_Parse.exe -json\n"
			<< "\tYSTL_Parse.exe -make\n"
			<< "\tYSTL_Parse.exe -back\n\n";

		system("pause");
		return 0;
	}

	uint32_t version = 0;
	RxStream::Binary ifs_ystl = { L"ysbin/yst_list.ybn", RIO::RIO_IN };
	ifs_ystl.SetPointer(0x4);
	ifs_ystl.Read(&version, 4);

	try
	{
		const wchar_t* command = argv[1];

		if (version > 466)
		{
			YSTL::YSTL_V5 yst;
			yst.Init(L"ysbin/yst_list.ybn");

			if (!wcscmp(command, L"-json"))
			{
				yst.ToJson(L"ystl.json");
				std::cout << "Save As ystl.json\n";
			}
			else if (!wcscmp(command, L"-make"))
			{
				yst.MakeStructure(L"ysbin", L"script");
				std::cout << "Save Folder script\n";
			}
			else if (!wcscmp(command, L"-back"))
			{
				yst.BackStructure(L"ysbin", L"script");
				std::cout << "Save Folder ysbin_new\n";
			}
		}
		else
		{
			YSTL::YSTL_V2 yst;
			yst.Init(L"ysbin/yst_list.ybn");

			if (!wcscmp(command, L"-json"))
			{
				yst.ToJson(L"ystl.json");
				std::cout << "Save As ystl.json\n";
			}
			else if (!wcscmp(command, L"-make"))
			{
				yst.MakeStructure(L"ysbin", L"script");
				std::cout << "Save Folder script\n";
			}
			else if (!wcscmp(command, L"-back"))
			{
				yst.BackStructure(L"ysbin", L"script");
				std::cout << "Save Folder ysbin_new\n";
			}
		}
	}
	catch (const std::runtime_error& err)
	{
		std::cerr << err.what() << std::endl;
	}
}