#ifndef changetext_H_
#define changetext_H_

#include <Windows.h>
#include <iostream>
#include <fstream>
#include <string>
#include <map>
#include <locale>
#include <codecvt>
#include "convert.h"

struct CStringCompare {
	bool operator()(const char* a, const char* b) const {
		return strcmp(a, b) < 0;
	}
};

std::map<LPCSTR, LPCSTR, CStringCompare> readKeyValuePairs(const std::string& filePath);

struct ChangeTextOutput {
	LPCSTR transed_text_;
	LPCSTR idx_;
	int printed_len_;
	BOOL flag;
};

ChangeTextOutput ChangeText(LPCSTR ori_text, int y, int len, LPCSTR idx, int printed_l, std::map<LPCSTR, LPCSTR, CStringCompare> ChangeMap);

#endif