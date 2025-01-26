#include "textReplacer.h"
#include "text_process.h"

DWORD originalFuncAddr;
DWORD returnAddress;
DWORD callAddress;
DWORD originalFuncAddr2;
DWORD returnAddress2;
DWORD callAddress2;
DWORD originalFuncAddr3;
DWORD returnAddress3;
DWORD callAddress3;
int* ScrP;
char* textBuffer;
std::vector<char*> transBufferVec;
char transBuffer[0x100];
int oriScrP;
int oriHangshu = 0;
int addHangshu = 0;

BOOL nameChangeflag = FALSE;
char* namePtrBuffer;
int namePtrBufferSize;
char* nameBuffer;

const int maxbuffersize = 0x1000000;
int stridx = 0;

rr::RConfig config;
std::string fontfn;
std::string fontn;

transText strBuffer[maxbuffersize] = {};
char* strBuffer2[maxbuffersize] = {};

std::string enc = "alyce20250116";

std::map<std::string, int> replacementMap = readKeyValuePairsFromFile("data1.bin", enc);
std::map<std::string, int> replacementMap2 = readKeyValuePairsFromFile2("data4.bin", enc);
std::map<std::wstring, std::wstring> charReplaceMap = readReplaceMap("data2.bin", enc);
pGetGlyphOutlineA TrueGetGlyphOutlineA = GetGlyphOutlineA;
pTextOutA TrueTextOutA = TextOutA;

std::map<std::string, int> readKeyValuePairsFromFile2(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();

    std::string transData = buffer.str();
    for (size_t i = 0; i < transData.size(); ++i) {
        transData[i] ^= k[i % k.size()];
    }

    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value = line.substr(equalPos + 3);
            strBuffer2[stridx] = new char[strlen(value.c_str()) + 1];
            strcpy_s(strBuffer2[stridx], strlen(value.c_str()) + 1, value.c_str());
            transMap[key] = stridx;
            stridx++;
            strBuffer2[stridx] = new char[strlen(value.c_str()) + 3];
            strcpy_s(strBuffer2[stridx], strlen((value + "\n").c_str()) + 1, (value + "\n").c_str());
            stridx++;
        }
        start = pos + delimiter.length();
    }
    return transMap;
}


