
;
;  Pointer size in bytes
;

SizeofPointer equ 00004H

;
;  Process State Enumerated Type Values
;

ProcessInMemory equ 00000H
ProcessOutOfMemory equ 00001H
ProcessInTransition equ 00002H

;
;  Thread State Enumerated Type Values
;

Initialized equ 00000H
Ready equ 00001H
Running equ 00002H
Standby equ 00003H
Terminated equ 00004H
Waiting equ 00005H

;
;  Processor Mode Definitions
;

KernelMode equ 00000H
UserMode equ 00001H

;
;  Wait Reason and Wait Type Enumerated Type Values
;

WrExecutive equ 00000H
WrDispatchInt equ 0001FH
WaitAny equ 00001H
WaitAll equ 00000H

;
;  Apc State Structure Offset Definitions
;

AsApcListHead equ 00000H
AsProcess equ 00010H
AsKernelApcInProgress equ 00014H
AsKernelApcPending equ 00015H
AsUserApcPending equ 00016H

;
;  Bug Check Code Definitions
;

APC_INDEX_MISMATCH equ 00001H
KERNEL_APC_PENDING_DURING_EXIT equ 00020H
ATTEMPTED_SWITCH_FROM_DPC equ 000B8H
DATA_BUS_ERROR equ 0002EH
DATA_COHERENCY_EXCEPTION equ 00055H
HAL1_INITIALIZATION_FAILED equ 00061H
INSTRUCTION_BUS_ERROR equ 0002FH
INSTRUCTION_COHERENCY_EXCEPTION equ 00056H
INTERRUPT_EXCEPTION_NOT_HANDLED equ 0003DH
INTERRUPT_UNWIND_ATTEMPTED equ 0003CH
INVALID_AFFINITY_SET equ 00003H
INVALID_DATA_ACCESS_TRAP equ 00004H
IRQL_GT_ZERO_AT_SYSTEM_SERVICE equ 0004AH
IRQL_NOT_LESS_OR_EQUAL equ 0000AH
KMODE_EXCEPTION_NOT_HANDLED equ 0001EH
NMI_HARDWARE_FAILURE equ 00080H
NO_USER_MODE_CONTEXT equ 0000EH
PAGE_FAULT_WITH_INTERRUPTS_OFF equ 00049H
PANIC_STACK_SWITCH equ 0002BH
SPIN_LOCK_INIT_FAILURE equ 00081H
SYSTEM_EXIT_OWNED_MUTEX equ 00039H
SYSTEM_SERVICE_EXCEPTION equ 0003BH
SYSTEM_UNWIND_PREVIOUS_USER equ 0003AH
TRAP_CAUSE_UNKNOWN equ 00012H
UNEXPECTED_KERNEL_MODE_TRAP equ 0007FH
HARDWARE_INTERRUPT_STORM equ 000F2H
RECURSIVE_MACHINE_CHECK equ 000FBH
RECURSIVE_NMI equ 00111H

;
;  Breakpoint type definitions
;

DBG_STATUS_CONTROL_C equ 00001H
STATUS_ASSERTION_FAILURE equ 0C0000420H

;
;  Client Id Structure Offset Definitions
;

CidUniqueProcess equ 00000H
CidUniqueThread equ 00004H

;
;  Critical Section Structure Offset Definitions
;

CsDebugInfo equ 00000H
CsLockCount equ 00004H
CsRecursionCount equ 00008H
CsOwningThread equ 0000CH
CsLockSemaphore equ 00010H
CsSpinCount equ 00014H

;
;  Critical Section Debug Information Structure Offset Definitions
;

CsType equ 00000H
CsCreatorBackTraceIndex equ 00002H
CsCriticalSection equ 00004H
CsProcessLocksList equ 00008H
CsEntryCount equ 00010H
CsContentionCount equ 00014H

;
;  Exception Record Offset, Flag, and Enumerated Type Definitions
;

EXCEPTION_NONCONTINUABLE equ 00001H
EXCEPTION_UNWINDING equ 00002H
EXCEPTION_EXIT_UNWIND equ 00004H
EXCEPTION_STACK_INVALID equ 00008H
EXCEPTION_NESTED_CALL equ 00010H
EXCEPTION_TARGET_UNWIND equ 00020H
EXCEPTION_COLLIDED_UNWIND equ 00040H
EXCEPTION_UNWIND equ 00066H
EXCEPTION_EXECUTE_HANDLER equ 00001H
EXCEPTION_CONTINUE_SEARCH equ 00000H
EXCEPTION_CONTINUE_EXECUTION equ 0FFFFFFFFH
EXCEPTION_CHAIN_END equ 0FFFFFFFFH
FIXED_NTVDMSTATE_LINEAR equ 00714H

ExceptionContinueExecution equ 00000H
ExceptionContinueSearch equ 00001H
ExceptionNestedException equ 00002H
ExceptionCollidedUnwind equ 00003H

ErExceptionCode equ 00000H
ErExceptionFlags equ 00004H
ErExceptionRecord equ 00008H
ErExceptionAddress equ 0000CH
ErNumberParameters equ 00010H
ErExceptionInformation equ 00014H
ExceptionRecordLength equ 00050H

;
;  Fast Mutex Structure Offset Definitions
;

FmCount equ 00000H
FmOwner equ 00004H
FmContention equ 00008H
FmOldIrql equ 0001CH

;
;  Interrupt Priority Request Level Definitions
;

PASSIVE_LEVEL equ 00000H
APC_LEVEL equ 00001H
DISPATCH_LEVEL equ 00002H
CLOCK1_LEVEL equ 0001CH
CLOCK2_LEVEL equ 0001CH
IPI_LEVEL equ 0001DH
POWER_LEVEL equ 0001EH
PROFILE_LEVEL equ 0001BH
HIGH_LEVEL equ 0001FH
ifdef NT_UP
SYNCH_LEVEL equ 00002H
else
SYNCH_LEVEL equ 0001BH
endif

;
;  Large Integer Structure Offset Definitions
;

LiLowPart equ 00000H
LiHighPart equ 00004H

;
;  List Entry Structure Offset Definitions
;

LsFlink equ 00000H
LsBlink equ 00004H

;
;  String Structure Offset Definitions
;

StrLength equ 00000H
StrMaximumLength equ 00002H
StrBuffer equ 00004H

;
;  System Time Structure Offset Definitions
;

