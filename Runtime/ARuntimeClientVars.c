/*
Author Prof1983 <prof1983@ya.ru>
Created 04.03.2013
LastMod 04.03.2013
*/

#ifndef ARuntimeClientVarsC
#define ARuntimeClientVarsC

#include "ABase.h"
#include "ABase2.h"
#include "ARuntimeBase.h"

// --- Types ---

typedef AInt AFunction (*ARuntime_AddModule_Proc)(AModule Module);
typedef AInt AFunction (*ARuntime_DeleteModuleByIndex_Proc)(AInt Index);
typedef AInt AFunction (*ARuntime_DeleteModuleByName_Proc)(AStr Name);
typedef AInt AFunction (*ARuntime_DeleteModuleByUid_Proc)(AModuleUid Uid);
/** Finalize Runtime (Shutdown, Work end, Unloading of modules) */
typedef AError AFunction (*ARuntime_Fin_Proc)();
typedef AInt AFunction (*ARuntime_FindModuleByName_Proc)(AStr Name);
typedef AInt AFunction (*ARuntime_FindModuleByUid_Proc)(AModuleUid Uid);
typedef ABool AFunction (*ARuntime_GetIsShutdown_Proc)();
typedef AInt AFunction (*ARuntime_GetModuleByName_Proc)(AStr Name, AModule Module);
/** Returns the index of the module in the array or -1 if not found */
typedef AInt AFunction (*ARuntime_GetModuleByUid_Proc)(AModuleUid Uid, AModule Module);
typedef AInt AFunction (*ARuntime_GetModuleNameByIndex_Proc)(AInt Index, AStr Name, AInt MaxLen);
typedef AInt AFunction (*ARuntime_GetModuleNameByUid_Proc)(AInt Uid, AStr Name, AInt MaxLen);
typedef APointer AFunction (*ARuntime_GetModuleProcsByUid_Proc)(AModuleUid Uid);
typedef AModuleUid AFunction (*ARuntime_GetModuleUidByIndex_Proc)(AInt Index);
typedef AInt AFunction (*ARuntime_GetModulesCount_Proc)();
typedef AProc AFunction (*ARuntime_GetOnAfterRun_Proc)();
typedef AProc AFunction (*ARuntime_GetOnBeforeRun_Proc)();
typedef APointer AFunction (*ARuntime_GetProcByName_Proc)(AStr ModuleName, AStr ProcName);
typedef AError AFunction (*ARuntime_Init_Proc)();
/** Initializes the module by the name of
	@return 0 - Ok, >0 - Warning, <0 - Error */
typedef AInt AFunction (*ARuntime_InitModuleByName_Proc)(AStr Name);
/** Initializes the module identifier
	@return 0 - Ok, >0 - Warning, <0 - Error */
typedef AInt AFunction (*ARuntime_InitModuleByUid_Proc)(AModuleUid Uid);
typedef AInt AFunction (*ARuntime_RegisterModule_Proc)(AModule Module);
typedef AError AFunction (*ARuntime_Run_Proc)();
typedef AError AFunction (*ARuntime_SetOnAfterRun_Proc)(AProc Value);
typedef AError AFunction (*ARuntime_SetOnBeforeRun_Proc)(AProc Value);
typedef AError AFunction (*ARuntime_SetOnRun_Proc)(AProc Value);
typedef AError AFunction (*ARuntime_SetOnShutdown_Proc)(AProc Value);
typedef AError AFunction (*ARuntime_Shutdown_Proc)();

// --- Vars ---

ARuntime_AddModule_Proc _ARuntime_AddModule;
ARuntime_DeleteModuleByIndex_Proc _ARuntime_DeleteModuleByIndex;
ARuntime_DeleteModuleByName_Proc _ARuntime_DeleteModuleByName;
ARuntime_DeleteModuleByUid_Proc _ARuntime_DeleteModuleByUid;
ARuntime_Fin_Proc _ARuntime_Fin;
ARuntime_FindModuleByName_Proc _ARuntime_FindModuleByName;
ARuntime_FindModuleByUid_Proc _ARuntime_FindModuleByUid;
ARuntime_GetIsShutdown_Proc _ARuntime_GetIsShutdown;
ARuntime_GetModuleByName_Proc _ARuntime_GetModuleByName;
ARuntime_GetModuleByUid_Proc _ARuntime_GetModuleByUid;
ARuntime_GetModuleNameByIndex_Proc _ARuntime_GetModuleNameByIndex;
ARuntime_GetModuleNameByUid_Proc _ARuntime_GetModuleNameByUid;
ARuntime_GetModuleUidByIndex_Proc _ARuntime_GetModuleUidByIndex;
ARuntime_GetModuleProcsByUid_Proc _ARuntime_GetModuleProcsByUid;
ARuntime_GetModulesCount_Proc _ARuntime_GetModulesCount;
ARuntime_GetOnAfterRun_Proc _ARuntime_GetOnAfterRun;
ARuntime_GetOnBeforeRun_Proc _ARuntime_GetOnBeforeRun;
ARuntime_GetProcByName_Proc _ARuntime_GetProcByName;
ARuntime_Init_Proc _ARuntime_Init;
ARuntime_InitModuleByName_Proc _ARuntime_InitModuleByName;
ARuntime_InitModuleByUid_Proc _ARuntime_InitModuleByUid;
ARuntime_RegisterModule_Proc _ARuntime_RegisterModule;
ARuntime_Run_Proc _ARuntime_Run;
ARuntime_SetOnAfterRun_Proc _ARuntime_SetOnAfterRun;
ARuntime_SetOnBeforeRun_Proc _ARuntime_SetOnBeforeRun;
ARuntime_SetOnRun_Proc _ARuntime_SetOnRun;
ARuntime_SetOnShutdown_Proc _ARuntime_SetOnShutdown;
ARuntime_Shutdown_Proc _ARuntime_Shutdown;

#endif