std::map<std::string, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::string, int> transMap;
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        return transMap;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();

    std::string transData = buffer.str();
    if (k != "\0") {
        for (size_t i = 0; i < transData.size(); ++i) {
            transData[i] ^= k[i % k.size()];
        }
    }
    size_t pos = 0;
    size_t start = 0;
    std::string delimiter = "[n]";
    while ((pos = transData.find(delimiter, start)) != std::string::npos) {
        std::string line = transData.substr(start, pos - start);
        size_t equalPos = line.find("[=]");
        if (equalPos != std::wstring::npos) {
            std::string key = line.substr(0, equalPos);
            std::string value_ = line.substr(equalPos + 3);
            size_t equalPos2 = value_.find("[!!]");
			std::string value = value_.substr(0, equalPos2);
			std::string hangshu = value_.substr(equalPos2 + 4);
            strBuffer[stridx].hangshu = std::stoi(hangshu);
			strBuffer[stridx].translated = value;
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
    std::cout << "Read " << transMap.size() << " lines from " << filename << std::endl << std::endl;
    file.close();
    return transMap;
}

void readNamesFromFile(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    if (!file.is_open()) {
        std::wcerr << L"Unable to open file: " << filename.c_str() << std::endl;
        nameChangeflag = TRUE;
        return;
    }
    std::stringstream buffer;
    buffer << file.rdbuf();
    
    std::string fileContent = buffer.str();
    if (k != "\0") {
        for (size_t i = 0; i < fileContent.size(); ++i) {
            fileContent[i] ^= k[i % k.size()];
        }
    }
    buffer.str(fileContent);
    
    int num_of_names;
    buffer.read(reinterpret_cast<char*>(&num_of_names), sizeof(num_of_names));
	namePtrBufferSize = num_of_names * 4;
    namePtrBuffer = new char[namePtrBufferSize];
    nameBuffer = new char[buffer.str().size() - 4 - num_of_names * 4];
    for (int i = 0; i < num_of_names; i++) {
        int name_offset;
        buffer.read(reinterpret_cast<char*>(&name_offset), sizeof(name_offset));
        name_offset = reinterpret_cast<int>(nameBuffer + name_offset);
        namePtrBuffer[i * 4] = name_offset & 0xFF;
        namePtrBuffer[i * 4 + 1] = (name_offset >> 8) & 0xFF;
        namePtrBuffer[i * 4 + 2] = (name_offset >> 16) & 0xFF;
        namePtrBuffer[i * 4 + 3] = (name_offset >> 24) & 0xFF;
    }
    buffer.read(nameBuffer, buffer.str().size() - 4 - num_of_names * 4);
}

pCreateFontA TrueCreateFontA = CreateFontA;
HFONT WINAPI HookedCreateFontA(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName) {
    return TrueCreateFontA(cHeight, cWidth, cEscapement, cOrientation, cWeight, bItalic, bUnderline, bStrikeOut, iCharSet, iOutPrecision, iClipPrecision, iQuality, iPitchAndFamily, fontn.c_str());
}

pCreateWindowExA TrueCreateWindowExA = CreateWindowExA;
HWND WINAPI HOOKEDCreateWindowExA(
    DWORD     dwExStyle,
    LPCSTR    lpClassName,
    LPCSTR    lpWindowName,
    DWORD     dwStyle,
    int       X,
    int       Y,
    int       nWidth,
    int       nHeight,
    HWND      hWndParent,
    HMENU     hMenu,
    HINSTANCE hInstance,
    LPVOID    lpParam
) {
    printf("HOOK CreateWindowExA sucess!\n\n");
    std::string modeltype = config.ReadString("STARTMESSAGE", "MODELTYPE", "Claude-3-5-sonnet");
    std::string WindowName_n = ANSIToANSI(lpWindowName, 932, 936) + " " + modeltype + "ª˙∑≠ by ALyCE/jyxjyx1234";
    WindowName_n = ANSIToANSI(WindowName_n.c_str(), 936, GetACP());
    char newWindowName[200];
    strcpy_s(newWindowName, 200, WindowName_n.c_str());

    return TrueCreateWindowExA(
        dwExStyle,
        lpClassName,
        newWindowName,
        dwStyle,
        X,
        Y,
        nWidth,
        nHeight,
        hWndParent,
        hMenu,
        hInstance,
        lpParam
    );
}

int split_transdata(std::string translated, int hangshu, std::vector<char*>& outVec) {
	int line_width = 46;
    int line_max_width = 52;
    while (line_max_width * hangshu <= translated.size()) {
        hangshu++;
    }
    if (hangshu > 3) {
        hangshu = 3;
        MessageBox(0, (L"≥¨≥ˆœ‘ æ∑∂Œß:" + changeText(translated.c_str())).c_str(), L"Error", 0);
    }
    while (line_width * hangshu <= translated.size()) {
		line_width += 2;
    }
	for (int i = 0; i < hangshu; i++) {
		char* line = new char[line_width + 1];
		memset(line, 0, line_width + 1);
		if (i * line_width >= translated.size()) {
            line[0] = '\x81';
			line[1] = '\x40';
		}
        else {
            for (int j = 0; j < line_width && i * line_width + j < translated.size(); j++) {
                line[j] = translated[i * line_width + j];
            }
        }
		outVec.push_back(line);
	}
    return hangshu;
}


void process1() {
	if (!nameChangeflag) {
        char* names = (char*)0x69ef48;
        memcpy(names, namePtrBuffer, namePtrBufferSize);
		nameChangeflag = TRUE;
        //MessageBoxA(NULL, "NAME CHANGED!", NULL, NULL);
	}
	oriScrP = *ScrP;
    if (transBufferVec.size() > 0) {
        return;
    }
    std::string context((char*)oriScrP, 0x40);
    //MessageBoxA(NULL, context.c_str(), NULL, NULL);
	auto it = replacementMap.find(context);
    if (it != replacementMap.end()) {
        //MessageBoxA(NULL, "MATCH!", NULL, NULL);
		int idx = it->second;
		std::string translated = strBuffer[idx].translated;
        //MessageBoxA(NULL, translated.c_str(), NULL, NULL);
		int hangshu = strBuffer[idx].hangshu;
		oriHangshu = hangshu;
        //MessageBoxA(NULL, std::to_string(hangshu).c_str(), NULL, NULL);
		addHangshu = split_transdata(translated, hangshu, transBufferVec) - oriHangshu;
    }
    else {
        return;
    }
}

void process2(int* len) {
	if (transBufferVec.size() == 0) {
		return;
	}
    auto trans = transBufferVec[0];
    strcpy_s(textBuffer, strlen(trans) + 1, trans);
    transBufferVec.erase(transBufferVec.begin());

	if (addHangshu != 0 && transBufferVec.size() == addHangshu) {
        *ScrP = oriScrP; 
        addHangshu -= 1;
        *len += 1;
	}
}

void replace_text(const char** text) {
	auto it = replacementMap2.find(*text);
	if (it != replacementMap2.end()) {
		int idx = it->second;
		*text = strBuffer2[idx];
	}
	else {
		return;
	}
}

void replace_text2(char** text) {
    auto it = replacementMap2.find(*text);
    if (it != replacementMap2.end()) {
        int idx = it->second;
		strcpy_s(*text, strlen(strBuffer2[idx]) + 1, strBuffer2[idx]);
    }
    else {
        return;
    }
}

void __declspec(naked) HookFunction_replacetext()
{
    __asm
    {
        pushad
        pushfd

        call process1

        popfd
        popad

        call callAddress

        pushad
        pushfd

        mov eax, esp
        add eax, 0x4
        push eax
        call process2
        add esp, 4

        popfd
        popad

        jmp dword ptr[returnAddress]
    }
}

void __declspec(naked) HookFunction_replacetext2()
{
    __asm
    {
        pushad
        pushfd

        mov eax, esp
        add eax, 0x24 + 0x4
        push eax
        call replace_text
		add esp, 4

        popfd
        popad

        push esi
        push edi
        mov edi, dword ptr [esp + 0x10]
     
        jmp dword ptr[returnAddress2]
    }
}

void __declspec(naked) HookFunction_replacetext3()
{
    __asm
    {
        call callAddress3
        pushad
        pushfd

        mov eax, esp
        add eax, 0x24
        push eax
        call replace_text2
        add esp, 4

        popfd
        popad

        jmp dword ptr[returnAddress3]
    }
}

void InstallHook_replacetext()
{
	readNamesFromFile("data3.bin", enc);
    replacementMap["≤‚ ‘"] = 114514;
	config.ReadConfig("hook.ini");
    fontfn = config.ReadString("FONT", "FONTFILENAME", "");
    fontn = config.ReadString("FONT", "FONTNAME", "");
    if (AddFontResourceExA(fontfn.c_str(), FR_PRIVATE, 0) != 0) {
        std::cout << "Load Font " << fontfn.c_str() << " Sucessful!" << std::endl;
    }
    else {
        std::cout << "Fail to Load Font!" << std::endl;
    }

    DWORD oldProtect;
	ScrP = (int*)0x69e454;
    textBuffer = (char*)0x69ecb8;
    originalFuncAddr = 0x40410E;
    returnAddress = originalFuncAddr + 5;
    callAddress = 0x4010e0;
    VirtualProtect((LPVOID)originalFuncAddr, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr = 0xE9;  
    *(DWORD*)(originalFuncAddr + 1) = (DWORD)HookFunction_replacetext - originalFuncAddr - 5;
    VirtualProtect((LPVOID)originalFuncAddr, 5, oldProtect, &oldProtect);


    originalFuncAddr2 = 0x0042D1D0;
    returnAddress2 = 0x0042D1D6;
    callAddress2 = 0x42AF10;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr2 = 0xE9;
    *(DWORD*)(originalFuncAddr2 + 1) = (DWORD)HookFunction_replacetext2 - originalFuncAddr2 - 5;
    VirtualProtect((LPVOID)originalFuncAddr2, 5, oldProtect, &oldProtect);

    originalFuncAddr3 = 0x00404846;
    returnAddress3 = 0x0040484B;
    callAddress3 = 0x4010e0;
    VirtualProtect((LPVOID)originalFuncAddr3, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)originalFuncAddr3 = 0xE9;
    *(DWORD*)(originalFuncAddr3 + 1) = (DWORD)HookFunction_replacetext3 - originalFuncAddr3 - 5;
    VirtualProtect((LPVOID)originalFuncAddr3, 5, oldProtect, &oldProtect);

    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
    DetourAttach(&(PVOID&)TrueCreateWindowExA, HOOKEDCreateWindowExA);
    DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
    DetourTransactionCommit();
}

