@echo off
setlocal
chcp 936
REM 获取当前批处理文件所在路径
set "current_path=%~dp0"
set "current_path=%current_path:\=\\%"
echo 当前路径: %current_path%
set "userprofile_docs=%USERPROFILE%\Documents"
if not exist "%userprofile_docs%\age" mkdir "%userprofile_docs%\age"
copy /y "%current_path%君がいた季節FR.rio.ici" "%userprofile_docs%\age\"


REM 创建临时REG文件
(
echo Windows Registry Editor Version 5.00
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications]
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age]
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR]
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\Installation]
echo "strAbsolutePath"="%current_path%"
echo "strObjectOcean"="%current_path%君がいた季節FR.rio"
echo "strIciPath"="%current_path%君がいた季節FR.rio.ici"
echo "strTTFileName"="君がいた季節FR.rbt"
echo "strInstallSourcePath"="E:\\"
echo "bInstalled"=dword:00000001
echo "strInstallTypeSelect"="1"
echo "strInstallSystemType"="1"
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\InstallFont]
echo "ＭＳ Ｐゴシック%#24%$-B%$-A"="君がいた季節FR.rio\\ＭＳ Ｐゴシック24BA.5RF"
echo "ＭＳ Ｐゴシック%#16%$-B"="君がいた季節FR.rio\\ＭＳ Ｐゴシック16B.5RF"
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\PeculiarToTheApp]
echo "strTheAppName"="君がいた季節"
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\rUGPBasic]
echo "strRugpPluginFolder"="%current_path%Plugins"
echo "nRugpVersion"=dword:0000157c
echo "bIsIllegalTerminateCheck"=dword:00000001
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\rvmmBoxSettings]
echo "nWndFrameLevel"=dword:00000000
echo "nWndBaseRatioSrc"=dword:00000000
echo "nWndBaseRatioDst"=dword:00000008
echo "nWndBaseColor1"=dword:002020a0
echo "nWndBaseColor2"=dword:00c0c0ff
echo "nWndBaseGradation"=dword:00000001
echo "nFontBlank"=dword:00000002
echo "nMainFontColor"=dword:ffffffff
echo "nSelectedFontColor"=dword:ff8090c0
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\rvmmInstallation]
echo "strFontCachePath"="%current_path%"
echo "strVirtuaRegistryAbsolutePath"="%current_path%Vmreg\\"
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\rvmmPeculiarToTheApp]
echo "strStandardFont"="ＭＳ Ｐゴシック%#24%$-B%$-A"
echo "strLowSpecFont"="ＭＳ Ｐゴシック%#16%$-B"
echo "bCanSettingWindow"=dword:00000000
echo "bCanSettingFont"=dword:00000001
echo "bPageOverNext"=dword:00000001
echo "bUucAccessMasterKey"=dword:00000001
echo "bCanSettingInstall"=dword:00000001
echo "nCsmIni_CSoundManEx_nBgmVol"=dword:00000667
echo "nCsmIni_CSoundManEx_nEffectVol"=dword:00000667
echo "nCsmIni_CSoundManEx_nVoiceVol"=dword:00000ccd
echo "strInstallFontFolder"=""
echo "bCanSettingText"=dword:00000001
echo "bCanSettingAcs"=dword:00000001
echo "bCanSettingSound"=dword:00000001
echo "bCanSettingSystem"=dword:00000001
echo "bCanSettingScreenSizes"=dword:00000001
echo "nCsmIni_CSoundManEx_nPcmChannels"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nSsSyncAccuracy"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nVoiceSsSyncRate"=dword:ffffffff
echo "strHelpReference"="index.htm"
echo "strTextHelpReference"="Manual.txt"
echo "bFullScreenMenuOff"=dword:00000000
echo "bWindowMenuAccessMasterKey"=dword:00000001
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\age\君がいた季節FR\rvmmUISettings]
echo "strMainFont"="ＭＳ Ｐゴシック%#24%$-B%$-A"
echo "dwMainFontStyle"=dword:00001008
echo "bFullScreen"=dword:00000000
echo "nTextSpeed"=dword:00000000
echo "bMouseTrace"=dword:00000000
echo "nSeenMsgSkip"=dword:00000000
echo "strCurrentMonitorDevice"=""
echo "dwCurrentMonitorFlag"=dword:00000000
echo "nWindowSize"=dword:00000003
echo "nFaceWindowSize"=dword:00000003
echo "nFaceWindowW"=dword:00000400
echo "nFaceWindowH"=dword:00000258
echo "nExfsDmWidth"=dword:00000000
echo "nExfsDmHeight"=dword:00000000
echo "nExfsDmColorDepth"=dword:00000000
echo "nExfsDmRefleshRate"=dword:00000000
echo "nExfsFitMode"=dword:00000000
echo "nExfsHighFitMode"=dword:00000000
echo "nExfsERO"=dword:00000001
echo "nExfsSCDO"=dword:00000001
echo "nExfsSpecifyPixelW"=dword:00000000
echo "nExfsSpecifyPixelH"=dword:00000000
echo "nStretchMode"=dword:00000010
echo "isBgm"=dword:00000001
echo "isEffect"=dword:00000001
echo "nVoiceLevel"=dword:00000001
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.]
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.\Installation]
echo "bInstalled"=dword:00000000
echo "strObjectOcean"="%current_path%rUGP.rio"
echo "strAbsolutePath"="%current_path%"
echo "strInstallSourcePath"=""
echo "strInstallTypeSelect"=""
echo "strInstallSystemType"=""
echo "strTTFileName"=""
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.\rUGPBasic]
echo "strRugpPluginFolder"="%current_path%Plugins"
echo "nRugpVersion"=dword:0000157c
echo "bIsIllegalTerminateCheck"=dword:00000000
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.\rvmmBoxSettings]
echo "nWndBaseColor1"=dword:ff7878ff
echo "nWndBaseColor2"=dword:ff000050
echo "nWndBaseGradation"=dword:00000001
echo "nWndBaseRatioSrc"=dword:00000080
echo "nWndBaseRatioDst"=dword:00000007
echo "nWndFrameLevel"=dword:00000000
echo "nFontBlank"=dword:00000002
echo "nMainFontColor"=dword:ffffffff
echo "nSelectedFontColor"=dword:ff8090c0
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.\rvmmInstallation]
echo "strVirtuaRegistryAbsolutePath"="%current_path%Vmreg\\"
echo "strFontCachePath"=""
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.\rvmmPeculiarToTheApp]
echo "strStandardFont"=""
echo "strLowSpecFont"=""
echo "strInstallFontFolder"=""
echo "bCanSettingWindow"=dword:00000001
echo "bCanSettingText"=dword:00000001
echo "bCanSettingAcs"=dword:00000001
echo "bCanSettingFont"=dword:00000001
echo "bCanSettingSound"=dword:00000001
echo "bCanSettingSystem"=dword:00000001
echo "bCanSettingScreenSizes"=dword:00000001
echo "bCanSettingInstall"=dword:00000001
echo "nCsmIni_CSoundManEx_nBgmVol"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nEffectVol"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nVoiceVol"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nPcmChannels"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nSsSyncAccuracy"=dword:ffffffff
echo "nCsmIni_CSoundManEx_nVoiceSsSyncRate"=dword:ffffffff
echo "strHelpReference"="index.htm"
echo "strTextHelpReference"="Manual.txt"
echo "bPageOverNext"=dword:00000001
echo "bUucAccessMasterKey"=dword:00000001
echo "bFullScreenMenuOff"=dword:00000000
echo "bWindowMenuAccessMasterKey"=dword:00000001
echo.
echo [HKEY_CURRENT_USER\SOFTWARE\relic UGP Applications\Default rUGP App.\rvmmUISettings]
echo "bFullScreen"=dword:00000000
echo "strCurrentMonitorDevice"=""
echo "dwCurrentMonitorFlag"=dword:00000001
echo "nWindowSize"=dword:00000003
echo "nFaceWindowSize"=dword:00000003
echo "nFaceWindowW"=dword:00000280
echo "nFaceWindowH"=dword:000001e0
echo "nExfsDmWidth"=dword:00000000
echo "nExfsDmHeight"=dword:00000000
echo "nExfsDmColorDepth"=dword:00000000
echo "nExfsDmRefleshRate"=dword:00000000
echo "nExfsFitMode"=dword:00000000
echo "nExfsHighFitMode"=dword:00000000
echo "nExfsERO"=dword:00000001
echo "nExfsSCDO"=dword:00000001
echo "nExfsSpecifyPixelW"=dword:00000000
echo "nExfsSpecifyPixelH"=dword:00000000
echo "nStretchMode"=dword:00000010
echo "isBgm"=dword:00000001
echo "isEffect"=dword:00000001
echo "nVoiceLevel"=dword:00000001
echo "bMouseTrace"=dword:00000001
echo "nTextSpeed"=dword:00000050
echo "dwMainFontStyle"=dword:00000004
) > temp.reg

REM 导入注册表
echo 正在导入注册表...
reg import temp.reg

REM 删除临时文件
del temp.reg
echo 安装完成

