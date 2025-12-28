#include "textReplacer.h"
#include <filesystem>
#include <iostream>
#include "HookTitle.h"
#include "text_process.h"
#include "CHS_PACK_LIB.h"


//046350B2 | 56 | push esi |
//046350B3 | 8D4C24 14 | lea ecx, dword ptr ss : [esp + 14] |
//046350B7 | E8 04C7FFFF | call budfile.46317C0 |
//046350BC | 8B4C24 14 | mov ecx, dword ptr ss : [esp + 14] |
//046350C0 | 51 | push ecx |
//046350C1 | 8D4C24 10 | lea ecx, dword ptr ss : [esp + 10] |
//046350C5 | E8 26CBFFFF | call budfile.4631BF0 |
//046350CA | 8BF0 | mov esi, eax | eax : "]]" == L"嵝"
//046350CC | 8D56 08 | lea edx, dword ptr ds : [esi + 8] |
//046350CF | 52 | push edx |
//046350D0 | E8 AB2D0000 | call budfile.4637E80 |
//046350D5 | 8BF8 | mov edi, eax | eax : "]]" == L"嵝"
//046350D7 | 56 | push esi |
//046350D8 | 57 | push edi |
//046350D9 | 53 | push ebx |
//046350DA | 8D4C24 18 | lea ecx, dword ptr ss : [esp + 18] |
//046350DE | C6043E 00 | mov byte ptr ds : [esi + edi] , 0 |
//046350E2 | E8 99CCFFFF | call budfile.4631D80 |
//046350E7 | 53 | push ebx |
//046350E8 | E8 B32D0000 | call budfile.4637EA0 |
//046350ED | 8D4C24 0C | lea ecx, dword ptr ss : [esp + C] | [esp + C] : "缜"
//046350F1 | C78424 2C040000 FFFFFFFF | mov dword ptr ss : [esp + 42C] , FFFFFFFF |
//046350FC | E8 1FBFFFFF | call budfile.4631020 |
//04635101 | 8BC7 | mov eax, edi | eax : "]]" == L"嵝"
//04635103 | 8B8C24 24040000 | mov ecx, dword ptr ss : [esp + 424] |
//0463510A | 64 : 890D 00000000 | mov dword ptr fs : [0] , ecx |
//04635111 | 5F | pop edi |
//04635112 | 5E | pop esi |
//04635113 | 5B | pop ebx |
//04635114 | 8BE5 | mov esp, ebp |
//04635116 | 5D | pop ebp |
//04635117 | C2 0800 | ret 8 |


std::string GetProgramFolderPath() {
	char path[MAX_PATH];
	GetModuleFileNameA(NULL, path, MAX_PATH);
	std::string fullPath(path);
	size_t lastSlash = fullPath.find_last_of("\\/");
	return fullPath.substr(0, lastSlash);
}

DWORD originalFuncAddr;
DWORD callAddress;
DWORD returnAddress;
DWORD returnAddress2;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

std::string strBuffer[maxbuffersize] = {};

std::string enc = "LSBD";

char* keybuffer;

//std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
//
//std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
//    std::map<std::string, int> transMap;
//    std::string transData = CustomPack::getFile("EXHIBIT_CHS.CPK", k, filename);
//    //printf("transdata:%s", transData.c_str());
//    size_t pos = 0;
//    size_t start = 0;
//    std::string delimiter = "[n]";
//    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
//        std::string line = transData.substr(start, pos - start);
//        size_t equalPos = line.find("[=]");
//        if (equalPos != std::wstring::npos) {
//            std::string key = line.substr(0, equalPos);
//            std::string value = line.substr(equalPos + 3);
//            strBuffer[stridx] = value;
//            transMap[key] = stridx;
//            stridx++;
//        }
//        start = pos + delimiter.length();
//    }
//    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
//    return transMap;
//}

#include <filesystem>  
#include <fstream>  

char* b1;
char* b2;
int b3;


void __declspec(naked) HookFunction_decfile()//普通文本
{
    __asm
    {
        push ecx
        mov ecx, keybuffer
        push b3
        push b2
        push b1
        call callAddress
        pop ecx
        ret
    }
}

