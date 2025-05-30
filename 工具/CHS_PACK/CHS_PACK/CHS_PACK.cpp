#include "CHS_PACK_LIB.h"  
#include <iostream>
#pragma comment(lib, "CHS_PACK_LIB.lib")
//#pragma comment(lib, "zlib.lib")

int main(int argc, char* argv[])
{
    if (argc != 5)
    {
        std::cerr << "Usage: " << argv[0] << " pack <source_path> <output_path> <key>" << std::endl;
        std::cerr << "Usage: " << argv[0] << " unpack <source_path> <output_path> <key>" << std::endl;
        return 1;
    }
    const std::string mode = argv[1];
    const std::string sourcePath = argv[2];
    const std::string outputPath = argv[3];
    const std::string key = argv[4];

    if (mode == "pack") {
        try
        {
            CustomPack::pack(sourcePath, outputPath, key);
            std::cout << "Packing completed successfully." << std::endl;
        }
        catch (const std::exception& e)
        {
            std::cerr << "Error: " << e.what() << std::endl;
            return 1;
        }
    }
    else if (mode == "unpack") {
        try
        {
            CustomPack::unpack(sourcePath, outputPath, key);
            std::cout << "Unpacking completed successfully." << std::endl;
        }
        catch (const std::exception& e)
        {
            std::cerr << "Error: " << e.what() << std::endl;
            return 1;
        }
    }
    else {
        std::cerr << "Invalid mode. Use 'pack' or 'unpack'." << std::endl;
        return 1;
    }

    return 0;
}
