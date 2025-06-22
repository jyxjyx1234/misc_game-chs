#include "CHS_PACK_LIB.h"
#include <fstream>
#include <iostream>
#include <filesystem>
#include <zlib.h>
#include <cstring>
#include <algorithm>

namespace fs = std::filesystem;

// 计算文件名哈希 (FNV-1a算法)
uint32_t CustomPack::calculateNameHash(const std::string& filename) {
    const uint32_t FNV_prime = 16777619u;
    const uint32_t offset_basis = 2166136261u;

    uint32_t hash = offset_basis;
    for (char c : filename) {
        hash ^= static_cast<uint32_t>(tolower(c));
        hash *= FNV_prime;
    }
    return hash;
}

// 异或加密/解密
void CustomPack::xorEncryptDecrypt(uint8_t* data, size_t size, uint32_t key) {
    uint8_t* keyBytes = reinterpret_cast<uint8_t*>(&key);
    for (size_t i = 0; i < size; ++i) {
        data[i] ^= keyBytes[i % 4];
    }
}

// 读取包头信息
bool CustomPack::readPackHeader(const std::string& packPath, std::vector<std::string>& filenames) {  
   std::ifstream file(packPath, std::ios::binary);  
   if (!file.is_open()) {  
       return false;  
   }  

   PackHeader header;  
   file.read(reinterpret_cast<char*>(&header), sizeof(header));  

   // 检查魔数  
   if (strncmp(header.magic, "CPK", 3) != 0) {  
       return false;  
   }  

   filenames.clear();  
   filenames.reserve(header.fileCount);  

   for (uint32_t i = 0; i < header.fileCount; ++i) {  
       FileEntry entry;  
       file.read(reinterpret_cast<char*>(&entry), sizeof(entry));  
       std::string filename(entry.filename);  
       std::transform(filename.begin(), filename.end(), filename.begin(), ::tolower); // 转为小写  
       filenames.emplace_back(filename);  
   }  

   return true;  
}

// 打包文件
bool CustomPack::pack(const std::string& sourcePath, const std::string& destPath, const std::string& key) {
    // 收集源目录中的所有文件
    std::vector<fs::path> files;
    for (const auto& entry : fs::directory_iterator(sourcePath)) {
        if (entry.is_regular_file()) {
            files.push_back(entry.path());
        }
    }

    // 准备包头
    PackHeader header;
    strncpy_s(header.magic, "CPK", 4);
    header.fileCount = static_cast<uint32_t>(files.size());

    // 准备文件条目
    std::vector<FileEntry> entries;
    entries.reserve(files.size());

    // 打开输出文件
    std::ofstream outFile(destPath, std::ios::binary);
    if (!outFile.is_open()) {
        return false;
    }

    // 写入包头(占位，后面会重写)
    outFile.write(reinterpret_cast<const char*>(&header), sizeof(header));

    // 写入文件条目(占位)
    for (size_t i = 0; i < files.size(); ++i) {
        FileEntry entry;
        memset(&entry, 0, sizeof(entry));
        std::string filename = files[i].filename().string();
        strncpy_s(entry.filename, filename.c_str(), sizeof(entry.filename) - 1);
        outFile.write(reinterpret_cast<const char*>(&entry), sizeof(entry));
    }

    // 处理每个文件
    for (size_t i = 0; i < files.size(); ++i) {
        // 读取原始文件
        std::ifstream inFile(files[i], std::ios::binary | std::ios::ate);
        if (!inFile.is_open()) {
            return false;
        }

        size_t originalSize = inFile.tellg();
        inFile.seekg(0);

        std::vector<uint8_t> originalData(originalSize);
        inFile.read(reinterpret_cast<char*>(originalData.data()), originalSize);

        // 压缩数据
        uLongf compressedSize = compressBound(originalSize);
        std::vector<uint8_t> compressedData(compressedSize);

        if (compress(compressedData.data(), &compressedSize,
            originalData.data(), originalSize) != Z_OK) {
            return false;
        }
        compressedData.resize(compressedSize);

        // 计算加密密钥
        printf("file: %s\n", files[i].filename().string().c_str());
        uint32_t nameHash = calculateNameHash(files[i].filename().string());
        uint32_t xorKey = nameHash ^ std::hash<std::string>{}(key);
		printf("XOR Key: %u\n", xorKey); // Debugging line

        // 加密压缩数据
        xorEncryptDecrypt(compressedData.data(), compressedData.size(), xorKey);

        // 记录文件位置和大小
        uint32_t offset = outFile.tellp();
        outFile.seekp(8 + i * sizeof(FileEntry) + 32);
        //entries[i].offset = static_cast<uint32_t>(outFile.tellp());
		outFile.write(reinterpret_cast<const char*>(&offset), sizeof(offset));
		printf("Offset: %u\n", entries[i].offset); // Debugging line
        //entries[i].compressedSize = static_cast<uint32_t>(compressedData.size());
		outFile.seekp(8 + i * sizeof(FileEntry) + 32 + 4);
		outFile.write(reinterpret_cast<const char*>(&compressedSize), sizeof(compressedSize));
		printf("Compressed Size: %u\n", entries[i].compressedSize); // Debugging line
        //entries[i].originalSize = static_cast<uint32_t>(originalSize);
		outFile.seekp(8 + i * sizeof(FileEntry) + 32 + 8);
		outFile.write(reinterpret_cast<const char*>(&originalSize), sizeof(originalSize));
		printf("original Size: %u\n", entries[i].originalSize); // Debugging line

        outFile.seekp(offset);
        // 写入压缩加密数据
        outFile.write(reinterpret_cast<const char*>(compressedData.data()), compressedData.size());
    }
    outFile.close();

    // 回到文件开头重写包头和文件条目
  //  outFile.seekp(0);
  //  outFile.write(reinterpret_cast<const char*>(&header), sizeof(header));
  //  for (size_t i = 0; i < files.size(); ++i) {
		//auto entry = entries[i];
  //      outFile.write(reinterpret_cast<const char*>(&entry), sizeof(entry));
		//printf("filename: %s\n", entry.filename); // Debugging line
  //      printf("Offset: %u\n", entry.offset); // Debugging line
		//printf("Compressed Size: %u\n", entry.compressedSize); // Debugging line
		//printf("original Size: %u\n", entry.originalSize); // Debugging line
  //  }
    return true;
}

