//-----------------------------------------------------------------------------
// File:            sqlucode.h
//
// Copyright:       Copyright (c) Microsoft Corporation
//
// Contents:        This is the the unicode include for ODBC Core functions
//
// Comments:
//
//-----------------------------------------------------------------------------

#ifndef __SQLUCODE
#define __SQLUCODE


#ifdef __cplusplus
extern "C" {            /* Assume C declarations for C++   */
#endif  /* __cplusplus */

#include <sqlext.h>

#define SQL_WCHAR           (-8)
#define SQL_WVARCHAR        (-9)
#define SQL_WLONGVARCHAR    (-10)
#define SQL_C_WCHAR         SQL_WCHAR

#ifdef UNICODE
#define SQL_C_TCHAR         SQL_C_WCHAR
#else
#define SQL_C_TCHAR         SQL_C_CHAR
#endif

#define SQL_SQLSTATE_SIZEW  10  /* size of SQLSTATE for unicode */

#ifndef RC_INVOKED

// UNICODE versions
#ifdef _WIN64
SQLRETURN SQL_API SQLColAttributeW
(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    iCol,
    SQLUSMALLINT    iField,
    __out_bcount_opt(cbDescMax)
    SQLPOINTER      pCharAttr,
    SQLSMALLINT     cbDescMax,
    __out_opt
    SQLSMALLINT     *pcbCharAttr,
    __out_opt
    SQLLEN          *pNumAttr
);
#else
SQLRETURN SQL_API SQLColAttributeW(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    iCol,
    SQLUSMALLINT    iField,
    __out_bcount_opt(cbDescMax)
    SQLPOINTER      pCharAttr,
    SQLSMALLINT     cbDescMax,
    __out_opt
    SQLSMALLINT     *pcbCharAttr,
    __out_opt
    SQLPOINTER      pNumAttr);
#endif

SQLRETURN SQL_API SQLColAttributesW
(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    icol,
    SQLUSMALLINT    fDescType,
    __out_bcount_opt(cbDescMax)
    SQLPOINTER      rgbDesc,
    SQLSMALLINT     cbDescMax,
    __out_opt
    SQLSMALLINT     *pcbDesc,
    __out_opt
    SQLLEN          *pfDesc
);

SQLRETURN SQL_API SQLConnectW
(
    SQLHDBC             hdbc,
    __in_ecount(cchDSN) SQLWCHAR* szDSN,
    SQLSMALLINT         cchDSN,
    __in_ecount(cchUID) SQLWCHAR* szUID,
    SQLSMALLINT         cchUID,
    __in_ecount(cchAuthStr) SQLWCHAR* szAuthStr,
    SQLSMALLINT         cchAuthStr
);

SQLRETURN SQL_API SQLDescribeColW
(
    SQLHSTMT            hstmt,
    SQLUSMALLINT        icol,
    __out_ecount_opt(cchColNameMax) SQLWCHAR* szColName,
    SQLSMALLINT         cchColNameMax,
    __out_opt
    SQLSMALLINT*        pcchColName,
    __out_opt
    SQLSMALLINT*        pfSqlType,
    __out_opt
    SQLULEN*            pcbColDef,
    __out_opt
    SQLSMALLINT*        pibScale,
    __out_opt
    SQLSMALLINT*        pfNullable
);

SQLRETURN SQL_API SQLErrorW
(
    SQLHENV             henv,
    SQLHDBC             hdbc,
    SQLHSTMT            hstmt,
    __out_ecount(6) SQLWCHAR* wszSqlState,
    __out_opt SQLINTEGER*         pfNativeError,
    __out_ecount_opt(cchErrorMsgMax) SQLWCHAR* wszErrorMsg,
    SQLSMALLINT         cchErrorMsgMax,
    __out_opt SQLSMALLINT*        pcchErrorMsg
);

SQLRETURN SQL_API SQLExecDirectW
(
    SQLHSTMT    hstmt,
    __in_ecount_opt(TextLength) SQLWCHAR* szSqlStr,
    SQLINTEGER  TextLength
);

SQLRETURN SQL_API SQLGetConnectAttrW
(
    SQLHDBC     hdbc,
    SQLINTEGER  fAttribute,
    __out_xcount_opt(cbValueMax)
    SQLPOINTER  rgbValue,
    SQLINTEGER  cbValueMax,
    __out_opt
    SQLINTEGER* pcbValue
);

SQLRETURN SQL_API SQLGetCursorNameW
(
    SQLHSTMT        hstmt,
    __out_ecount_opt(cchCursorMax) SQLWCHAR* szCursor,
    SQLSMALLINT     cchCursorMax,
    __out_opt
    SQLSMALLINT*    pcchCursor
);

#if (ODBCVER >= 0x0300)
SQLRETURN  SQL_API SQLSetDescFieldW
(
    SQLHDESC        DescriptorHandle,
    SQLSMALLINT     RecNumber,
    SQLSMALLINT     FieldIdentifier,
    SQLPOINTER      Value,
    SQLINTEGER      BufferLength
);

SQLRETURN SQL_API SQLGetDescFieldW
(
    SQLHDESC        hdesc,
    SQLSMALLINT     iRecord,
    SQLSMALLINT     iField,
    __out_xcount_opt(cbBufferLength)
    SQLPOINTER      rgbValue,
    SQLINTEGER      cbBufferLength,
    __out_opt
    SQLINTEGER      *StringLength
);

SQLRETURN SQL_API SQLGetDescRecW
(
    SQLHDESC        hdesc,
    SQLSMALLINT     iRecord,
    __out_ecount_opt(cchNameMax) SQLWCHAR* szName,
    SQLSMALLINT     cchNameMax,
    __out_opt
    SQLSMALLINT     *pcchName,
    __out_opt
    SQLSMALLINT     *pfType,
    __out_opt
    SQLSMALLINT     *pfSubType,
    __out_opt
    SQLLEN          *pLength,
    __out_opt
    SQLSMALLINT     *pPrecision,
    __out_opt
    SQLSMALLINT     *pScale,
    __out_opt
    SQLSMALLINT     *pNullable
);

SQLRETURN SQL_API SQLGetDiagFieldW
(
    SQLSMALLINT     fHandleType,
    SQLHANDLE       handle,
    SQLSMALLINT     iRecord,
    SQLSMALLINT     fDiagField,
    __out_xcount_opt(cbBufferLength)
    SQLPOINTER      rgbDiagInfo,
    SQLSMALLINT     cbBufferLength,
    __out_opt
    SQLSMALLINT     *pcbStringLength
);

SQLRETURN SQL_API SQLGetDiagRecW
(
    SQLSMALLINT     fHandleType,
    SQLHANDLE       handle,
    SQLSMALLINT     iRecord,
    __out_ecount_opt(6) SQLWCHAR* szSqlState,
    SQLINTEGER*     pfNativeError,
    __out_ecount_opt(cchErrorMsgMax) SQLWCHAR* szErrorMsg,
    SQLSMALLINT     cchErrorMsgMax,
    SQLSMALLINT*    pcchErrorMsg
);
#endif

SQLRETURN SQL_API SQLPrepareW
(
    SQLHSTMT    hstmt,
    __in_ecount(cchSqlStr) SQLWCHAR* szSqlStr,
    SQLINTEGER  cchSqlStr
);

SQLRETURN SQL_API SQLSetConnectAttrW(
    SQLHDBC            hdbc,
    SQLINTEGER         fAttribute,
    __in_bcount_opt(cbValue)
    SQLPOINTER         rgbValue,
    SQLINTEGER         cbValue);

SQLRETURN SQL_API SQLSetCursorNameW
(
    SQLHSTMT            hstmt,
    __in_ecount(cchCursor) SQLWCHAR* szCursor,
    SQLSMALLINT         cchCursor
);

SQLRETURN SQL_API SQLColumnsW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName,
    __in_ecount_opt(cchColumnName) SQLWCHAR*     szColumnName,
    SQLSMALLINT        cchColumnName
);

