#include "VFS.h"
#include <filesystem>

pCreateFileA TrueCreateFileA = CreateFileA;
pGetFileSize TrueGetFileSize = GetFileSize;
pReadFile TrueReadFile = ReadFile;
pCloseHandle TrueCloseHandle = CloseHandle;
pGetFileAttributesA TrueGetFileAttributesA = GetFileAttributesA;
pGetFileType TrueGetFileType = GetFileType;
pSetFilePointer TrueSetFilePointer = SetFilePointer;
pFindFirstFileA TrueFindFirstFileA = FindFirstFileA;
pFindNextFileA TrueFindNextFileA = FindNextFileA;
pFindClose TrueFindClose = FindClose;
std::string VFS_packname;

std::map<std::string, int> FileMap;
std::vector<std::string> FileNames;
string_with_pointer FileBuffer[0x1000];
int pFileBuffer = 0;

static bool WildcardMatch(const std::string& pattern, const std::string& str)
{
    const char* p = pattern.c_str();
    const char* s = str.c_str();
    const char* star = nullptr;
    const char* ss = nullptr;

    while (*s)
    {
        if (*p == '?' || *p == *s)
        {
            ++p;
            ++s;
            continue;
        }
        if (*p == '*')
        {
            star = p++;
            ss = s;
            continue;
        }
        if (star)
        {
            p = star + 1;
            s = ++ss;
            continue;
        }
        return false;
    }

    while (*p == '*') ++p;
    return *p == '\0';
}

// 统一把字符串转小写
static std::string ToLower(const std::string& s)
{
    std::string r = s;
    std::transform(r.begin(), r.end(), r.begin(),
                   [](unsigned char c) { return (char)::tolower(c); });
    return r;
}

// 从我们的 VFS 索引填充 WIN32_FIND_DATAA
static void FillFindDataFromVfsIndex(int index, LPWIN32_FIND_DATAA lpFindFileData)
{
    ZeroMemory(lpFindFileData, sizeof(WIN32_FIND_DATAA));

    lpFindFileData->dwFileAttributes = FILE_ATTRIBUTE_NORMAL;

    DWORD size = static_cast<DWORD>(FileBuffer[index].content.size());
    lpFindFileData->nFileSizeHigh = 0;
    lpFindFileData->nFileSizeLow  = size;

    FILETIME ft;
    GetSystemTimeAsFileTime(&ft);
    lpFindFileData->ftCreationTime   = ft;
    lpFindFileData->ftLastAccessTime = ft;
    lpFindFileData->ftLastWriteTime  = ft;

    // 只用文件名部分
    std::string fullName  = FileNames[index];
    std::string baseName  = std::filesystem::path(fullName).filename().string();

    // 防止越界
    strcpy_s(lpFindFileData->cFileName, baseName.c_str());
    lpFindFileData->cAlternateFileName[0] = '\0';
}

struct VFS_FIND_HANDLE
{
	std::vector<int> matched;   // VFS 中所有匹配的文件索引
	size_t current = 0;         // 当前匹配位置
	HANDLE realHandle = INVALID_HANDLE_VALUE; // 底层 FindFirst 返回的句柄
	bool realStarted = false;   // 是否已经开始枚举真实文件
	std::string searchPath;     // 原始的 lpFileName（带路径的 pattern）
};

static std::vector<VFS_FIND_HANDLE*> g_VfsFindHandles;

// 根据 HANDLE 判断是不是我们的 VFS 句柄
static VFS_FIND_HANDLE* GetVfsFindHandle(HANDLE h)
{
	VFS_FIND_HANDLE* ptr = reinterpret_cast<VFS_FIND_HANDLE*>(h);
	for (auto* p : g_VfsFindHandles)
	{
		if (p == ptr)
			return p;
	}
	return nullptr;
}


void initPackage(std::string packname, std::string enc) {
	CustomPack::readPackHeader(packname, FileNames);
	for (const auto& fileName : FileNames) {
		if (CustomPack::isInPack(packname, fileName)) {
			std::cout << "Loading file: " << fileName << std::endl;
			FileBuffer[pFileBuffer].ptr = 0;
			FileBuffer[pFileBuffer].content = CustomPack::getFile(packname, enc, fileName);
			FileMap[fileName] = pFileBuffer;
			pFileBuffer++;
		}
	}
}

