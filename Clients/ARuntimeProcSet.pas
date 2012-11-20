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
  ARuntimeProcVars.ARuntime_AddModule := ARuntime.AddModule;
  ARuntimeProcVars.ARuntime_DeleteModuleByName := ARuntime.DeleteModuleByName;
  ARuntimeProcVars.ARuntime_DeleteModuleByUid := ARuntime.DeleteModuleByUid;
  ARuntimeProcVars.ARuntime_FindModuleByName := ARuntime.FindModuleByName;
  ARuntimeProcVars.ARuntime_FindModuleByUid := ARuntime.FindModuleByUid;
  ARuntimeProcVars.ARuntime_GetIsShutdown := ARuntime.GetIsShutdown;
  ARuntimeProcVars.ARuntime_GetModuleByName := ARuntime.GetModuleByName;
  ARuntimeProcVars.ARuntime_GetModuleByUid := ARuntime.GetModuleByUid;
  ARuntimeProcVars.ARuntime_GetModuleNameByIndex := ARuntime.GetModuleNameByIndex;
  ARuntimeProcVars.ARuntime_GetModuleUidByIndex := ARuntime.GetModuleUidByIndex;
  ARuntimeProcVars.ARuntime_GetModuleProcsByUid := ARuntime.GetModuleProcsByUid;
  ARuntimeProcVars.ARuntime_GetModulesCount := ARuntime.GetModulesCount;
  ARuntimeProcVars.ARuntime_InitModuleByName := ARuntime.InitModuleByName;
  ARuntimeProcVars.ARuntime_InitModuleByUid := ARuntime.InitModuleByUid;
  ARuntimeProcVars.ARuntime_RegisterModule := ARuntime.RegisterModule;
  ARuntimeProcVars.ARuntime_Run := ARuntime.Run;
  ARuntimeProcVars.ARuntime_SetOnAfterRun := ARuntime.SetOnAfterRun;
  ARuntimeProcVars.ARuntime_SetOnBeforeRun := ARuntime.SetOnBeforeRun;
  ARuntimeProcVars.ARuntime_SetOnRun := ARuntime.SetOnRun;
  ARuntimeProcVars.ARuntime_SetOnShutdown := ARuntime.SetOnShutdown;
  ARuntimeProcVars.ARuntime_Shutdown := Runtime.Shutdown;

  Result := 0;
end;

end.
 