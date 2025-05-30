/*++ BUILD Version: 0002    // Increment this if a change has global effects

Copyright (c) Microsoft Corporation. All rights reserved.

Module Name:

    wincon.h

Abstract:

    This module contains the public data structures, data types,
    and procedures exported by the NT console subsystem.

Created:

    26-Oct-1990

Revision History:

--*/

#ifndef _WINCON_
#define _WINCON_

#pragma once

#ifdef __cplusplus
extern "C" {
#endif

#ifndef NOGDI
#include <wingdi.h>
#endif

typedef struct _COORD {
    SHORT X;
    SHORT Y;
} COORD, *PCOORD;

typedef struct _SMALL_RECT {
    SHORT Left;
    SHORT Top;
    SHORT Right;
    SHORT Bottom;
} SMALL_RECT, *PSMALL_RECT;

typedef struct _KEY_EVENT_RECORD {
    BOOL bKeyDown;
    WORD wRepeatCount;
    WORD wVirtualKeyCode;
    WORD wVirtualScanCode;
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } uChar;
    DWORD dwControlKeyState;
} KEY_EVENT_RECORD, *PKEY_EVENT_RECORD;

//
// ControlKeyState flags
//

#define RIGHT_ALT_PRESSED     0x0001 // the right alt key is pressed.
#define LEFT_ALT_PRESSED      0x0002 // the left alt key is pressed.
#define RIGHT_CTRL_PRESSED    0x0004 // the right ctrl key is pressed.
#define LEFT_CTRL_PRESSED     0x0008 // the left ctrl key is pressed.
#define SHIFT_PRESSED         0x0010 // the shift key is pressed.
#define NUMLOCK_ON            0x0020 // the numlock light is on.
#define SCROLLLOCK_ON         0x0040 // the scrolllock light is on.
#define CAPSLOCK_ON           0x0080 // the capslock light is on.
#define ENHANCED_KEY          0x0100 // the key is enhanced.
#define NLS_DBCSCHAR          0x00010000 // DBCS for JPN: SBCS/DBCS mode.
#define NLS_ALPHANUMERIC      0x00000000 // DBCS for JPN: Alphanumeric mode.
#define NLS_KATAKANA          0x00020000 // DBCS for JPN: Katakana mode.
#define NLS_HIRAGANA          0x00040000 // DBCS for JPN: Hiragana mode.
#define NLS_ROMAN             0x00400000 // DBCS for JPN: Roman/Noroman mode.
#define NLS_IME_CONVERSION    0x00800000 // DBCS for JPN: IME conversion.
#define NLS_IME_DISABLE       0x20000000 // DBCS for JPN: IME enable/disable.

typedef struct _MOUSE_EVENT_RECORD {
    COORD dwMousePosition;
    DWORD dwButtonState;
    DWORD dwControlKeyState;
    DWORD dwEventFlags;
} MOUSE_EVENT_RECORD, *PMOUSE_EVENT_RECORD;

//
// ButtonState flags
//

#define FROM_LEFT_1ST_BUTTON_PRESSED    0x0001
#define RIGHTMOST_BUTTON_PRESSED        0x0002
#define FROM_LEFT_2ND_BUTTON_PRESSED    0x0004
#define FROM_LEFT_3RD_BUTTON_PRESSED    0x0008
#define FROM_LEFT_4TH_BUTTON_PRESSED    0x0010

//
// EventFlags
//

#define MOUSE_MOVED   0x0001
#define DOUBLE_CLICK  0x0002
#define MOUSE_WHEELED 0x0004
#if(_WIN32_WINNT >= 0x0600)
#define MOUSE_HWHEELED 0x0008
#endif /* _WIN32_WINNT >= 0x0600 */

typedef struct _WINDOW_BUFFER_SIZE_RECORD {
    COORD dwSize;
} WINDOW_BUFFER_SIZE_RECORD, *PWINDOW_BUFFER_SIZE_RECORD;

typedef struct _MENU_EVENT_RECORD {
    UINT dwCommandId;
} MENU_EVENT_RECORD, *PMENU_EVENT_RECORD;

typedef struct _FOCUS_EVENT_RECORD {
    BOOL bSetFocus;
} FOCUS_EVENT_RECORD, *PFOCUS_EVENT_RECORD;

