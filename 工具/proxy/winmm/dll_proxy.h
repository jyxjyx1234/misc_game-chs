
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//
#pragma once
#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:Noname2=_AheadLib_Unnamed2,@2,NONAME")
#pragma comment(linker, "/EXPORT:mciExecute=_AheadLib_mciExecute,@3")
#pragma comment(linker, "/EXPORT:CloseDriver=_AheadLib_CloseDriver,@4")
#pragma comment(linker, "/EXPORT:DefDriverProc=_AheadLib_DefDriverProc,@5")
#pragma comment(linker, "/EXPORT:DriverCallback=_AheadLib_DriverCallback,@6")
#pragma comment(linker, "/EXPORT:DrvGetModuleHandle=_AheadLib_DrvGetModuleHandle,@7")
#pragma comment(linker, "/EXPORT:GetDriverModuleHandle=_AheadLib_GetDriverModuleHandle,@8")
#pragma comment(linker, "/EXPORT:NotifyCallbackData=_AheadLib_NotifyCallbackData,@9")
#pragma comment(linker, "/EXPORT:OpenDriver=_AheadLib_OpenDriver,@10")
#pragma comment(linker, "/EXPORT:PlaySound=_AheadLib_PlaySound,@11")
#pragma comment(linker, "/EXPORT:PlaySoundA=_AheadLib_PlaySoundA,@12")
#pragma comment(linker, "/EXPORT:PlaySoundW=_AheadLib_PlaySoundW,@13")
#pragma comment(linker, "/EXPORT:SendDriverMessage=_AheadLib_SendDriverMessage,@14")
#pragma comment(linker, "/EXPORT:WOW32DriverCallback=_AheadLib_WOW32DriverCallback,@15")
#pragma comment(linker, "/EXPORT:WOW32ResolveMultiMediaHandle=_AheadLib_WOW32ResolveMultiMediaHandle,@16")
#pragma comment(linker, "/EXPORT:WOWAppExit=_AheadLib_WOWAppExit,@17")
#pragma comment(linker, "/EXPORT:aux32Message=_AheadLib_aux32Message,@18")
#pragma comment(linker, "/EXPORT:auxGetDevCapsA=_AheadLib_auxGetDevCapsA,@19")
#pragma comment(linker, "/EXPORT:auxGetDevCapsW=_AheadLib_auxGetDevCapsW,@20")
#pragma comment(linker, "/EXPORT:auxGetNumDevs=_AheadLib_auxGetNumDevs,@21")
#pragma comment(linker, "/EXPORT:auxGetVolume=_AheadLib_auxGetVolume,@22")
#pragma comment(linker, "/EXPORT:auxOutMessage=_AheadLib_auxOutMessage,@23")
#pragma comment(linker, "/EXPORT:auxSetVolume=_AheadLib_auxSetVolume,@24")
#pragma comment(linker, "/EXPORT:joy32Message=_AheadLib_joy32Message,@25")
#pragma comment(linker, "/EXPORT:joyConfigChanged=_AheadLib_joyConfigChanged,@26")
#pragma comment(linker, "/EXPORT:joyGetDevCapsA=_AheadLib_joyGetDevCapsA,@27")
#pragma comment(linker, "/EXPORT:joyGetDevCapsW=_AheadLib_joyGetDevCapsW,@28")
#pragma comment(linker, "/EXPORT:joyGetNumDevs=_AheadLib_joyGetNumDevs,@29")
#pragma comment(linker, "/EXPORT:joyGetPos=_AheadLib_joyGetPos,@30")
#pragma comment(linker, "/EXPORT:joyGetPosEx=_AheadLib_joyGetPosEx,@31")
#pragma comment(linker, "/EXPORT:joyGetThreshold=_AheadLib_joyGetThreshold,@32")
#pragma comment(linker, "/EXPORT:joyReleaseCapture=_AheadLib_joyReleaseCapture,@33")
#pragma comment(linker, "/EXPORT:joySetCapture=_AheadLib_joySetCapture,@34")
#pragma comment(linker, "/EXPORT:joySetThreshold=_AheadLib_joySetThreshold,@35")
#pragma comment(linker, "/EXPORT:mci32Message=_AheadLib_mci32Message,@36")
#pragma comment(linker, "/EXPORT:mciDriverNotify=_AheadLib_mciDriverNotify,@37")
#pragma comment(linker, "/EXPORT:mciDriverYield=_AheadLib_mciDriverYield,@38")
#pragma comment(linker, "/EXPORT:mciFreeCommandResource=_AheadLib_mciFreeCommandResource,@39")
#pragma comment(linker, "/EXPORT:mciGetCreatorTask=_AheadLib_mciGetCreatorTask,@40")
#pragma comment(linker, "/EXPORT:mciGetDeviceIDA=_AheadLib_mciGetDeviceIDA,@41")
#pragma comment(linker, "/EXPORT:mciGetDeviceIDFromElementIDA=_AheadLib_mciGetDeviceIDFromElementIDA,@42")
#pragma comment(linker, "/EXPORT:mciGetDeviceIDFromElementIDW=_AheadLib_mciGetDeviceIDFromElementIDW,@43")
#pragma comment(linker, "/EXPORT:mciGetDeviceIDW=_AheadLib_mciGetDeviceIDW,@44")
#pragma comment(linker, "/EXPORT:mciGetDriverData=_AheadLib_mciGetDriverData,@45")
#pragma comment(linker, "/EXPORT:mciGetErrorStringA=_AheadLib_mciGetErrorStringA,@46")
#pragma comment(linker, "/EXPORT:mciGetErrorStringW=_AheadLib_mciGetErrorStringW,@47")
#pragma comment(linker, "/EXPORT:mciGetYieldProc=_AheadLib_mciGetYieldProc,@48")
#pragma comment(linker, "/EXPORT:mciLoadCommandResource=_AheadLib_mciLoadCommandResource,@49")
#pragma comment(linker, "/EXPORT:mciSendCommandA=_AheadLib_mciSendCommandA,@50")
#pragma comment(linker, "/EXPORT:mciSendCommandW=_AheadLib_mciSendCommandW,@51")
#pragma comment(linker, "/EXPORT:mciSendStringA=_AheadLib_mciSendStringA,@52")
#pragma comment(linker, "/EXPORT:mciSendStringW=_AheadLib_mciSendStringW,@53")
#pragma comment(linker, "/EXPORT:mciSetDriverData=_AheadLib_mciSetDriverData,@54")
#pragma comment(linker, "/EXPORT:mciSetYieldProc=_AheadLib_mciSetYieldProc,@55")
#pragma comment(linker, "/EXPORT:mid32Message=_AheadLib_mid32Message,@56")
#pragma comment(linker, "/EXPORT:midiConnect=_AheadLib_midiConnect,@57")
#pragma comment(linker, "/EXPORT:midiDisconnect=_AheadLib_midiDisconnect,@58")
#pragma comment(linker, "/EXPORT:midiInAddBuffer=_AheadLib_midiInAddBuffer,@59")
#pragma comment(linker, "/EXPORT:midiInClose=_AheadLib_midiInClose,@60")
#pragma comment(linker, "/EXPORT:midiInGetDevCapsA=_AheadLib_midiInGetDevCapsA,@61")
#pragma comment(linker, "/EXPORT:midiInGetDevCapsW=_AheadLib_midiInGetDevCapsW,@62")
#pragma comment(linker, "/EXPORT:midiInGetErrorTextA=_AheadLib_midiInGetErrorTextA,@63")
#pragma comment(linker, "/EXPORT:midiInGetErrorTextW=_AheadLib_midiInGetErrorTextW,@64")
#pragma comment(linker, "/EXPORT:midiInGetID=_AheadLib_midiInGetID,@65")
#pragma comment(linker, "/EXPORT:midiInGetNumDevs=_AheadLib_midiInGetNumDevs,@66")
#pragma comment(linker, "/EXPORT:midiInMessage=_AheadLib_midiInMessage,@67")
#pragma comment(linker, "/EXPORT:midiInOpen=_AheadLib_midiInOpen,@68")
#pragma comment(linker, "/EXPORT:midiInPrepareHeader=_AheadLib_midiInPrepareHeader,@69")
#pragma comment(linker, "/EXPORT:midiInReset=_AheadLib_midiInReset,@70")
#pragma comment(linker, "/EXPORT:midiInStart=_AheadLib_midiInStart,@71")
#pragma comment(linker, "/EXPORT:midiInStop=_AheadLib_midiInStop,@72")
#pragma comment(linker, "/EXPORT:midiInUnprepareHeader=_AheadLib_midiInUnprepareHeader,@73")
#pragma comment(linker, "/EXPORT:midiOutCacheDrumPatches=_AheadLib_midiOutCacheDrumPatches,@74")
#pragma comment(linker, "/EXPORT:midiOutCachePatches=_AheadLib_midiOutCachePatches,@75")
#pragma comment(linker, "/EXPORT:midiOutClose=_AheadLib_midiOutClose,@76")
#pragma comment(linker, "/EXPORT:midiOutGetDevCapsA=_AheadLib_midiOutGetDevCapsA,@77")
#pragma comment(linker, "/EXPORT:midiOutGetDevCapsW=_AheadLib_midiOutGetDevCapsW,@78")
#pragma comment(linker, "/EXPORT:midiOutGetErrorTextA=_AheadLib_midiOutGetErrorTextA,@79")
#pragma comment(linker, "/EXPORT:midiOutGetErrorTextW=_AheadLib_midiOutGetErrorTextW,@80")
#pragma comment(linker, "/EXPORT:midiOutGetID=_AheadLib_midiOutGetID,@81")
#pragma comment(linker, "/EXPORT:midiOutGetNumDevs=_AheadLib_midiOutGetNumDevs,@82")
#pragma comment(linker, "/EXPORT:midiOutGetVolume=_AheadLib_midiOutGetVolume,@83")
#pragma comment(linker, "/EXPORT:midiOutLongMsg=_AheadLib_midiOutLongMsg,@84")
#pragma comment(linker, "/EXPORT:midiOutMessage=_AheadLib_midiOutMessage,@85")
#pragma comment(linker, "/EXPORT:midiOutOpen=_AheadLib_midiOutOpen,@86")
#pragma comment(linker, "/EXPORT:midiOutPrepareHeader=_AheadLib_midiOutPrepareHeader,@87")
#pragma comment(linker, "/EXPORT:midiOutReset=_AheadLib_midiOutReset,@88")
#pragma comment(linker, "/EXPORT:midiOutSetVolume=_AheadLib_midiOutSetVolume,@89")
#pragma comment(linker, "/EXPORT:midiOutShortMsg=_AheadLib_midiOutShortMsg,@90")
#pragma comment(linker, "/EXPORT:midiOutUnprepareHeader=_AheadLib_midiOutUnprepareHeader,@91")
#pragma comment(linker, "/EXPORT:midiStreamClose=_AheadLib_midiStreamClose,@92")
#pragma comment(linker, "/EXPORT:midiStreamOpen=_AheadLib_midiStreamOpen,@93")
#pragma comment(linker, "/EXPORT:midiStreamOut=_AheadLib_midiStreamOut,@94")
#pragma comment(linker, "/EXPORT:midiStreamPause=_AheadLib_midiStreamPause,@95")
#pragma comment(linker, "/EXPORT:midiStreamPosition=_AheadLib_midiStreamPosition,@96")
#pragma comment(linker, "/EXPORT:midiStreamProperty=_AheadLib_midiStreamProperty,@97")
#pragma comment(linker, "/EXPORT:midiStreamRestart=_AheadLib_midiStreamRestart,@98")
#pragma comment(linker, "/EXPORT:midiStreamStop=_AheadLib_midiStreamStop,@99")
#pragma comment(linker, "/EXPORT:mixerClose=_AheadLib_mixerClose,@100")
#pragma comment(linker, "/EXPORT:mixerGetControlDetailsA=_AheadLib_mixerGetControlDetailsA,@101")
#pragma comment(linker, "/EXPORT:mixerGetControlDetailsW=_AheadLib_mixerGetControlDetailsW,@102")
#pragma comment(linker, "/EXPORT:mixerGetDevCapsA=_AheadLib_mixerGetDevCapsA,@103")
#pragma comment(linker, "/EXPORT:mixerGetDevCapsW=_AheadLib_mixerGetDevCapsW,@104")
#pragma comment(linker, "/EXPORT:mixerGetID=_AheadLib_mixerGetID,@105")
#pragma comment(linker, "/EXPORT:mixerGetLineControlsA=_AheadLib_mixerGetLineControlsA,@106")
#pragma comment(linker, "/EXPORT:mixerGetLineControlsW=_AheadLib_mixerGetLineControlsW,@107")
#pragma comment(linker, "/EXPORT:mixerGetLineInfoA=_AheadLib_mixerGetLineInfoA,@108")
#pragma comment(linker, "/EXPORT:mixerGetLineInfoW=_AheadLib_mixerGetLineInfoW,@109")
#pragma comment(linker, "/EXPORT:mixerGetNumDevs=_AheadLib_mixerGetNumDevs,@110")
#pragma comment(linker, "/EXPORT:mixerMessage=_AheadLib_mixerMessage,@111")
#pragma comment(linker, "/EXPORT:mixerOpen=_AheadLib_mixerOpen,@112")
#pragma comment(linker, "/EXPORT:mixerSetControlDetails=_AheadLib_mixerSetControlDetails,@113")
#pragma comment(linker, "/EXPORT:mmDrvInstall=_AheadLib_mmDrvInstall,@114")
#pragma comment(linker, "/EXPORT:mmGetCurrentTask=_AheadLib_mmGetCurrentTask,@115")
#pragma comment(linker, "/EXPORT:mmTaskBlock=_AheadLib_mmTaskBlock,@116")
#pragma comment(linker, "/EXPORT:mmTaskCreate=_AheadLib_mmTaskCreate,@117")
#pragma comment(linker, "/EXPORT:mmTaskSignal=_AheadLib_mmTaskSignal,@118")
#pragma comment(linker, "/EXPORT:mmTaskYield=_AheadLib_mmTaskYield,@119")
#pragma comment(linker, "/EXPORT:mmioAdvance=_AheadLib_mmioAdvance,@120")
#pragma comment(linker, "/EXPORT:mmioAscend=_AheadLib_mmioAscend,@121")
#pragma comment(linker, "/EXPORT:mmioClose=_AheadLib_mmioClose,@122")
#pragma comment(linker, "/EXPORT:mmioCreateChunk=_AheadLib_mmioCreateChunk,@123")
#pragma comment(linker, "/EXPORT:mmioDescend=_AheadLib_mmioDescend,@124")
#pragma comment(linker, "/EXPORT:mmioFlush=_AheadLib_mmioFlush,@125")
#pragma comment(linker, "/EXPORT:mmioGetInfo=_AheadLib_mmioGetInfo,@126")
#pragma comment(linker, "/EXPORT:mmioInstallIOProcA=_AheadLib_mmioInstallIOProcA,@127")
#pragma comment(linker, "/EXPORT:mmioInstallIOProcW=_AheadLib_mmioInstallIOProcW,@128")
#pragma comment(linker, "/EXPORT:mmioOpenA=_AheadLib_mmioOpenA,@129")
#pragma comment(linker, "/EXPORT:mmioOpenW=_AheadLib_mmioOpenW,@130")
#pragma comment(linker, "/EXPORT:mmioRead=_AheadLib_mmioRead,@131")
#pragma comment(linker, "/EXPORT:mmioRenameA=_AheadLib_mmioRenameA,@132")
#pragma comment(linker, "/EXPORT:mmioRenameW=_AheadLib_mmioRenameW,@133")
#pragma comment(linker, "/EXPORT:mmioSeek=_AheadLib_mmioSeek,@134")
#pragma comment(linker, "/EXPORT:mmioSendMessage=_AheadLib_mmioSendMessage,@135")
#pragma comment(linker, "/EXPORT:mmioSetBuffer=_AheadLib_mmioSetBuffer,@136")
#pragma comment(linker, "/EXPORT:mmioSetInfo=_AheadLib_mmioSetInfo,@137")
#pragma comment(linker, "/EXPORT:mmioStringToFOURCCA=_AheadLib_mmioStringToFOURCCA,@138")
#pragma comment(linker, "/EXPORT:mmioStringToFOURCCW=_AheadLib_mmioStringToFOURCCW,@139")
#pragma comment(linker, "/EXPORT:mmioWrite=_AheadLib_mmioWrite,@140")
#pragma comment(linker, "/EXPORT:mmsystemGetVersion=_AheadLib_mmsystemGetVersion,@141")
#pragma comment(linker, "/EXPORT:mod32Message=_AheadLib_mod32Message,@142")
#pragma comment(linker, "/EXPORT:mxd32Message=_AheadLib_mxd32Message,@143")
#pragma comment(linker, "/EXPORT:sndPlaySoundA=_AheadLib_sndPlaySoundA,@144")
#pragma comment(linker, "/EXPORT:sndPlaySoundW=_AheadLib_sndPlaySoundW,@145")
#pragma comment(linker, "/EXPORT:tid32Message=_AheadLib_tid32Message,@146")
#pragma comment(linker, "/EXPORT:timeBeginPeriod=_AheadLib_timeBeginPeriod,@147")
#pragma comment(linker, "/EXPORT:timeEndPeriod=_AheadLib_timeEndPeriod,@148")
#pragma comment(linker, "/EXPORT:timeGetDevCaps=_AheadLib_timeGetDevCaps,@149")
#pragma comment(linker, "/EXPORT:timeGetSystemTime=_AheadLib_timeGetSystemTime,@150")
#pragma comment(linker, "/EXPORT:timeGetTime=_AheadLib_timeGetTime,@151")
#pragma comment(linker, "/EXPORT:timeKillEvent=_AheadLib_timeKillEvent,@152")
#pragma comment(linker, "/EXPORT:timeSetEvent=_AheadLib_timeSetEvent,@153")
#pragma comment(linker, "/EXPORT:waveInAddBuffer=_AheadLib_waveInAddBuffer,@154")
#pragma comment(linker, "/EXPORT:waveInClose=_AheadLib_waveInClose,@155")
#pragma comment(linker, "/EXPORT:waveInGetDevCapsA=_AheadLib_waveInGetDevCapsA,@156")
#pragma comment(linker, "/EXPORT:waveInGetDevCapsW=_AheadLib_waveInGetDevCapsW,@157")
#pragma comment(linker, "/EXPORT:waveInGetErrorTextA=_AheadLib_waveInGetErrorTextA,@158")
#pragma comment(linker, "/EXPORT:waveInGetErrorTextW=_AheadLib_waveInGetErrorTextW,@159")
#pragma comment(linker, "/EXPORT:waveInGetID=_AheadLib_waveInGetID,@160")
#pragma comment(linker, "/EXPORT:waveInGetNumDevs=_AheadLib_waveInGetNumDevs,@161")
#pragma comment(linker, "/EXPORT:waveInGetPosition=_AheadLib_waveInGetPosition,@162")
#pragma comment(linker, "/EXPORT:waveInMessage=_AheadLib_waveInMessage,@163")
#pragma comment(linker, "/EXPORT:waveInOpen=_AheadLib_waveInOpen,@164")
#pragma comment(linker, "/EXPORT:waveInPrepareHeader=_AheadLib_waveInPrepareHeader,@165")
#pragma comment(linker, "/EXPORT:waveInReset=_AheadLib_waveInReset,@166")
#pragma comment(linker, "/EXPORT:waveInStart=_AheadLib_waveInStart,@167")
#pragma comment(linker, "/EXPORT:waveInStop=_AheadLib_waveInStop,@168")
#pragma comment(linker, "/EXPORT:waveInUnprepareHeader=_AheadLib_waveInUnprepareHeader,@169")
#pragma comment(linker, "/EXPORT:waveOutBreakLoop=_AheadLib_waveOutBreakLoop,@170")
#pragma comment(linker, "/EXPORT:waveOutClose=_AheadLib_waveOutClose,@171")
#pragma comment(linker, "/EXPORT:waveOutGetDevCapsA=_AheadLib_waveOutGetDevCapsA,@172")
#pragma comment(linker, "/EXPORT:waveOutGetDevCapsW=_AheadLib_waveOutGetDevCapsW,@173")
#pragma comment(linker, "/EXPORT:waveOutGetErrorTextA=_AheadLib_waveOutGetErrorTextA,@174")
#pragma comment(linker, "/EXPORT:waveOutGetErrorTextW=_AheadLib_waveOutGetErrorTextW,@175")
#pragma comment(linker, "/EXPORT:waveOutGetID=_AheadLib_waveOutGetID,@176")
#pragma comment(linker, "/EXPORT:waveOutGetNumDevs=_AheadLib_waveOutGetNumDevs,@177")
#pragma comment(linker, "/EXPORT:waveOutGetPitch=_AheadLib_waveOutGetPitch,@178")
#pragma comment(linker, "/EXPORT:waveOutGetPlaybackRate=_AheadLib_waveOutGetPlaybackRate,@179")
#pragma comment(linker, "/EXPORT:waveOutGetPosition=_AheadLib_waveOutGetPosition,@180")
#pragma comment(linker, "/EXPORT:waveOutGetVolume=_AheadLib_waveOutGetVolume,@181")
#pragma comment(linker, "/EXPORT:waveOutMessage=_AheadLib_waveOutMessage,@182")
#pragma comment(linker, "/EXPORT:waveOutOpen=_AheadLib_waveOutOpen,@183")
#pragma comment(linker, "/EXPORT:waveOutPause=_AheadLib_waveOutPause,@184")
#pragma comment(linker, "/EXPORT:waveOutPrepareHeader=_AheadLib_waveOutPrepareHeader,@185")
#pragma comment(linker, "/EXPORT:waveOutReset=_AheadLib_waveOutReset,@186")
#pragma comment(linker, "/EXPORT:waveOutRestart=_AheadLib_waveOutRestart,@187")
#pragma comment(linker, "/EXPORT:waveOutSetPitch=_AheadLib_waveOutSetPitch,@188")
#pragma comment(linker, "/EXPORT:waveOutSetPlaybackRate=_AheadLib_waveOutSetPlaybackRate,@189")
#pragma comment(linker, "/EXPORT:waveOutSetVolume=_AheadLib_waveOutSetVolume,@190")
#pragma comment(linker, "/EXPORT:waveOutUnprepareHeader=_AheadLib_waveOutUnprepareHeader,@191")
#pragma comment(linker, "/EXPORT:waveOutWrite=_AheadLib_waveOutWrite,@192")
#pragma comment(linker, "/EXPORT:wid32Message=_AheadLib_wid32Message,@193")
#pragma comment(linker, "/EXPORT:wod32Message=_AheadLib_wod32Message,@194")


