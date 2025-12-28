# include "textReplacer.h"
#ifndef MD
# include "CHS_PACK_LIB.h"
# pragma comment(lib, "CHS_PACK_LIB.lib")
# pragma comment(lib, "zlib.lib")
#endif

std::map<std::wstring, std::wstring> charReplaceMap;
pGetGlyphOutlineA TrueGetGlyphOutlineA = GetGlyphOutlineA;
pTextOutA TrueTextOutA = TextOutA;
pTextOutW TrueTextOutW = TextOutW;
pExtTextOutA TrueExtTextOutA = ExtTextOutA;
pGetTextExtentExPointA TrueGetTextExtentExPointA = GetTextExtentExPointA;
pGetTextExtentPoint32A TrueGetTextExtentPoint32A = GetTextExtentPoint32A;
pGdipDrawString TrueGdipDrawString = nullptr;

std::map<std::string, HFONT> fontMap;

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



HFONT GetNewFont(LOGFONTA lf) {
	std::string fontkey((char*)&lf, sizeof(LOGFONTA));
	if (fontMap.find(fontkey) != fontMap.end()) {
        LOGFONTA logFont;
        HFONT res = fontMap[fontkey];
        if (res != NULL && GetObject(res, sizeof(LOGFONTA), &logFont) == 0) {
			res = CreateFontIndirectA(&lf);
			fontMap[fontkey] = res;
			return res;
        }
		return res;
	}
	HFONT res = CreateFontIndirectA(&lf);
	fontMap[fontkey] = res;
	return res;
}


BOOL WINAPI HOOK_getTextExtentExPointA(HDC hdc, LPCSTR lpszStr, int cchString, int nMaxExtent, LPINT lpnFit, LPINT alpDx, LPSIZE lpSize)
{
    HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(hFont, sizeof(LOGFONTA), &logFont);
    logFont.lfCharSet = 134;
    strcpy_s(logFont.lfFaceName, 5, "黑体");

    HFONT hNewFont = GetNewFont(logFont);
    HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);
    DWORD res = TrueGetTextExtentExPointA(hdc, lpszStr, cchString, nMaxExtent, lpnFit, alpDx, lpSize);
    SelectObject(hdc, hOldFont);
    return res;
}

BOOL WINAPI Hook_getTextExtentPoint32A(HDC hdc, LPCSTR lpString, int c, LPSIZE ps)
{
    HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(hFont, sizeof(LOGFONTA), &logFont);
    logFont.lfCharSet = 134;
    strcpy_s(logFont.lfFaceName, 5, "黑体");
    HFONT hNewFont = GetNewFont(logFont);
    HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);
    DWORD res = TrueGetTextExtentPoint32A(hdc, lpString, c, ps);
    SelectObject(hdc, hOldFont);
    return res;
}

