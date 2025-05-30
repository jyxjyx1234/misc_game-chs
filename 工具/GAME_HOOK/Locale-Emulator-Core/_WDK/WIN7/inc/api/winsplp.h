/*++

Copyright (c) 1990  Microsoft Corporation

Module Name:

    WinSplp.h

Abstract:

    Internal Header file for Print APIs

Author:

Revision History:

--*/

#ifndef _WINSPLP_
#define _WINSPLP_

// disable warning: 4201
#if _MSC_VER >= 1200
#pragma warning(push)
#endif
#pragma warning(disable:4201)

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#define PRINTER_NOTIFY_STATUS_ENDPOINT 1
#define PRINTER_NOTIFY_STATUS_POLL     2
#define PRINTER_NOTIFY_STATUS_INFO     4


#define ROUTER_UNKNOWN      0
#define ROUTER_SUCCESS      1
#define ROUTER_STOP_ROUTING 2

#if (NTDDI_VERSION >= NTDDI_WS03)
    #ifndef __ATTRIBUTE_INFO_3__
    #define __ATTRIBUTE_INFO_3__
    typedef struct _ATTRIBUTE_INFO_3 {
        DWORD    dwJobNumberOfPagesPerSide;
        DWORD    dwDrvNumberOfPagesPerSide;
        DWORD    dwNupBorderFlags;
        DWORD    dwJobPageOrderFlags;
        DWORD    dwDrvPageOrderFlags;
        DWORD    dwJobNumberOfCopies;
        DWORD    dwDrvNumberOfCopies;
        DWORD    dwColorOptimization;           // Added for monochrome optimization
        short    dmPrintQuality;                // Added for monochrome optimization
        short    dmYResolution;                 // Added for monochrome optimization
    } ATTRIBUTE_INFO_3, *PATTRIBUTE_INFO_3;

    #endif
#endif // (NTDDI_VERSION >= NTDDI_WS03)

#if (NTDDI_VERSION >= NTDDI_VISTA)
    #ifndef __ATTRIBUTE_INFO_4__
    #define __ATTRIBUTE_INFO_4__
    typedef struct _ATTRIBUTE_INFO_4 {
        DWORD    dwJobNumberOfPagesPerSide;
        DWORD    dwDrvNumberOfPagesPerSide;
        DWORD    dwNupBorderFlags;
        DWORD    dwJobPageOrderFlags;
        DWORD    dwDrvPageOrderFlags;
        DWORD    dwJobNumberOfCopies;
        DWORD    dwDrvNumberOfCopies;
        DWORD    dwColorOptimization;          // Added for monochrome optimization
        short    dmPrintQuality;               // Added for monochrome optimization
        short    dmYResolution;                // Added for monochrome optimization

        // _ATTRIBUTE_INFO_4 specific fields.
        DWORD    dwDuplexFlags;
        DWORD    dwNupDirection;
        DWORD    dwBookletFlags;
        DWORD    dwScalingPercentX;            // Scaling percentage in X direction.
        DWORD    dwScalingPercentY;            // Scaling percentage in Y direction.
    } ATTRIBUTE_INFO_4, *PATTRIBUTE_INFO_4;

    //dwDuplexFlags
    // The below flag tells print processor to flip page order
    // while printing reverse duplex.
    // e.g. Instead of 4,3,2,1, pages should be printed in order 3,4,1,2
    #define REVERSE_PAGES_FOR_REVERSE_DUPLEX ( 0x00000001      )
    #define DONT_SEND_EXTRA_PAGES_FOR_DUPLEX ( 0x00000001 << 1 ) // 0x00000002

    //Flags for dwNupDirection.
    #define RIGHT_THEN_DOWN                  ( 0x00000001      ) // 0x00000001
    #define DOWN_THEN_RIGHT                  ( 0x00000001 << 1 ) // 0x00000002
    #define LEFT_THEN_DOWN                   ( 0x00000001 << 2 ) // 0x00000004
    #define DOWN_THEN_LEFT                   ( 0x00000001 << 3 ) // 0x00000008


    //dwBookletFlags
    #define BOOKLET_EDGE_LEFT                ( 0x00000000 )
    #define BOOKLET_EDGE_RIGHT               ( 0x00000001 )

    #endif //__ATTRIBUTE_INFO_4__
#endif // (NTDDI_VERSION >= NTDDI_VISTA)



typedef struct _PRINTER_NOTIFY_INIT {
    DWORD Size;
    DWORD Reserved;
    DWORD PollTime;
} PRINTER_NOTIFY_INIT, *PPRINTER_NOTIFY_INIT, *LPPRINTER_NOTIFY_INIT;

typedef struct _SPLCLIENT_INFO_1{
    DWORD       dwSize;
    LPWSTR      pMachineName;
    LPWSTR      pUserName;
    DWORD       dwBuildNum;
    DWORD       dwMajorVersion;
    DWORD       dwMinorVersion;
    WORD        wProcessorArchitecture;
} SPLCLIENT_INFO_1, *PSPLCLIENT_INFO_1, *LPSPLCLIENT_INFO_1;

// This definition is used in the private spooler RPC interface (RpcSplOpenPrinter)
// The handle returned in the struct is the Server Side hPrinter which will used in
// making direct API calls from the client to the server side w/o the overhead of
// RPC. The performance boost is observed mainly in calls to Read/WritePrinter made from
// within the spooler (gdi32.dll during playback)
//
//
typedef struct _SPLCLIENT_INFO_2_V1{

    ULONG_PTR       hSplPrinter;            // Server side handle to be used for direct calls
} SPLCLIENT_INFO_2_W2K;

typedef struct _SPLCLIENT_INFO_2_V2{

#ifdef _WIN64
    DWORD64 hSplPrinter;      // Server side handle to be used for direct calls
#else
    DWORD32 hSplPrinter;      // Server side handle to be used for direct calls
#endif

} SPLCLIENT_INFO_2_WINXP;

typedef struct _SPLCLIENT_INFO_2_V3{

    UINT64          hSplPrinter;            // Server side handle to be used for direct calls
} SPLCLIENT_INFO_2_LONGHORN;

#if (OSVER(NTDDI_VERSION) == NTDDI_W2K)
    typedef SPLCLIENT_INFO_2_W2K SPLCLIENT_INFO_2, *PSPLCLIENT_INFO_2, *LPSPLCLIENT_INFO_2;
#elif ((OSVER(NTDDI_VERSION) == NTDDI_WINXP) || (OSVER(NTDDI_VERSION) == NTDDI_WS03))
    typedef SPLCLIENT_INFO_2_WINXP SPLCLIENT_INFO_2, *PSPLCLIENT_INFO_2, *LPSPLCLIENT_INFO_2;
#else
    typedef SPLCLIENT_INFO_2_LONGHORN SPLCLIENT_INFO_2, *PSPLCLIENT_INFO_2, *LPSPLCLIENT_INFO_2;
#endif