StLowTime equ 00000H
StHigh1Time equ 00004H
StHigh2Time equ 00008H

;
;  User Shared Data Structure Offset Definitions
;

UsTickCountMultiplier equ 00004H
UsInterruptTime equ 00008H
UsSystemTime equ 00014H
UsTimeZoneBias equ 00020H
UsImageNumberLow equ 0002CH
UsImageNumberHigh equ 0002EH
UsNtSystemRoot equ 00030H
UsMaxStackTraceDepth equ 00238H
UsCryptoExponent equ 0023CH
UsTimeZoneId equ 00240H
UsLargePageMinimum equ 00244H
UsReserved2 equ 00248H
UsNtProductType equ 00264H
UsProductTypeIsValid equ 00268H
UsNtMajorVersion equ 0026CH
UsNtMinorVersion equ 00270H
UsProcessorFeatures equ 00274H
UsReserved1 equ 002B4H
UsReserved3 equ 002B8H
UsTimeSlip equ 002BCH
UsAlternativeArchitecture equ 002C0H
UsSystemExpirationDate equ 002C8H
UsSuiteMask equ 002D0H
UsKdDebuggerEnabled equ 002D4H
UsActiveConsoleId equ 002D8H
UsDismountCount equ 002DCH
UsComPlusPackage equ 002E0H
UsLastSystemRITEventTickCount equ 002E4H
UsNumberOfPhysicalPages equ 002E8H
UsSafeBootMode equ 002ECH
UsTscQpcData equ 002EDH
UsTestRetInstruction equ 002F8H
UsSystemCall equ 00300H
UsSystemCallReturn equ 00304H
UsSystemCallPad equ 00308H
UsTickCount equ 00320H
UsTickCountQuad equ 00320H
UsWow64SharedInformation equ 00340H

;
;  Time Structure Offset Definitions
;

TmLowTime equ 00000H
TmHighTime equ 00004H

;
;  Thread Switch Counter Offset Definitions
;

TwFindAny equ 00000H
TwFindIdeal equ 00004H
TwFindLast equ 00008H
TwIdleAny equ 0000CH
TwIdleCurrent equ 00010H
TwIdleIdeal equ 00014H
TwIdleLast equ 00018H
TwPreemptAny equ 0001CH
TwPreemptCurrent equ 00020H
TwPreemptLast equ 00024H
TwSwitchToIdle equ 00028H

;
;  Status Code Definitions
;

STATUS_ACCESS_VIOLATION equ 0C0000005H
STATUS_ARRAY_BOUNDS_EXCEEDED equ 0C000008CH
STATUS_BAD_COMPRESSION_BUFFER equ 0C0000242H
STATUS_BREAKPOINT equ 080000003H
STATUS_CALLBACK_POP_STACK equ 0C0000423H
STATUS_DATATYPE_MISALIGNMENT equ 080000002H
STATUS_FLOAT_DENORMAL_OPERAND equ 0C000008DH
STATUS_FLOAT_DIVIDE_BY_ZERO equ 0C000008EH
STATUS_FLOAT_INEXACT_RESULT equ 0C000008FH
STATUS_FLOAT_INVALID_OPERATION equ 0C0000090H
STATUS_FLOAT_OVERFLOW equ 0C0000091H
STATUS_FLOAT_STACK_CHECK equ 0C0000092H
STATUS_FLOAT_UNDERFLOW equ 0C0000093H
STATUS_FLOAT_MULTIPLE_FAULTS equ 0C00002B4H
STATUS_FLOAT_MULTIPLE_TRAPS equ 0C00002B5H
STATUS_GUARD_PAGE_VIOLATION equ 080000001H
STATUS_ILLEGAL_FLOAT_CONTEXT equ 0C000014AH
STATUS_ILLEGAL_INSTRUCTION equ 0C000001DH
STATUS_INSTRUCTION_MISALIGNMENT equ 0C00000AAH
STATUS_INVALID_HANDLE equ 0C0000008H
STATUS_INVALID_LOCK_SEQUENCE equ 0C000001EH
STATUS_INVALID_OWNER equ 0C000005AH
STATUS_INVALID_PARAMETER equ 0C000000DH
STATUS_INVALID_PARAMETER_1 equ 0C00000EFH
STATUS_INVALID_SYSTEM_SERVICE equ 0C000001CH
STATUS_INVALID_THREAD equ 0C000071CH
STATUS_INTEGER_DIVIDE_BY_ZERO equ 0C0000094H
STATUS_INTEGER_OVERFLOW equ 0C0000095H
STATUS_IN_PAGE_ERROR equ 0C0000006H
STATUS_KERNEL_APC equ 00100H
STATUS_LONGJUMP equ 080000026H
STATUS_NO_CALLBACK_ACTIVE equ 0C0000258H
STATUS_NO_EVENT_PAIR equ 0C000014EH
STATUS_PRIVILEGED_INSTRUCTION equ 0C0000096H
STATUS_SINGLE_STEP equ 080000004H
STATUS_STACK_BUFFER_OVERRUN equ 0C0000409H
STATUS_STACK_OVERFLOW equ 0C00000FDH
STATUS_SUCCESS equ 00000H
STATUS_THREAD_IS_TERMINATING equ 0C000004BH
STATUS_TIMEOUT equ 00102H
STATUS_UNWIND equ 0C0000027H
STATUS_UNWIND_CONSOLIDATE equ 080000029H
STATUS_USER_APC equ 000C0H
STATUS_WAKE_SYSTEM_DEBUGGER equ 080000007H

;
;  APC Object Structure Offset Definitions
;

ApType equ 00000H
ApSize equ 00002H
ApThread equ 00008H
ApApcListEntry equ 0000CH
ApKernelRoutine equ 00014H
ApRundownRoutine equ 00018H
ApNormalRoutine equ 0001CH
ApNormalContext equ 00020H
ApSystemArgument1 equ 00024H
ApSystemArgument2 equ 00028H
ApApcStateIndex equ 0002CH
ApApcMode equ 0002DH
ApInserted equ 0002EH
ApcObjectLength equ 00030H

;
;  DPC object Structure Offset Definitions
;

DpType equ 00000H
DpNumber equ 00002H
DpImportance equ 00001H
DpDpcListEntry equ 00004H
DpDeferredRoutine equ 0000CH
DpDeferredContext equ 00010H
DpSystemArgument1 equ 00014H
DpSystemArgument2 equ 00018H
DpDpcData equ 0001CH
DpcObjectLength equ 00020H

