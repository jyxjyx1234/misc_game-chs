#ifndef dump_text_H_
#define dump_text_H_
#include <Windows.h>
#include <iostream>
#include "detours.h"
#include "CONTRY_CHANGE.h"
#include "convert.h"
#pragma comment( lib, "detours.lib")
#include "readconfig.h"
#include <stdio.h>
#include <io.h>
#include <fcntl.h>
#include "changetext.h"


int dump_text(rr::RConfig config);
extern LPCSTR idx;
extern int printed_len;
extern char app[1024];
extern char* a ;
extern std::map<LPCSTR, LPCSTR, CStringCompare> Changemap;

#endif