#if (NTDDI_VERSION >= NTDDI_VISTA)
    //
    // This structure is a super set of the information in both a
    // splclient_info_1 and splclient_info2 it also contains addtional
    // information needed by the provider.
    //
    typedef struct _SPLCLIENT_INFO_3
    {
        UINT            cbSize;                 // Size in bytes of this structure
        DWORD           dwFlags;                // Open printer additional flags to the provider
        DWORD           dwSize;                 // Reserved, here for complitbility with a info 1 structure
        PWSTR           pMachineName;           // Client machine name
        PWSTR           pUserName;              // Client user name
        DWORD           dwBuildNum;             // Cleint build number
        DWORD           dwMajorVersion;         // Client machine major version
        DWORD           dwMinorVersion;         // Cleint machine minor version
        WORD            wProcessorArchitecture; // Client machine architecture
        UINT64          hSplPrinter;            // Server side handle to be used for direct calls
    } SPLCLIENT_INFO_3, *PSPLCLIENT_INFO_3, *LPSPLCLIENT_INFO_3;
#endif // (NTDDI_VERSION >= NTDDI_VISTA)


typedef struct _PRINTPROVIDOR
{
    BOOL (*fpOpenPrinter)(
        __in_opt PWSTR             pPrinterName,
        __out    PHANDLE           phPrinter,
        __in_opt PPRINTER_DEFAULTS pDefault
        );

    BOOL (*fpSetJob)(
        __in HANDLE hPrinter,
        __in DWORD  JobId,
        __in DWORD  Level,
        __in_xcount_opt(0)
             LPBYTE pJob,
        __in DWORD  Command
        );

    BOOL (*fpGetJob)(
        __in  HANDLE   hPrinter,
        __in  DWORD    JobId,
        __in  DWORD    Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
              LPBYTE   pJob,
        __in  DWORD    cbBuf,
        __out LPDWORD  pcbNeeded
        );

    BOOL (*fpEnumJobs)(
        __in  HANDLE  hPrinter,
        __in  DWORD   FirstJob,
        __in  DWORD   NoJobs,
        __in  DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
              LPBYTE  pJob,
        __in  DWORD   cbBuf,
        __out LPDWORD pcbNeeded,
        __out LPDWORD pcReturned
        );

    HANDLE (*fpAddPrinter)(
        __in_opt       LPWSTR  pName,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pPrinter
        );

    BOOL (*fpDeletePrinter)(__in HANDLE hPrinter);

    BOOL (*fpSetPrinter)(
        __in HANDLE  hPrinter,
        __in DWORD   Level,
        __in_xcount(0)
             LPBYTE  pPrinter,
        __in DWORD   Command
        );

    BOOL (*fpGetPrinter)(
        __in   HANDLE  hPrinter,
        __in   DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
               LPBYTE  pPrinter,
        __in   DWORD   cbBuf,
        __out  LPDWORD pcbNeeded
        );

    BOOL (*fpEnumPrinters)(
        __in     DWORD   Flags,
        __in_opt LPWSTR  Name,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pPrinterEnum,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded,
        __out    LPDWORD pcReturned
        );

    BOOL (*fpAddPrinterDriver)(
        __in_opt       LPWSTR  pName,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pDriverInfo
        );

    BOOL (*fpEnumPrinterDrivers)(
        __in_opt LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pDriverInfo,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded,
        __out    LPDWORD pcReturned
        );

    BOOL (*fpGetPrinterDriver)(
        __in     HANDLE  hPrinter,
        __in_opt LPWSTR  pEnvironment,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pDriverInfo,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded
        );

    BOOL (*fpGetPrinterDriverDirectory)(
        __in_opt LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pDriverDirectory,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded
        );

    BOOL (*fpDeletePrinterDriver)(
        __in_opt LPWSTR   pName,
        __in_opt LPWSTR   pEnvironment,
        __in     LPWSTR   pDriverName
        );

    BOOL (*fpAddPrintProcessor)(
        __in_opt LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     LPWSTR  pPathName,
        __in     LPWSTR  pPrintProcessorName
        );

    BOOL (*fpEnumPrintProcessors)(
        __in_opt LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pPrintProcessorInfo,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded,
        __out    LPDWORD pcReturned
        );

    BOOL (*fpGetPrintProcessorDirectory)(
        __in_opt LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pPrintProcessorInfo,
        __in     DWORD   cbBuf,
        __in     LPDWORD pcbNeeded
        );

    BOOL (*fpDeletePrintProcessor)(
        __in_opt LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     LPWSTR  pPrintProcessorName
        );

    BOOL (*fpEnumPrintProcessorDatatypes)(
        __in_opt  LPWSTR  pName,
        __in      LPWSTR  pPrintProcessorName,
        __in      DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                  LPBYTE  pDataypes,
        __in      DWORD   cbBuf,
        __out     LPDWORD pcbNeeded,
        __out     LPDWORD pcReturned
        );

    DWORD (*fpStartDocPrinter)(
        __in           HANDLE  hPrinter,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pDocInfo);

    BOOL (*fpStartPagePrinter)(__in HANDLE  hPrinter);

    BOOL (*fpWritePrinter)(
        __in  HANDLE  hPrinter,
        __in_bcount(cbBuf)
              LPVOID  pBuf,
        __in  DWORD   cbBuf,
        __out LPDWORD pcWritten
        );

    BOOL (*fpEndPagePrinter)(__in HANDLE   hPrinter);

    BOOL (*fpAbortPrinter)(__in HANDLE hPrinter);

    BOOL (*fpReadPrinter)(
        __in  HANDLE  hPrinter,
        __out_bcount_part_opt(cbBuf, *pNoBytesRead)
              LPVOID  pBuf,
        __in  DWORD   cbBuf,
        __out LPDWORD pNoBytesRead
        );

    BOOL (*fpEndDocPrinter)(__in HANDLE   hPrinter);

    BOOL (*fpAddJob)(
        __in  HANDLE  hPrinter,
        __in  DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
              LPBYTE  pData,
        __in  DWORD   cbBuf,
        __out LPDWORD pcbNeeded
        );

    BOOL (*fpScheduleJob)(
        __in HANDLE  hPrinter,
        __in DWORD   JobId
        );

    DWORD (*fpGetPrinterData)(
        __in      HANDLE   hPrinter,
        __in      LPWSTR   pValueName,
        __out_opt LPDWORD  pType,
        __out_bcount_part_opt(nSize, *pcbNeeded)
                  LPBYTE   pData,
        __in      DWORD    nSize,
        __out     LPDWORD  pcbNeeded
        );

    DWORD (*fpSetPrinterData)(
        __in HANDLE  hPrinter,
        __in LPWSTR  pValueName,
        __in DWORD   Type,
        __in_bcount(cbData)
             LPBYTE  pData,
        __in DWORD   cbData
        );

    DWORD (*fpWaitForPrinterChange)(__in HANDLE hPrinter, __in DWORD Flags);

    BOOL (*fpClosePrinter)(__in HANDLE hPrinter);

    BOOL (*fpAddForm)(
        __in           HANDLE  hPrinter,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pForm
         );

    BOOL (*fpDeleteForm)(
        __in HANDLE  hPrinter,
        __in LPWSTR  pFormName
        );

    BOOL (*fpGetForm)(
        __in  HANDLE  hPrinter,
        __in  LPWSTR  pFormName,
        __in  DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
              LPBYTE  pForm,
        __in  DWORD   cbBuf,
        __out LPDWORD pcbNeeded
        );

    BOOL (*fpSetForm)(
        __in           HANDLE  hPrinter,
        __in           LPWSTR  pFormName,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pForm
        );

    BOOL (*fpEnumForms)(
        __in   HANDLE  hPrinter,
        __in   DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
               LPBYTE  pForm,
        __in   DWORD   cbBuf,
        __out  LPDWORD pcbNeeded,
        __out  LPDWORD pcReturned
        );

    BOOL (*fpEnumMonitors)(
        __in_opt  LPWSTR  pName,
        __in      DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                  LPBYTE  pMonitors,
        __in      DWORD   cbBuf,
        __out     LPDWORD pcbNeeded,
        __out     LPDWORD pcReturned
        );

    BOOL (*fpEnumPorts)(
        __in_opt LPWSTR  pName,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pPorts,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded,
        __out    LPDWORD pcReturned
        );

    BOOL (*fpAddPort)(
        __in_opt LPWSTR  pName,
        __in     HWND    hWnd,
        __in     LPWSTR  pMonitorName
        );

    BOOL (*fpConfigurePort)(
        __in_opt LPWSTR  pName,
        __in     HWND    hWnd,
        __in     LPWSTR  pPortName
        );

    BOOL (*fpDeletePort)(
        __in_opt LPWSTR  pName,
        __in     HWND    hWnd,
        __in     LPWSTR  pPortName
        );

    HANDLE (*fpCreatePrinterIC)(
        __in     HANDLE      hPrinter,
        __in_opt LPDEVMODEW  pDevMode
        );

    BOOL (*fpPlayGdiScriptOnPrinterIC)(
        __in  HANDLE  hPrinterIC,
        __in_bcount(cIn)
              LPBYTE  pIn,
        __in  DWORD   cIn,
        __out_bcount(cOut)
              LPBYTE  pOut,
        __in  DWORD   cOut,
        __in  DWORD   ul
        );

    BOOL (*fpDeletePrinterIC)(__in HANDLE  hPrinterIC);

    BOOL (*fpAddPrinterConnection)(__in LPWSTR  pName);

    BOOL (*fpDeletePrinterConnection)(__in LPWSTR pName);

    DWORD (*fpPrinterMessageBox)(
        __in HANDLE  hPrinter,
        __in DWORD   Error,
        __in HWND    hWnd,
        __in LPWSTR  pText,
        __in LPWSTR  pCaption,
        __in DWORD   dwType
        );

    BOOL (*fpAddMonitor)(
        __in_opt       LPWSTR  pName,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pMonitorInfo
        );

    BOOL (*fpDeleteMonitor)(
        __in     LPWSTR  pName,
        __in_opt LPWSTR  pEnvironment,
        __in     LPWSTR  pMonitorName
        );

    BOOL (*fpResetPrinter)(
        __in HANDLE hPrinter,
        __in LPPRINTER_DEFAULTS pDefault
        );

    BOOL (*fpGetPrinterDriverEx)(
        __in     HANDLE  hPrinter,
        __in_opt LPWSTR  pEnvironment,
        __in     DWORD   Level,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE  pDriverInfo,
        __in     DWORD   cbBuf,
        __out    LPDWORD pcbNeeded,
        __in     DWORD   dwClientMajorVersion,
        __in     DWORD   dwClientMinorVersion,
        __out    PDWORD  pdwServerMajorVersion,
        __out    PDWORD  pdwServerMinorVersion
        );

    BOOL (*fpFindFirstPrinterChangeNotification)(
        __in    HANDLE hPrinter,
        __in    DWORD  fdwFlags,
        __in    DWORD  fdwOptions,
        __inout HANDLE hNotify,
        __out   PDWORD pfdwStatus,
        __in    PVOID  pPrinterNotifyOptions,
        __in    PVOID  pPrinterNotifyInit
        );

    BOOL (*fpFindClosePrinterChangeNotification)(__in HANDLE hPrinter);

    BOOL (*fpAddPortEx)(
        __in_opt       LPWSTR   pName,
        __in           DWORD    Level,
        __in_xcount(0) LPBYTE   lpBuffer,
        __in           LPWSTR   lpMonitorName
        );

    BOOL (*fpShutDown)(__in_opt LPVOID pvReserved);

    BOOL (*fpRefreshPrinterChangeNotification)(
         __in     HANDLE   hPrinter,
         __in     DWORD    Reserved,
         __in_opt PVOID    pvReserved,
         __in     PVOID    pPrinterNotifyInfo
         );

    BOOL (*fpOpenPrinterEx)(
         __in_opt           LPWSTR              pPrinterName,
         __out              LPHANDLE            phPrinter,
         __in_opt           LPPRINTER_DEFAULTS  pDefault,
         __in_xcount_opt(0) LPBYTE              pClientInfo,
         __in               DWORD               Level
         );

    HANDLE (*fpAddPrinterEx)(
         __in_opt           LPWSTR  pName,
         __in               DWORD   Level,
         __in_xcount(0)     LPBYTE  pPrinter,
         __in_xcount_opt(0) LPBYTE  pClientInfo,
         __in               DWORD   ClientInfoLevel
         );

    BOOL (*fpSetPort)(
         __in_opt       LPWSTR     pName,
         __in           LPWSTR     pPortName,
         __in           DWORD      Level,
         __in_xcount(0) LPBYTE     pPortInfo
         );

    DWORD (*fpEnumPrinterData)(
        __in       HANDLE   hPrinter,
        __in       DWORD    dwIndex,
        __out_bcount_part_opt(cbValueName, *pcbValueName)
                   LPWSTR   pValueName,
        __in       DWORD    cbValueName,
        __out      LPDWORD  pcbValueName,
        __out_opt  LPDWORD  pType,
        __out_bcount_part_opt(cbData, *pcbData)
                   LPBYTE   pData,
        __in       DWORD    cbData,
        __out      LPDWORD  pcbData
        );

    DWORD (*fpDeletePrinterData)(
        __in HANDLE   hPrinter,
        __in LPWSTR   pValueName
        );

    DWORD (*fpClusterSplOpen)(
        __in  LPCTSTR pszServer,
        __in  LPCTSTR pszResource,
        __out PHANDLE phSpooler,
        __in  LPCTSTR pszName,
        __in  LPCTSTR pszAddress
        );

    DWORD (*fpClusterSplClose)(__in HANDLE hSpooler);

    DWORD (*fpClusterSplIsAlive)(__in HANDLE hSpooler);

    DWORD (*fpSetPrinterDataEx)(
        __in                HANDLE  hPrinter,
        __in                LPCWSTR pKeyName,
        __in                LPCWSTR pValueName,
        __in_bcount(cbData) DWORD   Type,
                            LPBYTE  pData,
        __in                DWORD   cbData
        );

    DWORD (*fpGetPrinterDataEx)(
        __in      HANDLE   hPrinter,
        __in      LPCWSTR  pKeyName,
        __in      LPCWSTR  pValueName,
        __out_opt LPDWORD  pType,
        __out_bcount_part_opt(cbValueName, *pcbValueName)
                  LPBYTE   pData,
        __in      DWORD    nSize,
        __out     LPDWORD  pcbNeeded
        );

    DWORD (*fpEnumPrinterDataEx)(
        __in   HANDLE  hPrinter,
        __in   LPCWSTR pKeyName,
        __out_bcount_part_opt(cbEnumValues, *pcbEnumValues)
               LPBYTE  pEnumValues,
        __in   DWORD   cbEnumValues,
        __out  LPDWORD pcbEnumValues,
        __out  LPDWORD pnEnumValues
        );

    DWORD (*fpEnumPrinterKey)(
        __in   HANDLE   hPrinter,
        __in   LPCWSTR  pKeyName,
        __out_bcount_part_opt(cbSubkey, *pcbSubkey)
               LPWSTR   pSubkey,
        __in   DWORD    cbSubkey,
        __out  LPDWORD  pcbSubkey
        );

    DWORD (*fpDeletePrinterDataEx)(
        __in HANDLE  hPrinter,
        __in LPCWSTR pKeyName,
        __in LPCWSTR pValueName
        );

    DWORD (*fpDeletePrinterKey)(
        __in HANDLE  hPrinter,
        __in LPCWSTR pKeyName
        );

    BOOL (*fpSeekPrinter)(
        __in  HANDLE hPrinter,
        __in  LARGE_INTEGER liDistanceToMove,
        __out PLARGE_INTEGER pliNewPointer,
        __in  DWORD dwMoveMethod,
        __in  BOOL bWrite
        );

    BOOL (*fpDeletePrinterDriverEx)(
        __in_opt LPWSTR   pName,
        __in_opt LPWSTR   pEnvironment,
        __in     LPWSTR   pDriverName,
        __in     DWORD    dwDeleteFlag,
        __in     DWORD    dwVersionNum
        );

    BOOL (*fpAddPerMachineConnection)(
        __in_opt LPCWSTR    pServer,
        __in     LPCWSTR    pPrinterName,
        __in     LPCWSTR    pPrintServer,
        __in     LPCWSTR    pProvider
        );

    BOOL (*fpDeletePerMachineConnection)(
        __in_opt LPCWSTR   pServer,
        __in     LPCWSTR   pPrinterName
        );

    BOOL (*fpEnumPerMachineConnections)(
        __in_opt LPCWSTR    pServer,
        __out_bcount_part_opt(cbBuf, *pcbNeeded)
                 LPBYTE     pPrinterEnum,
        __in     DWORD      cbBuf,
        __out    LPDWORD    pcbNeeded,
        __out    LPDWORD    pcReturned
        );

    BOOL (*fpXcvData)(
        __in   HANDLE  hXcv,
        __in   LPCWSTR pszDataName,
        __in_bcount(cbInputData)
               PBYTE   pInputData,
        __in   DWORD   cbInputData,
        __out_bcount_part_opt(cbOutputData, *pcbOutputNeeded)
               PBYTE   pOutputData,
        __in   DWORD   cbOutputData,
        __out  PDWORD  pcbOutputNeeded,
        __out  PDWORD  pdwStatus
        );

    BOOL (*fpAddPrinterDriverEx)(
        __in_opt       LPWSTR  pName,
        __in           DWORD   Level,
        __in_xcount(0) LPBYTE  pDriverInfo,
        __in           DWORD   dwFileCopyFlags
        );

    BOOL (*fpSplReadPrinter)(
        __in  HANDLE hPrinter,
        __out_bcount(cbBuf)
              LPBYTE *pBuf,
        __in  DWORD  cbBuf
        );

    BOOL (*fpDriverUnloadComplete)(__in LPWSTR  pDriverFile);

    BOOL (*fpGetSpoolFileInfo)(
        __in            HANDLE    hPrinter,
        __deref_out_opt LPWSTR    *pSpoolDir,
        __out           LPHANDLE  phFile,
        __in            HANDLE    hSpoolerProcess,
        __in            HANDLE    hAppProcess
        );

    BOOL (*fpCommitSpoolData)(
        __in HANDLE  hPrinter,
        __in DWORD   cbCommit
        );

    BOOL (*fpCloseSpoolFileHandle)(__in HANDLE  hPrinter);

    BOOL (*fpFlushPrinter)(
        __in  HANDLE  hPrinter,
        __in_bcount(cbBuf)
              LPBYTE  pBuf,
        __in  DWORD   cbBuf,
        __out LPDWORD pcWritten,
        __in  DWORD   cSleep
        );

   #if (NTDDI_VERSION >= NTDDI_WINXP)
        DWORD (*fpSendRecvBidiData)(
            __in        HANDLE                    hPrinter,
            __in        LPCWSTR                   pAction,
            __in        PBIDI_REQUEST_CONTAINER   pReqData,
            __deref_out PBIDI_RESPONSE_CONTAINER* ppResData
            );
   #endif // (NTDDI_VERSION >= NTDDI_WINXP)

   #if (NTDDI_VERSION >= NTDDI_VISTA)
        BOOL (*fpAddPrinterConnection2)(
            __in LPCWSTR  pName,
            __in DWORD    dwLevel,
            __in_xcount(0) PVOID pInfo
            );

        HRESULT (*fpGetPrintClassObject)(
            __in PCWSTR,
            #ifdef __cplusplus
                const IID&,
            #else
                const IID*,
            #endif
            __deref_out VOID**
            );

        HRESULT (*fpReportJobProcessingProgress)(
            __in HANDLE                      hPrinter,
            __in ULONG                       jobId,
            __in EPrintXPSJobOperation       jobOperation,
            __in EPrintXPSJobProgress        jobProgress
            );

        VOID (*fpEnumAndLogProvidorObjects)(
            __in  DWORD   dwLevel,
            __out VOID    *pfOut
            );

        HRESULT (*fpInternalGetPrinterDriver)(
            __in   HANDLE  hPrinter,
            __in   LPWSTR  pEnvironment,
            __in   DWORD   Level,
            __out_bcount_part_opt(cbBuf, *pcbNeeded)
                   LPBYTE  pDriverInfo,
            __in   DWORD   cbBuf,
            __out  LPDWORD pcbNeeded,
            __in   DWORD   dwClientMajorVersion,
            __in   DWORD   dwClientMinorVersion,
            __out  PDWORD  pdwServerMajorVersion,
            __out  PDWORD  pdwServerMinorVersion
            );

        HRESULT (*fpFindCompatibleDriver)(
            __in  LPCWSTR     pcszPnpId,
            __in  LPCWSTR     pcszPortName,
            __out_ecount(cchManufacturerName)
                  LPWSTR      pszManufacturerName,
            __in  DWORD       cchManufacturerName,
            __out LPDWORD     pcchRequiredManufacturerNameSize,
            __out_ecount(cchModelName)
                  LPWSTR      pszModelName,
            __in  DWORD       cchModelName,
            __out LPDWORD     pcchRequiredModelNameSize,
            __out LPDWORD     pdwRank0Matches
            );

    #endif // (NTDDI_VERSION >= NTDDI_VISTA)

} PRINTPROVIDOR, *LPPRINTPROVIDOR;