KI_DPC_ALL_FLAGS equ 0003FH

;
;  Device Queue Object Structure Offset Definitions
;

DvType equ 00000H
DvSize equ 00002H
DvDeviceListHead equ 00004H
DvSpinLock equ 0000CH
DvBusy equ 00010H
DeviceQueueObjectLength equ 00014H

;
;  Device Queue Entry Structure Offset Definitions
;

DeDeviceListEntry equ 00000H
DeSortKey equ 00008H
DeInserted equ 0000CH
DeviceQueueEntryLength equ 00010H

;
;  Event Object Structure Offset Definitions
;

EvType equ 00000H
EvSize equ 00002H
EvSignalState equ 00004H
EvWaitListHead equ 00008H
EventObjectLength equ 00010H

;
;  Event Pair Object Structure Offset Definitions
;

EpType equ 00000H
EpSize equ 00002H
EpEventLow equ 00004H
EpEventHigh equ 00014H

;
;  Interrupt Object Structure Offset Definitions
;

InLevelSensitive equ 00000H
InLatched equ 00001H

InType equ 00000H
InSize equ 00002H
InInterruptListEntry equ 00004H
InServiceRoutine equ 0000CH
InServiceContext equ 00018H
InSpinLock equ 0001CH
InTickCount equ 00020H
InActualLock equ 00024H
InDispatchAddress equ 00028H
InVector equ 0002CH
InIrql equ 00030H
InSynchronizeIrql equ 00031H
InFloatingSave equ 00032H
InConnected equ 00033H
InNumber equ 00034H
InShareVector equ 00038H
InMode equ 0003CH
InServiceCount equ 00044H
InDispatchCount equ 00048H
InDispatchCode equ 00058H
InterruptObjectLength equ 00278H

DISPATCH_LENGTH equ 0021CH

;
;  Process Object Structure Offset Definitions
;

PrType equ 00000H
PrSize equ 00002H
PrSignalState equ 00004H
PrProfileListHead equ 00010H
PrDirectoryTableBase equ 00018H
PrLdtDescriptor equ 0001CH
PrIopmOffset equ 0006EH
PrInt21Descriptor equ 00024H
PrVdmTrapcHandler equ 00090H
PrVdmObjects equ 00148H
PrFlags equ 00270H
PrThreadListHead equ 0002CH
PrAffinity equ 00038H
PrReadyListHead equ 00044H
PrSwapListEntry equ 0004CH
PrActiveProcessors equ 00050H
PrProcessFlags equ 0005CH
PrBasePriority equ 00060H
PrQuantumReset equ 00061H
PrCycleTime equ 00080H
PrKernelTime equ 00088H
PrUserTime equ 0008CH
KernelProcessObjectLength equ 00098H
ExecutiveProcessObjectLength equ 002C0H

;
;  Profile Object Structure Offset Definitions
;

PfType equ 00000H
PfSize equ 00002H
PfProfileListEntry equ 00004H
PfProcess equ 0000CH
PfRangeBase equ 00010H
PfRangeLimit equ 00014H
PfBucketShift equ 00018H
PfBuffer equ 0001CH
PfSegment equ 00020H
PfAffinity equ 00024H
PfSource equ 00030H
PfStarted equ 00032H
ProfileObjectLength equ 00034H

;
;  Queue Object Structure Offset Definitions
;

QuSignalState equ 00004H
QuEntryListHead equ 00010H
QuCurrentCount equ 00018H
QuMaximumCount equ 0001CH
QuThreadListHead equ 00020H
QueueObjectLength equ 00028H

;
;  Thread Object Structure Offset Definitions
;

EeKernelEventPair equ 00000H
EtCid equ 0022CH

ThType equ 00000H
ThSize equ 00002H
ThLock equ 00000H
THREAD_FLAGS_CYCLE_PROFILING equ 00002H
THREAD_FLAGS_CYCLE_PROFILING_LOCK_BIT equ 00011H
THREAD_FLAGS_CYCLE_PROFILING_LOCK equ 020000H
THREAD_FLAGS_COUNTER_PROFILING equ 00004H
THREAD_FLAGS_COUNTER_PROFILING_LOCK_BIT equ 00012H
THREAD_FLAGS_COUNTER_PROFILING_LOCK equ 040000H
ThDebugActive equ 00003H
ThThreadControlFlags equ 00002H
THREAD_FLAGS_CPU_THROTTLED equ 00001H
THREAD_FLAGS_CPU_THROTTLED_BIT equ 00000H
THREAD_FLAGS_ACCOUNTING_ANY equ 00005H
ThSignalState equ 00004H
ThCycleTime equ 00010H
ThHighCycleTime equ 00018H
ThInitialStack equ 00028H
ThStackLimit equ 0002CH
ThKernelStack equ 00030H
ThThreadLock equ 00034H
ThApcState equ 00040H
ThNextProcessor equ 00058H
ThDeferredProcessor equ 0005CH
ThAdjustReason equ 00138H
ThAdjustIncrement equ 00139H
ThContextSwitches equ 00064H
ThState equ 00068H
ThNpxState equ 00069H
ThWaitIrql equ 0006AH
ThWaitMode equ 0006BH
ThWaitStatus equ 0006CH
ThWaitBlockList equ 00070H
ThWaitReason equ 00187H
ThPriority equ 00057H
ThRunning equ 00039H
ThAlerted equ 0003AH
ThWaitListEntry equ 00074H
ThSwapListEntry equ 00074H
ThQueue equ 0007CH
ThWaitTime equ 00080H
ThCombinedApcDisable equ 00084H
ThKernelApcDisable equ 00084H
ThSpecialApcDisable equ 00086H
ThTeb equ 00088H
ThTimer equ 00090H

KTHREAD_AUTO_ALIGNMENT_BIT equ 00000H
KTHREAD_GUI_THREAD_MASK equ 00080H

