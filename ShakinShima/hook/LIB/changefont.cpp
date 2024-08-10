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


typedef HFONT(WINAPI* pCreateFontIndirectA) (
	const LOGFONTA* lplf
);

pCreateFontIndirectA T_CreateFontIndirectA = CreateFontIndirectA;

HFONT NewCreateFontIndirectA(const LOGFONTA* lplf) {
	LOGFONTA modifiedLogFont = *lplf;
	modifiedLogFont.lfCharSet = GB2312_CHARSET;
	return T_CreateFontIndirectA(&modifiedLogFont);
}

int change_font() {
	DetourRestoreAfterWith();
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourAttach(&(PVOID&)T_CreateFontIndirectA, NewCreateFontIndirectA);
	DetourTransactionCommit();
	return 0;
<<<<<<< HEAD
}

=======
}
>>>>>>> 305a01429aeb061fbf1bc78e9ab5c94ecca341b1
