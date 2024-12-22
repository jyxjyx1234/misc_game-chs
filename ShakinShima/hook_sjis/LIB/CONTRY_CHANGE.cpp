#include <Windows.h>
#include "detours.h"
#include "CONTRY_CHANGE.h"
#pragma comment( lib, "detours.lib")
#include "readconfig.h"


typedef UINT (WINAPI* pGetACP)();
pGetACP T_GetACP = GetACP;


UINT WINAPI newGetACP() {
	if (T_GetACP() == 0x3A8) {
		return (UINT)0x3A4;
	}
	return T_GetACP();
}

typedef int(WINAPI* pMultiByteToWideChar) (
	UINT CodePage,
	DWORD dwFlags,
	LPCCH lpMultiByteStr,
	int cbMultiByte,
	LPWSTR lpWideCharStr,
	int cchWideChar);

pMultiByteToWideChar T_MultiByteToWideChar = MultiByteToWideChar;

int WINAPI newMultiByteToWideChar(
	UINT CodePage,
	DWORD dwFlags,
	LPCCH lpMultiByteStr,
	int cbMultiByte,
	LPWSTR lpWideCharStr,
	int cchWideChar
	) 
{
	if (CodePage == 936)
		CodePage = 932;
	return T_MultiByteToWideChar(CodePage, dwFlags, lpMultiByteStr, cbMultiByte, lpWideCharStr, cchWideChar);
}

int CONTRY_C(rr::RConfig config) {
	DetourRestoreAfterWith();
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());

	if (config.ReadInt("LE", "GETACP", 0) == 1) {
		DetourAttach(&(PVOID&)T_GetACP, newGetACP);
	}
	if (config.ReadInt("LE", "MULTIBYTEToWIDECHAR", 0) == 1) {
		DetourAttach(&(PVOID&)T_MultiByteToWideChar, newMultiByteToWideChar);
	}
	DetourTransactionCommit();
	return 0;
}