ThMiscFlags equ 0003CH
ThThreadFlags equ 000B8H
ThWaitBlock equ 000C0H
ThPreviousMode equ 0013AH
ThResourceIndex equ 00195H
ThLargeStack equ 001C3H
ThQueueListEntry equ 00120H
ThTrapFrame equ 00128H
ThFirstArgument equ 0012CH
ThCallbackStack equ 00130H
ThCallbackDepth equ 00130H
ThServiceTable equ 000BCH
ThApcStateIndex equ 00134H
ThIdealProcessor equ 00160H
ThBasePriority equ 00135H
ThPriorityDecrement equ 00136H
ThSaturation equ 0013BH
ThSystemCallNumber equ 0013CH
ThUserAffinity equ 00144H
ThProcess equ 00150H
ThAffinity equ 00154H
ThApcStatePointer equ 00168H
ThSavedApcState equ 00170H
ThFreezeCount equ 00140H
ThSuspendCount equ 00188H
ThUserIdealProcessor equ 00164H
ThCallbackDepth equ 00130H
ThWin32Thread equ 0018CH
ThStackBase equ 00190H
ThSuspendApc equ 00194H
ThKernelTime equ 00198H
ThLegoData equ 001BCH
ThUserTime equ 001C4H
ThSuspendSemaphore equ 001C8H
ThSListFaultCount equ 001DCH
ThMutantListHead equ 001E8H
ThThreadListEntry equ 001E0H
ThSListFaultAddress equ 001F0H

KI_SLIST_FAULT_COUNT_MAXIMUM equ 00400H

KernelThreadObjectLength equ 00200H
ExecutiveThreadObjectLength equ 002B8H

NPX_STATE_NOT_LOADED equ 0000AH
NPX_STATE_LOADED equ 00000H
NPX_MASK_LAZY equ 00007H

;
;  Timer object Structure Offset Definitions
;

TiType equ 00000H
TiSize equ 00002H
TiSignalState equ 00004H
TiDueTime equ 00010H
TiTimerListEntry equ 00018H
TiDpc equ 00020H
TiPeriod equ 00024H
TimerObjectLength equ 00028H


;
;  Wait Block Structure Offset Definitions
;

WbWaitListEntry equ 00000H
WbThread equ 00008H
WbObject equ 0000CH
WbNextWaitBlock equ 00010H
WbWaitKey equ 00014H
WbWaitType equ 00016H

;
;  Fiber Structure Offset Definitions
;

FbFiberData equ 00000H
FbExceptionList equ 00004H
FbStackBase equ 00008H
FbStackLimit equ 0000CH
FbDeallocationStack equ 00010H
FbFiberContext equ 00014H
FbWx86Tib equ 002E0H
FbActivationContextStackPointer equ 002E4H
FbFlsData equ 002E8H
FbGuaranteedStackBytes equ 002ECH
FbTebFlags equ 002F0H

;
;  Process Environment Block Structure Offset Definitions
;

PeBeingDebugged equ 00002H
PeProcessParameters equ 00010H
PeKernelCallbackTable equ 0002CH
ProcessEnvironmentBlockLength equ 00248H

;
;  System Service Descriptor Table Structure Definitions
;

NUMBER_SERVICE_TABLES equ 00002H
SERVICE_NUMBER_MASK equ 00FFFH
SERVICE_TABLE_SHIFT equ 00008H
SERVICE_TABLE_MASK equ 00010H
SERVICE_TABLE_TEST equ 00010H

SdBase equ 00000H
SdCount equ 00004H
SdLimit equ 00008H
SdNumber equ 0000CH
SdLength equ 00010H

;
;  Thread Environment Block Structure Offset Definitions
;

TeExceptionList equ 00000H
TeStackBase equ 00004H
TeStackLimit equ 00008H
TeFiberData equ 00010H
TeSelf equ 00018H
TeEnvironmentPointer equ 0001CH
TeClientId equ 00020H
TeActiveRpcHandle equ 00028H
TeThreadLocalStoragePointer equ 0002CH
TeCountOfOwnedCriticalSections equ 00038H
TePeb equ 00030H
TeCsrClientThread equ 0003CH
TeWOW32Reserved equ 000C0H
TeSoftFpcr equ 000C8H
TeExceptionCode equ 001A4H
TeActivationContextStackPointer equ 001A8H
TeGdiClientPID equ 006C0H
TeGdiClientTID equ 006C4H
TeGdiThreadLocalInfo equ 006C8H
TeglDispatchTable equ 007C4H
TeglReserved1 equ 00B68H
TeglReserved2 equ 00BDCH
TeglSectionInfo equ 00BE0H
TeglSection equ 00BE4H
TeglTable equ 00BE8H
TeglCurrentRC equ 00BECH
TeglContext equ 00BF0H
TeDeallocationStack equ 00E0CH
TeTlsSlots equ 00E10H
TeTlsExpansionSlots equ 00F94H
TeLastErrorValue equ 00034H
TeVdm equ 00F18H
TeInstrumentation equ 00F2CH
TeGdiBatchCount equ 00F70H
TeGuaranteedStackBytes equ 00F78H
TeFlsData equ 00FB4H
ThreadEnvironmentBlockLength equ 00FE4H
CmThreadEnvironmentBlockOffset equ 01000H
TLS_MINIMUM_AVAILABLE equ 00040H
TLS_EXPANSION_SLOTS equ 00400H

;
;  Lock Queue Structure Offset Definitions
;

LOCK_QUEUE_WAIT equ 00001H
LOCK_QUEUE_OWNER equ 00002H
LOCK_QUEUE_HEADER_SIZE equ 00008H


LqNext equ 00000H
LqLock equ 00004H

LqhNext equ 00000H
LqhLock equ 00004H
LqhOldIrql equ 00008H

;
;  Kernel Stack Control Structure Offset (relative to initial stack pointer) Definitions
;

KcPreviousBase equ 0FFFFFFD8H
KcPreviousLimit equ 0FFFFFFDCH
KcPreviousKernel equ 0FFFFFFE0H
KcPreviousInitial equ 0FFFFFFE4H

KERNEL_STACK_CONTROL_LARGE_STACK equ 00001H

;
;  Performance Definitions
;

PERF_CONTEXTSWAP_OFFSET equ 00004H
PERF_CONTEXTSWAP_FLAG equ 00004H
PERF_INTERRUPT_OFFSET equ 00004H
PERF_INTERRUPT_FLAG equ 04000H
PERF_PROFILE_OFFSET equ 00004H
PERF_PROFILE_FLAG equ 00002H
PERF_SYSCALL_OFFSET equ 00008H
PERF_SYSCALL_FLAG equ 00040H
PERF_SPINLOCK_OFFSET equ 00004H
PERF_SPINLOCK_FLAG equ 010000H
NTOS_YIELD_MACRO equ 00001H

