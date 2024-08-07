#include "dump_text.h"
#include <Windows.h>
#include <iostream>
#include "detours.h"
#include "CONTRY_CHANGE.h"
#include "convert.h"
#include "readconfig.h"
#include <stdio.h>
#include <io.h>
#include <fcntl.h>
#include "changetext.h"
#pragma comment( lib, "detours.lib")

LPCSTR idx = "";
int printed_len = 0;
char app[1024] = { 0 };
char* a = GetAppPath(app, sizeof(app));
std::map<LPCSTR, LPCSTR, CStringCompare> Changemap = readKeyValuePairs(std::string(app) + "\\" + "trans.dat");



void Print_LPCSTR_to_File(LPCSTR str, UINT len, UINT y)
{
	LPCSTR result = SubString(str, len);
	FILE* file;
	fopen_s(&file, "output.txt", "a");
	if (file)
	{
		if (result)
		{
			fprintf(file, "%d, %s\n", y, result);
		}
		else
		{
			fprintf(file, "(null)\n");
		}
		fclose(file);
	}
}

void print_LPCSTR(LPCSTR text,UINT len) {
	LPCSTR result = SubString(text, len);
	int wlen = MultiByteToWideChar(CP_ACP, 0, result, -1, NULL, 0);
	wchar_t* wstr = new wchar_t[wlen];
	MultiByteToWideChar(932, 0, result, -1, wstr, wlen);
	printf("%ls\n", wstr);
	delete[] wstr;
}

typedef int(WINAPI* pExtTextOutA) (
   HDC        hdc,
   int        x,
   int        y,
   UINT       options,
   const RECT* lprect,
   LPCSTR     lpString,
   UINT       c,
   const INT* lpDx
);

pExtTextOutA T_ExtTextOutA = ExtTextOutA;



int WINAPI newExtTextOutA_dumptxt(
   HDC        hdc,
   int        x,
   int        y,
   UINT       options,
   const RECT* lprect,
   LPCSTR     lpString,
   UINT       c,
   const INT* lpDx
)
{
	if (options != 0) {
		return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
	}

	Print_LPCSTR_to_File(lpString, c, y);

	//测试用，输出文本和函数信息到控制台
	/*
	printf("message:");
	print_LPCSTR(lpString,c);
	printf("\nx:%d\ny:%d\nc:%d\n\n",x,y,c);
	*/

	//测试用，用messageBOX显示文本
	/*
	LPCWSTR out1 = L"message:";
	LPCWSTR message = ConvertAnsiToWide(lpString);
	LPCWSTR out2 = L" c:";
	LPCWSTR opt = UintToLPCWSTR(options);
	std::wstring out1_(out1);
	std::wstring message_(message);
	std::wstring out2_(out2);
	std::wstring opt_(UintToLPCWSTR(c));
	std::wstring res_ = out1_ + message_ + out2_ + opt_;
	LPCWSTR res = res_.c_str();
	if (options == 0) {
		MessageBoxW(NULL, res, NULL, NULL);
	}
	*/

	//测试用，输出任意文本
	/*
	HFONT hNewFont = CreateFont(
	   0,                     // 字体高度
	   0,                      // 字体宽度
	   0,                      // 字体倾斜角度
	   0,                      // 字体倾斜角度
	   FW_SEMIBOLD,              // 字体粗细
	   FALSE,                  // 是否使用斜体
	   FALSE,                  // 是否使用下划线
	   FALSE,                  // 是否使用删除线
	   GB2312_CHARSET,        // 字符集
	   OUT_DEFAULT_PRECIS,     // 输出精度
	   CLIP_DEFAULT_PRECIS,    // 裁剪精度
	   DEFAULT_QUALITY,        // 输出质量
	   DEFAULT_PITCH | FF_MODERN,  // 字体间距和字体族
	   L"Microsoft YaHei UI"                // 字体名称
	);
	HFONT hOldFont = (HFONT)SelectObject(hdc, hNewFont);
	char text[] = "汉化测试汉化测试";
	
	BOOL result = T_ExtTextOutA(hdc, x, y, options, lprect, text, 16, lpDx);
	SelectObject(hdc, hOldFont);
	DeleteObject(hNewFont);
	return result;
	*/
	return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
	
}