void dumpfile() {
   std::string inputFolder = "scn";  
   std::string outputFolder = "scn_dec";  

   // 创建输出文件夹（如果不存在）  
   if (!std::filesystem::exists(outputFolder)) {  
       std::filesystem::create_directory(outputFolder);  
   }  
    MessageBoxA(NULL, "1", "1", MB_OK);

   // 遍历输入文件夹中的每个文件  
   for (const auto& entry : std::filesystem::directory_iterator(inputFolder)) {  
       if (entry.is_regular_file()) {  
           std::string inputFilePath = entry.path().string();  
           std::string outputFilePath = outputFolder + "/" + entry.path().filename().string();  

           // 读取文件内容  
           std::ifstream inputFile(inputFilePath, std::ios::binary);  
           if (!inputFile) {  
               std::cerr << "无法打开文件: " << inputFilePath << std::endl;  
               continue;  
           }  
           std::vector<char> buffer((std::istreambuf_iterator<char>(inputFile)), std::istreambuf_iterator<char>());  
           inputFile.close();  

           // 解密文件内容  
           std::vector<char> decryptedBuffer(buffer.size());
           b1 = buffer.data();
		   b2 = decryptedBuffer.data();
           //int decryptedLength = decFileFunc(buffer.data(), decryptedBuffer.data(), static_cast<int>(buffer.size()));  
           b3 = static_cast<int>(buffer.size());
           HookFunction_decfile();

           // 保存解密后的内容  
           std::ofstream outputFile(outputFilePath, std::ios::binary);  
           if (!outputFile) {  
               std::cerr << "无法创建文件: " << outputFilePath << std::endl;  
               continue;  
           }  
           outputFile.write(decryptedBuffer.data(), decryptedBuffer.size());
           outputFile.close();  

           std::cout << "已处理文件: " << inputFilePath << " -> " << outputFilePath << std::endl;  
       }  
   }  
   exit(1);
}

int skip_filedec(hook_stack& s) {
	if (std::string((char*)s.oesp, 8) == "DONOTDEC") {
		memcpy((char*)s.oesp_4, (char*)(s.oesp + 8), s.oesp_8 - 8);
		return 1;
	}
	return 0;
}



void __declspec(naked) HookFunction_replacetext1()
{
    __asm
    {
        mov keybuffer, ecx
        call dumpfile
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
	__asm
	{
		pushfd
		pushad
		push esp
		call skip_filedec
		add esp, 4
		cmp eax, 1
		je SKIP
		popad
		popfd
		call callAddress
		jmp returnAddress2

		SKIP:
			popad
			popfd
			add esp, 12
			jmp returnAddress2
	}
}

std::string packname = GetProgramFolderPath() + "\\RB_CHS.CPK";

DWORD pHookedCreateFileW;
DWORD pHookedGetFileSize;
DWORD pHookedReadFile;
DWORD pHookedCloseHandle;

pCreateFileA TrueCreateFileA = CreateFileA;
pGetFileSize TrueGetFileSize = GetFileSize;
pReadFile TrueReadFile = ReadFile;
pCloseHandle TrueCloseHandle = CloseHandle;
pGetFileAttributesA TrueGetFileAttributesA = GetFileAttributesA;
pGetFileType TrueGetFileType = GetFileType;
pSetFilePointer TrueSetFilePointer = SetFilePointer;

struct string_with_pointer {
	int ptr = 0;
	std::string content = "";
};

std::map<std::string, int> FileMap;
std::vector<std::string> FileNames;
string_with_pointer FileBuffer[0x1000];
int pFileBuffer = 0;


void initPackage() {
	CustomPack::readPackHeader(packname, FileNames);
	//MessageBoxA(NULL, packname.c_str(), "File Name", MB_OK);
	for (const auto& fileName : FileNames) {
		if (CustomPack::isInPack(packname, fileName)) {
			std::cout << "Loading file: " << fileName << std::endl;
			FileBuffer[pFileBuffer].ptr = 0;
			FileBuffer[pFileBuffer].content = CustomPack::getFile(packname, enc, fileName);
			FileMap[fileName] = pFileBuffer;
			pFileBuffer++;
		}
	}
}

HANDLE WINAPI HookedCreateFileA(LPCSTR lpFileName,
	DWORD dwDesiredAccess,
	DWORD dwShareMode,
	LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	DWORD dwCreationDisposition,
	DWORD dwFlagsAndAttributes,
	HANDLE hTemplateFile) {
	std::cout << "Hooked CreateFileA: " << lpFileName << std::endl;
	if (lpFileName != nullptr) {
		std::string fullPath(lpFileName);
		if (fullPath == "yscfg.ybn") {
			return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
		}
		std::string fileNameA = std::filesystem::path(fullPath).filename().string();
		//std::string fileNameA = WideStringToGBKLPCSTR(fileName);
		std::transform(fileNameA.begin(), fileNameA.end(), fileNameA.begin(), ::tolower);
		auto it = FileMap.find(fileNameA);
		if (it != FileMap.end()) {
			int index = it->second;
			if (index < pFileBuffer) {
				std::cout << "Replace: " << fileNameA << std::endl;
				return reinterpret_cast<HANDLE>(&FileBuffer[index]);
			}
		}
		std::cout << "Not found in pack: " << fileNameA << std::endl;
	}

	return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
}

BOOL WINAPI HookedReadFile(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped) {
	//std::cout << "Hooked ReadFile: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			std::cout << "Replace Reading file: " << FileNames[i] << std::endl;
			std::string data = FileBuffer[i].content;
			if (nNumberOfBytesToRead + FileBuffer[i].ptr > data.size()) {
				nNumberOfBytesToRead = data.size() - FileBuffer[i].ptr;
			}
			memcpy(lpBuffer, data.c_str() + FileBuffer[i].ptr, nNumberOfBytesToRead);
			*lpNumberOfBytesRead = nNumberOfBytesToRead;
			FileBuffer[i].ptr += nNumberOfBytesToRead; // Update pointer position
			return TRUE;
		}
	}
	return TrueReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
}

