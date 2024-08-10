#include "YSTB.h"
#include "../Rut/RxStream.h"
#include "../Rut/RxString.h"

#include <iomanip>
#include <iostream>


namespace YurisLibrary
{
	namespace YSTB
	{
		using namespace Rut;


		bool YSTB_Coder::Xor(uint8_t* pYSTB)
		{
			uint8_t* key = (uint8_t*)&m_uiXorKey;
			uint32_t magic = *(uint32_t*)(pYSTB + 0);
			uint32_t version = *(uint32_t*)(pYSTB + 4);

			if (magic != 0x42545359) { return false; }

			if (version > 200 && version < 300)
			{
				uint8_t* seg_ptr = pYSTB + sizeof(YSTB_Header_V2);
				YSTB_Header_V2* hdr_ptr = (YSTB_Header_V2*)(pYSTB);
				for (uint32_t ite_code_data = 0; ite_code_data < hdr_ptr->uiCodeSegSize; ite_code_data++)
				{
					seg_ptr[ite_code_data] ^= key[ite_code_data & 3];
				}

				seg_ptr += hdr_ptr->uiCodeSegSize;

				for (size_t ite_arg_data = 0; ite_arg_data < hdr_ptr->uiArgsSegSize; ite_arg_data++)
				{
					seg_ptr[ite_arg_data] ^= key[ite_arg_data & 3];
				}
			}
			else
			{
				uint8_t* seg_ptr = pYSTB + sizeof(YSTB_Header_V5);
				YSTB_Header_V5* hdr_ptr = (YSTB_Header_V5*)(pYSTB);

				for (uint32_t ite_inst_data = 0; ite_inst_data < hdr_ptr->uiInstIndexSize; ite_inst_data++)
				{
					seg_ptr[ite_inst_data] ^= key[ite_inst_data & 3];
				}

				seg_ptr += hdr_ptr->uiInstIndexSize;

				for (uint32_t ite_args_index_data = 0; ite_args_index_data < hdr_ptr->uiArgsIndexSize; ite_args_index_data++)
				{
					seg_ptr[ite_args_index_data] ^= key[ite_args_index_data & 3];
				}

				seg_ptr += hdr_ptr->uiArgsIndexSize;

				for (uint32_t ite_args_data_data = 0; ite_args_data_data < hdr_ptr->uiArgsDataSize; ite_args_data_data++)
				{
					seg_ptr[ite_args_data_data] ^= key[ite_args_data_data & 3];
				}

				seg_ptr += hdr_ptr->uiArgsDataSize;

				for (uint32_t ite_line_number_data = 0; ite_line_number_data < hdr_ptr->uiLineNumbersSize; ite_line_number_data++)
				{
					seg_ptr[ite_line_number_data] ^= key[ite_line_number_data & 3];
				}
			}

			return true;
		}

		bool YSTB_Coder::Xor(const std::wstring& wsEnc, const std::wstring& wsDec)
		{
			RxStream::AutoMem ystb_buf(wsEnc);
			if (Xor((uint8_t*)ystb_buf))
			{
				ystb_buf.SaveDataToFile(wsDec);
				return true;
			}
			return false;
		}

		uint32_t YSTB_Coder::GetXorKey(const std::wstring& wsYSTB)
		{
			if (m_uiXorKey != 0) { return m_uiXorKey; }

			uint32_t key = 0;
			uint32_t version = 0;
			RxStream::Binary ifs_ystb(wsYSTB, RIO::RIO_IN);

			//Read Version
			ifs_ystb.SetPointer(4);
			ifs_ystb.Read(&version, 4);
			ifs_ystb.SetPointer(0);

			//Check Version
			if (version > 200 && version < 300)
			{
				YSTB_Header_V2 header = { 0 };
				ifs_ystb.Read(&header, sizeof(YSTB_Header_V2));
				if ((header.uiCodeSegSize + header.uiArgsSegSize) < 0x10)
				{
					m_uiXorKey = 0;
				}
				else
				{
					ifs_ystb.SetPointer(0x2C);
					ifs_ystb.Read(&key, 4);
				}
			}
			else
			{
				//Init Header
				YSTB_Header_V5 header = { 0 };
				ifs_ystb.Read(&header, sizeof(YSTB_Header_V5));

				if (header.uiArgsDataSize == 0)
				{
					m_uiXorKey = 0;
				}
				else
				{
					//Read The First AttributeDescriptor iOffset == 0
					ifs_ystb.SetPointer(header.uiInstIndexSize + sizeof(YSTB_Header_V5) + 0x8);
					ifs_ystb.Read(&key, 4);
				}
			}

			m_uiXorKey = key;

			return m_uiXorKey;
		}


