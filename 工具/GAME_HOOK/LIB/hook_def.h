#include <CHS_PACK_LIB.h>
#include <regex>
#pragma comment(lib, "CHS_PACK_LIB.lib")

#define MAKE_GLOBAL_ADDR(i) \
	DWORD originalAddress##i;\
	DWORD returnAddress##i;\
	DWORD callAddress##i;

#define ATTACH_HOOK(i, ori, len, call) \
	DWORD oldProtect##i;\
	originalAddress##i = ##ori; \
	callAddress##i = ##call;\
	returnAddress##i = originalAddress##i + ##len; \
	VirtualProtect((LPVOID)originalAddress##i, 5, PAGE_EXECUTE_READWRITE, &oldProtect##i);\
	*(BYTE*)originalAddress##i = 0xE9;\
	*(DWORD*)(originalAddress##i + 1) = (DWORD)HookFunction##i - originalAddress##i - 5;\
	VirtualProtect((LPVOID)originalAddress##i, 5, oldProtect##i, &oldProtect##i);

#define ASM(code) __asm{code}
#define GEN_HOOK_FUNC_EX(i, callfunc, precode, postcode) \
	void __declspec(naked) HookFunction##i()\
	{\
			##precode\
			ASM(pushad)\
			ASM(pushfd)\
			ASM(push esp)\
			ASM(call callfunc)\
			__asm{add esp, 0x04}\
			ASM(popfd)\
			ASM(popad)\
			##postcode\
			ASM(jmp returnAddress##i)\
	}

#define GEN_HOOK_FUNC_PRECALL(i, callfunc) \
	GEN_HOOK_FUNC_EX(i, callfunc, __asm{call callAddress##i},__asm{nop})

#define GEN_HOOK_FUNC_POSTCALL(i, callfunc) \
	GEN_HOOK_FUNC_EX(i, callfunc, __asm{nop}, __asm{call callAddress##i})

#define INIT_PACK_INFO(packfile, key) \
	std::string enc = key;\
	std::string packname = packfile;

#define INIT_TRANSBUFFER(max) \
	std::string strBuffer[ max ] = {};\
	int stridx = 0;

#define INIT_TRANSBUFFERW(max) \
	std::wstring strBuffer[ max ] = {};\
	int stridx = 0;

#define READ_REPLACE_MAP_FROM_PACK_REPLACE_NEWLINE_FUNCDEF \
std::string replace_newline_tag(std::string text) {\
	text = std::regex_replace(text, std::regex("\r\n"), "");\
	text = std::regex_replace(text, std::regex("^Åu"), "");\
	return text;\
	}\
std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, const std::string& packname, std::string k) {\
	std::map<std::string, int> transMap;\
	std::string transData = CustomPack::getFile(packname, k, filename);\
	size_t pos = 0;\
	size_t start = 0;\
	std::string delimiter = "[n]";\
	while ((pos = transData.find(delimiter, start)) != std::string::npos) {\
		std::string line = transData.substr(start, pos - start);\
		size_t equalPos = line.find("[=]");\
		if (equalPos != std::wstring::npos) {\
			std::string key = replace_newline_tag(line.substr(0, equalPos));\
			std::string value = line.substr(equalPos + 3);\
			strBuffer[stridx] = value;\
			transMap[key] = stridx;\
			stridx++;\
		}\
		start = pos + delimiter.length();\
	}\
	std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;\
	return transMap;\
	}

#define READ_REPLACE_MAP_FROM_PACK_FUNCDEF \
	std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, const std::string& packname, std::string k) {\
		std::map<std::string, int> transMap; \
		std::string transData = CustomPack::getFile(packname, k, filename); \
		size_t pos = 0; \
		size_t start = 0; \
		std::string delimiter = "[n]"; \
		while ((pos = transData.find(delimiter, start)) != std::string::npos) {\
				std::string line = transData.substr(start, pos - start); \
				size_t equalPos = line.find("[=]"); \
				if (equalPos != std::wstring::npos) {\
						std::string key = line.substr(0, equalPos); \
						std::string value = line.substr(equalPos + 3); \
						strBuffer[stridx] = value; \
						transMap[key] = stridx; \
						stridx++; \
				}\
					start = pos + delimiter.length(); \
		}\
		std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl; \
		return transMap; \
	}

#define READ_REPLACE_MAP_FROM_PACK_FUNCDEFW \
	std::map<std::wstring, int> readKeyValuePairsFromFile(const std::string& filename, const std::string& packname, std::string k) {\
		std::map<std::wstring, int> transMap; \
		std::string transData_ = CustomPack::getFile(packname, k, filename); \
		std::wstring transData(transData_.c_str(), transData_.size() / 2);	\
		size_t pos = 0; \
		size_t start = 0; \
		std::wstring delimiter = L"[n]"; \
		while ((pos = transData.find(delimiter, start)) != std::wstring::npos) {\
				std::wstring line = transData.substr(start, pos - start); \
				size_t equalPos = line.find(L"[=]"); \
				if (equalPos != std::wstring::npos) {\
						std::wstring key = line.substr(0, equalPos); \
						std::wstring value = line.substr(equalPos + 3); \
						strBuffer[stridx] = value; \
						transMap[key] = stridx; \
						stridx++; \
				}\
				start = pos + delimiter.length(); \
		}\
		std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl; \
		return transMap; \
	}

#define GEN_REPLACE_MAP(i) std::map<std::string, int> replacementMap##i = readKeyValuePairsFromFile("data##i.bin", packname, enc);
#define GEN_REPLACE_MAPW(i) std::map<std::wstring, int> replacementMap##i = readKeyValuePairsFromFile("data##i.bin", packname, enc);