#include <Windows.h>
#include <iostream>
#include <sstream>
#include "convert.h"
#include <iomanip>
#include <vector>

LPCWSTR string2LPCWSTR(std::string str)
{
	size_t size = str.length();
	int wLen = ::MultiByteToWideChar(CP_UTF8,
		0,
		str.c_str(),
		-1,
		NULL,
		0);
	wchar_t* buffer = new wchar_t[wLen + 1];
	memset(buffer, 0, (wLen + 1) * sizeof(wchar_t));
	MultiByteToWideChar(936, 0, str.c_str(), size, (LPWSTR)buffer, wLen);
	return buffer;
}

std::string UTF8ToGB(const char* str)
{
	std::string result;
	WCHAR* strSrc;
	LPSTR szRes;

	//获得临时变量的大小
	int i = MultiByteToWideChar(CP_UTF8, 0, str, -1, NULL, 0);
	strSrc = new WCHAR[i + 1];
	MultiByteToWideChar(CP_UTF8, 0, str, -1, strSrc, i);

	//获得临时变量的大小
	i = WideCharToMultiByte(936, 0, strSrc, -1, NULL, 0, NULL, NULL);
	szRes = new CHAR[i + 1];
	WideCharToMultiByte(936, 0, strSrc, -1, szRes, i, NULL, NULL);

	result = szRes;
	delete[]strSrc;
	delete[]szRes;

	return result;
}

LPCWSTR ConvertAnsiToWide(LPCSTR ansiStr,UINT codepage = CP_ACP)
{
	int length = MultiByteToWideChar(codepage, 0, ansiStr, -1, NULL, 0);
	wchar_t* wideStr = new wchar_t[length];
	MultiByteToWideChar(codepage, 0, ansiStr, -1, wideStr, length);
	return wideStr;
}

LPCWSTR UintToLPCWSTR(unsigned int value)
{
	static WCHAR buffer[32];  // 静态缓冲区，注意线程安全性
	wsprintfW(buffer, L"%u", value);
	return buffer;
}

std::wstring StringToWString(const std::string& str)
{
	int size_needed = MultiByteToWideChar(CP_UTF8, 0, &str[0], (int)str.size(), NULL, 0);
	std::wstring wstrTo(size_needed, 0);
	MultiByteToWideChar(CP_UTF8, 0, &str[0], (int)str.size(), &wstrTo[0], size_needed);
	return wstrTo;
}

std::wstring sjisLPCSTRToWideString(LPCSTR str)
{
	if (str == nullptr) return std::wstring();

	int size_needed = MultiByteToWideChar(CP_ACP, 0, str, -1, NULL, 0);
	std::wstring wstrTo(size_needed, 0);
	MultiByteToWideChar(CP_ACP, 0, str, -1, &wstrTo[0], size_needed);
	return wstrTo;
}

LPCSTR WideStringToGBKLPCSTR(std::wstring str)
{
	int nLen = WideCharToMultiByte(936, 0, str.c_str(), -1, NULL, 0, NULL, NULL);

	if (nLen == 0)
	{
		return nullptr;
	}

	// 分配多字节字符数组
	char* pGbkString = new char[nLen];

	// 执行实际的转换
	int nResult = WideCharToMultiByte(936, 0, str.c_str(), -1, pGbkString, nLen, NULL, NULL);

	if (nResult == 0)
	{
		delete[] pGbkString;
		return nullptr;
	}

	return pGbkString;
}

LPCSTR WideStringToSJISLPCSTR(std::wstring str)
{
	int nLen = WideCharToMultiByte(936, 0, str.c_str(), -1, NULL, 0, NULL, NULL);

	if (nLen == 0)
	{
		return nullptr;
	}

	// 分配多字节字符数组
	char* pSjisString = new char[nLen];

	// 执行实际的转换
	int nResult = WideCharToMultiByte(932, 0, str.c_str(), -1, pSjisString, nLen, NULL, NULL);

	if (nResult == 0)
	{
		delete[] pSjisString;
		return nullptr;
	}

	return pSjisString;
}

LPCSTR SubString(LPCSTR originalStr, int n) {
	// 检查 n 是否超过原始字符串的长度
	size_t originalLength = strlen(originalStr);
	if (n > originalLength) {
		n = originalLength;
	}

	// 分配新的内存 (+1 用于 null 终止符)
	char* newStr = new char[n + 1];

	// 复制前 n 个字节
	errno_t err = strncpy_s(newStr, n + 1, originalStr, n);
	if (err != 0) {
		// 如果复制失败，释放内存并返回 NULL
		delete[] newStr;
		return NULL;
	}

	// 确保新字符串以 null 结尾
	newStr[n] = '\0';

	// 返回新的 LPCSTR
	return newStr;
}

void printLPCSTRAsBytes(LPCSTR str) {
	if (str == nullptr) {
		std::cout << "Null string" << std::endl;
		return;
	}

	const unsigned char* bytes = reinterpret_cast<const unsigned char*>(str);
	size_t length = strlen(str);

	for (size_t i = 0; i < length; ++i) {
		// 打印十六进制值
		std::cout << "0x" << std::setw(2) << std::setfill('0') << std::hex << static_cast<int>(bytes[i]);

		// 如果不是最后一个字节，打印一个空格
		if (i < length - 1) {
			std::cout << " ";
		}
	}
	std::cout << std::endl;

	// 重置输出流的格式
	std::cout << std::dec;
}

void ShowCharArrayAsBytes(const char* data, size_t length)
{
	std::ostringstream oss;

	for (size_t i = 0; i < length; ++i)
	{
		// 将每个字节转换为两位十六进制
		oss << std::hex << std::setw(2) << std::setfill('0') << static_cast<int>(static_cast<unsigned char>(data[i])) << " ";

		// 每16个字节换行
		if ((i + 1) % 16 == 0)
		{
			oss << "\n";
		}
	}

	std::string hexString = oss.str();

	// 显示MessageBox
	MessageBoxA(NULL, hexString.c_str(), "Byte Representation", MB_OK);
}

std::string GBKToSJIS(const std::string& gbk_str) {
	// 步骤1: GBK到Unicode
	int len = MultiByteToWideChar(936, 0, gbk_str.c_str(), -1, NULL, 0);
	if ( len == 0 ) {
		return ""; // 转换失败
	}

	std::vector<wchar_t> unicode_str(len);
	if ( MultiByteToWideChar(936, 0, gbk_str.c_str(), -1, &unicode_str[ 0 ], len) == 0 ) {
		return ""; // 转换失败
	}

	// 步骤2: Unicode到Shift-JIS
	len = WideCharToMultiByte(932, 0, &unicode_str[ 0 ], -1, NULL, 0, NULL, NULL);
	if ( len == 0 ) {
		return ""; // 转换失败
	}

	std::vector<char> sjis_str(len);
	if ( WideCharToMultiByte(932, 0, &unicode_str[ 0 ], -1, &sjis_str[ 0 ], len, NULL, NULL) == 0 ) {
		return ""; // 转换失败
	}

	return std::string(&sjis_str[ 0 ]);
}