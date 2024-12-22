#ifndef conv_CONFIG_H_
#define conv_CONFIG_H_

#include <Windows.h>
#include <iostream>

void printLPCSTRAsBytes(LPCSTR str);
LPCWSTR string2LPCWSTR(std::string str);
std::string UTF8ToANSI(const char* str, int codepage);
LPCWSTR ConvertAnsiToWide(LPCSTR ansiStr, UINT codepage);
LPCWSTR UintToLPCWSTR(unsigned int value);
std::wstring StringToWString(const std::string& str);
std::wstring sjisLPCSTRToWideString(LPCSTR str);
LPCSTR WideStringToGBKLPCSTR(std::wstring str);
LPCSTR SubString(LPCSTR originalStr, int n);
LPCSTR WideStringToSJISLPCSTR(std::wstring str);
void ShowCharArrayAsBytes(const char* data, size_t length);
std::string ANSIToANSI(const char* str, int codepage1, int codepage2);
std::string replaceSubString(const std::string& ori, const std::string& a, const std::string& b);
#endif