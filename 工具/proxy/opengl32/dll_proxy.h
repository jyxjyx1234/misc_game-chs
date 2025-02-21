
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:GlmfBeginGlsBlock=_AheadLib_GlmfBeginGlsBlock,@1")
#pragma comment(linker, "/EXPORT:GlmfCloseMetaFile=_AheadLib_GlmfCloseMetaFile,@2")
#pragma comment(linker, "/EXPORT:GlmfEndGlsBlock=_AheadLib_GlmfEndGlsBlock,@3")
#pragma comment(linker, "/EXPORT:GlmfEndPlayback=_AheadLib_GlmfEndPlayback,@4")
#pragma comment(linker, "/EXPORT:GlmfInitPlayback=_AheadLib_GlmfInitPlayback,@5")
#pragma comment(linker, "/EXPORT:GlmfPlayGlsRecord=_AheadLib_GlmfPlayGlsRecord,@6")
#pragma comment(linker, "/EXPORT:glAccum=_AheadLib_glAccum,@7")
#pragma comment(linker, "/EXPORT:glAlphaFunc=_AheadLib_glAlphaFunc,@8")
#pragma comment(linker, "/EXPORT:glAreTexturesResident=_AheadLib_glAreTexturesResident,@9")
#pragma comment(linker, "/EXPORT:glArrayElement=_AheadLib_glArrayElement,@10")
#pragma comment(linker, "/EXPORT:glBegin=_AheadLib_glBegin,@11")
#pragma comment(linker, "/EXPORT:glBindTexture=_AheadLib_glBindTexture,@12")
#pragma comment(linker, "/EXPORT:glBitmap=_AheadLib_glBitmap,@13")
#pragma comment(linker, "/EXPORT:glBlendFunc=_AheadLib_glBlendFunc,@14")
#pragma comment(linker, "/EXPORT:glCallList=_AheadLib_glCallList,@15")
#pragma comment(linker, "/EXPORT:glCallLists=_AheadLib_glCallLists,@16")
#pragma comment(linker, "/EXPORT:glClear=_AheadLib_glClear,@17")
#pragma comment(linker, "/EXPORT:glClearAccum=_AheadLib_glClearAccum,@18")
#pragma comment(linker, "/EXPORT:glClearColor=_AheadLib_glClearColor,@19")
#pragma comment(linker, "/EXPORT:glClearDepth=_AheadLib_glClearDepth,@20")
#pragma comment(linker, "/EXPORT:glClearIndex=_AheadLib_glClearIndex,@21")
#pragma comment(linker, "/EXPORT:glClearStencil=_AheadLib_glClearStencil,@22")
#pragma comment(linker, "/EXPORT:glClipPlane=_AheadLib_glClipPlane,@23")
#pragma comment(linker, "/EXPORT:glColor3b=_AheadLib_glColor3b,@24")
#pragma comment(linker, "/EXPORT:glColor3bv=_AheadLib_glColor3bv,@25")
#pragma comment(linker, "/EXPORT:glColor3d=_AheadLib_glColor3d,@26")
#pragma comment(linker, "/EXPORT:glColor3dv=_AheadLib_glColor3dv,@27")
#pragma comment(linker, "/EXPORT:glColor3f=_AheadLib_glColor3f,@28")
#pragma comment(linker, "/EXPORT:glColor3fv=_AheadLib_glColor3fv,@29")
#pragma comment(linker, "/EXPORT:glColor3i=_AheadLib_glColor3i,@30")
#pragma comment(linker, "/EXPORT:glColor3iv=_AheadLib_glColor3iv,@31")
#pragma comment(linker, "/EXPORT:glColor3s=_AheadLib_glColor3s,@32")
#pragma comment(linker, "/EXPORT:glColor3sv=_AheadLib_glColor3sv,@33")
#pragma comment(linker, "/EXPORT:glColor3ub=_AheadLib_glColor3ub,@34")
#pragma comment(linker, "/EXPORT:glColor3ubv=_AheadLib_glColor3ubv,@35")
#pragma comment(linker, "/EXPORT:glColor3ui=_AheadLib_glColor3ui,@36")
#pragma comment(linker, "/EXPORT:glColor3uiv=_AheadLib_glColor3uiv,@37")
#pragma comment(linker, "/EXPORT:glColor3us=_AheadLib_glColor3us,@38")
#pragma comment(linker, "/EXPORT:glColor3usv=_AheadLib_glColor3usv,@39")
#pragma comment(linker, "/EXPORT:glColor4b=_AheadLib_glColor4b,@40")
#pragma comment(linker, "/EXPORT:glColor4bv=_AheadLib_glColor4bv,@41")
#pragma comment(linker, "/EXPORT:glColor4d=_AheadLib_glColor4d,@42")
#pragma comment(linker, "/EXPORT:glColor4dv=_AheadLib_glColor4dv,@43")
#pragma comment(linker, "/EXPORT:glColor4f=_AheadLib_glColor4f,@44")
#pragma comment(linker, "/EXPORT:glColor4fv=_AheadLib_glColor4fv,@45")
#pragma comment(linker, "/EXPORT:glColor4i=_AheadLib_glColor4i,@46")
#pragma comment(linker, "/EXPORT:glColor4iv=_AheadLib_glColor4iv,@47")
#pragma comment(linker, "/EXPORT:glColor4s=_AheadLib_glColor4s,@48")
#pragma comment(linker, "/EXPORT:glColor4sv=_AheadLib_glColor4sv,@49")
#pragma comment(linker, "/EXPORT:glColor4ub=_AheadLib_glColor4ub,@50")
#pragma comment(linker, "/EXPORT:glColor4ubv=_AheadLib_glColor4ubv,@51")
#pragma comment(linker, "/EXPORT:glColor4ui=_AheadLib_glColor4ui,@52")
#pragma comment(linker, "/EXPORT:glColor4uiv=_AheadLib_glColor4uiv,@53")
#pragma comment(linker, "/EXPORT:glColor4us=_AheadLib_glColor4us,@54")
#pragma comment(linker, "/EXPORT:glColor4usv=_AheadLib_glColor4usv,@55")
#pragma comment(linker, "/EXPORT:glColorMask=_AheadLib_glColorMask,@56")
#pragma comment(linker, "/EXPORT:glColorMaterial=_AheadLib_glColorMaterial,@57")
#pragma comment(linker, "/EXPORT:glColorPointer=_AheadLib_glColorPointer,@58")
#pragma comment(linker, "/EXPORT:glCopyPixels=_AheadLib_glCopyPixels,@59")
#pragma comment(linker, "/EXPORT:glCopyTexImage1D=_AheadLib_glCopyTexImage1D,@60")
#pragma comment(linker, "/EXPORT:glCopyTexImage2D=_AheadLib_glCopyTexImage2D,@61")
#pragma comment(linker, "/EXPORT:glCopyTexSubImage1D=_AheadLib_glCopyTexSubImage1D,@62")
#pragma comment(linker, "/EXPORT:glCopyTexSubImage2D=_AheadLib_glCopyTexSubImage2D,@63")
#pragma comment(linker, "/EXPORT:glCullFace=_AheadLib_glCullFace,@64")
#pragma comment(linker, "/EXPORT:glDebugEntry=_AheadLib_glDebugEntry,@65")
#pragma comment(linker, "/EXPORT:glDeleteLists=_AheadLib_glDeleteLists,@66")
#pragma comment(linker, "/EXPORT:glDeleteTextures=_AheadLib_glDeleteTextures,@67")
#pragma comment(linker, "/EXPORT:glDepthFunc=_AheadLib_glDepthFunc,@68")
#pragma comment(linker, "/EXPORT:glDepthMask=_AheadLib_glDepthMask,@69")
#pragma comment(linker, "/EXPORT:glDepthRange=_AheadLib_glDepthRange,@70")
#pragma comment(linker, "/EXPORT:glDisable=_AheadLib_glDisable,@71")
#pragma comment(linker, "/EXPORT:glDisableClientState=_AheadLib_glDisableClientState,@72")
#pragma comment(linker, "/EXPORT:glDrawArrays=_AheadLib_glDrawArrays,@73")
#pragma comment(linker, "/EXPORT:glDrawBuffer=_AheadLib_glDrawBuffer,@74")
#pragma comment(linker, "/EXPORT:glDrawElements=_AheadLib_glDrawElements,@75")
#pragma comment(linker, "/EXPORT:glDrawPixels=_AheadLib_glDrawPixels,@76")
#pragma comment(linker, "/EXPORT:glEdgeFlag=_AheadLib_glEdgeFlag,@77")
#pragma comment(linker, "/EXPORT:glEdgeFlagPointer=_AheadLib_glEdgeFlagPointer,@78")
#pragma comment(linker, "/EXPORT:glEdgeFlagv=_AheadLib_glEdgeFlagv,@79")
#pragma comment(linker, "/EXPORT:glEnable=_AheadLib_glEnable,@80")
#pragma comment(linker, "/EXPORT:glEnableClientState=_AheadLib_glEnableClientState,@81")
#pragma comment(linker, "/EXPORT:glEnd=_AheadLib_glEnd,@82")
#pragma comment(linker, "/EXPORT:glEndList=_AheadLib_glEndList,@83")
#pragma comment(linker, "/EXPORT:glEvalCoord1d=_AheadLib_glEvalCoord1d,@84")
#pragma comment(linker, "/EXPORT:glEvalCoord1dv=_AheadLib_glEvalCoord1dv,@85")
#pragma comment(linker, "/EXPORT:glEvalCoord1f=_AheadLib_glEvalCoord1f,@86")
#pragma comment(linker, "/EXPORT:glEvalCoord1fv=_AheadLib_glEvalCoord1fv,@87")
#pragma comment(linker, "/EXPORT:glEvalCoord2d=_AheadLib_glEvalCoord2d,@88")
#pragma comment(linker, "/EXPORT:glEvalCoord2dv=_AheadLib_glEvalCoord2dv,@89")
#pragma comment(linker, "/EXPORT:glEvalCoord2f=_AheadLib_glEvalCoord2f,@90")
#pragma comment(linker, "/EXPORT:glEvalCoord2fv=_AheadLib_glEvalCoord2fv,@91")
#pragma comment(linker, "/EXPORT:glEvalMesh1=_AheadLib_glEvalMesh1,@92")
#pragma comment(linker, "/EXPORT:glEvalMesh2=_AheadLib_glEvalMesh2,@93")
#pragma comment(linker, "/EXPORT:glEvalPoint1=_AheadLib_glEvalPoint1,@94")
#pragma comment(linker, "/EXPORT:glEvalPoint2=_AheadLib_glEvalPoint2,@95")
#pragma comment(linker, "/EXPORT:glFeedbackBuffer=_AheadLib_glFeedbackBuffer,@96")
#pragma comment(linker, "/EXPORT:glFinish=_AheadLib_glFinish,@97")
#pragma comment(linker, "/EXPORT:glFlush=_AheadLib_glFlush,@98")
#pragma comment(linker, "/EXPORT:glFogf=_AheadLib_glFogf,@99")
#pragma comment(linker, "/EXPORT:glFogfv=_AheadLib_glFogfv,@100")
#pragma comment(linker, "/EXPORT:glFogi=_AheadLib_glFogi,@101")
#pragma comment(linker, "/EXPORT:glFogiv=_AheadLib_glFogiv,@102")
#pragma comment(linker, "/EXPORT:glFrontFace=_AheadLib_glFrontFace,@103")
#pragma comment(linker, "/EXPORT:glFrustum=_AheadLib_glFrustum,@104")
#pragma comment(linker, "/EXPORT:glGenLists=_AheadLib_glGenLists,@105")
#pragma comment(linker, "/EXPORT:glGenTextures=_AheadLib_glGenTextures,@106")
#pragma comment(linker, "/EXPORT:glGetBooleanv=_AheadLib_glGetBooleanv,@107")
#pragma comment(linker, "/EXPORT:glGetClipPlane=_AheadLib_glGetClipPlane,@108")
#pragma comment(linker, "/EXPORT:glGetDoublev=_AheadLib_glGetDoublev,@109")
#pragma comment(linker, "/EXPORT:glGetError=_AheadLib_glGetError,@110")
#pragma comment(linker, "/EXPORT:glGetFloatv=_AheadLib_glGetFloatv,@111")
#pragma comment(linker, "/EXPORT:glGetIntegerv=_AheadLib_glGetIntegerv,@112")
#pragma comment(linker, "/EXPORT:glGetLightfv=_AheadLib_glGetLightfv,@113")
#pragma comment(linker, "/EXPORT:glGetLightiv=_AheadLib_glGetLightiv,@114")
#pragma comment(linker, "/EXPORT:glGetMapdv=_AheadLib_glGetMapdv,@115")
#pragma comment(linker, "/EXPORT:glGetMapfv=_AheadLib_glGetMapfv,@116")
#pragma comment(linker, "/EXPORT:glGetMapiv=_AheadLib_glGetMapiv,@117")
#pragma comment(linker, "/EXPORT:glGetMaterialfv=_AheadLib_glGetMaterialfv,@118")
#pragma comment(linker, "/EXPORT:glGetMaterialiv=_AheadLib_glGetMaterialiv,@119")
#pragma comment(linker, "/EXPORT:glGetPixelMapfv=_AheadLib_glGetPixelMapfv,@120")
#pragma comment(linker, "/EXPORT:glGetPixelMapuiv=_AheadLib_glGetPixelMapuiv,@121")
#pragma comment(linker, "/EXPORT:glGetPixelMapusv=_AheadLib_glGetPixelMapusv,@122")
#pragma comment(linker, "/EXPORT:glGetPointerv=_AheadLib_glGetPointerv,@123")
#pragma comment(linker, "/EXPORT:glGetPolygonStipple=_AheadLib_glGetPolygonStipple,@124")
#pragma comment(linker, "/EXPORT:glGetString=_AheadLib_glGetString,@125")
#pragma comment(linker, "/EXPORT:glGetTexEnvfv=_AheadLib_glGetTexEnvfv,@126")
#pragma comment(linker, "/EXPORT:glGetTexEnviv=_AheadLib_glGetTexEnviv,@127")
#pragma comment(linker, "/EXPORT:glGetTexGendv=_AheadLib_glGetTexGendv,@128")
#pragma comment(linker, "/EXPORT:glGetTexGenfv=_AheadLib_glGetTexGenfv,@129")
#pragma comment(linker, "/EXPORT:glGetTexGeniv=_AheadLib_glGetTexGeniv,@130")
#pragma comment(linker, "/EXPORT:glGetTexImage=_AheadLib_glGetTexImage,@131")
#pragma comment(linker, "/EXPORT:glGetTexLevelParameterfv=_AheadLib_glGetTexLevelParameterfv,@132")
#pragma comment(linker, "/EXPORT:glGetTexLevelParameteriv=_AheadLib_glGetTexLevelParameteriv,@133")
#pragma comment(linker, "/EXPORT:glGetTexParameterfv=_AheadLib_glGetTexParameterfv,@134")
#pragma comment(linker, "/EXPORT:glGetTexParameteriv=_AheadLib_glGetTexParameteriv,@135")
#pragma comment(linker, "/EXPORT:glHint=_AheadLib_glHint,@136")
#pragma comment(linker, "/EXPORT:glIndexMask=_AheadLib_glIndexMask,@137")
#pragma comment(linker, "/EXPORT:glIndexPointer=_AheadLib_glIndexPointer,@138")
#pragma comment(linker, "/EXPORT:glIndexd=_AheadLib_glIndexd,@139")
#pragma comment(linker, "/EXPORT:glIndexdv=_AheadLib_glIndexdv,@140")
#pragma comment(linker, "/EXPORT:glIndexf=_AheadLib_glIndexf,@141")
#pragma comment(linker, "/EXPORT:glIndexfv=_AheadLib_glIndexfv,@142")
#pragma comment(linker, "/EXPORT:glIndexi=_AheadLib_glIndexi,@143")
#pragma comment(linker, "/EXPORT:glIndexiv=_AheadLib_glIndexiv,@144")
#pragma comment(linker, "/EXPORT:glIndexs=_AheadLib_glIndexs,@145")
#pragma comment(linker, "/EXPORT:glIndexsv=_AheadLib_glIndexsv,@146")
#pragma comment(linker, "/EXPORT:glIndexub=_AheadLib_glIndexub,@147")
#pragma comment(linker, "/EXPORT:glIndexubv=_AheadLib_glIndexubv,@148")
#pragma comment(linker, "/EXPORT:glInitNames=_AheadLib_glInitNames,@149")
#pragma comment(linker, "/EXPORT:glInterleavedArrays=_AheadLib_glInterleavedArrays,@150")
#pragma comment(linker, "/EXPORT:glIsEnabled=_AheadLib_glIsEnabled,@151")
#pragma comment(linker, "/EXPORT:glIsList=_AheadLib_glIsList,@152")
#pragma comment(linker, "/EXPORT:glIsTexture=_AheadLib_glIsTexture,@153")
#pragma comment(linker, "/EXPORT:glLightModelf=_AheadLib_glLightModelf,@154")
#pragma comment(linker, "/EXPORT:glLightModelfv=_AheadLib_glLightModelfv,@155")
#pragma comment(linker, "/EXPORT:glLightModeli=_AheadLib_glLightModeli,@156")
#pragma comment(linker, "/EXPORT:glLightModeliv=_AheadLib_glLightModeliv,@157")
#pragma comment(linker, "/EXPORT:glLightf=_AheadLib_glLightf,@158")
#pragma comment(linker, "/EXPORT:glLightfv=_AheadLib_glLightfv,@159")
#pragma comment(linker, "/EXPORT:glLighti=_AheadLib_glLighti,@160")
#pragma comment(linker, "/EXPORT:glLightiv=_AheadLib_glLightiv,@161")
#pragma comment(linker, "/EXPORT:glLineStipple=_AheadLib_glLineStipple,@162")
#pragma comment(linker, "/EXPORT:glLineWidth=_AheadLib_glLineWidth,@163")
#pragma comment(linker, "/EXPORT:glListBase=_AheadLib_glListBase,@164")
#pragma comment(linker, "/EXPORT:glLoadIdentity=_AheadLib_glLoadIdentity,@165")
#pragma comment(linker, "/EXPORT:glLoadMatrixd=_AheadLib_glLoadMatrixd,@166")
#pragma comment(linker, "/EXPORT:glLoadMatrixf=_AheadLib_glLoadMatrixf,@167")
#pragma comment(linker, "/EXPORT:glLoadName=_AheadLib_glLoadName,@168")
#pragma comment(linker, "/EXPORT:glLogicOp=_AheadLib_glLogicOp,@169")
#pragma comment(linker, "/EXPORT:glMap1d=_AheadLib_glMap1d,@170")
#pragma comment(linker, "/EXPORT:glMap1f=_AheadLib_glMap1f,@171")
#pragma comment(linker, "/EXPORT:glMap2d=_AheadLib_glMap2d,@172")
#pragma comment(linker, "/EXPORT:glMap2f=_AheadLib_glMap2f,@173")
#pragma comment(linker, "/EXPORT:glMapGrid1d=_AheadLib_glMapGrid1d,@174")
#pragma comment(linker, "/EXPORT:glMapGrid1f=_AheadLib_glMapGrid1f,@175")
#pragma comment(linker, "/EXPORT:glMapGrid2d=_AheadLib_glMapGrid2d,@176")
#pragma comment(linker, "/EXPORT:glMapGrid2f=_AheadLib_glMapGrid2f,@177")
#pragma comment(linker, "/EXPORT:glMaterialf=_AheadLib_glMaterialf,@178")
#pragma comment(linker, "/EXPORT:glMaterialfv=_AheadLib_glMaterialfv,@179")
#pragma comment(linker, "/EXPORT:glMateriali=_AheadLib_glMateriali,@180")
#pragma comment(linker, "/EXPORT:glMaterialiv=_AheadLib_glMaterialiv,@181")
#pragma comment(linker, "/EXPORT:glMatrixMode=_AheadLib_glMatrixMode,@182")
#pragma comment(linker, "/EXPORT:glMultMatrixd=_AheadLib_glMultMatrixd,@183")
#pragma comment(linker, "/EXPORT:glMultMatrixf=_AheadLib_glMultMatrixf,@184")
#pragma comment(linker, "/EXPORT:glNewList=_AheadLib_glNewList,@185")
#pragma comment(linker, "/EXPORT:glNormal3b=_AheadLib_glNormal3b,@186")
#pragma comment(linker, "/EXPORT:glNormal3bv=_AheadLib_glNormal3bv,@187")
#pragma comment(linker, "/EXPORT:glNormal3d=_AheadLib_glNormal3d,@188")
#pragma comment(linker, "/EXPORT:glNormal3dv=_AheadLib_glNormal3dv,@189")
#pragma comment(linker, "/EXPORT:glNormal3f=_AheadLib_glNormal3f,@190")
#pragma comment(linker, "/EXPORT:glNormal3fv=_AheadLib_glNormal3fv,@191")
#pragma comment(linker, "/EXPORT:glNormal3i=_AheadLib_glNormal3i,@192")
#pragma comment(linker, "/EXPORT:glNormal3iv=_AheadLib_glNormal3iv,@193")
#pragma comment(linker, "/EXPORT:glNormal3s=_AheadLib_glNormal3s,@194")
#pragma comment(linker, "/EXPORT:glNormal3sv=_AheadLib_glNormal3sv,@195")
#pragma comment(linker, "/EXPORT:glNormalPointer=_AheadLib_glNormalPointer,@196")
#pragma comment(linker, "/EXPORT:glOrtho=_AheadLib_glOrtho,@197")
#pragma comment(linker, "/EXPORT:glPassThrough=_AheadLib_glPassThrough,@198")
#pragma comment(linker, "/EXPORT:glPixelMapfv=_AheadLib_glPixelMapfv,@199")
#pragma comment(linker, "/EXPORT:glPixelMapuiv=_AheadLib_glPixelMapuiv,@200")
#pragma comment(linker, "/EXPORT:glPixelMapusv=_AheadLib_glPixelMapusv,@201")
#pragma comment(linker, "/EXPORT:glPixelStoref=_AheadLib_glPixelStoref,@202")
#pragma comment(linker, "/EXPORT:glPixelStorei=_AheadLib_glPixelStorei,@203")
#pragma comment(linker, "/EXPORT:glPixelTransferf=_AheadLib_glPixelTransferf,@204")
#pragma comment(linker, "/EXPORT:glPixelTransferi=_AheadLib_glPixelTransferi,@205")
#pragma comment(linker, "/EXPORT:glPixelZoom=_AheadLib_glPixelZoom,@206")
#pragma comment(linker, "/EXPORT:glPointSize=_AheadLib_glPointSize,@207")
#pragma comment(linker, "/EXPORT:glPolygonMode=_AheadLib_glPolygonMode,@208")
#pragma comment(linker, "/EXPORT:glPolygonOffset=_AheadLib_glPolygonOffset,@209")
#pragma comment(linker, "/EXPORT:glPolygonStipple=_AheadLib_glPolygonStipple,@210")
#pragma comment(linker, "/EXPORT:glPopAttrib=_AheadLib_glPopAttrib,@211")
#pragma comment(linker, "/EXPORT:glPopClientAttrib=_AheadLib_glPopClientAttrib,@212")
#pragma comment(linker, "/EXPORT:glPopMatrix=_AheadLib_glPopMatrix,@213")
#pragma comment(linker, "/EXPORT:glPopName=_AheadLib_glPopName,@214")
#pragma comment(linker, "/EXPORT:glPrioritizeTextures=_AheadLib_glPrioritizeTextures,@215")
#pragma comment(linker, "/EXPORT:glPushAttrib=_AheadLib_glPushAttrib,@216")
#pragma comment(linker, "/EXPORT:glPushClientAttrib=_AheadLib_glPushClientAttrib,@217")
#pragma comment(linker, "/EXPORT:glPushMatrix=_AheadLib_glPushMatrix,@218")
#pragma comment(linker, "/EXPORT:glPushName=_AheadLib_glPushName,@219")
#pragma comment(linker, "/EXPORT:glRasterPos2d=_AheadLib_glRasterPos2d,@220")
#pragma comment(linker, "/EXPORT:glRasterPos2dv=_AheadLib_glRasterPos2dv,@221")
#pragma comment(linker, "/EXPORT:glRasterPos2f=_AheadLib_glRasterPos2f,@222")
#pragma comment(linker, "/EXPORT:glRasterPos2fv=_AheadLib_glRasterPos2fv,@223")
#pragma comment(linker, "/EXPORT:glRasterPos2i=_AheadLib_glRasterPos2i,@224")
#pragma comment(linker, "/EXPORT:glRasterPos2iv=_AheadLib_glRasterPos2iv,@225")
#pragma comment(linker, "/EXPORT:glRasterPos2s=_AheadLib_glRasterPos2s,@226")
#pragma comment(linker, "/EXPORT:glRasterPos2sv=_AheadLib_glRasterPos2sv,@227")
#pragma comment(linker, "/EXPORT:glRasterPos3d=_AheadLib_glRasterPos3d,@228")
#pragma comment(linker, "/EXPORT:glRasterPos3dv=_AheadLib_glRasterPos3dv,@229")
#pragma comment(linker, "/EXPORT:glRasterPos3f=_AheadLib_glRasterPos3f,@230")
#pragma comment(linker, "/EXPORT:glRasterPos3fv=_AheadLib_glRasterPos3fv,@231")
#pragma comment(linker, "/EXPORT:glRasterPos3i=_AheadLib_glRasterPos3i,@232")
#pragma comment(linker, "/EXPORT:glRasterPos3iv=_AheadLib_glRasterPos3iv,@233")
#pragma comment(linker, "/EXPORT:glRasterPos3s=_AheadLib_glRasterPos3s,@234")
#pragma comment(linker, "/EXPORT:glRasterPos3sv=_AheadLib_glRasterPos3sv,@235")
#pragma comment(linker, "/EXPORT:glRasterPos4d=_AheadLib_glRasterPos4d,@236")
#pragma comment(linker, "/EXPORT:glRasterPos4dv=_AheadLib_glRasterPos4dv,@237")
#pragma comment(linker, "/EXPORT:glRasterPos4f=_AheadLib_glRasterPos4f,@238")
#pragma comment(linker, "/EXPORT:glRasterPos4fv=_AheadLib_glRasterPos4fv,@239")
#pragma comment(linker, "/EXPORT:glRasterPos4i=_AheadLib_glRasterPos4i,@240")
#pragma comment(linker, "/EXPORT:glRasterPos4iv=_AheadLib_glRasterPos4iv,@241")
#pragma comment(linker, "/EXPORT:glRasterPos4s=_AheadLib_glRasterPos4s,@242")
#pragma comment(linker, "/EXPORT:glRasterPos4sv=_AheadLib_glRasterPos4sv,@243")
#pragma comment(linker, "/EXPORT:glReadBuffer=_AheadLib_glReadBuffer,@244")
#pragma comment(linker, "/EXPORT:glReadPixels=_AheadLib_glReadPixels,@245")
#pragma comment(linker, "/EXPORT:glRectd=_AheadLib_glRectd,@246")
#pragma comment(linker, "/EXPORT:glRectdv=_AheadLib_glRectdv,@247")
#pragma comment(linker, "/EXPORT:glRectf=_AheadLib_glRectf,@248")
#pragma comment(linker, "/EXPORT:glRectfv=_AheadLib_glRectfv,@249")
#pragma comment(linker, "/EXPORT:glRecti=_AheadLib_glRecti,@250")
#pragma comment(linker, "/EXPORT:glRectiv=_AheadLib_glRectiv,@251")
#pragma comment(linker, "/EXPORT:glRects=_AheadLib_glRects,@252")
#pragma comment(linker, "/EXPORT:glRectsv=_AheadLib_glRectsv,@253")
#pragma comment(linker, "/EXPORT:glRenderMode=_AheadLib_glRenderMode,@254")
#pragma comment(linker, "/EXPORT:glRotated=_AheadLib_glRotated,@255")
#pragma comment(linker, "/EXPORT:glRotatef=_AheadLib_glRotatef,@256")
#pragma comment(linker, "/EXPORT:glScaled=_AheadLib_glScaled,@257")
#pragma comment(linker, "/EXPORT:glScalef=_AheadLib_glScalef,@258")
#pragma comment(linker, "/EXPORT:glScissor=_AheadLib_glScissor,@259")
#pragma comment(linker, "/EXPORT:glSelectBuffer=_AheadLib_glSelectBuffer,@260")
#pragma comment(linker, "/EXPORT:glShadeModel=_AheadLib_glShadeModel,@261")
#pragma comment(linker, "/EXPORT:glStencilFunc=_AheadLib_glStencilFunc,@262")
#pragma comment(linker, "/EXPORT:glStencilMask=_AheadLib_glStencilMask,@263")
#pragma comment(linker, "/EXPORT:glStencilOp=_AheadLib_glStencilOp,@264")
#pragma comment(linker, "/EXPORT:glTexCoord1d=_AheadLib_glTexCoord1d,@265")
#pragma comment(linker, "/EXPORT:glTexCoord1dv=_AheadLib_glTexCoord1dv,@266")
#pragma comment(linker, "/EXPORT:glTexCoord1f=_AheadLib_glTexCoord1f,@267")
#pragma comment(linker, "/EXPORT:glTexCoord1fv=_AheadLib_glTexCoord1fv,@268")
#pragma comment(linker, "/EXPORT:glTexCoord1i=_AheadLib_glTexCoord1i,@269")
#pragma comment(linker, "/EXPORT:glTexCoord1iv=_AheadLib_glTexCoord1iv,@270")
#pragma comment(linker, "/EXPORT:glTexCoord1s=_AheadLib_glTexCoord1s,@271")
#pragma comment(linker, "/EXPORT:glTexCoord1sv=_AheadLib_glTexCoord1sv,@272")
#pragma comment(linker, "/EXPORT:glTexCoord2d=_AheadLib_glTexCoord2d,@273")
#pragma comment(linker, "/EXPORT:glTexCoord2dv=_AheadLib_glTexCoord2dv,@274")
#pragma comment(linker, "/EXPORT:glTexCoord2f=_AheadLib_glTexCoord2f,@275")
#pragma comment(linker, "/EXPORT:glTexCoord2fv=_AheadLib_glTexCoord2fv,@276")
#pragma comment(linker, "/EXPORT:glTexCoord2i=_AheadLib_glTexCoord2i,@277")
#pragma comment(linker, "/EXPORT:glTexCoord2iv=_AheadLib_glTexCoord2iv,@278")
#pragma comment(linker, "/EXPORT:glTexCoord2s=_AheadLib_glTexCoord2s,@279")
#pragma comment(linker, "/EXPORT:glTexCoord2sv=_AheadLib_glTexCoord2sv,@280")
#pragma comment(linker, "/EXPORT:glTexCoord3d=_AheadLib_glTexCoord3d,@281")
#pragma comment(linker, "/EXPORT:glTexCoord3dv=_AheadLib_glTexCoord3dv,@282")
#pragma comment(linker, "/EXPORT:glTexCoord3f=_AheadLib_glTexCoord3f,@283")
#pragma comment(linker, "/EXPORT:glTexCoord3fv=_AheadLib_glTexCoord3fv,@284")
#pragma comment(linker, "/EXPORT:glTexCoord3i=_AheadLib_glTexCoord3i,@285")
#pragma comment(linker, "/EXPORT:glTexCoord3iv=_AheadLib_glTexCoord3iv,@286")
#pragma comment(linker, "/EXPORT:glTexCoord3s=_AheadLib_glTexCoord3s,@287")
#pragma comment(linker, "/EXPORT:glTexCoord3sv=_AheadLib_glTexCoord3sv,@288")
#pragma comment(linker, "/EXPORT:glTexCoord4d=_AheadLib_glTexCoord4d,@289")
#pragma comment(linker, "/EXPORT:glTexCoord4dv=_AheadLib_glTexCoord4dv,@290")
#pragma comment(linker, "/EXPORT:glTexCoord4f=_AheadLib_glTexCoord4f,@291")
#pragma comment(linker, "/EXPORT:glTexCoord4fv=_AheadLib_glTexCoord4fv,@292")
#pragma comment(linker, "/EXPORT:glTexCoord4i=_AheadLib_glTexCoord4i,@293")
#pragma comment(linker, "/EXPORT:glTexCoord4iv=_AheadLib_glTexCoord4iv,@294")
#pragma comment(linker, "/EXPORT:glTexCoord4s=_AheadLib_glTexCoord4s,@295")
#pragma comment(linker, "/EXPORT:glTexCoord4sv=_AheadLib_glTexCoord4sv,@296")
#pragma comment(linker, "/EXPORT:glTexCoordPointer=_AheadLib_glTexCoordPointer,@297")
#pragma comment(linker, "/EXPORT:glTexEnvf=_AheadLib_glTexEnvf,@298")
#pragma comment(linker, "/EXPORT:glTexEnvfv=_AheadLib_glTexEnvfv,@299")
#pragma comment(linker, "/EXPORT:glTexEnvi=_AheadLib_glTexEnvi,@300")
#pragma comment(linker, "/EXPORT:glTexEnviv=_AheadLib_glTexEnviv,@301")
#pragma comment(linker, "/EXPORT:glTexGend=_AheadLib_glTexGend,@302")
#pragma comment(linker, "/EXPORT:glTexGendv=_AheadLib_glTexGendv,@303")
#pragma comment(linker, "/EXPORT:glTexGenf=_AheadLib_glTexGenf,@304")
#pragma comment(linker, "/EXPORT:glTexGenfv=_AheadLib_glTexGenfv,@305")
#pragma comment(linker, "/EXPORT:glTexGeni=_AheadLib_glTexGeni,@306")
#pragma comment(linker, "/EXPORT:glTexGeniv=_AheadLib_glTexGeniv,@307")
#pragma comment(linker, "/EXPORT:glTexImage1D=_AheadLib_glTexImage1D,@308")
#pragma comment(linker, "/EXPORT:glTexImage2D=_AheadLib_glTexImage2D,@309")
#pragma comment(linker, "/EXPORT:glTexParameterf=_AheadLib_glTexParameterf,@310")
#pragma comment(linker, "/EXPORT:glTexParameterfv=_AheadLib_glTexParameterfv,@311")
#pragma comment(linker, "/EXPORT:glTexParameteri=_AheadLib_glTexParameteri,@312")
#pragma comment(linker, "/EXPORT:glTexParameteriv=_AheadLib_glTexParameteriv,@313")
#pragma comment(linker, "/EXPORT:glTexSubImage1D=_AheadLib_glTexSubImage1D,@314")
#pragma comment(linker, "/EXPORT:glTexSubImage2D=_AheadLib_glTexSubImage2D,@315")
#pragma comment(linker, "/EXPORT:glTranslated=_AheadLib_glTranslated,@316")
#pragma comment(linker, "/EXPORT:glTranslatef=_AheadLib_glTranslatef,@317")
#pragma comment(linker, "/EXPORT:glVertex2d=_AheadLib_glVertex2d,@318")
#pragma comment(linker, "/EXPORT:glVertex2dv=_AheadLib_glVertex2dv,@319")
#pragma comment(linker, "/EXPORT:glVertex2f=_AheadLib_glVertex2f,@320")
#pragma comment(linker, "/EXPORT:glVertex2fv=_AheadLib_glVertex2fv,@321")
#pragma comment(linker, "/EXPORT:glVertex2i=_AheadLib_glVertex2i,@322")
#pragma comment(linker, "/EXPORT:glVertex2iv=_AheadLib_glVertex2iv,@323")
#pragma comment(linker, "/EXPORT:glVertex2s=_AheadLib_glVertex2s,@324")
#pragma comment(linker, "/EXPORT:glVertex2sv=_AheadLib_glVertex2sv,@325")
#pragma comment(linker, "/EXPORT:glVertex3d=_AheadLib_glVertex3d,@326")
#pragma comment(linker, "/EXPORT:glVertex3dv=_AheadLib_glVertex3dv,@327")
#pragma comment(linker, "/EXPORT:glVertex3f=_AheadLib_glVertex3f,@328")
#pragma comment(linker, "/EXPORT:glVertex3fv=_AheadLib_glVertex3fv,@329")
#pragma comment(linker, "/EXPORT:glVertex3i=_AheadLib_glVertex3i,@330")
#pragma comment(linker, "/EXPORT:glVertex3iv=_AheadLib_glVertex3iv,@331")
#pragma comment(linker, "/EXPORT:glVertex3s=_AheadLib_glVertex3s,@332")
#pragma comment(linker, "/EXPORT:glVertex3sv=_AheadLib_glVertex3sv,@333")
#pragma comment(linker, "/EXPORT:glVertex4d=_AheadLib_glVertex4d,@334")
#pragma comment(linker, "/EXPORT:glVertex4dv=_AheadLib_glVertex4dv,@335")
#pragma comment(linker, "/EXPORT:glVertex4f=_AheadLib_glVertex4f,@336")
#pragma comment(linker, "/EXPORT:glVertex4fv=_AheadLib_glVertex4fv,@337")
#pragma comment(linker, "/EXPORT:glVertex4i=_AheadLib_glVertex4i,@338")
#pragma comment(linker, "/EXPORT:glVertex4iv=_AheadLib_glVertex4iv,@339")
#pragma comment(linker, "/EXPORT:glVertex4s=_AheadLib_glVertex4s,@340")
#pragma comment(linker, "/EXPORT:glVertex4sv=_AheadLib_glVertex4sv,@341")
#pragma comment(linker, "/EXPORT:glVertexPointer=_AheadLib_glVertexPointer,@342")
#pragma comment(linker, "/EXPORT:glViewport=_AheadLib_glViewport,@343")
#pragma comment(linker, "/EXPORT:wglChoosePixelFormat=_AheadLib_wglChoosePixelFormat,@344")
#pragma comment(linker, "/EXPORT:wglCopyContext=_AheadLib_wglCopyContext,@345")
#pragma comment(linker, "/EXPORT:wglCreateContext=_AheadLib_wglCreateContext,@346")
#pragma comment(linker, "/EXPORT:wglCreateLayerContext=_AheadLib_wglCreateLayerContext,@347")
#pragma comment(linker, "/EXPORT:wglDeleteContext=_AheadLib_wglDeleteContext,@348")
#pragma comment(linker, "/EXPORT:wglDescribeLayerPlane=_AheadLib_wglDescribeLayerPlane,@349")
#pragma comment(linker, "/EXPORT:wglDescribePixelFormat=_AheadLib_wglDescribePixelFormat,@350")
#pragma comment(linker, "/EXPORT:wglGetCurrentContext=_AheadLib_wglGetCurrentContext,@351")
#pragma comment(linker, "/EXPORT:wglGetCurrentDC=_AheadLib_wglGetCurrentDC,@352")
#pragma comment(linker, "/EXPORT:wglGetDefaultProcAddress=_AheadLib_wglGetDefaultProcAddress,@353")
#pragma comment(linker, "/EXPORT:wglGetLayerPaletteEntries=_AheadLib_wglGetLayerPaletteEntries,@354")
#pragma comment(linker, "/EXPORT:wglGetPixelFormat=_AheadLib_wglGetPixelFormat,@355")
#pragma comment(linker, "/EXPORT:wglGetProcAddress=_AheadLib_wglGetProcAddress,@356")
#pragma comment(linker, "/EXPORT:wglMakeCurrent=_AheadLib_wglMakeCurrent,@357")
#pragma comment(linker, "/EXPORT:wglRealizeLayerPalette=_AheadLib_wglRealizeLayerPalette,@358")
#pragma comment(linker, "/EXPORT:wglSetLayerPaletteEntries=_AheadLib_wglSetLayerPaletteEntries,@359")
#pragma comment(linker, "/EXPORT:wglSetPixelFormat=_AheadLib_wglSetPixelFormat,@360")
#pragma comment(linker, "/EXPORT:wglShareLists=_AheadLib_wglShareLists,@361")
#pragma comment(linker, "/EXPORT:wglSwapBuffers=_AheadLib_wglSwapBuffers,@362")
#pragma comment(linker, "/EXPORT:wglSwapLayerBuffers=_AheadLib_wglSwapLayerBuffers,@363")
#pragma comment(linker, "/EXPORT:wglSwapMultipleBuffers=_AheadLib_wglSwapMultipleBuffers,@364")
#pragma comment(linker, "/EXPORT:wglUseFontBitmapsA=_AheadLib_wglUseFontBitmapsA,@365")
#pragma comment(linker, "/EXPORT:wglUseFontBitmapsW=_AheadLib_wglUseFontBitmapsW,@366")
#pragma comment(linker, "/EXPORT:wglUseFontOutlinesA=_AheadLib_wglUseFontOutlinesA,@367")
#pragma comment(linker, "/EXPORT:wglUseFontOutlinesW=_AheadLib_wglUseFontOutlinesW,@368")