BOOL
InitializePrintProvidor(
   __out_bcount(cbPrintProvidor)
            LPPRINTPROVIDOR pPrintProvidor,
   __in     DWORD           cbPrintProvidor,
   __in_opt LPWSTR          pFullRegistryPath
);

typedef struct _PRINTPROCESSOROPENDATA {
    PDEVMODE  pDevMode;
    LPWSTR    pDatatype;
    LPWSTR    pParameters;
    LPWSTR    pDocumentName;
    DWORD     JobId;
    LPWSTR    pOutputFile;
    LPWSTR    pPrinterName;
} PRINTPROCESSOROPENDATA, *PPRINTPROCESSOROPENDATA, *LPPRINTPROCESSOROPENDATA;

HANDLE
OpenPrintProcessor(
    __in LPWSTR  pPrinterName,
    __in PPRINTPROCESSOROPENDATA pPrintProcessorOpenData
);

BOOL
PrintDocumentOnPrintProcessor(
    __in HANDLE  hPrintProcessor,
    __in LPWSTR  pDocumentName
);

BOOL
ClosePrintProcessor(
    __inout HANDLE  hPrintProcessor
);

BOOL
ControlPrintProcessor(
    __in HANDLE  hPrintProcessor,
    __in DWORD   Command
);

DWORD
GetPrintProcessorCapabilities(
    __in LPTSTR   pValueName,
    __in DWORD    dwAttributes,
    __out_bcount(nSize) LPBYTE   pData,
    __in DWORD    nSize,
    __out LPDWORD  pcbNeeded
);