SQLRETURN SQL_API SQLGetConnectOptionW(
    SQLHDBC            hdbc,
    SQLUSMALLINT       fOption,
    SQLPOINTER         pvParam);

SQLRETURN SQL_API SQLGetInfoW(
    SQLHDBC                     hdbc,
    SQLUSMALLINT                fInfoType,
    __out_bcount_opt(cbInfoValueMax) SQLPOINTER rgbInfoValue,
    SQLSMALLINT        cbInfoValueMax,
    __out_opt
    SQLSMALLINT*                pcbInfoValue);

SQLRETURN SQL_API   SQLGetTypeInfoW(
    SQLHSTMT            StatementHandle,
    SQLSMALLINT         DataType);

SQLRETURN SQL_API SQLSetConnectOptionW(
    SQLHDBC            hdbc,
    SQLUSMALLINT       fOption,
    SQLULEN            vParam);

SQLRETURN SQL_API SQLSpecialColumnsW
(
    SQLHSTMT           hstmt,
    SQLUSMALLINT       fColType,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName,
    SQLUSMALLINT       fScope,
    SQLUSMALLINT       fNullable
);

SQLRETURN SQL_API SQLStatisticsW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName,
    SQLUSMALLINT       fUnique,
    SQLUSMALLINT       fAccuracy
);

