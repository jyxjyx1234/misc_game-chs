// scddecompress.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <iostream>  
#include <fstream>  
#include <filesystem>  
#include <vector>  
#define _BYTE  uint8_t
#define _WORD  uint16_t
#define _DWORD uint32_t
#define _QWORD uint64_t
#define BYTE1(x) (*(((uint8_t*)&(x)) + 1))

int  __cdecl sub_40F7F0(int a1, _BYTE* a2)
{
    _BYTE* v2; // edi
    char v3; // bl
    unsigned __int16 v4; // ax
    int* v5; // ebp
    char v6; // cf
    char v7; // cf
    unsigned __int16 v8; // ax
    char v9; // bl
    int v10; // esi
    unsigned int v11; // esi
    char v12; // cf
    char v13; // cf
    unsigned int v14; // esi
    char v15; // cf
    unsigned __int16 v16; // ax
    char v17; // bl
    char v18; // cf
    unsigned __int16 v19; // ax
    char v20; // bl
    char v21; // cf
    int v22; // esi
    unsigned int v23; // esi
    int v24; // ecx
    char v25; // cf
    unsigned __int16 v26; // ax
    char v27; // bl
    char v28; // cf
    unsigned __int16 v29; // ax
    char v30; // bl
    char v31; // cf
    char v32; // cf
    unsigned __int16 v33; // ax
    char v34; // bl
    char v35; // cf
    char v36; // cf
    unsigned __int16 v37; // ax
    char v38; // bl
    char v39; // cf
    char v40; // cf
    int v41; // esi
    char v42; // cf
    unsigned int v43; // ecx
    char v44; // cf
    char v45; // cf
    char v46; // cf
    char v47; // cf
    unsigned __int16 v48; // ax
    char v49; // bl
    char v50; // cf
    char v51; // cf
    unsigned __int8 v52; // cl
    char v53; // cf
    unsigned __int16 v54; // ax
    char v55; // bl
    char v56; // cf
    unsigned __int16 v57; // ax
    char v58; // bl
    char v59; // cf
    _BYTE* v60; // esi
    unsigned int v61; // ecx
    unsigned int v62; // ecx

    v2 = a2;
    v3 = 16;
    v4 = *(_WORD*)(a1 + 20);
    v5 = (int*)(a1 + 22);
    do
    {
        while (1)
        {
            while (1)
            {
                while (1)
                {
                    while (1)
                    {
                        v6 = v4 & 1;
                        v4 >>= 1;
                        if (!--v3)
                        {
                            v4 = *(_WORD*)v5;
                            v3 = 16;
                            v5 = (int*)((char*)v5 + 2);
                        }
                        if (!v6)
                            break;
                        *v2 = *(_BYTE*)v5;
                        v5 = (int*)((char*)v5 + 1);
                        ++v2;
                    }
                    v7 = v4 & 1;
                    v8 = v4 >> 1;
                    v9 = v3 - 1;
                    if (!v9)
                    {
                        v8 = *(_WORD*)v5;
                        v9 = 16;
                        v5 = (int*)((char*)v5 + 2);
                    }
                    if (!v7)
                        break;
                    v22 = *v5;
                    v5 = (int*)((char*)v5 + 1);
                    v23 = v22 | 0xFFFFFF00;
                    v24 = 0;
                    v25 = v8 & 1;
                    v26 = v8 >> 1;
                    v27 = v9 - 1;
                    if (!v27)
                    {
                        v26 = *(_WORD*)v5;
                        v27 = 16;
                        v5 = (int*)((char*)v5 + 2);
                    }
                    if (!v25)
                        BYTE1(v24) = 1;
                    v28 = v26 & 1;
                    v29 = v26 >> 1;
                    v30 = v27 - 1;
                    if (!v30)
                    {
                        v29 = *(_WORD*)v5;
                        v30 = 16;
                        v5 = (int*)((char*)v5 + 2);
                    }
                    if (!v28)
                    {
                        v23 -= 512;
                        v31 = v29 & 1;
                        v29 >>= 1;
                        if (!--v30)
                        {
                            v29 = *(_WORD*)v5;
                            v30 = 16;
                            v5 = (int*)((char*)v5 + 2);
                        }
                        if (!v31)
                        {
                            BYTE1(v24) *= 2;
                            v32 = v29 & 1;
                            v33 = v29 >> 1;
                            v34 = v30 - 1;
                            if (!v34)
                            {
                                v33 = *(_WORD*)v5;
                                v34 = 16;
                                v5 = (int*)((char*)v5 + 2);
                            }
                            if (!v32)
                                ++BYTE1(v24);
                            v23 -= 512;
                            v35 = v33 & 1;
                            v29 = v33 >> 1;
                            v30 = v34 - 1;
                            if (!v30)
                            {
                                v29 = *(_WORD*)v5;
                                v30 = 16;
                                v5 = (int*)((char*)v5 + 2);
                            }
                            if (!v35)
                            {
                                BYTE1(v24) *= 2;
                                v36 = v29 & 1;
                                v37 = v29 >> 1;
                                v38 = v30 - 1;
                                if (!v38)
                                {
                                    v37 = *(_WORD*)v5;
                                    v38 = 16;
                                    v5 = (int*)((char*)v5 + 2);
                                }
                                if (!v36)
                                    ++BYTE1(v24);
                                v23 -= 1024;
                                v39 = v37 & 1;
                                v29 = v37 >> 1;
                                v30 = v38 - 1;
                                if (!v30)
                                {
                                    v29 = *(_WORD*)v5;
                                    v30 = 16;
                                    v5 = (int*)((char*)v5 + 2);
                                }
                                if (!v39)
                                {
                                    v23 -= 2048;
                                    BYTE1(v24) *= 2;
                                    v40 = v29 & 1;
                                    v29 >>= 1;
                                    if (!--v30)
                                    {
                                        v29 = *(_WORD*)v5;
                                        v30 = 16;
                                        v5 = (int*)((char*)v5 + 2);
                                    }
                                    if (!v40)
                                        ++BYTE1(v24);
                                }
                            }
                        }
                    }
                    v41 = v23 - v24;
                    v42 = v29 & 1;
                    v4 = v29 >> 1;
                    v3 = v30 - 1;
                    if (!v3)
                    {
                        v4 = *(_WORD*)v5;
                        v3 = 16;
                        v5 = (int*)((char*)v5 + 2);
                    }
                    if (v42)
                    {
                        v43 = 3;
                    }
                    else
                    {
                        v44 = v4 & 1;
                        v4 >>= 1;
                        if (!--v3)
                        {
                            v4 = *(_WORD*)v5;
                            v3 = 16;
                            v5 = (int*)((char*)v5 + 2);
                        }
                        if (v44)
                        {
                            v43 = 4;
                        }
                        else
                        {
                            v45 = v4 & 1;
                            v4 >>= 1;
                            if (!--v3)
                            {
                                v4 = *(_WORD*)v5;
                                v3 = 16;
                                v5 = (int*)((char*)v5 + 2);
                            }
                            if (v45)
                            {
                                v43 = 5;
                            }
                            else
                            {
                                v46 = v4 & 1;
                                v4 >>= 1;
                                if (!--v3)
                                {
                                    v4 = *(_WORD*)v5;
                                    v3 = 16;
                                    v5 = (int*)((char*)v5 + 2);
                                }
                                if (v46)
                                {
                                    v43 = 6;
                                }
                                else
                                {
                                    v47 = v4 & 1;
                                    v48 = v4 >> 1;
                                    v49 = v3 - 1;
                                    if (!v49)
                                    {
                                        v48 = *(_WORD*)v5;
                                        v49 = 16;
                                        v5 = (int*)((char*)v5 + 2);
                                    }
                                    if (v47)
                                    {
                                        v50 = v48 & 1;
                                        v4 = v48 >> 1;
                                        v3 = v49 - 1;
                                        if (!v3)
                                        {
                                            v4 = *(_WORD*)v5;
                                            v3 = 16;
                                            v5 = (int*)((char*)v5 + 2);
                                        }
                                        if (v50)
                                            v43 = 8;
                                        else
                                            v43 = 7;
                                    }
                                    else
                                    {
                                        v51 = v48 & 1;
                                        v4 = v48 >> 1;
                                        v3 = v49 - 1;
                                        if (!v3)
                                        {
                                            v4 = *(_WORD*)v5;
                                            v3 = 16;
                                            v5 = (int*)((char*)v5 + 2);
                                        }
                                        if (v51)
                                        {
                                            v52 = *(_BYTE*)v5;
                                            v5 = (int*)((char*)v5 + 1);
                                            v43 = v52 + 17;
                                        }
                                        else
                                        {
                                            v43 = 9;
                                            v53 = v4 & 1;
                                            v54 = v4 >> 1;
                                            v55 = v3 - 1;
                                            if (!v55)
                                            {
                                                v54 = *(_WORD*)v5;
                                                v55 = 16;
                                                v5 = (int*)((char*)v5 + 2);
                                            }
                                            if (v53)
                                                v43 = 13;
                                            v56 = v54 & 1;
                                            v57 = v54 >> 1;
                                            v58 = v55 - 1;
                                            if (!v58)
                                            {
                                                v57 = *(_WORD*)v5;
                                                v58 = 16;
                                                v5 = (int*)((char*)v5 + 2);
                                            }
                                            if (v56)
                                                v43 += 2;
                                            v59 = v57 & 1;
                                            v4 = v57 >> 1;
                                            v3 = v58 - 1;
                                            if (!v3)
                                            {
                                                v4 = *(_WORD*)v5;
                                                v3 = 16;
                                                v5 = (int*)((char*)v5 + 2);
                                            }
                                            if (v59)
                                                ++v43;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    v60 = &v2[v41];
                    v6 = v43 & 1;
                    v61 = v43 >> 1;
                    if (v6)
                        *v2++ = *v60++;
                    v6 = v61 & 1;
                    v62 = v61 >> 1;
                    if (v6)
                    {
                        *(_WORD*)v2 = *(_WORD*)v60;
                        v60 += 2;
                        v2 += 2;
                    }
                    memcpy(v2, v60, 4 * v62);
                    v2 += 4 * v62;
                }
                v10 = *v5;
                v5 = (int*)((char*)v5 + 1);
                v11 = v10 | 0xFFFFFF00;
                v12 = v8 & 1;
                v4 = v8 >> 1;
                v3 = v9 - 1;
                if (!v3)
                {
                    v4 = *(_WORD*)v5;
                    v3 = 16;
                    v5 = (int*)((char*)v5 + 2);
                }
                if (!v12)
                    break;
                v14 = v11 - 256;
                v15 = v4 & 1;
                v16 = v4 >> 1;
                v17 = v3 - 1;
                if (!v17)
                {
                    v16 = *(_WORD*)v5;
                    v17 = 16;
                    v5 = (int*)((char*)v5 + 2);
                }
                if (!v15)
                    v14 -= 1024;
                v18 = v16 & 1;
                v19 = v16 >> 1;
                v20 = v17 - 1;
                if (!v20)
                {
                    v19 = *(_WORD*)v5;
                    v20 = 16;
                    v5 = (int*)((char*)v5 + 2);
                }
                if (!v18)
                    v14 -= 512;
                v21 = v19 & 1;
                v4 = v19 >> 1;
                v3 = v20 - 1;
                if (!v3)
                {
                    v4 = *(_WORD*)v5;
                    v3 = 16;
                    v5 = (int*)((char*)v5 + 2);
                }
                if (!v21)
                    v14 -= 256;
                *(_WORD*)v2 = *(_WORD*)&v2[v14];
                v2 += 2;
            }
            if (v11 == -1)
                break;
            *(_WORD*)v2 = *(_WORD*)&v2[v11];
            v2 += 2;
        }
        v13 = v4 & 1;
        v4 >>= 1;
        if (!--v3)
        {
            v4 = *(_WORD*)v5;
            v3 = 16;
            v5 = (int*)((char*)v5 + 2);
        }
    } while (v13);
    return (int)(v2 - a2);
}


namespace fs = std::filesystem;

void decompressScdFiles(const std::string& inputDir, const std::string& outputDir) {  
   // Ensure output directory exists  
   if (!fs::exists(outputDir)) {  
       fs::create_directory(outputDir);  
   }  

   // Iterate through all .scd files in the input directory  
   for (const auto& entry : fs::directory_iterator(inputDir)) {  
        std::string extension = entry.path().extension().string();  
        std::transform(extension.begin(), extension.end(), extension.begin(), ::tolower);  
        if (extension == ".scd") {
           std::string inputFilePath = entry.path().string();  
           std::string outputFilePath = outputDir + "/" + entry.path().stem().string() + ".scd";  
		   std::cout << "Processing file: " << inputFilePath << std::endl;
           // Read the .scd file in binary mode  
           std::ifstream inputFile(inputFilePath, std::ios::binary);  
           if (!inputFile) {  
               std::cerr << "Failed to open file: " << inputFilePath << std::endl;  
               continue;  
           }  

           std::vector<_BYTE> inputBuffer((std::istreambuf_iterator<char>(inputFile)), std::istreambuf_iterator<char>());  
           inputFile.close();  

           // Allocate output buffer  
           std::vector<_BYTE> outputBuffer(inputBuffer.size() * 5); // Assume max decompressed size is twice the original  

           // Decompress using sub_40F7F0  
           int decompressedSize = sub_40F7F0(reinterpret_cast<int>(inputBuffer.data()), outputBuffer.data());  
           
           // Write decompressed data to output file  
           std::ofstream outputFile(outputFilePath, std::ios::binary);  
           if (!outputFile) {  
               std::cerr << "Failed to create file: " << outputFilePath << std::endl;  
               continue;  
           }  

           outputFile.write(reinterpret_cast<char*>(outputBuffer.data()), decompressedSize);  
           outputFile.close();  

           std::cout << "Decompressed: " << inputFilePath << " -> " << outputFilePath << std::endl;  
       }  
   }  
}

int main() {
	std::cout << "使用方法：将解包的scd文件放在与exe同目录的scd文件夹中，运行exe即可。scd_dec中生成解压后的文件。" << std::endl;
	std::cout << "by jyxjyx1234@ai2.moe" << std::endl;
	std::cout << "按任意键继续..." << std::endl;
	std::cin.get(); // 等待用户输入以便查看提示信息
    std::string inputDir = "scd";
    std::string outputDir = "scd_dec";

    decompressScdFiles(inputDir, outputDir);

    return 0;
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门使用技巧: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
