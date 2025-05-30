
//
// created by AheadLib
// github:https://github.com/strivexjun/AheadLib-x86-x64
//

#include <windows.h>
#include <Shlwapi.h>

#pragma comment( lib, "Shlwapi.lib")

#pragma comment(linker, "/EXPORT:D3DXAssembleShader=_AheadLib_D3DXAssembleShader,@1")
#pragma comment(linker, "/EXPORT:D3DXAssembleShaderFromFileA=_AheadLib_D3DXAssembleShaderFromFileA,@2")
#pragma comment(linker, "/EXPORT:D3DXAssembleShaderFromFileW=_AheadLib_D3DXAssembleShaderFromFileW,@3")
#pragma comment(linker, "/EXPORT:D3DXBoxBoundProbe=_AheadLib_D3DXBoxBoundProbe,@4")
#pragma comment(linker, "/EXPORT:D3DXCheckCubeTextureRequirements=_AheadLib_D3DXCheckCubeTextureRequirements,@5")
#pragma comment(linker, "/EXPORT:D3DXCheckTextureRequirements=_AheadLib_D3DXCheckTextureRequirements,@6")
#pragma comment(linker, "/EXPORT:D3DXCheckVolumeTextureRequirements=_AheadLib_D3DXCheckVolumeTextureRequirements,@7")
#pragma comment(linker, "/EXPORT:D3DXCleanMesh=_AheadLib_D3DXCleanMesh,@8")
#pragma comment(linker, "/EXPORT:D3DXColorAdjustContrast=_AheadLib_D3DXColorAdjustContrast,@9")
#pragma comment(linker, "/EXPORT:D3DXColorAdjustSaturation=_AheadLib_D3DXColorAdjustSaturation,@10")
#pragma comment(linker, "/EXPORT:D3DXCompileEffect=_AheadLib_D3DXCompileEffect,@11")
#pragma comment(linker, "/EXPORT:D3DXCompileEffectFromFileA=_AheadLib_D3DXCompileEffectFromFileA,@12")
#pragma comment(linker, "/EXPORT:D3DXCompileEffectFromFileW=_AheadLib_D3DXCompileEffectFromFileW,@13")
#pragma comment(linker, "/EXPORT:D3DXComputeBoundingBox=_AheadLib_D3DXComputeBoundingBox,@14")
#pragma comment(linker, "/EXPORT:D3DXComputeBoundingSphere=_AheadLib_D3DXComputeBoundingSphere,@15")
#pragma comment(linker, "/EXPORT:D3DXComputeNormals=_AheadLib_D3DXComputeNormals,@16")
#pragma comment(linker, "/EXPORT:D3DXCreateBox=_AheadLib_D3DXCreateBox,@17")
#pragma comment(linker, "/EXPORT:D3DXCreateBuffer=_AheadLib_D3DXCreateBuffer,@18")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTexture=_AheadLib_D3DXCreateCubeTexture,@19")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTextureFromFileA=_AheadLib_D3DXCreateCubeTextureFromFileA,@20")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTextureFromFileExA=_AheadLib_D3DXCreateCubeTextureFromFileExA,@21")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTextureFromFileExW=_AheadLib_D3DXCreateCubeTextureFromFileExW,@22")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTextureFromFileInMemory=_AheadLib_D3DXCreateCubeTextureFromFileInMemory,@23")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTextureFromFileInMemoryEx=_AheadLib_D3DXCreateCubeTextureFromFileInMemoryEx,@24")
#pragma comment(linker, "/EXPORT:D3DXCreateCubeTextureFromFileW=_AheadLib_D3DXCreateCubeTextureFromFileW,@25")
#pragma comment(linker, "/EXPORT:D3DXCreateCylinder=_AheadLib_D3DXCreateCylinder,@26")
#pragma comment(linker, "/EXPORT:D3DXCreateEffect=_AheadLib_D3DXCreateEffect,@27")
#pragma comment(linker, "/EXPORT:D3DXCreateFont=_AheadLib_D3DXCreateFont,@28")
#pragma comment(linker, "/EXPORT:D3DXCreateFontIndirect=_AheadLib_D3DXCreateFontIndirect,@29")
#pragma comment(linker, "/EXPORT:D3DXCreateMatrixStack=_AheadLib_D3DXCreateMatrixStack,@30")
#pragma comment(linker, "/EXPORT:D3DXCreateMesh=_AheadLib_D3DXCreateMesh,@31")
#pragma comment(linker, "/EXPORT:D3DXCreateMeshFVF=_AheadLib_D3DXCreateMeshFVF,@32")
#pragma comment(linker, "/EXPORT:D3DXCreatePMeshFromStream=_AheadLib_D3DXCreatePMeshFromStream,@33")
#pragma comment(linker, "/EXPORT:D3DXCreatePolygon=_AheadLib_D3DXCreatePolygon,@34")
#pragma comment(linker, "/EXPORT:D3DXCreateRenderToEnvMap=_AheadLib_D3DXCreateRenderToEnvMap,@35")
#pragma comment(linker, "/EXPORT:D3DXCreateRenderToSurface=_AheadLib_D3DXCreateRenderToSurface,@36")
#pragma comment(linker, "/EXPORT:D3DXCreateSPMesh=_AheadLib_D3DXCreateSPMesh,@37")
#pragma comment(linker, "/EXPORT:D3DXCreateSkinMesh=_AheadLib_D3DXCreateSkinMesh,@38")
#pragma comment(linker, "/EXPORT:D3DXCreateSkinMeshFVF=_AheadLib_D3DXCreateSkinMeshFVF,@39")
#pragma comment(linker, "/EXPORT:D3DXCreateSkinMeshFromMesh=_AheadLib_D3DXCreateSkinMeshFromMesh,@40")
#pragma comment(linker, "/EXPORT:D3DXCreateSphere=_AheadLib_D3DXCreateSphere,@41")
#pragma comment(linker, "/EXPORT:D3DXCreateSprite=_AheadLib_D3DXCreateSprite,@42")
#pragma comment(linker, "/EXPORT:D3DXCreateTeapot=_AheadLib_D3DXCreateTeapot,@43")
#pragma comment(linker, "/EXPORT:D3DXCreateTextA=_AheadLib_D3DXCreateTextA,@44")
#pragma comment(linker, "/EXPORT:D3DXCreateTextW=_AheadLib_D3DXCreateTextW,@45")
#pragma comment(linker, "/EXPORT:D3DXCreateTexture=_AheadLib_D3DXCreateTexture,@46")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromFileA=_AheadLib_D3DXCreateTextureFromFileA,@47")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromFileExA=_AheadLib_D3DXCreateTextureFromFileExA,@48")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromFileExW=_AheadLib_D3DXCreateTextureFromFileExW,@49")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromFileInMemory=_AheadLib_D3DXCreateTextureFromFileInMemory,@50")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromFileInMemoryEx=_AheadLib_D3DXCreateTextureFromFileInMemoryEx,@51")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromFileW=_AheadLib_D3DXCreateTextureFromFileW,@52")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromResourceA=_AheadLib_D3DXCreateTextureFromResourceA,@53")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromResourceExA=_AheadLib_D3DXCreateTextureFromResourceExA,@54")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromResourceExW=_AheadLib_D3DXCreateTextureFromResourceExW,@55")
#pragma comment(linker, "/EXPORT:D3DXCreateTextureFromResourceW=_AheadLib_D3DXCreateTextureFromResourceW,@56")
#pragma comment(linker, "/EXPORT:D3DXCreateTorus=_AheadLib_D3DXCreateTorus,@57")
#pragma comment(linker, "/EXPORT:D3DXCreateVolumeTexture=_AheadLib_D3DXCreateVolumeTexture,@58")
#pragma comment(linker, "/EXPORT:D3DXDeclaratorFromFVF=_AheadLib_D3DXDeclaratorFromFVF,@59")
#pragma comment(linker, "/EXPORT:D3DXFVFFromDeclarator=_AheadLib_D3DXFVFFromDeclarator,@60")
#pragma comment(linker, "/EXPORT:D3DXFilterCubeTexture=_AheadLib_D3DXFilterCubeTexture,@61")
#pragma comment(linker, "/EXPORT:D3DXFilterTexture=_AheadLib_D3DXFilterTexture,@62")
#pragma comment(linker, "/EXPORT:D3DXFilterVolumeTexture=_AheadLib_D3DXFilterVolumeTexture,@63")
#pragma comment(linker, "/EXPORT:D3DXGeneratePMesh=_AheadLib_D3DXGeneratePMesh,@64")
#pragma comment(linker, "/EXPORT:D3DXGetErrorStringA=_AheadLib_D3DXGetErrorStringA,@65")
#pragma comment(linker, "/EXPORT:D3DXGetErrorStringW=_AheadLib_D3DXGetErrorStringW,@66")
#pragma comment(linker, "/EXPORT:D3DXGetFVFVertexSize=_AheadLib_D3DXGetFVFVertexSize,@67")
#pragma comment(linker, "/EXPORT:D3DXIntersect=_AheadLib_D3DXIntersect,@68")
#pragma comment(linker, "/EXPORT:D3DXLoadMeshFromX=_AheadLib_D3DXLoadMeshFromX,@69")
#pragma comment(linker, "/EXPORT:D3DXLoadMeshFromXof=_AheadLib_D3DXLoadMeshFromXof,@70")
#pragma comment(linker, "/EXPORT:D3DXLoadSkinMeshFromXof=_AheadLib_D3DXLoadSkinMeshFromXof,@71")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromFileA=_AheadLib_D3DXLoadSurfaceFromFileA,@72")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromFileInMemory=_AheadLib_D3DXLoadSurfaceFromFileInMemory,@73")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromFileW=_AheadLib_D3DXLoadSurfaceFromFileW,@74")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromMemory=_AheadLib_D3DXLoadSurfaceFromMemory,@75")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromResourceA=_AheadLib_D3DXLoadSurfaceFromResourceA,@76")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromResourceW=_AheadLib_D3DXLoadSurfaceFromResourceW,@77")
#pragma comment(linker, "/EXPORT:D3DXLoadSurfaceFromSurface=_AheadLib_D3DXLoadSurfaceFromSurface,@78")
#pragma comment(linker, "/EXPORT:D3DXLoadVolumeFromMemory=_AheadLib_D3DXLoadVolumeFromMemory,@79")
#pragma comment(linker, "/EXPORT:D3DXLoadVolumeFromVolume=_AheadLib_D3DXLoadVolumeFromVolume,@80")
#pragma comment(linker, "/EXPORT:D3DXMatrixAffineTransformation=_AheadLib_D3DXMatrixAffineTransformation,@81")
#pragma comment(linker, "/EXPORT:D3DXMatrixInverse=_AheadLib_D3DXMatrixInverse,@82")
#pragma comment(linker, "/EXPORT:D3DXMatrixLookAtLH=_AheadLib_D3DXMatrixLookAtLH,@83")
#pragma comment(linker, "/EXPORT:D3DXMatrixLookAtRH=_AheadLib_D3DXMatrixLookAtRH,@84")
#pragma comment(linker, "/EXPORT:D3DXMatrixMultiply=_AheadLib_D3DXMatrixMultiply,@85")
#pragma comment(linker, "/EXPORT:D3DXMatrixOrthoLH=_AheadLib_D3DXMatrixOrthoLH,@86")
#pragma comment(linker, "/EXPORT:D3DXMatrixOrthoOffCenterLH=_AheadLib_D3DXMatrixOrthoOffCenterLH,@87")
#pragma comment(linker, "/EXPORT:D3DXMatrixOrthoOffCenterRH=_AheadLib_D3DXMatrixOrthoOffCenterRH,@88")
#pragma comment(linker, "/EXPORT:D3DXMatrixOrthoRH=_AheadLib_D3DXMatrixOrthoRH,@89")
#pragma comment(linker, "/EXPORT:D3DXMatrixPerspectiveFovLH=_AheadLib_D3DXMatrixPerspectiveFovLH,@90")
#pragma comment(linker, "/EXPORT:D3DXMatrixPerspectiveFovRH=_AheadLib_D3DXMatrixPerspectiveFovRH,@91")
#pragma comment(linker, "/EXPORT:D3DXMatrixPerspectiveLH=_AheadLib_D3DXMatrixPerspectiveLH,@92")
#pragma comment(linker, "/EXPORT:D3DXMatrixPerspectiveOffCenterLH=_AheadLib_D3DXMatrixPerspectiveOffCenterLH,@93")
#pragma comment(linker, "/EXPORT:D3DXMatrixPerspectiveOffCenterRH=_AheadLib_D3DXMatrixPerspectiveOffCenterRH,@94")
#pragma comment(linker, "/EXPORT:D3DXMatrixPerspectiveRH=_AheadLib_D3DXMatrixPerspectiveRH,@95")
#pragma comment(linker, "/EXPORT:D3DXMatrixReflect=_AheadLib_D3DXMatrixReflect,@96")
#pragma comment(linker, "/EXPORT:D3DXMatrixRotationAxis=_AheadLib_D3DXMatrixRotationAxis,@97")
#pragma comment(linker, "/EXPORT:D3DXMatrixRotationQuaternion=_AheadLib_D3DXMatrixRotationQuaternion,@98")
#pragma comment(linker, "/EXPORT:D3DXMatrixRotationX=_AheadLib_D3DXMatrixRotationX,@99")
#pragma comment(linker, "/EXPORT:D3DXMatrixRotationY=_AheadLib_D3DXMatrixRotationY,@100")
#pragma comment(linker, "/EXPORT:D3DXMatrixRotationYawPitchRoll=_AheadLib_D3DXMatrixRotationYawPitchRoll,@101")
#pragma comment(linker, "/EXPORT:D3DXMatrixRotationZ=_AheadLib_D3DXMatrixRotationZ,@102")
#pragma comment(linker, "/EXPORT:D3DXMatrixScaling=_AheadLib_D3DXMatrixScaling,@103")
#pragma comment(linker, "/EXPORT:D3DXMatrixShadow=_AheadLib_D3DXMatrixShadow,@104")
#pragma comment(linker, "/EXPORT:D3DXMatrixTransformation=_AheadLib_D3DXMatrixTransformation,@105")
#pragma comment(linker, "/EXPORT:D3DXMatrixTranslation=_AheadLib_D3DXMatrixTranslation,@106")
#pragma comment(linker, "/EXPORT:D3DXMatrixTranspose=_AheadLib_D3DXMatrixTranspose,@107")
#pragma comment(linker, "/EXPORT:D3DXMatrixfDeterminant=_AheadLib_D3DXMatrixfDeterminant,@108")
#pragma comment(linker, "/EXPORT:D3DXPlaneFromPointNormal=_AheadLib_D3DXPlaneFromPointNormal,@109")
#pragma comment(linker, "/EXPORT:D3DXPlaneFromPoints=_AheadLib_D3DXPlaneFromPoints,@110")
#pragma comment(linker, "/EXPORT:D3DXPlaneIntersectLine=_AheadLib_D3DXPlaneIntersectLine,@111")
#pragma comment(linker, "/EXPORT:D3DXPlaneNormalize=_AheadLib_D3DXPlaneNormalize,@112")
#pragma comment(linker, "/EXPORT:D3DXPlaneTransform=_AheadLib_D3DXPlaneTransform,@113")
#pragma comment(linker, "/EXPORT:D3DXQuaternionBaryCentric=_AheadLib_D3DXQuaternionBaryCentric,@114")
#pragma comment(linker, "/EXPORT:D3DXQuaternionExp=_AheadLib_D3DXQuaternionExp,@115")
#pragma comment(linker, "/EXPORT:D3DXQuaternionInverse=_AheadLib_D3DXQuaternionInverse,@116")
#pragma comment(linker, "/EXPORT:D3DXQuaternionLn=_AheadLib_D3DXQuaternionLn,@117")
#pragma comment(linker, "/EXPORT:D3DXQuaternionMultiply=_AheadLib_D3DXQuaternionMultiply,@118")
#pragma comment(linker, "/EXPORT:D3DXQuaternionNormalize=_AheadLib_D3DXQuaternionNormalize,@119")
#pragma comment(linker, "/EXPORT:D3DXQuaternionRotationAxis=_AheadLib_D3DXQuaternionRotationAxis,@120")
#pragma comment(linker, "/EXPORT:D3DXQuaternionRotationMatrix=_AheadLib_D3DXQuaternionRotationMatrix,@121")
#pragma comment(linker, "/EXPORT:D3DXQuaternionRotationYawPitchRoll=_AheadLib_D3DXQuaternionRotationYawPitchRoll,@122")
#pragma comment(linker, "/EXPORT:D3DXQuaternionSlerp=_AheadLib_D3DXQuaternionSlerp,@123")
#pragma comment(linker, "/EXPORT:D3DXQuaternionSquad=_AheadLib_D3DXQuaternionSquad,@124")
#pragma comment(linker, "/EXPORT:D3DXQuaternionToAxisAngle=_AheadLib_D3DXQuaternionToAxisAngle,@125")
#pragma comment(linker, "/EXPORT:D3DXSaveMeshToX=_AheadLib_D3DXSaveMeshToX,@126")
#pragma comment(linker, "/EXPORT:D3DXSimplifyMesh=_AheadLib_D3DXSimplifyMesh,@127")
#pragma comment(linker, "/EXPORT:D3DXSphereBoundProbe=_AheadLib_D3DXSphereBoundProbe,@128")
#pragma comment(linker, "/EXPORT:D3DXTesselateMesh=_AheadLib_D3DXTesselateMesh,@129")
#pragma comment(linker, "/EXPORT:D3DXValidMesh=_AheadLib_D3DXValidMesh,@130")
#pragma comment(linker, "/EXPORT:D3DXVec2BaryCentric=_AheadLib_D3DXVec2BaryCentric,@131")
#pragma comment(linker, "/EXPORT:D3DXVec2CatmullRom=_AheadLib_D3DXVec2CatmullRom,@132")
#pragma comment(linker, "/EXPORT:D3DXVec2Hermite=_AheadLib_D3DXVec2Hermite,@133")
#pragma comment(linker, "/EXPORT:D3DXVec2Normalize=_AheadLib_D3DXVec2Normalize,@134")
#pragma comment(linker, "/EXPORT:D3DXVec2Transform=_AheadLib_D3DXVec2Transform,@135")
#pragma comment(linker, "/EXPORT:D3DXVec2TransformCoord=_AheadLib_D3DXVec2TransformCoord,@136")
#pragma comment(linker, "/EXPORT:D3DXVec2TransformNormal=_AheadLib_D3DXVec2TransformNormal,@137")
#pragma comment(linker, "/EXPORT:D3DXVec3BaryCentric=_AheadLib_D3DXVec3BaryCentric,@138")
#pragma comment(linker, "/EXPORT:D3DXVec3CatmullRom=_AheadLib_D3DXVec3CatmullRom,@139")
#pragma comment(linker, "/EXPORT:D3DXVec3Hermite=_AheadLib_D3DXVec3Hermite,@140")
#pragma comment(linker, "/EXPORT:D3DXVec3Normalize=_AheadLib_D3DXVec3Normalize,@141")
#pragma comment(linker, "/EXPORT:D3DXVec3Project=_AheadLib_D3DXVec3Project,@142")
#pragma comment(linker, "/EXPORT:D3DXVec3Transform=_AheadLib_D3DXVec3Transform,@143")
#pragma comment(linker, "/EXPORT:D3DXVec3TransformCoord=_AheadLib_D3DXVec3TransformCoord,@144")
#pragma comment(linker, "/EXPORT:D3DXVec3TransformNormal=_AheadLib_D3DXVec3TransformNormal,@145")
#pragma comment(linker, "/EXPORT:D3DXVec3Unproject=_AheadLib_D3DXVec3Unproject,@146")
#pragma comment(linker, "/EXPORT:D3DXVec4BaryCentric=_AheadLib_D3DXVec4BaryCentric,@147")
#pragma comment(linker, "/EXPORT:D3DXVec4CatmullRom=_AheadLib_D3DXVec4CatmullRom,@148")
#pragma comment(linker, "/EXPORT:D3DXVec4Cross=_AheadLib_D3DXVec4Cross,@149")
#pragma comment(linker, "/EXPORT:D3DXVec4Hermite=_AheadLib_D3DXVec4Hermite,@150")
#pragma comment(linker, "/EXPORT:D3DXVec4Normalize=_AheadLib_D3DXVec4Normalize,@151")
#pragma comment(linker, "/EXPORT:D3DXVec4Transform=_AheadLib_D3DXVec4Transform,@152")
#pragma comment(linker, "/EXPORT:D3DXWeldVertices=_AheadLib_D3DXWeldVertices,@153")