BOOL WINAPI HookedCloseHandle(HANDLE hObject) {
	//std::cout << "Hooked CloseHandle: " << hObject << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hObject) {
			FileBuffer[i].ptr = 0;
			std::cout << "Closing handle for file: " << FileNames[i] << std::endl;
			return TRUE;
		}
	}
	return TrueCloseHandle(hObject);
}

DWORD WINAPI HookedGetFileType(HANDLE hFile) {
	//std::cout << "GetFileType: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			return FILE_TYPE_DISK; // Assuming disk type for files in the pack
		}
	}
	return TrueGetFileType(hFile);
}

DWORD WINAPI HookedGetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh) {
	//std::cout << "Hooked GetFileSize: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			DWORD size = FileBuffer[i].content.size();
			if (lpFileSizeHigh) {
				*lpFileSizeHigh = 0;
			}
			return size;
		}
	}
	return TrueGetFileSize(hFile, lpFileSizeHigh);
}

DWORD WINAPI HookedGetFileAttributesA(LPCSTR lpFileName) {
	std::string fullPath(lpFileName);
	std::string fileNameA = std::filesystem::path(fullPath).filename().string();
	std::transform(fileNameA.begin(), fileNameA.end(), fileNameA.begin(), ::tolower);
	std::cout << "GetFileAttributesA: " << fileNameA.c_str() << std::endl;
	if (CustomPack::isInPack(packname, fileNameA)) {
		std::cout << "File found in pack: " << fileNameA << std::endl;
		return FILE_ATTRIBUTE_NORMAL; // Assuming normal attributes for files in the pack
	}
	return TrueGetFileAttributesA(lpFileName);
}

DWORD WINAPI HookedSetFilePointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod) {
	//std::cout << "Hooked SetFilePointer: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			//std::cout << "Setting file pointer for: " << FileNames[i] << std::endl;
			if (lpDistanceToMoveHigh) {
				*lpDistanceToMoveHigh = 0;
			}
			if (dwMoveMethod == FILE_BEGIN) {
				FileBuffer[i].ptr = lDistanceToMove; // Set pointer to the new position
			}
			else if (dwMoveMethod == FILE_CURRENT) {
				FileBuffer[i].ptr += lDistanceToMove; // Move pointer relative to current position
			}
			else if (dwMoveMethod == FILE_END) {
				FileBuffer[i].ptr = FileBuffer[i].content.size() + lDistanceToMove; // Move pointer relative to end of file
			}
			return FileBuffer[i].ptr; // Adjust pointer based on distance
		}
	}
	return TrueSetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);
}


void InstallHook_replacetext()
{
    DWORD baseAddress = (DWORD)GetModuleHandle(L"BudFile.x32");
    //dump
    int mode = 1;
    DWORD oldProtect;
    if (mode == 0) {
        originalFuncAddr = baseAddress + 0x50e2;
        returnAddress = originalFuncAddr + 5;
        callAddress = (baseAddress + 0x1d80);
        VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
        *(BYTE*)originalFuncAddr = 0xE9;
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext1 - originalFuncAddr - 5;
        VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);
    }
    else {
		 
        
        originalFuncAddr = baseAddress + 0x50e2;
        returnAddress2 = originalFuncAddr + 5;
		callAddress = (baseAddress + 0x1d80);
        VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
        *(BYTE*)originalFuncAddr = 0xE9;
        *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr - 5;
        VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);

	    ////MessageBoxA(NULL, "Hooked", "Hooked", MB_OK);
        //newFontName = L"黑体";
        //installFontHook_main(1, 1, 1, 0);
        install_hook_textreplaceFromPackEx(3, packname, "data2.bin", enc);

	    initPackage();
	    DetourTransactionBegin();
	    DetourUpdateThread(GetCurrentThread());
	    DetourAttach(&(PVOID&)TrueCreateFileA, HookedCreateFileA);
	    DetourAttach(&(PVOID&)TrueGetFileSize, HookedGetFileSize);
	    DetourAttach(&(PVOID&)TrueReadFile, HookedReadFile);
	    DetourAttach(&(PVOID&)TrueCloseHandle, HookedCloseHandle);
	    DetourAttach(&(PVOID&)TrueGetFileAttributesA, HookedGetFileAttributesA);
	    DetourAttach(&(PVOID&)TrueGetFileType, HookedGetFileType);
	    DetourAttach(&(PVOID&)TrueSetFilePointer, HookedSetFilePointer);
	    DetourTransactionCommit();
    }
}