#if (NTDDI_VERSION >= NTDDI_WS03)
    BOOL
    GetJobAttributes(
        __in  LPWSTR            pPrinterName,
        __in  LPDEVMODEW        pDevmode,
        __out PATTRIBUTE_INFO_3 pAttributeInfo
        );
#endif // (NTDDI_VERSION >= NTDDI_WS03)


#if (NTDDI_VERSION >= NTDDI_VISTA)
    BOOL
    GetJobAttributesEx(
        __in LPWSTR            pPrinterName,
        __in LPDEVMODEW        pDevmode,
        __in DWORD             dwLevel,
        __out_bcount(nSize) LPBYTE            pAttributeInfo,
        __in DWORD             nSize,
        __in DWORD             dwFlags
        );


    // Flags for dwFlags
    #define FILL_WITH_DEFAULTS 0x1

#endif // (NTDDI_VERSION >= NTDDI_WS03)


BOOL
InitializeMonitor(
    __in LPWSTR  pRegistryRoot
    );

BOOL
OpenPort(
    __in    LPWSTR  pName,
    __out   PHANDLE pHandle
    );

BOOL
WritePort(
    __in                HANDLE  hPort,
    __in_bcount(cbBuf)  LPBYTE  pBuffer,
                        DWORD   cbBuf,
    __out               LPDWORD pcbWritten
    );