HANDLE WINAPI HookedFindFirstFileA(LPCSTR lpFileName, LPWIN32_FIND_DATAA lpFindFileData)
{
	std::cout << "Hooked FindFirstFileA: " << (lpFileName ? lpFileName : "(null)") << std::endl;

	if (!lpFileName || !lpFindFileData)
		return TrueFindFirstFileA(lpFileName, lpFindFileData);

	// 取出 pattern 的“文件名部分”
	std::string fullPathPattern(lpFileName);
	std::string patternName = std::filesystem::path(fullPathPattern).filename().string();

	std::string patternLower = ToLower(patternName);

	// 在我们的 VFS 里找所有匹配的文件（只按文件名匹配）
	std::vector<int> vfsMatches;
	for (int i = 0; i < pFileBuffer; ++i)
	{
		std::string fileNameOnly = std::filesystem::path(FileNames[i]).filename().string();
		std::string fileLower = ToLower(fileNameOnly);

		if (WildcardMatch(patternLower, fileLower))
		{
			vfsMatches.push_back(i);
		}
	}

	if (!vfsMatches.empty())
	{
		// 有至少一个 VFS 文件匹配：优先返回 VFS 的
		auto* h = new VFS_FIND_HANDLE();
		h->matched = std::move(vfsMatches);
		h->current = 0;
		h->realHandle = INVALID_HANDLE_VALUE;
		h->realStarted = false;
		h->searchPath = lpFileName; // 原始 pattern，后面枚举真实文件用

		g_VfsFindHandles.push_back(h);

		// 填充第一个 VFS 匹配
		FillFindDataFromVfsIndex(h->matched[h->current], lpFindFileData);

		return reinterpret_cast<HANDLE>(h);
	}

	// VFS 中没匹配，完全交给系统
	return TrueFindFirstFileA(lpFileName, lpFindFileData);
}

BOOL WINAPI HookedFindNextFileA(HANDLE hFindFile, LPWIN32_FIND_DATAA lpFindFileData)
{
	if (!lpFindFileData)
		return TrueFindNextFileA(hFindFile, lpFindFileData);

	VFS_FIND_HANDLE* vfs = GetVfsFindHandle(hFindFile);
	if (!vfs)
	{
		// 不是我们的虚拟句柄，交给系统
		return TrueFindNextFileA(hFindFile, lpFindFileData);
	}

	// 1) 先枚举 VFS 中剩余的文件
	if (vfs->current + 1 < vfs->matched.size())
	{
		++vfs->current;
		FillFindDataFromVfsIndex(vfs->matched[vfs->current], lpFindFileData);
		return TRUE;
	}

	// 2) VFS 枚举完了，开始/继续枚举真实文件系统
	auto isVfsFileName = [vfs](const std::string& name) -> bool
		{
			std::string lowerName = ToLower(std::filesystem::path(name).filename().string());
			for (int idx : vfs->matched)
			{
				std::string vName = std::filesystem::path(FileNames[idx]).filename().string();
				if (ToLower(vName) == lowerName)
					return true;
			}
			return false;
		};

	WIN32_FIND_DATAA realData;

	if (!vfs->realStarted)
	{
		vfs->realStarted = true;
		vfs->realHandle = TrueFindFirstFileA(vfs->searchPath.c_str(), &realData);
		if (vfs->realHandle == INVALID_HANDLE_VALUE)
		{
			// 系统那边也没找到更多文件
			// TrueFindFirstFileA 已经设置了 GetLastError，这里只返回 FALSE
			return FALSE;
		}

		// 跳过与 VFS 重复的文件
		do
		{
			if (!isVfsFileName(realData.cFileName))
			{
				*lpFindFileData = realData;
				return TRUE;
			}
		} while (TrueFindNextFileA(vfs->realHandle, &realData));

		SetLastError(ERROR_NO_MORE_FILES);
		return FALSE;
	}
	else
	{
		if (vfs->realHandle == INVALID_HANDLE_VALUE)
		{
			SetLastError(ERROR_NO_MORE_FILES);
			return FALSE;
		}

		while (TrueFindNextFileA(vfs->realHandle, &realData))
		{
			if (!isVfsFileName(realData.cFileName))
			{
				*lpFindFileData = realData;
				return TRUE;
			}
		}

		SetLastError(ERROR_NO_MORE_FILES);
		return FALSE;
	}
}

