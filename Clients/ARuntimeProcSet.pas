{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 20.11.2012
}
unit ARuntimeProcSet;

interface

uses
  ABase, ARuntimeProcRec, ARuntimeProcVars;

function ARuntime_Boot(const Runtime: ARuntimeProcs_Type): AError;

function ARuntime_ProcSet(const Runtime: ARuntimeProcs_Type): AError;

implementation

function ARuntime_Boot(const Runtime: ARuntimeProcs_Type): AError;
begin
  Result := ARuntime_ProcSet(Runtime);
end;

function ARuntime_ProcSet(const Runtime: ARuntimeProcs_Type): AError;
begin
  ARuntimeProcVars.ARuntime_AddModule := Runtime.AddModule;
  ARuntimeProcVars.ARuntime_DeleteModuleByName := Runtime.DeleteModuleByName;
  ARuntimeProcVars.ARuntime_DeleteModuleByUid := Runtime.DeleteModuleByUid;
  ARuntimeProcVars.ARuntime_FindModuleByName := Runtime.FindModuleByName;
  ARuntimeProcVars.ARuntime_FindModuleByUid := Runtime.FindModuleByUid;
  ARuntimeProcVars.ARuntime_GetIsShutdown := Runtime.GetIsShutdown;
  ARuntimeProcVars.ARuntime_GetModuleByName := Runtime.GetModuleByName;
  ARuntimeProcVars.ARuntime_GetModuleByUid := Runtime.GetModuleByUid;
  ARuntimeProcVars.ARuntime_GetModuleNameByIndex := Runtime.GetModuleNameByIndex;
  ARuntimeProcVars.ARuntime_GetModuleUidByIndex := Runtime.GetModuleUidByIndex;
  ARuntimeProcVars.ARuntime_GetModuleProcsByUid := Runtime.GetModuleProcsByUid;
  ARuntimeProcVars.ARuntime_GetModulesCount := Runtime.GetModulesCount;
  ARuntimeProcVars.ARuntime_InitModuleByName := Runtime.InitModuleByName;
  ARuntimeProcVars.ARuntime_InitModuleByUid := Runtime.InitModuleByUid;
  ARuntimeProcVars.ARuntime_RegisterModule := Runtime.RegisterModule;
  ARuntimeProcVars.ARuntime_Run := Runtime.Run;
  ARuntimeProcVars.ARuntime_SetOnAfterRun := Runtime.SetOnAfterRun;
  ARuntimeProcVars.ARuntime_SetOnBeforeRun := Runtime.SetOnBeforeRun;
  ARuntimeProcVars.ARuntime_SetOnRun := Runtime.SetOnRun;
  ARuntimeProcVars.ARuntime_SetOnShutdown := Runtime.SetOnShutdown;
  ARuntimeProcVars.ARuntime_Shutdown := Runtime.Shutdown;

  Result := 0;
end;

end.
 