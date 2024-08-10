#include <iostream>
#include "../../lib/Rut/RxPath.h"
#include "../../lib/Rut/RxStream.h"
#include "../../lib/Rut/RxString.h"

#include "../../lib/YurisStaticLibrary/YSTL.h"
#include "../../lib/YurisStaticLibrary/YSCM.h"
#include "../../lib/YurisStaticLibrary/YSTB.h"

using namespace Rut;
using namespace YurisLibrary;


class YSTB_TextEditor_V5
{
private:
	uint8_t m_ucTextOpcode;
	std::wstring m_wsBinFolder;
	std::wstring m_wsScriptFolder;
	std::vector<std::wstring> m_vecScenList;

private:
	uint8_t GetTextOpcode(const std::wstring& wsYSCM)
	{
		YSCM::YSCM_V5 yscm(wsYSCM);
		for (auto& command : yscm.GetCommandList())
		{
			if (command.GetCommandName() == "WORD")
			{
				return command.GetOpcode();
			}
		}

		throw std::runtime_error("Not Find Opcode!");
	}

	void GetScenFile(const std::wstring& wsYSTL)
	{
		YSTL::YSTL_V5 ystl(wsYSTL);
		ystl.MakeStructure(m_wsBinFolder, m_wsScriptFolder);

		for (auto& entry : ystl.GetEntryList())
		{
			if (entry.uiTextCount > 0)
			{
				m_vecScenList.emplace_back(RxString::ToWCS(RxPath::FormatSlash((char*)entry.ucPathStr, L'/'), 932));
			}
		}
	}

public:
	YSTB_TextEditor_V5(const std::wstring& wsBinFolder, const std::wstring& wsScriptFolder)
	{
		this->m_wsBinFolder = wsBinFolder;
		this->m_wsScriptFolder = wsScriptFolder;
		this->m_ucTextOpcode = GetTextOpcode(m_wsBinFolder + L"/" + L"ysc.ybn");
		GetScenFile(m_wsBinFolder + L"/" + L"yst_list.ybn");
	}

	void ExtractText()
	{
		std::vector<std::wstring> text_list;

		for (auto& scn : m_vecScenList)
		{
			YSTB::YSTB_V5 ystb(m_wsScriptFolder + L"/" + scn);

			for (auto& inst : ystb.GetInstList())
			{
				if (inst.GetOpcode() == m_ucTextOpcode)
				{
					if (inst.GetArgCount() != 1) { throw std::runtime_error("Mismatch in number of parameters"); }
					auto& arg = inst.GetArgList()[0];

					std::string text;
					uint8_t* str_ptr = arg.GetDataPtr();
					uint32_t str_len = arg.GetDataSize();
					text.resize(str_len);
					memcpy((char*)text.data(), str_ptr, str_len);

					text_list.emplace_back(RxString::ToWCS(text, 932));
				}
			}

			std::wstring text_file_path = m_wsScriptFolder + L"_new" + L"/" + scn;
			RxPath::MakeDirViaPath(text_file_path);
			RxStream::Text ofs_text = { text_file_path, RIO::RIO_OUT, RFM::RFM_UTF8 };
			for (auto& text : text_list)
			{
				ofs_text.WriteLine(text.c_str());
				ofs_text.WriteLine(L"\n");
			}

			text_list.clear();
		}
	}

	void InsetText()
	{
		// To Do
	}

};

int main()
{
	YSTB_TextEditor_V5 editor(L"ysbin", L"script");
	editor.ExtractText();
}