std::map<std::wstring, std::wstring> readReplaceMap(const std::string& filename, std::string k) {
    std::map<std::wstring, std::wstring> result;
    std::ifstream file(filename, std::ios::binary);
    if (!file.is_open()) {
		//MessageBoxA(NULL, (std::string("Unable to open file ") + filename).c_str(), "Error", MB_OK);
		//exit(1);
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

	std::ofstream out("log.txt", std::ios::out);

    for (WCHAR ch : u32line) {
        if (i % 2 == 0) {
            key = ch;
        }
        else {
            value = ch;
            result[key] = value;
			//out << WideToMultiByte(key, CP_UTF8) << " = " << WideToMultiByte(value, CP_UTF8) << std::endl;
        }
        i++;
    }
    return result;
}
#ifndef MD
std::map<std::wstring, std::wstring> readReplaceMapFromPack(const std::string& packname, const std::string& filename, std::string k) {
    std::map<std::wstring, std::wstring> result;
	std::cout << packname << std::endl;
	std::cout << filename << std::endl;
    if (! CustomPack::isInPack(packname, filename)) {
        //MessageBoxA(NULL, (std::string("Unable to open file ") + filename).c_str(), "Error", MB_OK);
        return result;
    }

    CustomPack pack;
    std::string data = pack.getFile(packname, k, filename);
    std::wstring u32line = MultiByteToWide(data, CP_UTF8);
	wprintf(L"%ls", u32line.c_str());
    std::wstring key, value;

    //std::ofstream out("log.txt", std::ios::out);
    int i = 0;
    for (WCHAR ch : u32line) {
        if (i % 2 == 0) {
            key = ch;
        }
        else {
            value = ch;
            result[key] = value;
            //out << WideToMultiByte(key, CP_UTF8) << " = " << WideToMultiByte(value, CP_UTF8) << std::endl;
        }
        i++;
    }
    return result;
}
#endif

std::wstring changeTextW(LPCWSTR text) {
    std::wstring wstr = text;
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

std::wstring changeText(std::string text) {
    std::wstring wstr = sjisStringToWString(text);
    //std::wstring new_wstr = L"";
    //for (int i = 0; i < wstr.size(); i++) {
    //    if (charReplaceMap.find(wstr.substr(i, 1)) != charReplaceMap.end()) {
    //        new_wstr += charReplaceMap[wstr.substr(i, 1)];
    //    }
    //    else {
    //        new_wstr += wstr.substr(i, 1);
    //    }
    //}
    return changeTextW(wstr.c_str());
}

std::string changeTextU8(LPCSTR text) {
    std::wstring wstr = CPStringToWString(text, CP_UTF8);
    std::wstring new_wstr = L"";
    for (int i = 0; i < wstr.size(); i++) {
        if (charReplaceMap.find(wstr.substr(i, 1)) != charReplaceMap.end()) {
            new_wstr += charReplaceMap[wstr.substr(i, 1)];
        }
        else {
            new_wstr += wstr.substr(i, 1);
        }
    }
    return std::string(WideStringToCPLPCSTR(new_wstr, CP_UTF8));
}


BOOL WINAPI HOOK_TextOutA(
    HDC hdc,
    int nXStart,
    int nYStart,
    LPCSTR lpString,
    int cbString
) {
    // 获取当前字体
    nYStart += 0;

    std::cout << std::string(lpString, cbString);
	//printf("Hooked TextOutA\n");
 //   HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
 //   LOGFONTA logFont;
 //   GetObjectA(hFont, sizeof(LOGFONTA), &logFont);
 //   std::wstring new_wstr = changeText(lpString);
 //   // 修改当前字体的字符集为936
 //   logFont.lfCharSet = ;
 //   HFONT hNewFont = CreateFontIndirectA(&logFont);
 //   HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);

	//LPCSTR new_str = WideStringToGBKLPCSTR(new_wstr);
 //   BOOL result = TrueTextOutA(hdc, nXStart, nYStart, new_str, cbString);

 //   // 恢复原始字体
 //   SelectObject(hdc, hOldFont);
 //   DeleteObject(hNewFont);

    std::wstring new_wstr = changeText(std::string(lpString, cbString));
    HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(hFont, sizeof(LOGFONTA), &logFont);
    if (cbString == 2 && lpString[0] == '\x81') {
        strcpy_s(logFont.lfFaceName, 11, "MS Gothic");
    }
    else {
        logFont.lfCharSet = 134;
        strcpy_s(logFont.lfFaceName, 5, "黑体");
    }
    HFONT hNewFont = GetNewFont(logFont);
    HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);
	BOOL result = TextOutW(hdc, nXStart, nYStart, new_wstr.c_str(), wcslen(new_wstr.c_str()));
    SelectObject(hdc, hOldFont);
    //DeleteObject(hNewFont);
    return result;
}
int WINAPI HOOK_GdipDrawString(
    void* graphics,
    const wchar_t* string,
    int length,
    void* font,
    void* layoutRect,
    void* stringFormat,
    void* brush
) {
    std::wstring ori(string, length);
    std::wstring newstring = changeTextW(ori.c_str());
    return TrueGdipDrawString(graphics, newstring.c_str(), newstring.length(), font, layoutRect, stringFormat, brush);
}

BOOL WINAPI HOOK_TextOutA_U8(
    HDC hdc,
    int nXStart,
    int nYStart,
    LPCSTR lpString,
    int cbString
) {
    printf("Hooked TextOutA_U8\n");;
    std::string new_str = changeTextU8(lpString);
	cbString = new_str.size();
    return TrueTextOutA(hdc, nXStart, nYStart, new_str.c_str(), cbString);
}

BOOL WINAPI HOOK_TextOutW(
	HDC hdc,
	int nXStart,
	int nYStart,
	LPCWSTR lpString,
	int cbString
) {
	printf("Hooked TextOutW\n");
	std::wstring new_wstr = changeTextW(lpString);
	return TrueTextOutW(hdc, nXStart, nYStart, new_wstr.c_str(), cbString);
}

BOOL WINAPI HOOK_ExtTextOutA(HDC hdc, int X, int Y, UINT fuOptions, const RECT* lprc, LPCSTR lpString, UINT cbCount, const INT* lpDx) {
	if (lpString == NULL) {
		return TrueExtTextOutA(hdc, X, Y, fuOptions, lprc, lpString, cbCount, lpDx);
	}



	std::wstring new_wstr = changeText(std::string(lpString, cbCount));
    LPCSTR new_str = WideStringToGBKLPCSTR(new_wstr);
    HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(hFont, sizeof(LOGFONTA), &logFont);
    if (cbCount == 2 && lpString[0] == '\x81') {
        logFont.lfCharSet = 128;
        strcpy_s(logFont.lfFaceName, 11, "MS Gothic");
        new_str = WideStringToSJISLPCSTR(new_wstr);
    }
    else {
        logFont.lfCharSet = 134;
        strcpy_s(logFont.lfFaceName, 5, "黑体");
    }
    HFONT hNewFont = GetNewFont(logFont);
    HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);
	auto res = TrueExtTextOutA(hdc, X, Y, fuOptions, lprc, new_str, strlen(new_str), lpDx);
    SelectObject(hdc, hOldFont);
    //DeleteObject(hNewFont);
    //auto res = ExtTextOutW(hdc, X, Y, fuOptions, lprc, new_wstr.c_str(), wcslen(new_wstr.c_str()), lpDx);
	return res;
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
    if (bytes[0] == '\xf0') {
        DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        return res;
    }

    if (bytes[0] == '\x81') {
        DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
        return res;
    }

    std::string str(bytes);

    std::cout << str;
    std::wstring wstr = sjisStringToWString(str);
    HFONT hFont = (HFONT)GetCurrentObject(hdc, OBJ_FONT);
    LOGFONTA logFont;
    GetObjectA(hFont, sizeof(LOGFONTA), &logFont);
    logFont.lfCharSet = 134;
    strcpy_s(logFont.lfFaceName, 5, "黑体");
    HFONT hNewFont = GetNewFont(logFont);
    HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);
    if (charReplaceMap.find(wstr) != charReplaceMap.end()) {
        wstr = charReplaceMap[wstr];
    }
    uChar = static_cast<UINT>(wstr.c_str()[0]);
    DWORD res = GetGlyphOutlineW(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
    SelectObject(hdc, hOldFont);
    return res;
}

