{**
@Abstract ARuntime types
@Author Prof1983 <prof1983@ya.ru>
@Created 25.07.2012
@LastMod 20.11.2012
}
unit ARuntimeProcVars;

interface

uses
  ARuntimeProcTypes;

var
  //Runtime_Module_Count: A_Runtime_Modules_Count_Proc; - Use ARuntime_GetModulesCount
  //Runtime_Module_DeleteByName: A_Runtime_Modules_DeleteByNameWS_Proc; - Use ARuntime_DeleteModuleByName
  //Runtime_Module_FindByName: A_Runtime_Modules_FindByNameWS_Proc; - Use ARuntime_FindModuleByName
  //Runtime_Module_GetByName: A_Runtime_Modules_GetByName02_Proc; - Use ARuntime_GetModuleByName
  //Runtime_Module_GetNameByIndex: A_Runtime_Modules_GetNameByIndexWS_Proc; - Use ARuntime_GetModuleNameByIndex
  //Runtime_Module_InitByName: A_Runtime_Modules_InitByNameWS_Proc; - Use ARuntime_InitModuleByName
  //Runtime_Module_Register: A_Runtime_Module_Register02_Proc; - Use ARuntime_RegisterModule

  ARuntime_AddModule: ARuntime_AddModule_Proc;
  ARuntime_DeleteModuleByName: ARuntime_DeleteModuleByName_Proc;
  ARuntime_DeleteModuleByUid: ARuntime_DeleteModuleByUid_Proc;
  ARuntime_FindModuleByName: ARuntime_FindModuleByName_Proc;
  ARuntime_FindModuleByUid: ARuntime_FindModuleByUid_Proc;
  ARuntime_GetIsShutdown: ARuntime_GetIsShutdown_Proc;
  ARuntime_GetModuleByName: ARuntime_GetModuleByName_Proc;
  ARuntime_GetModuleByUid: ARuntime_GetModuleByUid_Proc;
  ARuntime_GetModuleNameByIndex: ARuntime_GetModuleNameByIndex_Proc;
  ARuntime_GetModuleUidByIndex: ARuntime_GetModuleUidByIndex_Proc;
  ARuntime_GetModuleProcsByUid: ARuntime_GetModuleProcsByUid_Proc;
  ARuntime_GetModulesCount: ARuntime_GetModulesCount_Proc;
  ARuntime_InitModuleByName: ARuntime_InitModuleByName_Proc;
  ARuntime_InitModuleByUid: ARuntime_InitModuleByUid_Proc;
  ARuntime_RegisterModule: ARuntime_RegisterModule_Proc;
  ARuntime_Run: ARuntime_Run_Proc;
  ARuntime_SetOnAfterRun: ARuntime_SetOnAfterRun_Proc;
  ARuntime_SetOnBeforeRun: ARuntime_SetOnBeforeRun_Proc;
  ARuntime_SetOnRun: ARuntime_SetOnRun_Proc;
  ARuntime_SetOnShutdown: ARuntime_SetOnShutdown_Proc;
  ARuntime_Shutdown: ARuntime_Shutdown_Proc;

{var
  FRuntime: ARuntimeProcs_Type;}

implementation

end.
