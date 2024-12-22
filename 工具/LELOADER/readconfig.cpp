#include <Windows.h>
#include "readconfig.h"
#include <fstream>
#include <iostream>
#include <sstream>
#include <stdlib.h>
#include <codecvt>
#include <map>
#include "convert.h"

char* GetAppPath(char* AppPath, int nSize)
{
	int i;
	memset(AppPath, 0, nSize);
#ifdef UNICODE
	GetModuleFileNameA(NULL, AppPath, nSize);
#else
	GetModuleFileName(NULL, AppPath, nSize);
#endif
	for (i = strlen(AppPath) + 1; i >= 0; i--)
	{
		if (AppPath[i] == '\\')
		{
			break;
		}
	}
	AppPath[i] = 0;
	return AppPath;
}


namespace rr
{

	bool RConfig::IsSpace(char c)
	{
		if (' ' == c || '\t' == c)
			return true;
		return false;
	}

	bool RConfig::IsCommentChar(char c)
	{
		switch (c) {
		case '#':
			return true;
		default:
			return false;
		}
	}

	void RConfig::Trim(std::string& str)
	{
		if (str.empty())
		{
			return;
		}
		int i, start_pos, end_pos;
		for (i = 0; i < str.size(); ++i) {
			if (!IsSpace(str[i])) {
				break;
			}
		}
		if (i == str.size())
		{
			str = "";
			return;
		}
		start_pos = i;
		for (i = str.size() - 1; i >= 0; --i) {
			if (!IsSpace(str[i])) {
				break;
			}
		}
		end_pos = i;
		str = str.substr(start_pos, end_pos - start_pos + 1);
	}

	bool RConfig::AnalyseLine(const std::string& line, std::string& section, std::string& key, std::string& value)
	{
		if (line.empty())
			return false;
		int start_pos = 0, end_pos = line.size() - 1, pos, s_startpos, s_endpos;
		if ((pos = line.find("#")) != -1)
		{
			if (0 == pos)
			{
				return false;
			}
			end_pos = pos - 1;
		}
		if (((s_startpos = line.find("[")) != -1) && ((s_endpos = line.find("]"))) != -1)
		{
			section = line.substr(s_startpos + 1, s_endpos - 1);
			return true;
		}
		std::string new_line = line.substr(start_pos, start_pos + 1 - end_pos);
		if ((pos = new_line.find('=')) == -1)
			return false;
		key = new_line.substr(0, pos);
		value = new_line.substr(pos + 1, end_pos + 1 - (pos + 1));
		Trim(key);
		if (key.empty()) {
			return false;
		}
		Trim(value);
		if ((pos = value.find("\r")) > 0)
		{
			value.replace(pos, 1, "");
		}
		if ((pos = value.find("\n")) > 0)
		{
			value.replace(pos, 1, "");
		}
		return true;
	}

	bool RConfig::ReadConfig(const std::string& filename) {
		char app[1024] = { 0 };
		GetAppPath(app, sizeof(app));
		std::string fpath = std::string(app) + "\\" + filename;

		std::ifstream infile(fpath);

		if (!infile) {
			MessageBoxW(NULL, string2LPCWSTR(fpath + " not found!"), NULL, NULL);
			return false;
		}

		std::string line, key, value, section;
		std::map<std::string, std::string> k_v;
		std::map<std::string, std::map<std::string, std::string> >::iterator it;
		while (getline(infile, line))
		{
			std::string str = UTF8ToANSI(line.c_str(),936).c_str();
			if (AnalyseLine(str, section, key, value))
			{
				it = settings_.find(section);
				if (it != settings_.end())
				{
					k_v[key] = value;
					it->second = k_v;
				}
				else
				{
					k_v.clear();
					settings_.insert(std::make_pair(section, k_v));
				}
			}
			key.clear();
			value.clear();
		}
		infile.close();
		return true;
	}

	std::string RConfig::ReadString(const char* section, const char* item, const char* default_value)
	{
		std::string tmp_s(section);
		std::string tmp_i(item);
		std::string def(default_value);
		std::map<std::string, std::string> k_v;
		std::map<std::string, std::string>::iterator it_item;
		std::map<std::string, std::map<std::string, std::string> >::iterator it;
		it = settings_.find(tmp_s);
		if (it == settings_.end())
		{
			return def;
		}
		k_v = it->second;
		it_item = k_v.find(tmp_i);
		if (it_item == k_v.end())
		{
			return def;
		}
		return it_item->second;
	}

	int RConfig::ReadInt(const char* section, const char* item, const int& default_value)
	{
		std::string tmp_s(section);
		std::string tmp_i(item);
		std::map<std::string, std::string> k_v;
		std::map<std::string, std::string>::iterator it_item;
		std::map<std::string, std::map<std::string, std::string> >::iterator it;
		it = settings_.find(tmp_s);
		if (it == settings_.end())
		{
			return default_value;
		}
		k_v = it->second;
		it_item = k_v.find(tmp_i);
		if (it_item == k_v.end())
		{
			return default_value;
		}
		return atoi(it_item->second.c_str());
	}

	float RConfig::ReadFloat(const char* section, const char* item, const float& default_value)
	{
		std::string tmp_s(section);
		std::string tmp_i(item);
		std::map<std::string, std::string> k_v;
		std::map<std::string, std::string>::iterator it_item;
		std::map<std::string, std::map<std::string, std::string> >::iterator it;
		it = settings_.find(tmp_s);
		if (it == settings_.end())
		{
			return default_value;
		}
		k_v = it->second;
		it_item = k_v.find(tmp_i);
		if (it_item == k_v.end())
		{
			return default_value;
		}
		return atof(it_item->second.c_str());
	}
}