		YSTB_Inst_V5::YSTB_Inst_V5()
		{
			this->m_ucOpcode = 0;
			this->m_ucArgCount = 0;
			this->m_ucUnknow0 = 0;
			this->m_ucUnknow1 = 0;
		}

		YSTB_Inst_V5::YSTB_Inst_V5(uint8_t* pInst)
		{
			Init(pInst);
		}

		void YSTB_Inst_V5::Init(uint8_t* pInst)
		{
			this->m_ucOpcode = pInst[0];
			this->m_ucArgCount = pInst[1];
			this->m_ucUnknow0 = pInst[2];
			this->m_ucUnknow1 = pInst[3];
		}

		void YSTB_Inst_V5::AddArg(YSTB_Arg_V5& yArg)
		{
			m_vecArg.emplace_back(yArg);
		}

		YSTB_Arg_V5::YSTB_Arg_V5()
		{
			this->m_usArgID = 0;
			this->m_usArgType = 0;
			this->m_uiArgSize = 0;
		}

		YSTB_Arg_V5::YSTB_Arg_V5(uint8_t* pArg, uint8_t* pArgData)
		{
			Init(pArg, pArgData);
		}

		void YSTB_Arg_V5::Init(uint8_t* pArg, uint8_t* pArgData)
		{
			this->m_usArgID = *(uint16_t*)pArg;
			this->m_usArgType = *(uint16_t*)(pArg + 2);
			this->m_uiArgSize = *(uint32_t*)(pArg + 4);

			uint8_t* arg_data_ptr = m_amArgData[m_uiArgSize];
			memcpy(arg_data_ptr, pArgData, m_uiArgSize);
		}


		YSTB_V5::YSTB_V5()
		{
			this->m_Header = { 0 };
		}

		YSTB_V5::YSTB_V5(const std::wstring& wsYSTB)
		{
			Init(wsYSTB);
		}

		void YSTB_V5::Init(const std::wstring& wsYSTB)
		{
			RxStream::AutoMem buf(wsYSTB);
			std::vector<YSTB_Arg_V5> arg_vec;

			uint8_t* hdr_ptr = buf;
			memcpy(&m_Header, hdr_ptr, sizeof(m_Header));

			uint8_t* inst_ptr = hdr_ptr + sizeof(m_Header);
			for (size_t ite_inst = 0; ite_inst < m_Header.uiInstEntryCount; ite_inst++)
			{
				YSTB_Inst_V5 inst(inst_ptr);
				inst_ptr += 4;
				m_vecInst.emplace_back(inst);
			}

			uint8_t* arg_indx_ptr = inst_ptr;
			uint8_t* arg_data_ptr = arg_indx_ptr + m_Header.uiArgsIndexSize;
			for (size_t ite_arg = 0; ite_arg < m_Header.uiArgsIndexSize / 0xC; ite_arg++)
			{
				uint32_t offset = *(uint32_t*)(arg_indx_ptr + 8);
				YSTB_Arg_V5 arg(arg_indx_ptr, arg_data_ptr + offset);
				arg_indx_ptr += 0xC;
				arg_vec.emplace_back(arg);
			}

			uint32_t count_read_arg = -1;
			for (auto& inst : m_vecInst)
			{
				for (size_t ite = 0; ite < inst.GetArgCount(); ite++)
				{
					count_read_arg += 1;
					inst.AddArg(arg_vec[count_read_arg]);
				}
			}
		}


		YSTB_V2::YSTB_V2()
		{

		}

		//bool YSTB_V2::TextInset_V2(std::wstring wsFileName, uint32_t uiCodePage)
		//{
		//	//Open Text File
		//	std::wifstream iTextStream;

		//	//Backup File
		//	CopyFileW(wsFileName.c_str(), (wsFileName + L".new").c_str(), FALSE);

		//	//Open YSTB File
		//	std::fstream ioYSTBStream(wsFileName + L".new", std::ios::in | std::ios::out | std::ios::binary);
		//	if (!ioYSTBStream.is_open())
		//	{
		//		throw std::runtime_error("Open YSTB File Failed!");
		//	}

