#pragma once
#include <string>
#include <vector>

#include "YSTB_Struct.h"
#include "../Rut/RxStream.h"



namespace YurisLibrary
{
	namespace YSTB
	{
		class YSTB_Coder
		{
		private:
			uint32_t m_uiXorKey;

		public:
			YSTB_Coder() : m_uiXorKey(0) {};
			YSTB_Coder(uint32_t uiXorKey) : m_uiXorKey(uiXorKey) {};

			bool Xor(uint8_t* pYSTB);
			bool Xor(const std::wstring& wsEnc, const std::wstring& wsDec);
			uint32_t GetXorKey(const std::wstring& wsYSTB);
		};

		class YSTB_Arg_V5
		{
		private:
			uint16_t m_usArgID;
			uint16_t m_usArgType;
			uint32_t m_uiArgSize;
			Rut::RxStream::AutoMem m_amArgData;

		public:
			YSTB_Arg_V5();
			YSTB_Arg_V5(uint8_t* pArg, uint8_t* pArgData);

			void Init(uint8_t* pArg, uint8_t* pArgData);
			uint32_t GetDataSize() { return m_uiArgSize; }
			uint8_t* GetDataPtr() { return m_amArgData.GetPtr(); }
			uint16_t GetArgID() { return m_usArgID; }
			uint16_t GetType() { return m_usArgType; }
		};

		class YSTB_Inst_V5
		{
		private:
			uint8_t m_ucOpcode;
			uint8_t m_ucArgCount;
			uint8_t m_ucUnknow0;
			uint8_t m_ucUnknow1;
			std::vector<YSTB_Arg_V5> m_vecArg;

		public:
			YSTB_Inst_V5();
			YSTB_Inst_V5(uint8_t* pInst);

			void Init(uint8_t* pInst);

			uint8_t	GetOpcode() const { return m_ucOpcode; }
			uint8_t GetArgCount() const { return m_ucArgCount; }
			uint8_t	GetUnknow0() const { return m_ucUnknow0; }
			uint8_t	GetUnknow1() const { return m_ucUnknow1; }
			void AddArg(YSTB_Arg_V5& yArg);
			std::vector<YSTB_Arg_V5>& GetArgList() { return m_vecArg; }
		};


		class YSTB_V5
		{
		private:
			YSTB_Header_V5 m_Header;
			std::vector<YSTB_Inst_V5> m_vecInst;

		public:
			YSTB_V5();
			YSTB_V5(const std::wstring& wsYSTB);

			void Init(const std::wstring& wsYSTB);
			std::vector<YSTB_Inst_V5>& GetInstList() { return m_vecInst; }
		};

		class YSTB_V2
		{
		public:
			YSTB_V2();
			static bool TextInset_V2(std::wstring wsFileName, uint32_t uiCodePage);
			static bool TextDump_V2(std::wstring wsFileName, uint32_t uiCodePage, bool isAudioFileName);
			static void ParameterAnalysis(std::wofstream& woText, std::string& mText, std::wstring& wText, YSTB_InstEntry_V2* pIns, char* pCodeSeg, char* pResSeg, size_t iteCodeSize, uint32_t uiCodePage);
		};
	}
}