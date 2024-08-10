#ifndef transmap_h
#define transmap_h

#include <map>
#include <string>

struct CompareWideString {
    bool operator()(const std::wstring& a, const std::wstring& b) const {
        return wcscmp(a.c_str(), b.c_str()) < 0;
    }
};
void initTransMap(std::map <std::wstring, std::wstring, CompareWideString>& a);

#endif