//---------------------------------------------------------------------------
//
// uxtheme.h - theming API header file.
//
// Copyright (c) Microsoft Corporation. All rights reserved.
//
//---------------------------------------------------------------------------

#ifndef _UXTHEME_H_
#define _UXTHEME_H_

#include <commctrl.h>
#include <SpecStrings.h>

#ifndef THEMEAPI
#if !defined(_UXTHEME_)
#define THEMEAPI          EXTERN_C DECLSPEC_IMPORT HRESULT STDAPICALLTYPE
#define THEMEAPI_(type)   EXTERN_C DECLSPEC_IMPORT type STDAPICALLTYPE
#else
#define THEMEAPI          STDAPI
#define THEMEAPI_(type)   STDAPI_(type)
#endif /* _UXTHEME_ */
#endif /* THEMEAPI */

typedef HANDLE HTHEME;          // handle to a section of theme data for class

#if (_WIN32_WINNT >= 0x0600)
#define MAX_THEMECOLOR  64
#define MAX_THEMESIZE   64
#endif

#if (NTDDI_VERSION>= NTDDI_WIN7)
//---------------------------------------------------------------------------
// BeginPanningFeedback - Visual feedback init function related to pan gesture
//   - internally called by DefaultGestureHandler
//   - called by application
//
//  HWND hwnd - The handle to the Target window that will receive feedback
//                                                                                                 
//---------------------------------------------------------------------------
BOOL WINAPI 
BeginPanningFeedback(
__in HWND hwnd); 
//---------------------------------------------------------------------------
// UpdatePanningFeedback : Visual feedback function related to pan gesture
// Can Be called only after a BeginPanningFeedback call 
//   - internally called by DefaultGestureHandler
//   - called by application
//
// HWND hwnd                 - The handle to the Target window that will receive feedback                                                
//                             For the method to succeed this must be the same hwnd as provided in 
//                             BeginPanningFeedback
//  
// LONG lTotalOverpanOffsetX - The Total displacement that the window has moved in the horizontal direction
//                             since the end of scrollable region was reached. The API would move the window by the distance specified                                                  
//                             A maximum displacement of 30 pixels is allowed
//
// LONG lTotalOverpanOffsetY - The Total displacement that the window has moved in the horizontal direction
//                             since the end of scrollable
//                             region was reached. The API would move the window by the distance specified                                                
//                             A maximum displacement of 30 pixels is allowed
//           
// BOOL fInInertia           - Flag dictating whether the Application is handling a WM_GESTURE message with the 
//                             GF_INERTIA FLAG set 
//
//   Incremental calls to UpdatePanningFeedback should make sure they always pass
//   the sum of the increments and not just the increment themselves
//   Eg : If the initial displacement is 10 pixels and the next displacement 10 pixels
//        the second call would be with the parameter as 20 pixels as opposed to 10
//   Eg : UpdatePanningFeedback(hwnd, 10, 10, TRUE)
// 
BOOL WINAPI
UpdatePanningFeedback(
	__in HWND hwnd,
	__in LONG lTotalOverpanOffsetX, 
	__in LONG lTotalOverpanOffsetY, 
	__in BOOL fInInertia);

//---------------------------------------------------------------------------
//
// EndPanningFeedback :Visual feedback reset function related to pan gesture
//   - internally called by DefaultGestureHandler
//   - called by application
//   Terminates any existing animation that was in process or set up by BeginPanningFeedback and UpdatePanningFeedback
//   The EndPanningFeedBack needs to be called Prior to calling any BeginPanningFeedBack if we have already
//   called a BeginPanningFeedBack followed by one/ more UpdatePanningFeedback calls
//
//  HWND hwnd         - The handle to the Target window that will receive feedback
//
//  BOOL fAnimateBack - Flag to indicate whether you wish the displaced window to move back
//                      to the original position via animation or a direct jump.
//                      Either ways the method will try to restore the moved window.
//                      The latter case exists for compatibility with legacy apps. 
//
BOOL WINAPI
EndPanningFeedback(
	__in HWND hwnd, 
	__in BOOL fAnimateBack);
#endif

//---------------------------------------------------------------------------
// NOTE: PartId's and StateId's used in the theme API are defined in the 
//       hdr file <vssym32.h> using the TM_PART and TM_STATE macros.  For
//       example, "TM_PART(BP, PUSHBUTTON)" defines the PartId "BP_PUSHBUTTON".

//---------------------------------------------------------------------------
//  OpenThemeData()     - Open the theme data for the specified HWND and 
//                        semi-colon separated list of class names. 
// 
//                        OpenThemeData() will try each class name, one at 
//                        a time, and use the first matching theme info
//                        found.  If a match is found, a theme handle
//                        to the data is returned.  If no match is found,
//                        a "NULL" handle is returned. 
//
//                        When the window is destroyed or a WM_THEMECHANGED
//                        msg is received, "CloseThemeData()" should be 
//                        called to close the theme handle.
//
//  hwnd                - window handle of the control/window to be themed
//
//  pszClassList        - class name (or list of names) to match to theme data
//                        section.  if the list contains more than one name, 
//                        the names are tested one at a time for a match.  
//                        If a match is found, OpenThemeData() returns a 
//                        theme handle associated with the matching class. 
//                        This param is a list (instead of just a single 
//                        class name) to provide the class an opportunity 
//                        to get the "best" match between the class and 
//                        the current theme.  For example, a button might
//                        pass L"OkButton, Button" if its ID=ID_OK.  If 
//                        the current theme has an entry for OkButton, 
//                        that will be used.  Otherwise, we fall back on 
//                        the normal Button entry.
//---------------------------------------------------------------------------
THEMEAPI_(HTHEME)
OpenThemeData(
    HWND hwnd,
    LPCWSTR pszClassList
    );

#define OTD_FORCE_RECT_SIZING   0x00000001          // make all parts size to rect
#define OTD_NONCLIENT           0x00000002          // set if hTheme to be used for nonclient area
#define OTD_VALIDBITS           (OTD_FORCE_RECT_SIZING | \
                                 OTD_NONCLIENT)

//---------------------------------------------------------------------------
//  OpenThemeDataEx     - Open the theme data for the specified HWND and 
//                        semi-colon separated list of class names. 
// 
//                        OpenThemeData() will try each class name, one at 
//                        a time, and use the first matching theme info
//                        found.  If a match is found, a theme handle
//                        to the data is returned.  If no match is found,
//                        a "NULL" handle is returned. 
//
//                        When the window is destroyed or a WM_THEMECHANGED
//                        msg is received, "CloseThemeData()" should be 
//                        called to close the theme handle.
//
//  hwnd                - window handle of the control/window to be themed
//
//  pszClassList        - class name (or list of names) to match to theme data
//                        section.  if the list contains more than one name, 
//                        the names are tested one at a time for a match.  
//                        If a match is found, OpenThemeData() returns a 
//                        theme handle associated with the matching class. 
//                        This param is a list (instead of just a single 
//                        class name) to provide the class an opportunity 
//                        to get the "best" match between the class and 
//                        the current theme.  For example, a button might
//                        pass L"OkButton, Button" if its ID=ID_OK.  If 
//                        the current theme has an entry for OkButton, 
//                        that will be used.  Otherwise, we fall back on 
//                        the normal Button entry.
//
//  dwFlags              - allows certain overrides of std features
//                         (see OTD_XXX defines above)
//---------------------------------------------------------------------------
THEMEAPI_(HTHEME)
OpenThemeDataEx(
    HWND hwnd,
    LPCWSTR pszClassList,
    DWORD dwFlags
    );

