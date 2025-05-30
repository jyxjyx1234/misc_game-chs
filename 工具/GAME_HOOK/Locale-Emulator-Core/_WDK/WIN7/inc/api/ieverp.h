#define VER_USE_OTHER_MAJOR_MINOR_VER

//
// Note:
//  If you find yourself in here updating IE's version number, please also be
//  aware that LATEST_WIN32_IE_VERSION likely needs to be updated as well
//  (root/tools/makefile.def).  This allows individual 'sources' files
//  to pick up the version number change during the build passes.  For
//  bonus points, a new macro constant should be added to sdkddkver.w
//  (base/published) with the other _WIN32_IE_IExx macros.
//

//
// override the majorversion and minorversion (normall defined in ntverp.h)
//
#define VER_PRODUCTMAJORVERSION         8
#define VER_PRODUCTMINORVERSION         00

#define VER_PRODUCTVERSION_W            (0x0800)
#define VER_PRODUCTVERSION_DW           (0x08000000 | VER_PRODUCTBUILD)


//
// override product name (normally defined in ntverp.h / common.ver)
//
#ifdef RC_INVOKED
#define VER_PRODUCTNAME_STR L"Windows\256 Internet Explorer"
#else
#define VER_PRODUCTNAME_STR "Windows (R) Internet Explorer"
#endif

#include <ntverp.h>

// Define IE Specific Version numbers. Only component versions are effected by VER_IE*VERSION defined below. 
// Component versions are specified in the manifest files (inetcore\manifests) using the version attribute.
// Binary versions are still determined using VER_PRODUCT* etc. (defined above and in ntverp.h)


// if USE_IE_COMPONENT_VERSIONS is set the ie versions will be used to calculate manifest/component versions. 
// Otherwise ntverp versions will be used.
// eg. this flag will be removed to RI into win7.

#define USE_IE_COMPONENT_VERSIONS


// These will be used to create build variables $(build.xyz)
// build.IEVersion, build.IEMajorVersion, build.IEMinorVersion, build.IEBuildVersion, build.IEQfeVersion

// IE Package version tracks individual public releases of IE
// Primarily this drives active setup and the about box.  It is the version number
// of the package that doesn't change as individual binaries are revised.
// It should be revised daily during self-host, but be locked down in milestone branches
// Keep a history.

// IE8 BETA1 = 17136

#define VER_IEPACKAGEVERSION                17136

#ifdef USE_IE_COMPONENT_VERSIONS

#define VER_IEMAJORVERSION                  8
#define VER_IEMINORVERSION                  0
#define VER_IEBUILDVERSION                  VER_PRODUCTBUILD
#define VER_IEQFEVERSION                    VER_PRODUCTBUILD_QFE

#else

#define VER_IEMAJORVERSION                  VER_PRODUCTMAJORVERSION
#define VER_IEMINORVERSION                  VER_PRODUCTMINORVERSION
#define VER_IEBUILDVERSION                  VER_PRODUCTBUILD
#define VER_IEQFEVERSION                    VER_PRODUCTBUILD_QFE

#endif


#define VER_IEVERSION                       VER_IEMAJORVERSION,VER_IEMINORVERSION,VER_IEBUILDVERSION,VER_IEQFEVERSION

#define VER_IEVERSION_MAJORMINOR2(x,y)      #x "." #y
#define VER_IEVERSION_MAJORMINOR1(x,y)      VER_IEVERSION_MAJORMINOR2(x, y)
#define VER_IEVERSION_STRING                VER_IEVERSION_MAJORMINOR1(VER_IEMAJORVERSION, VER_IEMINORVERSION)

#define VER_IEVERSION_STR2(x,y)             VER_IEVERSION_STRING "." VER_BPAD #x "." #y
#define VER_IEVERSION_STR1(x,y)             VER_IEVERSION_STR2(x, y)
#define VER_IEVERSION_STR                   VER_IEVERSION_STR1(VER_IEBUILDVERSION, VER_IEQFEVERSION)