PVOID pfnAheadLib_Unnamed2;
PVOID pfnAheadLib_mciExecute;
PVOID pfnAheadLib_CloseDriver;
PVOID pfnAheadLib_DefDriverProc;
PVOID pfnAheadLib_DriverCallback;
PVOID pfnAheadLib_DrvGetModuleHandle;
PVOID pfnAheadLib_GetDriverModuleHandle;
PVOID pfnAheadLib_NotifyCallbackData;
PVOID pfnAheadLib_OpenDriver;
PVOID pfnAheadLib_PlaySound;
PVOID pfnAheadLib_PlaySoundA;
PVOID pfnAheadLib_PlaySoundW;
PVOID pfnAheadLib_SendDriverMessage;
PVOID pfnAheadLib_WOW32DriverCallback;
PVOID pfnAheadLib_WOW32ResolveMultiMediaHandle;
PVOID pfnAheadLib_WOWAppExit;
PVOID pfnAheadLib_aux32Message;
PVOID pfnAheadLib_auxGetDevCapsA;
PVOID pfnAheadLib_auxGetDevCapsW;
PVOID pfnAheadLib_auxGetNumDevs;
PVOID pfnAheadLib_auxGetVolume;
PVOID pfnAheadLib_auxOutMessage;
PVOID pfnAheadLib_auxSetVolume;
PVOID pfnAheadLib_joy32Message;
PVOID pfnAheadLib_joyConfigChanged;
PVOID pfnAheadLib_joyGetDevCapsA;
PVOID pfnAheadLib_joyGetDevCapsW;
PVOID pfnAheadLib_joyGetNumDevs;
PVOID pfnAheadLib_joyGetPos;
PVOID pfnAheadLib_joyGetPosEx;
PVOID pfnAheadLib_joyGetThreshold;
PVOID pfnAheadLib_joyReleaseCapture;
PVOID pfnAheadLib_joySetCapture;
PVOID pfnAheadLib_joySetThreshold;
PVOID pfnAheadLib_mci32Message;
PVOID pfnAheadLib_mciDriverNotify;
PVOID pfnAheadLib_mciDriverYield;
PVOID pfnAheadLib_mciFreeCommandResource;
PVOID pfnAheadLib_mciGetCreatorTask;
PVOID pfnAheadLib_mciGetDeviceIDA;
PVOID pfnAheadLib_mciGetDeviceIDFromElementIDA;
PVOID pfnAheadLib_mciGetDeviceIDFromElementIDW;
PVOID pfnAheadLib_mciGetDeviceIDW;
PVOID pfnAheadLib_mciGetDriverData;
PVOID pfnAheadLib_mciGetErrorStringA;
PVOID pfnAheadLib_mciGetErrorStringW;
PVOID pfnAheadLib_mciGetYieldProc;
PVOID pfnAheadLib_mciLoadCommandResource;
PVOID pfnAheadLib_mciSendCommandA;
PVOID pfnAheadLib_mciSendCommandW;
PVOID pfnAheadLib_mciSendStringA;
PVOID pfnAheadLib_mciSendStringW;
PVOID pfnAheadLib_mciSetDriverData;
PVOID pfnAheadLib_mciSetYieldProc;
PVOID pfnAheadLib_mid32Message;
PVOID pfnAheadLib_midiConnect;
PVOID pfnAheadLib_midiDisconnect;
PVOID pfnAheadLib_midiInAddBuffer;
PVOID pfnAheadLib_midiInClose;
PVOID pfnAheadLib_midiInGetDevCapsA;
PVOID pfnAheadLib_midiInGetDevCapsW;
PVOID pfnAheadLib_midiInGetErrorTextA;
PVOID pfnAheadLib_midiInGetErrorTextW;
PVOID pfnAheadLib_midiInGetID;
PVOID pfnAheadLib_midiInGetNumDevs;
PVOID pfnAheadLib_midiInMessage;
PVOID pfnAheadLib_midiInOpen;
PVOID pfnAheadLib_midiInPrepareHeader;
PVOID pfnAheadLib_midiInReset;
PVOID pfnAheadLib_midiInStart;
PVOID pfnAheadLib_midiInStop;
PVOID pfnAheadLib_midiInUnprepareHeader;
PVOID pfnAheadLib_midiOutCacheDrumPatches;
PVOID pfnAheadLib_midiOutCachePatches;
PVOID pfnAheadLib_midiOutClose;
PVOID pfnAheadLib_midiOutGetDevCapsA;
PVOID pfnAheadLib_midiOutGetDevCapsW;
PVOID pfnAheadLib_midiOutGetErrorTextA;
PVOID pfnAheadLib_midiOutGetErrorTextW;
PVOID pfnAheadLib_midiOutGetID;
PVOID pfnAheadLib_midiOutGetNumDevs;
PVOID pfnAheadLib_midiOutGetVolume;
PVOID pfnAheadLib_midiOutLongMsg;
PVOID pfnAheadLib_midiOutMessage;
PVOID pfnAheadLib_midiOutOpen;
PVOID pfnAheadLib_midiOutPrepareHeader;
PVOID pfnAheadLib_midiOutReset;
PVOID pfnAheadLib_midiOutSetVolume;
PVOID pfnAheadLib_midiOutShortMsg;
PVOID pfnAheadLib_midiOutUnprepareHeader;
PVOID pfnAheadLib_midiStreamClose;
PVOID pfnAheadLib_midiStreamOpen;
PVOID pfnAheadLib_midiStreamOut;
PVOID pfnAheadLib_midiStreamPause;
PVOID pfnAheadLib_midiStreamPosition;
PVOID pfnAheadLib_midiStreamProperty;
PVOID pfnAheadLib_midiStreamRestart;
PVOID pfnAheadLib_midiStreamStop;
PVOID pfnAheadLib_mixerClose;
PVOID pfnAheadLib_mixerGetControlDetailsA;
PVOID pfnAheadLib_mixerGetControlDetailsW;
PVOID pfnAheadLib_mixerGetDevCapsA;
PVOID pfnAheadLib_mixerGetDevCapsW;
PVOID pfnAheadLib_mixerGetID;
PVOID pfnAheadLib_mixerGetLineControlsA;
PVOID pfnAheadLib_mixerGetLineControlsW;
PVOID pfnAheadLib_mixerGetLineInfoA;
PVOID pfnAheadLib_mixerGetLineInfoW;
PVOID pfnAheadLib_mixerGetNumDevs;
PVOID pfnAheadLib_mixerMessage;
PVOID pfnAheadLib_mixerOpen;
PVOID pfnAheadLib_mixerSetControlDetails;
PVOID pfnAheadLib_mmDrvInstall;
PVOID pfnAheadLib_mmGetCurrentTask;
PVOID pfnAheadLib_mmTaskBlock;
PVOID pfnAheadLib_mmTaskCreate;
PVOID pfnAheadLib_mmTaskSignal;
PVOID pfnAheadLib_mmTaskYield;
PVOID pfnAheadLib_mmioAdvance;
PVOID pfnAheadLib_mmioAscend;
PVOID pfnAheadLib_mmioClose;
PVOID pfnAheadLib_mmioCreateChunk;
PVOID pfnAheadLib_mmioDescend;
PVOID pfnAheadLib_mmioFlush;
PVOID pfnAheadLib_mmioGetInfo;
PVOID pfnAheadLib_mmioInstallIOProcA;
PVOID pfnAheadLib_mmioInstallIOProcW;
PVOID pfnAheadLib_mmioOpenA;
PVOID pfnAheadLib_mmioOpenW;
PVOID pfnAheadLib_mmioRead;
PVOID pfnAheadLib_mmioRenameA;
PVOID pfnAheadLib_mmioRenameW;
PVOID pfnAheadLib_mmioSeek;
PVOID pfnAheadLib_mmioSendMessage;
PVOID pfnAheadLib_mmioSetBuffer;
PVOID pfnAheadLib_mmioSetInfo;
PVOID pfnAheadLib_mmioStringToFOURCCA;
PVOID pfnAheadLib_mmioStringToFOURCCW;
PVOID pfnAheadLib_mmioWrite;
PVOID pfnAheadLib_mmsystemGetVersion;
PVOID pfnAheadLib_mod32Message;
PVOID pfnAheadLib_mxd32Message;
PVOID pfnAheadLib_sndPlaySoundA;
PVOID pfnAheadLib_sndPlaySoundW;
PVOID pfnAheadLib_tid32Message;
PVOID pfnAheadLib_timeBeginPeriod;
PVOID pfnAheadLib_timeEndPeriod;
PVOID pfnAheadLib_timeGetDevCaps;
PVOID pfnAheadLib_timeGetSystemTime;
PVOID pfnAheadLib_timeGetTime;
PVOID pfnAheadLib_timeKillEvent;
PVOID pfnAheadLib_timeSetEvent;
PVOID pfnAheadLib_waveInAddBuffer;
PVOID pfnAheadLib_waveInClose;
PVOID pfnAheadLib_waveInGetDevCapsA;
PVOID pfnAheadLib_waveInGetDevCapsW;
PVOID pfnAheadLib_waveInGetErrorTextA;
PVOID pfnAheadLib_waveInGetErrorTextW;
PVOID pfnAheadLib_waveInGetID;
PVOID pfnAheadLib_waveInGetNumDevs;
PVOID pfnAheadLib_waveInGetPosition;
PVOID pfnAheadLib_waveInMessage;
PVOID pfnAheadLib_waveInOpen;
PVOID pfnAheadLib_waveInPrepareHeader;
PVOID pfnAheadLib_waveInReset;
PVOID pfnAheadLib_waveInStart;
PVOID pfnAheadLib_waveInStop;
PVOID pfnAheadLib_waveInUnprepareHeader;
PVOID pfnAheadLib_waveOutBreakLoop;
PVOID pfnAheadLib_waveOutClose;
PVOID pfnAheadLib_waveOutGetDevCapsA;
PVOID pfnAheadLib_waveOutGetDevCapsW;
PVOID pfnAheadLib_waveOutGetErrorTextA;
PVOID pfnAheadLib_waveOutGetErrorTextW;
PVOID pfnAheadLib_waveOutGetID;
PVOID pfnAheadLib_waveOutGetNumDevs;
PVOID pfnAheadLib_waveOutGetPitch;
PVOID pfnAheadLib_waveOutGetPlaybackRate;
PVOID pfnAheadLib_waveOutGetPosition;
PVOID pfnAheadLib_waveOutGetVolume;
PVOID pfnAheadLib_waveOutMessage;
PVOID pfnAheadLib_waveOutOpen;
PVOID pfnAheadLib_waveOutPause;
PVOID pfnAheadLib_waveOutPrepareHeader;
PVOID pfnAheadLib_waveOutReset;
PVOID pfnAheadLib_waveOutRestart;
PVOID pfnAheadLib_waveOutSetPitch;
PVOID pfnAheadLib_waveOutSetPlaybackRate;
PVOID pfnAheadLib_waveOutSetVolume;
PVOID pfnAheadLib_waveOutUnprepareHeader;
PVOID pfnAheadLib_waveOutWrite;
PVOID pfnAheadLib_wid32Message;
PVOID pfnAheadLib_wod32Message;