SQLRETURN SQL_API SQLTablesW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName,
    __in_ecount_opt(cchTableType) SQLWCHAR*      szTableType,
    SQLSMALLINT        cchTableType
);

SQLRETURN SQL_API SQLDataSourcesW
(
    SQLHENV             henv,
    SQLUSMALLINT        fDirection,
    __out_ecount_opt(cchDSNMax) SQLWCHAR* szDSN,
    SQLSMALLINT         cchDSNMax,
    __out_opt
    SQLSMALLINT*        pcchDSN,
    __out_ecount_opt(cchDescriptionMax) SQLWCHAR* wszDescription,
    SQLSMALLINT         cchDescriptionMax,
    __out_opt
    SQLSMALLINT*        pcchDescription
);

SQLRETURN SQL_API SQLDriverConnectW
(
    SQLHDBC             hdbc,
    SQLHWND             hwnd,
    __in_ecount(cchConnStrIn) SQLWCHAR* szConnStrIn,
    SQLSMALLINT         cchConnStrIn,
    __out_ecount_opt(cchConnStrOutMax) SQLWCHAR* szConnStrOut,
    SQLSMALLINT         cchConnStrOutMax,
    __out_opt SQLSMALLINT*        pcchConnStrOut,
    SQLUSMALLINT        fDriverCompletion
);

SQLRETURN SQL_API SQLBrowseConnectW
(
    SQLHDBC             hdbc,
    __in_ecount(cchConnStrIn) SQLWCHAR* szConnStrIn,
    SQLSMALLINT         cchConnStrIn,
    __out_ecount_opt(cchConnStrOutMax) SQLWCHAR* szConnStrOut,
    SQLSMALLINT         cchConnStrOutMax,
    __out_opt
    SQLSMALLINT*        pcchConnStrOut
);

SQLRETURN SQL_API SQLColumnPrivilegesW(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName,
    __in_ecount_opt(cchColumnName) SQLWCHAR*     szColumnName,
    SQLSMALLINT        cchColumnName
);

SQLRETURN SQL_API SQLGetStmtAttrW(
    SQLHSTMT           hstmt,
    SQLINTEGER         fAttribute,
    SQLPOINTER         rgbValue,
    SQLINTEGER         cbValueMax,
    SQLINTEGER     *pcbValue);

SQLRETURN SQL_API SQLSetStmtAttrW(
    SQLHSTMT           hstmt,
    SQLINTEGER         fAttribute,
    SQLPOINTER         rgbValue,
    SQLINTEGER         cbValueMax);