PVOID pfnAheadLib_GlmfBeginGlsBlock;
PVOID pfnAheadLib_GlmfCloseMetaFile;
PVOID pfnAheadLib_GlmfEndGlsBlock;
PVOID pfnAheadLib_GlmfEndPlayback;
PVOID pfnAheadLib_GlmfInitPlayback;
PVOID pfnAheadLib_GlmfPlayGlsRecord;
PVOID pfnAheadLib_glAccum;
PVOID pfnAheadLib_glAlphaFunc;
PVOID pfnAheadLib_glAreTexturesResident;
PVOID pfnAheadLib_glArrayElement;
PVOID pfnAheadLib_glBegin;
PVOID pfnAheadLib_glBindTexture;
PVOID pfnAheadLib_glBitmap;
PVOID pfnAheadLib_glBlendFunc;
PVOID pfnAheadLib_glCallList;
PVOID pfnAheadLib_glCallLists;
PVOID pfnAheadLib_glClear;
PVOID pfnAheadLib_glClearAccum;
PVOID pfnAheadLib_glClearColor;
PVOID pfnAheadLib_glClearDepth;
PVOID pfnAheadLib_glClearIndex;
PVOID pfnAheadLib_glClearStencil;
PVOID pfnAheadLib_glClipPlane;
PVOID pfnAheadLib_glColor3b;
PVOID pfnAheadLib_glColor3bv;
PVOID pfnAheadLib_glColor3d;
PVOID pfnAheadLib_glColor3dv;
PVOID pfnAheadLib_glColor3f;
PVOID pfnAheadLib_glColor3fv;
PVOID pfnAheadLib_glColor3i;
PVOID pfnAheadLib_glColor3iv;
PVOID pfnAheadLib_glColor3s;
PVOID pfnAheadLib_glColor3sv;
PVOID pfnAheadLib_glColor3ub;
PVOID pfnAheadLib_glColor3ubv;
PVOID pfnAheadLib_glColor3ui;
PVOID pfnAheadLib_glColor3uiv;
PVOID pfnAheadLib_glColor3us;
PVOID pfnAheadLib_glColor3usv;
PVOID pfnAheadLib_glColor4b;
PVOID pfnAheadLib_glColor4bv;
PVOID pfnAheadLib_glColor4d;
PVOID pfnAheadLib_glColor4dv;
PVOID pfnAheadLib_glColor4f;
PVOID pfnAheadLib_glColor4fv;
PVOID pfnAheadLib_glColor4i;
PVOID pfnAheadLib_glColor4iv;
PVOID pfnAheadLib_glColor4s;
PVOID pfnAheadLib_glColor4sv;
PVOID pfnAheadLib_glColor4ub;
PVOID pfnAheadLib_glColor4ubv;
PVOID pfnAheadLib_glColor4ui;
PVOID pfnAheadLib_glColor4uiv;
PVOID pfnAheadLib_glColor4us;
PVOID pfnAheadLib_glColor4usv;
PVOID pfnAheadLib_glColorMask;
PVOID pfnAheadLib_glColorMaterial;
PVOID pfnAheadLib_glColorPointer;
PVOID pfnAheadLib_glCopyPixels;
PVOID pfnAheadLib_glCopyTexImage1D;
PVOID pfnAheadLib_glCopyTexImage2D;
PVOID pfnAheadLib_glCopyTexSubImage1D;
PVOID pfnAheadLib_glCopyTexSubImage2D;
PVOID pfnAheadLib_glCullFace;
PVOID pfnAheadLib_glDebugEntry;
PVOID pfnAheadLib_glDeleteLists;
PVOID pfnAheadLib_glDeleteTextures;
PVOID pfnAheadLib_glDepthFunc;
PVOID pfnAheadLib_glDepthMask;
PVOID pfnAheadLib_glDepthRange;
PVOID pfnAheadLib_glDisable;
PVOID pfnAheadLib_glDisableClientState;
PVOID pfnAheadLib_glDrawArrays;
PVOID pfnAheadLib_glDrawBuffer;
PVOID pfnAheadLib_glDrawElements;
PVOID pfnAheadLib_glDrawPixels;
PVOID pfnAheadLib_glEdgeFlag;
PVOID pfnAheadLib_glEdgeFlagPointer;
PVOID pfnAheadLib_glEdgeFlagv;
PVOID pfnAheadLib_glEnable;
PVOID pfnAheadLib_glEnableClientState;
PVOID pfnAheadLib_glEnd;
PVOID pfnAheadLib_glEndList;
PVOID pfnAheadLib_glEvalCoord1d;
PVOID pfnAheadLib_glEvalCoord1dv;
PVOID pfnAheadLib_glEvalCoord1f;
PVOID pfnAheadLib_glEvalCoord1fv;
PVOID pfnAheadLib_glEvalCoord2d;
PVOID pfnAheadLib_glEvalCoord2dv;
PVOID pfnAheadLib_glEvalCoord2f;
PVOID pfnAheadLib_glEvalCoord2fv;
PVOID pfnAheadLib_glEvalMesh1;
PVOID pfnAheadLib_glEvalMesh2;
PVOID pfnAheadLib_glEvalPoint1;
PVOID pfnAheadLib_glEvalPoint2;
PVOID pfnAheadLib_glFeedbackBuffer;
PVOID pfnAheadLib_glFinish;
PVOID pfnAheadLib_glFlush;
PVOID pfnAheadLib_glFogf;
PVOID pfnAheadLib_glFogfv;
PVOID pfnAheadLib_glFogi;
PVOID pfnAheadLib_glFogiv;
PVOID pfnAheadLib_glFrontFace;
PVOID pfnAheadLib_glFrustum;
PVOID pfnAheadLib_glGenLists;
PVOID pfnAheadLib_glGenTextures;
PVOID pfnAheadLib_glGetBooleanv;
PVOID pfnAheadLib_glGetClipPlane;
PVOID pfnAheadLib_glGetDoublev;
PVOID pfnAheadLib_glGetError;
PVOID pfnAheadLib_glGetFloatv;
PVOID pfnAheadLib_glGetIntegerv;
PVOID pfnAheadLib_glGetLightfv;
PVOID pfnAheadLib_glGetLightiv;
PVOID pfnAheadLib_glGetMapdv;
PVOID pfnAheadLib_glGetMapfv;
PVOID pfnAheadLib_glGetMapiv;
PVOID pfnAheadLib_glGetMaterialfv;
PVOID pfnAheadLib_glGetMaterialiv;
PVOID pfnAheadLib_glGetPixelMapfv;
PVOID pfnAheadLib_glGetPixelMapuiv;
PVOID pfnAheadLib_glGetPixelMapusv;
PVOID pfnAheadLib_glGetPointerv;
PVOID pfnAheadLib_glGetPolygonStipple;
PVOID pfnAheadLib_glGetString;
PVOID pfnAheadLib_glGetTexEnvfv;
PVOID pfnAheadLib_glGetTexEnviv;
PVOID pfnAheadLib_glGetTexGendv;
PVOID pfnAheadLib_glGetTexGenfv;
PVOID pfnAheadLib_glGetTexGeniv;
PVOID pfnAheadLib_glGetTexImage;
PVOID pfnAheadLib_glGetTexLevelParameterfv;
PVOID pfnAheadLib_glGetTexLevelParameteriv;
PVOID pfnAheadLib_glGetTexParameterfv;
PVOID pfnAheadLib_glGetTexParameteriv;
PVOID pfnAheadLib_glHint;
PVOID pfnAheadLib_glIndexMask;
PVOID pfnAheadLib_glIndexPointer;
PVOID pfnAheadLib_glIndexd;
PVOID pfnAheadLib_glIndexdv;
PVOID pfnAheadLib_glIndexf;
PVOID pfnAheadLib_glIndexfv;
PVOID pfnAheadLib_glIndexi;
PVOID pfnAheadLib_glIndexiv;
PVOID pfnAheadLib_glIndexs;
PVOID pfnAheadLib_glIndexsv;
PVOID pfnAheadLib_glIndexub;
PVOID pfnAheadLib_glIndexubv;
PVOID pfnAheadLib_glInitNames;
PVOID pfnAheadLib_glInterleavedArrays;
PVOID pfnAheadLib_glIsEnabled;
PVOID pfnAheadLib_glIsList;
PVOID pfnAheadLib_glIsTexture;
PVOID pfnAheadLib_glLightModelf;
PVOID pfnAheadLib_glLightModelfv;
PVOID pfnAheadLib_glLightModeli;
PVOID pfnAheadLib_glLightModeliv;
PVOID pfnAheadLib_glLightf;
PVOID pfnAheadLib_glLightfv;
PVOID pfnAheadLib_glLighti;
PVOID pfnAheadLib_glLightiv;
PVOID pfnAheadLib_glLineStipple;
PVOID pfnAheadLib_glLineWidth;
PVOID pfnAheadLib_glListBase;
PVOID pfnAheadLib_glLoadIdentity;
PVOID pfnAheadLib_glLoadMatrixd;
PVOID pfnAheadLib_glLoadMatrixf;
PVOID pfnAheadLib_glLoadName;
PVOID pfnAheadLib_glLogicOp;
PVOID pfnAheadLib_glMap1d;
PVOID pfnAheadLib_glMap1f;
PVOID pfnAheadLib_glMap2d;
PVOID pfnAheadLib_glMap2f;
PVOID pfnAheadLib_glMapGrid1d;
PVOID pfnAheadLib_glMapGrid1f;
PVOID pfnAheadLib_glMapGrid2d;
PVOID pfnAheadLib_glMapGrid2f;
PVOID pfnAheadLib_glMaterialf;
PVOID pfnAheadLib_glMaterialfv;
PVOID pfnAheadLib_glMateriali;
PVOID pfnAheadLib_glMaterialiv;
PVOID pfnAheadLib_glMatrixMode;
PVOID pfnAheadLib_glMultMatrixd;
PVOID pfnAheadLib_glMultMatrixf;
PVOID pfnAheadLib_glNewList;
PVOID pfnAheadLib_glNormal3b;
PVOID pfnAheadLib_glNormal3bv;
PVOID pfnAheadLib_glNormal3d;
PVOID pfnAheadLib_glNormal3dv;
PVOID pfnAheadLib_glNormal3f;
PVOID pfnAheadLib_glNormal3fv;
PVOID pfnAheadLib_glNormal3i;
PVOID pfnAheadLib_glNormal3iv;
PVOID pfnAheadLib_glNormal3s;
PVOID pfnAheadLib_glNormal3sv;
PVOID pfnAheadLib_glNormalPointer;
PVOID pfnAheadLib_glOrtho;
PVOID pfnAheadLib_glPassThrough;
PVOID pfnAheadLib_glPixelMapfv;
PVOID pfnAheadLib_glPixelMapuiv;
PVOID pfnAheadLib_glPixelMapusv;
PVOID pfnAheadLib_glPixelStoref;
PVOID pfnAheadLib_glPixelStorei;
PVOID pfnAheadLib_glPixelTransferf;
PVOID pfnAheadLib_glPixelTransferi;
PVOID pfnAheadLib_glPixelZoom;
PVOID pfnAheadLib_glPointSize;
PVOID pfnAheadLib_glPolygonMode;
PVOID pfnAheadLib_glPolygonOffset;
PVOID pfnAheadLib_glPolygonStipple;
PVOID pfnAheadLib_glPopAttrib;
PVOID pfnAheadLib_glPopClientAttrib;
PVOID pfnAheadLib_glPopMatrix;
PVOID pfnAheadLib_glPopName;
PVOID pfnAheadLib_glPrioritizeTextures;
PVOID pfnAheadLib_glPushAttrib;
PVOID pfnAheadLib_glPushClientAttrib;
PVOID pfnAheadLib_glPushMatrix;
PVOID pfnAheadLib_glPushName;
PVOID pfnAheadLib_glRasterPos2d;
PVOID pfnAheadLib_glRasterPos2dv;
PVOID pfnAheadLib_glRasterPos2f;
PVOID pfnAheadLib_glRasterPos2fv;
PVOID pfnAheadLib_glRasterPos2i;
PVOID pfnAheadLib_glRasterPos2iv;
PVOID pfnAheadLib_glRasterPos2s;
PVOID pfnAheadLib_glRasterPos2sv;
PVOID pfnAheadLib_glRasterPos3d;
PVOID pfnAheadLib_glRasterPos3dv;
PVOID pfnAheadLib_glRasterPos3f;
PVOID pfnAheadLib_glRasterPos3fv;
PVOID pfnAheadLib_glRasterPos3i;
PVOID pfnAheadLib_glRasterPos3iv;
PVOID pfnAheadLib_glRasterPos3s;
PVOID pfnAheadLib_glRasterPos3sv;
PVOID pfnAheadLib_glRasterPos4d;
PVOID pfnAheadLib_glRasterPos4dv;
PVOID pfnAheadLib_glRasterPos4f;
PVOID pfnAheadLib_glRasterPos4fv;
PVOID pfnAheadLib_glRasterPos4i;
PVOID pfnAheadLib_glRasterPos4iv;
PVOID pfnAheadLib_glRasterPos4s;
PVOID pfnAheadLib_glRasterPos4sv;
PVOID pfnAheadLib_glReadBuffer;
PVOID pfnAheadLib_glReadPixels;
PVOID pfnAheadLib_glRectd;
PVOID pfnAheadLib_glRectdv;
PVOID pfnAheadLib_glRectf;
PVOID pfnAheadLib_glRectfv;
PVOID pfnAheadLib_glRecti;
PVOID pfnAheadLib_glRectiv;
PVOID pfnAheadLib_glRects;
PVOID pfnAheadLib_glRectsv;
PVOID pfnAheadLib_glRenderMode;
PVOID pfnAheadLib_glRotated;
PVOID pfnAheadLib_glRotatef;
PVOID pfnAheadLib_glScaled;
PVOID pfnAheadLib_glScalef;
PVOID pfnAheadLib_glScissor;
PVOID pfnAheadLib_glSelectBuffer;
PVOID pfnAheadLib_glShadeModel;
PVOID pfnAheadLib_glStencilFunc;
PVOID pfnAheadLib_glStencilMask;
PVOID pfnAheadLib_glStencilOp;
PVOID pfnAheadLib_glTexCoord1d;
PVOID pfnAheadLib_glTexCoord1dv;
PVOID pfnAheadLib_glTexCoord1f;
PVOID pfnAheadLib_glTexCoord1fv;
PVOID pfnAheadLib_glTexCoord1i;
PVOID pfnAheadLib_glTexCoord1iv;
PVOID pfnAheadLib_glTexCoord1s;
PVOID pfnAheadLib_glTexCoord1sv;
PVOID pfnAheadLib_glTexCoord2d;
PVOID pfnAheadLib_glTexCoord2dv;
PVOID pfnAheadLib_glTexCoord2f;
PVOID pfnAheadLib_glTexCoord2fv;
PVOID pfnAheadLib_glTexCoord2i;
PVOID pfnAheadLib_glTexCoord2iv;
PVOID pfnAheadLib_glTexCoord2s;
PVOID pfnAheadLib_glTexCoord2sv;
PVOID pfnAheadLib_glTexCoord3d;
PVOID pfnAheadLib_glTexCoord3dv;
PVOID pfnAheadLib_glTexCoord3f;
PVOID pfnAheadLib_glTexCoord3fv;
PVOID pfnAheadLib_glTexCoord3i;
PVOID pfnAheadLib_glTexCoord3iv;
PVOID pfnAheadLib_glTexCoord3s;
PVOID pfnAheadLib_glTexCoord3sv;
PVOID pfnAheadLib_glTexCoord4d;
PVOID pfnAheadLib_glTexCoord4dv;
PVOID pfnAheadLib_glTexCoord4f;
PVOID pfnAheadLib_glTexCoord4fv;
PVOID pfnAheadLib_glTexCoord4i;
PVOID pfnAheadLib_glTexCoord4iv;
PVOID pfnAheadLib_glTexCoord4s;
PVOID pfnAheadLib_glTexCoord4sv;
PVOID pfnAheadLib_glTexCoordPointer;
PVOID pfnAheadLib_glTexEnvf;
PVOID pfnAheadLib_glTexEnvfv;
PVOID pfnAheadLib_glTexEnvi;
PVOID pfnAheadLib_glTexEnviv;
PVOID pfnAheadLib_glTexGend;
PVOID pfnAheadLib_glTexGendv;
PVOID pfnAheadLib_glTexGenf;
PVOID pfnAheadLib_glTexGenfv;
PVOID pfnAheadLib_glTexGeni;
PVOID pfnAheadLib_glTexGeniv;
PVOID pfnAheadLib_glTexImage1D;
PVOID pfnAheadLib_glTexImage2D;
PVOID pfnAheadLib_glTexParameterf;
PVOID pfnAheadLib_glTexParameterfv;
PVOID pfnAheadLib_glTexParameteri;
PVOID pfnAheadLib_glTexParameteriv;
PVOID pfnAheadLib_glTexSubImage1D;
PVOID pfnAheadLib_glTexSubImage2D;
PVOID pfnAheadLib_glTranslated;
PVOID pfnAheadLib_glTranslatef;
PVOID pfnAheadLib_glVertex2d;
PVOID pfnAheadLib_glVertex2dv;
PVOID pfnAheadLib_glVertex2f;
PVOID pfnAheadLib_glVertex2fv;
PVOID pfnAheadLib_glVertex2i;
PVOID pfnAheadLib_glVertex2iv;
PVOID pfnAheadLib_glVertex2s;
PVOID pfnAheadLib_glVertex2sv;
PVOID pfnAheadLib_glVertex3d;
PVOID pfnAheadLib_glVertex3dv;
PVOID pfnAheadLib_glVertex3f;
PVOID pfnAheadLib_glVertex3fv;
PVOID pfnAheadLib_glVertex3i;
PVOID pfnAheadLib_glVertex3iv;
PVOID pfnAheadLib_glVertex3s;
PVOID pfnAheadLib_glVertex3sv;
PVOID pfnAheadLib_glVertex4d;
PVOID pfnAheadLib_glVertex4dv;
PVOID pfnAheadLib_glVertex4f;
PVOID pfnAheadLib_glVertex4fv;
PVOID pfnAheadLib_glVertex4i;
PVOID pfnAheadLib_glVertex4iv;
PVOID pfnAheadLib_glVertex4s;
PVOID pfnAheadLib_glVertex4sv;
PVOID pfnAheadLib_glVertexPointer;
PVOID pfnAheadLib_glViewport;
PVOID pfnAheadLib_wglChoosePixelFormat;
PVOID pfnAheadLib_wglCopyContext;
PVOID pfnAheadLib_wglCreateContext;
PVOID pfnAheadLib_wglCreateLayerContext;
PVOID pfnAheadLib_wglDeleteContext;
PVOID pfnAheadLib_wglDescribeLayerPlane;
PVOID pfnAheadLib_wglDescribePixelFormat;
PVOID pfnAheadLib_wglGetCurrentContext;
PVOID pfnAheadLib_wglGetCurrentDC;
PVOID pfnAheadLib_wglGetDefaultProcAddress;
PVOID pfnAheadLib_wglGetLayerPaletteEntries;
PVOID pfnAheadLib_wglGetPixelFormat;
PVOID pfnAheadLib_wglGetProcAddress;
PVOID pfnAheadLib_wglMakeCurrent;
PVOID pfnAheadLib_wglRealizeLayerPalette;
PVOID pfnAheadLib_wglSetLayerPaletteEntries;
PVOID pfnAheadLib_wglSetPixelFormat;
PVOID pfnAheadLib_wglShareLists;
PVOID pfnAheadLib_wglSwapBuffers;
PVOID pfnAheadLib_wglSwapLayerBuffers;
PVOID pfnAheadLib_wglSwapMultipleBuffers;
PVOID pfnAheadLib_wglUseFontBitmapsA;
PVOID pfnAheadLib_wglUseFontBitmapsW;
PVOID pfnAheadLib_wglUseFontOutlinesA;
PVOID pfnAheadLib_wglUseFontOutlinesW;


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

	lstrcat(tzPath, TEXT("\\opengl32.dll"));

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
	pfnAheadLib_GlmfBeginGlsBlock = GetAddress("GlmfBeginGlsBlock");
	pfnAheadLib_GlmfCloseMetaFile = GetAddress("GlmfCloseMetaFile");
	pfnAheadLib_GlmfEndGlsBlock = GetAddress("GlmfEndGlsBlock");
	pfnAheadLib_GlmfEndPlayback = GetAddress("GlmfEndPlayback");
	pfnAheadLib_GlmfInitPlayback = GetAddress("GlmfInitPlayback");
	pfnAheadLib_GlmfPlayGlsRecord = GetAddress("GlmfPlayGlsRecord");
	pfnAheadLib_glAccum = GetAddress("glAccum");
	pfnAheadLib_glAlphaFunc = GetAddress("glAlphaFunc");
	pfnAheadLib_glAreTexturesResident = GetAddress("glAreTexturesResident");
	pfnAheadLib_glArrayElement = GetAddress("glArrayElement");
	pfnAheadLib_glBegin = GetAddress("glBegin");
	pfnAheadLib_glBindTexture = GetAddress("glBindTexture");
	pfnAheadLib_glBitmap = GetAddress("glBitmap");
	pfnAheadLib_glBlendFunc = GetAddress("glBlendFunc");
	pfnAheadLib_glCallList = GetAddress("glCallList");
	pfnAheadLib_glCallLists = GetAddress("glCallLists");
	pfnAheadLib_glClear = GetAddress("glClear");
	pfnAheadLib_glClearAccum = GetAddress("glClearAccum");
	pfnAheadLib_glClearColor = GetAddress("glClearColor");
	pfnAheadLib_glClearDepth = GetAddress("glClearDepth");
	pfnAheadLib_glClearIndex = GetAddress("glClearIndex");
	pfnAheadLib_glClearStencil = GetAddress("glClearStencil");
	pfnAheadLib_glClipPlane = GetAddress("glClipPlane");
	pfnAheadLib_glColor3b = GetAddress("glColor3b");
	pfnAheadLib_glColor3bv = GetAddress("glColor3bv");
	pfnAheadLib_glColor3d = GetAddress("glColor3d");
	pfnAheadLib_glColor3dv = GetAddress("glColor3dv");
	pfnAheadLib_glColor3f = GetAddress("glColor3f");
	pfnAheadLib_glColor3fv = GetAddress("glColor3fv");
	pfnAheadLib_glColor3i = GetAddress("glColor3i");
	pfnAheadLib_glColor3iv = GetAddress("glColor3iv");
	pfnAheadLib_glColor3s = GetAddress("glColor3s");
	pfnAheadLib_glColor3sv = GetAddress("glColor3sv");
	pfnAheadLib_glColor3ub = GetAddress("glColor3ub");
	pfnAheadLib_glColor3ubv = GetAddress("glColor3ubv");
	pfnAheadLib_glColor3ui = GetAddress("glColor3ui");
	pfnAheadLib_glColor3uiv = GetAddress("glColor3uiv");
	pfnAheadLib_glColor3us = GetAddress("glColor3us");
	pfnAheadLib_glColor3usv = GetAddress("glColor3usv");
	pfnAheadLib_glColor4b = GetAddress("glColor4b");
	pfnAheadLib_glColor4bv = GetAddress("glColor4bv");
	pfnAheadLib_glColor4d = GetAddress("glColor4d");
	pfnAheadLib_glColor4dv = GetAddress("glColor4dv");
	pfnAheadLib_glColor4f = GetAddress("glColor4f");
	pfnAheadLib_glColor4fv = GetAddress("glColor4fv");
	pfnAheadLib_glColor4i = GetAddress("glColor4i");
	pfnAheadLib_glColor4iv = GetAddress("glColor4iv");
	pfnAheadLib_glColor4s = GetAddress("glColor4s");
	pfnAheadLib_glColor4sv = GetAddress("glColor4sv");
	pfnAheadLib_glColor4ub = GetAddress("glColor4ub");
	pfnAheadLib_glColor4ubv = GetAddress("glColor4ubv");
	pfnAheadLib_glColor4ui = GetAddress("glColor4ui");
	pfnAheadLib_glColor4uiv = GetAddress("glColor4uiv");
	pfnAheadLib_glColor4us = GetAddress("glColor4us");
	pfnAheadLib_glColor4usv = GetAddress("glColor4usv");
	pfnAheadLib_glColorMask = GetAddress("glColorMask");
	pfnAheadLib_glColorMaterial = GetAddress("glColorMaterial");
	pfnAheadLib_glColorPointer = GetAddress("glColorPointer");
	pfnAheadLib_glCopyPixels = GetAddress("glCopyPixels");
	pfnAheadLib_glCopyTexImage1D = GetAddress("glCopyTexImage1D");
	pfnAheadLib_glCopyTexImage2D = GetAddress("glCopyTexImage2D");
	pfnAheadLib_glCopyTexSubImage1D = GetAddress("glCopyTexSubImage1D");
	pfnAheadLib_glCopyTexSubImage2D = GetAddress("glCopyTexSubImage2D");
	pfnAheadLib_glCullFace = GetAddress("glCullFace");
	pfnAheadLib_glDebugEntry = GetAddress("glDebugEntry");
	pfnAheadLib_glDeleteLists = GetAddress("glDeleteLists");
	pfnAheadLib_glDeleteTextures = GetAddress("glDeleteTextures");
	pfnAheadLib_glDepthFunc = GetAddress("glDepthFunc");
	pfnAheadLib_glDepthMask = GetAddress("glDepthMask");
	pfnAheadLib_glDepthRange = GetAddress("glDepthRange");
	pfnAheadLib_glDisable = GetAddress("glDisable");
	pfnAheadLib_glDisableClientState = GetAddress("glDisableClientState");
	pfnAheadLib_glDrawArrays = GetAddress("glDrawArrays");
	pfnAheadLib_glDrawBuffer = GetAddress("glDrawBuffer");
	pfnAheadLib_glDrawElements = GetAddress("glDrawElements");
	pfnAheadLib_glDrawPixels = GetAddress("glDrawPixels");
	pfnAheadLib_glEdgeFlag = GetAddress("glEdgeFlag");
	pfnAheadLib_glEdgeFlagPointer = GetAddress("glEdgeFlagPointer");
	pfnAheadLib_glEdgeFlagv = GetAddress("glEdgeFlagv");
	pfnAheadLib_glEnable = GetAddress("glEnable");
	pfnAheadLib_glEnableClientState = GetAddress("glEnableClientState");
	pfnAheadLib_glEnd = GetAddress("glEnd");
	pfnAheadLib_glEndList = GetAddress("glEndList");
	pfnAheadLib_glEvalCoord1d = GetAddress("glEvalCoord1d");
	pfnAheadLib_glEvalCoord1dv = GetAddress("glEvalCoord1dv");
	pfnAheadLib_glEvalCoord1f = GetAddress("glEvalCoord1f");
	pfnAheadLib_glEvalCoord1fv = GetAddress("glEvalCoord1fv");
	pfnAheadLib_glEvalCoord2d = GetAddress("glEvalCoord2d");
	pfnAheadLib_glEvalCoord2dv = GetAddress("glEvalCoord2dv");
	pfnAheadLib_glEvalCoord2f = GetAddress("glEvalCoord2f");
	pfnAheadLib_glEvalCoord2fv = GetAddress("glEvalCoord2fv");
	pfnAheadLib_glEvalMesh1 = GetAddress("glEvalMesh1");
	pfnAheadLib_glEvalMesh2 = GetAddress("glEvalMesh2");
	pfnAheadLib_glEvalPoint1 = GetAddress("glEvalPoint1");
	pfnAheadLib_glEvalPoint2 = GetAddress("glEvalPoint2");
	pfnAheadLib_glFeedbackBuffer = GetAddress("glFeedbackBuffer");
	pfnAheadLib_glFinish = GetAddress("glFinish");
	pfnAheadLib_glFlush = GetAddress("glFlush");
	pfnAheadLib_glFogf = GetAddress("glFogf");
	pfnAheadLib_glFogfv = GetAddress("glFogfv");
	pfnAheadLib_glFogi = GetAddress("glFogi");
	pfnAheadLib_glFogiv = GetAddress("glFogiv");
	pfnAheadLib_glFrontFace = GetAddress("glFrontFace");
	pfnAheadLib_glFrustum = GetAddress("glFrustum");
	pfnAheadLib_glGenLists = GetAddress("glGenLists");
	pfnAheadLib_glGenTextures = GetAddress("glGenTextures");
	pfnAheadLib_glGetBooleanv = GetAddress("glGetBooleanv");
	pfnAheadLib_glGetClipPlane = GetAddress("glGetClipPlane");
	pfnAheadLib_glGetDoublev = GetAddress("glGetDoublev");
	pfnAheadLib_glGetError = GetAddress("glGetError");
	pfnAheadLib_glGetFloatv = GetAddress("glGetFloatv");
	pfnAheadLib_glGetIntegerv = GetAddress("glGetIntegerv");
	pfnAheadLib_glGetLightfv = GetAddress("glGetLightfv");
	pfnAheadLib_glGetLightiv = GetAddress("glGetLightiv");
	pfnAheadLib_glGetMapdv = GetAddress("glGetMapdv");
	pfnAheadLib_glGetMapfv = GetAddress("glGetMapfv");
	pfnAheadLib_glGetMapiv = GetAddress("glGetMapiv");
	pfnAheadLib_glGetMaterialfv = GetAddress("glGetMaterialfv");
	pfnAheadLib_glGetMaterialiv = GetAddress("glGetMaterialiv");
	pfnAheadLib_glGetPixelMapfv = GetAddress("glGetPixelMapfv");
	pfnAheadLib_glGetPixelMapuiv = GetAddress("glGetPixelMapuiv");
	pfnAheadLib_glGetPixelMapusv = GetAddress("glGetPixelMapusv");
	pfnAheadLib_glGetPointerv = GetAddress("glGetPointerv");
	pfnAheadLib_glGetPolygonStipple = GetAddress("glGetPolygonStipple");
	pfnAheadLib_glGetString = GetAddress("glGetString");
	pfnAheadLib_glGetTexEnvfv = GetAddress("glGetTexEnvfv");
	pfnAheadLib_glGetTexEnviv = GetAddress("glGetTexEnviv");
	pfnAheadLib_glGetTexGendv = GetAddress("glGetTexGendv");
	pfnAheadLib_glGetTexGenfv = GetAddress("glGetTexGenfv");
	pfnAheadLib_glGetTexGeniv = GetAddress("glGetTexGeniv");
	pfnAheadLib_glGetTexImage = GetAddress("glGetTexImage");
	pfnAheadLib_glGetTexLevelParameterfv = GetAddress("glGetTexLevelParameterfv");
	pfnAheadLib_glGetTexLevelParameteriv = GetAddress("glGetTexLevelParameteriv");
	pfnAheadLib_glGetTexParameterfv = GetAddress("glGetTexParameterfv");
	pfnAheadLib_glGetTexParameteriv = GetAddress("glGetTexParameteriv");
	pfnAheadLib_glHint = GetAddress("glHint");
	pfnAheadLib_glIndexMask = GetAddress("glIndexMask");
	pfnAheadLib_glIndexPointer = GetAddress("glIndexPointer");
	pfnAheadLib_glIndexd = GetAddress("glIndexd");
	pfnAheadLib_glIndexdv = GetAddress("glIndexdv");
	pfnAheadLib_glIndexf = GetAddress("glIndexf");
	pfnAheadLib_glIndexfv = GetAddress("glIndexfv");
	pfnAheadLib_glIndexi = GetAddress("glIndexi");
	pfnAheadLib_glIndexiv = GetAddress("glIndexiv");
	pfnAheadLib_glIndexs = GetAddress("glIndexs");
	pfnAheadLib_glIndexsv = GetAddress("glIndexsv");
	pfnAheadLib_glIndexub = GetAddress("glIndexub");
	pfnAheadLib_glIndexubv = GetAddress("glIndexubv");
	pfnAheadLib_glInitNames = GetAddress("glInitNames");
	pfnAheadLib_glInterleavedArrays = GetAddress("glInterleavedArrays");
	pfnAheadLib_glIsEnabled = GetAddress("glIsEnabled");
	pfnAheadLib_glIsList = GetAddress("glIsList");
	pfnAheadLib_glIsTexture = GetAddress("glIsTexture");
	pfnAheadLib_glLightModelf = GetAddress("glLightModelf");
	pfnAheadLib_glLightModelfv = GetAddress("glLightModelfv");
	pfnAheadLib_glLightModeli = GetAddress("glLightModeli");
	pfnAheadLib_glLightModeliv = GetAddress("glLightModeliv");
	pfnAheadLib_glLightf = GetAddress("glLightf");
	pfnAheadLib_glLightfv = GetAddress("glLightfv");
	pfnAheadLib_glLighti = GetAddress("glLighti");
	pfnAheadLib_glLightiv = GetAddress("glLightiv");
	pfnAheadLib_glLineStipple = GetAddress("glLineStipple");
	pfnAheadLib_glLineWidth = GetAddress("glLineWidth");
	pfnAheadLib_glListBase = GetAddress("glListBase");
	pfnAheadLib_glLoadIdentity = GetAddress("glLoadIdentity");
	pfnAheadLib_glLoadMatrixd = GetAddress("glLoadMatrixd");
	pfnAheadLib_glLoadMatrixf = GetAddress("glLoadMatrixf");
	pfnAheadLib_glLoadName = GetAddress("glLoadName");
	pfnAheadLib_glLogicOp = GetAddress("glLogicOp");
	pfnAheadLib_glMap1d = GetAddress("glMap1d");
	pfnAheadLib_glMap1f = GetAddress("glMap1f");
	pfnAheadLib_glMap2d = GetAddress("glMap2d");
	pfnAheadLib_glMap2f = GetAddress("glMap2f");
	pfnAheadLib_glMapGrid1d = GetAddress("glMapGrid1d");
	pfnAheadLib_glMapGrid1f = GetAddress("glMapGrid1f");
	pfnAheadLib_glMapGrid2d = GetAddress("glMapGrid2d");
	pfnAheadLib_glMapGrid2f = GetAddress("glMapGrid2f");
	pfnAheadLib_glMaterialf = GetAddress("glMaterialf");
	pfnAheadLib_glMaterialfv = GetAddress("glMaterialfv");
	pfnAheadLib_glMateriali = GetAddress("glMateriali");
	pfnAheadLib_glMaterialiv = GetAddress("glMaterialiv");
	pfnAheadLib_glMatrixMode = GetAddress("glMatrixMode");
	pfnAheadLib_glMultMatrixd = GetAddress("glMultMatrixd");
	pfnAheadLib_glMultMatrixf = GetAddress("glMultMatrixf");
	pfnAheadLib_glNewList = GetAddress("glNewList");
	pfnAheadLib_glNormal3b = GetAddress("glNormal3b");
	pfnAheadLib_glNormal3bv = GetAddress("glNormal3bv");
	pfnAheadLib_glNormal3d = GetAddress("glNormal3d");
	pfnAheadLib_glNormal3dv = GetAddress("glNormal3dv");
	pfnAheadLib_glNormal3f = GetAddress("glNormal3f");
	pfnAheadLib_glNormal3fv = GetAddress("glNormal3fv");
	pfnAheadLib_glNormal3i = GetAddress("glNormal3i");
	pfnAheadLib_glNormal3iv = GetAddress("glNormal3iv");
	pfnAheadLib_glNormal3s = GetAddress("glNormal3s");
	pfnAheadLib_glNormal3sv = GetAddress("glNormal3sv");
	pfnAheadLib_glNormalPointer = GetAddress("glNormalPointer");
	pfnAheadLib_glOrtho = GetAddress("glOrtho");
	pfnAheadLib_glPassThrough = GetAddress("glPassThrough");
	pfnAheadLib_glPixelMapfv = GetAddress("glPixelMapfv");
	pfnAheadLib_glPixelMapuiv = GetAddress("glPixelMapuiv");
	pfnAheadLib_glPixelMapusv = GetAddress("glPixelMapusv");
	pfnAheadLib_glPixelStoref = GetAddress("glPixelStoref");
	pfnAheadLib_glPixelStorei = GetAddress("glPixelStorei");
	pfnAheadLib_glPixelTransferf = GetAddress("glPixelTransferf");
	pfnAheadLib_glPixelTransferi = GetAddress("glPixelTransferi");
	pfnAheadLib_glPixelZoom = GetAddress("glPixelZoom");
	pfnAheadLib_glPointSize = GetAddress("glPointSize");
	pfnAheadLib_glPolygonMode = GetAddress("glPolygonMode");
	pfnAheadLib_glPolygonOffset = GetAddress("glPolygonOffset");
	pfnAheadLib_glPolygonStipple = GetAddress("glPolygonStipple");
	pfnAheadLib_glPopAttrib = GetAddress("glPopAttrib");
	pfnAheadLib_glPopClientAttrib = GetAddress("glPopClientAttrib");
	pfnAheadLib_glPopMatrix = GetAddress("glPopMatrix");
	pfnAheadLib_glPopName = GetAddress("glPopName");
	pfnAheadLib_glPrioritizeTextures = GetAddress("glPrioritizeTextures");
	pfnAheadLib_glPushAttrib = GetAddress("glPushAttrib");
	pfnAheadLib_glPushClientAttrib = GetAddress("glPushClientAttrib");
	pfnAheadLib_glPushMatrix = GetAddress("glPushMatrix");
	pfnAheadLib_glPushName = GetAddress("glPushName");
	pfnAheadLib_glRasterPos2d = GetAddress("glRasterPos2d");
	pfnAheadLib_glRasterPos2dv = GetAddress("glRasterPos2dv");
	pfnAheadLib_glRasterPos2f = GetAddress("glRasterPos2f");
	pfnAheadLib_glRasterPos2fv = GetAddress("glRasterPos2fv");
	pfnAheadLib_glRasterPos2i = GetAddress("glRasterPos2i");
	pfnAheadLib_glRasterPos2iv = GetAddress("glRasterPos2iv");
	pfnAheadLib_glRasterPos2s = GetAddress("glRasterPos2s");
	pfnAheadLib_glRasterPos2sv = GetAddress("glRasterPos2sv");
	pfnAheadLib_glRasterPos3d = GetAddress("glRasterPos3d");
	pfnAheadLib_glRasterPos3dv = GetAddress("glRasterPos3dv");
	pfnAheadLib_glRasterPos3f = GetAddress("glRasterPos3f");
	pfnAheadLib_glRasterPos3fv = GetAddress("glRasterPos3fv");
	pfnAheadLib_glRasterPos3i = GetAddress("glRasterPos3i");
	pfnAheadLib_glRasterPos3iv = GetAddress("glRasterPos3iv");
	pfnAheadLib_glRasterPos3s = GetAddress("glRasterPos3s");
	pfnAheadLib_glRasterPos3sv = GetAddress("glRasterPos3sv");
	pfnAheadLib_glRasterPos4d = GetAddress("glRasterPos4d");
	pfnAheadLib_glRasterPos4dv = GetAddress("glRasterPos4dv");
	pfnAheadLib_glRasterPos4f = GetAddress("glRasterPos4f");
	pfnAheadLib_glRasterPos4fv = GetAddress("glRasterPos4fv");
	pfnAheadLib_glRasterPos4i = GetAddress("glRasterPos4i");
	pfnAheadLib_glRasterPos4iv = GetAddress("glRasterPos4iv");
	pfnAheadLib_glRasterPos4s = GetAddress("glRasterPos4s");
	pfnAheadLib_glRasterPos4sv = GetAddress("glRasterPos4sv");
	pfnAheadLib_glReadBuffer = GetAddress("glReadBuffer");
	pfnAheadLib_glReadPixels = GetAddress("glReadPixels");
	pfnAheadLib_glRectd = GetAddress("glRectd");
	pfnAheadLib_glRectdv = GetAddress("glRectdv");
	pfnAheadLib_glRectf = GetAddress("glRectf");
	pfnAheadLib_glRectfv = GetAddress("glRectfv");
	pfnAheadLib_glRecti = GetAddress("glRecti");
	pfnAheadLib_glRectiv = GetAddress("glRectiv");
	pfnAheadLib_glRects = GetAddress("glRects");
	pfnAheadLib_glRectsv = GetAddress("glRectsv");
	pfnAheadLib_glRenderMode = GetAddress("glRenderMode");
	pfnAheadLib_glRotated = GetAddress("glRotated");
	pfnAheadLib_glRotatef = GetAddress("glRotatef");
	pfnAheadLib_glScaled = GetAddress("glScaled");
	pfnAheadLib_glScalef = GetAddress("glScalef");
	pfnAheadLib_glScissor = GetAddress("glScissor");
	pfnAheadLib_glSelectBuffer = GetAddress("glSelectBuffer");
	pfnAheadLib_glShadeModel = GetAddress("glShadeModel");
	pfnAheadLib_glStencilFunc = GetAddress("glStencilFunc");
	pfnAheadLib_glStencilMask = GetAddress("glStencilMask");
	pfnAheadLib_glStencilOp = GetAddress("glStencilOp");
	pfnAheadLib_glTexCoord1d = GetAddress("glTexCoord1d");
	pfnAheadLib_glTexCoord1dv = GetAddress("glTexCoord1dv");
	pfnAheadLib_glTexCoord1f = GetAddress("glTexCoord1f");
	pfnAheadLib_glTexCoord1fv = GetAddress("glTexCoord1fv");
	pfnAheadLib_glTexCoord1i = GetAddress("glTexCoord1i");
	pfnAheadLib_glTexCoord1iv = GetAddress("glTexCoord1iv");
	pfnAheadLib_glTexCoord1s = GetAddress("glTexCoord1s");
	pfnAheadLib_glTexCoord1sv = GetAddress("glTexCoord1sv");
	pfnAheadLib_glTexCoord2d = GetAddress("glTexCoord2d");
	pfnAheadLib_glTexCoord2dv = GetAddress("glTexCoord2dv");
	pfnAheadLib_glTexCoord2f = GetAddress("glTexCoord2f");
	pfnAheadLib_glTexCoord2fv = GetAddress("glTexCoord2fv");
	pfnAheadLib_glTexCoord2i = GetAddress("glTexCoord2i");
	pfnAheadLib_glTexCoord2iv = GetAddress("glTexCoord2iv");
	pfnAheadLib_glTexCoord2s = GetAddress("glTexCoord2s");
	pfnAheadLib_glTexCoord2sv = GetAddress("glTexCoord2sv");
	pfnAheadLib_glTexCoord3d = GetAddress("glTexCoord3d");
	pfnAheadLib_glTexCoord3dv = GetAddress("glTexCoord3dv");
	pfnAheadLib_glTexCoord3f = GetAddress("glTexCoord3f");
	pfnAheadLib_glTexCoord3fv = GetAddress("glTexCoord3fv");
	pfnAheadLib_glTexCoord3i = GetAddress("glTexCoord3i");
	pfnAheadLib_glTexCoord3iv = GetAddress("glTexCoord3iv");
	pfnAheadLib_glTexCoord3s = GetAddress("glTexCoord3s");
	pfnAheadLib_glTexCoord3sv = GetAddress("glTexCoord3sv");
	pfnAheadLib_glTexCoord4d = GetAddress("glTexCoord4d");
	pfnAheadLib_glTexCoord4dv = GetAddress("glTexCoord4dv");
	pfnAheadLib_glTexCoord4f = GetAddress("glTexCoord4f");
	pfnAheadLib_glTexCoord4fv = GetAddress("glTexCoord4fv");
	pfnAheadLib_glTexCoord4i = GetAddress("glTexCoord4i");
	pfnAheadLib_glTexCoord4iv = GetAddress("glTexCoord4iv");
	pfnAheadLib_glTexCoord4s = GetAddress("glTexCoord4s");
	pfnAheadLib_glTexCoord4sv = GetAddress("glTexCoord4sv");
	pfnAheadLib_glTexCoordPointer = GetAddress("glTexCoordPointer");
	pfnAheadLib_glTexEnvf = GetAddress("glTexEnvf");
	pfnAheadLib_glTexEnvfv = GetAddress("glTexEnvfv");
	pfnAheadLib_glTexEnvi = GetAddress("glTexEnvi");
	pfnAheadLib_glTexEnviv = GetAddress("glTexEnviv");
	pfnAheadLib_glTexGend = GetAddress("glTexGend");
	pfnAheadLib_glTexGendv = GetAddress("glTexGendv");
	pfnAheadLib_glTexGenf = GetAddress("glTexGenf");
	pfnAheadLib_glTexGenfv = GetAddress("glTexGenfv");
	pfnAheadLib_glTexGeni = GetAddress("glTexGeni");
	pfnAheadLib_glTexGeniv = GetAddress("glTexGeniv");
	pfnAheadLib_glTexImage1D = GetAddress("glTexImage1D");
	pfnAheadLib_glTexImage2D = GetAddress("glTexImage2D");
	pfnAheadLib_glTexParameterf = GetAddress("glTexParameterf");
	pfnAheadLib_glTexParameterfv = GetAddress("glTexParameterfv");
	pfnAheadLib_glTexParameteri = GetAddress("glTexParameteri");
	pfnAheadLib_glTexParameteriv = GetAddress("glTexParameteriv");
	pfnAheadLib_glTexSubImage1D = GetAddress("glTexSubImage1D");
	pfnAheadLib_glTexSubImage2D = GetAddress("glTexSubImage2D");
	pfnAheadLib_glTranslated = GetAddress("glTranslated");
	pfnAheadLib_glTranslatef = GetAddress("glTranslatef");
	pfnAheadLib_glVertex2d = GetAddress("glVertex2d");
	pfnAheadLib_glVertex2dv = GetAddress("glVertex2dv");
	pfnAheadLib_glVertex2f = GetAddress("glVertex2f");
	pfnAheadLib_glVertex2fv = GetAddress("glVertex2fv");
	pfnAheadLib_glVertex2i = GetAddress("glVertex2i");
	pfnAheadLib_glVertex2iv = GetAddress("glVertex2iv");
	pfnAheadLib_glVertex2s = GetAddress("glVertex2s");
	pfnAheadLib_glVertex2sv = GetAddress("glVertex2sv");
	pfnAheadLib_glVertex3d = GetAddress("glVertex3d");
	pfnAheadLib_glVertex3dv = GetAddress("glVertex3dv");
	pfnAheadLib_glVertex3f = GetAddress("glVertex3f");
	pfnAheadLib_glVertex3fv = GetAddress("glVertex3fv");
	pfnAheadLib_glVertex3i = GetAddress("glVertex3i");
	pfnAheadLib_glVertex3iv = GetAddress("glVertex3iv");
	pfnAheadLib_glVertex3s = GetAddress("glVertex3s");
	pfnAheadLib_glVertex3sv = GetAddress("glVertex3sv");
	pfnAheadLib_glVertex4d = GetAddress("glVertex4d");
	pfnAheadLib_glVertex4dv = GetAddress("glVertex4dv");
	pfnAheadLib_glVertex4f = GetAddress("glVertex4f");
	pfnAheadLib_glVertex4fv = GetAddress("glVertex4fv");
	pfnAheadLib_glVertex4i = GetAddress("glVertex4i");
	pfnAheadLib_glVertex4iv = GetAddress("glVertex4iv");
	pfnAheadLib_glVertex4s = GetAddress("glVertex4s");
	pfnAheadLib_glVertex4sv = GetAddress("glVertex4sv");
	pfnAheadLib_glVertexPointer = GetAddress("glVertexPointer");
	pfnAheadLib_glViewport = GetAddress("glViewport");
	pfnAheadLib_wglChoosePixelFormat = GetAddress("wglChoosePixelFormat");
	pfnAheadLib_wglCopyContext = GetAddress("wglCopyContext");
	pfnAheadLib_wglCreateContext = GetAddress("wglCreateContext");
	pfnAheadLib_wglCreateLayerContext = GetAddress("wglCreateLayerContext");
	pfnAheadLib_wglDeleteContext = GetAddress("wglDeleteContext");
	pfnAheadLib_wglDescribeLayerPlane = GetAddress("wglDescribeLayerPlane");
	pfnAheadLib_wglDescribePixelFormat = GetAddress("wglDescribePixelFormat");
	pfnAheadLib_wglGetCurrentContext = GetAddress("wglGetCurrentContext");
	pfnAheadLib_wglGetCurrentDC = GetAddress("wglGetCurrentDC");
	pfnAheadLib_wglGetDefaultProcAddress = GetAddress("wglGetDefaultProcAddress");
	pfnAheadLib_wglGetLayerPaletteEntries = GetAddress("wglGetLayerPaletteEntries");
	pfnAheadLib_wglGetPixelFormat = GetAddress("wglGetPixelFormat");
	pfnAheadLib_wglGetProcAddress = GetAddress("wglGetProcAddress");
	pfnAheadLib_wglMakeCurrent = GetAddress("wglMakeCurrent");
	pfnAheadLib_wglRealizeLayerPalette = GetAddress("wglRealizeLayerPalette");
	pfnAheadLib_wglSetLayerPaletteEntries = GetAddress("wglSetLayerPaletteEntries");
	pfnAheadLib_wglSetPixelFormat = GetAddress("wglSetPixelFormat");
	pfnAheadLib_wglShareLists = GetAddress("wglShareLists");
	pfnAheadLib_wglSwapBuffers = GetAddress("wglSwapBuffers");
	pfnAheadLib_wglSwapLayerBuffers = GetAddress("wglSwapLayerBuffers");
	pfnAheadLib_wglSwapMultipleBuffers = GetAddress("wglSwapMultipleBuffers");
	pfnAheadLib_wglUseFontBitmapsA = GetAddress("wglUseFontBitmapsA");
	pfnAheadLib_wglUseFontBitmapsW = GetAddress("wglUseFontBitmapsW");
	pfnAheadLib_wglUseFontOutlinesA = GetAddress("wglUseFontOutlinesA");
	pfnAheadLib_wglUseFontOutlinesW = GetAddress("wglUseFontOutlinesW");
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