typedef struct _INPUT_RECORD {
    WORD EventType;
    union {
        KEY_EVENT_RECORD KeyEvent;
        MOUSE_EVENT_RECORD MouseEvent;
        WINDOW_BUFFER_SIZE_RECORD WindowBufferSizeEvent;
        MENU_EVENT_RECORD MenuEvent;
        FOCUS_EVENT_RECORD FocusEvent;
    } Event;
} INPUT_RECORD, *PINPUT_RECORD;

//
//  EventType flags:
//

#define KEY_EVENT         0x0001 // Event contains key event record
#define MOUSE_EVENT       0x0002 // Event contains mouse event record
#define WINDOW_BUFFER_SIZE_EVENT 0x0004 // Event contains window change event record
#define MENU_EVENT 0x0008 // Event contains menu event record
#define FOCUS_EVENT 0x0010 // event contains focus change

typedef struct _CHAR_INFO {
    union {
        WCHAR UnicodeChar;
        CHAR   AsciiChar;
    } Char;
    WORD Attributes;
} CHAR_INFO, *PCHAR_INFO;

//
// Attributes flags:
//

#define FOREGROUND_BLUE      0x0001 // text color contains blue.
#define FOREGROUND_GREEN     0x0002 // text color contains green.
#define FOREGROUND_RED       0x0004 // text color contains red.
#define FOREGROUND_INTENSITY 0x0008 // text color is intensified.
#define BACKGROUND_BLUE      0x0010 // background color contains blue.
#define BACKGROUND_GREEN     0x0020 // background color contains green.
#define BACKGROUND_RED       0x0040 // background color contains red.
#define BACKGROUND_INTENSITY 0x0080 // background color is intensified.
#define COMMON_LVB_LEADING_BYTE    0x0100 // Leading Byte of DBCS
#define COMMON_LVB_TRAILING_BYTE   0x0200 // Trailing Byte of DBCS
#define COMMON_LVB_GRID_HORIZONTAL 0x0400 // DBCS: Grid attribute: top horizontal.
#define COMMON_LVB_GRID_LVERTICAL  0x0800 // DBCS: Grid attribute: left vertical.
#define COMMON_LVB_GRID_RVERTICAL  0x1000 // DBCS: Grid attribute: right vertical.
#define COMMON_LVB_REVERSE_VIDEO   0x4000 // DBCS: Reverse fore/back ground attribute.
#define COMMON_LVB_UNDERSCORE      0x8000 // DBCS: Underscore.

#define COMMON_LVB_SBCSDBCS        0x0300 // SBCS or DBCS flag.


typedef struct _CONSOLE_SCREEN_BUFFER_INFO {
    COORD dwSize;
    COORD dwCursorPosition;
    WORD  wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
} CONSOLE_SCREEN_BUFFER_INFO, *PCONSOLE_SCREEN_BUFFER_INFO;

typedef struct _CONSOLE_SCREEN_BUFFER_INFOEX {
    ULONG cbSize;
    COORD dwSize;
    COORD dwCursorPosition;
    WORD wAttributes;
    SMALL_RECT srWindow;
    COORD dwMaximumWindowSize;
    WORD wPopupAttributes;
    BOOL bFullscreenSupported;
    COLORREF ColorTable[16];
} CONSOLE_SCREEN_BUFFER_INFOEX, *PCONSOLE_SCREEN_BUFFER_INFOEX;

typedef struct _CONSOLE_CURSOR_INFO {
    DWORD  dwSize;
    BOOL   bVisible;
} CONSOLE_CURSOR_INFO, *PCONSOLE_CURSOR_INFO;

typedef struct _CONSOLE_FONT_INFO {
    DWORD  nFont;
    COORD  dwFontSize;
} CONSOLE_FONT_INFO, *PCONSOLE_FONT_INFO;

#ifndef NOGDI
typedef struct _CONSOLE_FONT_INFOEX {
    ULONG cbSize;
    DWORD nFont;
    COORD dwFontSize;
    UINT FontFamily;
    UINT FontWeight;
    WCHAR FaceName[LF_FACESIZE];
} CONSOLE_FONT_INFOEX, *PCONSOLE_FONT_INFOEX;
#endif