;
;  ETW Definitions
;

ETW_SPINLOCK_BASIC equ 00000H
ETW_SPINLOCK_QUEUED equ 00001H

;
;  Hal enlightenment structure definitions
;

HeEnlightenments equ 00000H
HeHypervisorConnected equ 00004H
HeEndOfInterrupt equ 00008H
HeApicWriteIcr equ 0000CH
HeSpinCountMask equ 00014H
HeLongSpinWait equ 00018H

;
;  XState context structure offset definitions
;

XctxMask equ 00000H
XctxLength equ 00008H
XctxArea equ 00010H

;
;  GETSETCONTEXT structure offset definitions
;

GetSetCtxContextPtr equ 00048H
XSAVE_ALIGN equ 00040H

;
;  XSAVE_AREA structure offset definitions
;

XsaHeader equ 00200H
XsaHeaderLength equ 00040H
XSTATE_MASK_LEGACY_FLOATING_POINT equ 00001H
XSTATE_MASK_LEGACY_SSE equ 00002H
XSTATE_MASK_LEGACY equ 00003H
XSTATE_MASK_GSSE equ 00004H

;
;  Extended context structure offset definitions
;

CxxAllOffset equ 00000H
CxxAllLength equ 00004H
CxxLegacyOffset equ 00008H
CxxLegacyLength equ 0000CH
CxxXStateOffset equ 00010H
CxxXStateLength equ 00014H

;
;  KAFFINITY_EX offsets
;

AfCount equ 00000H
AfBitmap equ 00008H

;
;  Aligned Affinity Structure Offset Definitions
;

AfsCpuSet equ 00000H


;
;  Switch Frame Structure Offset Definitions
;

SwitchFrameLength equ 0000CH

;
;  Apc Record Structure Offset Definitions
;

ArNormalRoutine equ 00000H
ArNormalContext equ 00004H
ArSystemArgument1 equ 00008H
ArSystemArgument2 equ 0000CH
ApcRecordLength equ 00010H


;
;  Processor Control Registers Structure Offset Definitions
;

PCR equ fs:
PcExceptionList equ 00000H
PcInitialStack equ 00004H
PcTssCopy equ 0000CH
PcContextSwitches equ 00010H
PcSetMemberCopy equ 00014H
PcSelfPcr equ 0001CH
PcPrcb equ 00020H
PcTeb equ 00018H
PcIrql equ 00024H
PcIRR equ 00028H
PcIrrActive equ 0002CH
PcIDR equ 00030H
PcIdt equ 00038H
PcGdt equ 0003CH
PcTss equ 00040H
PcNumber equ 00051H
PcVdmAlert equ 00054H
PcSetMember equ 00048H
PcStallScaleFactor equ 0004CH
PcHal equ 00094H
PcPrcbData equ 00120H
PcNestingLevel equ 00131H
PcInterruptCount equ 005C4H
PcStartCycles equ 03318H
PcCycleTime equ 03320H
PcHighCycleTime equ 03328H
ProcessorControlRegisterLength equ 03748H
TebPeb equ TePeb
PebBeingDebugged equ PeBeingDebugged
PebKernelCallbackTable equ PeKernelCallbackTable

;
;  Defines for user shared data
;

USER_SHARED_DATA equ 0FFDF0000H
MM_SHARED_USER_DATA_VA equ 07FFE0000H
USERDATA equ ds:[0FFDF0000H]
UsTickCountMultiplier equ 00004H
UsInterruptTime equ 00008H
UsSystemTime equ 00014H
UsProcessorFeatures equ 00274H
UsSystemCall equ 00300H
UsSystemCallReturn equ 00304H

PF_XMMI_INSTRUCTIONS_AVAILABLE equ 00006H

;
;  Tss Structure Offset Definitions
;

TssEsp0 equ 00004H
TssCR3 equ 0001CH
TssEip equ 00020H
TssEFlags equ 00024H
TssEax equ 00028H
TssEbx equ 00034H
TssEcx equ 0002CH
TssEdx equ 00030H
TssEsp equ 00038H
TssEbp equ 0003CH
TssEsi equ 00040H
TssEdi equ 00044H
TssEs equ 00048H
TssCs equ 0004CH
TssSs equ 00050H
TssDs equ 00054H
TssFs equ 00058H
TssGs equ 0005CH
TssLDT equ 00060H
TssIoMapBase equ 00066H
TssIoMaps equ 00068H
TssLength equ 020ACH

;
;  Gdt Descriptor Offset Definitions
;

KGDT_R3_DATA equ 00020H
KGDT_R3_CODE equ 00018H
KGDT_R0_CODE equ 00008H
KGDT_R0_DATA equ 00010H
KGDT_R0_PCR equ 00030H
KGDT_STACK16 equ 000F8H
KGDT_CODE16 equ 000F0H
KGDT_TSS equ 00028H
KGDT_R3_TEB equ 00038H
KGDT_DF_TSS equ 00050H
KGDT_NMI_TSS equ 00058H
KGDT_LDT equ 00048H

;
;  GdtEntry Offset Definitions
;

KgdtBaseLow equ 00002H
KgdtBaseMid equ 00004H
KgdtBaseHi equ 00007H
KgdtLimitHi equ 00006H
KgdtLimitLow equ 00000H


;
;  Processor Block Structure Offset Definitions
;