BOOL
ReadPort(
    __in                    HANDLE hPort,
    __out_bcount(cbBuffer)  LPBYTE pBuffer,
                            DWORD  cbBuffer,
    __out                   LPDWORD pcbRead
);

BOOL
ClosePort(
    __in    HANDLE  hPort
    );

BOOL
XcvOpenPort(
    __in    LPCWSTR     pszObject,
            ACCESS_MASK GrantedAccess,
    __out   PHANDLE     phXcv
    );

DWORD
XcvDataPort(
    __in                        HANDLE  hXcv,
    __in                        LPCWSTR pszDataName,
    __in_bcount(cbInputData)    PBYTE   pInputData,
                                DWORD   cbInputData,
    __out_bcount(cbOutputData)  PBYTE   pOutputData,
                                DWORD   cbOutputData,
    __out                       PDWORD  pcbOutputNeeded
    );

BOOL
XcvClosePort(
    __in    HANDLE  hXcv
   );

__success(return != FALSE)
BOOL
AddPortUI
(
    __in_opt  PCWSTR  pszServer,
    __in      HWND    hWnd,
    __in      PCWSTR  pszMonitorNameIn,
    __out_opt PWSTR  *ppszPortNameOut
);

BOOL
ConfigurePortUI
(
    __in PCWSTR pszServer,
    __in HWND   hWnd,
    __in PCWSTR pszPortName
);

BOOL
DeletePortUI
(
    __in PCWSTR pszServer,
    __in HWND   hWnd,
    __in PCWSTR pszPortName
);


BOOL
SplDeleteSpoolerPortStart(
    __in PCWSTR pPortName
    );

BOOL
SplDeleteSpoolerPortEnd(
    __in PCWSTR pName,
    __in BOOL   bDeletePort
    );

#if (STRICT && (NTDDI_VERSION >= NTDDI_VISTA))
    #define HKEYMONITOR HKEY
#else
    #define HKEYMONITOR HANDLE
#endif

typedef struct _MONITORREG {

    DWORD cbSize;

    LONG
    (WINAPI *fpCreateKey)(
        __in      HKEYMONITOR hcKey,
        __in      LPCTSTR pszSubKey,
        __in      DWORD dwOptions,
        __in      REGSAM samDesired,
        __in_opt  PSECURITY_ATTRIBUTES pSecurityAttributes,
        __out     HKEYMONITOR *phckResult,
        __out_opt PDWORD pdwDisposition,
        __in      HANDLE hSpooler
        );

    LONG
    (WINAPI *fpOpenKey)(
        __in  HKEYMONITOR hcKey,
        __in  LPCTSTR pszSubKey,
        __in  REGSAM samDesired,
        __out HKEYMONITOR *phkResult,
        __in  HANDLE hSpooler
        );

    LONG
    (WINAPI *fpCloseKey)(
        __in HKEYMONITOR hcKey,
        __in HANDLE hSpooler
        );

    LONG
    (WINAPI *fpDeleteKey)(
        __in HKEYMONITOR hcKey,
        __in LPCTSTR pszSubKey,
        __in HANDLE hSpooler
        );

    LONG
    (WINAPI *fpEnumKey)(
        __in      HKEYMONITOR hcKey,
        __in      DWORD dwIndex,
        __inout_ecount_part(*pcchName, *pcchName)
                  LPTSTR pszName,
        __inout   PDWORD pcchName,
        __out_opt PFILETIME pftLastWriteTime,
        __in      HANDLE hSpooler
        );

    LONG
    (WINAPI *fpQueryInfoKey)(
        __in      HKEYMONITOR hcKey,
        __out_opt PDWORD pcSubKeys,
        __out_opt PDWORD pcbKey,
        __out_opt PDWORD pcValues,
        __out_opt PDWORD pcbValue,
        __out_opt PDWORD pcbData,
        __out_opt PDWORD pcbSecurityDescriptor,
        __out_opt PFILETIME pftLastWriteTime,
        __in      HANDLE hSpooler
        );

    LONG
    (WINAPI *fpSetValue)(
        __in HKEYMONITOR hcKey,
        __in LPCTSTR pszValue,
        __in DWORD dwType,
        __in_bcount(cbData)
             const BYTE* pData,
        __in DWORD cbData,
        __in HANDLE hSpooler
        );

    LONG
    (WINAPI *fpDeleteValue)(
        __in HKEYMONITOR hcKey,
        __in LPCTSTR pszValue,
        __in HANDLE hSpooler
        );

    LONG
    (WINAPI *fpEnumValue)(
        __in      HKEYMONITOR hcKey,
        __in      DWORD dwIndex,
        __inout_ecount_part(*pcbValue, *pcbValue)
                  LPTSTR pszValue,
        __inout   PDWORD pcbValue,
        __out_opt PDWORD pTyp,
        __out_bcount_part_opt(*pcbData, *pcbData)
                  PBYTE pData,
        __inout   PDWORD pcbData,
        __in      HANDLE hSpooler
        );

    LONG
    (WINAPI *fpQueryValue)(
        __in      HKEYMONITOR hcKey,
        __in      LPCTSTR pszValue,
        __out_opt PDWORD pType,
        __out_bcount_part_opt(*pcbData, *pcbData)
                  PBYTE pData,
        __inout   PDWORD pcbData,
        __in      HANDLE hSpooler
        );

} MONITORREG, *PMONITORREG;


typedef struct _MONITORINIT {
    DWORD cbSize;
    HANDLE hSpooler;
    HKEYMONITOR hckRegistryRoot;
    PMONITORREG pMonitorReg;
    BOOL bLocal;
    LPCWSTR pszServerName;
} MONITORINIT, *PMONITORINIT;


