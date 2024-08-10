#include "drawt.h"
#include <Windows.h>
#include <string>
#include "convert.h"
#include <thread>
#include <windows.h>
#include <string>
#include "readconfig.h"
#include <vector>

HWND hOverlayWnd = NULL;
HWND hTargetWnd = NULL;
HINSTANCE hInstance;
std::thread trackThread;
std::vector<std::wstring> textLines;

int textX = 240;
int textY = 480;
int fontH = 0;
int fontW = 0;
int PRINTLEN = 20;
int LINEHEIGHT = 30;

std::vector<std::wstring> SplitTextIntoLines(const std::wstring& text, int lineLength) {
    std::vector<std::wstring> lines;
    int startPos = 0;
    while ( startPos < text.length() ) {
        lines.push_back(text.substr(startPos, lineLength));
        startPos += lineLength;
    }
    return lines;
}

// ͸�����ڹ��̺���
LRESULT CALLBACK OverlayWndProc(HWND hwnd, UINT message, WPARAM wParam, LPARAM lParam) {
    switch ( message ) {
    case WM_PAINT: {

        rr::RConfig config;
        config.ReadConfig("hook.ini");
        fontH = config.ReadInt("GLOBAL", "FONTH", 0);
        fontW = config.ReadInt("GLOBAL", "FONTW", 0);
        textX = config.ReadInt("GLOBAL", "TEXTX", 240);
        textY = config.ReadInt("GLOBAL", "TEXTY", 480);
        LINEHEIGHT = config.ReadInt("GLOBAL", "LINEHEIGHT", 30);

        PAINTSTRUCT ps;
        HDC hdc = BeginPaint(hwnd, &ps);

        RECT rect;
        GetClientRect(hwnd, &rect);
        HBRUSH hBrush = ( HBRUSH ) GetStockObject(BLACK_BRUSH);
        FillRect(hdc, &rect, hBrush);

        SetBkMode(hdc, TRANSPARENT);

        HFONT hNewFont = CreateFont(
               fontH,                     // ����߶�
               fontW,                      // ������
               0,                      // ������б�Ƕ�
               0,                      // ������б�Ƕ�
               700,              // �����ϸ
               FALSE,                  // �Ƿ�ʹ��б��
               FALSE,                  // �Ƿ�ʹ���»���
               FALSE,                  // �Ƿ�ʹ��ɾ����
               GB2312_CHARSET,        // �ַ���
               OUT_DEFAULT_PRECIS,     // �������
               CLIP_DEFAULT_PRECIS,    // �ü�����
               ANTIALIASED_QUALITY,        // �������
               DEFAULT_PITCH | FF_MODERN,  // �������������
               L"Microsoft YaHei UI"                // ��������
        );
        SelectObject(hdc, hNewFont);

        for ( size_t i = 0; i < textLines.size(); ++i ) {
            int yPos = textY + i * LINEHEIGHT;

            // ���������ɫ����ɫ��
            SetTextColor(hdc, RGB(0, 0, 0));

            // �����ĸ���������
            TextOut(hdc, textX - 1, yPos, textLines[ i ].c_str(), ( int ) textLines[ i ].length());
            TextOut(hdc, textX + 1, yPos, textLines[ i ].c_str(), ( int ) textLines[ i ].length());
            TextOut(hdc, textX, yPos - 1, textLines[ i ].c_str(), ( int ) textLines[ i ].length());
            TextOut(hdc, textX, yPos + 1, textLines[ i ].c_str(), ( int ) textLines[ i ].length());

            // �����ı���ɫ����ɫ��
            SetTextColor(hdc, RGB(255, 255, 255));
            TextOut(hdc, textX, yPos, textLines[ i ].c_str(), ( int ) textLines[ i ].length());
        }

        EndPaint(hwnd, &ps);
        break;
    }
    case WM_DESTROY:
        PostQuitMessage(0);
        break;
    default:
        return DefWindowProc(hwnd, message, wParam, lParam);
    }
    return 0;
}

// ����͸������
void CreateOverlayWindow() {
    WNDCLASS wc = { 0 };
    wc.lpfnWndProc = OverlayWndProc;
    wc.hInstance = hInstance;
    wc.hbrBackground = ( HBRUSH ) GetStockObject(NULL_BRUSH);
    wc.lpszClassName = TEXT("OverlayWindowClass");

    RegisterClass(&wc);

    hOverlayWnd = CreateWindowEx(
        WS_EX_LAYERED | WS_EX_TRANSPARENT | WS_EX_TOPMOST,
        wc.lpszClassName,
        TEXT(""),
        WS_POPUP,
        0, 0, 500, 500, // ��ʼ��С��������Ϊ 1x1���Ժ����
        NULL, NULL, hInstance, NULL
    );

    SetLayeredWindowAttributes(hOverlayWnd, RGB(0, 0, 0), 0, LWA_COLORKEY);
    ShowWindow(hOverlayWnd, SW_SHOW);
}

// ���µ��Ӵ���λ�úʹ�С
void UpdateOverlayWindow() {
    RECT rc;
    if ( GetWindowRect(hTargetWnd, &rc) ) {
        SetWindowPos(hOverlayWnd, HWND_TOPMOST, rc.left, rc.top, rc.right - rc.left, rc.bottom - rc.top, SWP_NOACTIVATE | SWP_SHOWWINDOW);
    }
}


void DrawOverlayText(const std::wstring& text) {
    rr::RConfig config;
    config.ReadConfig("hook.ini");
    PRINTLEN = config.ReadInt("GLOBAL", "PRINTLEN", 20);
    textLines = SplitTextIntoLines(text, PRINTLEN);
    InvalidateRect(hOverlayWnd, NULL, TRUE);
}

// �����ƶ�ʱͬ������
void TrackTargetWindow() {
    RECT lastRect = { 0 };
    while ( true ) {
        RECT currentRect;
        if ( GetWindowRect(hTargetWnd, &currentRect) && memcmp(&lastRect, &currentRect, sizeof(RECT)) != 0 ) {
            lastRect = currentRect;
            UpdateOverlayWindow();
        }
        Sleep(30);
    }
}

// ���������������������Ӵ���
void StartOverlay(const wchar_t* targetWindowTitle) {
    hTargetWnd = FindWindow(NULL, targetWindowTitle);
    if ( !hTargetWnd ) {
        MessageBox(NULL, TEXT("�Ҳ���Ŀ�괰��"), TEXT("����"), MB_OK);
        return;
    }

    CreateOverlayWindow();
    trackThread = std::thread(TrackTargetWindow);
}


