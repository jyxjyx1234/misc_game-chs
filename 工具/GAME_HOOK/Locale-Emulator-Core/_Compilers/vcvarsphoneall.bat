

@echo off
if "%1" == "" goto x86
if not "%2" == "" goto usage

set VCPhoneToolsRoot=%~dp0

if /i %1 == x86       goto x86
if /i %1 == x86_arm   goto x86_arm
goto usage

:x86
if not exist "%~dp0bin\vcvarsphonex86.bat" goto missing
call "%~dp0bin\vcvarsphonex86.bat"
goto :SetVisualStudioVersion

:x86_arm
if not exist "%~dp0bin\x86_arm\vcvarsphonex86_arm.bat" goto missing
call "%~dp0bin\x86_arm\vcvarsphonex86_arm.bat"
goto :SetVisualStudioVersion

:SetVisualStudioVersion
set VisualStudioVersion=14.0
set VCPhoneToolsRoot=
goto :eof

:usage
echo Error in script usage. The correct usage is:
echo     %0 [option]
echo where [option] is: x86 ^| x86_arm
echo:
echo For example:
echo     %0 x86
goto :eof

:missing
echo The specified configuration type is missing.  The
echo tools for the configuration might not be installed.
goto :eof