EXTERN_C __declspec(naked) void __cdecl AheadLib_GlmfBeginGlsBlock(void)
{
	__asm jmp pfnAheadLib_GlmfBeginGlsBlock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GlmfCloseMetaFile(void)
{
	__asm jmp pfnAheadLib_GlmfCloseMetaFile;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GlmfEndGlsBlock(void)
{
	__asm jmp pfnAheadLib_GlmfEndGlsBlock;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GlmfEndPlayback(void)
{
	__asm jmp pfnAheadLib_GlmfEndPlayback;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GlmfInitPlayback(void)
{
	__asm jmp pfnAheadLib_GlmfInitPlayback;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_GlmfPlayGlsRecord(void)
{
	__asm jmp pfnAheadLib_GlmfPlayGlsRecord;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glAccum(void)
{
	__asm jmp pfnAheadLib_glAccum;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glAlphaFunc(void)
{
	__asm jmp pfnAheadLib_glAlphaFunc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glAreTexturesResident(void)
{
	__asm jmp pfnAheadLib_glAreTexturesResident;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glArrayElement(void)
{
	__asm jmp pfnAheadLib_glArrayElement;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glBegin(void)
{
	__asm jmp pfnAheadLib_glBegin;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glBindTexture(void)
{
	__asm jmp pfnAheadLib_glBindTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glBitmap(void)
{
	__asm jmp pfnAheadLib_glBitmap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glBlendFunc(void)
{
	__asm jmp pfnAheadLib_glBlendFunc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCallList(void)
{
	__asm jmp pfnAheadLib_glCallList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCallLists(void)
{
	__asm jmp pfnAheadLib_glCallLists;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClear(void)
{
	__asm jmp pfnAheadLib_glClear;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClearAccum(void)
{
	__asm jmp pfnAheadLib_glClearAccum;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClearColor(void)
{
	__asm jmp pfnAheadLib_glClearColor;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClearDepth(void)
{
	__asm jmp pfnAheadLib_glClearDepth;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClearIndex(void)
{
	__asm jmp pfnAheadLib_glClearIndex;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClearStencil(void)
{
	__asm jmp pfnAheadLib_glClearStencil;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glClipPlane(void)
{
	__asm jmp pfnAheadLib_glClipPlane;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3b(void)
{
	__asm jmp pfnAheadLib_glColor3b;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3bv(void)
{
	__asm jmp pfnAheadLib_glColor3bv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3d(void)
{
	__asm jmp pfnAheadLib_glColor3d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3dv(void)
{
	__asm jmp pfnAheadLib_glColor3dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3f(void)
{
	__asm jmp pfnAheadLib_glColor3f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3fv(void)
{
	__asm jmp pfnAheadLib_glColor3fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3i(void)
{
	__asm jmp pfnAheadLib_glColor3i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3iv(void)
{
	__asm jmp pfnAheadLib_glColor3iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3s(void)
{
	__asm jmp pfnAheadLib_glColor3s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3sv(void)
{
	__asm jmp pfnAheadLib_glColor3sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3ub(void)
{
	__asm jmp pfnAheadLib_glColor3ub;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3ubv(void)
{
	__asm jmp pfnAheadLib_glColor3ubv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3ui(void)
{
	__asm jmp pfnAheadLib_glColor3ui;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3uiv(void)
{
	__asm jmp pfnAheadLib_glColor3uiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3us(void)
{
	__asm jmp pfnAheadLib_glColor3us;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor3usv(void)
{
	__asm jmp pfnAheadLib_glColor3usv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4b(void)
{
	__asm jmp pfnAheadLib_glColor4b;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4bv(void)
{
	__asm jmp pfnAheadLib_glColor4bv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4d(void)
{
	__asm jmp pfnAheadLib_glColor4d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4dv(void)
{
	__asm jmp pfnAheadLib_glColor4dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4f(void)
{
	__asm jmp pfnAheadLib_glColor4f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4fv(void)
{
	__asm jmp pfnAheadLib_glColor4fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4i(void)
{
	__asm jmp pfnAheadLib_glColor4i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4iv(void)
{
	__asm jmp pfnAheadLib_glColor4iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4s(void)
{
	__asm jmp pfnAheadLib_glColor4s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4sv(void)
{
	__asm jmp pfnAheadLib_glColor4sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4ub(void)
{
	__asm jmp pfnAheadLib_glColor4ub;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4ubv(void)
{
	__asm jmp pfnAheadLib_glColor4ubv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4ui(void)
{
	__asm jmp pfnAheadLib_glColor4ui;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4uiv(void)
{
	__asm jmp pfnAheadLib_glColor4uiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4us(void)
{
	__asm jmp pfnAheadLib_glColor4us;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColor4usv(void)
{
	__asm jmp pfnAheadLib_glColor4usv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColorMask(void)
{
	__asm jmp pfnAheadLib_glColorMask;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColorMaterial(void)
{
	__asm jmp pfnAheadLib_glColorMaterial;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glColorPointer(void)
{
	__asm jmp pfnAheadLib_glColorPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCopyPixels(void)
{
	__asm jmp pfnAheadLib_glCopyPixels;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCopyTexImage1D(void)
{
	__asm jmp pfnAheadLib_glCopyTexImage1D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCopyTexImage2D(void)
{
	__asm jmp pfnAheadLib_glCopyTexImage2D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCopyTexSubImage1D(void)
{
	__asm jmp pfnAheadLib_glCopyTexSubImage1D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCopyTexSubImage2D(void)
{
	__asm jmp pfnAheadLib_glCopyTexSubImage2D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glCullFace(void)
{
	__asm jmp pfnAheadLib_glCullFace;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDebugEntry(void)
{
	__asm jmp pfnAheadLib_glDebugEntry;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDeleteLists(void)
{
	__asm jmp pfnAheadLib_glDeleteLists;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDeleteTextures(void)
{
	__asm jmp pfnAheadLib_glDeleteTextures;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDepthFunc(void)
{
	__asm jmp pfnAheadLib_glDepthFunc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDepthMask(void)
{
	__asm jmp pfnAheadLib_glDepthMask;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDepthRange(void)
{
	__asm jmp pfnAheadLib_glDepthRange;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDisable(void)
{
	__asm jmp pfnAheadLib_glDisable;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDisableClientState(void)
{
	__asm jmp pfnAheadLib_glDisableClientState;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDrawArrays(void)
{
	__asm jmp pfnAheadLib_glDrawArrays;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDrawBuffer(void)
{
	__asm jmp pfnAheadLib_glDrawBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDrawElements(void)
{
	__asm jmp pfnAheadLib_glDrawElements;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glDrawPixels(void)
{
	__asm jmp pfnAheadLib_glDrawPixels;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEdgeFlag(void)
{
	__asm jmp pfnAheadLib_glEdgeFlag;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEdgeFlagPointer(void)
{
	__asm jmp pfnAheadLib_glEdgeFlagPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEdgeFlagv(void)
{
	__asm jmp pfnAheadLib_glEdgeFlagv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEnable(void)
{
	__asm jmp pfnAheadLib_glEnable;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEnableClientState(void)
{
	__asm jmp pfnAheadLib_glEnableClientState;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEnd(void)
{
	__asm jmp pfnAheadLib_glEnd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEndList(void)
{
	__asm jmp pfnAheadLib_glEndList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord1d(void)
{
	__asm jmp pfnAheadLib_glEvalCoord1d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord1dv(void)
{
	__asm jmp pfnAheadLib_glEvalCoord1dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord1f(void)
{
	__asm jmp pfnAheadLib_glEvalCoord1f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord1fv(void)
{
	__asm jmp pfnAheadLib_glEvalCoord1fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord2d(void)
{
	__asm jmp pfnAheadLib_glEvalCoord2d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord2dv(void)
{
	__asm jmp pfnAheadLib_glEvalCoord2dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord2f(void)
{
	__asm jmp pfnAheadLib_glEvalCoord2f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalCoord2fv(void)
{
	__asm jmp pfnAheadLib_glEvalCoord2fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalMesh1(void)
{
	__asm jmp pfnAheadLib_glEvalMesh1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalMesh2(void)
{
	__asm jmp pfnAheadLib_glEvalMesh2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalPoint1(void)
{
	__asm jmp pfnAheadLib_glEvalPoint1;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glEvalPoint2(void)
{
	__asm jmp pfnAheadLib_glEvalPoint2;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFeedbackBuffer(void)
{
	__asm jmp pfnAheadLib_glFeedbackBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFinish(void)
{
	__asm jmp pfnAheadLib_glFinish;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFlush(void)
{
	__asm jmp pfnAheadLib_glFlush;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFogf(void)
{
	__asm jmp pfnAheadLib_glFogf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFogfv(void)
{
	__asm jmp pfnAheadLib_glFogfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFogi(void)
{
	__asm jmp pfnAheadLib_glFogi;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFogiv(void)
{
	__asm jmp pfnAheadLib_glFogiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFrontFace(void)
{
	__asm jmp pfnAheadLib_glFrontFace;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glFrustum(void)
{
	__asm jmp pfnAheadLib_glFrustum;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGenLists(void)
{
	__asm jmp pfnAheadLib_glGenLists;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGenTextures(void)
{
	__asm jmp pfnAheadLib_glGenTextures;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetBooleanv(void)
{
	__asm jmp pfnAheadLib_glGetBooleanv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetClipPlane(void)
{
	__asm jmp pfnAheadLib_glGetClipPlane;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetDoublev(void)
{
	__asm jmp pfnAheadLib_glGetDoublev;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetError(void)
{
	__asm jmp pfnAheadLib_glGetError;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetFloatv(void)
{
	__asm jmp pfnAheadLib_glGetFloatv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetIntegerv(void)
{
	__asm jmp pfnAheadLib_glGetIntegerv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetLightfv(void)
{
	__asm jmp pfnAheadLib_glGetLightfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetLightiv(void)
{
	__asm jmp pfnAheadLib_glGetLightiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetMapdv(void)
{
	__asm jmp pfnAheadLib_glGetMapdv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetMapfv(void)
{
	__asm jmp pfnAheadLib_glGetMapfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetMapiv(void)
{
	__asm jmp pfnAheadLib_glGetMapiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetMaterialfv(void)
{
	__asm jmp pfnAheadLib_glGetMaterialfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetMaterialiv(void)
{
	__asm jmp pfnAheadLib_glGetMaterialiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetPixelMapfv(void)
{
	__asm jmp pfnAheadLib_glGetPixelMapfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetPixelMapuiv(void)
{
	__asm jmp pfnAheadLib_glGetPixelMapuiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetPixelMapusv(void)
{
	__asm jmp pfnAheadLib_glGetPixelMapusv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetPointerv(void)
{
	__asm jmp pfnAheadLib_glGetPointerv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetPolygonStipple(void)
{
	__asm jmp pfnAheadLib_glGetPolygonStipple;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetString(void)
{
	__asm jmp pfnAheadLib_glGetString;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexEnvfv(void)
{
	__asm jmp pfnAheadLib_glGetTexEnvfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexEnviv(void)
{
	__asm jmp pfnAheadLib_glGetTexEnviv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexGendv(void)
{
	__asm jmp pfnAheadLib_glGetTexGendv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexGenfv(void)
{
	__asm jmp pfnAheadLib_glGetTexGenfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexGeniv(void)
{
	__asm jmp pfnAheadLib_glGetTexGeniv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexImage(void)
{
	__asm jmp pfnAheadLib_glGetTexImage;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexLevelParameterfv(void)
{
	__asm jmp pfnAheadLib_glGetTexLevelParameterfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexLevelParameteriv(void)
{
	__asm jmp pfnAheadLib_glGetTexLevelParameteriv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexParameterfv(void)
{
	__asm jmp pfnAheadLib_glGetTexParameterfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glGetTexParameteriv(void)
{
	__asm jmp pfnAheadLib_glGetTexParameteriv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glHint(void)
{
	__asm jmp pfnAheadLib_glHint;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexMask(void)
{
	__asm jmp pfnAheadLib_glIndexMask;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexPointer(void)
{
	__asm jmp pfnAheadLib_glIndexPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexd(void)
{
	__asm jmp pfnAheadLib_glIndexd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexdv(void)
{
	__asm jmp pfnAheadLib_glIndexdv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexf(void)
{
	__asm jmp pfnAheadLib_glIndexf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexfv(void)
{
	__asm jmp pfnAheadLib_glIndexfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexi(void)
{
	__asm jmp pfnAheadLib_glIndexi;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexiv(void)
{
	__asm jmp pfnAheadLib_glIndexiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexs(void)
{
	__asm jmp pfnAheadLib_glIndexs;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexsv(void)
{
	__asm jmp pfnAheadLib_glIndexsv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexub(void)
{
	__asm jmp pfnAheadLib_glIndexub;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIndexubv(void)
{
	__asm jmp pfnAheadLib_glIndexubv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glInitNames(void)
{
	__asm jmp pfnAheadLib_glInitNames;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glInterleavedArrays(void)
{
	__asm jmp pfnAheadLib_glInterleavedArrays;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIsEnabled(void)
{
	__asm jmp pfnAheadLib_glIsEnabled;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIsList(void)
{
	__asm jmp pfnAheadLib_glIsList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glIsTexture(void)
{
	__asm jmp pfnAheadLib_glIsTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightModelf(void)
{
	__asm jmp pfnAheadLib_glLightModelf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightModelfv(void)
{
	__asm jmp pfnAheadLib_glLightModelfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightModeli(void)
{
	__asm jmp pfnAheadLib_glLightModeli;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightModeliv(void)
{
	__asm jmp pfnAheadLib_glLightModeliv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightf(void)
{
	__asm jmp pfnAheadLib_glLightf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightfv(void)
{
	__asm jmp pfnAheadLib_glLightfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLighti(void)
{
	__asm jmp pfnAheadLib_glLighti;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLightiv(void)
{
	__asm jmp pfnAheadLib_glLightiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLineStipple(void)
{
	__asm jmp pfnAheadLib_glLineStipple;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLineWidth(void)
{
	__asm jmp pfnAheadLib_glLineWidth;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glListBase(void)
{
	__asm jmp pfnAheadLib_glListBase;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLoadIdentity(void)
{
	__asm jmp pfnAheadLib_glLoadIdentity;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLoadMatrixd(void)
{
	__asm jmp pfnAheadLib_glLoadMatrixd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLoadMatrixf(void)
{
	__asm jmp pfnAheadLib_glLoadMatrixf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLoadName(void)
{
	__asm jmp pfnAheadLib_glLoadName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glLogicOp(void)
{
	__asm jmp pfnAheadLib_glLogicOp;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMap1d(void)
{
	__asm jmp pfnAheadLib_glMap1d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMap1f(void)
{
	__asm jmp pfnAheadLib_glMap1f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMap2d(void)
{
	__asm jmp pfnAheadLib_glMap2d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMap2f(void)
{
	__asm jmp pfnAheadLib_glMap2f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMapGrid1d(void)
{
	__asm jmp pfnAheadLib_glMapGrid1d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMapGrid1f(void)
{
	__asm jmp pfnAheadLib_glMapGrid1f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMapGrid2d(void)
{
	__asm jmp pfnAheadLib_glMapGrid2d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMapGrid2f(void)
{
	__asm jmp pfnAheadLib_glMapGrid2f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMaterialf(void)
{
	__asm jmp pfnAheadLib_glMaterialf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMaterialfv(void)
{
	__asm jmp pfnAheadLib_glMaterialfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMateriali(void)
{
	__asm jmp pfnAheadLib_glMateriali;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMaterialiv(void)
{
	__asm jmp pfnAheadLib_glMaterialiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMatrixMode(void)
{
	__asm jmp pfnAheadLib_glMatrixMode;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMultMatrixd(void)
{
	__asm jmp pfnAheadLib_glMultMatrixd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glMultMatrixf(void)
{
	__asm jmp pfnAheadLib_glMultMatrixf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNewList(void)
{
	__asm jmp pfnAheadLib_glNewList;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3b(void)
{
	__asm jmp pfnAheadLib_glNormal3b;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3bv(void)
{
	__asm jmp pfnAheadLib_glNormal3bv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3d(void)
{
	__asm jmp pfnAheadLib_glNormal3d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3dv(void)
{
	__asm jmp pfnAheadLib_glNormal3dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3f(void)
{
	__asm jmp pfnAheadLib_glNormal3f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3fv(void)
{
	__asm jmp pfnAheadLib_glNormal3fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3i(void)
{
	__asm jmp pfnAheadLib_glNormal3i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3iv(void)
{
	__asm jmp pfnAheadLib_glNormal3iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3s(void)
{
	__asm jmp pfnAheadLib_glNormal3s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormal3sv(void)
{
	__asm jmp pfnAheadLib_glNormal3sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glNormalPointer(void)
{
	__asm jmp pfnAheadLib_glNormalPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glOrtho(void)
{
	__asm jmp pfnAheadLib_glOrtho;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPassThrough(void)
{
	__asm jmp pfnAheadLib_glPassThrough;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelMapfv(void)
{
	__asm jmp pfnAheadLib_glPixelMapfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelMapuiv(void)
{
	__asm jmp pfnAheadLib_glPixelMapuiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelMapusv(void)
{
	__asm jmp pfnAheadLib_glPixelMapusv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelStoref(void)
{
	__asm jmp pfnAheadLib_glPixelStoref;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelStorei(void)
{
	__asm jmp pfnAheadLib_glPixelStorei;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelTransferf(void)
{
	__asm jmp pfnAheadLib_glPixelTransferf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelTransferi(void)
{
	__asm jmp pfnAheadLib_glPixelTransferi;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPixelZoom(void)
{
	__asm jmp pfnAheadLib_glPixelZoom;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPointSize(void)
{
	__asm jmp pfnAheadLib_glPointSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPolygonMode(void)
{
	__asm jmp pfnAheadLib_glPolygonMode;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPolygonOffset(void)
{
	__asm jmp pfnAheadLib_glPolygonOffset;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPolygonStipple(void)
{
	__asm jmp pfnAheadLib_glPolygonStipple;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPopAttrib(void)
{
	__asm jmp pfnAheadLib_glPopAttrib;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPopClientAttrib(void)
{
	__asm jmp pfnAheadLib_glPopClientAttrib;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPopMatrix(void)
{
	__asm jmp pfnAheadLib_glPopMatrix;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPopName(void)
{
	__asm jmp pfnAheadLib_glPopName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPrioritizeTextures(void)
{
	__asm jmp pfnAheadLib_glPrioritizeTextures;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPushAttrib(void)
{
	__asm jmp pfnAheadLib_glPushAttrib;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPushClientAttrib(void)
{
	__asm jmp pfnAheadLib_glPushClientAttrib;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPushMatrix(void)
{
	__asm jmp pfnAheadLib_glPushMatrix;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glPushName(void)
{
	__asm jmp pfnAheadLib_glPushName;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2d(void)
{
	__asm jmp pfnAheadLib_glRasterPos2d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2dv(void)
{
	__asm jmp pfnAheadLib_glRasterPos2dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2f(void)
{
	__asm jmp pfnAheadLib_glRasterPos2f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2fv(void)
{
	__asm jmp pfnAheadLib_glRasterPos2fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2i(void)
{
	__asm jmp pfnAheadLib_glRasterPos2i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2iv(void)
{
	__asm jmp pfnAheadLib_glRasterPos2iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2s(void)
{
	__asm jmp pfnAheadLib_glRasterPos2s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos2sv(void)
{
	__asm jmp pfnAheadLib_glRasterPos2sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3d(void)
{
	__asm jmp pfnAheadLib_glRasterPos3d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3dv(void)
{
	__asm jmp pfnAheadLib_glRasterPos3dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3f(void)
{
	__asm jmp pfnAheadLib_glRasterPos3f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3fv(void)
{
	__asm jmp pfnAheadLib_glRasterPos3fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3i(void)
{
	__asm jmp pfnAheadLib_glRasterPos3i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3iv(void)
{
	__asm jmp pfnAheadLib_glRasterPos3iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3s(void)
{
	__asm jmp pfnAheadLib_glRasterPos3s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos3sv(void)
{
	__asm jmp pfnAheadLib_glRasterPos3sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4d(void)
{
	__asm jmp pfnAheadLib_glRasterPos4d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4dv(void)
{
	__asm jmp pfnAheadLib_glRasterPos4dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4f(void)
{
	__asm jmp pfnAheadLib_glRasterPos4f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4fv(void)
{
	__asm jmp pfnAheadLib_glRasterPos4fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4i(void)
{
	__asm jmp pfnAheadLib_glRasterPos4i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4iv(void)
{
	__asm jmp pfnAheadLib_glRasterPos4iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4s(void)
{
	__asm jmp pfnAheadLib_glRasterPos4s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRasterPos4sv(void)
{
	__asm jmp pfnAheadLib_glRasterPos4sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glReadBuffer(void)
{
	__asm jmp pfnAheadLib_glReadBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glReadPixels(void)
{
	__asm jmp pfnAheadLib_glReadPixels;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRectd(void)
{
	__asm jmp pfnAheadLib_glRectd;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRectdv(void)
{
	__asm jmp pfnAheadLib_glRectdv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRectf(void)
{
	__asm jmp pfnAheadLib_glRectf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRectfv(void)
{
	__asm jmp pfnAheadLib_glRectfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRecti(void)
{
	__asm jmp pfnAheadLib_glRecti;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRectiv(void)
{
	__asm jmp pfnAheadLib_glRectiv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRects(void)
{
	__asm jmp pfnAheadLib_glRects;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRectsv(void)
{
	__asm jmp pfnAheadLib_glRectsv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRenderMode(void)
{
	__asm jmp pfnAheadLib_glRenderMode;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRotated(void)
{
	__asm jmp pfnAheadLib_glRotated;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glRotatef(void)
{
	__asm jmp pfnAheadLib_glRotatef;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glScaled(void)
{
	__asm jmp pfnAheadLib_glScaled;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glScalef(void)
{
	__asm jmp pfnAheadLib_glScalef;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glScissor(void)
{
	__asm jmp pfnAheadLib_glScissor;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glSelectBuffer(void)
{
	__asm jmp pfnAheadLib_glSelectBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glShadeModel(void)
{
	__asm jmp pfnAheadLib_glShadeModel;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glStencilFunc(void)
{
	__asm jmp pfnAheadLib_glStencilFunc;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glStencilMask(void)
{
	__asm jmp pfnAheadLib_glStencilMask;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glStencilOp(void)
{
	__asm jmp pfnAheadLib_glStencilOp;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1d(void)
{
	__asm jmp pfnAheadLib_glTexCoord1d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1dv(void)
{
	__asm jmp pfnAheadLib_glTexCoord1dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1f(void)
{
	__asm jmp pfnAheadLib_glTexCoord1f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1fv(void)
{
	__asm jmp pfnAheadLib_glTexCoord1fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1i(void)
{
	__asm jmp pfnAheadLib_glTexCoord1i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1iv(void)
{
	__asm jmp pfnAheadLib_glTexCoord1iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1s(void)
{
	__asm jmp pfnAheadLib_glTexCoord1s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord1sv(void)
{
	__asm jmp pfnAheadLib_glTexCoord1sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2d(void)
{
	__asm jmp pfnAheadLib_glTexCoord2d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2dv(void)
{
	__asm jmp pfnAheadLib_glTexCoord2dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2f(void)
{
	__asm jmp pfnAheadLib_glTexCoord2f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2fv(void)
{
	__asm jmp pfnAheadLib_glTexCoord2fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2i(void)
{
	__asm jmp pfnAheadLib_glTexCoord2i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2iv(void)
{
	__asm jmp pfnAheadLib_glTexCoord2iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2s(void)
{
	__asm jmp pfnAheadLib_glTexCoord2s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord2sv(void)
{
	__asm jmp pfnAheadLib_glTexCoord2sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3d(void)
{
	__asm jmp pfnAheadLib_glTexCoord3d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3dv(void)
{
	__asm jmp pfnAheadLib_glTexCoord3dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3f(void)
{
	__asm jmp pfnAheadLib_glTexCoord3f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3fv(void)
{
	__asm jmp pfnAheadLib_glTexCoord3fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3i(void)
{
	__asm jmp pfnAheadLib_glTexCoord3i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3iv(void)
{
	__asm jmp pfnAheadLib_glTexCoord3iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3s(void)
{
	__asm jmp pfnAheadLib_glTexCoord3s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord3sv(void)
{
	__asm jmp pfnAheadLib_glTexCoord3sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4d(void)
{
	__asm jmp pfnAheadLib_glTexCoord4d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4dv(void)
{
	__asm jmp pfnAheadLib_glTexCoord4dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4f(void)
{
	__asm jmp pfnAheadLib_glTexCoord4f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4fv(void)
{
	__asm jmp pfnAheadLib_glTexCoord4fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4i(void)
{
	__asm jmp pfnAheadLib_glTexCoord4i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4iv(void)
{
	__asm jmp pfnAheadLib_glTexCoord4iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4s(void)
{
	__asm jmp pfnAheadLib_glTexCoord4s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoord4sv(void)
{
	__asm jmp pfnAheadLib_glTexCoord4sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexCoordPointer(void)
{
	__asm jmp pfnAheadLib_glTexCoordPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexEnvf(void)
{
	__asm jmp pfnAheadLib_glTexEnvf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexEnvfv(void)
{
	__asm jmp pfnAheadLib_glTexEnvfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexEnvi(void)
{
	__asm jmp pfnAheadLib_glTexEnvi;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexEnviv(void)
{
	__asm jmp pfnAheadLib_glTexEnviv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexGend(void)
{
	__asm jmp pfnAheadLib_glTexGend;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexGendv(void)
{
	__asm jmp pfnAheadLib_glTexGendv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexGenf(void)
{
	__asm jmp pfnAheadLib_glTexGenf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexGenfv(void)
{
	__asm jmp pfnAheadLib_glTexGenfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexGeni(void)
{
	__asm jmp pfnAheadLib_glTexGeni;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexGeniv(void)
{
	__asm jmp pfnAheadLib_glTexGeniv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexImage1D(void)
{
	__asm jmp pfnAheadLib_glTexImage1D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexImage2D(void)
{
	__asm jmp pfnAheadLib_glTexImage2D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexParameterf(void)
{
	__asm jmp pfnAheadLib_glTexParameterf;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexParameterfv(void)
{
	__asm jmp pfnAheadLib_glTexParameterfv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexParameteri(void)
{
	__asm jmp pfnAheadLib_glTexParameteri;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexParameteriv(void)
{
	__asm jmp pfnAheadLib_glTexParameteriv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexSubImage1D(void)
{
	__asm jmp pfnAheadLib_glTexSubImage1D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTexSubImage2D(void)
{
	__asm jmp pfnAheadLib_glTexSubImage2D;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTranslated(void)
{
	__asm jmp pfnAheadLib_glTranslated;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glTranslatef(void)
{
	__asm jmp pfnAheadLib_glTranslatef;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2d(void)
{
	__asm jmp pfnAheadLib_glVertex2d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2dv(void)
{
	__asm jmp pfnAheadLib_glVertex2dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2f(void)
{
	__asm jmp pfnAheadLib_glVertex2f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2fv(void)
{
	__asm jmp pfnAheadLib_glVertex2fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2i(void)
{
	__asm jmp pfnAheadLib_glVertex2i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2iv(void)
{
	__asm jmp pfnAheadLib_glVertex2iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2s(void)
{
	__asm jmp pfnAheadLib_glVertex2s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex2sv(void)
{
	__asm jmp pfnAheadLib_glVertex2sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3d(void)
{
	__asm jmp pfnAheadLib_glVertex3d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3dv(void)
{
	__asm jmp pfnAheadLib_glVertex3dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3f(void)
{
	__asm jmp pfnAheadLib_glVertex3f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3fv(void)
{
	__asm jmp pfnAheadLib_glVertex3fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3i(void)
{
	__asm jmp pfnAheadLib_glVertex3i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3iv(void)
{
	__asm jmp pfnAheadLib_glVertex3iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3s(void)
{
	__asm jmp pfnAheadLib_glVertex3s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex3sv(void)
{
	__asm jmp pfnAheadLib_glVertex3sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4d(void)
{
	__asm jmp pfnAheadLib_glVertex4d;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4dv(void)
{
	__asm jmp pfnAheadLib_glVertex4dv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4f(void)
{
	__asm jmp pfnAheadLib_glVertex4f;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4fv(void)
{
	__asm jmp pfnAheadLib_glVertex4fv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4i(void)
{
	__asm jmp pfnAheadLib_glVertex4i;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4iv(void)
{
	__asm jmp pfnAheadLib_glVertex4iv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4s(void)
{
	__asm jmp pfnAheadLib_glVertex4s;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertex4sv(void)
{
	__asm jmp pfnAheadLib_glVertex4sv;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glVertexPointer(void)
{
	__asm jmp pfnAheadLib_glVertexPointer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_glViewport(void)
{
	__asm jmp pfnAheadLib_glViewport;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglChoosePixelFormat(void)
{
	__asm jmp pfnAheadLib_wglChoosePixelFormat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglCopyContext(void)
{
	__asm jmp pfnAheadLib_wglCopyContext;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglCreateContext(void)
{
	__asm jmp pfnAheadLib_wglCreateContext;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglCreateLayerContext(void)
{
	__asm jmp pfnAheadLib_wglCreateLayerContext;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglDeleteContext(void)
{
	__asm jmp pfnAheadLib_wglDeleteContext;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglDescribeLayerPlane(void)
{
	__asm jmp pfnAheadLib_wglDescribeLayerPlane;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglDescribePixelFormat(void)
{
	__asm jmp pfnAheadLib_wglDescribePixelFormat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglGetCurrentContext(void)
{
	__asm jmp pfnAheadLib_wglGetCurrentContext;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglGetCurrentDC(void)
{
	__asm jmp pfnAheadLib_wglGetCurrentDC;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglGetDefaultProcAddress(void)
{
	__asm jmp pfnAheadLib_wglGetDefaultProcAddress;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglGetLayerPaletteEntries(void)
{
	__asm jmp pfnAheadLib_wglGetLayerPaletteEntries;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglGetPixelFormat(void)
{
	__asm jmp pfnAheadLib_wglGetPixelFormat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglGetProcAddress(void)
{
	__asm jmp pfnAheadLib_wglGetProcAddress;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglMakeCurrent(void)
{
	__asm jmp pfnAheadLib_wglMakeCurrent;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglRealizeLayerPalette(void)
{
	__asm jmp pfnAheadLib_wglRealizeLayerPalette;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglSetLayerPaletteEntries(void)
{
	__asm jmp pfnAheadLib_wglSetLayerPaletteEntries;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglSetPixelFormat(void)
{
	__asm jmp pfnAheadLib_wglSetPixelFormat;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglShareLists(void)
{
	__asm jmp pfnAheadLib_wglShareLists;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglSwapBuffers(void)
{
	__asm jmp pfnAheadLib_wglSwapBuffers;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglSwapLayerBuffers(void)
{
	__asm jmp pfnAheadLib_wglSwapLayerBuffers;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglSwapMultipleBuffers(void)
{
	__asm jmp pfnAheadLib_wglSwapMultipleBuffers;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglUseFontBitmapsA(void)
{
	__asm jmp pfnAheadLib_wglUseFontBitmapsA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglUseFontBitmapsW(void)
{
	__asm jmp pfnAheadLib_wglUseFontBitmapsW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglUseFontOutlinesA(void)
{
	__asm jmp pfnAheadLib_wglUseFontOutlinesA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_wglUseFontOutlinesW(void)
{
	__asm jmp pfnAheadLib_wglUseFontOutlinesW;
}