typedef struct _MONITOR
{
    BOOL (WINAPI *pfnEnumPorts)
    (
    __in_opt LPWSTR  pName,
    __in     DWORD   Level,
    __out_bcount_part_opt(cbBuf, *pcbNeeded)
             LPBYTE  pPorts,
    __in     DWORD   cbBuf,
    __out    LPDWORD pcbNeeded,
    __out    LPDWORD pcReturned
    );

    BOOL (WINAPI *pfnOpenPort)
    (
    __in    LPWSTR  pName,
    __out   PHANDLE pHandle
    );

    BOOL (WINAPI *pfnOpenPortEx)
    (
    __in    LPWSTR  pPortName,
    __in    LPWSTR  pPrinterName,
    __out   PHANDLE pHandle,
    __in    struct _MONITOR FAR *pMonitor
    );

    BOOL (WINAPI *pfnStartDocPort)
    (
    __in    HANDLE  hPort,
    __in    LPWSTR  pPrinterName,
    __in    DWORD   JobId,
    __in    DWORD   Level,
    __in_xcount(0)
            LPBYTE  pDocInfo
    );

    BOOL (WINAPI *pfnWritePort)
    (
    __in    HANDLE  hPort,
    __in_bcount(cbBuf)
            LPBYTE  pBuffer,
    __in    DWORD   cbBuf,
    __out   LPDWORD pcbWritten
    );

    BOOL (WINAPI *pfnReadPort)
    (
    __in    HANDLE hPort,
    __out_bcount_part(cbBuffer, *pcbRead)
            LPBYTE pBuffer,
    __in    DWORD  cbBuffer,
    __out   LPDWORD pcbRead
    );

    BOOL (WINAPI *pfnEndDocPort)
    (
    __in    HANDLE   hPort
    );

    BOOL (WINAPI *pfnClosePort)
    (
    __in    HANDLE  hPort
    );

    BOOL (WINAPI *pfnAddPort)
    (
    __in LPWSTR   pName,
    __in HWND     hWnd,
    __in LPWSTR   pMonitorName
    );

    BOOL (WINAPI *pfnAddPortEx)
    (
    __in LPWSTR   pName,
    __in DWORD    Level,
    __in_xcount(0)
         LPBYTE   lpBuffer,
    __in LPWSTR   lpMonitorName
    );

    BOOL (WINAPI *pfnConfigurePort)
    (
    __in LPWSTR  pName,
    __in HWND    hWnd,
    __in LPWSTR  pPortName
    );

    BOOL (WINAPI *pfnDeletePort)
    (
    __in LPWSTR  pName,
    __in HWND    hWnd,
    __in LPWSTR  pPortName
    );

    BOOL (WINAPI *pfnGetPrinterDataFromPort)
    (
    __in  HANDLE  hPort,
    __in  DWORD   ControlID,
    __in  LPWSTR  pValueName,
    __in_bcount(cbInBuffer)
          LPWSTR  lpInBuffer,
    __in  DWORD   cbInBuffer,
    __out_bcount_part_opt(cbOutBuffer, *lpcbReturned)
          LPWSTR  lpOutBuffer,
    __in  DWORD   cbOutBuffer,
    __out LPDWORD lpcbReturned
    );

    BOOL (WINAPI *pfnSetPortTimeOuts)
    (
    __in HANDLE  hPort,
    __in LPCOMMTIMEOUTS lpCTO,
    __in DWORD   reserved    // must be set to 0
    );

    BOOL (WINAPI *pfnXcvOpenPort)
    (
    __in  LPCWSTR pszObject,
    __in  ACCESS_MASK GrantedAccess,
    __out PHANDLE phXcv
    );

    DWORD (WINAPI *pfnXcvDataPort)
    (
    __in  HANDLE  hXcv,
    __in  LPCWSTR pszDataName,
    __in_bcount(cbInputData)
          PBYTE   pInputData,
    __in  DWORD   cbInputData,
    __out_bcount_part_opt(cbOutputData, *pcbOutputNeeded)
          PBYTE   pOutputData,
    __in  DWORD   cbOutputData,
    __out PDWORD  pcbOutputNeeded
    );

    BOOL (WINAPI *pfnXcvClosePort)
    (
    __in HANDLE  hXcv
    );

} MONITOR, FAR *LPMONITOR;

typedef struct _MONITOREX
{
    DWORD       dwMonitorSize;
    MONITOR     Monitor;

} MONITOREX, FAR *LPMONITOREX;


typedef struct _MONITOR2
{
    DWORD cbSize;
    BOOL (WINAPI *pfnEnumPorts)
    (
    __in     HANDLE  hMonitor,
    __in_opt LPWSTR  pName,
    __in     DWORD   Level,
    __out_bcount_part_opt(cbBuf, *pcbNeeded)
             LPBYTE  pPorts,
    __in     DWORD   cbBuf,
    __out    LPDWORD pcbNeeded,
    __out    LPDWORD pcReturned
    );

    BOOL (WINAPI *pfnOpenPort)
    (
    __in    HANDLE  hMonitor,
    __in    LPWSTR  pName,
    __out   PHANDLE pHandle
    );

    BOOL (WINAPI *pfnOpenPortEx)
    (
    __in    HANDLE  hMonitor,
    __in    HANDLE  hMonitorPort,
    __in    LPWSTR  pPortName,
    __in    LPWSTR  pPrinterName,
    __out   PHANDLE pHandle,
    __in    struct _MONITOR2 FAR *pMonitor2
    );


    BOOL (WINAPI *pfnStartDocPort)
    (
    __in    HANDLE  hPort,
    __in    LPWSTR  pPrinterName,
    __in    DWORD   JobId,
    __in    DWORD   Level,
    __in_xcount(0)
            LPBYTE  pDocInfo
    );

    BOOL (WINAPI *pfnWritePort)
    (
    __in    HANDLE  hPort,
    __in_bcount(cbBuf)
            LPBYTE  pBuffer,
    __in    DWORD   cbBuf,
    __out   LPDWORD pcbWritten
    );

    BOOL (WINAPI *pfnReadPort)
    (
    __in    HANDLE hPort,
    __out_bcount_part_opt(cbBuffer, *pcbRead)
            LPBYTE pBuffer,
    __in    DWORD  cbBuffer,
    __out   LPDWORD pcbRead
    );

    BOOL (WINAPI *pfnEndDocPort)
    (
    __in    HANDLE   hPort
    );

    BOOL (WINAPI *pfnClosePort)
    (
    __in    HANDLE  hPort
    );

    BOOL (WINAPI *pfnAddPort)
    (
    __in HANDLE   hMonitor,
    __in LPWSTR   pName,
    __in HWND     hWnd,
    __in LPWSTR   pMonitorName
    );

    BOOL (WINAPI *pfnAddPortEx)
    (
    __in HANDLE   hMonitor,
    __in LPWSTR   pName,
    __in DWORD    Level,
    __in_xcount(0)
         LPBYTE   lpBuffer,
    __in LPWSTR   lpMonitorName
    );

    BOOL (WINAPI *pfnConfigurePort)
    (
    __in HANDLE  hMonitor,
    __in LPWSTR  pName,
    __in HWND    hWnd,
    __in LPWSTR  pPortName
    );

    BOOL (WINAPI *pfnDeletePort)
    (
    __in HANDLE  hMonitor,
    __in LPWSTR  pName,
    __in HWND    hWnd,
    __in LPWSTR  pPortName
    );

    BOOL (WINAPI *pfnGetPrinterDataFromPort)
    (
    __in  HANDLE  hPort,
    __in  DWORD   ControlID,
    __in  LPWSTR  pValueName,
    __in_bcount(cbInBuffer)
          LPWSTR  lpInBuffer,
    __in  DWORD   cbInBuffer,
    __out_bcount_part_opt(cbOutBuffer, *lpcbReturned)
          LPWSTR  lpOutBuffer,
    __in  DWORD   cbOutBuffer,
    __out LPDWORD lpcbReturned
    );

    BOOL (WINAPI *pfnSetPortTimeOuts)
    (
    __in HANDLE  hPort,
    __in LPCOMMTIMEOUTS lpCTO,
    __in DWORD   reserved    // must be set to 0
    );

    BOOL (WINAPI *pfnXcvOpenPort)
    (
    __in  HANDLE  hMonitor,
    __in  LPCWSTR pszObject,
    __in  ACCESS_MASK GrantedAccess,
    __out PHANDLE phXcv
    );

    DWORD (WINAPI *pfnXcvDataPort)
    (
    __in  HANDLE  hXcv,
    __in  LPCWSTR pszDataName,
    __in_bcount(cbInputData)
          PBYTE   pInputData,
    __in  DWORD   cbInputData,
    __out_bcount_part_opt(cbOutputData, *pcbOutputNeeded)
          PBYTE   pOutputData,
    __in  DWORD   cbOutputData,
    __out PDWORD  pcbOutputNeeded
    );

    BOOL (WINAPI *pfnXcvClosePort)
    (
    __in HANDLE  hXcv
    );

    VOID (WINAPI *pfnShutdown)
    (
    __in HANDLE hMonitor
    );

    #if (NTDDI_VERSION >= NTDDI_WINXP)
        DWORD (WINAPI *pfnSendRecvBidiDataFromPort)
        (
            __in        HANDLE                    hPort,
            __in        DWORD                     dwAccessBit,
            __in        LPCWSTR                   pAction,
            __in        PBIDI_REQUEST_CONTAINER   pReqData,
            __deref_out PBIDI_RESPONSE_CONTAINER* ppResData
        );
    #endif

    #if (NTDDI_VERSION >= NTDDI_WIN7)
        DWORD (WINAPI *pfnNotifyUsedPorts)
        (
            __in HANDLE  hMonitor,
            __in DWORD   cPorts,
            __in_ecount(cPorts)
                 PCWSTR *ppszPorts
        );

        DWORD (WINAPI *pfnNotifyUnusedPorts)
        (
            __in HANDLE  hMonitor,
            __in DWORD   cPorts,
            __in_ecount(cPorts)
                 PCWSTR *ppszPorts
        );
    #endif
} MONITOR2, *PMONITOR2, FAR *LPMONITOR2;