//---------------------------------------------------------------------------
//  CloseThemeData()    - closes the theme data handle.  This should be done 
//                        when the window being themed is destroyed or
//                        whenever a WM_THEMECHANGED msg is received 
//                        (followed by an attempt to create a new Theme data 
//                        handle).
//
//  hTheme              - open theme data handle (returned from prior call
//                        to OpenThemeData() API).
//---------------------------------------------------------------------------
THEMEAPI
CloseThemeData(
    HTHEME hTheme
    );

//---------------------------------------------------------------------------
//    functions for basic drawing support 
//---------------------------------------------------------------------------
// The following methods are the theme-aware drawing services.
// Controls/Windows are defined in drawable "parts" by their author: a 
// parent part and 0 or more child parts.  Each of the parts can be 
// described in "states" (ex: disabled, hot, pressed).  
//---------------------------------------------------------------------------
// For the list of all themed classes and the definition of all
// parts and states, see the file "tmschmea.h".
//---------------------------------------------------------------------------
// Each of the below methods takes a "iPartId" param to specify the 
// part and a "iStateId" to specify the state of the part.  
// "iStateId=0" refers to the root part.  "iPartId" = "0" refers to 
// the root class.  
//-----------------------------------------------------------------------
// Note: draw operations are always scaled to fit (and not to exceed)  
// the specified "Rect".
//-----------------------------------------------------------------------

//------------------------------------------------------------------------
//  DrawThemeBackground()   
//                      - draws the theme-specified border and fill for 
//                        the "iPartId" and "iStateId".  This could be 
//                        based on a bitmap file, a border and fill, or 
//                        other image description.  
//
//  hTheme              - theme data handle
//  hdc                 - HDC to draw into
//  iPartId             - part number to draw
//  iStateId            - state number (of the part) to draw
//  pRect               - defines the size/location of the part
//  pClipRect           - optional clipping rect (don't draw outside it)
//------------------------------------------------------------------------
THEMEAPI
DrawThemeBackground(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pRect,
    __in_opt LPCRECT pClipRect
    );

//------------------------------------------------------------------------
//---- bits used in dwFlags of DTBGOPTS ----
#define DTBG_CLIPRECT           0x00000001  // rcClip has been specified
#define DTBG_DRAWSOLID          0x00000002  // DEPRECATED: draw transparent/alpha images as solid
#define DTBG_OMITBORDER         0x00000004  // don't draw border of part
#define DTBG_OMITCONTENT        0x00000008  // don't draw content area of part
#define DTBG_COMPUTINGREGION    0x00000010  // TRUE if calling to compute region
#define DTBG_MIRRORDC           0x00000020  // assume the hdc is mirrorred and
                                            // flip images as appropriate (currently 
                                            // only supported for bgtype=imagefile)
#define DTBG_NOMIRROR           0x00000040  // don't mirror the output, overrides everything else 
#define DTBG_VALIDBITS          (DTBG_CLIPRECT | \
                                 DTBG_DRAWSOLID | \
                                 DTBG_OMITBORDER | \
                                 DTBG_OMITCONTENT | \
                                 DTBG_COMPUTINGREGION | \
                                 DTBG_MIRRORDC | \
                                 DTBG_NOMIRROR)

typedef struct _DTBGOPTS
{
    DWORD dwSize;           // size of the struct
    DWORD dwFlags;          // which options have been specified
    RECT rcClip;            // clipping rectangle
} DTBGOPTS, *PDTBGOPTS;

//------------------------------------------------------------------------
//  DrawThemeBackgroundEx()   
//                      - draws the theme-specified border and fill for 
//                        the "iPartId" and "iStateId".  This could be 
//                        based on a bitmap file, a border and fill, or 
//                        other image description.  NOTE: This will be
//                        merged back into DrawThemeBackground() after 
//                        BETA 2.
//
//  hTheme              - theme data handle
//  hdc                 - HDC to draw into
//  iPartId             - part number to draw
//  iStateId            - state number (of the part) to draw
//  pRect               - defines the size/location of the part
//  pOptions            - ptr to optional params
//------------------------------------------------------------------------
THEMEAPI
DrawThemeBackgroundEx(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pRect,
    __in_opt const DTBGOPTS *pOptions
    );

//---------------------------------------------------------------------------
//----- DrawThemeText() flags ----
#define DTT_GRAYED              0x00000001          // draw a grayed-out string (this is deprecated)
#define DTT_FLAGS2VALIDBITS     (DTT_GRAYED)

//-------------------------------------------------------------------------
//  DrawThemeText()     - draws the text using the theme-specified 
//                        color and font for the "iPartId" and 
//                        "iStateId".  
//
//  hTheme              - theme data handle
//  hdc                 - HDC to draw into
//  iPartId             - part number to draw
//  iStateId            - state number (of the part) to draw
//  pszText             - actual text to draw
//  dwCharCount         - number of chars to draw (-1 for all)
//  dwTextFlags         - same as DrawText() "uFormat" param
//  dwTextFlags2        - additional drawing options 
//  pRect               - defines the size/location of the part
//-------------------------------------------------------------------------
THEMEAPI
DrawThemeText(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    __in_ecount(cchText) LPCWSTR pszText,
    int cchText,
    DWORD dwTextFlags,
    DWORD dwTextFlags2,
    LPCRECT pRect
    );

//-------------------------------------------------------------------------
//  GetThemeBackgroundContentRect()
//                      - gets the size of the content for the theme-defined 
//                        background.  This is usually the area inside
//                        the borders or Margins.  
//
//      hTheme          - theme data handle
//      hdc             - (optional) device content to be used for drawing
//      iPartId         - part number to draw
//      iStateId        - state number (of the part) to draw
//      pBoundingRect   - the outer RECT of the part being drawn
//      pContentRect    - RECT to receive the content area
//-------------------------------------------------------------------------
THEMEAPI
GetThemeBackgroundContentRect(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pBoundingRect,
    __out LPRECT pContentRect
    );

//-------------------------------------------------------------------------
//  GetThemeBackgroundExtent() - calculates the size/location of the theme-
//                               specified background based on the 
//                               "pContentRect".
//
//      hTheme          - theme data handle
//      hdc             - (optional) device content to be used for drawing
//      iPartId         - part number to draw
//      iStateId        - state number (of the part) to draw
//      pContentRect    - RECT that defines the content area
//      pBoundingRect   - RECT to receive the overall size/location of part
//-------------------------------------------------------------------------
THEMEAPI
GetThemeBackgroundExtent(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pContentRect,
    __out LPRECT pExtentRect
    );

//-------------------------------------------------------------------------
//  GetThemeBackgroundRegion()
//                      - computes the region for a regular or partially 
//                        transparent theme-specified background that is 
//                        bound by the specified "pRect".
//                        If the rectangle is empty, sets the HRGN to NULL 
//                        and return S_FALSE.
//
//  hTheme              - theme data handle
//  hdc                 - optional HDC to draw into (DPI scaling)
//  iPartId             - part number to draw
//  iStateId            - state number (of the part) 
//  pRect               - the RECT used to draw the part
//  pRegion             - receives handle to calculated region
//-------------------------------------------------------------------------
THEMEAPI
GetThemeBackgroundRegion(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pRect,
    __out HRGN *pRegion
    );

enum THEMESIZE
{
    TS_MIN,             // minimum size
    TS_TRUE,            // size without stretching
    TS_DRAW             // size that theme mgr will use to draw part
};

