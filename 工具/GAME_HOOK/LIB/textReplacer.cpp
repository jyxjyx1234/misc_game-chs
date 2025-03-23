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
    std::ifstream file(filename, std::ios::binary);
    if (!file.is_open()) {
		MessageBoxA(NULL, (std::string("Unable to open file ") + filename).c_str(), "Error", MB_OK);
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

	//std::ofstream out("log.txt", std::ios::out);

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

#include <windows.h>
#include <stdio.h>

void PrintHDCInfo(HDC hdc) {
    // 获取当前点
    POINT ptCurrent;
    if (GetCurrentPositionEx(hdc, &ptCurrent)) {
        printf("Current Position: (%ld, %ld)\n", ptCurrent.x, ptCurrent.y);
    }
    else {
        printf("Failed to get current position.\n");
    }

    // 获取视口原点
    POINT ptViewportOrg;
    if (GetViewportOrgEx(hdc, &ptViewportOrg)) {
        printf("Viewport Origin: (%ld, %ld)\n", ptViewportOrg.x, ptViewportOrg.y);
    }
    else {
        printf("Failed to get viewport origin.\n");
    }

    // 获取窗口原点
    POINT ptWindowOrg;
    if (GetWindowOrgEx(hdc, &ptWindowOrg)) {
        printf("Window Origin: (%ld, %ld)\n", ptWindowOrg.x, ptWindowOrg.y);
    }
    else {
        printf("Failed to get window origin.\n");
    }

    // 获取视口范围和窗口范围
    SIZE szViewportExt, szWindowExt;
    if (GetViewportExtEx(hdc, &szViewportExt)) {
        printf("Viewport Extent: (%ld, %ld)\n", szViewportExt.cx, szViewportExt.cy);
    }
    else {
        printf("Failed to get viewport extent.\n");
    }
    if (GetWindowExtEx(hdc, &szWindowExt)) {
        printf("Window Extent: (%ld, %ld)\n", szWindowExt.cx, szWindowExt.cy);
    }
    else {
        printf("Failed to get window extent.\n");
    }

    // 获取世界变换矩阵
    XFORM xform;
    if (GetWorldTransform(hdc, &xform)) {
        printf("World Transform Matrix:\n");
        printf("  eM11: %f, eM12: %f\n", xform.eM11, xform.eM12);
        printf("  eM21: %f, eM22: %f\n", xform.eM21, xform.eM22);
        printf("  eDx:  %f, eDy:  %f\n", xform.eDx, xform.eDy);
    }
    else {
        printf("No world transform applied.\n");
    }

    // 获取裁剪区域
    HRGN hClipRgn = CreateRectRgn(0, 0, 0, 0);
    if (GetClipRgn(hdc, hClipRgn) == 1) {
        RECT rcClip;
        if (GetRgnBox(hClipRgn, &rcClip)) {
            printf("Clipping Region: (%ld, %ld) to (%ld, %ld)\n",
                rcClip.left, rcClip.top, rcClip.right, rcClip.bottom);
        }
        else {
            printf("Failed to get clipping region bounds.\n");
        }
    }
    else {
        printf("No clipping region applied.\n");
    }
    DeleteObject(hClipRgn);

    // 获取背景模式和文本颜色
    int bgMode = GetBkMode(hdc);
    COLORREF bgColor = GetBkColor(hdc);
    COLORREF textColor = GetTextColor(hdc);
    printf("Background Mode: %s\n", bgMode == OPAQUE ? "OPAQUE" : "TRANSPARENT");
    printf("Background Color: RGB(%d, %d, %d)\n",
        GetRValue(bgColor), GetGValue(bgColor), GetBValue(bgColor));
    printf("Text Color: RGB(%d, %d, %d)\n",
        GetRValue(textColor), GetGValue(textColor), GetBValue(textColor));

    // 获取字体信息（可选）
    TEXTMETRIC tm;
    if (GetTextMetrics(hdc, &tm)) {
        printf("Font Information:\n");
        printf("  Height: %ld, Ascent: %ld, Descent: %ld\n",
            tm.tmHeight, tm.tmAscent, tm.tmDescent);
        printf("  Average Char Width: %ld\n", tm.tmAveCharWidth);
    }
    else {
        printf("Failed to get text metrics.\n");
    }
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
    logFont.lfCharSet = 134;
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
	if (lpString == NULL) {
		return TrueExtTextOutA(hdc, X, Y, fuOptions, lprc, lpString, cbCount, lpDx);
	}
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
        return res;
    }
    DWORD res = TrueGetGlyphOutlineA(hdc, uChar, uFormat, lpgm, cbBuffer, lpvBuffer, lpmat2);
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

void install_hook_textreplaceEx(int mode, std::string filepath, std::string key) {
    charReplaceMap = readReplaceMap(filepath, key);
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