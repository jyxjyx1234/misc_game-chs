#include <Windows.h>
#include <iostream>
#include <string>
#include <cstring> // 添加此行以包含memset函数
#include <cstddef> // 添加此行以包含size_t类型
#include <filesystem>
#include <vector>

typedef unsigned char _BYTE; // 添加此行定义_BYTE类型
typedef unsigned short _WORD; // 添加此行定义_WORD类型

struct bsc_file {
    DWORD magic;
    int ori_size;
    int unk1;
    int unk2;
    int unk3;
    int unk4;
};

#include <fstream> 

int sub_47A440(_BYTE* this_, char* a2, DWORD* a3, size_t Size, DWORD* a5)
{
    _BYTE* v6; // ebx
    _BYTE* v9; // ebp
    int v10; // esi
    bool v11; // zf
    int v12; // eax
    char v13; // al
    unsigned __int8 v14; // al
    __int16 v15; // di
    int v16; // ecx
    char v17; // al
    int v18; // [esp+8h] [ebp-8h]
    int v20; // [esp+18h] [ebp+8h]
    unsigned int v21; // [esp+24h] [ebp+14h]

    v6 = this_;
    if (!Size)
        return 1;
    v18 = 0;
    v21 = 0;
    v9 = (_BYTE*)*a3;
    memset(v6 + 8, 0, 0x1010u);
    v10 = 4078;
    v6[4120] = 0;
    while (1)
    {
        while (1)
        {
        LABEL_6:
            v11 = (v21 & 0x200) == 0;
            v21 >>= 1;
            if (v11)
            {
                v12 = (unsigned __int8)*a2++;
                ++v18;
                v21 = v12 | 0xFF00;
            }
            if ((v21 & 1) != 0)
                break;
            v14 = a2[1];
            v18 += 2;
            v15 = (16 * (v14 & 0xF0)) | (unsigned __int8)*a2;
            a2 += 2;
            v20 = (~v14 & 0xF) + 2;
            v16 = 0;
            if (v20 >= 0)
            {
                while (1)
                {
                    v17 = v6[(((_WORD)v16 + v15) & 0xFFF) + 8];
                    *v9++ = v17;
                    if (!--Size)
                        break;
                    this_[v10 + 8] = v17;
                    v6 = this_;
                    v10 = ((_WORD)v10 + 1) & 0xFFF;
                    if (++v16 > v20)
                        goto LABEL_6;
                }
                if (a5)
                    *a5 = v18;
                return 0;
            }
        }
        v13 = *a2++;
        ++v18;
        *v9++ = v13;
        if (!--Size)
            break;
        v6[v10 + 8] = v13;
        v10 = ((_WORD)v10 + 1) & 0xFFF;
    }  
    if (a5)
    {
        *a5 = v18;
        return 0;
    }
    return 0;
}


int decompress(DWORD o_size, char* input_buffer, std::string out_path, const bsc_file& header)
{
    void* temp_buffer = new char[0x2000000];
    char** output = new char*;
    *output = new char[o_size];

    int result = sub_47A440((_BYTE *)temp_buffer, input_buffer, (DWORD *)output, o_size, NULL);

	char* text_content = *output + (header.unk1 + header.unk3) * 8 + 0x10;
    char** text_output = new char*;
	*text_output = new char[header.unk4];
    DWORD* a5 = 0;
    temp_buffer = new char[0x2000000];
    result = sub_47A440((_BYTE*)temp_buffer, text_content, (DWORD*)text_output, header.unk4, a5);
    std::ofstream outputFile(out_path, std::ios::binary);
	for (int i = 0; i < header.unk4; i++) {
		*(*text_output + i) = ~*(*text_output + i);
	}
    if (outputFile)
    {
        outputFile.write(reinterpret_cast<const char*>(&header), sizeof(header));
        outputFile.write(*output, (header.unk1 + header.unk3) * 8 + 0x10);
		outputFile.write(*text_output, header.unk4);
		//outputFile.write(*output, o_size);
        outputFile.close();
    }
    else
    {
        std::cerr << "无法打开输出文件" << std::endl;
        return 1;
    }

    delete[] temp_buffer;
    delete[] *output;
    delete output;

    return 0;
}

std::vector<std::filesystem::path> get_bcs_files(const std::filesystem::path& directory) {
    std::vector<std::filesystem::path> bcs_files;
    for (const auto& entry : std::filesystem::directory_iterator(directory)) {
        if (entry.is_regular_file() && (entry.path().extension() == ".bcs" || entry.path().extension() == ".BCS")) {
            bcs_files.push_back(entry.path());
        }
    }
    return bcs_files;
}


int main() {
    std::filesystem::path current_directory = std::filesystem::current_path();
	std::filesystem::create_directories("scr_dec");
    std::vector<std::filesystem::path> bcs_files = get_bcs_files(current_directory / std::filesystem::path("scr"));
    std::cout << "Found .bcs files:" << std::endl;
    for (const auto& file : bcs_files) {
        std::ifstream inputFile(file, std::ios::binary | std::ios::ate);
        if (inputFile) {
            std::streamsize size = inputFile.tellg();
            inputFile.seekg(0, std::ios::beg);
            char* input_buffer = new char[size];
            if (inputFile.read(input_buffer, size)) {
                bsc_file header;
                std::memcpy(&header, input_buffer, sizeof(bsc_file));
				std::cout << "Decompressing " << file << "..." << std::endl;
				std::cout << "Original size: " << header.ori_size << std::endl;
				std::cout << "Unk1: " << header.unk1 << std::endl;
				std::cout << "Unk2: " << header.unk2 << std::endl;
				std::cout << "Unk3: " << header.unk3 << std::endl;
				std::cout << "Unk4: " << header.unk4 << std::endl;
                std::string out_path = (std::filesystem::current_path() / std::filesystem::path("scr_dec")/ file.filename()).string();
                decompress(header.ori_size, input_buffer + sizeof(bsc_file), out_path, header);
            }
            delete[] input_buffer;
            inputFile.close();
        } else {
            std::cerr << "无法打开文件: " << file << std::endl;
        }
    }
    return 0;
}