//-------------------------------------------------------------------------
//  GetThemePartSize() - returns the specified size of the theme part
//
//  hTheme              - theme data handle
//  hdc                 - HDC to select font into & measure against
//  iPartId             - part number to retrieve size for
//  iStateId            - state number (of the part) 
//  prc                 - (optional) rect for part drawing destination
//  eSize               - the type of size to be retreived
//  psz                 - receives the specified size of the part 
//-------------------------------------------------------------------------
THEMEAPI
GetThemePartSize(
    HTHEME hTheme,
    __in_opt HDC hdc,
    int iPartId,
    int iStateId,
    __in_opt LPCRECT prc,
    enum THEMESIZE eSize,
    __out SIZE *psz
    );

//-------------------------------------------------------------------------
//  GetThemeTextExtent() - calculates the size/location of the specified 
//                         text when rendered in the Theme Font. 
//
//  hTheme              - theme data handle
//  hdc                 - HDC to select font & measure into
//  iPartId             - part number to draw
//  iStateId            - state number (of the part) 
//  pszText             - the text to be measured
//  dwCharCount         - number of chars to draw (-1 for all)
//  dwTextFlags         - same as DrawText() "uFormat" param
//  pszBoundingRect     - optional: to control layout of text
//  pszExtentRect       - receives the RECT for text size/location
//-------------------------------------------------------------------------
THEMEAPI
GetThemeTextExtent(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    __in_ecount(cchCharCount) LPCWSTR pszText,
    int cchCharCount,
    DWORD dwTextFlags,
    __in_opt LPCRECT pBoundingRect,
    __out LPRECT pExtentRect
    );

//-------------------------------------------------------------------------
//  GetThemeTextMetrics()
//                      - returns info about the theme-specified font
//                        for the part/state passed in.
//
//  hTheme              - theme data handle
//  hdc                 - optional: HDC for screen context
//  iPartId             - part number to draw
//  iStateId            - state number (of the part) 
//  ptm                 - receives the font info
//-------------------------------------------------------------------------
THEMEAPI
GetThemeTextMetrics(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    __out TEXTMETRICW *ptm
    );

//-------------------------------------------------------------------------
//----- HitTestThemeBackground, HitTestThemeBackgroundRegion flags ----

//  Theme background segment hit test flag (default). possible return values are:
//  HTCLIENT: hit test succeeded in the middle background segment
//  HTTOP, HTLEFT, HTTOPLEFT, etc:  // hit test succeeded in the the respective theme background segment.
#define HTTB_BACKGROUNDSEG          0x00000000
//  Fixed border hit test option.  possible return values are:
//  HTCLIENT: hit test succeeded in the middle background segment
//  HTBORDER: hit test succeeded in any other background segment
#define HTTB_FIXEDBORDER            0x00000002      // Return code may be either HTCLIENT or HTBORDER. 
//  Caption hit test option.  Possible return values are:
//  HTCAPTION: hit test succeeded in the top, top left, or top right background segments
//  HTNOWHERE or another return code, depending on absence or presence of accompanying flags, resp.
#define HTTB_CAPTION                0x00000004
//  Resizing border hit test flags.  Possible return values are:
//  HTCLIENT: hit test succeeded in middle background segment
//  HTTOP, HTTOPLEFT, HTLEFT, HTRIGHT, etc:    hit test succeeded in the respective system resizing zone
//  HTBORDER: hit test failed in middle segment and resizing zones, but succeeded in a background border segment
#define HTTB_RESIZINGBORDER_LEFT    0x00000010      // Hit test left resizing border, 
#define HTTB_RESIZINGBORDER_TOP     0x00000020      // Hit test top resizing border
#define HTTB_RESIZINGBORDER_RIGHT   0x00000040      // Hit test right resizing border
#define HTTB_RESIZINGBORDER_BOTTOM  0x00000080      // Hit test bottom resizing border
#define HTTB_RESIZINGBORDER         (HTTB_RESIZINGBORDER_LEFT | \
                                     HTTB_RESIZINGBORDER_TOP | \
                                     HTTB_RESIZINGBORDER_RIGHT | \
                                     HTTB_RESIZINGBORDER_BOTTOM)
// Resizing border is specified as a template, not just window edges.
// This option is mutually exclusive with HTTB_SYSTEMSIZINGWIDTH; HTTB_SIZINGTEMPLATE takes precedence  
#define HTTB_SIZINGTEMPLATE         0x00000100
// Use system resizing border width rather than theme content margins.   
// This option is mutually exclusive with HTTB_SIZINGTEMPLATE, which takes precedence.
#define HTTB_SYSTEMSIZINGMARGINS    0x00000200

//-------------------------------------------------------------------------
//  HitTestThemeBackground()
//                      - returns a HitTestCode (a subset of the values 
//                        returned by WM_NCHITTEST) for the point "ptTest" 
//                        within the theme-specified background
//                        (bound by pRect).  "pRect" and "ptTest" should 
//                        both be in the same coordinate system 
//                        (client, screen, etc).
//
//      hTheme          - theme data handle
//      hdc             - HDC to draw into
//      iPartId         - part number to test against
//      iStateId        - state number (of the part) 
//      pRect           - the RECT used to draw the part
//      hrgn            - optional region to use; must be in same coordinates as
//                      -    pRect and pTest.
//      ptTest          - the hit point to be tested
//      dwOptions       - HTTB_xxx constants
//      pwHitTestCode   - receives the returned hit test code - one of:
//  
//                        HTNOWHERE, HTLEFT, HTTOPLEFT, HTBOTTOMLEFT,
//                        HTRIGHT, HTTOPRIGHT, HTBOTTOMRIGHT,
//                        HTTOP, HTBOTTOM, HTCLIENT
//-------------------------------------------------------------------------
THEMEAPI
HitTestThemeBackground(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    DWORD dwOptions,
    LPCRECT pRect,
    HRGN hrgn,
    POINT ptTest,
    __out WORD *pwHitTestCode
    );

//------------------------------------------------------------------------
//  DrawThemeEdge()     - Similar to the DrawEdge() API, but uses part colors
//                        and is high-DPI aware
//  hTheme              - theme data handle
//  hdc                 - HDC to draw into
//  iPartId             - part number to draw
//  iStateId            - state number of part
//  pDestRect           - the RECT used to draw the line(s)
//  uEdge               - Same as DrawEdge() API
//  uFlags              - Same as DrawEdge() API
//  pContentRect        - Receives the interior rect if (uFlags & BF_ADJUST)
//------------------------------------------------------------------------
THEMEAPI
DrawThemeEdge(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pDestRect,
    UINT uEdge,
    UINT uFlags,
    __out_opt LPRECT pContentRect
    );

//------------------------------------------------------------------------
//  DrawThemeIcon()     - draws an image within an imagelist based on 
//                        a (possible) theme-defined effect. 
//
//  hTheme              - theme data handle
//  hdc                 - HDC to draw into
//  iPartId             - part number to draw
//  iStateId            - state number of part
//  pRect               - the RECT to draw the image within
//  himl                - handle to IMAGELIST 
//  iImageIndex         - index into IMAGELIST (which icon to draw)
//------------------------------------------------------------------------
THEMEAPI
DrawThemeIcon(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    LPCRECT pRect,
    HIMAGELIST himl,
    int iImageIndex
    );

//---------------------------------------------------------------------------
//  IsThemePartDefined() - returns TRUE if the theme has defined parameters
//                         for the specified "iPartId" and "iStateId".
//
//  hTheme              - theme data handle
//  iPartId             - part number to find definition for
//  iStateId            - state number of part
//---------------------------------------------------------------------------
THEMEAPI_(BOOL)
IsThemePartDefined(
    HTHEME hTheme,
    int iPartId,
    int iStateId
    );

