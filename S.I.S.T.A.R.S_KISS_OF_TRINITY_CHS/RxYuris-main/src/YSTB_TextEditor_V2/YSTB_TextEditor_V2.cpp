#include <iostream>
#include <vector>

#include "../../lib/Rut/RxPath.h"
#include "../../lib/Rut/RxStream.h"
#include "../../lib/YurisStaticLibrary/YSTB.h"

using namespace Rut;
using namespace YurisLibrary;
using std::vector;
using std::wstring;
using std::wcout;
using std::wcin;
using std::endl;


void TextEditor()
{
	bool isAudioFlag = false;
	wchar_t command = 0;
	unsigned int exCodePage = 932;
	unsigned int inCodePage = 936;

	wstring base_path = L".\\";
	vector<wstring> files_name_list;

	wcout
		<< L"input e Extract text.\n"
		<< L"input i Insert text.\n"
		<< L"input c Change code page.\n"
		<< L"input a Extract with audio file names.\n\n"
		<< L"Current CodePage\n"
		<< L"Extract CodePage:" << exCodePage << L'\n'
		<< L"Insert  CodePage:" << inCodePage << L"\n\n"
		<< L"Place script files in current directory\n\n";

	while (true)
	{
		wcout << L"input:";
		wcin >> command;

		RxPath::GetAllFileNameW(base_path, files_name_list);

		switch (command)
		{
		case L'a':
		{
			isAudioFlag = true;
			wcout << L"The audio file name will be extracted \n";
		}
		break;

		case L'e':
		{
			for (auto& iteFileName : files_name_list)
			{
				//if (iteFileName.find(L".ybn", iteFileName.size() - 4) != wstring::npos)
				//{
				//	if (YSTB::YSTB_V2::TextDump_V2(iteFileName, exCodePage, isAudioFlag))
				//	{
				//		wcout << L"Save:" << iteFileName + L".txt" << L'\n';
				//	}
				//	else
				//	{
				//		wcout << L"Failed:" << iteFileName << L'\n';
				//	}
				//}
			}
		}
		break;

		case L'i':
		{
			for (auto& iteFileName : files_name_list)
			{
				//if (iteFileName.find(L".ybn", iteFileName.size() - 4) != wstring::npos)
				//{
				//	if (YSTB::YSTB_V2::TextInset_V2(iteFileName, inCodePage))
				//	{
				//		wcout << L"Save:" << iteFileName + L".new" << L'\n';
				//	}
				//	else
				//	{
				//		wcout << L"Failed:" << iteFileName << L'\n';
				//	}
				//}
			}
		}
		break;

		case L'c':
		{
			wcout << L"Extract CodePage:";
			wcin >> exCodePage;
			wcout << L"Insert CodePage:";
			wcin >> inCodePage;

			wcout << L"CodePage has changed" << L"\n\n";
			wcout
				<< L"Current CodePage\n"
				<< L"Extract CodePage:" << exCodePage << L'\n'
				<< L"Insert  CodePage:" << inCodePage << endl;
		}
		break;

		}

		wcout << endl;
		files_name_list.clear();
	}
}


int main()
{
	TextEditor();
}