int WINAPI newExtTextOutA_changetxt(
   HDC        hdc,
   int        x,
   int        y,
   UINT       options,
   const RECT* lprect,
   LPCSTR     lpString,
   UINT       c,
   const INT* lpDx
)
{
	if (options != 0) {
		return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
	}

	ChangeTextOutput out = ChangeText(lpString, y, c, idx, printed_len, Changemap);

	if (not out.flag) {
		return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
	}
	rr::RConfig config;
	config.ReadConfig("hook.ini");
	int fontH = config.ReadInt("GLOBAL", "FONTH", 0);
	int fontW = config.ReadInt("GLOBAL", "FONTW", 0);
	int wchar_output = config.ReadInt("GLOBAL", "WCAHROUTPUT", 0);
	idx = out.idx_;
	printed_len = out.printed_len_;
	LPCSTR transed_text = out.transed_text_;

	//测试版
	if ( wchar_output != 0 ) {
		LPCWSTR w_transed_text = ConvertAnsiToWide(transed_text, 936);
		c = wcslen(w_transed_text);
		HFONT hNewFont = CreateFontW(
			  fontH,//高度
			  fontW,//宽度
			  0,//转角
			  0,//转角
			  700,//粗细
			  0,
			  0,
			  0,
			  GB2312_CHARSET,
			  OUT_DEFAULT_PRECIS,
			  CLIP_DEFAULT_PRECIS,
			  PROOF_QUALITY,
			  FIXED_PITCH | FF_MODERN,
			  L"Microsoft YaHei UI"
		);

		HFONT hPrevFont = ( HFONT ) SelectObject(hdc, hNewFont);
		SelectObject(hdc, hNewFont);
		BOOL result = ExtTextOutW(hdc, x, y, options, lprect, w_transed_text, c, lpDx);
		SelectObject(hdc, hPrevFont);
		DeleteObject(hNewFont);
		return result;
	}
	
	c = strlen(out.transed_text_);
	

	HFONT hNewFont = CreateFontA(
		  fontH,//高度
		  fontW,//宽度
		  0,//转角
		  0,//转角
		  700,//粗细
		  0,
		  0,
		  0,
		  GB2312_CHARSET,
		  OUT_DEFAULT_PRECIS,
		  CLIP_DEFAULT_PRECIS,
		  PROOF_QUALITY,
		  DEFAULT_PITCH | FF_MODERN,
		  (char*)"Microsoft YaHei UI"
	);

	HFONT hPrevFont = ( HFONT ) SelectObject(hdc, hNewFont);
	SelectObject(hdc, hNewFont);
	
	//int extraSpace = 2; // 根据需要调整
	//SetTextCharacterExtra(hdc, extraSpace);//会导致回想界面崩溃
	BOOL result = T_ExtTextOutA(hdc, x, y, options, lprect, transed_text, c, lpDx);
	SelectObject(hdc, hPrevFont);
	DeleteObject(hNewFont);
	return result;
	
}

int dump_text(rr::RConfig config) {
	DetourRestoreAfterWith();
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	if (config.ReadInt("DUMPTEXT", "ExtTextOutA", 0) == 1) {
		if (config.ReadInt("DUMPTEXT", "MODE", 0) == 1) {
			DetourAttach(&(PVOID&)T_ExtTextOutA, newExtTextOutA_dumptxt);
		}
		if (config.ReadInt("DUMPTEXT", "MODE", 0) == 2) {
			DetourAttach(&(PVOID&)T_ExtTextOutA, newExtTextOutA_changetxt);
		}
	}
	DetourTransactionCommit();
	return 0;
}

/*
HFONT hNewFont = CreateFontA(
		  0,//高度
		  0,//宽度
		  0,//转角
		  0,//转角
		  700,//粗细
		  0,
		  0,
		  0,
		  GB2312_CHARSET,
		  OUT_DEFAULT_PRECIS,
		  CLIP_DEFAULT_PRECIS,
		  PROOF_QUALITY,
		  DEFAULT_PITCH| FF_MODERN,
		  "Microsoft YaHei UI"
);*/