static
HMODULE g_OldModule = NULL;

VOID WINAPI Free()
{
	if (g_OldModule)
	{
		FreeLibrary(g_OldModule);
	}
}


BOOL WINAPI Load()
{
	TCHAR tzPath[MAX_PATH];
	TCHAR tzTemp[MAX_PATH * 2];

	//
	// 这里是否从系统目录或当前目录加载原始DLL
	//
	//GetModuleFileName(NULL,tzPath,MAX_PATH); //获取本目录下的
	//PathRemoveFileSpec(tzPath);

	GetSystemDirectory(tzPath, MAX_PATH); //默认获取系统目录的

	lstrcat(tzPath, TEXT("\\winmm.dll"));

	g_OldModule = LoadLibrary(tzPath);
	if (g_OldModule == NULL)
	{
		wsprintf(tzTemp, TEXT("无法找到模块 %s,程序无法正常运行"), tzPath);
		MessageBox(NULL, tzTemp, TEXT("AheadLib"), MB_ICONSTOP);
	}

	return (g_OldModule != NULL);

}


FARPROC WINAPI GetAddress(PCSTR pszProcName)
{
	FARPROC fpAddress;
	CHAR szProcName[64];
	TCHAR tzTemp[MAX_PATH];

	fpAddress = GetProcAddress(g_OldModule, pszProcName);
	if (fpAddress == NULL)
	{
		if (HIWORD(pszProcName) == 0)
		{
			wsprintfA(szProcName, "#%d", pszProcName);
			pszProcName = szProcName;
		}

		wsprintf(tzTemp, TEXT("无法找到函数 %hs,程序无法正常运行"), pszProcName);
		MessageBox(NULL, tzTemp, TEXT("AheadLib"), MB_ICONSTOP);
		ExitProcess(-2);
	}
	return fpAddress;
}