BOOL WINAPI HookedFindClose(HANDLE hFindFile)
{
	VFS_FIND_HANDLE* vfs = GetVfsFindHandle(hFindFile);
	if (!vfs)
	{
		return TrueFindClose(hFindFile);
	}

	if (vfs->realStarted && vfs->realHandle != INVALID_HANDLE_VALUE)
	{
		TrueFindClose(vfs->realHandle);
	}

	auto it = std::find(g_VfsFindHandles.begin(), g_VfsFindHandles.end(), vfs);
	if (it != g_VfsFindHandles.end())
		g_VfsFindHandles.erase(it);

	delete vfs;
	return TRUE;
}


HANDLE WINAPI HookedCreateFileA(LPCSTR lpFileName,
	DWORD dwDesiredAccess,
	DWORD dwShareMode,
	LPSECURITY_ATTRIBUTES lpSecurityAttributes,
	DWORD dwCreationDisposition,
	DWORD dwFlagsAndAttributes,
	HANDLE hTemplateFile) {
	std::cout << "Hooked CreateFileA: " << lpFileName << std::endl;
	if (lpFileName != nullptr) {
		std::string fullPath(lpFileName);
		std::string fileNameA = std::filesystem::path(fullPath).filename().string();
		//std::string fileNameA = WideStringToGBKLPCSTR(fileName);
		std::transform(fileNameA.begin(), fileNameA.end(), fileNameA.begin(), ::tolower);
		auto it = FileMap.find(fileNameA);
		if (it != FileMap.end()) {
			int index = it->second;
			if (index < pFileBuffer) {
				std::cout << "Replace: " << fileNameA << std::endl;
				return reinterpret_cast<HANDLE>(&FileBuffer[index]);
			}
		}
		std::cout << "Not found in pack: " << fileNameA << std::endl;
	}

	return TrueCreateFileA(lpFileName, dwDesiredAccess, dwShareMode, lpSecurityAttributes, dwCreationDisposition, dwFlagsAndAttributes, hTemplateFile);
}

BOOL WINAPI HookedReadFile(HANDLE hFile, LPVOID lpBuffer, DWORD nNumberOfBytesToRead, LPDWORD lpNumberOfBytesRead, LPOVERLAPPED lpOverlapped) {
	//std::cout << "Hooked ReadFile: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			std::cout << "Replace Reading file: " << FileNames[i] << std::endl;
			std::string data = FileBuffer[i].content;
			if (nNumberOfBytesToRead + FileBuffer[i].ptr > data.size()) {
				nNumberOfBytesToRead = data.size() - FileBuffer[i].ptr;
			}
			memcpy(lpBuffer, data.c_str() + FileBuffer[i].ptr, nNumberOfBytesToRead);
			*lpNumberOfBytesRead = nNumberOfBytesToRead;
			FileBuffer[i].ptr += nNumberOfBytesToRead; // Update pointer position
			return TRUE;
		}
	}
	return TrueReadFile(hFile, lpBuffer, nNumberOfBytesToRead, lpNumberOfBytesRead, lpOverlapped);
}

BOOL WINAPI HookedCloseHandle(HANDLE hObject) {
	//std::cout << "Hooked CloseHandle: " << hObject << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hObject) {
			FileBuffer[i].ptr = 0;
			std::cout << "Closing handle for file: " << FileNames[i] << std::endl;
			return TRUE;
		}
	}
	return TrueCloseHandle(hObject);
}

DWORD WINAPI HookedGetFileType(HANDLE hFile) {
	//std::cout << "GetFileType: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			return FILE_TYPE_DISK; // Assuming disk type for files in the pack
		}
	}
	return TrueGetFileType(hFile);
}

DWORD WINAPI HookedGetFileSize(HANDLE hFile, LPDWORD lpFileSizeHigh) {
	//std::cout << "Hooked GetFileSize: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			DWORD size = FileBuffer[i].content.size();
			if (lpFileSizeHigh) {
				*lpFileSizeHigh = 0;
			}
			return size;
		}
	}
	return TrueGetFileSize(hFile, lpFileSizeHigh);
}

