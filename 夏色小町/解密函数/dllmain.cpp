// dllmain.cpp : 定义 DLL 应用程序的入口点。
#include <Windows.h>
#define DLLEXPORT extern "C" __declspec(dllexport) 

BOOL APIENTRY DllMain( HMODULE hModule,
                       DWORD  ul_reason_for_call,
                       LPVOID lpReserved
                     )
{
    switch (ul_reason_for_call)
    {
    case DLL_PROCESS_ATTACH:
    case DLL_THREAD_ATTACH:
    case DLL_THREAD_DETACH:
    case DLL_PROCESS_DETACH:
        break;
    }
    return TRUE;
}

#define _DWORD DWORD
#define _WORD WORD
#define _BYTE BYTE
#define LOWORD(x) (*(WORD*)&(x))
#define uint16_t WORD
#define uint32_t DWORD

int __cdecl sub_411320(unsigned int* a1, DWORD a2, DWORD a3)
{
    unsigned int* v3; // ebp
    int i; // ebx
    int v6; // edx
    unsigned int v7; // ecx
    int v8; // edi
    int result; // eax
    int v10; // ebx
    int v11; // esi
    unsigned int v12; // eax
    int v13; // edi
    unsigned int v14; // ecx
    int v15; // edx
    unsigned __int16 v16; // [esp+10h] [ebp-D4h]
    int v17; // [esp+14h] [ebp-D0h]
    int v18; // [esp+18h] [ebp-CCh]
    int* v19; // [esp+1Ch] [ebp-C8h]
    int v20; // [esp+20h] [ebp-C4h]
    _WORD v21[96]; // [esp+24h] [ebp-C0h]
    int v22; // [esp+ECh] [ebp+8h]

    v3 = a1;
    v22 = a2 / 4;
    v19 = (int*)a1;
    for (i = 0; i < 32; ++i)
    {
        v6 = 0;
        v7 = a3;
        v8 = 16;
        do
        {
            LOWORD(v6) = (unsigned __int16)v6 >> 1;
            v6 |= (v7 ^ (v7 >> 1)) << 15;
            v7 >>= 2;
            --v8;
        } while (v8);
        v21[i] = v6;
        *(_DWORD*)&v21[2 * i + 32] = a3;
        a3 = (2 * a3) | (a3 >> 31);
    }
    result = v22;
    v10 = 0;
    v17 = 0;
    if (v22)
    {
        v18 = v22;
        do
        {
            v11 = 0;
            v16 = v21[v10];
            v12 = *v3;
            v13 = 3;
            v14 = 2;
            v15 = 1;
            v20 = 16;
            do
            {
                if ((v16 & 1) != 0)
                {
                    v11 |= (2 * (v12 & v15)) | (v12 >> 1) & (v14 >> 1);
                    v10 = v17;
                }
                else
                {
                    v11 |= v12 & v13;
                }
                v16 >>= 1;
                v13 *= 4;
                v14 *= 4;
                v15 *= 4;
                --v20;
            } while (v20);
            *v19 = v11 ^ *(_DWORD*)&v21[2 * v10 + 32];
            v3 = (unsigned int*)++v19;
            v10 = ((_BYTE)v10 + 1) & 0x1F;
            result = v18 - 1;
            v17 = v10;
            v18 = result;
        } while (result);
    }
    return result;
}

DLLEXPORT void fuc_411320_rev(uint32_t* data, int length, DWORD key_seed) {
    uint16_t mask_table[32];
    uint32_t key_stream[32];

    // Step 1: 生成 mask 和 key_stream
    for (int i = 0; i < 32; ++i) {
        uint16_t mask = 0;
        uint32_t temp = key_seed;
        for (int j = 0; j < 16; ++j) {
            mask >>= 1;
            mask |= ((temp ^ (temp >> 1)) & 1) << 15;
            temp >>= 2;
        }
        mask_table[i] = mask;
        key_stream[i] = key_seed;
        key_seed = (2 * key_seed) | (key_seed >> 31);
    }

    // Step 2: 对每个 4 字节块进行加密
    int index = 0;
    for (int i = 0; i < length / 4; ++i) {
        uint32_t plain = data[i] ^ key_stream[index];
        uint16_t mask = mask_table[index];

        uint32_t obfuscated = 0;
        uint32_t m1 = 3, m2 = 2, m3 = 1;
        for (int j = 15; j >= 0; --j) {
            if (mask & 1) {
                obfuscated |= ((plain & m3) * 2) | ((plain >> 1) & (m2 >> 1));
            }
            else {
                obfuscated |= plain & m1;
            }
            mask >>= 1;
            m1 <<= 2;
            m2 <<= 2;
            m3 <<= 2;
        }

        data[i] = obfuscated;

        index = (index + 1) & 0x1F; // index mod 32
    }
}



DLLEXPORT void fuc_411320(unsigned char* content, DWORD len, DWORD key) {
	sub_411320((unsigned int*)content, len, key);
}