// 检查文件是否在包中
bool CustomPack::isInPack(const std::string& packPath, const std::string& filename) {
    std::vector<std::string> filenames;
    if (!readPackHeader(packPath, filenames)) {
        return false;
    }
	std::string lowerFilename = filename;
	std::transform(lowerFilename.begin(), lowerFilename.end(), lowerFilename.begin(), ::tolower); // 转为小写
    return std::find(filenames.begin(), filenames.end(), filename) != filenames.end();
}

std::string CustomPack::getFileFromEntry(std::ifstream& file, FileEntry entry, const std::string& key) {
    file.seekg(entry.offset);

    // 读取加密压缩数据
    std::vector<uint8_t> compressedData(entry.compressedSize);
    file.read(reinterpret_cast<char*>(compressedData.data()), entry.compressedSize);

    // 计算解密密钥
    //printf("file: %s\n", entry.filename);
    uint32_t nameHash = calculateNameHash(entry.filename);
    uint32_t xorKey = nameHash ^ std::hash<std::string>{}(key);
    //printf("XOR Key: %u\n", xorKey); // Debugging line

    // 解密数据
    xorEncryptDecrypt(compressedData.data(), compressedData.size(), xorKey);

    // 解压数据
    std::vector<uint8_t> originalData(entry.originalSize);
    uLongf destLen = entry.originalSize;
    if (uncompress(originalData.data(), &destLen,
        compressedData.data(), compressedData.size()) != Z_OK) {
        printf("Failed to uncompress data\n");
        return "";
    }
    std::string result(originalData.begin(), originalData.end());
    return result;
}

// 从包中获取文件内容
std::string CustomPack::getFile(const std::string& packPath,  
   const std::string& key,  
   const std::string& filename) {  
    std::ifstream file(packPath, std::ios::binary);
    if (!file.is_open()) {
		printf("Failed to open pack file: %s\n", packPath.c_str());
        return "";
    }
	printf("Opened pack file: %s\n", packPath.c_str());
    printf("Try to open file: %s\n", filename.c_str());
    PackHeader header;
    file.read(reinterpret_cast<char*>(&header), sizeof(header));
    if (strncmp(header.magic, "CPK", 3) != 0) {
		printf("Invalid pack file format\n");
        return "";
    }
    FileEntry entry;
    bool found = false;
	std::string fn = filename;
	std::transform(fn.begin(), fn.end(), fn.begin(), ::tolower); // 转为小写
    for (uint32_t i = 0; i < header.fileCount; ++i) {
        file.read(reinterpret_cast<char*>(&entry), sizeof(entry));
		std::string entryFilename(entry.filename);
		std::transform(entryFilename.begin(), entryFilename.end(), entryFilename.begin(), ::tolower); // 转为小写
        if (entryFilename == fn) {
            found = true;
            break;
        }
    }
    if (!found) {
        return "";
    }    
    std::string res = CustomPack::getFileFromEntry(file, entry, key);
    return res;
}

// 解包
bool CustomPack::unpack(const std::string& sourcePath,
    const std::string& destPath,
    const std::string& key) {
    // 创建目标目录
    if (!fs::exists(destPath)) {
        fs::create_directories(destPath);
    }

    std::ifstream inFile(sourcePath, std::ios::binary);
    if (!inFile.is_open()) {
        return false;
    }

    // 读取包头
    PackHeader header;
    inFile.read(reinterpret_cast<char*>(&header), sizeof(header));

    // 检查魔数
    if (strncmp(header.magic, "CPK", 3) != 0) {
        return false;
    }

    // 读取所有文件条目
    std::vector<FileEntry> entries(header.fileCount);
    for (uint32_t i = 0; i < header.fileCount; ++i) {
        inFile.read(reinterpret_cast<char*>(&entries[i]), sizeof(FileEntry));
    }

    // 解压每个文件
    for (const auto& entry : entries) {
        std::string res = CustomPack::getFileFromEntry(inFile, entry, key);
        if (res == "") {
            return false;
        }

        // 写入解压后的文件
        std::ofstream outFile(fs::path(destPath) / entry.filename, std::ios::binary);
        if (!outFile.is_open()) {
            return false;
        }
        outFile.write(reinterpret_cast<const char*>(res.data()), res.size());
    }
    return true;
}