#if (NTDDI_VERSION >= NTDDI_WINXP)
    #define MONITOR2_SIZE_WIN2K ( sizeof(DWORD) + (sizeof(PVOID)*18) )
#endif // (NTDDI_VERSION >= NTDDI_WINXP)

typedef struct _MONITORUI
{
    DWORD   dwMonitorUISize;

    __success(return != FALSE)
    BOOL (WINAPI *pfnAddPortUI)
    (
        __in_opt  PCWSTR  pszServer,
        __in      HWND    hWnd,
        __in      PCWSTR  pszMonitorNameIn,
        __out_opt PWSTR  *ppszPortNameOut
    );

    BOOL (WINAPI *pfnConfigurePortUI)
    (
        __in_opt PCWSTR  pName,
        __in     HWND    hWnd,
        __in     PCWSTR  pPortName
    );

    BOOL (WINAPI *pfnDeletePortUI)
    (
        __in_opt PCWSTR pszServer,
        __in     HWND   hWnd,
        __in     PCWSTR pszPortName
    );

} MONITORUI, FAR *PMONITORUI;


HANDLE
CreatePrinterIC(
    __in        HANDLE      hPrinter,
    __in_opt    LPDEVMODEW  pDevMode
    );

BOOL
PlayGdiScriptOnPrinterIC(
    __in                HANDLE  hPrinterIC,
    __in_bcount(cIn)    LPBYTE  pIn,
    __in                DWORD   cIn,
    __out_bcount(cOut)  LPBYTE  pOut,
    __in                DWORD   cOut,
    __in                DWORD   ul
    );

BOOL
DeletePrinterIC(
    __in    HANDLE  hPrinterIC
    );

BOOL
DevQueryPrint(
    __in    HANDLE      hPrinter,
    __in    LPDEVMODE   pDevMode,
    __out   DWORD*      pResID
    );

HANDLE
RevertToPrinterSelf(
    VOID
    );

BOOL
ImpersonatePrinterClient(
    __in    HANDLE  hToken
    );

BOOL
ReplyPrinterChangeNotification(
    __in        HANDLE hPrinter,
                DWORD  fdwChangeFlags,
    __out_opt   PDWORD pdwResult,
    __in_opt    PVOID  pPrinterNotifyInfo
    );

BOOL
ReplyPrinterChangeNotificationEx(
    __in    HANDLE   hNotify,
            DWORD    dwColor,
            DWORD    fdwFlags,
    __out   PDWORD   pdwResult,
    __in    PVOID    pPrinterNotifyInfo
    );

BOOL
PartialReplyPrinterChangeNotification(
    __in            HANDLE  hPrinter,
    __in_opt        PPRINTER_NOTIFY_INFO_DATA pDataSrc
    );

PPRINTER_NOTIFY_INFO
RouterAllocPrinterNotifyInfo(
    DWORD cPrinterNotifyInfoData
    );

BOOL
RouterFreePrinterNotifyInfo(
    __in_opt   PPRINTER_NOTIFY_INFO pInfo
    );

#if (NTDDI_VERSION >= NTDDI_WINXP)
    PBIDI_RESPONSE_CONTAINER
    RouterAllocBidiResponseContainer(
        __in DWORD Count
        );

    PVOID
    RouterAllocBidiMem (
        __in size_t NumBytes
        );

    DWORD
    RouterFreeBidiResponseContainer(
        __in PBIDI_RESPONSE_CONTAINER pData
        );

    VOID
    RouterFreeBidiMem (
        __in PVOID pMemPointer
        );
#endif // (NTDDI_VERSION >= NTDDI_WINXP)

#define PRINTER_NOTIFY_INFO_DATA_COMPACT 1

BOOL
AppendPrinterNotifyInfoData(
__in            PPRINTER_NOTIFY_INFO      pInfoDest,
__in_opt        PPRINTER_NOTIFY_INFO_DATA pDataSrc,
                DWORD                     fdwFlags
);

