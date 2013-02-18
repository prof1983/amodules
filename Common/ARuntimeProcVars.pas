{**
@Abstract ARuntime types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.07.2012
@LastMod 18.02.2013
}
unit ARuntimeProcVars;

interface

uses
  ARuntimeProcTypes;

var
  ARuntime_AddModule: ARuntime_AddModule_Proc;
  ARuntime_DeleteModuleByIndex: ARuntime_DeleteModuleByIndex_Proc;
  ARuntime_DeleteModuleByName: ARuntime_DeleteModuleByName_Proc;
  ARuntime_DeleteModuleByUid: ARuntime_DeleteModuleByUid_Proc;
  ARuntime_Fin: ARuntime_Fin_Proc;
  ARuntime_FindModuleByName: ARuntime_FindModuleByName_Proc;
  ARuntime_FindModuleByUid: ARuntime_FindModuleByUid_Proc;
  ARuntime_GetIsShutdown: ARuntime_GetIsShutdown_Proc;
  ARuntime_GetModuleByName: ARuntime_GetModuleByName_Proc;
  ARuntime_GetModuleByUid: ARuntime_GetModuleByUid_Proc;
  ARuntime_GetModuleNameByIndex: ARuntime_GetModuleNameByIndex_Proc;
  ARuntime_GetModuleNameByUid: ARuntime_GetModuleNameByUid_Proc;
  ARuntime_GetModuleUidByIndex: ARuntime_GetModuleUidByIndex_Proc;
  ARuntime_GetModuleProcsByUid: ARuntime_GetModuleProcsByUid_Proc;
  ARuntime_GetModulesCount: ARuntime_GetModulesCount_Proc;
  ARuntime_GetOnAfterRun: ARuntime_GetOnAfterRun_Proc;
  ARuntime_GetOnBeforeRun: ARuntime_GetOnBeforeRun_Proc;
  ARuntime_GetProcByName: ARuntime_GetProcByName_Proc;
  ARuntime_Init: ARuntime_Init_Proc;
  ARuntime_InitModuleByName: ARuntime_InitModuleByName_Proc;
  ARuntime_InitModuleByUid: ARuntime_InitModuleByUid_Proc;
  ARuntime_RegisterModule: ARuntime_RegisterModule_Proc;
  ARuntime_Run: ARuntime_Run_Proc;
  ARuntime_SetOnAfterRun: ARuntime_SetOnAfterRun_Proc;
  ARuntime_SetOnBeforeRun: ARuntime_SetOnBeforeRun_Proc;
  ARuntime_SetOnRun: ARuntime_SetOnRun_Proc;
  ARuntime_SetOnShutdown: ARuntime_SetOnShutdown_Proc;
  ARuntime_Shutdown: ARuntime_Shutdown_Proc;

implementation

end.