#define HISTORY_NO_DUP_FLAG 0x1

typedef struct _CONSOLE_HISTORY_INFO {
    UINT cbSize;
    UINT HistoryBufferSize;
    UINT NumberOfHistoryBuffers;
    DWORD dwFlags;
} CONSOLE_HISTORY_INFO, *PCONSOLE_HISTORY_INFO;

#if(_WIN32_WINNT >= 0x0500)
typedef struct _CONSOLE_SELECTION_INFO {
    DWORD dwFlags;
    COORD dwSelectionAnchor;
    SMALL_RECT srSelection;
} CONSOLE_SELECTION_INFO, *PCONSOLE_SELECTION_INFO;

//
// Selection flags
//

#define CONSOLE_NO_SELECTION            0x0000
#define CONSOLE_SELECTION_IN_PROGRESS   0x0001   // selection has begun
#define CONSOLE_SELECTION_NOT_EMPTY     0x0002   // non-null select rectangle
#define CONSOLE_MOUSE_SELECTION         0x0004   // selecting with mouse
#define CONSOLE_MOUSE_DOWN              0x0008   // mouse is down
#endif /* _WIN32_WINNT >= 0x0500 */

//
// typedef for ctrl-c handler routines
//

typedef
BOOL
(WINAPI *PHANDLER_ROUTINE)(
    __in DWORD CtrlType
    );

#define CTRL_C_EVENT        0
#define CTRL_BREAK_EVENT    1
#define CTRL_CLOSE_EVENT    2
// 3 is reserved!
// 4 is reserved!
#define CTRL_LOGOFF_EVENT   5
#define CTRL_SHUTDOWN_EVENT 6

//
//  Input Mode flags:
//

#define ENABLE_PROCESSED_INPUT  0x0001
#define ENABLE_LINE_INPUT       0x0002
#define ENABLE_ECHO_INPUT       0x0004
#define ENABLE_WINDOW_INPUT     0x0008
#define ENABLE_MOUSE_INPUT      0x0010
#define ENABLE_INSERT_MODE      0x0020
#define ENABLE_QUICK_EDIT_MODE  0x0040
#define ENABLE_EXTENDED_FLAGS   0x0080
#define ENABLE_AUTO_POSITION    0x0100

//
// Output Mode flags:
//

#define ENABLE_PROCESSED_OUTPUT    0x0001
#define ENABLE_WRAP_AT_EOL_OUTPUT  0x0002

//
// direct API definitions.
//

WINBASEAPI
BOOL
WINAPI
PeekConsoleInputA(
    __in HANDLE hConsoleInput,
    __out_ecount(nLength) PINPUT_RECORD lpBuffer,
    __in DWORD nLength,
    __out LPDWORD lpNumberOfEventsRead
    );
WINBASEAPI
BOOL
WINAPI
PeekConsoleInputW(
    __in HANDLE hConsoleInput,
    __out_ecount(nLength) PINPUT_RECORD lpBuffer,
    __in DWORD nLength,
    __out LPDWORD lpNumberOfEventsRead
    );
#ifdef UNICODE
#define PeekConsoleInput  PeekConsoleInputW
#else
#define PeekConsoleInput  PeekConsoleInputA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
ReadConsoleInputA(
    __in HANDLE hConsoleInput,
    __out_ecount(nLength) PINPUT_RECORD lpBuffer,
    __in DWORD nLength,
    __out LPDWORD lpNumberOfEventsRead
    );
WINBASEAPI
BOOL
WINAPI
ReadConsoleInputW(
    __in HANDLE hConsoleInput,
    __out_ecount(nLength) PINPUT_RECORD lpBuffer,
    __in DWORD nLength,
    __out LPDWORD lpNumberOfEventsRead
    );
#ifdef UNICODE
#define ReadConsoleInput  ReadConsoleInputW
#else
#define ReadConsoleInput  ReadConsoleInputA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
WriteConsoleInputA(
    __in HANDLE hConsoleInput,
    __in_ecount(nLength) CONST INPUT_RECORD *lpBuffer,
    __in DWORD nLength,
    __out LPDWORD lpNumberOfEventsWritten
    );