BOOL WINAPI Init()
{
	pfnAheadLib_Unnamed2 = GetAddress(MAKEINTRESOURCEA(2));
	pfnAheadLib_mciExecute = GetAddress("mciExecute");
	pfnAheadLib_CloseDriver = GetAddress("CloseDriver");
	pfnAheadLib_DefDriverProc = GetAddress("DefDriverProc");
	pfnAheadLib_DriverCallback = GetAddress("DriverCallback");
	pfnAheadLib_DrvGetModuleHandle = GetAddress("DrvGetModuleHandle");
	pfnAheadLib_GetDriverModuleHandle = GetAddress("GetDriverModuleHandle");
	pfnAheadLib_NotifyCallbackData = GetAddress("NotifyCallbackData");
	pfnAheadLib_OpenDriver = GetAddress("OpenDriver");
	pfnAheadLib_PlaySound = GetAddress("PlaySound");
	pfnAheadLib_PlaySoundA = GetAddress("PlaySoundA");
	pfnAheadLib_PlaySoundW = GetAddress("PlaySoundW");
	pfnAheadLib_SendDriverMessage = GetAddress("SendDriverMessage");
	pfnAheadLib_WOW32DriverCallback = GetAddress("WOW32DriverCallback");
	pfnAheadLib_WOW32ResolveMultiMediaHandle = GetAddress("WOW32ResolveMultiMediaHandle");
	pfnAheadLib_WOWAppExit = GetAddress("WOWAppExit");
	pfnAheadLib_aux32Message = GetAddress("aux32Message");
	pfnAheadLib_auxGetDevCapsA = GetAddress("auxGetDevCapsA");
	pfnAheadLib_auxGetDevCapsW = GetAddress("auxGetDevCapsW");
	pfnAheadLib_auxGetNumDevs = GetAddress("auxGetNumDevs");
	pfnAheadLib_auxGetVolume = GetAddress("auxGetVolume");
	pfnAheadLib_auxOutMessage = GetAddress("auxOutMessage");
	pfnAheadLib_auxSetVolume = GetAddress("auxSetVolume");
	pfnAheadLib_joy32Message = GetAddress("joy32Message");
	pfnAheadLib_joyConfigChanged = GetAddress("joyConfigChanged");
	pfnAheadLib_joyGetDevCapsA = GetAddress("joyGetDevCapsA");
	pfnAheadLib_joyGetDevCapsW = GetAddress("joyGetDevCapsW");
	pfnAheadLib_joyGetNumDevs = GetAddress("joyGetNumDevs");
	pfnAheadLib_joyGetPos = GetAddress("joyGetPos");
	pfnAheadLib_joyGetPosEx = GetAddress("joyGetPosEx");
	pfnAheadLib_joyGetThreshold = GetAddress("joyGetThreshold");
	pfnAheadLib_joyReleaseCapture = GetAddress("joyReleaseCapture");
	pfnAheadLib_joySetCapture = GetAddress("joySetCapture");
	pfnAheadLib_joySetThreshold = GetAddress("joySetThreshold");
	pfnAheadLib_mci32Message = GetAddress("mci32Message");
	pfnAheadLib_mciDriverNotify = GetAddress("mciDriverNotify");
	pfnAheadLib_mciDriverYield = GetAddress("mciDriverYield");
	pfnAheadLib_mciFreeCommandResource = GetAddress("mciFreeCommandResource");
	pfnAheadLib_mciGetCreatorTask = GetAddress("mciGetCreatorTask");
	pfnAheadLib_mciGetDeviceIDA = GetAddress("mciGetDeviceIDA");
	pfnAheadLib_mciGetDeviceIDFromElementIDA = GetAddress("mciGetDeviceIDFromElementIDA");
	pfnAheadLib_mciGetDeviceIDFromElementIDW = GetAddress("mciGetDeviceIDFromElementIDW");
	pfnAheadLib_mciGetDeviceIDW = GetAddress("mciGetDeviceIDW");
	pfnAheadLib_mciGetDriverData = GetAddress("mciGetDriverData");
	pfnAheadLib_mciGetErrorStringA = GetAddress("mciGetErrorStringA");
	pfnAheadLib_mciGetErrorStringW = GetAddress("mciGetErrorStringW");
	pfnAheadLib_mciGetYieldProc = GetAddress("mciGetYieldProc");
	pfnAheadLib_mciLoadCommandResource = GetAddress("mciLoadCommandResource");
	pfnAheadLib_mciSendCommandA = GetAddress("mciSendCommandA");
	pfnAheadLib_mciSendCommandW = GetAddress("mciSendCommandW");
	pfnAheadLib_mciSendStringA = GetAddress("mciSendStringA");
	pfnAheadLib_mciSendStringW = GetAddress("mciSendStringW");
	pfnAheadLib_mciSetDriverData = GetAddress("mciSetDriverData");
	pfnAheadLib_mciSetYieldProc = GetAddress("mciSetYieldProc");
	pfnAheadLib_mid32Message = GetAddress("mid32Message");
	pfnAheadLib_midiConnect = GetAddress("midiConnect");
	pfnAheadLib_midiDisconnect = GetAddress("midiDisconnect");
	pfnAheadLib_midiInAddBuffer = GetAddress("midiInAddBuffer");
	pfnAheadLib_midiInClose = GetAddress("midiInClose");
	pfnAheadLib_midiInGetDevCapsA = GetAddress("midiInGetDevCapsA");
	pfnAheadLib_midiInGetDevCapsW = GetAddress("midiInGetDevCapsW");
	pfnAheadLib_midiInGetErrorTextA = GetAddress("midiInGetErrorTextA");
	pfnAheadLib_midiInGetErrorTextW = GetAddress("midiInGetErrorTextW");
	pfnAheadLib_midiInGetID = GetAddress("midiInGetID");
	pfnAheadLib_midiInGetNumDevs = GetAddress("midiInGetNumDevs");
	pfnAheadLib_midiInMessage = GetAddress("midiInMessage");
	pfnAheadLib_midiInOpen = GetAddress("midiInOpen");
	pfnAheadLib_midiInPrepareHeader = GetAddress("midiInPrepareHeader");
	pfnAheadLib_midiInReset = GetAddress("midiInReset");
	pfnAheadLib_midiInStart = GetAddress("midiInStart");
	pfnAheadLib_midiInStop = GetAddress("midiInStop");
	pfnAheadLib_midiInUnprepareHeader = GetAddress("midiInUnprepareHeader");
	pfnAheadLib_midiOutCacheDrumPatches = GetAddress("midiOutCacheDrumPatches");
	pfnAheadLib_midiOutCachePatches = GetAddress("midiOutCachePatches");
	pfnAheadLib_midiOutClose = GetAddress("midiOutClose");
	pfnAheadLib_midiOutGetDevCapsA = GetAddress("midiOutGetDevCapsA");
	pfnAheadLib_midiOutGetDevCapsW = GetAddress("midiOutGetDevCapsW");
	pfnAheadLib_midiOutGetErrorTextA = GetAddress("midiOutGetErrorTextA");
	pfnAheadLib_midiOutGetErrorTextW = GetAddress("midiOutGetErrorTextW");
	pfnAheadLib_midiOutGetID = GetAddress("midiOutGetID");
	pfnAheadLib_midiOutGetNumDevs = GetAddress("midiOutGetNumDevs");
	pfnAheadLib_midiOutGetVolume = GetAddress("midiOutGetVolume");
	pfnAheadLib_midiOutLongMsg = GetAddress("midiOutLongMsg");
	pfnAheadLib_midiOutMessage = GetAddress("midiOutMessage");
	pfnAheadLib_midiOutOpen = GetAddress("midiOutOpen");
	pfnAheadLib_midiOutPrepareHeader = GetAddress("midiOutPrepareHeader");
	pfnAheadLib_midiOutReset = GetAddress("midiOutReset");
	pfnAheadLib_midiOutSetVolume = GetAddress("midiOutSetVolume");
	pfnAheadLib_midiOutShortMsg = GetAddress("midiOutShortMsg");
	pfnAheadLib_midiOutUnprepareHeader = GetAddress("midiOutUnprepareHeader");
	pfnAheadLib_midiStreamClose = GetAddress("midiStreamClose");
	pfnAheadLib_midiStreamOpen = GetAddress("midiStreamOpen");
	pfnAheadLib_midiStreamOut = GetAddress("midiStreamOut");
	pfnAheadLib_midiStreamPause = GetAddress("midiStreamPause");
	pfnAheadLib_midiStreamPosition = GetAddress("midiStreamPosition");
	pfnAheadLib_midiStreamProperty = GetAddress("midiStreamProperty");
	pfnAheadLib_midiStreamRestart = GetAddress("midiStreamRestart");
	pfnAheadLib_midiStreamStop = GetAddress("midiStreamStop");
	pfnAheadLib_mixerClose = GetAddress("mixerClose");
	pfnAheadLib_mixerGetControlDetailsA = GetAddress("mixerGetControlDetailsA");
	pfnAheadLib_mixerGetControlDetailsW = GetAddress("mixerGetControlDetailsW");
	pfnAheadLib_mixerGetDevCapsA = GetAddress("mixerGetDevCapsA");
	pfnAheadLib_mixerGetDevCapsW = GetAddress("mixerGetDevCapsW");
	pfnAheadLib_mixerGetID = GetAddress("mixerGetID");
	pfnAheadLib_mixerGetLineControlsA = GetAddress("mixerGetLineControlsA");
	pfnAheadLib_mixerGetLineControlsW = GetAddress("mixerGetLineControlsW");
	pfnAheadLib_mixerGetLineInfoA = GetAddress("mixerGetLineInfoA");
	pfnAheadLib_mixerGetLineInfoW = GetAddress("mixerGetLineInfoW");
	pfnAheadLib_mixerGetNumDevs = GetAddress("mixerGetNumDevs");
	pfnAheadLib_mixerMessage = GetAddress("mixerMessage");
	pfnAheadLib_mixerOpen = GetAddress("mixerOpen");
	pfnAheadLib_mixerSetControlDetails = GetAddress("mixerSetControlDetails");
	pfnAheadLib_mmDrvInstall = GetAddress("mmDrvInstall");
	pfnAheadLib_mmGetCurrentTask = GetAddress("mmGetCurrentTask");
	pfnAheadLib_mmTaskBlock = GetAddress("mmTaskBlock");
	pfnAheadLib_mmTaskCreate = GetAddress("mmTaskCreate");
	pfnAheadLib_mmTaskSignal = GetAddress("mmTaskSignal");
	pfnAheadLib_mmTaskYield = GetAddress("mmTaskYield");
	pfnAheadLib_mmioAdvance = GetAddress("mmioAdvance");
	pfnAheadLib_mmioAscend = GetAddress("mmioAscend");
	pfnAheadLib_mmioClose = GetAddress("mmioClose");
	pfnAheadLib_mmioCreateChunk = GetAddress("mmioCreateChunk");
	pfnAheadLib_mmioDescend = GetAddress("mmioDescend");
	pfnAheadLib_mmioFlush = GetAddress("mmioFlush");
	pfnAheadLib_mmioGetInfo = GetAddress("mmioGetInfo");
	pfnAheadLib_mmioInstallIOProcA = GetAddress("mmioInstallIOProcA");
	pfnAheadLib_mmioInstallIOProcW = GetAddress("mmioInstallIOProcW");
	pfnAheadLib_mmioOpenA = GetAddress("mmioOpenA");
	pfnAheadLib_mmioOpenW = GetAddress("mmioOpenW");
	pfnAheadLib_mmioRead = GetAddress("mmioRead");
	pfnAheadLib_mmioRenameA = GetAddress("mmioRenameA");
	pfnAheadLib_mmioRenameW = GetAddress("mmioRenameW");
	pfnAheadLib_mmioSeek = GetAddress("mmioSeek");
	pfnAheadLib_mmioSendMessage = GetAddress("mmioSendMessage");
	pfnAheadLib_mmioSetBuffer = GetAddress("mmioSetBuffer");
	pfnAheadLib_mmioSetInfo = GetAddress("mmioSetInfo");
	pfnAheadLib_mmioStringToFOURCCA = GetAddress("mmioStringToFOURCCA");
	pfnAheadLib_mmioStringToFOURCCW = GetAddress("mmioStringToFOURCCW");
	pfnAheadLib_mmioWrite = GetAddress("mmioWrite");
	pfnAheadLib_mmsystemGetVersion = GetAddress("mmsystemGetVersion");
	pfnAheadLib_mod32Message = GetAddress("mod32Message");
	pfnAheadLib_mxd32Message = GetAddress("mxd32Message");
	pfnAheadLib_sndPlaySoundA = GetAddress("sndPlaySoundA");
	pfnAheadLib_sndPlaySoundW = GetAddress("sndPlaySoundW");
	pfnAheadLib_tid32Message = GetAddress("tid32Message");
	pfnAheadLib_timeBeginPeriod = GetAddress("timeBeginPeriod");
	pfnAheadLib_timeEndPeriod = GetAddress("timeEndPeriod");
	pfnAheadLib_timeGetDevCaps = GetAddress("timeGetDevCaps");
	pfnAheadLib_timeGetSystemTime = GetAddress("timeGetSystemTime");
	pfnAheadLib_timeGetTime = GetAddress("timeGetTime");
	pfnAheadLib_timeKillEvent = GetAddress("timeKillEvent");
	pfnAheadLib_timeSetEvent = GetAddress("timeSetEvent");
	pfnAheadLib_waveInAddBuffer = GetAddress("waveInAddBuffer");
	pfnAheadLib_waveInClose = GetAddress("waveInClose");
	pfnAheadLib_waveInGetDevCapsA = GetAddress("waveInGetDevCapsA");
	pfnAheadLib_waveInGetDevCapsW = GetAddress("waveInGetDevCapsW");
	pfnAheadLib_waveInGetErrorTextA = GetAddress("waveInGetErrorTextA");
	pfnAheadLib_waveInGetErrorTextW = GetAddress("waveInGetErrorTextW");
	pfnAheadLib_waveInGetID = GetAddress("waveInGetID");
	pfnAheadLib_waveInGetNumDevs = GetAddress("waveInGetNumDevs");
	pfnAheadLib_waveInGetPosition = GetAddress("waveInGetPosition");
	pfnAheadLib_waveInMessage = GetAddress("waveInMessage");
	pfnAheadLib_waveInOpen = GetAddress("waveInOpen");
	pfnAheadLib_waveInPrepareHeader = GetAddress("waveInPrepareHeader");
	pfnAheadLib_waveInReset = GetAddress("waveInReset");
	pfnAheadLib_waveInStart = GetAddress("waveInStart");
	pfnAheadLib_waveInStop = GetAddress("waveInStop");
	pfnAheadLib_waveInUnprepareHeader = GetAddress("waveInUnprepareHeader");
	pfnAheadLib_waveOutBreakLoop = GetAddress("waveOutBreakLoop");
	pfnAheadLib_waveOutClose = GetAddress("waveOutClose");
	pfnAheadLib_waveOutGetDevCapsA = GetAddress("waveOutGetDevCapsA");
	pfnAheadLib_waveOutGetDevCapsW = GetAddress("waveOutGetDevCapsW");
	pfnAheadLib_waveOutGetErrorTextA = GetAddress("waveOutGetErrorTextA");
	pfnAheadLib_waveOutGetErrorTextW = GetAddress("waveOutGetErrorTextW");
	pfnAheadLib_waveOutGetID = GetAddress("waveOutGetID");
	pfnAheadLib_waveOutGetNumDevs = GetAddress("waveOutGetNumDevs");
	pfnAheadLib_waveOutGetPitch = GetAddress("waveOutGetPitch");
	pfnAheadLib_waveOutGetPlaybackRate = GetAddress("waveOutGetPlaybackRate");
	pfnAheadLib_waveOutGetPosition = GetAddress("waveOutGetPosition");
	pfnAheadLib_waveOutGetVolume = GetAddress("waveOutGetVolume");
	pfnAheadLib_waveOutMessage = GetAddress("waveOutMessage");
	pfnAheadLib_waveOutOpen = GetAddress("waveOutOpen");
	pfnAheadLib_waveOutPause = GetAddress("waveOutPause");
	pfnAheadLib_waveOutPrepareHeader = GetAddress("waveOutPrepareHeader");
	pfnAheadLib_waveOutReset = GetAddress("waveOutReset");
	pfnAheadLib_waveOutRestart = GetAddress("waveOutRestart");
	pfnAheadLib_waveOutSetPitch = GetAddress("waveOutSetPitch");
	pfnAheadLib_waveOutSetPlaybackRate = GetAddress("waveOutSetPlaybackRate");
	pfnAheadLib_waveOutSetVolume = GetAddress("waveOutSetVolume");
	pfnAheadLib_waveOutUnprepareHeader = GetAddress("waveOutUnprepareHeader");
	pfnAheadLib_waveOutWrite = GetAddress("waveOutWrite");
	pfnAheadLib_wid32Message = GetAddress("wid32Message");
	pfnAheadLib_wod32Message = GetAddress("wod32Message");
	return TRUE;
}	