//---------------------------------------------------------------------------
//  IsThemeBackgroundPartiallyTransparent()
//                      - returns TRUE if the theme specified background for 
//                        the part/state has transparent pieces or 
//                        alpha-blended pieces.
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//---------------------------------------------------------------------------
THEMEAPI_(BOOL)
IsThemeBackgroundPartiallyTransparent(
    HTHEME hTheme,
    int iPartId,
    int iStateId
    );

//---------------------------------------------------------------------------
//    lower-level theme information services
//---------------------------------------------------------------------------
// The following methods are getter routines for each of the Theme Data types.
// Controls/Windows are defined in drawable "parts" by their author: a 
// parent part and 0 or more child parts.  Each of the parts can be 
// described in "states" (ex: disabled, hot, pressed).  
//---------------------------------------------------------------------------
// Each of the below methods takes a "iPartId" param to specify the 
// part and a "iStateId" to specify the state of the part.  
// "iStateId=0" refers to the root part.  "iPartId" = "0" refers to 
// the root class.  
//-----------------------------------------------------------------------
// Each method also take a "iPropId" param because multiple instances of 
// the same primitive type can be defined in the theme schema.
//-----------------------------------------------------------------------

//-----------------------------------------------------------------------
//  GetThemeColor()     - Get the value for the specified COLOR property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  pColor              - receives the value of the property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeColor(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out COLORREF *pColor
    );

//-----------------------------------------------------------------------
//  GetThemeMetric()    - Get the value for the specified metric/size
//                        property
//
//  hTheme              - theme data handle
//  hdc                 - (optional) hdc to be drawn into (DPI scaling)
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  piVal               - receives the value of the property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeMetric(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    int iPropId,
    __out int *piVal
    );

//-----------------------------------------------------------------------
//  GetThemeString()    - Get the value for the specified string property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  pszBuff             - receives the string property value
//  cchMaxBuffChars     - max. number of chars allowed in pszBuff
//-----------------------------------------------------------------------
THEMEAPI
GetThemeString(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out_ecount(cchMaxBuffChars) LPWSTR pszBuff,
    int cchMaxBuffChars
    );

//-----------------------------------------------------------------------
//  GetThemeBool()      - Get the value for the specified BOOL property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  pfVal               - receives the value of the property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeBool(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out BOOL *pfVal
    );

//-----------------------------------------------------------------------
//  GetThemeInt()       - Get the value for the specified int property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  piVal               - receives the value of the property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeInt(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out int *piVal
    );

//-----------------------------------------------------------------------
//  GetThemeEnumValue() - Get the value for the specified ENUM property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  piVal               - receives the value of the enum (cast to int*)
//-----------------------------------------------------------------------
THEMEAPI
GetThemeEnumValue(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out int *piVal
    );

//-----------------------------------------------------------------------
//  GetThemePosition()  - Get the value for the specified position
//                        property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  pPoint              - receives the value of the position property
//-----------------------------------------------------------------------
THEMEAPI
GetThemePosition(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out POINT *pPoint
    );

//-----------------------------------------------------------------------
//  GetThemeFont()      - Get the value for the specified font property
//
//  hTheme              - theme data handle
//  hdc                 - (optional) hdc to be drawn to (DPI scaling)
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  pFont               - receives the value of the LOGFONT property
//                        (scaled for the current logical screen dpi) 
//-----------------------------------------------------------------------
THEMEAPI
GetThemeFont(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    int iPropId,
    __out LOGFONTW *pFont
    );

//-----------------------------------------------------------------------
//  GetThemeRect()      - Get the value for the specified RECT property
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to get the value for
//  pRect               - receives the value of the RECT property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeRect(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out LPRECT pRect
    );

typedef struct _MARGINS
{
    int cxLeftWidth;      // width of left border that retains its size
    int cxRightWidth;     // width of right border that retains its size
    int cyTopHeight;      // height of top border that retains its size
    int cyBottomHeight;   // height of bottom border that retains its size
} MARGINS, *PMARGINS;

//-----------------------------------------------------------------------
//  GetThemeMargins()   - Get the value for the specified MARGINS property
//
//      hTheme          - theme data handle
//      hdc             - (optional) hdc to be used for drawing
//      iPartId         - part number 
//      iStateId        - state number of part
//      iPropId         - the property number to get the value for
//      prc             - RECT for area to be drawn into
//      pMargins        - receives the value of the MARGINS property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeMargins(
    HTHEME hTheme,
    __in_opt HDC hdc,
    int iPartId,
    int iStateId,
    int iPropId,
    __in_opt LPCRECT prc,
    __out MARGINS *pMargins
    );

#if (_WIN32_WINNT >= 0x0600)
#define MAX_INTLIST_COUNT 402
#else
#define MAX_INTLIST_COUNT 10
#endif

typedef struct _INTLIST
{
    int iValueCount;      // number of values in iValues
    int iValues[MAX_INTLIST_COUNT];
} INTLIST, *PINTLIST;

//-----------------------------------------------------------------------
//  GetThemeIntList()   - Get the value for the specified INTLIST struct
//
//      hTheme          - theme data handle
//      iPartId         - part number 
//      iStateId        - state number of part
//      iPropId         - the property number to get the value for
//      pIntList        - receives the value of the INTLIST property
//-----------------------------------------------------------------------
THEMEAPI
GetThemeIntList(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out INTLIST *pIntList
    );

enum PROPERTYORIGIN
{
    PO_STATE,           // property was found in the state section
    PO_PART,            // property was found in the part section
    PO_CLASS,           // property was found in the class section
    PO_GLOBAL,          // property was found in [globals] section
    PO_NOTFOUND         // property was not found
};

//-----------------------------------------------------------------------
//  GetThemePropertyOrigin()
//                      - searches for the specified theme property
//                        and sets "pOrigin" to indicate where it was 
//                        found (or not found)
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to search for
//  pOrigin             - receives the value of the property origin
//-----------------------------------------------------------------------
THEMEAPI
GetThemePropertyOrigin(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out enum PROPERTYORIGIN *pOrigin
    );

//---------------------------------------------------------------------------
//  SetWindowTheme()
//                      - redirects an existing Window to use a different 
//                        section of the current theme information than its 
//                        class normally asks for.
//
//  hwnd                - the handle of the window (cannot be NULL)
//
//  pszSubAppName       - app (group) name to use in place of the calling
//                        app's name.  If NULL, the actual calling app 
//                        name will be used.
//
//  pszSubIdList        - semicolon separated list of class Id names to 
//                        use in place of actual list passed by the 
//                        window's class.  if NULL, the id list from the 
//                        calling class is used.
//---------------------------------------------------------------------------
// The Theme Manager will remember the "pszSubAppName" and the
// "pszSubIdList" associations thru the lifetime of the window (even 
// if themes are subsequently changed).  The window is sent a 
// "WM_THEMECHANGED" msg at the end of this call, so that the new
// theme can be found and applied.
//---------------------------------------------------------------------------
// When "pszSubAppName" or "pszSubIdList" are NULL, the Theme Manager 
// removes the previously remember association.  To turn off theme-ing for 
// the specified window, you can pass an empty string (L"") so it 
// won't match any section entries.
//---------------------------------------------------------------------------
THEMEAPI
SetWindowTheme(
    HWND hwnd,
    LPCWSTR pszSubAppName,
    LPCWSTR pszSubIdList
    );


