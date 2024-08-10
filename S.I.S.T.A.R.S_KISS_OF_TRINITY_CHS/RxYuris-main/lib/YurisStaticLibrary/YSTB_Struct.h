#pragma once
#include <cstdint>


namespace YurisLibrary
{
    namespace YSTB
    {
        /*
        * YSTB_File_V5
        * {
        *   YSTB_Header_V5
        *   YSTB_InstEntry_V5[uiInstEntryCount]
        *   YSTB_ArgsEntry_V5[uiArgsIndexSize / 0xC]
        *   YSTB_ArgsData_V5[??]
        *   YSTB_LineNumbers_V5[uiLineNumbersSize / 4]
        * }
        */
        struct YSTB_Header_V5
        {
            uint8_t  ucSignature[4];    // "YSTB"
            uint32_t uiVersion;         // 300 - 
            uint32_t uiInstEntryCount;  // 4bytes per inst
            uint32_t uiInstIndexSize;   // uiInstCount * 4
            uint32_t uiArgsIndexSize;   // args entries
            uint32_t uiArgsDataSize;    // args data
            uint32_t uiLineNumbersSize;
            uint32_t uiReserve0;        
        };

        //struct YSTB_InstEntry_V5
        //{
        //    uint8_t ucOp;      // opcode
        //    uint8_t ucArgc;    // arg count
        //    uint8_t usUnknow0;
        //    uint8_t ucUnknow1;
        //};

        //struct YSTB_ArgsEntry_V5
        //{
        //    uint16_t usArgID;
        //    uint16_t usType; //(1 = long, 2 = double, 3 = string)
        //    uint32_t uiSize;
        //    uint32_t uiOffset;
        //};
        //4D XX XX 22 ... 22      pushstring(quoted string with support for \\, \nand \t escape codes, but not \" or \')


        /*
        * YSTB_File_V2
        * {
        *   YSTB_Header_V2:
        *    CodeSegment
        *       InstEntry_V2[?]
        *          ArgEntry_V2[?]
        *    ArgsSegment
        *       ArgData_V2[?]
        * }
        */
        struct YSTB_Header_V2
        {
            uint8_t  ucSignature[4]; // "YSTB"
            uint32_t uiVersion;      // 224 - 300
            uint32_t uiCodeSegSize;
            uint32_t uiArgsSegSize;
            uint32_t uiArgsSegOffset;
            uint32_t uiReserved0;
            uint32_t uiReserved1;
            uint32_t uiReserved2;
        };

        #pragma pack(1)
        struct YSTB_InstEntry_V2
        {
            uint8_t  ucOP;
            uint8_t  ucArgs;
            uint32_t ucLine;
        };
        #pragma pack()

        struct YSTB_ArgEntry_V2
        {
            uint16_t usUn0;
            uint16_t usUn1;
            uint32_t uiArgSize;
            uint32_t uiArgRVA;
        };

        struct YSTB_ArgData_V2
        {
            uint8_t  ucType;
            uint32_t usSize;
            //pData[usSize];
        };

        /*
          Res
          unsigned char ucType
          unsigned short usResLen
          unsigned char* pData[usResLen]
          
          ucType
          0x4D -> push string
          0x42 -> push int8
          0x52 -> changesign
          0x57 -> push int16
        */

        //0x8  08 00 ???????? 位于代码段结束位置

        /*
        * 0x19 读取一些es.开头的字符串 es.VoiceSetTask es.BGM
          1904     -> OP
          1C000000 -> OrgCodeTextLineNumber?
          0000
          0300
          0B000000 ->len: es.BGM
          60010000 ->rva:
          1100
          0300
          0A000000 ->len: BGM07
          6B010000 ->rva:
          0200
          0100
          04000000 ->len: int8 0x00
          75010000 ->rva:
          0300
          0100
          07000000 ->len: int8 0x01
          79010000 ->rva:
        */

        //0x18,0x1A,0x1E,0x23,0x38,0x4D,0x4F,0x50
        
        //0x54 读取对话字符串
        /*
          54        op
          01        len = 0x01*0C + 6 / (if op == 0x38，len = 0xA)
          BA000000  un0
          00000000  un1
          26000000  lenStr
          05140000  offStr
        */

    }
}
