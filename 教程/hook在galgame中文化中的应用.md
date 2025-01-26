# hook在galgame中文化中的应用

## 什么事hook

~~（自行百度）~~

> 钩子编程（hooking），也称作“挂钩”， **是计算机程序设计术语，指通过拦截软件模块间的函数调用、消息传递、事件传递来修改或扩展操作系统、应用程序或其他软件组件的行为的各种技术** 。 **处理被拦截的函数调用、事件、消息的代码，被称为钩子** （hook）。
>
> （摘自维基百科）

总的来说，就是**拦截系统或者应用中的事件**，把原始的调用对象替换为我们自己写的代理对象，然后就能对游戏娘为所欲为了。

由于本人技术有限，本文仅介绍了简单的利用Detours库的**API Hook**以及简单的**inline hook**，通过dll注入对游戏进行修改。

在阅读本文之前，你需要自行学习以下先修课程：

- 学习如何用c++生成自己的动态链接库（dll）
- 学习x64dbg或类似的软件的基本操作

## API hook

API hook顾名思义，就是拦截游戏对于系统API的调用，并进行修改。这里仅介绍一下利用detours库的实现方法。

### detours的编译

（自行百度，一堆教程，或者也可以在我的github仓库中搜索detours.h和detours.lib）

编译好detours后，将 `detours.h`和 `detours.lib`放入项目目录中。在引用了detours相关函数的代码文件头部添加以下内容（需要在 `#include <windows.h>`之后）

```
#include <detours.h>
#pragma comment(lib, "detours.lib")
```

注意，如果是x86的游戏，请生成x86的dll，并且也要使用x86下生成的 `detours.lib`。如果是x64的游戏同理。

### 实例

话不多说，直接上实例。

#### 修改游戏字体

绝大部分的gal都是通过winapi来调用字体的，通过api hook能简单的修改游戏字体以及编码（即一些教程中说的0x80改0x86实现gbk编码）

通常涉及的winapi有4个：`CreateFontA`，`CreateFontW`，`CreateFontInderectA`，`CreateFontInderectW`。这些函数具体的参数请自行参考winapi官方文档。

游戏使用的是什么函数呢？在x64dbg里对这些api下个断点就知道了。

下面以修改 `CreateFontA`为例子进行演示：

首先，要保存原本的 `CreateFontA`函数——我们并没有能力自行实现这个函数，我们只是想要在调用 `CreateFontA`时，先对参数进行一些修改，或者进行一些其他的操作，然后继续调用原本的 `CreateFontA`函数。

```
typedef HFONT(WINAPI* pCREATEFONTA)(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName
    );
pCREATEFONTA TrueCreateFontA = CreateFontA;
```

这样，我们在调用 `TrueCreateFontA`时，就对应的原本的 `CreateFontA`函数。

接着，我们要编写我们可以为所欲为的 `CreateFontA`函数，这里命名为 `HookedCreateFontA`：

```
HFONT WINAPI HookedCreateFontA(
    int    cHeight,
    int    cWidth,
    int    cEscapement,
    int    cOrientation,
    int    cWeight,
    DWORD  bItalic,
    DWORD  bUnderline,
    DWORD  bStrikeOut,
    DWORD  iCharSet,
    DWORD  iOutPrecision,
    DWORD  iClipPrecision,
    DWORD  iQuality,
    DWORD  iPitchAndFamily,
    LPCSTR pszFaceName) {

    //为所欲为！！

    return TrueCreateFontA(
        cHeight, 
        cWidth, 
        cEscapement, 
        cOrientation, 
        cWeight, 
        bItalic, 
        bUnderline, 
        bStrikeOut, 
        iCharSet, 
        iOutPrecision, 
        iClipPrecision, 
        iQuality, 
        iPitchAndFamily,
        "SimSun"
    );
}
```

这里，我们强制让 `CreateFontA`创建字体时使用 `SimSun`（宋体）。实际上，能做的操作远远不止于次，你可以对这些参数进行任意的修改、操作。比较常用的是更改字体大小（`cHeight`和 `cWidth`）、修改字符集（`iCharSet`，0x80为sjis，0x86为gbk）、修改字体名。

最后，我们使用detours来进行hook。在 `dllmain`函数中的 `case DLL_PROCESS_ATTACH`下添加以下内容：

```
DetourTransactionBegin();
DetourUpdateThread(GetCurrentThread());
DetourAttach(&(PVOID&)TrueCreateFontA, HookedCreateFontA);
// 如果还对其他winapi进行了hook，可以继续在这里添加，如DetourAttach(&(PVOID&)TrueCreateFontIndirectA, HookedCreateFontIndirectA);
DetourTransactionCommit();
```