//---------------------------------------------------------------------------
//  GetThemeFilename()  - Get the value for the specified FILENAME property.
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateId            - state number of part
//  iPropId             - the property number to search for
//  pszThemeFileName    - output buffer to receive the filename
//  cchMaxBuffChars     - the size of the return buffer, in chars
//---------------------------------------------------------------------------
THEMEAPI
GetThemeFilename(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out_ecount(cchMaxBuffChars) LPWSTR pszThemeFileName,
    int cchMaxBuffChars
    );

//---------------------------------------------------------------------------
//  GetThemeSysColor()  - Get the value of the specified System color. 
//
//  hTheme              - the theme data handle.  if non-NULL, will return
//                        color from [SysMetrics] section of theme.
//                        if NULL, will return the global system color.
//
//  iColorId            - the system color index defined in winuser.h
//---------------------------------------------------------------------------
THEMEAPI_(COLORREF)
GetThemeSysColor(
    HTHEME hTheme,
    int iColorId
    );

//---------------------------------------------------------------------------
//  GetThemeSysColorBrush() 
//                      - Get the brush for the specified System color. 
//
//  hTheme              - the theme data handle.  if non-NULL, will return
//                        brush matching color from [SysMetrics] section of 
//                        theme.  if NULL, will return the brush matching
//                        global system color.
//
//  iColorId            - the system color index defined in winuser.h
//---------------------------------------------------------------------------
THEMEAPI_(HBRUSH)
GetThemeSysColorBrush(
    HTHEME hTheme,
    int iColorId
    );

//---------------------------------------------------------------------------
//  GetThemeSysBool()   - Get the boolean value of specified System metric. 
//
//  hTheme              - the theme data handle.  if non-NULL, will return
//                        BOOL from [SysMetrics] section of theme.
//                        if NULL, will return the specified system boolean.
//
//  iBoolId             - the TMT_XXX BOOL number (first BOOL
//                        is TMT_FLATMENUS)
//---------------------------------------------------------------------------
THEMEAPI_(BOOL)
GetThemeSysBool(
    HTHEME hTheme,
    int iBoolId
    );

//---------------------------------------------------------------------------
//  GetThemeSysSize()   - Get the value of the specified System size metric. 
//                        (scaled for the current logical screen dpi) 
//
//  hTheme              - the theme data handle.  if non-NULL, will return
//                        size from [SysMetrics] section of theme.
//                        if NULL, will return the global system metric.
//
//  iSizeId             - the following values are supported when 
//                        hTheme is non-NULL:
//
//                          SM_CXBORDER       (border width)
//                          SM_CXVSCROLL      (scrollbar width)
//                          SM_CYHSCROLL      (scrollbar height)
//                          SM_CXSIZE         (caption width)
//                          SM_CYSIZE         (caption height)
//                          SM_CXSMSIZE       (small caption width)
//                          SM_CYSMSIZE       (small caption height)
//                          SM_CXMENUSIZE     (menubar width)
//                          SM_CYMENUSIZE     (menubar height)
//                          SM_CXPADDEDBORDER (padded border width)
//
//                        when hTheme is NULL, iSizeId is passed directly
//                        to the GetSystemMetrics() function
//---------------------------------------------------------------------------
THEMEAPI_(int)
GetThemeSysSize(
    HTHEME hTheme,
    int iSizeId
    );

//---------------------------------------------------------------------------
//  GetThemeSysFont()   - Get the LOGFONT for the specified System font. 
//
//  hTheme              - the theme data handle.  if non-NULL, will return
//                        font from [SysMetrics] section of theme.
//                        if NULL, will return the specified system font.
//
//  iFontId             - the TMT_XXX font number (first font
//                        is TMT_CAPTIONFONT)
//
//  plf                 - ptr to LOGFONT to receive the font value.
//                        (scaled for the current logical screen dpi) 
//---------------------------------------------------------------------------
THEMEAPI
GetThemeSysFont(
    HTHEME hTheme,
    int iFontId,
    __out LOGFONTW *plf
    );

//---------------------------------------------------------------------------
//  GetThemeSysString() - Get the value of specified System string metric. 
//
//  hTheme              - the theme data handle (required)
//
//  iStringId           - must be one of the following values:
//
//                          TMT_CSSNAME
//                          TMT_XMLNAME
//
//  pszStringBuff       - the buffer to receive the string value
//
//  cchMaxStringChars   - max. number of chars that pszStringBuff can hold
//---------------------------------------------------------------------------
THEMEAPI
GetThemeSysString(
    HTHEME hTheme,
    int iStringId,
    __out_ecount(cchMaxStringChars) LPWSTR pszStringBuff,
    int cchMaxStringChars
    );

//---------------------------------------------------------------------------
//  GetThemeSysInt() - Get the value of specified System int.
//
//  hTheme              - the theme data handle (required)
//
//  iIntId              - must be one of the following values:
//
//                          TMT_DPIX
//                          TMT_DPIY
//                          TMT_MINCOLORDEPTH
//
//  piValue             - ptr to int to receive value
//---------------------------------------------------------------------------
THEMEAPI
GetThemeSysInt(
    HTHEME hTheme,
    int iIntId,
    __out int *piValue
    );

//---------------------------------------------------------------------------
//  IsThemeActive()     - can be used to test if a system theme is active
//                        for the current user session.  
//
//                        use the API "IsAppThemed()" to test if a theme is
//                        active for the calling process.
//---------------------------------------------------------------------------
THEMEAPI_(BOOL)
IsThemeActive(
    VOID
    );

//---------------------------------------------------------------------------
//  IsAppThemed()       - returns TRUE if a theme is active and available to
//                        the current process
//---------------------------------------------------------------------------
THEMEAPI_(BOOL)
IsAppThemed(
    VOID
    );

//---------------------------------------------------------------------------
//  GetWindowTheme()    - if window is themed, returns its most recent
//                        HTHEME from OpenThemeData() - otherwise, returns
//                        NULL.
//
//      hwnd            - the window to get the HTHEME of
//---------------------------------------------------------------------------
THEMEAPI_(HTHEME)
GetWindowTheme(
    HWND hwnd
    );

#define ETDT_DISABLE                    0x00000001
#define ETDT_ENABLE                     0x00000002
#define ETDT_USETABTEXTURE              0x00000004

#define ETDT_ENABLETAB              (ETDT_ENABLE | \
                                     ETDT_USETABTEXTURE)

#if (_WIN32_WINNT >= 0x0600)
#define ETDT_USEAEROWIZARDTABTEXTURE    0x00000008

#define ETDT_ENABLEAEROWIZARDTAB    (ETDT_ENABLE | \
                                     ETDT_USEAEROWIZARDTABTEXTURE)

#define ETDT_VALIDBITS              (ETDT_DISABLE | \
                                     ETDT_ENABLE | \
                                     ETDT_USETABTEXTURE | \
                                     ETDT_USEAEROWIZARDTABTEXTURE)
#endif

//---------------------------------------------------------------------------
//  EnableThemeDialogTexture() 
//
//  - Enables/disables dialog background theme.  This method can be used to 
//    tailor dialog compatibility with child windows and controls that 
//    may or may not coordinate the rendering of their client area backgrounds 
//    with that of their parent dialog in a manner that supports seamless 
//    background texturing.
//
//      hdlg         - the window handle of the target dialog
//      dwFlags      - ETDT_ENABLE to enable the theme-defined dialog background texturing,
//                     ETDT_DISABLE to disable background texturing,
//                     ETDT_ENABLETAB to enable the theme-defined background 
//                          texturing using the Tab texture
//---------------------------------------------------------------------------
THEMEAPI
EnableThemeDialogTexture(
    __in HWND hwnd,
    __in DWORD dwFlags
    );

