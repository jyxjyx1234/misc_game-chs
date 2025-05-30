/*****************************************************************************\
*                                                                             *
* KernelSpecs.h - markers for documenting the semantics of driver APIs        *
*                 See DriverSpecs.h for detailed comments                     *
*                 See also <SpecStrings.h>                                    *
*                                                                             *
* Version 1.2.00                                                              *
*                                                                             *
* Copyright (c) Microsoft Corporation. All rights reserved.                   *
*                                                                             *
\*****************************************************************************/

/*****************************************************************************\
* NOTE																		  *
* NOTE																		  *
* NOTE																		  *
*   The macro bodies in this file are subject to change without notice.       *
*   Attempting to use the annotations in the macro bodies directly is not     *
*   supported.																  *
* NOTE																		  *
* NOTE																		  *
* NOTE																		  *
\*****************************************************************************/

/*****************************************************************************\
* As noted in DriverSpecs.h, this header contains "real" definitions for
* annotations that either never appear in user space, or which are meaningles
* in user space and are #defined to nothing by DriverSpecs.h.
*
* Further commentary appears in DriverSpecs.h.
\*****************************************************************************/

#ifndef KERNELSPECS_H
#define KERNELSPECS_H

#include "DriverSpecs.h"

#if _MSC_VER > 1000 // [
#pragma once
#endif // ]

#ifdef  __cplusplus // [
extern "C" {
#endif  // ]

	// ---------------------------------------------------------------------
	// The symbolic IRQL values can sometimes end up undefined, so define
	// the usual ones here, for PREfast purposes only.

	#define DISPATCH_LEVEL 2
	#define APC_LEVEL 1
	#define PASSIVE_LEVEL 0

	// ---------------------------------------------------------------------
	// Maintenance of IRQL values
	//
	// __drv_setsIRQL(irql)
	// __drv_raisesIRQL(irql)
	// __drv_requiresIRQL(irql)
	// __drv_maxIRQL(irql)
	// __drv_minIRQL(irql)
	// __drv_savesIRQL
	// __drv_restoresIRQL
	// __drv_savesIRQLGlobal(kind,param)
	// __drv_restoresIRQLGlobal(kind,param)
	// __drv_minFunctionIRQL(irql)
	// __drv_maxFunctionIRQL(irql)
	// __drv_useCancelIRQL
	// __drv_sameIRQL

	// 
	// The funciton exits at IRQL irql
	//
	// ';' inside the parens to keep MIDL happy
	__ANNOTATION(SAL_IRQL(__int64);)
	#undef __drv_setsIRQL
	#define __drv_setsIRQL(irql)											\
		__post __drv_declspec("SAL_IRQL("SPECSTRINGIZE(irql)")")

	// 
	// The funciton exits at IRQL irql, but this may only raise the irql.
	//
	#undef __drv_raisesIRQL
	__ANNOTATION(SAL_raiseIRQL(__int64);)
	#define __drv_raisesIRQL(irql)											\
		__post __drv_declspec("SAL_raiseIRQL("SPECSTRINGIZE(irql)")")

	// 
	// The called function must be entered at IRQL level
	//
	#undef __drv_requiresIRQL
	__ANNOTATION(SAL_IRQL(__int64);)
	#define __drv_requiresIRQL(irql)										\
		__pre __drv_declspec("SAL_IRQL("SPECSTRINGIZE(irql)")")


	// 
	// The maximum IRQL at which the function may be called.
	//
	#undef __drv_maxIRQL
	__ANNOTATION(SAL_maxIRQL(__int64);)
	#define __drv_maxIRQL(irql)												\
		__pre __drv_declspec("SAL_maxIRQL("SPECSTRINGIZE(irql)")")
	// 
	// The minimum IRQL at which the function may be called.
	//
	#undef __drv_minIRQL
	__ANNOTATION(SAL_minIRQL(__int64);)
	#define __drv_minIRQL(irql)												\
		__pre __drv_declspec("SAL_minIRQL("SPECSTRINGIZE(irql)")")

	// 
	// The current IRQL is saved in the annotated parameter
	//
	#undef __drv_savesIRQL
	__ANNOTATION(SAL_saveIRQL(void);)
	#define __drv_savesIRQL __post __drv_declspec("SAL_saveIRQL")

	// 
	// The current IRQL is saved in the (otherwise anonymous) global object
	// identified by kind and further refined by param.
	//
	#undef __drv_savesIRQLGlobal
	__ANNOTATION(SAL_saveIRQLGlobal(__in char *, ...);)
	#define __drv_savesIRQLGlobal(kind,param)								\
		__post __drv_declspec("SAL_saveIRQLGlobal(\"" #kind "\","			\
										   SPECSTRINGIZE(param\t)")")

	// 
	// The current IRQL is restored from the annotated parameter
	//
	#undef __drv_restoresIRQL
	__ANNOTATION(SAL_restoreIRQL(void);)
	#define __drv_restoresIRQL __post __drv_declspec("SAL_restoreIRQL")

	// 
	// The current IRQL is restored from the (otherwise anonymous) global object
	// identified by kind and further refined by param.
	//
	#undef __drv_restoresIRQLGlobal
	__ANNOTATION(SAL_restoreIRQLGlobal(__in char *, ...);)
	#define __drv_restoresIRQLGlobal(kind,param)							\
		__post __drv_declspec("SAL_restoreIRQLGlobal(\"" #kind "\","		\
										   SPECSTRINGIZE(param\t)")")

	// The minimum IRQL to which the function can lower itself.	 The IRQL
	// at entry is assumed to be that value unless overridden.
	#undef __drv_minFunctionIRQL
	__ANNOTATION(SAL_minFunctionIrql(__int64);)
	#define __drv_minFunctionIRQL(irql)\
	    __pre __drv_declspec("SAL_minFunctionIrql(" SPECSTRINGIZE(irql) ")") 


	// The maximum IRQL to which the function can raise itself.
	#undef __drv_maxFunctionIRQL
	__ANNOTATION(SAL_maxFunctionIrql(__int64);)
	#define __drv_maxFunctionIRQL(irql)\
	    __pre __drv_declspec("SAL_maxFunctionIrql(" SPECSTRINGIZE(irql) ")") 

	// The function must exit with the same IRQL it was entered with.
	// (It may change it but it must restore it.)
	#undef __drv_sameIRQL
	__ANNOTATION(SAL_sameIRQL(void);)
	#define __drv_sameIRQL\
		__post __drv_declspec("SAL_sameIRQL")

	// The annotated parameter contains the cancelIRQL, which will be restored
	// by the called function.

	#undef __drv_useCancelIRQL
	__ANNOTATION(SAL_UseCancelIrql(void);)
	#define __drv_useCancelIRQL												\
		__post __drv_declspec("SAL_UseCancelIrql") 


#ifdef _PREFAST_ // RC workaround; already #defined to nothing if not needed
	// Passing the cancel Irql to a utility function
	#undef __drv_isCancelIRQL
	#define __drv_isCancelIRQL\
		__drv_useCancelIRQL													\
		__drv_at(return, __drv_innerMustHoldGlobal(CancelSpinLock,)			\
				 __drv_innerReleasesGlobal(CancelSpinLock,)					\
				 __drv_minFunctionIRQL(DISPATCH_LEVEL)						\
				 __drv_requiresIRQL(DISPATCH_LEVEL))
#endif

#ifdef	__cplusplus
}
#endif

#endif // KERNELSPECS_H

