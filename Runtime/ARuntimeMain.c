/*  Abstract ARuntime main function
 *  Author Prof1983 <prof1983@ya.ru>
 *  Created 04.04.2013
 *  LastMod 04.04.2013
 */

#include "ABase.h"
#include "ARuntimeBase.h"
#include "ARuntimeClientVars.c"

// --- ARuntime ---

AInt
afunc ARuntime_AddModule(AModule Module)
{
  if (_ARuntime_AddModule == 0) return -100;
  return _ARuntime_AddModule(Module);
}

AInt
afunc ARuntime_DeleteModuleByIndex(AInt Index)
{
  if (_ARuntime_DeleteModuleByIndex == 0) return -100;
  return _ARuntime_DeleteModuleByIndex(Index);
}

AInt
afunc ARuntime_DeleteModuleByName(AStr Name)
{
  if (_ARuntime_DeleteModuleByName == 0) return -100;
  return _ARuntime_DeleteModuleByName(Name);
}

AInt
afunc ARuntime_DeleteModuleByUid(AModuleUid Uid)
{
  if (_ARuntime_DeleteModuleByUid == 0) return -100;
  return _ARuntime_DeleteModuleByUid(Uid);
}

AError
afunc ARuntime_Fin()
{
  if (_ARuntime_Fin == 0) return -100;
  return _ARuntime_Fin();
}

AInt
afunc ARuntime_FindModuleByName(AStr Name)
{
  if (_ARuntime_FindModuleByName == 0) return -100;
  return _ARuntime_FindModuleByName(Name);
}

AInt
afunc ARuntime_FindModuleByUid(AModuleUid Uid)
{
  if (_ARuntime_FindModuleByUid == 0) return -100;
  return _ARuntime_FindModuleByUid(Uid);
}

ABool
afunc ARuntime_GetIsShutdown()
{
  if (_ARuntime_GetIsShutdown == 0) return AFalse;
  return _ARuntime_GetIsShutdown();
}

// Module - out
AInt
afunc ARuntime_GetModuleByName(AStr Name, AModule Module)
{
  if (_ARuntime_GetModuleByName == 0) return -100;
  return _ARuntime_GetModuleByName(Name, Module);
}

// Module - out
AInt
afunc ARuntime_GetModuleByUid(AModuleUid Uid, AModule Module)
{
  if (_ARuntime_GetModuleByUid == 0) return -100;
  return _ARuntime_GetModuleByUid(Uid, Module);
}

AInt
afunc ARuntime_GetModuleNameByIndex(AInt Index, AStr Name, AInt MaxLen)
{
  if (_ARuntime_GetModuleNameByIndex == 0) return -100;
  return _ARuntime_GetModuleNameByIndex(Index, Name, MaxLen);
}

AInt
afunc ARuntime_GetModuleNameByUid(AInt Uid, AStr Name, AInt MaxLen)
{
  if (_ARuntime_GetModuleNameByUid == 0) return -100;
  return _ARuntime_GetModuleNameByUid(Uid, Name, MaxLen);
}

APointer
afunc ARuntime_GetModuleProcsByUid(AModuleUid Uid)
{
  if (_ARuntime_GetModuleProcsByUid == 0) return 0;
  return _ARuntime_GetModuleProcsByUid(Uid);
}

AInt
afunc ARuntime_GetModulesCount()
{
  if (_ARuntime_GetModulesCount == 0) return 0;
  return _ARuntime_GetModulesCount();
}

AModuleUid
afunc ARuntime_GetModuleUidByIndex(AInt Index)
{
  if (_ARuntime_GetModuleUidByIndex == 0) return 0;
  return _ARuntime_GetModuleUidByIndex(Index);
}

AProc
afunc ARuntime_GetOnAfterRun()
{
  if (_ARuntime_GetOnAfterRun == 0) return 0;
  return _ARuntime_GetOnAfterRun();
}

AProc
afunc ARuntime_GetOnBeforeRun()
{
  if (_ARuntime_GetOnBeforeRun == 0) return 0;
  return _ARuntime_GetOnBeforeRun();
}

APointer
afunc ARuntime_GetProcByName(AStr ModuleName, AStr ProcName)
{
  if (_ARuntime_GetProcByName == 0) return 0;
  return _ARuntime_GetProcByName(ModuleName, ProcName);
}

AError
afunc ARuntime_Init()
{
  if (_ARuntime_Init == 0) return -100;
  return _ARuntime_Init();
}

AInt
afunc ARuntime_InitModuleByName(AStr Name)
{
  if (_ARuntime_InitModuleByName == 0) return -100;
  return _ARuntime_InitModuleByName(Name);
}

AInt
afunc ARuntime_InitModuleByUid(AModuleUid Uid)
{
  if (_ARuntime_InitModuleByUid == 0) return -100;
  return _ARuntime_InitModuleByUid(Uid);
}

AInt
afunc ARuntime_RegisterModule(AModule Module)
{
  if (_ARuntime_RegisterModule == 0) return -100;
  return _ARuntime_RegisterModule(Module);
}

AError
afunc ARuntime_Run()
{
  if (_ARuntime_Run == 0) return -100;
  return _ARuntime_Run();
}

AError
afunc ARuntime_SetOnAfterRun(AProc Value)
{
  if (_ARuntime_SetOnAfterRun == 0) return -100;
  return _ARuntime_SetOnAfterRun(Value);
}

AError
afunc ARuntime_SetOnBeforeRun(AProc Value)
{
  if (_ARuntime_SetOnBeforeRun == 0) return -100;
  return _ARuntime_SetOnBeforeRun(Value);
}

AError
afunc ARuntime_SetOnRun(AProc Value)
{
  if (_ARuntime_SetOnRun == 0) return -100;
  return _ARuntime_SetOnRun(Value);
}

AError
afunc ARuntime_SetOnShutdown(AProc Value)
{
  if (_ARuntime_SetOnShutdown == 0) return -100;
  return _ARuntime_SetOnShutdown(Value);
}

AError
afunc ARuntime_Shutdown()
{
  if (_ARuntime_Shutdown == 0) return -100;
  return _ARuntime_Shutdown();
}