PVOID pfnAheadLib_D3DXAssembleShader;
PVOID pfnAheadLib_D3DXAssembleShaderFromFileA;
PVOID pfnAheadLib_D3DXAssembleShaderFromFileW;
PVOID pfnAheadLib_D3DXBoxBoundProbe;
PVOID pfnAheadLib_D3DXCheckCubeTextureRequirements;
PVOID pfnAheadLib_D3DXCheckTextureRequirements;
PVOID pfnAheadLib_D3DXCheckVolumeTextureRequirements;
PVOID pfnAheadLib_D3DXCleanMesh;
PVOID pfnAheadLib_D3DXColorAdjustContrast;
PVOID pfnAheadLib_D3DXColorAdjustSaturation;
PVOID pfnAheadLib_D3DXCompileEffect;
PVOID pfnAheadLib_D3DXCompileEffectFromFileA;
PVOID pfnAheadLib_D3DXCompileEffectFromFileW;
PVOID pfnAheadLib_D3DXComputeBoundingBox;
PVOID pfnAheadLib_D3DXComputeBoundingSphere;
PVOID pfnAheadLib_D3DXComputeNormals;
PVOID pfnAheadLib_D3DXCreateBox;
PVOID pfnAheadLib_D3DXCreateBuffer;
PVOID pfnAheadLib_D3DXCreateCubeTexture;
PVOID pfnAheadLib_D3DXCreateCubeTextureFromFileA;
PVOID pfnAheadLib_D3DXCreateCubeTextureFromFileExA;
PVOID pfnAheadLib_D3DXCreateCubeTextureFromFileExW;
PVOID pfnAheadLib_D3DXCreateCubeTextureFromFileInMemory;
PVOID pfnAheadLib_D3DXCreateCubeTextureFromFileInMemoryEx;
PVOID pfnAheadLib_D3DXCreateCubeTextureFromFileW;
PVOID pfnAheadLib_D3DXCreateCylinder;
PVOID pfnAheadLib_D3DXCreateEffect;
PVOID pfnAheadLib_D3DXCreateFont;
PVOID pfnAheadLib_D3DXCreateFontIndirect;
PVOID pfnAheadLib_D3DXCreateMatrixStack;
PVOID pfnAheadLib_D3DXCreateMesh;
PVOID pfnAheadLib_D3DXCreateMeshFVF;
PVOID pfnAheadLib_D3DXCreatePMeshFromStream;
PVOID pfnAheadLib_D3DXCreatePolygon;
PVOID pfnAheadLib_D3DXCreateRenderToEnvMap;
PVOID pfnAheadLib_D3DXCreateRenderToSurface;
PVOID pfnAheadLib_D3DXCreateSPMesh;
PVOID pfnAheadLib_D3DXCreateSkinMesh;
PVOID pfnAheadLib_D3DXCreateSkinMeshFVF;
PVOID pfnAheadLib_D3DXCreateSkinMeshFromMesh;
PVOID pfnAheadLib_D3DXCreateSphere;
PVOID pfnAheadLib_D3DXCreateSprite;
PVOID pfnAheadLib_D3DXCreateTeapot;
PVOID pfnAheadLib_D3DXCreateTextA;
PVOID pfnAheadLib_D3DXCreateTextW;
PVOID pfnAheadLib_D3DXCreateTexture;
PVOID pfnAheadLib_D3DXCreateTextureFromFileA;
PVOID pfnAheadLib_D3DXCreateTextureFromFileExA;
PVOID pfnAheadLib_D3DXCreateTextureFromFileExW;
PVOID pfnAheadLib_D3DXCreateTextureFromFileInMemory;
PVOID pfnAheadLib_D3DXCreateTextureFromFileInMemoryEx;
PVOID pfnAheadLib_D3DXCreateTextureFromFileW;
PVOID pfnAheadLib_D3DXCreateTextureFromResourceA;
PVOID pfnAheadLib_D3DXCreateTextureFromResourceExA;
PVOID pfnAheadLib_D3DXCreateTextureFromResourceExW;
PVOID pfnAheadLib_D3DXCreateTextureFromResourceW;
PVOID pfnAheadLib_D3DXCreateTorus;
PVOID pfnAheadLib_D3DXCreateVolumeTexture;
PVOID pfnAheadLib_D3DXDeclaratorFromFVF;
PVOID pfnAheadLib_D3DXFVFFromDeclarator;
PVOID pfnAheadLib_D3DXFilterCubeTexture;
PVOID pfnAheadLib_D3DXFilterTexture;
PVOID pfnAheadLib_D3DXFilterVolumeTexture;
PVOID pfnAheadLib_D3DXGeneratePMesh;
PVOID pfnAheadLib_D3DXGetErrorStringA;
PVOID pfnAheadLib_D3DXGetErrorStringW;
PVOID pfnAheadLib_D3DXGetFVFVertexSize;
PVOID pfnAheadLib_D3DXIntersect;
PVOID pfnAheadLib_D3DXLoadMeshFromX;
PVOID pfnAheadLib_D3DXLoadMeshFromXof;
PVOID pfnAheadLib_D3DXLoadSkinMeshFromXof;
PVOID pfnAheadLib_D3DXLoadSurfaceFromFileA;
PVOID pfnAheadLib_D3DXLoadSurfaceFromFileInMemory;
PVOID pfnAheadLib_D3DXLoadSurfaceFromFileW;
PVOID pfnAheadLib_D3DXLoadSurfaceFromMemory;
PVOID pfnAheadLib_D3DXLoadSurfaceFromResourceA;
PVOID pfnAheadLib_D3DXLoadSurfaceFromResourceW;
PVOID pfnAheadLib_D3DXLoadSurfaceFromSurface;
PVOID pfnAheadLib_D3DXLoadVolumeFromMemory;
PVOID pfnAheadLib_D3DXLoadVolumeFromVolume;
PVOID pfnAheadLib_D3DXMatrixAffineTransformation;
PVOID pfnAheadLib_D3DXMatrixInverse;
PVOID pfnAheadLib_D3DXMatrixLookAtLH;
PVOID pfnAheadLib_D3DXMatrixLookAtRH;
PVOID pfnAheadLib_D3DXMatrixMultiply;
PVOID pfnAheadLib_D3DXMatrixOrthoLH;
PVOID pfnAheadLib_D3DXMatrixOrthoOffCenterLH;
PVOID pfnAheadLib_D3DXMatrixOrthoOffCenterRH;
PVOID pfnAheadLib_D3DXMatrixOrthoRH;
PVOID pfnAheadLib_D3DXMatrixPerspectiveFovLH;
PVOID pfnAheadLib_D3DXMatrixPerspectiveFovRH;
PVOID pfnAheadLib_D3DXMatrixPerspectiveLH;
PVOID pfnAheadLib_D3DXMatrixPerspectiveOffCenterLH;
PVOID pfnAheadLib_D3DXMatrixPerspectiveOffCenterRH;
PVOID pfnAheadLib_D3DXMatrixPerspectiveRH;
PVOID pfnAheadLib_D3DXMatrixReflect;
PVOID pfnAheadLib_D3DXMatrixRotationAxis;
PVOID pfnAheadLib_D3DXMatrixRotationQuaternion;
PVOID pfnAheadLib_D3DXMatrixRotationX;
PVOID pfnAheadLib_D3DXMatrixRotationY;
PVOID pfnAheadLib_D3DXMatrixRotationYawPitchRoll;
PVOID pfnAheadLib_D3DXMatrixRotationZ;
PVOID pfnAheadLib_D3DXMatrixScaling;
PVOID pfnAheadLib_D3DXMatrixShadow;
PVOID pfnAheadLib_D3DXMatrixTransformation;
PVOID pfnAheadLib_D3DXMatrixTranslation;
PVOID pfnAheadLib_D3DXMatrixTranspose;
PVOID pfnAheadLib_D3DXMatrixfDeterminant;
PVOID pfnAheadLib_D3DXPlaneFromPointNormal;
PVOID pfnAheadLib_D3DXPlaneFromPoints;
PVOID pfnAheadLib_D3DXPlaneIntersectLine;
PVOID pfnAheadLib_D3DXPlaneNormalize;
PVOID pfnAheadLib_D3DXPlaneTransform;
PVOID pfnAheadLib_D3DXQuaternionBaryCentric;
PVOID pfnAheadLib_D3DXQuaternionExp;
PVOID pfnAheadLib_D3DXQuaternionInverse;
PVOID pfnAheadLib_D3DXQuaternionLn;
PVOID pfnAheadLib_D3DXQuaternionMultiply;
PVOID pfnAheadLib_D3DXQuaternionNormalize;
PVOID pfnAheadLib_D3DXQuaternionRotationAxis;
PVOID pfnAheadLib_D3DXQuaternionRotationMatrix;
PVOID pfnAheadLib_D3DXQuaternionRotationYawPitchRoll;
PVOID pfnAheadLib_D3DXQuaternionSlerp;
PVOID pfnAheadLib_D3DXQuaternionSquad;
PVOID pfnAheadLib_D3DXQuaternionToAxisAngle;
PVOID pfnAheadLib_D3DXSaveMeshToX;
PVOID pfnAheadLib_D3DXSimplifyMesh;
PVOID pfnAheadLib_D3DXSphereBoundProbe;
PVOID pfnAheadLib_D3DXTesselateMesh;
PVOID pfnAheadLib_D3DXValidMesh;
PVOID pfnAheadLib_D3DXVec2BaryCentric;
PVOID pfnAheadLib_D3DXVec2CatmullRom;
PVOID pfnAheadLib_D3DXVec2Hermite;
PVOID pfnAheadLib_D3DXVec2Normalize;
PVOID pfnAheadLib_D3DXVec2Transform;
PVOID pfnAheadLib_D3DXVec2TransformCoord;
PVOID pfnAheadLib_D3DXVec2TransformNormal;
PVOID pfnAheadLib_D3DXVec3BaryCentric;
PVOID pfnAheadLib_D3DXVec3CatmullRom;
PVOID pfnAheadLib_D3DXVec3Hermite;
PVOID pfnAheadLib_D3DXVec3Normalize;
PVOID pfnAheadLib_D3DXVec3Project;
PVOID pfnAheadLib_D3DXVec3Transform;
PVOID pfnAheadLib_D3DXVec3TransformCoord;
PVOID pfnAheadLib_D3DXVec3TransformNormal;
PVOID pfnAheadLib_D3DXVec3Unproject;
PVOID pfnAheadLib_D3DXVec4BaryCentric;
PVOID pfnAheadLib_D3DXVec4CatmullRom;
PVOID pfnAheadLib_D3DXVec4Cross;
PVOID pfnAheadLib_D3DXVec4Hermite;
PVOID pfnAheadLib_D3DXVec4Normalize;
PVOID pfnAheadLib_D3DXVec4Transform;
PVOID pfnAheadLib_D3DXWeldVertices;


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
	GetModuleFileName(NULL,tzPath,MAX_PATH); //获取本目录下的
	PathRemoveFileSpec(tzPath);

	//GetSystemDirectory(tzPath, MAX_PATH); //默认获取系统目录的

	lstrcat(tzPath, TEXT("\\D3DX8bor.DLL"));

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
	pfnAheadLib_D3DXAssembleShader = GetAddress("D3DXAssembleShader");
	pfnAheadLib_D3DXAssembleShaderFromFileA = GetAddress("D3DXAssembleShaderFromFileA");
	pfnAheadLib_D3DXAssembleShaderFromFileW = GetAddress("D3DXAssembleShaderFromFileW");
	pfnAheadLib_D3DXBoxBoundProbe = GetAddress("D3DXBoxBoundProbe");
	pfnAheadLib_D3DXCheckCubeTextureRequirements = GetAddress("D3DXCheckCubeTextureRequirements");
	pfnAheadLib_D3DXCheckTextureRequirements = GetAddress("D3DXCheckTextureRequirements");
	pfnAheadLib_D3DXCheckVolumeTextureRequirements = GetAddress("D3DXCheckVolumeTextureRequirements");
	pfnAheadLib_D3DXCleanMesh = GetAddress("D3DXCleanMesh");
	pfnAheadLib_D3DXColorAdjustContrast = GetAddress("D3DXColorAdjustContrast");
	pfnAheadLib_D3DXColorAdjustSaturation = GetAddress("D3DXColorAdjustSaturation");
	pfnAheadLib_D3DXCompileEffect = GetAddress("D3DXCompileEffect");
	pfnAheadLib_D3DXCompileEffectFromFileA = GetAddress("D3DXCompileEffectFromFileA");
	pfnAheadLib_D3DXCompileEffectFromFileW = GetAddress("D3DXCompileEffectFromFileW");
	pfnAheadLib_D3DXComputeBoundingBox = GetAddress("D3DXComputeBoundingBox");
	pfnAheadLib_D3DXComputeBoundingSphere = GetAddress("D3DXComputeBoundingSphere");
	pfnAheadLib_D3DXComputeNormals = GetAddress("D3DXComputeNormals");
	pfnAheadLib_D3DXCreateBox = GetAddress("D3DXCreateBox");
	pfnAheadLib_D3DXCreateBuffer = GetAddress("D3DXCreateBuffer");
	pfnAheadLib_D3DXCreateCubeTexture = GetAddress("D3DXCreateCubeTexture");
	pfnAheadLib_D3DXCreateCubeTextureFromFileA = GetAddress("D3DXCreateCubeTextureFromFileA");
	pfnAheadLib_D3DXCreateCubeTextureFromFileExA = GetAddress("D3DXCreateCubeTextureFromFileExA");
	pfnAheadLib_D3DXCreateCubeTextureFromFileExW = GetAddress("D3DXCreateCubeTextureFromFileExW");
	pfnAheadLib_D3DXCreateCubeTextureFromFileInMemory = GetAddress("D3DXCreateCubeTextureFromFileInMemory");
	pfnAheadLib_D3DXCreateCubeTextureFromFileInMemoryEx = GetAddress("D3DXCreateCubeTextureFromFileInMemoryEx");
	pfnAheadLib_D3DXCreateCubeTextureFromFileW = GetAddress("D3DXCreateCubeTextureFromFileW");
	pfnAheadLib_D3DXCreateCylinder = GetAddress("D3DXCreateCylinder");
	pfnAheadLib_D3DXCreateEffect = GetAddress("D3DXCreateEffect");
	pfnAheadLib_D3DXCreateFont = GetAddress("D3DXCreateFont");
	pfnAheadLib_D3DXCreateFontIndirect = GetAddress("D3DXCreateFontIndirect");
	pfnAheadLib_D3DXCreateMatrixStack = GetAddress("D3DXCreateMatrixStack");
	pfnAheadLib_D3DXCreateMesh = GetAddress("D3DXCreateMesh");
	pfnAheadLib_D3DXCreateMeshFVF = GetAddress("D3DXCreateMeshFVF");
	pfnAheadLib_D3DXCreatePMeshFromStream = GetAddress("D3DXCreatePMeshFromStream");
	pfnAheadLib_D3DXCreatePolygon = GetAddress("D3DXCreatePolygon");
	pfnAheadLib_D3DXCreateRenderToEnvMap = GetAddress("D3DXCreateRenderToEnvMap");
	pfnAheadLib_D3DXCreateRenderToSurface = GetAddress("D3DXCreateRenderToSurface");
	pfnAheadLib_D3DXCreateSPMesh = GetAddress("D3DXCreateSPMesh");
	pfnAheadLib_D3DXCreateSkinMesh = GetAddress("D3DXCreateSkinMesh");
	pfnAheadLib_D3DXCreateSkinMeshFVF = GetAddress("D3DXCreateSkinMeshFVF");
	pfnAheadLib_D3DXCreateSkinMeshFromMesh = GetAddress("D3DXCreateSkinMeshFromMesh");
	pfnAheadLib_D3DXCreateSphere = GetAddress("D3DXCreateSphere");
	pfnAheadLib_D3DXCreateSprite = GetAddress("D3DXCreateSprite");
	pfnAheadLib_D3DXCreateTeapot = GetAddress("D3DXCreateTeapot");
	pfnAheadLib_D3DXCreateTextA = GetAddress("D3DXCreateTextA");
	pfnAheadLib_D3DXCreateTextW = GetAddress("D3DXCreateTextW");
	pfnAheadLib_D3DXCreateTexture = GetAddress("D3DXCreateTexture");
	pfnAheadLib_D3DXCreateTextureFromFileA = GetAddress("D3DXCreateTextureFromFileA");
	pfnAheadLib_D3DXCreateTextureFromFileExA = GetAddress("D3DXCreateTextureFromFileExA");
	pfnAheadLib_D3DXCreateTextureFromFileExW = GetAddress("D3DXCreateTextureFromFileExW");
	pfnAheadLib_D3DXCreateTextureFromFileInMemory = GetAddress("D3DXCreateTextureFromFileInMemory");
	pfnAheadLib_D3DXCreateTextureFromFileInMemoryEx = GetAddress("D3DXCreateTextureFromFileInMemoryEx");
	pfnAheadLib_D3DXCreateTextureFromFileW = GetAddress("D3DXCreateTextureFromFileW");
	pfnAheadLib_D3DXCreateTextureFromResourceA = GetAddress("D3DXCreateTextureFromResourceA");
	pfnAheadLib_D3DXCreateTextureFromResourceExA = GetAddress("D3DXCreateTextureFromResourceExA");
	pfnAheadLib_D3DXCreateTextureFromResourceExW = GetAddress("D3DXCreateTextureFromResourceExW");
	pfnAheadLib_D3DXCreateTextureFromResourceW = GetAddress("D3DXCreateTextureFromResourceW");
	pfnAheadLib_D3DXCreateTorus = GetAddress("D3DXCreateTorus");
	pfnAheadLib_D3DXCreateVolumeTexture = GetAddress("D3DXCreateVolumeTexture");
	pfnAheadLib_D3DXDeclaratorFromFVF = GetAddress("D3DXDeclaratorFromFVF");
	pfnAheadLib_D3DXFVFFromDeclarator = GetAddress("D3DXFVFFromDeclarator");
	pfnAheadLib_D3DXFilterCubeTexture = GetAddress("D3DXFilterCubeTexture");
	pfnAheadLib_D3DXFilterTexture = GetAddress("D3DXFilterTexture");
	pfnAheadLib_D3DXFilterVolumeTexture = GetAddress("D3DXFilterVolumeTexture");
	pfnAheadLib_D3DXGeneratePMesh = GetAddress("D3DXGeneratePMesh");
	pfnAheadLib_D3DXGetErrorStringA = GetAddress("D3DXGetErrorStringA");
	pfnAheadLib_D3DXGetErrorStringW = GetAddress("D3DXGetErrorStringW");
	pfnAheadLib_D3DXGetFVFVertexSize = GetAddress("D3DXGetFVFVertexSize");
	pfnAheadLib_D3DXIntersect = GetAddress("D3DXIntersect");
	pfnAheadLib_D3DXLoadMeshFromX = GetAddress("D3DXLoadMeshFromX");
	pfnAheadLib_D3DXLoadMeshFromXof = GetAddress("D3DXLoadMeshFromXof");
	pfnAheadLib_D3DXLoadSkinMeshFromXof = GetAddress("D3DXLoadSkinMeshFromXof");
	pfnAheadLib_D3DXLoadSurfaceFromFileA = GetAddress("D3DXLoadSurfaceFromFileA");
	pfnAheadLib_D3DXLoadSurfaceFromFileInMemory = GetAddress("D3DXLoadSurfaceFromFileInMemory");
	pfnAheadLib_D3DXLoadSurfaceFromFileW = GetAddress("D3DXLoadSurfaceFromFileW");
	pfnAheadLib_D3DXLoadSurfaceFromMemory = GetAddress("D3DXLoadSurfaceFromMemory");
	pfnAheadLib_D3DXLoadSurfaceFromResourceA = GetAddress("D3DXLoadSurfaceFromResourceA");
	pfnAheadLib_D3DXLoadSurfaceFromResourceW = GetAddress("D3DXLoadSurfaceFromResourceW");
	pfnAheadLib_D3DXLoadSurfaceFromSurface = GetAddress("D3DXLoadSurfaceFromSurface");
	pfnAheadLib_D3DXLoadVolumeFromMemory = GetAddress("D3DXLoadVolumeFromMemory");
	pfnAheadLib_D3DXLoadVolumeFromVolume = GetAddress("D3DXLoadVolumeFromVolume");
	pfnAheadLib_D3DXMatrixAffineTransformation = GetAddress("D3DXMatrixAffineTransformation");
	pfnAheadLib_D3DXMatrixInverse = GetAddress("D3DXMatrixInverse");
	pfnAheadLib_D3DXMatrixLookAtLH = GetAddress("D3DXMatrixLookAtLH");
	pfnAheadLib_D3DXMatrixLookAtRH = GetAddress("D3DXMatrixLookAtRH");
	pfnAheadLib_D3DXMatrixMultiply = GetAddress("D3DXMatrixMultiply");
	pfnAheadLib_D3DXMatrixOrthoLH = GetAddress("D3DXMatrixOrthoLH");
	pfnAheadLib_D3DXMatrixOrthoOffCenterLH = GetAddress("D3DXMatrixOrthoOffCenterLH");
	pfnAheadLib_D3DXMatrixOrthoOffCenterRH = GetAddress("D3DXMatrixOrthoOffCenterRH");
	pfnAheadLib_D3DXMatrixOrthoRH = GetAddress("D3DXMatrixOrthoRH");
	pfnAheadLib_D3DXMatrixPerspectiveFovLH = GetAddress("D3DXMatrixPerspectiveFovLH");
	pfnAheadLib_D3DXMatrixPerspectiveFovRH = GetAddress("D3DXMatrixPerspectiveFovRH");
	pfnAheadLib_D3DXMatrixPerspectiveLH = GetAddress("D3DXMatrixPerspectiveLH");
	pfnAheadLib_D3DXMatrixPerspectiveOffCenterLH = GetAddress("D3DXMatrixPerspectiveOffCenterLH");
	pfnAheadLib_D3DXMatrixPerspectiveOffCenterRH = GetAddress("D3DXMatrixPerspectiveOffCenterRH");
	pfnAheadLib_D3DXMatrixPerspectiveRH = GetAddress("D3DXMatrixPerspectiveRH");
	pfnAheadLib_D3DXMatrixReflect = GetAddress("D3DXMatrixReflect");
	pfnAheadLib_D3DXMatrixRotationAxis = GetAddress("D3DXMatrixRotationAxis");
	pfnAheadLib_D3DXMatrixRotationQuaternion = GetAddress("D3DXMatrixRotationQuaternion");
	pfnAheadLib_D3DXMatrixRotationX = GetAddress("D3DXMatrixRotationX");
	pfnAheadLib_D3DXMatrixRotationY = GetAddress("D3DXMatrixRotationY");
	pfnAheadLib_D3DXMatrixRotationYawPitchRoll = GetAddress("D3DXMatrixRotationYawPitchRoll");
	pfnAheadLib_D3DXMatrixRotationZ = GetAddress("D3DXMatrixRotationZ");
	pfnAheadLib_D3DXMatrixScaling = GetAddress("D3DXMatrixScaling");
	pfnAheadLib_D3DXMatrixShadow = GetAddress("D3DXMatrixShadow");
	pfnAheadLib_D3DXMatrixTransformation = GetAddress("D3DXMatrixTransformation");
	pfnAheadLib_D3DXMatrixTranslation = GetAddress("D3DXMatrixTranslation");
	pfnAheadLib_D3DXMatrixTranspose = GetAddress("D3DXMatrixTranspose");
	pfnAheadLib_D3DXMatrixfDeterminant = GetAddress("D3DXMatrixfDeterminant");
	pfnAheadLib_D3DXPlaneFromPointNormal = GetAddress("D3DXPlaneFromPointNormal");
	pfnAheadLib_D3DXPlaneFromPoints = GetAddress("D3DXPlaneFromPoints");
	pfnAheadLib_D3DXPlaneIntersectLine = GetAddress("D3DXPlaneIntersectLine");
	pfnAheadLib_D3DXPlaneNormalize = GetAddress("D3DXPlaneNormalize");
	pfnAheadLib_D3DXPlaneTransform = GetAddress("D3DXPlaneTransform");
	pfnAheadLib_D3DXQuaternionBaryCentric = GetAddress("D3DXQuaternionBaryCentric");
	pfnAheadLib_D3DXQuaternionExp = GetAddress("D3DXQuaternionExp");
	pfnAheadLib_D3DXQuaternionInverse = GetAddress("D3DXQuaternionInverse");
	pfnAheadLib_D3DXQuaternionLn = GetAddress("D3DXQuaternionLn");
	pfnAheadLib_D3DXQuaternionMultiply = GetAddress("D3DXQuaternionMultiply");
	pfnAheadLib_D3DXQuaternionNormalize = GetAddress("D3DXQuaternionNormalize");
	pfnAheadLib_D3DXQuaternionRotationAxis = GetAddress("D3DXQuaternionRotationAxis");
	pfnAheadLib_D3DXQuaternionRotationMatrix = GetAddress("D3DXQuaternionRotationMatrix");
	pfnAheadLib_D3DXQuaternionRotationYawPitchRoll = GetAddress("D3DXQuaternionRotationYawPitchRoll");
	pfnAheadLib_D3DXQuaternionSlerp = GetAddress("D3DXQuaternionSlerp");
	pfnAheadLib_D3DXQuaternionSquad = GetAddress("D3DXQuaternionSquad");
	pfnAheadLib_D3DXQuaternionToAxisAngle = GetAddress("D3DXQuaternionToAxisAngle");
	pfnAheadLib_D3DXSaveMeshToX = GetAddress("D3DXSaveMeshToX");
	pfnAheadLib_D3DXSimplifyMesh = GetAddress("D3DXSimplifyMesh");
	pfnAheadLib_D3DXSphereBoundProbe = GetAddress("D3DXSphereBoundProbe");
	pfnAheadLib_D3DXTesselateMesh = GetAddress("D3DXTesselateMesh");
	pfnAheadLib_D3DXValidMesh = GetAddress("D3DXValidMesh");
	pfnAheadLib_D3DXVec2BaryCentric = GetAddress("D3DXVec2BaryCentric");
	pfnAheadLib_D3DXVec2CatmullRom = GetAddress("D3DXVec2CatmullRom");
	pfnAheadLib_D3DXVec2Hermite = GetAddress("D3DXVec2Hermite");
	pfnAheadLib_D3DXVec2Normalize = GetAddress("D3DXVec2Normalize");
	pfnAheadLib_D3DXVec2Transform = GetAddress("D3DXVec2Transform");
	pfnAheadLib_D3DXVec2TransformCoord = GetAddress("D3DXVec2TransformCoord");
	pfnAheadLib_D3DXVec2TransformNormal = GetAddress("D3DXVec2TransformNormal");
	pfnAheadLib_D3DXVec3BaryCentric = GetAddress("D3DXVec3BaryCentric");
	pfnAheadLib_D3DXVec3CatmullRom = GetAddress("D3DXVec3CatmullRom");
	pfnAheadLib_D3DXVec3Hermite = GetAddress("D3DXVec3Hermite");
	pfnAheadLib_D3DXVec3Normalize = GetAddress("D3DXVec3Normalize");
	pfnAheadLib_D3DXVec3Project = GetAddress("D3DXVec3Project");
	pfnAheadLib_D3DXVec3Transform = GetAddress("D3DXVec3Transform");
	pfnAheadLib_D3DXVec3TransformCoord = GetAddress("D3DXVec3TransformCoord");
	pfnAheadLib_D3DXVec3TransformNormal = GetAddress("D3DXVec3TransformNormal");
	pfnAheadLib_D3DXVec3Unproject = GetAddress("D3DXVec3Unproject");
	pfnAheadLib_D3DXVec4BaryCentric = GetAddress("D3DXVec4BaryCentric");
	pfnAheadLib_D3DXVec4CatmullRom = GetAddress("D3DXVec4CatmullRom");
	pfnAheadLib_D3DXVec4Cross = GetAddress("D3DXVec4Cross");
	pfnAheadLib_D3DXVec4Hermite = GetAddress("D3DXVec4Hermite");
	pfnAheadLib_D3DXVec4Normalize = GetAddress("D3DXVec4Normalize");
	pfnAheadLib_D3DXVec4Transform = GetAddress("D3DXVec4Transform");
	pfnAheadLib_D3DXWeldVertices = GetAddress("D3DXWeldVertices");
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


EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXAssembleShader(void)
{
	__asm jmp pfnAheadLib_D3DXAssembleShader;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXAssembleShaderFromFileA(void)
{
	__asm jmp pfnAheadLib_D3DXAssembleShaderFromFileA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXAssembleShaderFromFileW(void)
{
	__asm jmp pfnAheadLib_D3DXAssembleShaderFromFileW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXBoxBoundProbe(void)
{
	__asm jmp pfnAheadLib_D3DXBoxBoundProbe;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCheckCubeTextureRequirements(void)
{
	__asm jmp pfnAheadLib_D3DXCheckCubeTextureRequirements;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCheckTextureRequirements(void)
{
	__asm jmp pfnAheadLib_D3DXCheckTextureRequirements;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCheckVolumeTextureRequirements(void)
{
	__asm jmp pfnAheadLib_D3DXCheckVolumeTextureRequirements;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCleanMesh(void)
{
	__asm jmp pfnAheadLib_D3DXCleanMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXColorAdjustContrast(void)
{
	__asm jmp pfnAheadLib_D3DXColorAdjustContrast;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXColorAdjustSaturation(void)
{
	__asm jmp pfnAheadLib_D3DXColorAdjustSaturation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCompileEffect(void)
{
	__asm jmp pfnAheadLib_D3DXCompileEffect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCompileEffectFromFileA(void)
{
	__asm jmp pfnAheadLib_D3DXCompileEffectFromFileA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCompileEffectFromFileW(void)
{
	__asm jmp pfnAheadLib_D3DXCompileEffectFromFileW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXComputeBoundingBox(void)
{
	__asm jmp pfnAheadLib_D3DXComputeBoundingBox;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXComputeBoundingSphere(void)
{
	__asm jmp pfnAheadLib_D3DXComputeBoundingSphere;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXComputeNormals(void)
{
	__asm jmp pfnAheadLib_D3DXComputeNormals;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateBox(void)
{
	__asm jmp pfnAheadLib_D3DXCreateBox;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateBuffer(void)
{
	__asm jmp pfnAheadLib_D3DXCreateBuffer;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTexture(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTextureFromFileA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTextureFromFileA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTextureFromFileExA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTextureFromFileExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTextureFromFileExW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTextureFromFileExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTextureFromFileInMemory(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTextureFromFileInMemory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTextureFromFileInMemoryEx(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTextureFromFileInMemoryEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCubeTextureFromFileW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCubeTextureFromFileW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateCylinder(void)
{
	__asm jmp pfnAheadLib_D3DXCreateCylinder;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateEffect(void)
{
	__asm jmp pfnAheadLib_D3DXCreateEffect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateFont(void)
{
	__asm jmp pfnAheadLib_D3DXCreateFont;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateFontIndirect(void)
{
	__asm jmp pfnAheadLib_D3DXCreateFontIndirect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateMatrixStack(void)
{
	__asm jmp pfnAheadLib_D3DXCreateMatrixStack;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateMesh(void)
{
	__asm jmp pfnAheadLib_D3DXCreateMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateMeshFVF(void)
{
	__asm jmp pfnAheadLib_D3DXCreateMeshFVF;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreatePMeshFromStream(void)
{
	__asm jmp pfnAheadLib_D3DXCreatePMeshFromStream;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreatePolygon(void)
{
	__asm jmp pfnAheadLib_D3DXCreatePolygon;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateRenderToEnvMap(void)
{
	__asm jmp pfnAheadLib_D3DXCreateRenderToEnvMap;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateRenderToSurface(void)
{
	__asm jmp pfnAheadLib_D3DXCreateRenderToSurface;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateSPMesh(void)
{
	__asm jmp pfnAheadLib_D3DXCreateSPMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateSkinMesh(void)
{
	__asm jmp pfnAheadLib_D3DXCreateSkinMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateSkinMeshFVF(void)
{
	__asm jmp pfnAheadLib_D3DXCreateSkinMeshFVF;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateSkinMeshFromMesh(void)
{
	__asm jmp pfnAheadLib_D3DXCreateSkinMeshFromMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateSphere(void)
{
	__asm jmp pfnAheadLib_D3DXCreateSphere;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateSprite(void)
{
	__asm jmp pfnAheadLib_D3DXCreateSprite;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTeapot(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTeapot;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTexture(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromFileA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromFileA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromFileExA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromFileExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromFileExW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromFileExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromFileInMemory(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromFileInMemory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromFileInMemoryEx(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromFileInMemoryEx;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromFileW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromFileW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromResourceA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromResourceA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromResourceExA(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromResourceExA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromResourceExW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromResourceExW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTextureFromResourceW(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTextureFromResourceW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateTorus(void)
{
	__asm jmp pfnAheadLib_D3DXCreateTorus;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXCreateVolumeTexture(void)
{
	__asm jmp pfnAheadLib_D3DXCreateVolumeTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXDeclaratorFromFVF(void)
{
	__asm jmp pfnAheadLib_D3DXDeclaratorFromFVF;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXFVFFromDeclarator(void)
{
	__asm jmp pfnAheadLib_D3DXFVFFromDeclarator;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXFilterCubeTexture(void)
{
	__asm jmp pfnAheadLib_D3DXFilterCubeTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXFilterTexture(void)
{
	__asm jmp pfnAheadLib_D3DXFilterTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXFilterVolumeTexture(void)
{
	__asm jmp pfnAheadLib_D3DXFilterVolumeTexture;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXGeneratePMesh(void)
{
	__asm jmp pfnAheadLib_D3DXGeneratePMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXGetErrorStringA(void)
{
	__asm jmp pfnAheadLib_D3DXGetErrorStringA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXGetErrorStringW(void)
{
	__asm jmp pfnAheadLib_D3DXGetErrorStringW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXGetFVFVertexSize(void)
{
	__asm jmp pfnAheadLib_D3DXGetFVFVertexSize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXIntersect(void)
{
	__asm jmp pfnAheadLib_D3DXIntersect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadMeshFromX(void)
{
	__asm jmp pfnAheadLib_D3DXLoadMeshFromX;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadMeshFromXof(void)
{
	__asm jmp pfnAheadLib_D3DXLoadMeshFromXof;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSkinMeshFromXof(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSkinMeshFromXof;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromFileA(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromFileA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromFileInMemory(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromFileInMemory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromFileW(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromFileW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromMemory(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromMemory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromResourceA(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromResourceA;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromResourceW(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromResourceW;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadSurfaceFromSurface(void)
{
	__asm jmp pfnAheadLib_D3DXLoadSurfaceFromSurface;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadVolumeFromMemory(void)
{
	__asm jmp pfnAheadLib_D3DXLoadVolumeFromMemory;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXLoadVolumeFromVolume(void)
{
	__asm jmp pfnAheadLib_D3DXLoadVolumeFromVolume;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixAffineTransformation(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixAffineTransformation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixInverse(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixInverse;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixLookAtLH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixLookAtLH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixLookAtRH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixLookAtRH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixMultiply(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixMultiply;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixOrthoLH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixOrthoLH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixOrthoOffCenterLH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixOrthoOffCenterLH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixOrthoOffCenterRH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixOrthoOffCenterRH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixOrthoRH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixOrthoRH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixPerspectiveFovLH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixPerspectiveFovLH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixPerspectiveFovRH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixPerspectiveFovRH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixPerspectiveLH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixPerspectiveLH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixPerspectiveOffCenterLH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixPerspectiveOffCenterLH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixPerspectiveOffCenterRH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixPerspectiveOffCenterRH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixPerspectiveRH(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixPerspectiveRH;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixReflect(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixReflect;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixRotationAxis(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixRotationAxis;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixRotationQuaternion(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixRotationQuaternion;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixRotationX(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixRotationX;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixRotationY(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixRotationY;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixRotationYawPitchRoll(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixRotationYawPitchRoll;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixRotationZ(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixRotationZ;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixScaling(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixScaling;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixShadow(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixShadow;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixTransformation(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixTransformation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixTranslation(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixTranslation;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixTranspose(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixTranspose;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXMatrixfDeterminant(void)
{
	__asm jmp pfnAheadLib_D3DXMatrixfDeterminant;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXPlaneFromPointNormal(void)
{
	__asm jmp pfnAheadLib_D3DXPlaneFromPointNormal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXPlaneFromPoints(void)
{
	__asm jmp pfnAheadLib_D3DXPlaneFromPoints;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXPlaneIntersectLine(void)
{
	__asm jmp pfnAheadLib_D3DXPlaneIntersectLine;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXPlaneNormalize(void)
{
	__asm jmp pfnAheadLib_D3DXPlaneNormalize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXPlaneTransform(void)
{
	__asm jmp pfnAheadLib_D3DXPlaneTransform;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionBaryCentric(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionBaryCentric;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionExp(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionExp;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionInverse(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionInverse;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionLn(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionLn;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionMultiply(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionMultiply;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionNormalize(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionNormalize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionRotationAxis(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionRotationAxis;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionRotationMatrix(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionRotationMatrix;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionRotationYawPitchRoll(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionRotationYawPitchRoll;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionSlerp(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionSlerp;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionSquad(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionSquad;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXQuaternionToAxisAngle(void)
{
	__asm jmp pfnAheadLib_D3DXQuaternionToAxisAngle;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXSaveMeshToX(void)
{
	__asm jmp pfnAheadLib_D3DXSaveMeshToX;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXSimplifyMesh(void)
{
	__asm jmp pfnAheadLib_D3DXSimplifyMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXSphereBoundProbe(void)
{
	__asm jmp pfnAheadLib_D3DXSphereBoundProbe;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXTesselateMesh(void)
{
	__asm jmp pfnAheadLib_D3DXTesselateMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXValidMesh(void)
{
	__asm jmp pfnAheadLib_D3DXValidMesh;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2BaryCentric(void)
{
	__asm jmp pfnAheadLib_D3DXVec2BaryCentric;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2CatmullRom(void)
{
	__asm jmp pfnAheadLib_D3DXVec2CatmullRom;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2Hermite(void)
{
	__asm jmp pfnAheadLib_D3DXVec2Hermite;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2Normalize(void)
{
	__asm jmp pfnAheadLib_D3DXVec2Normalize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2Transform(void)
{
	__asm jmp pfnAheadLib_D3DXVec2Transform;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2TransformCoord(void)
{
	__asm jmp pfnAheadLib_D3DXVec2TransformCoord;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec2TransformNormal(void)
{
	__asm jmp pfnAheadLib_D3DXVec2TransformNormal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3BaryCentric(void)
{
	__asm jmp pfnAheadLib_D3DXVec3BaryCentric;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3CatmullRom(void)
{
	__asm jmp pfnAheadLib_D3DXVec3CatmullRom;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3Hermite(void)
{
	__asm jmp pfnAheadLib_D3DXVec3Hermite;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3Normalize(void)
{
	__asm jmp pfnAheadLib_D3DXVec3Normalize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3Project(void)
{
	__asm jmp pfnAheadLib_D3DXVec3Project;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3Transform(void)
{
	__asm jmp pfnAheadLib_D3DXVec3Transform;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3TransformCoord(void)
{
	__asm jmp pfnAheadLib_D3DXVec3TransformCoord;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3TransformNormal(void)
{
	__asm jmp pfnAheadLib_D3DXVec3TransformNormal;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec3Unproject(void)
{
	__asm jmp pfnAheadLib_D3DXVec3Unproject;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec4BaryCentric(void)
{
	__asm jmp pfnAheadLib_D3DXVec4BaryCentric;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec4CatmullRom(void)
{
	__asm jmp pfnAheadLib_D3DXVec4CatmullRom;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec4Cross(void)
{
	__asm jmp pfnAheadLib_D3DXVec4Cross;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec4Hermite(void)
{
	__asm jmp pfnAheadLib_D3DXVec4Hermite;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec4Normalize(void)
{
	__asm jmp pfnAheadLib_D3DXVec4Normalize;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXVec4Transform(void)
{
	__asm jmp pfnAheadLib_D3DXVec4Transform;
}

EXTERN_C __declspec(naked) void __cdecl AheadLib_D3DXWeldVertices(void)
{
	__asm jmp pfnAheadLib_D3DXWeldVertices;
}