		//	//Init Header
		//	YSTB_Header_V2 header = { 0 };
		//	ioYSTBStream.read(reinterpret_cast<char*>(&header), sizeof(header));
		//	if (*(uint32_t*)header.ucSignature != 0x42545359)
		//	{
		//		throw std::runtime_error("Mismatched File Header!");
		//	}

		//	//Init Buffer
		//	char* pCodeSeg = new char[header.uiCodeSegSize];
		//	ioYSTBStream.read(pCodeSeg, header.uiCodeSegSize);

		//	//Append Text
		//	std::string mText;
		//	unsigned int szText = 0;
		//	unsigned int offset = 0;
		//	for (std::wstring wLine; std::getline(iTextStream, wLine);)
		//	{
		//		if (wLine.find(L"CodePos:") != 0) continue;

		//		swscanf_s(wLine.c_str(), L"CodePos:%08x", &offset);

		//		for (; std::getline(iTextStream, wLine);)
		//		{
		//			if (wLine.find(L"Tra:") != 0) continue;

		//			//Processing Text
		//			wLine = wLine.substr(4);
		//			WStrToStr(wLine, mText, uiCodePage);
		//			szText = mText.size();

		//			//Modify Code (len,off) and File Header
		//			*(unsigned int*)(pCodeSeg + offset + 0xA) = szText;
		//			*(unsigned int*)(pCodeSeg + offset + 0xE) = header.uiArgsSegSize;
		//			header.uiArgsSegSize += szText;

		//			//Append Text
		//			ioYSTBStream.seekp(0, std::ios::end);
		//			ioYSTBStream.write(mText.c_str(), szText);

		//			break;
		//		}
		//	}

		//	//Write Back Header
		//	ioYSTBStream.seekp(0);
		//	ioYSTBStream.write(reinterpret_cast<char*>(&header), sizeof(header));

		//	//Write Back Code Segment
		//	ioYSTBStream.seekp(sizeof(YSTB_Header_V2));
		//	ioYSTBStream.write(pCodeSeg, header.uiCodeSegSize);

		//	//Clean
		//	ioYSTBStream.seekp(0);
		//	ioYSTBStream.flush();
		//	delete[] pCodeSeg;

