#include <iostream>

#include "../../lib/YurisStaticLibrary/YPF.h"

using namespace YurisLibrary;


int wmain(int argc, wchar_t* argv[])
{
	std::wstring fileName;
	std::wcout << L"input file name:";
	std::wcin >> fileName;

	YPF::YPF_V5 ypf(fileName);
	ypf.DecodeFile_WZ();
}