WINBASEAPI
BOOL
WINAPI
WriteConsoleInputW(
    __in HANDLE hConsoleInput,
    __in_ecount(nLength) CONST INPUT_RECORD *lpBuffer,
    __in DWORD nLength,
    __out LPDWORD lpNumberOfEventsWritten
    );
#ifdef UNICODE
#define WriteConsoleInput  WriteConsoleInputW
#else
#define WriteConsoleInput  WriteConsoleInputA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
ReadConsoleOutputA(
    __in HANDLE hConsoleOutput,
    __out_ecount(dwBufferSize.X * dwBufferSize.Y) PCHAR_INFO lpBuffer,
    __in COORD dwBufferSize,
    __in COORD dwBufferCoord,
    __inout PSMALL_RECT lpReadRegion
    );
WINBASEAPI
BOOL
WINAPI
ReadConsoleOutputW(
    __in HANDLE hConsoleOutput,
    __out_ecount(dwBufferSize.X * dwBufferSize.Y) PCHAR_INFO lpBuffer,
    __in COORD dwBufferSize,
    __in COORD dwBufferCoord,
    __inout PSMALL_RECT lpReadRegion
    );
#ifdef UNICODE
#define ReadConsoleOutput  ReadConsoleOutputW
#else
#define ReadConsoleOutput  ReadConsoleOutputA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
WriteConsoleOutputA(
    __in HANDLE hConsoleOutput,
    __in_ecount(dwBufferSize.X * dwBufferSize.Y) CONST CHAR_INFO *lpBuffer,
    __in COORD dwBufferSize,
    __in COORD dwBufferCoord,
    __inout PSMALL_RECT lpWriteRegion
    );
WINBASEAPI
BOOL
WINAPI
WriteConsoleOutputW(
    __in HANDLE hConsoleOutput,
    __in_ecount(dwBufferSize.X * dwBufferSize.Y) CONST CHAR_INFO *lpBuffer,
    __in COORD dwBufferSize,
    __in COORD dwBufferCoord,
    __inout PSMALL_RECT lpWriteRegion
    );
#ifdef UNICODE
#define WriteConsoleOutput  WriteConsoleOutputW
#else
#define WriteConsoleOutput  WriteConsoleOutputA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
ReadConsoleOutputCharacterA(
    __in HANDLE hConsoleOutput,
    __out_ecount(nLength) LPSTR lpCharacter,
    __in DWORD nLength,
    __in COORD dwReadCoord,
    __out LPDWORD lpNumberOfCharsRead
    );
WINBASEAPI
BOOL
WINAPI
ReadConsoleOutputCharacterW(
    __in HANDLE hConsoleOutput,
    __out_ecount(nLength) LPWSTR lpCharacter,
    __in DWORD nLength,
    __in COORD dwReadCoord,
    __out LPDWORD lpNumberOfCharsRead
    );
#ifdef UNICODE
#define ReadConsoleOutputCharacter  ReadConsoleOutputCharacterW
#else
#define ReadConsoleOutputCharacter  ReadConsoleOutputCharacterA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
ReadConsoleOutputAttribute(
    __in HANDLE hConsoleOutput,
    __out_ecount(nLength) LPWORD lpAttribute,
    __in DWORD nLength,
    __in COORD dwReadCoord,
    __out LPDWORD lpNumberOfAttrsRead
    );

WINBASEAPI
BOOL
WINAPI
WriteConsoleOutputCharacterA(
    __in HANDLE hConsoleOutput,
    __in_ecount(nLength) LPCSTR lpCharacter,
    __in DWORD nLength,
    __in COORD dwWriteCoord,
    __out LPDWORD lpNumberOfCharsWritten
    );
WINBASEAPI
BOOL
WINAPI
WriteConsoleOutputCharacterW(
    __in HANDLE hConsoleOutput,
    __in_ecount(nLength) LPCWSTR lpCharacter,
    __in DWORD nLength,
    __in COORD dwWriteCoord,
    __out LPDWORD lpNumberOfCharsWritten
    );
