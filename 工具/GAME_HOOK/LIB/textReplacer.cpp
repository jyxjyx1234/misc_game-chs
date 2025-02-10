# include "textReplacer.h"

std::map<std::wstring, std::wstring> charReplaceMap;
pGetGlyphOutlineA TrueGetGlyphOutlineA = GetGlyphOutlineA;
pTextOutA TrueTextOutA = TextOutA;
pExtTextOutA TrueExtTextOutA = ExtTextOutA;

std::wstring MultiByteToWide(const std::string& str, int cp) {
    int size_needed = MultiByteToWideChar(cp, 0, &str[0], (int)str.size(), NULL, 0);
    std::wstring wstrTo(size_needed, 0);
    MultiByteToWideChar(cp, 0, &str[0], (int)str.size(), &wstrTo[0], size_needed);
    return wstrTo;
}

std::string WideToMultiByte(const std::wstring& wstr, int cp) {
    int size_needed = WideCharToMultiByte(cp, 0, &wstr[0], (int)wstr.size(), NULL, 0, NULL, NULL);
    std::string strTo(size_needed, 0);
    WideCharToMultiByte(cp, 0, &wstr[0], (int)wstr.size(), &strTo[0], size_needed, NULL, NULL);
    return strTo;
}

std::map<std::wstring, std::wstring> readReplaceMap(const std::string& filename, std::string k) {
    std::map<std::wstring, std::wstring> result;
    std::ifstream file(filename);
    if (!file.is_open()) {
		MessageBoxA(NULL, (std::string("Unable to open file ") + filename).c_str(), "Error", MB_OK);
		exit(1);
        return result;
    }
    int i = 0;

    std::stringstream buffer;
    buffer << file.rdbuf();
    std::string data = buffer.str();
    if (k != "\0") {
        for (size_t i = 0; i < data.size(); ++i) {
                data[i] ^= k[i % k.size()];
            }
    }
    

    std::wstring u32line = MultiByteToWide(data, CP_UTF8);
    std::wstring key, value;

    for (char32_t ch : u32line) {
        if (i % 2 == 0) {
            key = ch;
        }
        else {
            value = ch;
            result[key] = value;
        }
        i++;
    }
    return result;
}

std::wstring changeText(LPCSTR text) {
    std::wstring wstr = sjisStringToWString(text);
    std::wstring new_wstr = L"";
    for (int i = 0; i < wstr.size(); i++) {
        if (charReplaceMap.find(wstr.substr(i, 1)) != charReplaceMap.end()) {
            new_wstr += charReplaceMap[wstr.substr(i, 1)];
        }
        else {
            new_wstr += wstr.substr(i, 1);
        }
    }
    return new_wstr;
}

BOOL WINAPI HOOK_TextOutA(
    HDC hdc,
    int nXStart,
    int nYStart,
    LPCSTR lpString,
    int cbString
) {
    // 获取当前字体
	printf("Hooked TextOutA\n");
    HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(hFont, sizeof(LOGFONTA), &logFont);

    // 修改当前字体的字符集为936
    logFont.lfCharSet = 936;
    HFONT hNewFont = CreateFontIndirectA(&logFont);
    HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);

    std::wstring new_wstr = changeText(lpString);
	LPCSTR new_str = WideStringToGBKLPCSTR(new_wstr);
    BOOL result = TrueTextOutA(hdc, nXStart, nYStart, new_str, cbString);

    // 恢复原始字体
    SelectObject(hdc, hOldFont);
    DeleteObject(hNewFont);

    return result;
}

BOOL WINAPI HOOK_ExtTextOutA(HDC hdc, int X, int Y, UINT fuOptions, const RECT* lprc, LPCSTR lpString, UINT cbCount, const INT* lpDx) {
	std::wstring new_wstr = changeText(lpString);
	return ExtTextOutW(hdc, X, Y, fuOptions, lprc, new_wstr.c_str(), wcslen(new_wstr.c_str()), lpDx);
}

DWORD WINAPI HOOK_GetGlyphOutlineA(HDC hdc, UINT uChar, UINT uFormat, LPGLYPHMETRICS lpgm, DWORD cbBuffer, LPVOID lpvBuffer, const MAT2* lpmat2)
{
    char bytes[3];
    UINT t = uChar;
    bytes[0] = static_cast<char>((t >> 8) & 0xFF);
    bytes[1] = static_cast<char>(t & 0xFF);
    bytes[2] = '\0';
    if (bytes[0] == '\x00') {
        DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        return res;
    }

    std::string str(bytes);
    std::wstring wstr = sjisStringToWString(str);
    if (charReplaceMap.find(wstr) != charReplaceMap.end()) {
        wstr = charReplaceMap[wstr];
        uChar = static_cast<UINT>(wstr.c_str()[0]);
        DWORD res = GetGlyphOutlineW(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        if (res == -1) {
            printf("GetGlyphOutlineW FAIL    parameters: hdc=%p, uChar=%ls, uFormat=%u, lpgm=%p, cbBuffer=%lu, lpvBuffer=%p, lpmat2=%p\n", hdc, wstr.c_str(), uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        }
        else {
            printf("GetGlyphOutlineW SUCCESS parameters: hdc=%p, uChar=%ls, uFormat=%u, lpgm=%p, cbBuffer=%lu, lpvBuffer=%p, lpmat2=%p\n", hdc, wstr.c_str(), uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        }
        return res;
    }
    DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
    if (res == -1) {
        printf("GetGlyphOutlineA FAIL    parameters: hdc=%p, uChar=%ls, uFormat=%u, lpgm=%p, cbBuffer=%lu, lpvBuffer=%p, lpmat2=%p\n", hdc, wstr.c_str(), uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
    }
    else {
		printf("GetGlyphOutlineA SUCCESS parameters: hdc=%p, uChar=%ls, uFormat=%u, lpgm=%p, cbBuffer=%lu, lpvBuffer=%p, lpmat2=%p\n", hdc, wstr.c_str(), uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
    }
    return res;
}

void install_hook_textreplace(int mode) {
#ifndef Release_for_others
    charReplaceMap = readReplaceMap("data2.bin", "ALyCE");
#else
    charReplaceMap = readReplaceMap("replace.bin", "\0");
#endif
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	if (mode == 1) {
		DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
	}
	else if (mode == 2) {
		DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
	}
	else if (mode == 3) {
		DetourAttach(&(PVOID&)TrueExtTextOutA, HOOK_ExtTextOutA);
	}
	DetourTransactionCommit();
}