这样，游戏在调用 `CreateFontA`时，就会变为调用被我们为所欲为过的 `HookedCreateFontA`了。

##### 练习1

查阅winapi的文档，尝试修改调用 ``CreateFontInderectA``函数创建字体的游戏的字符集为GBK、字体名为SimSun。

##### 答案（仅供参考）

```
typedef HFONT(WINAPI* CREATEFONTINDIRECTA)(CONST LOGFONTA* lplf);
CREATEFONTINDIRECTA TrueCreateFontIndirectA = CreateFontIndirectA;

HFONT WINAPI HookedCreateFontIndirectA(CONST LOGFONTA* lplf)
{
    LOGFONTA modifiedLf = *lplf;
    if (modifiedLf.lfFaceName != nullptr) strcpy_s(modifiedLf.lfFaceName, LF_FACESIZE, "SimSun");
	modifiedLf.lfCharSet = 0x86;
    return TrueCreateFontIndirectA(&modifiedLf);
}
```

LOGFONTA的结构查阅文档可以获得。注意这里不能直接 `modifiedLf.lfFaceName = "SimSun"`，而是应该用上面这种方法。然后像前面那样调用Detours的相关函数。

#### 修改游戏窗口标题

绝大部分情况下，游戏窗口标题都是使用以下这几个winapi进行设置的：`CreateWindowExA`，`CreateWindowExW`，`SetWindowTextA`，`SetWindowTextA`。同样，自行搜索官方文档。

值得注意的是，SetWindowText函数不仅仅是处理窗口标题，还会有其他的用处，如果直接修改可能会导致意料之外的结果，建议结合实际情况在hook时增加额外的判断逻辑。

#### 其他

DrawTextA/W、DrawTextExA/W有时用于窗口菜单栏的绘制。

GetGlyphOutlineA/W用于生成字形，修改这个函数有时能实现很多奇怪的功能（比如类似uif的文字替换功能）

同样，对TextOutA/W、ExtTextOutA/W函数有时会用于游戏文本生成，修改这个函数有时也能实现很多奇怪的功能。

## DLL注入

我们已经生成了一个dll，让游戏运行dll中的代码，我们之前写的hook代码才能生效。怎么实现这一点呢？这里介绍2类方法。

### 修改导入表

detouts里提供了一个小工具setdll.exe，可以将dll添加到导入表中：

```
setdll /d:your_dll_path.dll game_exe_path.exe
```

也可以制作一个启动器exe，从启动器启动，调用 `DetourCreateProcessWithDllW`函数：

```
int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE hPrevInstance,
    PSTR lpCmdLine, int nCmdShow)
{
    std::string current_path = std::filesystem::current_path().string();
	std::string dllPath = current_path + "name_of_your_dll.dll";// dll需要使用完整路径
  
    STARTUPINFO si = { sizeof(STARTUPINFOA) };
    PROCESS_INFORMATION pi = { 0 };
    si.cb = sizeof(si);
    DetourCreateProcessWithDllW(
        L"name_of_game_exe.exe",           // 目标 EXE 路径
        NULL,                // 命令行参数（可为空）
        NULL,                // 安全属性
        NULL,                // 线程安全属性
        TRUE,               // 是否继承句柄
        CREATE_SUSPENDED, // 创建标志
        NULL,                // 环境变量
        NULL,                // 工作目录
        &si,                 // STARTUPINFO
        &pi,                 // PROCESS_INFORMATION
        dllPath.c_str(),             // DLL 路径
        NULL);             // 保留字段
    ResumeThread(pi.hThread);
    return 0;
}
```

但是，如果游戏带某些保护壳，或者有签名验证之类的操作，此方法将不适用。

### DLL劫持

游戏自身也会调用一系列dll，如果我们用一个同名的dll对原本调用的进行替代，那就可以让游戏自己调用我们的代码了。但是，原本的dll中也有一些函数，所以，我们的dll需要充当一个中转的角色，复现原本dll的导出函数表，在游戏调用这些原本的dll中的函数时进行中转，去调用原本的dll。简单来说，我们需要制作一个夹带私货的中间人。

有的游戏会自带一些dll文件，这种情况下劫持这些dll是很好的选择。有的游戏没有自带的dll，但是一定会调用很多windows的dll，如winmm.dll、version.dll、dxgi.dll、d3d9.dll等等，具体可以自己尝试或者查看exe的导入表。游戏查找系统的dll时，会先在游戏目录下查找

中转的步骤已经有很多工具能够自动实现。这里我用的是[AheadLib](https://github.com/strivexjun/AheadLib-x86-x64)。将想要劫持的dll拖入该软件，会生成一个cpp文件。