#ifdef UNICODE
#define WriteConsoleOutputCharacter  WriteConsoleOutputCharacterW
#else
#define WriteConsoleOutputCharacter  WriteConsoleOutputCharacterA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
WriteConsoleOutputAttribute(
    __in HANDLE hConsoleOutput,
    __in_ecount(nLength) CONST WORD *lpAttribute,
    __in DWORD nLength,
    __in COORD dwWriteCoord,
    __out LPDWORD lpNumberOfAttrsWritten
    );

WINBASEAPI
BOOL
WINAPI
FillConsoleOutputCharacterA(
    __in HANDLE hConsoleOutput,
    __in CHAR  cCharacter,
    __in DWORD  nLength,
    __in COORD  dwWriteCoord,
    __out LPDWORD lpNumberOfCharsWritten
    );
WINBASEAPI
BOOL
WINAPI
FillConsoleOutputCharacterW(
    __in HANDLE hConsoleOutput,
    __in WCHAR  cCharacter,
    __in DWORD  nLength,
    __in COORD  dwWriteCoord,
    __out LPDWORD lpNumberOfCharsWritten
    );
#ifdef UNICODE
#define FillConsoleOutputCharacter  FillConsoleOutputCharacterW
#else
#define FillConsoleOutputCharacter  FillConsoleOutputCharacterA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
FillConsoleOutputAttribute(
    __in HANDLE hConsoleOutput,
    __in WORD   wAttribute,
    __in DWORD  nLength,
    __in COORD  dwWriteCoord,
    __out LPDWORD lpNumberOfAttrsWritten
    );

WINBASEAPI
BOOL
WINAPI
GetConsoleMode(
    __in HANDLE hConsoleHandle,
    __out LPDWORD lpMode
    );

WINBASEAPI
BOOL
WINAPI
GetNumberOfConsoleInputEvents(
    __in HANDLE hConsoleInput,
    __out LPDWORD lpNumberOfEvents
    );

#define CONSOLE_REAL_OUTPUT_HANDLE (LongToHandle(-2))
#define CONSOLE_REAL_INPUT_HANDLE (LongToHandle(-3))

WINBASEAPI
BOOL
WINAPI
GetConsoleScreenBufferInfo(
    __in HANDLE hConsoleOutput,
    __out PCONSOLE_SCREEN_BUFFER_INFO lpConsoleScreenBufferInfo
    );

WINBASEAPI
BOOL
WINAPI
GetConsoleScreenBufferInfoEx(
    __in HANDLE hConsoleOutput,
    __inout_bcount_part(sizeof(ULONG), sizeof(CONSOLE_SCREEN_BUFFER_INFOEX) - sizeof(ULONG)) PCONSOLE_SCREEN_BUFFER_INFOEX lpConsoleScreenBufferInfoEx);

WINBASEAPI
BOOL
WINAPI
SetConsoleScreenBufferInfoEx(
    __in HANDLE hConsoleOutput,
    __in PCONSOLE_SCREEN_BUFFER_INFOEX lpConsoleScreenBufferInfoEx);

WINBASEAPI
COORD
WINAPI
GetLargestConsoleWindowSize(
    __in HANDLE hConsoleOutput
    );

WINBASEAPI
BOOL
WINAPI
GetConsoleCursorInfo(
    __in HANDLE hConsoleOutput,
    __out PCONSOLE_CURSOR_INFO lpConsoleCursorInfo
    );

#if(_WIN32_WINNT >= 0x0500)

WINBASEAPI
BOOL
WINAPI
GetCurrentConsoleFont(
    __in HANDLE hConsoleOutput,
    __in BOOL bMaximumWindow,
    __out PCONSOLE_FONT_INFO lpConsoleCurrentFont
    );

#ifndef NOGDI
WINBASEAPI
BOOL
WINAPI
GetCurrentConsoleFontEx(
    __in HANDLE hConsoleOutput,
    __in BOOL bMaximumWindow,
    __out PCONSOLE_FONT_INFOEX lpConsoleCurrentFontEx);

WINBASEAPI
BOOL
WINAPI
SetCurrentConsoleFontEx(
    __in HANDLE hConsoleOutput,
    __in BOOL bMaximumWindow,
    __in PCONSOLE_FONT_INFOEX lpConsoleCurrentFontEx);
#endif

WINBASEAPI
BOOL
WINAPI
GetConsoleHistoryInfo(
    __out PCONSOLE_HISTORY_INFO lpConsoleHistoryInfo);