SQLRETURN SQL_API SQLForeignKeysW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchPkCatalogName) SQLWCHAR*    szPkCatalogName,
    SQLSMALLINT        cchPkCatalogName,
    __in_ecount_opt(cchPkSchemaName) SQLWCHAR*     szPkSchemaName,
    SQLSMALLINT        cchPkSchemaName,
    __in_ecount_opt(cchPkTableName) SQLWCHAR*      szPkTableName,
    SQLSMALLINT        cchPkTableName,
    __in_ecount_opt(cchFkCatalogName) SQLWCHAR*    szFkCatalogName,
    SQLSMALLINT        cchFkCatalogName,
    __in_ecount_opt(cchFkSchemaName) SQLWCHAR*     szFkSchemaName,
    SQLSMALLINT        cchFkSchemaName,
    __in_ecount_opt(cchFkTableName) SQLWCHAR*      szFkTableName,
    SQLSMALLINT        cchFkTableName
);

SQLRETURN SQL_API SQLNativeSqlW
(
    SQLHDBC                                     hdbc,
    __in_ecount(cchSqlStrIn) SQLWCHAR*          szSqlStrIn,
    SQLINTEGER                                  cchSqlStrIn,
    __out_ecount_opt(cchSqlStrMax) SQLWCHAR*    szSqlStr,
    SQLINTEGER                                  cchSqlStrMax,
    SQLINTEGER*                                 pcchSqlStr
);

SQLRETURN SQL_API SQLPrimaryKeysW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName
);

SQLRETURN SQL_API SQLProcedureColumnsW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchProcName) SQLWCHAR*       szProcName,
    SQLSMALLINT        cchProcName,
    __in_ecount_opt(cchColumnName) SQLWCHAR*     szColumnName,
    SQLSMALLINT        cchColumnName
);

SQLRETURN SQL_API SQLProceduresW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchProcName) SQLWCHAR*      szProcName,
    SQLSMALLINT        cchProcName
);

SQLRETURN SQL_API SQLTablePrivilegesW
(
    SQLHSTMT           hstmt,
    __in_ecount_opt(cchCatalogName) SQLWCHAR*    szCatalogName,
    SQLSMALLINT        cchCatalogName,
    __in_ecount_opt(cchSchemaName) SQLWCHAR*     szSchemaName,
    SQLSMALLINT        cchSchemaName,
    __in_ecount_opt(cchTableName) SQLWCHAR*      szTableName,
    SQLSMALLINT        cchTableName
);

SQLRETURN SQL_API SQLDriversW
(
    SQLHENV         henv,
    SQLUSMALLINT    fDirection,
    __out_ecount_opt(cchDriverDescMax) SQLWCHAR* szDriverDesc,
    SQLSMALLINT     cchDriverDescMax,
    __out_opt
    SQLSMALLINT*    pcchDriverDesc,
    __out_ecount_opt(cchDrvrAttrMax) SQLWCHAR*     szDriverAttributes,
    SQLSMALLINT     cchDrvrAttrMax,
    __out_opt
    SQLSMALLINT*    pcchDrvrAttr
);

// ANSI versions
#ifdef _WIN64
SQLRETURN SQL_API SQLColAttributeA(
    SQLHSTMT        hstmt,
    SQLSMALLINT     iCol,
    SQLSMALLINT     iField,
    __out_bcount_opt(cbCharAttrMax)
    SQLPOINTER      pCharAttr,
    SQLSMALLINT     cbCharAttrMax,
    __out_opt
    SQLSMALLINT     *pcbCharAttr,
    __out_opt
    SQLLEN          *pNumAttr);
#else
SQLRETURN SQL_API SQLColAttributeA(
    SQLHSTMT        hstmt,
    SQLSMALLINT     iCol,
    SQLSMALLINT     iField,
    __out_bcount_opt(cbCharAttrMax)
    SQLPOINTER      pCharAttr,
    SQLSMALLINT     cbCharAttrMax,
    __out_opt
    SQLSMALLINT     *pcbCharAttr,
    __out_opt
    SQLPOINTER      pNumAttr);