//---------------------------------------------------------------------------
//  IsThemeDialogTextureEnabled() 
//
//  - Reports whether the dialog supports background texturing.
//
//      hdlg         - the window handle of the target dialog
//---------------------------------------------------------------------------
THEMEAPI_(BOOL)
IsThemeDialogTextureEnabled(
    __in HWND hwnd
    );

//---------------------------------------------------------------------------
//---- flags to control theming within an app ----

#define STAP_ALLOW_NONCLIENT    (1UL << 0)
#define STAP_ALLOW_CONTROLS     (1UL << 1)
#define STAP_ALLOW_WEBCONTENT   (1UL << 2)
#define STAP_VALIDBITS          (STAP_ALLOW_NONCLIENT | \
                                 STAP_ALLOW_CONTROLS | \
                                 STAP_ALLOW_WEBCONTENT)

//---------------------------------------------------------------------------
//  GetThemeAppProperties()
//                      - returns the app property flags that control theming
//---------------------------------------------------------------------------
THEMEAPI_(DWORD)
GetThemeAppProperties(
    VOID
    );

//---------------------------------------------------------------------------
//  SetThemeAppProperties()
//                      - sets the flags that control theming within the app
//
//      dwFlags         - the flag values to be set
//---------------------------------------------------------------------------
THEMEAPI_(void)
SetThemeAppProperties(
    DWORD dwFlags
    );

//---------------------------------------------------------------------------
//  GetCurrentThemeName()
//                      - Get the name of the current theme in-use.  
//                        Optionally, return the ColorScheme name and the 
//                        Size name of the theme.
//
//  pszThemeFileName    - receives the theme path & filename
//  cchMaxNameChars     - max chars allowed in pszNameBuff
//
//  pszColorBuff        - (optional) receives the canonical color scheme name
//                        (not the display name)
//  cchMaxColorChars    - max chars allowed in pszColorBuff
//
//  pszSizeBuff         - (optional) receives the canonical size name 
//                        (not the display name)
//  cchMaxSizeChars     - max chars allowed in pszSizeBuff
//---------------------------------------------------------------------------
THEMEAPI GetCurrentThemeName(
    __out_ecount(cchMaxNameChars) LPWSTR pszThemeFileName,
    int cchMaxNameChars,
    __out_ecount_opt(cchMaxColorChars) LPWSTR pszColorBuff,
    int cchMaxColorChars,
    __out_ecount_opt(cchMaxSizeChars) LPWSTR pszSizeBuff,
    int cchMaxSizeChars
    );

#define SZ_THDOCPROP_DISPLAYNAME    L"DisplayName"
#define SZ_THDOCPROP_CANONICALNAME  L"ThemeName"
#define SZ_THDOCPROP_TOOLTIP        L"ToolTip"
#define SZ_THDOCPROP_AUTHOR         L"author"

THEMEAPI
GetThemeDocumentationProperty(
    LPCWSTR pszThemeName,
    LPCWSTR pszPropertyName,
    __out_ecount(cchMaxValChars) LPWSTR pszValueBuff,
    int cchMaxValChars
    );

//---------------------------------------------------------------------------
//  Theme API Error Handling
//
//      All functions in the Theme API not returning an HRESULT (THEMEAPI_) 
//      use the WIN32 function "SetLastError()" to record any call failures.  
//
//      To retreive the error code of the last failure on the
//      current thread for these type of API's, use the WIN32 function 
//      "GetLastError()".
//
//      All Theme API error codes (HRESULT's and GetLastError() values)
//      should be normal win32 errors which can be formatted into
//      strings using the Win32 API FormatMessage().
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
// DrawThemeParentBackground()
//                      - used by partially-transparent or alpha-blended
//                        child controls to draw the part of their parent
//                        that they appear in front of.
//
//  hwnd                - handle of the child control
//
//  hdc                 - hdc of the child control
//
//  prc                 - (optional) rect that defines the area to be 
//                        drawn (CHILD coordinates)
//---------------------------------------------------------------------------
THEMEAPI
DrawThemeParentBackground(
    HWND hwnd,
    HDC hdc,
    __in_opt const RECT* prc
    );


//---------------------------------------------------------------------------
//  EnableTheming()     - enables or disables themeing for the current user
//                        in the current and future sessions.
//
//  fEnable             - if FALSE, disable theming & turn themes off.
//                      - if TRUE, enable themeing and, if user previously
//                        had a theme active, make it active now.
//---------------------------------------------------------------------------
THEMEAPI
EnableTheming(
    BOOL fEnable
    );

#define GBF_DIRECT      0x00000001      // direct dereferencing.
#define GBF_COPY        0x00000002      // create a copy of the bitmap
#define GBF_VALIDBITS   (GBF_DIRECT | \
                         GBF_COPY)

#if (_WIN32_WINNT >= 0x0600)

#define DTPB_WINDOWDC           0x00000001
#define DTPB_USECTLCOLORSTATIC  0x00000002
#define DTPB_USEERASEBKGND      0x00000004

//---------------------------------------------------------------------------
// DrawThemeParentBackgroundEx()
//                      - used by partially-transparent or alpha-blended
//                        child controls to draw the part of their parent
//                        that they appear in front of.
//                        Sends a WM_ERASEBKGND message followed by a WM_PRINTCLIENT.
//
//  hwnd                - handle of the child control
//
//  hdc                 - hdc of the child control
//
//  dwFlags             - if 0, only returns S_OK if the parent handled 
//                        WM_PRINTCLIENT.
//                      - if DTPB_WINDOWDC is set, hdc is assumed to be a window DC,
//                        not a client DC.
//                      - if DTPB_USEERASEBKGND is set, the function will return S_OK 
//                        without sending a WM_CTLCOLORSTATIC message if the parent 
//                        actually painted on WM_ERASEBKGND.
//                      - if DTPB_CTLCOLORSTATIC is set, the function will send
//                        a WM_CTLCOLORSTATIC message to the parent and use the 
//                        brush if one is provided, else COLOR_BTNFACE.
//
//  prc                 - (optional) rect that defines the area to be 
//                        drawn (CHILD coordinates)
//
//  Return value        - S_OK if something was painted, S_FALSE if not.
//---------------------------------------------------------------------------
THEMEAPI
DrawThemeParentBackgroundEx(
    HWND hwnd,
    HDC hdc,
    DWORD dwFlags,
    __in_opt const RECT* prc
    );


enum WINDOWTHEMEATTRIBUTETYPE
{
    WTA_NONCLIENT = 1
};

typedef struct _WTA_OPTIONS
{
    DWORD dwFlags;          // values for each style option specified in the bitmask
    DWORD dwMask;           // bitmask for flags that are changing
                            // valid options are: WTNCA_NODRAWCAPTION, WTNCA_NODRAWICON, WTNCA_NOSYSMENU
} WTA_OPTIONS, *PWTA_OPTIONS;

#define WTNCA_NODRAWCAPTION       0x00000001    // don't draw the window caption
#define WTNCA_NODRAWICON          0x00000002    // don't draw the system icon
#define WTNCA_NOSYSMENU           0x00000004    // don't expose the system menu icon functionality
#define WTNCA_NOMIRRORHELP        0x00000008    // don't mirror the question mark, even in RTL layout
#define WTNCA_VALIDBITS           (WTNCA_NODRAWCAPTION | \
                                   WTNCA_NODRAWICON | \
                                   WTNCA_NOSYSMENU | \
                                   WTNCA_NOMIRRORHELP)

THEMEAPI
SetWindowThemeAttribute(
    HWND hwnd,
    enum WINDOWTHEMEATTRIBUTETYPE eAttribute,
    __in_bcount(cbAttribute) PVOID pvAttribute,
    DWORD cbAttribute
    );