WINBASEAPI
BOOL
WINAPI
SetConsoleHistoryInfo(
    __in PCONSOLE_HISTORY_INFO lpConsoleHistoryInfo);

WINBASEAPI
COORD
WINAPI
GetConsoleFontSize(
    __in HANDLE hConsoleOutput,
    __in DWORD nFont
    );

WINBASEAPI
BOOL
WINAPI
GetConsoleSelectionInfo(
    __out PCONSOLE_SELECTION_INFO lpConsoleSelectionInfo
    );

#endif /* _WIN32_WINNT >= 0x0500 */

WINBASEAPI
BOOL
WINAPI
GetNumberOfConsoleMouseButtons(
    __out LPDWORD lpNumberOfMouseButtons
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleMode(
    __in HANDLE hConsoleHandle,
    __in DWORD dwMode
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleActiveScreenBuffer(
    __in HANDLE hConsoleOutput
    );

WINBASEAPI
BOOL
WINAPI
FlushConsoleInputBuffer(
    __in HANDLE hConsoleInput
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleScreenBufferSize(
    __in HANDLE hConsoleOutput,
    __in COORD dwSize
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleCursorPosition(
    __in HANDLE hConsoleOutput,
    __in COORD dwCursorPosition
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleCursorInfo(
    __in HANDLE hConsoleOutput,
    __in CONST CONSOLE_CURSOR_INFO *lpConsoleCursorInfo
    );

WINBASEAPI
BOOL
WINAPI
ScrollConsoleScreenBufferA(
    __in HANDLE hConsoleOutput,
    __in CONST SMALL_RECT *lpScrollRectangle,
    __in_opt CONST SMALL_RECT *lpClipRectangle,
    __in COORD dwDestinationOrigin,
    __in CONST CHAR_INFO *lpFill
    );
WINBASEAPI
BOOL
WINAPI
ScrollConsoleScreenBufferW(
    __in HANDLE hConsoleOutput,
    __in CONST SMALL_RECT *lpScrollRectangle,
    __in_opt CONST SMALL_RECT *lpClipRectangle,
    __in COORD dwDestinationOrigin,
    __in CONST CHAR_INFO *lpFill
    );
#ifdef UNICODE
#define ScrollConsoleScreenBuffer  ScrollConsoleScreenBufferW
#else
#define ScrollConsoleScreenBuffer  ScrollConsoleScreenBufferA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
SetConsoleWindowInfo(
    __in HANDLE hConsoleOutput,
    __in BOOL bAbsolute,
    __in CONST SMALL_RECT *lpConsoleWindow
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleTextAttribute(
    __in HANDLE hConsoleOutput,
    __in WORD wAttributes
    );

WINBASEAPI
BOOL
WINAPI
SetConsoleCtrlHandler(
    __in_opt PHANDLER_ROUTINE HandlerRoutine,
    __in BOOL Add);

WINBASEAPI
BOOL
WINAPI
GenerateConsoleCtrlEvent(
    __in DWORD dwCtrlEvent,
    __in DWORD dwProcessGroupId);

WINBASEAPI
BOOL
WINAPI
AllocConsole(
    VOID);

WINBASEAPI
BOOL
WINAPI
FreeConsole(
    VOID);

#if(_WIN32_WINNT >= 0x0500)
WINBASEAPI
BOOL
WINAPI
AttachConsole(
    __in DWORD dwProcessId);

#define ATTACH_PARENT_PROCESS ((DWORD)-1)

#endif /* _WIN32_WINNT >= 0x0500 */

WINBASEAPI
DWORD
WINAPI
GetConsoleTitleA(
    __out_ecount(nSize) LPSTR lpConsoleTitle,
    __in DWORD nSize
    );
WINBASEAPI
DWORD
WINAPI
GetConsoleTitleW(
    __out_ecount(nSize) LPWSTR lpConsoleTitle,
    __in DWORD nSize
    );
#ifdef UNICODE
#define GetConsoleTitle  GetConsoleTitleW
#else
#define GetConsoleTitle  GetConsoleTitleA
#endif // !UNICODE

#if(_WIN32_WINNT >= 0x0600)
WINBASEAPI
DWORD
WINAPI
GetConsoleOriginalTitleA(
    __out_ecount(nSize) LPSTR lpConsoleTitle,
    __in DWORD nSize);
WINBASEAPI
DWORD
WINAPI
GetConsoleOriginalTitleW(
    __out_ecount(nSize) LPWSTR lpConsoleTitle,
    __in DWORD nSize);
#ifdef UNICODE
#define GetConsoleOriginalTitle  GetConsoleOriginalTitleW
#else
#define GetConsoleOriginalTitle  GetConsoleOriginalTitleA
#endif // !UNICODE
#endif /* _WIN32_WINNT >= 0x0600 */

WINBASEAPI
BOOL
WINAPI
SetConsoleTitleA(
    __in LPCSTR lpConsoleTitle
    );
WINBASEAPI
BOOL
WINAPI
SetConsoleTitleW(
    __in LPCWSTR lpConsoleTitle
    );
#ifdef UNICODE
#define SetConsoleTitle  SetConsoleTitleW
#else
#define SetConsoleTitle  SetConsoleTitleA
#endif // !UNICODE

typedef struct _CONSOLE_READCONSOLE_CONTROL {
    ULONG nLength;
    ULONG nInitialChars;
    ULONG dwCtrlWakeupMask;
    ULONG dwControlKeyState;
} CONSOLE_READCONSOLE_CONTROL, *PCONSOLE_READCONSOLE_CONTROL;

WINBASEAPI
BOOL
WINAPI
ReadConsoleA(
    __in HANDLE hConsoleInput,
    __out_ecount_part(nNumberOfCharsToRead, *lpNumberOfCharsRead)
       LPVOID lpBuffer,
    __in DWORD nNumberOfCharsToRead,
    __out LPDWORD lpNumberOfCharsRead,
    __in_opt PCONSOLE_READCONSOLE_CONTROL pInputControl
    );
WINBASEAPI
BOOL
WINAPI
ReadConsoleW(
    __in HANDLE hConsoleInput,
    __out_ecount_part(nNumberOfCharsToRead, *lpNumberOfCharsRead)
       LPVOID lpBuffer,
    __in DWORD nNumberOfCharsToRead,
    __out LPDWORD lpNumberOfCharsRead,
    __in_opt PCONSOLE_READCONSOLE_CONTROL pInputControl
    );
#ifdef UNICODE
#define ReadConsole  ReadConsoleW
#else
#define ReadConsole  ReadConsoleA
#endif // !UNICODE

WINBASEAPI
BOOL
WINAPI
WriteConsoleA(
    __in HANDLE hConsoleOutput,
    __in_ecount(nNumberOfCharsToWrite) CONST VOID *lpBuffer,
    __in DWORD nNumberOfCharsToWrite,
    __out_opt LPDWORD lpNumberOfCharsWritten,
    __reserved LPVOID lpReserved);
WINBASEAPI
BOOL
WINAPI
WriteConsoleW(
    __in HANDLE hConsoleOutput,
    __in_ecount(nNumberOfCharsToWrite) CONST VOID *lpBuffer,
    __in DWORD nNumberOfCharsToWrite,
    __out_opt LPDWORD lpNumberOfCharsWritten,
    __reserved LPVOID lpReserved);
#ifdef UNICODE
#define WriteConsole  WriteConsoleW
#else
#define WriteConsole  WriteConsoleA
#endif // !UNICODE

#define CONSOLE_TEXTMODE_BUFFER  1

__allocator
WINBASEAPI
HANDLE
WINAPI
CreateConsoleScreenBuffer(
    __in DWORD dwDesiredAccess,
    __in DWORD dwShareMode,
    __in_opt CONST SECURITY_ATTRIBUTES *lpSecurityAttributes,
    __in DWORD dwFlags,
    __reserved LPVOID lpScreenBufferData
    );

WINBASEAPI
UINT
WINAPI
GetConsoleCP(
    VOID);

WINBASEAPI
BOOL
WINAPI
SetConsoleCP(
    __in UINT wCodePageID
    );

WINBASEAPI
UINT
WINAPI
GetConsoleOutputCP(
    VOID);

WINBASEAPI
BOOL
WINAPI
SetConsoleOutputCP(
    __in UINT wCodePageID
    );

#if(_WIN32_WINNT >= 0x0500)

#define CONSOLE_FULLSCREEN 1            // fullscreen console
#define CONSOLE_FULLSCREEN_HARDWARE 2   // console owns the hardware

WINBASEAPI
BOOL
APIENTRY
GetConsoleDisplayMode(
    __out LPDWORD lpModeFlags);

#define CONSOLE_FULLSCREEN_MODE 1
#define CONSOLE_WINDOWED_MODE 2

BOOL
APIENTRY
SetConsoleDisplayMode(
    __in HANDLE hConsoleOutput,
    __in DWORD dwFlags,
    __out_opt PCOORD lpNewScreenBufferDimensions);

WINBASEAPI
HWND
APIENTRY
GetConsoleWindow(
    VOID
    );

#endif /* _WIN32_WINNT >= 0x0500 */

#if(_WIN32_WINNT >= 0x0501)

WINBASEAPI
DWORD
APIENTRY
GetConsoleProcessList(
    __out_ecount(dwProcessCount) LPDWORD lpdwProcessList,
    __in DWORD dwProcessCount);

//
// Aliasing apis.
//

WINBASEAPI
BOOL
APIENTRY
AddConsoleAliasA(
    __in LPSTR Source,
    __in LPSTR Target,
    __in LPSTR ExeName);
WINBASEAPI
BOOL
APIENTRY
AddConsoleAliasW(
    __in LPWSTR Source,
    __in LPWSTR Target,
    __in LPWSTR ExeName);
#ifdef UNICODE
#define AddConsoleAlias  AddConsoleAliasW
#else
#define AddConsoleAlias  AddConsoleAliasA
#endif // !UNICODE

WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasA(
    __in LPSTR Source,
    __out_ecount(TargetBufferLength) LPSTR TargetBuffer,
    __in DWORD TargetBufferLength,
    __in LPSTR ExeName);
WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasW(
    __in LPWSTR Source,
    __out_ecount(TargetBufferLength) LPWSTR TargetBuffer,
    __in DWORD TargetBufferLength,
    __in LPWSTR ExeName);
#ifdef UNICODE
#define GetConsoleAlias  GetConsoleAliasW
#else
#define GetConsoleAlias  GetConsoleAliasA
#endif // !UNICODE

WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasesLengthA(
    __in LPSTR ExeName);
WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasesLengthW(
    __in LPWSTR ExeName);
#ifdef UNICODE
#define GetConsoleAliasesLength  GetConsoleAliasesLengthW
#else
#define GetConsoleAliasesLength  GetConsoleAliasesLengthA
#endif // !UNICODE

WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasExesLengthA(
    VOID);
WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasExesLengthW(
    VOID);
#ifdef UNICODE
#define GetConsoleAliasExesLength  GetConsoleAliasExesLengthW
#else
#define GetConsoleAliasExesLength  GetConsoleAliasExesLengthA
#endif // !UNICODE

WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasesA(
    __out_ecount(AliasBufferLength) LPSTR AliasBuffer,
    __in DWORD AliasBufferLength,
    __in LPSTR ExeName);
WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasesW(
    __out_ecount(AliasBufferLength) LPWSTR AliasBuffer,
    __in DWORD AliasBufferLength,
    __in LPWSTR ExeName);
#ifdef UNICODE
#define GetConsoleAliases  GetConsoleAliasesW
#else
#define GetConsoleAliases  GetConsoleAliasesA
#endif // !UNICODE

WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasExesA(
    __out_ecount(ExeNameBufferLength) LPSTR ExeNameBuffer,
    __in DWORD ExeNameBufferLength);
WINBASEAPI
DWORD
APIENTRY
GetConsoleAliasExesW(
    __out_ecount(ExeNameBufferLength) LPWSTR ExeNameBuffer,
    __in DWORD ExeNameBufferLength);
#ifdef UNICODE
#define GetConsoleAliasExes  GetConsoleAliasExesW
#else
#define GetConsoleAliasExes  GetConsoleAliasExesA
#endif // !UNICODE

#endif /* _WIN32_WINNT >= 0x0501 */

#ifdef __cplusplus
}
#endif

#endif // _WINCON_