#endif

SQLRETURN SQL_API SQLColAttributesA(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    icol,
    SQLUSMALLINT    fDescType,
    __out_bcount_opt(cbDescMax)
    SQLPOINTER      rgbDesc,
    SQLSMALLINT     cbDescMax,
    __out_opt
    SQLSMALLINT     *pcbDesc,
    __out_opt
    SQLLEN          *pfDesc);

SQLRETURN SQL_API SQLConnectA(
    SQLHDBC         hdbc,
    __in_ecount(cbDSN)
    SQLCHAR         *szDSN,
    SQLSMALLINT     cbDSN,
    __in_ecount(cbUID)
    SQLCHAR         *szUID,
    SQLSMALLINT     cbUID,
    __in_ecount(cbAuthStr)
    SQLCHAR         *szAuthStr,
    SQLSMALLINT     cbAuthStr);

SQLRETURN SQL_API SQLDescribeColA(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    icol,
    __out_ecount_opt(cbColNameMax) 
    SQLCHAR         *szColName,
    SQLSMALLINT     cbColNameMax,
    __out_opt
    SQLSMALLINT     *pcbColName,
    __out_opt
    SQLSMALLINT     *pfSqlType,
    __out_opt
    SQLULEN         *pcbColDef,
    __out_opt
    SQLSMALLINT     *pibScale,
    __out_opt
    SQLSMALLINT     *pfNullable);

SQLRETURN SQL_API SQLErrorA(
    SQLHENV         henv,
    SQLHDBC         hdbc,
    SQLHSTMT        hstmt,
    __out_ecount(SQL_SQLSTATE_SIZE + 1)
    SQLCHAR         *szSqlState,
    __out_opt
    SQLINTEGER      *pfNativeError,
    __out_ecount_opt(cbErrorMsgMax)
    SQLCHAR         *szErrorMsg,
    SQLSMALLINT     cbErrorMsgMax,
    __out_opt
    SQLSMALLINT     *pcbErrorMsg);

SQLRETURN SQL_API SQLExecDirectA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbSqlStr)
    SQLCHAR         *szSqlStr,
    SQLINTEGER      cbSqlStr);

SQLRETURN SQL_API SQLGetConnectAttrA(
    SQLHDBC         hdbc,
    SQLINTEGER      fAttribute,
    __out_xcount_opt(cbValueMax)
    SQLPOINTER      rgbValue,
    SQLINTEGER      cbValueMax,
    __out_opt
    SQLINTEGER      *pcbValue);

SQLRETURN SQL_API SQLGetCursorNameA(
    SQLHSTMT        hstmt,
    __out_ecount_opt(cbCursorMax) 
    SQLCHAR         *szCursor,
    SQLSMALLINT     cbCursorMax,
    __out_opt
    SQLSMALLINT     *pcbCursor);

#if (ODBCVER >= 0x0300)
SQLRETURN SQL_API SQLGetDescFieldA(
    SQLHDESC        hdesc,
    SQLSMALLINT     iRecord,
    SQLSMALLINT     iField,
    __out_xcount_opt(cbBufferLength)
    SQLPOINTER      rgbValue,
    SQLINTEGER      cbBufferLength,
    __out_opt
    SQLINTEGER      *StringLength);

SQLRETURN SQL_API SQLGetDescRecA(
    SQLHDESC        hdesc,
    SQLSMALLINT     iRecord,
    __out_ecount_opt(cbNameMax)
    SQLCHAR         *szName,
    SQLSMALLINT     cbNameMax,
    __out_opt
    SQLSMALLINT     *pcbName,
    __out_opt
    SQLSMALLINT     *pfType,
    __out_opt
    SQLSMALLINT     *pfSubType,
    __out_opt
    SQLLEN          *pLength,
    __out_opt
    SQLSMALLINT     *pPrecision,
    __out_opt
    SQLSMALLINT     *pScale,
    __out_opt
    SQLSMALLINT     *pNullable);

