#include "process_text.h"

DWORD originalCallTarget;
DWORD ReturnAddress;
std::string appPath = getPath();
const int maxbuffersize = 0x100000;
int stridx = 0;
//std::string enc = "ShinRingetsu";
std::string enc = "selen";
WCHAR* strBuffer[maxbuffersize] = {};


std::string getPath() {
    char buffer[MAX_PATH];
    GetModuleFileNameA(NULL, buffer, MAX_PATH);
    int i;
    for (i = strlen(buffer); i >= 0; i--)
    {
        if (buffer[i] == '\\')
        {
            break;
        }
    }
    buffer[i + 1] = '\0';
    return std::string(buffer);
}


wchar_t* wCharReplace(const wchar_t* str, wchar_t oriChar, wchar_t newChar) {
    size_t len = wcslen(str);
    wchar_t* newStr = new wchar_t[len + 1];

    for (size_t i = 0; i < len; i++) {
        if (str[i] == oriChar) {
            newStr[i] = newChar;
        }
        else {
            newStr[i] = str[i];
        }
    }
    newStr[len] = L'\0';
    return newStr;
}

std::unordered_set<std::wstring> uniqueStrings;
void appendToFile(const wchar_t* str) {
    const std::string& filename = appPath + "output.txt";
    std::ofstream outFile(filename, std::ios::out | std::ios::app | std::ios::binary);
    if (outFile.is_open()) {
        std::wstring res(wCharReplace(str, L'\r', L'@'));
        //std::wstring res(str);
        printf("%ls\n", res.c_str());
        if (uniqueStrings.find(res) == uniqueStrings.end()) {
            uniqueStrings.insert(res);
            size_t len = wcslen(res.c_str());
            outFile.write(reinterpret_cast<const char*>(res.c_str()), len * sizeof(wchar_t));
            outFile.write(reinterpret_cast<const char*>(L"\n"), wcslen(L"\n") * sizeof(wchar_t));
        }
        outFile.close();
    }
}

// 保存原始 call 的目标地址

// Hook函数
void __declspec(naked) HookFunction_dump()
{
    __asm
    {
        call MultiByteToWideChar
        pushad
        pushfd

        push edi
        call appendToFile
        add esp, 4 

        popfd
        popad

        jmp ReturnAddress
    }
}

std::map <std::wstring, int> t_map;

std::wstring removeTagsFromString(const std::wstring& input) {
    std::wregex pattern(L"<.*?>");
    return std::regex_replace(input, pattern, L"");
}
void ReplaceString(wchar_t* str) {
    std::wstring originalStr(str);
    originalStr = removeTagsFromString(originalStr);
    auto it = t_map.find(originalStr);
    if (it != t_map.end()) {
        wchar_t* transText = wCharReplace(strBuffer[it->second], L'@', L'\r');
        wcscpy_s(str, wcslen(transText) + 1, transText);
		str[wcslen(transText) + 1] = L'\0';
    }
    else {
        std::wcout << str << L"not found" << std::endl;
        appendToFile(str);
    }
}

std::map<std::wstring, int> readKeyValuePairsFromFile(const std::string& filename, std::string k) {
    std::ifstream file(filename, std::ios::binary);
    std::map<std::wstring, int> transMap;
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
	std::wstring transDataW = std::wstring((WCHAR*)transData.c_str());
    size_t pos = 0;
    size_t start = 0;
    std::wstring delimiter = L"[n]";
    while ((pos = transDataW.find(delimiter, start)) != std::wstring::npos) {
        std::wstring line = transDataW.substr(start, pos - start);
        size_t equalPos = line.find(L"[=]");
        if (equalPos != std::wstring::npos) {
            std::wstring key = line.substr(0, equalPos).c_str();
            key = removeTagsFromString(key);
			//MessageBox(NULL, key.c_str(), L"Information", NULL);
            std::wstring value = line.substr(equalPos + 3).c_str();
            strBuffer[stridx] = new WCHAR[value.size() + 4];
            memset(strBuffer[stridx], 0, sizeof(strBuffer[stridx]));
			wcscpy_s(strBuffer[stridx], value.size() + 4, value.c_str());
            transMap[key] = stridx;
            stridx++;
        }
        start = pos + delimiter.length();
    }
	//MessageBoxW(NULL, L"Translation loaded", L"Information", NULL);
    return transMap;
}

void __declspec(naked) HookFunction_replace()
{
    __asm {
        call MultiByteToWideChar
        pushad
        pushfd

        push edi
        call ReplaceString
        add esp, 4

        popfd
        popad

        jmp ReturnAddress
    }
}


void replace_text_main()
{
    t_map = readKeyValuePairsFromFile(appPath + "data1.bin", enc);
    DWORD baseAddress = (DWORD)GetModuleHandle(L"Flash Asset.x32");
    DWORD hookAddress = baseAddress + 0x3D517;
    ReturnAddress = hookAddress + 6;
    DWORD oldProtect;
    VirtualProtect((LPVOID)hookAddress, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)hookAddress = 0xE9;  
    *(DWORD*)(hookAddress + 1) = (DWORD)HookFunction_replace - hookAddress - 5;
    VirtualProtect((LPVOID)hookAddress, 5, oldProtect, &oldProtect);
}


void dump_text_main() {
    DWORD baseAddress = (DWORD)GetModuleHandle(L"Flash Asset.x32");
    DWORD hookAddress = baseAddress + 0x3D517;
    ReturnAddress = hookAddress + 6;
    DWORD oldProtect;
    VirtualProtect((LPVOID)hookAddress, 5, PAGE_EXECUTE_READWRITE, &oldProtect);
    *(BYTE*)hookAddress = 0xE9; 
    *(DWORD*)(hookAddress + 1) = (DWORD)HookFunction_dump - hookAddress - 5;
    VirtualProtect((LPVOID)hookAddress, 5, oldProtect, &oldProtect);
}