__inline HRESULT SetWindowThemeNonClientAttributes(HWND hwnd, DWORD dwMask, DWORD dwAttributes)    
{
    WTA_OPTIONS wta;
    wta.dwFlags = dwAttributes;
    wta.dwMask = dwMask;
    return SetWindowThemeAttribute(hwnd, WTA_NONCLIENT, (void*)&(wta), sizeof(wta));
}

#endif // #if (_WIN32_WINNT >= 0x0600)

//---------------------------------------------------------------------------
//
// DrawThemeTextEx
//
// Note: DrawThemeTextEx only exists on Windows Vista and higher, but the 
// following declarations are provided to enable declaring its prototype when
// compiling for all platforms.

// Callback function used by DrawThemeTextEx, instead of DrawText
typedef 
int
(WINAPI *DTT_CALLBACK_PROC)
(
    __in HDC hdc,
    __inout_ecount(cchText) LPWSTR pszText,
    __in int cchText,
    __inout LPRECT prc,
    __in UINT dwFlags,
    __in LPARAM lParam);

//---- bits used in dwFlags of DTTOPTS ----
#define DTT_TEXTCOLOR       (1UL << 0)      // crText has been specified
#define DTT_BORDERCOLOR     (1UL << 1)      // crBorder has been specified
#define DTT_SHADOWCOLOR     (1UL << 2)      // crShadow has been specified
#define DTT_SHADOWTYPE      (1UL << 3)      // iTextShadowType has been specified
#define DTT_SHADOWOFFSET    (1UL << 4)      // ptShadowOffset has been specified
#define DTT_BORDERSIZE      (1UL << 5)      // iBorderSize has been specified
#define DTT_FONTPROP        (1UL << 6)      // iFontPropId has been specified
#define DTT_COLORPROP       (1UL << 7)      // iColorPropId has been specified
#define DTT_STATEID         (1UL << 8)      // IStateId has been specified
#define DTT_CALCRECT        (1UL << 9)      // Use pRect as and in/out parameter
#define DTT_APPLYOVERLAY    (1UL << 10)     // fApplyOverlay has been specified
#define DTT_GLOWSIZE        (1UL << 11)     // iGlowSize has been specified
#define DTT_CALLBACK        (1UL << 12)     // pfnDrawTextCallback has been specified
#define DTT_COMPOSITED      (1UL << 13)     // Draws text with antialiased alpha (needs a DIB section)
#define DTT_VALIDBITS       (DTT_TEXTCOLOR | \
                             DTT_BORDERCOLOR | \
                             DTT_SHADOWCOLOR | \
                             DTT_SHADOWTYPE | \
                             DTT_SHADOWOFFSET | \
                             DTT_BORDERSIZE | \
                             DTT_FONTPROP | \
                             DTT_COLORPROP | \
                             DTT_STATEID | \
                             DTT_CALCRECT | \
                             DTT_APPLYOVERLAY | \
                             DTT_GLOWSIZE | \
                             DTT_COMPOSITED)

typedef struct _DTTOPTS
{
    DWORD             dwSize;              // size of the struct
    DWORD             dwFlags;             // which options have been specified
    COLORREF          crText;              // color to use for text fill
    COLORREF          crBorder;            // color to use for text outline
    COLORREF          crShadow;            // color to use for text shadow
    int               iTextShadowType;     // TST_SINGLE or TST_CONTINUOUS
    POINT             ptShadowOffset;      // where shadow is drawn (relative to text)
    int               iBorderSize;         // Border radius around text
    int               iFontPropId;         // Font property to use for the text instead of TMT_FONT
    int               iColorPropId;        // Color property to use for the text instead of TMT_TEXTCOLOR
    int               iStateId;            // Alternate state id
    BOOL              fApplyOverlay;       // Overlay text on top of any text effect?
    int               iGlowSize;           // Glow radious around text
    DTT_CALLBACK_PROC pfnDrawTextCallback; // Callback for DrawText
    LPARAM            lParam;              // Parameter for callback
} DTTOPTS, *PDTTOPTS; 

#if (_WIN32_WINNT >= 0x0600)

THEMEAPI
DrawThemeTextEx(
    HTHEME hTheme,
    HDC hdc,
    int iPartId,
    int iStateId,
    __in_ecount(cchText) LPCWSTR pszText,
    int cchText,
    DWORD dwTextFlags,
    __inout LPRECT pRect,
    __in_opt const DTTOPTS *pOptions
    );


//-----------------------------------------------------------------------
//  GetThemeStream() - Get the value for the specified STREAM property
//
//      hTheme      - theme data handle
//      iPartId     - part number 
//      iStateId    - state number of part
//      iPropId     - the property number to get the value for
//      ppvStream   - if non-null receives the value of the STREAM property (not to be freed)
//      pcbStream   - if non-null receives the size of the STREAM property
//      hInst       - NULL when iPropId==TMT_STREAM, HINSTANCE of a loaded msstyles 
//                    file when iPropId==TMT_DISKSTREAM (use GetCurrentThemeName 
//                    and LoadLibraryEx(LOAD_LIBRARY_AS_DATAFILE)
//-----------------------------------------------------------------------
THEMEAPI
GetThemeBitmap(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    ULONG dwFlags,
    __out HBITMAP* phBitmap
    );

//-----------------------------------------------------------------------
//  GetThemeStream() - Get the value for the specified STREAM property
//
//      hTheme      - theme data handle
//      iPartId     - part number 
//      iStateId    - state number of part
//      iPropId     - the property number to get the value for
//      ppvStream   - if non-null receives the value of the STREAM property (not to be freed)
//      pcbStream   - if non-null receives the size of the STREAM property
//      hInst       - NULL when iPropId==TMT_STREAM, HINSTANCE of a loaded msstyles 
//                    file when iPropId==TMT_DISKSTREAM (use GetCurrentThemeName 
//                    and LoadLibraryEx(LOAD_LIBRARY_AS_DATAFILE)
//-----------------------------------------------------------------------
THEMEAPI
GetThemeStream(
    HTHEME hTheme,
    int iPartId,
    int iStateId,
    int iPropId,
    __out VOID **ppvStream,
    __out_opt DWORD *pcbStream,
    __in_opt HINSTANCE hInst
    );


//------------------------------------------------------------------------
//  BufferedPaintInit() - Initialize the Buffered Paint API.
//                        Should be called prior to BeginBufferedPaint,
//                        and should have a matching BufferedPaintUnInit.
//------------------------------------------------------------------------
THEMEAPI
BufferedPaintInit(
    VOID
    );

//------------------------------------------------------------------------
//  BufferedPaintUnInit() - Uninitialize the Buffered Paint API.
//                          Should be called once for each call to BufferedPaintInit,
//                          when calls to BeginBufferedPaint are no longer needed.
//------------------------------------------------------------------------
THEMEAPI
BufferedPaintUnInit(
    VOID
    );

//------------------------------------------------------------------------
//  BeginBufferedPaint() - Begins a buffered paint operation.
//
//    hdcTarget          - Target DC on which the buffer will be painted
//    rcTarget           - Rectangle specifying the area of the target DC to paint to
//    dwFormat           - Format of the buffer (see BP_BUFFERFORMAT)
//    pPaintParams       - Paint operation parameters (see BP_PAINTPARAMS)
//    phBufferedPaint    - Pointer to receive handle to new buffered paint context
//------------------------------------------------------------------------

// HPAINTBUFFER
typedef HANDLE HPAINTBUFFER;  // handle to a buffered paint context