DWORD WINAPI ThreadProc(LPVOID lpThreadParameter)
{
	HANDLE hProcess;

	PVOID addr1 = reinterpret_cast<PVOID>(0x00401000);
	BYTE data1[] = { 0x90, 0x90, 0x90, 0x90 };

	//
	// 绕过VMP3.x 的内存保护
	//
	hProcess = OpenProcess(PROCESS_VM_OPERATION | PROCESS_VM_READ | PROCESS_VM_WRITE, FALSE, GetCurrentProcessId());
	if (hProcess)
	{
		WriteProcessMemory(hProcess, addr1, data1, sizeof(data1), NULL);

		CloseHandle(hProcess);
	}

	return 0;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_Unnamed2(void)
{
	__asm jmp pfnAheadLib_Unnamed2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciExecute(void)
{
	__asm jmp pfnAheadLib_mciExecute;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_CloseDriver(void)
{
	__asm jmp pfnAheadLib_CloseDriver;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DefDriverProc(void)
{
	__asm jmp pfnAheadLib_DefDriverProc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DriverCallback(void)
{
	__asm jmp pfnAheadLib_DriverCallback;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_DrvGetModuleHandle(void)
{
	__asm jmp pfnAheadLib_DrvGetModuleHandle;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GetDriverModuleHandle(void)
{
	__asm jmp pfnAheadLib_GetDriverModuleHandle;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_NotifyCallbackData(void)
{
	__asm jmp pfnAheadLib_NotifyCallbackData;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_OpenDriver(void)
{
	__asm jmp pfnAheadLib_OpenDriver;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PlaySound(void)
{
	__asm jmp pfnAheadLib_PlaySound;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PlaySoundA(void)
{
	__asm jmp pfnAheadLib_PlaySoundA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_PlaySoundW(void)
{
	__asm jmp pfnAheadLib_PlaySoundW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_SendDriverMessage(void)
{
	__asm jmp pfnAheadLib_SendDriverMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_WOW32DriverCallback(void)
{
	__asm jmp pfnAheadLib_WOW32DriverCallback;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_WOW32ResolveMultiMediaHandle(void)
{
	__asm jmp pfnAheadLib_WOW32ResolveMultiMediaHandle;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_WOWAppExit(void)
{
	__asm jmp pfnAheadLib_WOWAppExit;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_aux32Message(void)
{
	__asm jmp pfnAheadLib_aux32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_auxGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_auxGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_auxGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_auxGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_auxGetNumDevs(void)
{
	__asm jmp pfnAheadLib_auxGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_auxGetVolume(void)
{
	__asm jmp pfnAheadLib_auxGetVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_auxOutMessage(void)
{
	__asm jmp pfnAheadLib_auxOutMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_auxSetVolume(void)
{
	__asm jmp pfnAheadLib_auxSetVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joy32Message(void)
{
	__asm jmp pfnAheadLib_joy32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyConfigChanged(void)
{
	__asm jmp pfnAheadLib_joyConfigChanged;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_joyGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_joyGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyGetNumDevs(void)
{
	__asm jmp pfnAheadLib_joyGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyGetPos(void)
{
	__asm jmp pfnAheadLib_joyGetPos;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyGetPosEx(void)
{
	__asm jmp pfnAheadLib_joyGetPosEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyGetThreshold(void)
{
	__asm jmp pfnAheadLib_joyGetThreshold;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joyReleaseCapture(void)
{
	__asm jmp pfnAheadLib_joyReleaseCapture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joySetCapture(void)
{
	__asm jmp pfnAheadLib_joySetCapture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_joySetThreshold(void)
{
	__asm jmp pfnAheadLib_joySetThreshold;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mci32Message(void)
{
	__asm jmp pfnAheadLib_mci32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciDriverNotify(void)
{
	__asm jmp pfnAheadLib_mciDriverNotify;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciDriverYield(void)
{
	__asm jmp pfnAheadLib_mciDriverYield;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciFreeCommandResource(void)
{
	__asm jmp pfnAheadLib_mciFreeCommandResource;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetCreatorTask(void)
{
	__asm jmp pfnAheadLib_mciGetCreatorTask;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetDeviceIDA(void)
{
	__asm jmp pfnAheadLib_mciGetDeviceIDA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetDeviceIDFromElementIDA(void)
{
	__asm jmp pfnAheadLib_mciGetDeviceIDFromElementIDA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetDeviceIDFromElementIDW(void)
{
	__asm jmp pfnAheadLib_mciGetDeviceIDFromElementIDW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetDeviceIDW(void)
{
	__asm jmp pfnAheadLib_mciGetDeviceIDW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetDriverData(void)
{
	__asm jmp pfnAheadLib_mciGetDriverData;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetErrorStringA(void)
{
	__asm jmp pfnAheadLib_mciGetErrorStringA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetErrorStringW(void)
{
	__asm jmp pfnAheadLib_mciGetErrorStringW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciGetYieldProc(void)
{
	__asm jmp pfnAheadLib_mciGetYieldProc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciLoadCommandResource(void)
{
	__asm jmp pfnAheadLib_mciLoadCommandResource;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciSendCommandA(void)
{
	__asm jmp pfnAheadLib_mciSendCommandA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciSendCommandW(void)
{
	__asm jmp pfnAheadLib_mciSendCommandW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciSendStringA(void)
{
	__asm jmp pfnAheadLib_mciSendStringA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciSendStringW(void)
{
	__asm jmp pfnAheadLib_mciSendStringW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciSetDriverData(void)
{
	__asm jmp pfnAheadLib_mciSetDriverData;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mciSetYieldProc(void)
{
	__asm jmp pfnAheadLib_mciSetYieldProc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mid32Message(void)
{
	__asm jmp pfnAheadLib_mid32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiConnect(void)
{
	__asm jmp pfnAheadLib_midiConnect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiDisconnect(void)
{
	__asm jmp pfnAheadLib_midiDisconnect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInAddBuffer(void)
{
	__asm jmp pfnAheadLib_midiInAddBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInClose(void)
{
	__asm jmp pfnAheadLib_midiInClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_midiInGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_midiInGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInGetErrorTextA(void)
{
	__asm jmp pfnAheadLib_midiInGetErrorTextA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInGetErrorTextW(void)
{
	__asm jmp pfnAheadLib_midiInGetErrorTextW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInGetID(void)
{
	__asm jmp pfnAheadLib_midiInGetID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInGetNumDevs(void)
{
	__asm jmp pfnAheadLib_midiInGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInMessage(void)
{
	__asm jmp pfnAheadLib_midiInMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInOpen(void)
{
	__asm jmp pfnAheadLib_midiInOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInPrepareHeader(void)
{
	__asm jmp pfnAheadLib_midiInPrepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInReset(void)
{
	__asm jmp pfnAheadLib_midiInReset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInStart(void)
{
	__asm jmp pfnAheadLib_midiInStart;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInStop(void)
{
	__asm jmp pfnAheadLib_midiInStop;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiInUnprepareHeader(void)
{
	__asm jmp pfnAheadLib_midiInUnprepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutCacheDrumPatches(void)
{
	__asm jmp pfnAheadLib_midiOutCacheDrumPatches;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutCachePatches(void)
{
	__asm jmp pfnAheadLib_midiOutCachePatches;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutClose(void)
{
	__asm jmp pfnAheadLib_midiOutClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_midiOutGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_midiOutGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetErrorTextA(void)
{
	__asm jmp pfnAheadLib_midiOutGetErrorTextA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetErrorTextW(void)
{
	__asm jmp pfnAheadLib_midiOutGetErrorTextW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetID(void)
{
	__asm jmp pfnAheadLib_midiOutGetID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetNumDevs(void)
{
	__asm jmp pfnAheadLib_midiOutGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutGetVolume(void)
{
	__asm jmp pfnAheadLib_midiOutGetVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutLongMsg(void)
{
	__asm jmp pfnAheadLib_midiOutLongMsg;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutMessage(void)
{
	__asm jmp pfnAheadLib_midiOutMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutOpen(void)
{
	__asm jmp pfnAheadLib_midiOutOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutPrepareHeader(void)
{
	__asm jmp pfnAheadLib_midiOutPrepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutReset(void)
{
	__asm jmp pfnAheadLib_midiOutReset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutSetVolume(void)
{
	__asm jmp pfnAheadLib_midiOutSetVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutShortMsg(void)
{
	__asm jmp pfnAheadLib_midiOutShortMsg;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiOutUnprepareHeader(void)
{
	__asm jmp pfnAheadLib_midiOutUnprepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamClose(void)
{
	__asm jmp pfnAheadLib_midiStreamClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamOpen(void)
{
	__asm jmp pfnAheadLib_midiStreamOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamOut(void)
{
	__asm jmp pfnAheadLib_midiStreamOut;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamPause(void)
{
	__asm jmp pfnAheadLib_midiStreamPause;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamPosition(void)
{
	__asm jmp pfnAheadLib_midiStreamPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamProperty(void)
{
	__asm jmp pfnAheadLib_midiStreamProperty;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamRestart(void)
{
	__asm jmp pfnAheadLib_midiStreamRestart;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_midiStreamStop(void)
{
	__asm jmp pfnAheadLib_midiStreamStop;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerClose(void)
{
	__asm jmp pfnAheadLib_mixerClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetControlDetailsA(void)
{
	__asm jmp pfnAheadLib_mixerGetControlDetailsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetControlDetailsW(void)
{
	__asm jmp pfnAheadLib_mixerGetControlDetailsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_mixerGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_mixerGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetID(void)
{
	__asm jmp pfnAheadLib_mixerGetID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetLineControlsA(void)
{
	__asm jmp pfnAheadLib_mixerGetLineControlsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetLineControlsW(void)
{
	__asm jmp pfnAheadLib_mixerGetLineControlsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetLineInfoA(void)
{
	__asm jmp pfnAheadLib_mixerGetLineInfoA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetLineInfoW(void)
{
	__asm jmp pfnAheadLib_mixerGetLineInfoW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerGetNumDevs(void)
{
	__asm jmp pfnAheadLib_mixerGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerMessage(void)
{
	__asm jmp pfnAheadLib_mixerMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerOpen(void)
{
	__asm jmp pfnAheadLib_mixerOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mixerSetControlDetails(void)
{
	__asm jmp pfnAheadLib_mixerSetControlDetails;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmDrvInstall(void)
{
	__asm jmp pfnAheadLib_mmDrvInstall;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmGetCurrentTask(void)
{
	__asm jmp pfnAheadLib_mmGetCurrentTask;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmTaskBlock(void)
{
	__asm jmp pfnAheadLib_mmTaskBlock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmTaskCreate(void)
{
	__asm jmp pfnAheadLib_mmTaskCreate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmTaskSignal(void)
{
	__asm jmp pfnAheadLib_mmTaskSignal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmTaskYield(void)
{
	__asm jmp pfnAheadLib_mmTaskYield;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioAdvance(void)
{
	__asm jmp pfnAheadLib_mmioAdvance;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioAscend(void)
{
	__asm jmp pfnAheadLib_mmioAscend;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioClose(void)
{
	__asm jmp pfnAheadLib_mmioClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioCreateChunk(void)
{
	__asm jmp pfnAheadLib_mmioCreateChunk;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioDescend(void)
{
	__asm jmp pfnAheadLib_mmioDescend;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioFlush(void)
{
	__asm jmp pfnAheadLib_mmioFlush;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioGetInfo(void)
{
	__asm jmp pfnAheadLib_mmioGetInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioInstallIOProcA(void)
{
	__asm jmp pfnAheadLib_mmioInstallIOProcA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioInstallIOProcW(void)
{
	__asm jmp pfnAheadLib_mmioInstallIOProcW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioOpenA(void)
{
	__asm jmp pfnAheadLib_mmioOpenA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioOpenW(void)
{
	__asm jmp pfnAheadLib_mmioOpenW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioRead(void)
{
	__asm jmp pfnAheadLib_mmioRead;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioRenameA(void)
{
	__asm jmp pfnAheadLib_mmioRenameA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioRenameW(void)
{
	__asm jmp pfnAheadLib_mmioRenameW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioSeek(void)
{
	__asm jmp pfnAheadLib_mmioSeek;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioSendMessage(void)
{
	__asm jmp pfnAheadLib_mmioSendMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioSetBuffer(void)
{
	__asm jmp pfnAheadLib_mmioSetBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioSetInfo(void)
{
	__asm jmp pfnAheadLib_mmioSetInfo;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioStringToFOURCCA(void)
{
	__asm jmp pfnAheadLib_mmioStringToFOURCCA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioStringToFOURCCW(void)
{
	__asm jmp pfnAheadLib_mmioStringToFOURCCW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmioWrite(void)
{
	__asm jmp pfnAheadLib_mmioWrite;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mmsystemGetVersion(void)
{
	__asm jmp pfnAheadLib_mmsystemGetVersion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mod32Message(void)
{
	__asm jmp pfnAheadLib_mod32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_mxd32Message(void)
{
	__asm jmp pfnAheadLib_mxd32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_sndPlaySoundA(void)
{
	__asm jmp pfnAheadLib_sndPlaySoundA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_sndPlaySoundW(void)
{
	__asm jmp pfnAheadLib_sndPlaySoundW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_tid32Message(void)
{
	__asm jmp pfnAheadLib_tid32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeBeginPeriod(void)
{
	__asm jmp pfnAheadLib_timeBeginPeriod;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeEndPeriod(void)
{
	__asm jmp pfnAheadLib_timeEndPeriod;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeGetDevCaps(void)
{
	__asm jmp pfnAheadLib_timeGetDevCaps;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeGetSystemTime(void)
{
	__asm jmp pfnAheadLib_timeGetSystemTime;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeGetTime(void)
{
	__asm jmp pfnAheadLib_timeGetTime;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeKillEvent(void)
{
	__asm jmp pfnAheadLib_timeKillEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_timeSetEvent(void)
{
	__asm jmp pfnAheadLib_timeSetEvent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInAddBuffer(void)
{
	__asm jmp pfnAheadLib_waveInAddBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInClose(void)
{
	__asm jmp pfnAheadLib_waveInClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_waveInGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_waveInGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetErrorTextA(void)
{
	__asm jmp pfnAheadLib_waveInGetErrorTextA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetErrorTextW(void)
{
	__asm jmp pfnAheadLib_waveInGetErrorTextW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetID(void)
{
	__asm jmp pfnAheadLib_waveInGetID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetNumDevs(void)
{
	__asm jmp pfnAheadLib_waveInGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInGetPosition(void)
{
	__asm jmp pfnAheadLib_waveInGetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInMessage(void)
{
	__asm jmp pfnAheadLib_waveInMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInOpen(void)
{
	__asm jmp pfnAheadLib_waveInOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInPrepareHeader(void)
{
	__asm jmp pfnAheadLib_waveInPrepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInReset(void)
{
	__asm jmp pfnAheadLib_waveInReset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInStart(void)
{
	__asm jmp pfnAheadLib_waveInStart;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInStop(void)
{
	__asm jmp pfnAheadLib_waveInStop;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveInUnprepareHeader(void)
{
	__asm jmp pfnAheadLib_waveInUnprepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutBreakLoop(void)
{
	__asm jmp pfnAheadLib_waveOutBreakLoop;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutClose(void)
{
	__asm jmp pfnAheadLib_waveOutClose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetDevCapsA(void)
{
	__asm jmp pfnAheadLib_waveOutGetDevCapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetDevCapsW(void)
{
	__asm jmp pfnAheadLib_waveOutGetDevCapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetErrorTextA(void)
{
	__asm jmp pfnAheadLib_waveOutGetErrorTextA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetErrorTextW(void)
{
	__asm jmp pfnAheadLib_waveOutGetErrorTextW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetID(void)
{
	__asm jmp pfnAheadLib_waveOutGetID;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetNumDevs(void)
{
	__asm jmp pfnAheadLib_waveOutGetNumDevs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetPitch(void)
{
	__asm jmp pfnAheadLib_waveOutGetPitch;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetPlaybackRate(void)
{
	__asm jmp pfnAheadLib_waveOutGetPlaybackRate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetPosition(void)
{
	__asm jmp pfnAheadLib_waveOutGetPosition;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutGetVolume(void)
{
	__asm jmp pfnAheadLib_waveOutGetVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutMessage(void)
{
	__asm jmp pfnAheadLib_waveOutMessage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutOpen(void)
{
	__asm jmp pfnAheadLib_waveOutOpen;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutPause(void)
{
	__asm jmp pfnAheadLib_waveOutPause;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutPrepareHeader(void)
{
	__asm jmp pfnAheadLib_waveOutPrepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutReset(void)
{
	__asm jmp pfnAheadLib_waveOutReset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutRestart(void)
{
	__asm jmp pfnAheadLib_waveOutRestart;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutSetPitch(void)
{
	__asm jmp pfnAheadLib_waveOutSetPitch;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutSetPlaybackRate(void)
{
	__asm jmp pfnAheadLib_waveOutSetPlaybackRate;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutSetVolume(void)
{
	__asm jmp pfnAheadLib_waveOutSetVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutUnprepareHeader(void)
{
	__asm jmp pfnAheadLib_waveOutUnprepareHeader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_waveOutWrite(void)
{
	__asm jmp pfnAheadLib_waveOutWrite;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wid32Message(void)
{
	__asm jmp pfnAheadLib_wid32Message;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wod32Message(void)
{
	__asm jmp pfnAheadLib_wod32Message;
}