		//	return true;
		//}

//		void YSTB_V2::ParameterAnalysis(std::wofstream& woText, std::string& mText, std::wstring& wText, YSTB_InstEntry_V2* pIns, char* pCodeSeg, char* pResSeg, size_t iteCodeSize, uint32_t uiCodePage)
//		{
//			size_t szBlock = pIns->ucArgs * 0xC + 6;
//			YSTB_ArgEntry_V2* pEntry = (YSTB_ArgEntry_V2*)(pCodeSeg + iteCodeSize + 0x6);
//
//			woText
//				<< L"Off:0x"
//				<< std::setw(0x8) << std::setfill(L'0') << std::hex
//				<< sizeof(YSTB_Header_V2) + iteCodeSize << L" ";
//
//			for (size_t iteArg = 0; iteArg < (szBlock - 6) / 12; iteArg++)
//			{
//				if (*(pResSeg + pEntry->uiArgRVA) == 0x4D && *(pResSeg + pEntry->uiArgRVA + 3) != 0x27)
//				{
//					mText.resize(pEntry->uiArgSize - 5);
//					memcpy(const_cast<char*>(mText.data()), pResSeg + pEntry->uiArgRVA + 4, pEntry->uiArgSize - 5);
//					StrToWStr(mText, wText, uiCodePage);
//					woText << wText << L", ";
//				}
//				else
//				{
//					long long buffer = 0;
//					if ((pEntry->uiArgSize - 3) > 4)
//					{
//						memcpy(&buffer, pResSeg + pEntry->uiArgRVA + 3, pEntry->uiArgSize - 3);
//						woText << buffer << L",";
//					}
//					else
//					{
//						memcpy(&buffer, pResSeg + pEntry->uiArgRVA + 3, pEntry->uiArgSize - 3);
//						woText << buffer << L", ";
//					}
//
//				}
//
//				pEntry += 1; //Move To Next Entry
//			}
//
//			woText << std::endl;
//		}
//
//		bool YSTB_V2::TextDump_V2(std::wstring wsFileName, uint32_t uiCodePage, bool isAudioFileName)
//		{
//			//Create Text File
//			std::wofstream woText;
//
//			//Open YSTB File
//			std::ifstream ioYSTBStream;
//
//			//Init Header
//			YSTB_Header_V2 header = { 0 };
//			ioYSTBStream.read(reinterpret_cast<char*>(&header), sizeof(header));
//			if (*(uint32_t*)header.ucSignature != 0x42545359)
//			{
//				throw std::runtime_error("Mismatched File Header!");
//			}
//
//			//Init Seg Buffer
//			char* pCodeSeg = new char[header.uiCodeSegSize];
//			ioYSTBStream.read(pCodeSeg, header.uiCodeSegSize);
//			char* pResSeg = new char[header.uiArgsSegSize];
//			ioYSTBStream.read(pResSeg, header.uiArgsSegSize);
//
//			//Analyzing VM
//			std::string mText;
//			std::wstring wText;
//			unsigned int count = 0;
//			for (size_t iteCodeSize = 0; iteCodeSize < header.uiCodeSegSize;)
//			{
//				YSTB_InstEntry_V2* pIns = (YSTB_InstEntry_V2*)(pCodeSeg + iteCodeSize);
//
//				switch (pIns->ucOP)
//				{
//				case 0x38:
//				{
//					iteCodeSize += 0xA;
//					continue;
//				}
//				break;
//
//				//Parameter analysis
//				case 0x19:
//				{
//					if (!isAudioFileName) break;
//
//					size_t szBlock = pIns->ucArgs * 0xC + 6;
//					YSTB_ArgEntry_V2* pEntry = (YSTB_ArgEntry_V2*)(pCodeSeg + iteCodeSize + 0x6);
//
//					if (*(pResSeg + pEntry->uiArgRVA) == 0x4D && *(pResSeg + pEntry->uiArgRVA + 3) != 0x27)
//					{
//						mText.resize(pEntry->uiArgSize - 5);
//						memcpy(const_cast<char*>(mText.data()), pResSeg + pEntry->uiArgRVA + 4, pEntry->uiArgSize - 5);
//
//						if (mText.find("es.VoiceSetTask") != 0)
//						{
//							break;
//						}
//
//						pEntry += 1;
//
//						mText.resize(pEntry->uiArgSize - 5);
//						memcpy(const_cast<char*>(mText.data()), pResSeg + pEntry->uiArgRVA + 4, pEntry->uiArgSize - 5);
//						StrToWStr(mText, wText, uiCodePage);
//					}
//
//					//ParameterAnalysis(woText, mText, wText, pIns, pCodeSeg, pResSeg, iteCodeSize, uiCodePage);
//				}
//				break;
//
//				//Game Text
//				case 0x54:
//				{
//					if (isAudioFileName)
//					{
//						woText << L"Audio:" << wText << L'\n';
//					}
//
//					count++;
//
//					YSTB_ArgEntry_V2* pEntry = (YSTB_ArgEntry_V2*)(pCodeSeg + iteCodeSize + 0x6);
//					mText.resize(pEntry->uiArgSize);
//					memcpy(const_cast<char*>(mText.data()), pResSeg + pEntry->uiArgRVA, pEntry->uiArgSize);
//#ifdef _DEBUG
//					woText
//						<< L"StrOffset:"
//						<< std::setw(0x8) << std::setfill(L'0') << std::hex
//						<< (int*)(header.uiCodeSegSize + pEntry->uiArgRVA + sizeof(header)) << L'\n';
//
//					woText
//						<< L"CodeOffset:"
//						<< std::setw(0x8) << std::setfill(L'0') << std::hex
//						<< iteCodeSize + sizeof(header) << L'\n';
//#endif
//					woText
//						<< L"CodePos:"
//						<< std::setw(0x8) << std::setfill(L'0') << std::hex
//						<< iteCodeSize << L'\n';
//
//					woText
//						<< L"Count  :" << std::setw(0x8) << std::setfill(L'0') << std::dec
//						<< count << L'\n';
//
//					StrToWStr(mText, wText, uiCodePage);
//
//					woText
//						<< L"Raw:" << wText << L"\n"
//						<< L"Tra:" << wText << L"\n\n";
//
//					wText.clear();
//				}
//				break;
//
//				}
//
//				//Size Of Code Block
//				iteCodeSize += pIns->ucArgs * 0xC + 6;
//			}
//
//			//Clean
//			woText.flush();
//			woText.close();
//			delete[] pCodeSeg;
//			delete[] pResSeg;
//
//			if (count == 0)
//			{
//				DeleteFileW((wsFileName + L".txt").c_str());
//				std::wcout << L"Text not found" << std::endl;
//				return false;
//			}
//
//			return true;
//		}
	}
}