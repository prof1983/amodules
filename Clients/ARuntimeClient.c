/*
Author Prof1983 <prof1983@ya.ru>
Created 04.03.2013
LastMod 04.03.2013
*/

#include "ARuntimeClientVars.c"
#include "ARuntimeClient.h"

// --- ARuntime ---

AError
afunc ARuntime_LoadProcs(ARuntime_GetProcByName_Proc GetProcByName)
{
  _ARuntime_AddModule = GetProcByName("ARuntime", "ARuntime_AddModule");
  _ARuntime_DeleteModuleByIndex = GetProcByName("ARuntime", "ARuntime_DeleteModuleByIndex");
  _ARuntime_DeleteModuleByName = GetProcByName("ARuntime", "ARuntime_DeleteModuleByName");
  _ARuntime_DeleteModuleByUid = GetProcByName("ARuntime", "ARuntime_DeleteModuleByUid");
  _ARuntime_Fin = GetProcByName("ARuntime", "ARuntime_Fin");
  _ARuntime_FindModuleByName = GetProcByName("ARuntime", "ARuntime_FindModuleByName");
  _ARuntime_FindModuleByUid = GetProcByName("ARuntime", "ARuntime_FindModuleByUid");
  _ARuntime_GetIsShutdown = GetProcByName("ARuntime", "ARuntime_GetIsShutdown");
  _ARuntime_GetModuleByName = GetProcByName("ARuntime", "ARuntime_GetModuleByName");
  _ARuntime_GetModuleByUid = GetProcByName("ARuntime", "ARuntime_GetModuleByUid");
  _ARuntime_GetModuleNameByIndex = GetProcByName("ARuntime", "ARuntime_GetModuleNameByIndex");
  _ARuntime_GetModuleNameByUid = GetProcByName("ARuntime", "ARuntime_GetModuleNameByUid");
  _ARuntime_GetModuleUidByIndex = GetProcByName("ARuntime", "ARuntime_GetModuleUidByIndex");
  _ARuntime_GetModuleProcsByUid = GetProcByName("ARuntime", "ARuntime_GetModuleProcsByUid");
  _ARuntime_GetModulesCount = GetProcByName("ARuntime", "ARuntime_GetModulesCount");
  _ARuntime_GetOnAfterRun = GetProcByName("ARuntime", "ARuntime_GetOnAfterRun");
  _ARuntime_GetOnBeforeRun = GetProcByName("ARuntime", "ARuntime_GetOnBeforeRun");
  _ARuntime_GetProcByName = GetProcByName("ARuntime", "ARuntime_GetProcByName");
  _ARuntime_Init = GetProcByName("ARuntime", "ARuntime_Init");
  _ARuntime_InitModuleByName = GetProcByName("ARuntime", "ARuntime_InitModuleByName");
  _ARuntime_InitModuleByUid = GetProcByName("ARuntime", "ARuntime_InitModuleByUid");
  _ARuntime_RegisterModule = GetProcByName("ARuntime", "ARuntime_RegisterModule");
  _ARuntime_Run = GetProcByName("ARuntime", "ARuntime_Run");
  _ARuntime_SetOnAfterRun = GetProcByName("ARuntime", "ARuntime_SetOnAfterRun");
  _ARuntime_SetOnBeforeRun = GetProcByName("ARuntime", "ARuntime_SetOnBeforeRun");
  _ARuntime_SetOnRun = GetProcByName("ARuntime", "ARuntime_SetOnRun");
  _ARuntime_SetOnShutdown = GetProcByName("ARuntime", "ARuntime_SetOnShutdown");
  _ARuntime_Shutdown = GetProcByName("ARuntime", "ARuntime_Shutdown");

  return 0;
}