PbCurrentThread equ 00004H
PbNextThread equ 00008H
PbIdleThread equ 0000CH
PbNumber equ 003CCH
PbNestingLevel equ 00011H
PbGroupSetMember equ 003C8H
PbCpuID equ 00015H
PbCpuType equ 00014H
PbCpuStep equ 00016H
PbProcessorState equ 00018H
PbHalReserved equ 00378H
PbCFlushSize equ 003B8H
PbLockQueue equ 00418H
PbNpxThread equ 004A0H
PbInterruptCount equ 004A4H
PbKernelTime equ 004A8H
PbUserTime equ 004ACH
PbDpcTime equ 004B0H
PbInterruptTime equ 004B8H
PbAdjustDpcThreshold equ 004BCH
PbPageColor equ 004C0H
PbNodeShiftedColor equ 004C8H
PbParentNode equ 004CCH
PbSecondaryColorMask equ 004D0H
PbAlignmentFixupCount equ 00588H
PbExceptionDispatchCount equ 0058CH
PbSystemCalls equ 00590H
PbPPLookasideList equ 005A0H
PbPPNPagedLookasideList equ 00620H
PbPPPagedLookasideList equ 00F20H
PbPacketBarrier equ 01820H
PbReverseStall equ 01824H
PbIpiFrame equ 01828H
PbCurrentPacket equ 01860H
PbTargetSet equ 0186CH
PbWorkerRoutine equ 01870H
PbIpiFrozen equ 01874H
PbRequestSummary equ 018A0H
PbSignalDone equ 018A4H
PbDpcListHead equ 018E0H
PbDpcLock equ 018E8H
PbDpcCount equ 018F0H
PbDpcStack equ 01908H
PbMaximumDpcQueueDepth equ 0190CH
PbDpcRequestRate equ 01910H
PbMinimumDpcRate equ 01914H
PbDpcRoutineActive equ 01932H
PbNormalDpcState equ 01934H
PbPrcbLock equ 0191CH
PbDpcLastCount equ 01918H
PbQuantumEnd equ 01931H
PbIdleSchedule equ 01933H
PbTickOffset equ 01958H
PbWaitListHead equ 031E0H
PbReadySummary equ 031ECH
PbDispatcherReadyListHead equ 03220H
PbDeferredReadyListHead equ 031F4H
PbStartCycles equ 031F8H
PbCycleTime equ 03200H
PbHighCycleTime equ 03208H
PbCpuVendor equ 003C4H
PbChainedInterruptList equ 03320H
PbSpinLockAcquireCount equ 03560H
PbSpinLockContentionCount equ 03564H
PbSpinLockSpinCount equ 03568H
PbIpiSendRequestBroadcastCount equ 0356CH
PbIpiSendRequestRoutineCount equ 03570H
PbIpiSendSoftwareInterruptCount equ 03574H
ProcessorBlockLength equ 03630H
CPU_AMD equ 00002H
CPU_INTEL equ 00001H
DEBUG_ACTIVE_MASK equ 000DFH

;
;  Immediate Interprocessor Command Definitions
;

IPI_APC equ 00001H
IPI_DPC equ 00002H
IPI_FREEZE equ 00004H
IPI_PACKET_READY equ 00008H
IPI_SYNCH_REQUEST equ 00010H

;
;  Thread Environment Block Structure Offset Definitions
;

TbExceptionList equ 00000H
TbStackBase equ 00004H
TbStackLimit equ 00008H
TbEnvironmentPointer equ 0001CH
TbVersion equ 00010H
TbFiberData equ 00010H
TbArbitraryUserPointer equ 00014H
TbClientId equ 00020H
TbThreadLocalStoragePointer equ 0002CH
TbCountOfOwnedCriticalSections equ 00038H
TbSystemReserved1 equ 000CCH
TbVdm equ 00F18H
TbCsrClientThread equ 0003CH
TbGdiThreadLocalInfo equ 006C8H
TbglDispatchTable equ 007C4H
TbglSectionInfo equ 00BE0H
TbglSection equ 00BE4H
TbglTable equ 00BE8H
TbglCurrentRC equ 00BECH
TbglContext equ 00BF0H
TbWOW32Reserved equ 000C0H
TbExceptionCode equ 001A4H
TbDeallocationStack equ 00E0CH
TbGdiBatchCount equ 00F70H
TeSameTebFlags equ 00FCAH
TEB_FLAGS_SAFE_THUNK_CALL equ 00001H
TEB_FLAGS_FIBER_SWAPPED equ 00200H

;
;  WOW64 shared information block definitions
;

PwWow64Info equ 00248H
WiCpuFlags equ 00004H
WOW64_CPUFLAGS_IA64 equ 00004H

;
;  Time Fields (TIME_FIELDS) Structure Offset Definitions
;

TfSecond equ 0000AH
TfMinute equ 00008H
TfHour equ 00006H
TfWeekday equ 0000EH
TfDay equ 00004H
TfMonth equ 00002H
TfYear equ 00000H
TfMilliseconds equ 0000CH


;
;  constants for system irql and IDT vector conversion
;

MAXIMUM_IDTVECTOR equ 000FFH
MAXIMUM_PRIMARY_VECTOR equ 000FFH
PRIMARY_VECTOR_BASE equ 00030H
RPL_MASK equ 00003H
MODE_MASK equ 00001H

;
;  Flags in the CR0 register
;

CR0_PG equ 080000000H
CR0_ET equ 00010H
CR0_TS equ 00008H
CR0_EM equ 00004H
CR0_MP equ 00002H
CR0_PE equ 00001H
CR0_CD equ 040000000H
CR0_NW equ 020000000H
CR0_AM equ 040000H
CR0_WP equ 010000H
CR0_NE equ 00020H

;
;  Flags in the CR4 register
;

CR4_PGE_V equ 00007H
CR4_VME equ 00001H
CR4_PVI equ 00002H
CR4_TSD equ 00004H
CR4_DE equ 00008H
CR4_PSE equ 00010H
CR4_PAE equ 00020H
CR4_MCE equ 00040H
CR4_PGE equ 00080H
CR4_FXSR equ 00200H
CR4_XMMEXCPT equ 00400H
CR4_XSAVE equ 040000H

;
;  Miscellaneous Definitions
;

MAXIMUM_PROCESSORS equ 00020H
INITIAL_STALL_COUNT equ 00064H
IRQL_NOT_GREATER_OR_EQUAL equ 00009H
IRQL_NOT_LESS_OR_EQUAL equ 0000AH
MUTEX_ALREADY_OWNED equ 000BFH
THREAD_NOT_MUTEX_OWNER equ 00011H
SPIN_LOCK_ALREADY_OWNED equ 0000FH
SPIN_LOCK_NOT_OWNED equ 00010H
BASE_PRIORITY_THRESHOLD equ 00008H
EVENT_PAIR_INCREMENT equ 00001H
LOW_REALTIME_PRIORITY equ 00010H
BlackHole equ 0FFFFA000H
KERNEL_LARGE_STACK_COMMIT equ 03000H
KERNEL_LARGE_STACK_SIZE equ 0F000H
KERNEL_STACK_SIZE equ 03000H
DOUBLE_FAULT_STACK_SIZE equ 03000H
EFLAG_SELECT equ 0C000H
BREAKPOINT_BREAK equ 00000H
IPI_FREEZE equ 00004H
CLOCK_QUANTUM_DECREMENT equ 00003H
READY_SKIP_QUANTUM equ 00002H
THREAD_QUANTUM equ 00006H
WAIT_QUANTUM_DECREMENT equ 00001H
ROUND_TRIP_DECREMENT_COUNT equ 00010H
KI_EXCEPTION_ACCESS_VIOLATION equ 010000004H
KCACHE_ERRATA_MONITOR_FLAGS equ 00003H
XSAVE_PRESENT equ 04000000H
KTIMER_TABLE_SIZE equ 00100H