SQLRETURN SQL_API SQLGetDiagFieldA(
    SQLSMALLINT     fHandleType,
    SQLHANDLE       handle,
    SQLSMALLINT     iRecord,
    SQLSMALLINT     fDiagField,
    __out_xcount_opt(cbDiagInfoMax)
    SQLPOINTER      rgbDiagInfo,
    SQLSMALLINT     cbDiagInfoMax,
    __out_opt
    SQLSMALLINT     *pcbDiagInfo);

SQLRETURN SQL_API SQLGetDiagRecA(
    SQLSMALLINT     fHandleType,
    SQLHANDLE       handle,
    SQLSMALLINT     iRecord,
    __out_ecount_opt(6)
    SQLCHAR         *szSqlState,
    SQLINTEGER      *pfNativeError,
    __out_ecount_opt(cbErrorMsgMax)
    SQLCHAR         *szErrorMsg,
    SQLSMALLINT     cbErrorMsgMax,
    SQLSMALLINT     *pcbErrorMsg);

SQLRETURN SQL_API SQLGetStmtAttrA(
    SQLHSTMT        hstmt,
    SQLINTEGER      fAttribute,
    SQLPOINTER      rgbValue,
    SQLINTEGER      cbValueMax,
    SQLINTEGER      *pcbValue);
#endif

SQLRETURN SQL_API   SQLGetTypeInfoA(
    SQLHSTMT        StatementHandle,
    SQLSMALLINT     DataType);

SQLRETURN SQL_API SQLPrepareA(
    SQLHSTMT        hstmt,
    __in_ecount(cbSqlStr)
    SQLCHAR         *szSqlStr,
    SQLINTEGER      cbSqlStr);

SQLRETURN SQL_API SQLSetConnectAttrA(
    SQLHDBC         hdbc,
    SQLINTEGER      fAttribute,
    __in_bcount_opt(cbValue)
    SQLPOINTER      rgbValue,
    SQLINTEGER      cbValue);

SQLRETURN SQL_API SQLSetCursorNameA(
    SQLHSTMT        hstmt,
    __in_ecount(cbCursor)
    SQLCHAR         *szCursor,
    SQLSMALLINT     cbCursor);

SQLRETURN SQL_API SQLColumnsA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName,
    __in_ecount_opt(cbColumnName)
    SQLCHAR         *szColumnName,
    SQLSMALLINT     cbColumnName);

SQLRETURN SQL_API SQLGetConnectOptionA(
    SQLHDBC         hdbc,
    SQLUSMALLINT    fOption,
    SQLPOINTER      pvParam);

SQLRETURN SQL_API SQLGetInfoA(
    SQLHDBC         hdbc,
    SQLUSMALLINT    fInfoType,
    __out_bcount_opt(cbInfoValueMax)
    SQLPOINTER      rgbInfoValue,
    SQLSMALLINT     cbInfoValueMax,
    __out_opt
    SQLSMALLINT*    pcbInfoValue);

SQLRETURN SQL_API SQLGetStmtOptionA(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    fOption,
    SQLPOINTER      pvParam);

SQLRETURN SQL_API SQLSetConnectOptionA(
    SQLHDBC         hdbc,
    SQLUSMALLINT    fOption,
    SQLULEN         vParam);

SQLRETURN SQL_API SQLSetStmtOptionA(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    fOption,
    SQLULEN         vParam);

SQLRETURN SQL_API SQLSpecialColumnsA(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    fColType,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName,
    SQLUSMALLINT    fScope,
    SQLUSMALLINT    fNullable);

SQLRETURN SQL_API SQLStatisticsA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName,
    SQLUSMALLINT    fUnique,
    SQLUSMALLINT    fAccuracy);

SQLRETURN SQL_API SQLTablesA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName,
    __in_ecount_opt(cbTableType)
    SQLCHAR         *szTableType,
    SQLSMALLINT     cbTableType);

