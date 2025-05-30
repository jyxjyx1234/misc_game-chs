

@call :GetVSCommonToolsDir
@if "%VS140COMNTOOLS%"=="" goto error_no_VS140COMNTOOLSDIR

@call "%~dp0VCVarsPhoneQueryRegistry.bat" 32bit No64bit

@if "%VSINSTALLDIR%"=="" goto error_no_VSINSTALLDIR
@if "%VCINSTALLDIR%"=="" goto error_no_VCINSTALLDIR
@if "%FrameworkDir32%"=="" goto error_no_FrameworkDIR32
@if "%FrameworkVersion32%"=="" goto error_no_FrameworkVer32
@if "%Framework35Version%"=="" goto error_no_Framework35Version

@set FrameworkDir=%FrameworkDir32%
@set FrameworkVersion=%FrameworkVersion32%

@if not "%WindowsPhoneKitDir%" == "" @set PATH=%WindowsPhoneKitDir%bin;%WindowsPhoneKitDir%bin\x86;%PATH%
@if not "%WindowsPhoneKitDir%" == "" @set INCLUDE=%WindowsPhoneKitDir%include;%WindowsPhoneKitDir%include\abi;%WindowsPhoneKitDir%include\mincore;%WindowsPhoneKitDir%include\minwin;%WindowsPhoneKitDir%include\wrl;%INCLUDE%
@if not "%WindowsPhoneKitDir%" == "" @set LIB=%WindowsPhoneKitDir%lib\x86;%LIB%
@if not "%WindowsPhoneKitDir%" == "" @set LIBPATH=%WindowsPhoneKitDir%Windows MetaData;%LIBPATH%

@if not "%WindowsPhoneSdkDir%" == "" @set PATH=%WindowsPhoneSdkDir%v8.0\Tools\XAP Deployment;%PATH%

@if not "%UniversalCRTSdkDir%" == "" @set INCLUDE=%UniversalCRTSdkDir%\include\10.0.10056.0\ucrt;%INCLUDE%
@if not "%UniversalCRTSdkDir%" == "" @set LIB=%UniversalCRTSdkDir%\lib\10.0.10056.0\ucrt\x86;%LIB%

@if not "%ExtensionSDKDir%" == "" @set LIBPATH=%ExtensionSDKDir%\Microsoft.VCLibs\14.0\References\CommonConfiguration\neutral;%LIBPATH%

@rem
@rem Root of Visual Studio IDE installed files.
@rem
@set DevEnvDir=%VSINSTALLDIR%Common7\IDE\

@rem PATH
@rem ----
@if exist "%VSINSTALLDIR%Team Tools\Performance Tools" @set PATH=%VSINSTALLDIR%Team Tools\Performance Tools;%PATH%

@if exist "%VCINSTALLDIR%VCPackages" set PATH=%VCINSTALLDIR%VCPackages;%PATH%
@set PATH=%FrameworkDir%%Framework35Version%;%PATH%
@set PATH=%FrameworkDir%%FrameworkVersion%;%PATH%
@set PATH=%VSINSTALLDIR%Common7\Tools;%PATH%
@set PATH=%VCPhoneToolsRoot%BIN;%PATH%
@set PATH=%DevEnvDir%;%PATH%

@rem Add path to MSBuild Binaries
@if exist "%ProgramFiles%\MSBuild\14.0\bin" set PATH=%ProgramFiles%\MSBuild\14.0\bin;%PATH%
@if exist "%ProgramFiles(x86)%\MSBuild\14.0\bin" set PATH=%ProgramFiles(x86)%\MSBuild\14.0\bin;%PATH%

@rem INCLUDE
@rem -------
@set INCLUDE=%VCPhoneToolsRoot%INCLUDE;%INCLUDE%

@rem LIB
@rem ---
@set LIB=%VCPhoneToolsRoot%LIB;%LIB%

@rem LIBPATH
@rem -------
@set LIBPATH=%VCPhoneToolsRoot%LIB;%LIBPATH%
@set LIBPATH=%FrameworkDir%%Framework35Version%;%LIBPATH%
@set LIBPATH=%FrameworkDir%%FrameworkVersion%;%LIBPATH%

@goto end

@REM -----------------------------------------------------------------------
:GetVSCommonToolsDir
@set VS140COMNTOOLS=
@call :GetVSCommonToolsDirHelper32 HKLM > nul 2>&1
@if errorlevel 1 call :GetVSCommonToolsDirHelper32 HKCU > nul 2>&1
@if errorlevel 1 call :GetVSCommonToolsDirHelper64  HKLM > nul 2>&1
@if errorlevel 1 call :GetVSCommonToolsDirHelper64  HKCU > nul 2>&1
@exit /B 0

:GetVSCommonToolsDirHelper32
@for /F "tokens=1,2*" %%i in ('reg query "%1\SOFTWARE\Microsoft\VisualStudio\SxS\VS7" /v "14.0"') DO (
	@if "%%i"=="14.0" (
		@SET VS140COMNTOOLS=%%k
	)
)
@if "%VS140COMNTOOLS%"=="" exit /B 1
@SET VS140COMNTOOLS=%VS140COMNTOOLS%Common7\Tools\
@exit /B 0

:GetVSCommonToolsDirHelper64
@for /F "tokens=1,2*" %%i in ('reg query "%1\SOFTWARE\Wow6432Node\Microsoft\VisualStudio\SxS\VS7" /v "14.0"') DO (
	@if "%%i"=="14.0" (
		@SET VS140COMNTOOLS=%%k
	)
)
@if "%VS140COMNTOOLS%"=="" exit /B 1
@SET VS140COMNTOOLS=%VS140COMNTOOLS%Common7\Tools\
@exit /B 0

@REM -----------------------------------------------------------------------
:error_no_VS140COMNTOOLSDIR
@echo ERROR: Cannot determine the location of the VS Common Tools folder.
@goto end

:error_no_VSINSTALLDIR
@echo ERROR: Cannot determine the location of the VS installation.
@goto end

:error_no_VCINSTALLDIR
@echo ERROR: Cannot determine the location of the VC installation.
@goto end

:error_no_FrameworkDIR32
@echo ERROR: Cannot determine the location of the .NET Framework 32bit installation.
@goto end

:error_no_FrameworkVer32
@echo ERROR: Cannot determine the version of the .NET Framework 32bit installation.
@goto end

:error_no_Framework35Version
@echo ERROR: Cannot determine the .NET Framework 3.5 version.
@goto end

:end