;
;  Trap Frame Offset Definitions and Length
;

TsExceptionList equ 0004CH
TsPreviousPreviousMode equ 00048H
TsSegGs equ 00030H
TsSegFs equ 00050H
TsSegEs equ 00034H
TsSegDs equ 00038H
TsEdi equ 00054H
TsEsi equ 00058H
TsEbp equ 00060H
TsEbx equ 0005CH
TsEdx equ 0003CH
TsEcx equ 00040H
TsEax equ 00044H
TsErrCode equ 00064H
TsEip equ 00068H
TsSegCs equ 0006CH
TsEflags equ 00070H
TsHardwareEsp equ 00074H
TsHardwareSegSs equ 00078H
TsTempSegCs equ 00010H
TsLogging equ 00012H
TsTempEsp equ 00014H
TsDbgEbp equ 00000H
TsDbgEip equ 00004H
TsDbgArgMark equ 00008H
TsDbgArgPointer equ 0000CH
TsDr0 equ 00018H
TsDr1 equ 0001CH
TsDr2 equ 00020H
TsDr3 equ 00024H
TsDr6 equ 00028H
TsDr7 equ 0002CH
TsV86Es equ 0007CH
TsV86Ds equ 00080H
TsV86Fs equ 00084H
TsV86Gs equ 00088H
KTRAP_FRAME_LENGTH equ 0008CH
KTRAP_FRAME_ALIGN equ 00004H
FRAME_EDITED equ 0FFF8H
EFLAGS_ALIGN_CHECK equ 040000H
EFLAGS_V86_MASK equ 020000H
EFLAGS_INTERRUPT_MASK equ 00200H
EFLAGS_TF equ 00100H
EFLAGS_VIF equ 080000H
EFLAGS_VIP equ 0100000H
EFLAGS_USER_SANITIZE equ 03F4DD7H

;
;  Context Frame Offset and Flag Definitions
;

CONTEXT_FULL equ 010007H
CONTEXT_DEBUG_REGISTERS equ 010010H
CONTEXT_CONTROL equ 010001H
CONTEXT_FLOATING_POINT equ 010008H
CONTEXT_INTEGER equ 010002H
CONTEXT_SEGMENTS equ 010004H

CsContextFlags equ 00000H
CsDr0 equ 00004H
CsDr1 equ 00008H
CsDr2 equ 0000CH
CsDr3 equ 00010H
CsDr6 equ 00014H
CsDr7 equ 00018H
CsFloatSave equ 0001CH
CsSegGs equ 0008CH
CsSegFs equ 00090H
CsSegEs equ 00094H
CsSegDs equ 00098H
CsEdi equ 0009CH
CsEsi equ 000A0H
CsEbx equ 000A4H
CsEdx equ 000A8H
CsEcx equ 000ACH
CsEax equ 000B0H
CsEbp equ 000B4H
CsEip equ 000B8H
CsSegCs equ 000BCH
CsEflags equ 000C0H
CsEsp equ 000C4H
CsSegSs equ 000C8H
CsExtendedRegisters equ 000CCH
ContextFrameLength equ 002D0H
CONTEXT_LENGTH equ 002CCH

DR6_LEGAL equ 0E00FH
DR7_LEGAL equ 0FFFF0155H
DR7_ACTIVE equ 00055H
DR7_RESERVED_MASK equ 0DC00H

MSR_AMD_ACCESS equ 09C5A203AH
ErrHandler equ 00004H
ErrNext equ 00000H
ErrLength equ 00008H

;
;  Floating save area field offset definitions
;

FpControlWord equ 00000H
FpStatusWord equ 00004H
FpTagWord equ 00008H
FpErrorOffset equ 0000CH
FpErrorSelector equ 00010H
FpDataOffset equ 00014H
FpDataSelector equ 00018H
FpRegisterArea equ 0001CH
FpCtxtCr0NpxState equ 0006CH

;
;  FX Floating save area field offset definitions
;

FxControlWord equ 00000H
FxStatusWord equ 00002H
FxTagWord equ 00004H
FxErrorOpcode equ 00006H
FxErrorOffset equ 00008H
FxErrorSelector equ 0000CH
FxDataOffset equ 00010H
FxDataSelector equ 00014H
FxMXCsr equ 00018H
FxFpRegisterArea equ 00020H
FpCr0NpxState equ 001FCH

NPX_FRAME_LENGTH equ 00210H
NPX_FRAME_ALIGN equ 00010H

;
;  Kernel Stack Control Structure Offset Definitions
;

KciCallout equ 00000H
KciParameter equ 00004H
KciCommitSize equ 00008H
KciKernelStackBase equ 0000CH
KERNEL_CALLOUT_INFO_LENGTH equ 00010H

KcTrapFrame equ 0FFFFFFD0H
KcExceptionList equ 0FFFFFFD0H
KcStackControlFlags equ 0FFFFFFD4H


;
;  Kernel stack area field offset definitions
;

SaNpxFrame equ 00000H
SaStackControl equ 001E0H
SaCr0NpxState equ 001FCH


;
;  Processor State Frame Offset Definitions

;

PsContextFrame equ 00000H
PsSpecialRegisters equ 002CCH
SrCr0 equ 00000H
SrCr2 equ 00004H
SrCr3 equ 00008H
SrCr4 equ 0000CH
SrKernelDr0 equ 00010H
SrKernelDr1 equ 00014H
SrKernelDr2 equ 00018H
SrKernelDr3 equ 0001CH
SrKernelDr6 equ 00020H
SrKernelDr7 equ 00024H
SrGdtr equ 0002AH
SrIdtr equ 00032H
SrTr equ 00038H
SrLdtr equ 0003AH
ProcessorStateLength equ 00320H

;
;  EPROCESS
;

EpDebugPort equ 000ECH
EpVdmObjects equ 00148H

;
;  Machine type definitions (Temporarily)
;