SQLRETURN SQL_API SQLDataSourcesA(
    SQLHENV         henv,
    SQLUSMALLINT    fDirection,
    __out_ecount_opt(cbDSNMax)
    SQLCHAR         *szDSN,
    SQLSMALLINT     cbDSNMax,
    SQLSMALLINT     *pcbDSN,
    __out_ecount_opt(cbDescriptionMax)
    SQLCHAR         *szDescription,
    SQLSMALLINT     cbDescriptionMax,
    SQLSMALLINT     *pcbDescription);

SQLRETURN SQL_API SQLDriverConnectA(
    SQLHDBC         hdbc,
    SQLHWND         hwnd,
    __in_ecount(cbConnStrIn)
    SQLCHAR         *szConnStrIn,
    SQLSMALLINT     cbConnStrIn,
    __out_ecount_opt(cbConnStrOutMax)
    SQLCHAR         *szConnStrOut,
    SQLSMALLINT     cbConnStrOutMax,
    __out_opt
    SQLSMALLINT     *pcbConnStrOut,
    SQLUSMALLINT    fDriverCompletion);

SQLRETURN SQL_API SQLBrowseConnectA(
    SQLHDBC         hdbc,
    __in_ecount(cbConnStrIn)
    SQLCHAR         *szConnStrIn,
    SQLSMALLINT     cbConnStrIn,
    __out_ecount_opt(cbConnStrOutMax)
    SQLCHAR         *szConnStrOut,
    SQLSMALLINT     cbConnStrOutMax,
    __out_opt
    SQLSMALLINT     *pcbConnStrOut);

SQLRETURN SQL_API SQLColumnPrivilegesA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName,
    __in_ecount_opt(cbColumnName)
    SQLCHAR         *szColumnName,
    SQLSMALLINT     cbColumnName);

SQLRETURN SQL_API SQLDescribeParamA(
    SQLHSTMT        hstmt,
    SQLUSMALLINT    ipar,
    __out_opt
    SQLSMALLINT     *pfSqlType,
    __out_opt
    SQLUINTEGER     *pcbParamDef,
    __out_opt
    SQLSMALLINT     *pibScale,
    __out_opt
    SQLSMALLINT     *pfNullable);

SQLRETURN SQL_API SQLForeignKeysA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbPkCatalogName)
    SQLCHAR         *szPkCatalogName,
    SQLSMALLINT     cbPkCatalogName,
    __in_ecount_opt(cbPkSchemaName)
    SQLCHAR         *szPkSchemaName,
    SQLSMALLINT     cbPkSchemaName,
    __in_ecount_opt(cbPkTableName)
    SQLCHAR         *szPkTableName,
    SQLSMALLINT     cbPkTableName,
    __in_ecount_opt(cbFkCatalogName)
    SQLCHAR         *szFkCatalogName,
    SQLSMALLINT     cbFkCatalogName,
    __in_ecount_opt(cbFkSchemaName)
    SQLCHAR         *szFkSchemaName,
    SQLSMALLINT     cbFkSchemaName,
    __in_ecount_opt(cbFkTableName)
    SQLCHAR         *szFkTableName,
    SQLSMALLINT     cbFkTableName);

SQLRETURN SQL_API SQLNativeSqlA(
    SQLHDBC         hdbc,
    __in_ecount(cbSqlStrIn)
    SQLCHAR         *szSqlStrIn,
    SQLINTEGER      cbSqlStrIn,
    __out_ecount_opt(cbSqlStrMax)
    SQLCHAR         *szSqlStr,
    SQLINTEGER      cbSqlStrMax,
    SQLINTEGER      *pcbSqlStr);

SQLRETURN SQL_API SQLPrimaryKeysA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName);

SQLRETURN SQL_API SQLProcedureColumnsA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbProcName)
    SQLCHAR         *szProcName,
    SQLSMALLINT     cbProcName,
    __in_ecount_opt(cbColumnName)
    SQLCHAR         *szColumnName,
    SQLSMALLINT     cbColumnName);

