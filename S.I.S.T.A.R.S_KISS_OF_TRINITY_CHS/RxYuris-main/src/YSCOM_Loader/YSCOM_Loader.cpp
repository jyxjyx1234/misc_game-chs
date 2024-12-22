#include <iostream>

#include "../../lib/YurisStaticLibrary/YSCOM.h"

using namespace YurisLibrary;


int main()
{
	try
	{
		YSCOM::YSCOM_Loader compiler;
		compiler.Compile(490);
		compiler.Extract(0x96AC6FD3);
		system("pause");
	}
	catch (const std::runtime_error& err)
	{
		std::cerr << err.what() << std::endl;
		system("pause");
	}

}