MACHINE_TYPE_ISA equ 00000H
MACHINE_TYPE_EISA equ 00001H
MACHINE_TYPE_MCA equ 00002H

;
;  KeFeatureBits defines
;

KF_V86_VIS equ 00001H
KF_RDTSC equ 00002H
KF_CR4 equ 00004H
KF_GLOBAL_PAGE equ 00010H
KF_LARGE_PAGE equ 00020H
KF_CMPXCHG8B equ 00080H
KF_FAST_SYSCALL equ 01000H
KF_XSTATE equ 0400000H

;
;  LoaderParameterBlock offsets relative to base
;

LpbLoadOrderListHead equ 00010H
LpbMemoryDescriptorListHead equ 00018H
LpbKernelStack equ 00028H
LpbPrcb equ 0002CH
LpbProcess equ 00030H
LpbThread equ 00034H
LpbI386 equ 00068H
LpbRegistryLength equ 00038H
LpbRegistryBase equ 0003CH
LpbConfigurationRoot equ 00040H
LpbArcBootDeviceName equ 00044H
LpbArcHalDeviceName equ 00048H
LpbExtension equ 00064H
PAGE_SIZE equ 01000H

;
;  VDM equates.
;

VDM_INDEX_Invalid equ 00000H
VDM_INDEX_0F equ 00001H
VDM_INDEX_ESPrefix equ 00002H
VDM_INDEX_CSPrefix equ 00003H
VDM_INDEX_SSPrefix equ 00004H
VDM_INDEX_DSPrefix equ 00005H
VDM_INDEX_FSPrefix equ 00006H
VDM_INDEX_GSPrefix equ 00007H
VDM_INDEX_OPER32Prefix equ 00008H
VDM_INDEX_ADDR32Prefix equ 00009H
VDM_INDEX_INSB equ 0000AH
VDM_INDEX_INSW equ 0000BH
VDM_INDEX_OUTSB equ 0000CH
VDM_INDEX_OUTSW equ 0000DH
VDM_INDEX_PUSHF equ 0000EH
VDM_INDEX_POPF equ 0000FH
VDM_INDEX_INTnn equ 00010H
VDM_INDEX_INTO equ 00011H
VDM_INDEX_IRET equ 00012H
VDM_INDEX_NPX equ 00013H
VDM_INDEX_INBimm equ 00014H
VDM_INDEX_INWimm equ 00015H
VDM_INDEX_OUTBimm equ 00016H
VDM_INDEX_OUTWimm equ 00017H
VDM_INDEX_INB equ 00018H
VDM_INDEX_INW equ 00019H
VDM_INDEX_OUTB equ 0001AH
VDM_INDEX_OUTW equ 0001BH
VDM_INDEX_LOCKPrefix equ 0001CH
VDM_INDEX_REPNEPrefix equ 0001DH
VDM_INDEX_REPPrefix equ 0001EH
VDM_INDEX_CLI equ 0001FH
VDM_INDEX_STI equ 00020H
VDM_INDEX_HLT equ 00021H
MAX_VDM_INDEX equ 00022H

;
;  VDM feature bits.
;

V86_VIRTUAL_INT_EXTENSIONS equ 00001H
PM_VIRTUAL_INT_EXTENSIONS equ 00002H

;
;  Selector types.
;

SEL_TYPE_NP equ 00040H

;
;  Usermode callout frame definitions
;

CuInStk equ 00000H
CuTrFr equ 00004H
CuCbStk equ 00008H
CuEdi equ 0000CH
CuEsi equ 00010H
CuEbx equ 00014H
CuEbp equ 00018H
CuRet equ 0001CH
CuOutBf equ 00020H
CuOutLn equ 00024H

;
;  VDM_PROCESS_OBJECTS
;

VpVdmTib equ 00098H

;
;  Hypervisor Enlightenment Definitions
;

HV_MMU_USE_HYPERCALL_FOR_ADDRESS_SWITCH equ 00001H
HV_MMU_USE_HYPERCALL_FOR_LOCAL_FLUSH equ 00002H
HV_MMU_USE_HYPERCALL_FOR_REMOTE_FLUSH equ 00004H
HV_KE_USE_HYPERCALL_FOR_LONG_SPIN_WAIT equ 00040H

;
;  Wow64 turbo dispatch system call types
;

ServiceNoTurbo equ 00000H

;
;  No arguments system call
;

Service0Arg equ 00001H
Service0ArgReloadState equ 00002H

;
;  One argument system call types
;

Service1ArgSp equ 00003H
Service1ArgNSp equ 00004H

;
;  Two arguments system call types
;

Service2ArgNSpNSp equ 00005H
Service2ArgNSpNSpReloadState equ 00006H
Service2ArgSpNSp equ 00007H
Service2ArgSpSp equ 00008H
Service2ArgNSpSp equ 00009H

;
;  Three arguments system call types
;

Service3ArgNSpNSpNSp equ 0000AH
Service3ArgSpSpSp equ 0000BH
Service3ArgSpNSpNSp equ 0000CH
Service3ArgSpNSpNSpReloadState equ 0000DH
Service3ArgSpSpNSp equ 0000EH
Service3ArgSpSpSp equ 0000BH
Service3ArgSpNSpSp equ 00010H

;
;  Four arguments system call types
;

Service4ArgNSpNSpNSpNSp equ 00011H
Service4ArgSpSpNSpNSp equ 00012H
Service4ArgSpSpNSpNSpReloadState equ 00013H
Service4ArgSpNSpNSpNSp equ 00014H
Service4ArgSpNSpNSpNSpReloadState equ 00015H
Service4ArgNSpSpNSpNSp equ 00016H
Service4ArgSpSpSpNSp equ 00017H

;
;  Special system calls
;

ServiceCpupTdQuerySystemTime equ 00018H
ServiceCpupTdGetCurrentProcessorNumber equ 00019H
ServiceCpupTdReadWriteFile equ 0001AH
ServiceCpupTdDeviceIoControlFile equ 0001BH
ServiceCpupTdRemoveIoCompletion equ 0001CH
ServiceCpupTdWaitForMultipleObjects equ 0001DH
ServiceCpupTdWaitForMultipleObjects32 equ 0001EH
Wow64ServiceTypesCount equ 0001FH

;
;  RtlBackoff
;

RtlBackoffLength equ 00004H
BoDelay equ 00000H