SQLRETURN SQL_API SQLProceduresA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbProcName)
    SQLCHAR         *szProcName,
    SQLSMALLINT     cbProcName);

SQLRETURN SQL_API SQLTablePrivilegesA(
    SQLHSTMT        hstmt,
    __in_ecount_opt(cbCatalogName)
    SQLCHAR         *szCatalogName,
    SQLSMALLINT     cbCatalogName,
    __in_ecount_opt(cbSchemaName)
    SQLCHAR         *szSchemaName,
    SQLSMALLINT     cbSchemaName,
    __in_ecount_opt(cbTableName)
    SQLCHAR         *szTableName,
    SQLSMALLINT     cbTableName);

SQLRETURN SQL_API SQLDriversA(
    SQLHENV         henv,
    SQLUSMALLINT    fDirection,
    __out_ecount_opt(cbDriverDescMax)
    SQLCHAR         *szDriverDesc,
    SQLSMALLINT     cbDriverDescMax,
    __out_opt
    SQLSMALLINT     *pcbDriverDesc,
    __out_ecount_opt(cbDrvrAttrMax)
    SQLCHAR         *szDriverAttributes,
    SQLSMALLINT     cbDrvrAttrMax,
    __out_opt
    SQLSMALLINT     *pcbDrvrAttr);

//---------------------------------------------
// Mapping macros for Unicode
//---------------------------------------------
#ifndef SQL_NOUNICODEMAP    // define this to disable the mapping
#ifdef  UNICODE

#define SQLColAttribute     SQLColAttributeW
#define SQLColAttributes    SQLColAttributesW
#define SQLConnect          SQLConnectW
#define SQLDescribeCol      SQLDescribeColW
#define SQLError            SQLErrorW
#define SQLExecDirect       SQLExecDirectW
#define SQLGetConnectAttr   SQLGetConnectAttrW
#define SQLGetCursorName    SQLGetCursorNameW
#define SQLGetDescField     SQLGetDescFieldW
#define SQLGetDescRec       SQLGetDescRecW
#define SQLGetDiagField     SQLGetDiagFieldW
#define SQLGetDiagRec       SQLGetDiagRecW
#define SQLPrepare          SQLPrepareW
#define SQLSetConnectAttr   SQLSetConnectAttrW
#define SQLSetCursorName    SQLSetCursorNameW
#define SQLSetDescField     SQLSetDescFieldW
#define SQLSetStmtAttr      SQLSetStmtAttrW
#define SQLGetStmtAttr      SQLGetStmtAttrW
#define SQLColumns          SQLColumnsW
#define SQLGetConnectOption SQLGetConnectOptionW
#define SQLGetInfo          SQLGetInfoW
#define SQLGetTypeInfo      SQLGetTypeInfoW
#define SQLSetConnectOption SQLSetConnectOptionW
#define SQLSpecialColumns   SQLSpecialColumnsW
#define SQLStatistics       SQLStatisticsW
#define SQLTables           SQLTablesW
#define SQLDataSources      SQLDataSourcesW
#define SQLDriverConnect    SQLDriverConnectW
#define SQLBrowseConnect    SQLBrowseConnectW
#define SQLColumnPrivileges SQLColumnPrivilegesW
#define SQLForeignKeys      SQLForeignKeysW
#define SQLNativeSql        SQLNativeSqlW
#define SQLPrimaryKeys      SQLPrimaryKeysW
#define SQLProcedureColumns SQLProcedureColumnsW
#define SQLProcedures       SQLProceduresW
#define SQLTablePrivileges  SQLTablePrivilegesW
#define SQLDrivers          SQLDriversW

#endif  /* UNICODE */
#endif  /* SQL_NOUNICODEMAP */

#endif  /* RC_INVOKED */


#ifdef __cplusplus
}       /* End of extern "C" { */
#endif  /* __cplusplus */

#endif  /* #ifndef __SQLUCODE */

