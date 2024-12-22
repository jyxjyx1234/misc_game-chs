#include "YSCFG.h"
#include "../Rut/RxStream.h"

namespace YurisLibrary
{
	namespace YSCFG
	{
		using namespace Rut;

		YSCFG_V5::YSCFG_V5()
		{
			this->m_YSCFG = { 0 };
		}

		YSCFG_V5::YSCFG_V5(const std::wstring& wsYSCFG)
		{
			Init(wsYSCFG);
		}

		void YSCFG_V5::Init(const std::wstring& wsYSCFG)
		{
			RxStream::AutoMem yscfg_buf(wsYSCFG);

			uint8_t* yscfg_ptr = yscfg_buf;
			memcpy(&m_YSCFG, yscfg_ptr, sizeof(m_YSCFG));

			m_wsCaption.resize(m_YSCFG.uiCaptionLen);
			memcpy((char*)m_wsCaption.data(), (yscfg_ptr + sizeof(m_YSCFG)), m_YSCFG.uiCaptionLen);
		}

		void YSCFG_V5::ToJson(const std::wstring& wsJson)
		{
			RxStream::Text ofs_text = { wsJson, RIO::RIO_OUT, RFM::RFM_ANSI };

			char tmp[256] = { 0 };

			ofs_text.WriteLine("{\n");

			sprintf_s(tmp, 256, "\t\"Signature\":\"0x%x\",\n", m_YSCFG.uiSignature);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Version\":\"%d\",\n", m_YSCFG.uiVersion);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Unknow0\":\"0x%x\",\n", m_YSCFG.uiUnknow0);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Compile\":\"0x%x\",\n", m_YSCFG.uiCompile);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"ScreenWidth\":\"%d\",\n", m_YSCFG.uiScreenWidth);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"ScreenHeight\":\"%d\",\n", m_YSCFG.uiScreenHeight);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Enable\":\"0x%x\",\n", m_YSCFG.uiEnable);
			ofs_text.WriteLine(tmp);

			sprintf_s
			(
				tmp, 256, "\t\"ImageTypeSlots\":[\"0x%02x\", \"0x%02x\", \"0x%02x\", \"0x%02x\", \"0x%02x\", \"0x%02x\", \"0x%02x\", \"0x%02x\"],\n",
				m_YSCFG.ucImageTypeSlots[0], m_YSCFG.ucImageTypeSlots[1], m_YSCFG.ucImageTypeSlots[2], m_YSCFG.ucImageTypeSlots[3],
				m_YSCFG.ucImageTypeSlots[4], m_YSCFG.ucImageTypeSlots[5], m_YSCFG.ucImageTypeSlots[6], m_YSCFG.ucImageTypeSlots[7]
			);
			ofs_text.WriteLine(tmp);

			sprintf_s
			(
				tmp, 256, "\t\"SoundTypeSlots\":[\"0x%02x\", \"0x%02x\", \"0x%02x\", \"0x%02x\"],\n",
				m_YSCFG.ucSoundTypeSlots[0], m_YSCFG.ucSoundTypeSlots[1], m_YSCFG.ucSoundTypeSlots[2], m_YSCFG.ucSoundTypeSlots[3]
			);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Thread\":\"0x%x\",\n", m_YSCFG.uiThread);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"DebugMode\":\"0x%x\",\n", m_YSCFG.uiDebugMode);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Sound\":\"0x%x\",\n", m_YSCFG.uiSound);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"WindowReSize\":\"0x%x\",\n", m_YSCFG.uiWindowReSize);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"WindowFrame\":\"0x%x\",\n", m_YSCFG.uiWindowFrame);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"FilePriorityDev\":\"0x%x\",\n", m_YSCFG.uiFilePriorityDev);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"FilePriorityDebug\":\"0x%x\",\n", m_YSCFG.uiFilePriorityDebug);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"FilePriorityRelease\":\"0x%x\",\n", m_YSCFG.uiFilePriorityRelease);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"Unknow1\":\"0x%x\",\n", m_YSCFG.uiUnknow1);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"CaptionLen\":\"%d\",\n", m_YSCFG.uiCaptionLen);
			ofs_text.WriteLine(tmp);

			sprintf_s(tmp, 256, "\t\"CaptionStr\":\"%s\",\n", m_wsCaption.c_str());
			ofs_text.WriteLine(tmp);

			ofs_text.WriteLine("}\n");
		}
	}
}
