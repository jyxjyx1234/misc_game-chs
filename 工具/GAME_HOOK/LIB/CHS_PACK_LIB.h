#ifndef CUSTOMPACK_H
#define CUSTOMPACK_H

#include <string>
#include <vector>
#include <cstdint>
#pragma comment(lib, "zlib.lib")

class CustomPack {
public:
	// 打包文件，文件使用zlib压缩，然后异或加密，密钥为文件名hash+自定义key
    static bool pack(const std::string& sourcePath,
        const std::string& destPath,
        const std::string& key);
    // 检查文件是否在包中
    static bool isInPack(const std::string& packPath,
        const std::string& filename);
    // 从包中获取文件内容
    static std::string getFile(const std::string& packPath,
        const std::string& key,
        const std::string& filename);
    // 解包
    static bool unpack(const std::string& sourcePath,
        const std::string& destPath,
        const std::string& key);
    // 读取包头信息
    static bool readPackHeader(const std::string& packPath,
        std::vector<std::string>& filenames);
private:
    // 计算文件名哈希
    static uint32_t calculateNameHash(const std::string& filename);
    // 异或加密/解密
    static void xorEncryptDecrypt(uint8_t* data, size_t size, uint32_t key);
    // 文件信息结构
    struct FileEntry {
        char filename[32];
        uint32_t offset;
        uint32_t compressedSize;
        uint32_t originalSize;
    };
    static std::string getFileFromEntry(std::ifstream& file, CustomPack::FileEntry entry, const std::string& key);
    // 包头结构
    struct PackHeader {
        char magic[4]; // "CPK"
        uint32_t fileCount;
        // 后面跟着FileEntry数组
    };

};
#endif // CUSTOMPACK_H