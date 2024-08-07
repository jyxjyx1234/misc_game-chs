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
#include "drawt.h"
#pragma comment( lib, "detours.lib")

LPCSTR idx = "";
int printed_len = 0;
char app[1024] = { 0 };
char* a = GetAppPath(app, sizeof(app));
std::map<LPCSTR, LPCSTR, CStringCompare> Changemap;
int flag = 0;

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
	if ( flag == 0 ) {
		StartOverlay(L"SKS_CHS");
		flag = 1;
	}

	if (options != 0) {
		return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
	}
	print_LPCSTR(lpString, c);

	ChangeTextOutput out = ChangeText(SubString(lpString, c), y, Changemap);

	if ( out.flag == 0 ) {//未找到译文
		printf("Not found in trans file!\n");
		return T_ExtTextOutA(hdc, x, y, options, lprect, lpString, c, lpDx);
	}
	if ( out.flag == 2 ) {//不是第一行
		return 1;
	}
	if ( out.flag == 1 ) {
		DrawOverlayText(ConvertAnsiToWide(out.transed_text_,936));
	}
	return 1;
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
			Changemap = readKeyValuePairs(std::string(app) + "\\" + "trans.dat");
			DetourAttach(&(PVOID&)T_ExtTextOutA, newExtTextOutA_changetxt);
		}
	}
	DetourTransactionCommit();
	return 0;
}