// BP_BUFFERFORMAT
typedef enum _BP_BUFFERFORMAT
{
    BPBF_COMPATIBLEBITMAP,    // Compatible bitmap
    BPBF_DIB,                 // Device-independent bitmap
    BPBF_TOPDOWNDIB,          // Top-down device-independent bitmap
    BPBF_TOPDOWNMONODIB       // Top-down monochrome device-independent bitmap
} BP_BUFFERFORMAT;

#define BPBF_COMPOSITED BPBF_TOPDOWNDIB


// BP_ANIMATIONSTYLE
typedef enum _BP_ANIMATIONSTYLE
{
    BPAS_NONE,                // No animation
    BPAS_LINEAR,              // Linear fade animation
    BPAS_CUBIC,               // Cubic fade animation
    BPAS_SINE                 // Sinusoid fade animation
} BP_ANIMATIONSTYLE;


// BP_ANIMATIONPARAMS
typedef struct _BP_ANIMATIONPARAMS
{
    DWORD               cbSize;
    DWORD               dwFlags; // BPAF_ flags
    BP_ANIMATIONSTYLE   style;
    DWORD               dwDuration;
} BP_ANIMATIONPARAMS, *PBP_ANIMATIONPARAMS;

#define BPPF_ERASE               0x0001 // Empty the buffer during BeginBufferedPaint()
#define BPPF_NOCLIP              0x0002 // Don't apply the target DC's clip region to the double buffer
#define BPPF_NONCLIENT           0x0004 // Using a non-client DC

                                        
// BP_PAINTPARAMS
typedef struct _BP_PAINTPARAMS
{
    DWORD                       cbSize;
    DWORD                       dwFlags; // BPPF_ flags
    const RECT *                prcExclude;
    const BLENDFUNCTION *       pBlendFunction;
} BP_PAINTPARAMS, *PBP_PAINTPARAMS;

THEMEAPI_(__success(return != NULL) HPAINTBUFFER)
BeginBufferedPaint(
    HDC hdcTarget,
    const RECT* prcTarget,
    BP_BUFFERFORMAT dwFormat,
    __in_opt BP_PAINTPARAMS *pPaintParams,
    __out HDC *phdc
    );


//------------------------------------------------------------------------
//  EndBufferedPaint() - Ends a buffered paint operation.
//
//    hBufferedPaint   - handle to buffered paint context
//    fUpdateTarget    - update target DC
//------------------------------------------------------------------------
THEMEAPI
EndBufferedPaint(
    HPAINTBUFFER hBufferedPaint,
    BOOL fUpdateTarget
    );

//------------------------------------------------------------------------
//  GetBufferedPaintTargetRect() - Returns the target rectangle specified during BeginBufferedPaint
//
//    hBufferedPaint             - handle to buffered paint context
//    prc                        - pointer to receive target rectangle
//------------------------------------------------------------------------
THEMEAPI
GetBufferedPaintTargetRect(
    HPAINTBUFFER hBufferedPaint,
    __out RECT *prc
    );

//------------------------------------------------------------------------
//  GetBufferedPaintTargetDC() - Returns the target DC specified during BeginBufferedPaint
//
//    hBufferedPaint           - handle to buffered paint context
//------------------------------------------------------------------------
THEMEAPI_(HDC)
GetBufferedPaintTargetDC(
    HPAINTBUFFER hBufferedPaint
    );

//------------------------------------------------------------------------
//  GetBufferedPaintDC() - Returns the same paint DC returned by BeginBufferedPaint
//
//    hBufferedPaint     - handle to buffered paint context
//------------------------------------------------------------------------
THEMEAPI_(HDC)
GetBufferedPaintDC(
    HPAINTBUFFER hBufferedPaint
    );

//------------------------------------------------------------------------
//  GetBufferedPaintBits() - Obtains a pointer to the buffer bitmap, if the buffer is a DIB
//
//    hBufferedPaint       - handle to buffered paint context
//    ppbBuffer            - pointer to receive pointer to buffer bitmap pixels
//    pcxRow               - pointer to receive width of buffer bitmap, in pixels;
//                           this value may not necessarily be equal to the buffer width
//------------------------------------------------------------------------
THEMEAPI
GetBufferedPaintBits(
    HPAINTBUFFER hBufferedPaint,
    __out RGBQUAD **ppbBuffer,
    __out int *pcxRow
    );

//------------------------------------------------------------------------
//  BufferedPaintClear() - Clears given rectangle to ARGB = {0, 0, 0, 0}
//
//    hBufferedPaint     - handle to buffered paint context
//    prc                - rectangle to clear; NULL specifies entire buffer
//------------------------------------------------------------------------
THEMEAPI
BufferedPaintClear(
    HPAINTBUFFER hBufferedPaint,
    __in_opt const RECT *prc
    );

//------------------------------------------------------------------------
//  BufferedPaintSetAlpha() - Set alpha to given value in given rectangle
//
//    hBufferedPaint        - handle to buffered paint context
//    prc                   - rectangle to set alpha in; NULL specifies entire buffer
//    alpha                 - alpha value to set in the given rectangle
//------------------------------------------------------------------------
THEMEAPI
BufferedPaintSetAlpha(
    HPAINTBUFFER hBufferedPaint,
    __in_opt const RECT *prc,
    BYTE alpha
    );

// Macro for setting the buffer to opaque (alpha = 255)
#define BufferedPaintMakeOpaque(hBufferedPaint, prc) BufferedPaintSetAlpha(hBufferedPaint, prc, 255)

//------------------------------------------------------------------------
//  BufferedPaintStopAllAnimations() - Stop all buffer animations for the given window
//
//    hwnd                           - window on which to stop all animations
//------------------------------------------------------------------------
THEMEAPI
BufferedPaintStopAllAnimations(
    HWND hwnd
    );

typedef HANDLE HANIMATIONBUFFER;  // handle to a buffered paint animation

THEMEAPI_(HANIMATIONBUFFER)
BeginBufferedAnimation(
    HWND hwnd,
    HDC hdcTarget,
    const RECT* prcTarget,
    BP_BUFFERFORMAT dwFormat,
    __in_opt BP_PAINTPARAMS *pPaintParams,
    __in BP_ANIMATIONPARAMS *pAnimationParams,
    __out HDC *phdcFrom,
    __out HDC *phdcTo
    );

THEMEAPI
EndBufferedAnimation(
    HANIMATIONBUFFER hbpAnimation,
    BOOL fUpdateTarget
    );

THEMEAPI_(BOOL)
BufferedPaintRenderAnimation(
    HWND hwnd,
    HDC hdcTarget
    );
    
//----------------------------------------------------------------------------
// Tells if the DWM is running, and composition effects are possible for this 
// process (themes are active). 
// Roughly equivalent to "DwmIsCompositionEnabled() && IsAppthemed()"
//----------------------------------------------------------------------------
THEMEAPI_(BOOL) IsCompositionActive();

//------------------------------------------------------------------------
//  GetThemeTransitionDuration()
//                      - Gets the duration for the specified transition
//
//  hTheme              - theme data handle
//  iPartId             - part number 
//  iStateIdFrom        - starting state number of part
//  iStateIdTo          - ending state number of part
//  iPropId             - property id 
//  pdwDuration         - receives the transition duration
//------------------------------------------------------------------------
THEMEAPI
GetThemeTransitionDuration(
    HTHEME hTheme,
    int iPartId,
    int iStateIdFrom,
    int iStateIdTo,
    int iPropId,
    __out DWORD *pdwDuration
    );  

#endif // #if (_WIN32_WINNT >= 0x0600)

#endif /* _UXTHEME_H_ */