DWORD WINAPI HookedGetFileAttributesA(LPCSTR lpFileName) {
	std::string fullPath(lpFileName);
	std::string fileNameA = std::filesystem::path(fullPath).filename().string();
	std::transform(fileNameA.begin(), fileNameA.end(), fileNameA.begin(), ::tolower);
	std::cout << "GetFileAttributesA: " << fileNameA.c_str() << std::endl;
	if (CustomPack::isInPack(VFS_packname, fileNameA)) {
		std::cout << "File found in pack: " << fileNameA << std::endl;
		return FILE_ATTRIBUTE_NORMAL; // Assuming normal attributes for files in the pack
	}
	return TrueGetFileAttributesA(lpFileName);
}

DWORD WINAPI HookedSetFilePointer(HANDLE hFile, LONG lDistanceToMove, PLONG lpDistanceToMoveHigh, DWORD dwMoveMethod) {
	//std::cout << "Hooked SetFilePointer: " << hFile << std::endl;
	for (int i = 0; i < pFileBuffer; i++) {
		if (&(FileBuffer[i]) == hFile) {
			//std::cout << "Setting file pointer for: " << FileNames[i] << std::endl;
			if (lpDistanceToMoveHigh) {
				*lpDistanceToMoveHigh = 0;
			}
			if (dwMoveMethod == FILE_BEGIN) {
				FileBuffer[i].ptr = lDistanceToMove; // Set pointer to the new position
			}
			else if (dwMoveMethod == FILE_CURRENT) {
				FileBuffer[i].ptr += lDistanceToMove; // Move pointer relative to current position
			}
			else if (dwMoveMethod == FILE_END) {
				FileBuffer[i].ptr = FileBuffer[i].content.size() + lDistanceToMove; // Move pointer relative to end of file
			}
			return FileBuffer[i].ptr; // Adjust pointer based on distance
		}
	}
	return TrueSetFilePointer(hFile, lDistanceToMove, lpDistanceToMoveHigh, dwMoveMethod);
}


void InstallVFS(std::string packname, std::string enc)
{
	initPackage(packname, enc);
	VFS_packname = packname;
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourAttach(&(PVOID&)TrueCreateFileA, HookedCreateFileA);
	DetourAttach(&(PVOID&)TrueGetFileSize, HookedGetFileSize);
	DetourAttach(&(PVOID&)TrueReadFile, HookedReadFile);
	DetourAttach(&(PVOID&)TrueCloseHandle, HookedCloseHandle);
	DetourAttach(&(PVOID&)TrueGetFileAttributesA, HookedGetFileAttributesA);
	DetourAttach(&(PVOID&)TrueGetFileType, HookedGetFileType);
	DetourAttach(&(PVOID&)TrueSetFilePointer, HookedSetFilePointer);
	DetourAttach(&(PVOID&)TrueFindNextFileA, HookedFindNextFileA);
	DetourAttach(&(PVOID&)TrueFindFirstFileA, HookedFindFirstFileA);
	DetourAttach(&(PVOID&)TrueFindClose, HookedFindClose);
	DetourTransactionCommit();
}

void UninstallVFS() {
	DetourTransactionBegin();
	DetourUpdateThread(GetCurrentThread());
	DetourDetach(&(PVOID&)TrueCreateFileA, HookedCreateFileA);
	DetourDetach(&(PVOID&)TrueGetFileSize, HookedGetFileSize);
	DetourDetach(&(PVOID&)TrueReadFile, HookedReadFile);
	DetourDetach(&(PVOID&)TrueCloseHandle, HookedCloseHandle);
	DetourDetach(&(PVOID&)TrueGetFileAttributesA, HookedGetFileAttributesA);
	DetourDetach(&(PVOID&)TrueGetFileType, HookedGetFileType);
	DetourDetach(&(PVOID&)TrueSetFilePointer, HookedSetFilePointer);
	DetourDetach(&(PVOID&)TrueFindNextFileA, HookedFindNextFileA);
	DetourDetach(&(PVOID&)TrueFindFirstFileA, HookedFindFirstFileA);
	DetourDetach(&(PVOID&)TrueFindClose, HookedFindClose);
	DetourTransactionCommit();
}