void install_hook_textreplace(int mode) {
    if (mode == 7) {
        HMODULE GDI = GetModuleHandleA("gdiplus.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GdipDrawString");
            TrueGdipDrawString = reinterpret_cast<pGdipDrawString>(procAddress);
        }
    }
#ifndef Release_for_others
    charReplaceMap = readReplaceMap("script\\replace.bin", "\0");
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
    else if (mode == 4) {
        DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA_U8);
    }
    else if (mode == 5) {
        DetourAttach(&(PVOID&)TrueTextOutW, HOOK_TextOutW);
    }
    else if (mode == 6) {
        HMODULE GDI = GetModuleHandleA("gdi32.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GetGlyphOutline");
            DetourAttach(&(PVOID&)procAddress, HOOK_GetGlyphOutlineA);
        }
    }
    else if (mode == 7) {
        HMODULE GDI = GetModuleHandleA("gdiplus.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GdipDrawString");
            DetourAttach(&(PVOID&)TrueGdipDrawString, HOOK_GdipDrawString);
        }
    }
	DetourTransactionCommit();
}

void install_hook_textreplaceEx(int mode, std::string filepath, std::string key) {
    charReplaceMap = readReplaceMap(filepath, key);
    if (mode == 7) {
        HMODULE GDI = GetModuleHandleA("gdiplus.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GdipDrawString");
            TrueGdipDrawString = reinterpret_cast<pGdipDrawString>(procAddress);
        }
    }
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
    else if (mode == 4) {
        DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA_U8);
    }
    else if (mode == 5) {
        DetourAttach(&(PVOID&)TrueTextOutW, HOOK_TextOutW);
    }
    else if (mode == 6) {
        HMODULE GDI = GetModuleHandleA("gdi32.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GetGlyphOutline");
            DetourAttach(&(PVOID&)procAddress, HOOK_GetGlyphOutlineA);
        }
    }
    else if (mode == 7) {
        HMODULE GDI = GetModuleHandleA("gdiplus.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GdipDrawString");
            DetourAttach(&(PVOID&)TrueGdipDrawString, HOOK_GdipDrawString);
        }
    }
    DetourTransactionCommit();
}
#ifndef MD
void install_hook_textreplaceFromPackEx(int mode, std::string packpath, std::string filepath, std::string key) {
    if (mode == 7) {
        HMODULE GDI = GetModuleHandleA("gdiplus.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GdipDrawString");
            TrueGdipDrawString = reinterpret_cast<pGdipDrawString>(procAddress);
        }
    }
    charReplaceMap = readReplaceMapFromPack(packpath, filepath, key);
    DetourTransactionBegin();
    DetourUpdateThread(GetCurrentThread());
    DetourAttach(&(PVOID&)TrueGetTextExtentExPointA, HOOK_getTextExtentExPointA);
	DetourAttach(&(PVOID&)TrueGetTextExtentPoint32A, Hook_getTextExtentPoint32A);
    if (mode == 1) {
        DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA);
    }
    else if (mode == 2) {
        DetourAttach(&(PVOID&)TrueGetGlyphOutlineA, HOOK_GetGlyphOutlineA);
    }
    else if (mode == 3) {
        DetourAttach(&(PVOID&)TrueExtTextOutA, HOOK_ExtTextOutA);
    }
    else if (mode == 4) {
        DetourAttach(&(PVOID&)TrueTextOutA, HOOK_TextOutA_U8);
    }
    else if (mode == 5) {
        DetourAttach(&(PVOID&)TrueTextOutW, HOOK_TextOutW);
    }
    else if (mode == 6) {
        HMODULE GDI = GetModuleHandleA("gdi32.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GetGlyphOutline");
            DetourAttach(&(PVOID&)procAddress, HOOK_GetGlyphOutlineA);
        }
    }
    else if (mode == 7) {
        HMODULE GDI = GetModuleHandleA("gdiplus.dll");
        if (GDI) {
            FARPROC procAddress = GetProcAddress(GDI, "GdipDrawString");
            DetourAttach(&(PVOID&)TrueGdipDrawString, HOOK_GdipDrawString);
        }
    }
    DetourTransactionCommit();
}

#endif