#if (NTDDI_VERSION >= NTDDI_VISTA)
    typedef BOOL (CALLBACK *ROUTER_NOTIFY_CALLBACK)(
        __in      DWORD                   dwCommand,
        __in      PVOID                   pContext,
        __in      DWORD                   dwColor,
        __in      PPRINTER_NOTIFY_INFO    pNofityInfo,
        __in      DWORD                   fdwFlags,
        __out     PDWORD                  pdwResult
        );

    typedef enum _NOTIFICATION_CALLBACK_COMMANDS
    {
        NOTIFICATION_COMMAND_NOTIFY,
        NOTIFICATION_COMMAND_CONTEXT_ACQUIRE,
        NOTIFICATION_COMMAND_CONTEXT_RELEASE
    } NOTIFICATION_CALLBACK_COMMANDS;

    typedef struct _NOTIFICATION_CONFIG_1
    {
        UINT                    cbSize;
        DWORD                   fdwFlags;
        ROUTER_NOTIFY_CALLBACK  pfnNotifyCallback;
        PVOID                   pContext;
    } NOTIFICATION_CONFIG_1, *PNOTIFICATION_CONFIG_1;

    typedef enum _NOTIFICATION_CONFIG_FLAGS
    {
        NOTIFICATION_CONFIG_CREATE_EVENT      = 1 << 0,
        NOTIFICATION_CONFIG_REGISTER_CALLBACK = 1 << 1,
        NOTIFICATION_CONFIG_EVENT_TRIGGER     = 1 << 2,
        NOTIFICATION_CONFIG_ASYNC_CHANNEL     = 1 << 3
    } NOTIFICATION_CONFIG_FLAGS;
#endif // (NTDDI_VERSION >= NTDDI_VISTA)

DWORD
CallRouterFindFirstPrinterChangeNotification(
    __in    HANDLE                  hPrinterRPC,
            DWORD                   fdwFilterFlags,
            DWORD                   fdwOptions,
    __in    HANDLE                  hNotify,
    __in    PPRINTER_NOTIFY_OPTIONS pPrinterNotifyOptions
    );

BOOL
ProvidorFindFirstPrinterChangeNotification(
    __in        HANDLE                  hPrinter,
                DWORD                   fdwFlags,
                DWORD                   fdwOptions,
    __in        HANDLE                  hNotify,
    __in_opt    PVOID                   pPrinterNotifyOptions,
    __out_opt   PVOID                   pvReserved1
    );

BOOL
ProvidorFindClosePrinterChangeNotification(
    __in    HANDLE                  hPrinter
    );

BOOL
SpoolerFindFirstPrinterChangeNotification(
    __in        HANDLE                  hPrinter,
                DWORD                   fdwFilterFlags,
                DWORD                   fdwOptions,
    __in        PVOID                   pPrinterNotifyOptions,
    __in_opt    PVOID                   pvReserved,
    __in        PVOID                   pNotificationConfig,
    __out_opt   PHANDLE                 phNotify,
    __out_opt   PHANDLE                 phEvent
    );

BOOL
SpoolerFindNextPrinterChangeNotification(
    __in            HANDLE    hPrinter,
    __out           LPDWORD   pfdwChange,
    __in_opt        LPVOID    pPrinterNotifyOptions,
    __inout_opt     LPVOID    *ppPrinterNotifyInfo
    );

#if (NTDDI_VERSION >= NTDDI_VISTA)
    BOOL
    SpoolerRefreshPrinterChangeNotification(
    __in            HANDLE                   hPrinter,
    __in            DWORD                    dwColor,
    __in            PPRINTER_NOTIFY_OPTIONS  pOptions,
    __inout_opt     PPRINTER_NOTIFY_INFO     *ppInfo
        );
#endif // (NTDDI_VERSION >= NTDDI_VISTA)

VOID
SpoolerFreePrinterNotifyInfo(
    __in    PPRINTER_NOTIFY_INFO    pInfo
    );

BOOL
SpoolerFindClosePrinterChangeNotification(
    __in    HANDLE                  hPrinter
    );

LPMONITOR2
WINAPI
InitializePrintMonitor2(
    __in    PMONITORINIT    pMonitorInit,
    __out   PHANDLE         phMonitor
    );

BOOL
WINAPI
InitializeMonitorEx(
    __in    LPWSTR      pRegistryRoot,
    __out   LPMONITOR   pMonitor
    );

LPMONITOREX
WINAPI
InitializePrintMonitor(
    __in    LPWSTR      pRegistryRoot
    );

PMONITORUI
WINAPI
InitializePrintMonitorUI(
    VOID
    );

//
//  The following is added for new point-and-print support which allows
//  specific files to be associated with a print queue (instead of a printer
//  driver) using SetPrinterDataEx under the key "CopyFiles"
//
#define COPYFILE_EVENT_SET_PRINTER_DATAEX           1
#define COPYFILE_EVENT_DELETE_PRINTER               2
#define COPYFILE_EVENT_ADD_PRINTER_CONNECTION       3
#define COPYFILE_EVENT_DELETE_PRINTER_CONNECTION    4
#define COPYFILE_EVENT_FILES_CHANGED                5


BOOL
WINAPI
SpoolerCopyFileEvent(
    __in LPWSTR  pszPrinterName,
    __in LPWSTR  pszKey,
    __in DWORD   dwCopyFileEvent
    );

#define COPYFILE_FLAG_CLIENT_SPOOLER            0x00000001
#define COPYFILE_FLAG_SERVER_SPOOLER            0x00000002


DWORD
WINAPI
GenerateCopyFilePaths(
    __in       LPCWSTR     pszPrinterName,
    __in       LPCWSTR     pszDirectory,
    __in       LPBYTE      pSplClientInfo,
    __in       DWORD       dwLevel,
    __inout_ecount(*pcchSourceDirSize)
               LPWSTR      pszSourceDir,
    __inout    LPDWORD     pcchSourceDirSize,
    __inout_ecount(*pcchTargetDirSize)
               LPWSTR      pszTargetDir,
    __inout    LPDWORD     pcchTargetDirSize,
    __in       DWORD       dwFlags
    );

#if (NTDDI_VERSION >= NTDDI_WINXP)
    typedef enum {
        kMessageBox = 0
    } UI_TYPE;

    typedef struct {
        DWORD       cbSize;     // sizeof(MESSAGEBOX_PARAMS)
        LPWSTR      pTitle;     // Pointer to a null-terminated string for the title bar of the message box.
        LPWSTR      pMessage;   // Pointer to a null-terminated string containing the message to display.
        DWORD       Style;      // Specifies the contents and behavior of the message box
        DWORD       dwTimeout;  // If bWait is TRUE, Timeout specifies the time, in seconds, that the function waits for the user's response.
        BOOL        bWait;      // If TRUE, SplPromptUIInUsersSession does not return until the user responds or the time-out interval elapses.
                                // If Timeout is zero, SplPromptUIInUsersSession doesn't return until the user responds.
                                // If FALSE, the function returns immediately and pResponse returns IDASYNC.

    } MESSAGEBOX_PARAMS, *PMESSAGEBOX_PARAMS;

    typedef struct {
        UI_TYPE           UIType;
        MESSAGEBOX_PARAMS MessageBoxParams;
    } SHOWUIPARAMS, *PSHOWUIPARAMS;

    BOOL
    SplPromptUIInUsersSession(
        __in  HANDLE          hPrinter,
        __in  DWORD           JobId,
        __in  PSHOWUIPARAMS   pUIParams,
        __out DWORD           *pResponse
        );

    DWORD
    SplIsSessionZero(
        __in    HANDLE  hPrinter,
        __in    DWORD   JobId,
        __out   BOOL    *pIsSessionZero
        );
#endif // (NTDDI_VERSION >= NTDDI_WINXP)


#ifdef __cplusplus
}                   /* End of extern "C" { */
#endif              /* __cplusplus */

//enable warning: 4201
#if _MSC_VER >= 1200
#pragma warning(pop)
#else
#pragma warning(default:4201)
#endif

#endif      // _WINSPLP_



