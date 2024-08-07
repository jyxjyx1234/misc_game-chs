#ifndef RR_CONFIG_H_
#define RR_CONFIG_H_
#include <string>
#include <map>

char* GetAppPath(char* AppPath, int nSize);
namespace rr
{
	class RConfig
	{
	public:
		RConfig()
		{
		}
		~RConfig()
		{
		}
		bool ReadConfig(const std::string& filename);
		std::string ReadString(const char* section, const char* item, const char* default_value);
		int ReadInt(const char* section, const char* item, const int& default_value);
		float ReadFloat(const char* section, const char* item, const float& default_value);
	private:
		bool IsSpace(char c);
		bool IsCommentChar(char c);
		void Trim(std::string& str);
		bool AnalyseLine(const std::string& line, std::string& section, std::string& key, std::string& value);

	private:
		//std::map<std::string, std::string> settings_;
		std::map<std::string, std::map<std::string, std::string> >settings_;
	};
}

#endif