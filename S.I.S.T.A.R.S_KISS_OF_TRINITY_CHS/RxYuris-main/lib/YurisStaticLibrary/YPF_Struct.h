#pragma once


namespace YurisLibrary
{
	namespace YPF
	{
		/*
		* YPF_File
		* - YPFHeader_V2
		* - YPFEntry[YPFHeader_V2->uiIndexEntryCount]
		* - Data
		*/

		//frome crass/cui/YU-RIS/YU-RIS.cpp
		struct YPF_HDR_V2
		{
			char aSignature[4];                    // "YPF"
			unsigned int uiVersion;                // version > 200
			unsigned int uiIndexEntryCount;
			unsigned int uiIndexBlockSize;
			unsigned int uiReserved0;
			unsigned int uiReserved1;
			unsigned int uiReserved2;
			unsigned int uiReserved3;
		};

		#pragma pack(1)
		struct YPF_Entry_V5
		{
			unsigned int uiRelativePathCrc;
			unsigned char szRelativePath;          // NameSizeTable[0xFF-szName]
			char aRelativePath[256];
			unsigned char ucFileType;
			unsigned char isCompFlag;
			unsigned int uiDecompSize;
			unsigned int uiCompSize;
			unsigned long long ullDataOffset;
			unsigned int uiDataCrc;                // MurmurHash
		};
		#pragma pack()
	}
}

