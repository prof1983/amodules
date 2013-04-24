{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 24.04.2013
}
unit ARuntimeProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  {$ifdef ADepr}
  ARuntimeProcRec,
  {$endif}
  ARuntimeProcVars;

{$ifdef ADepr}
function ARuntime_Boot(const Runtime: ARuntimeProcs_Type): AError;
{$endif}

{$ifdef ADepr}
function ARuntime_ProcSet(const Runtime: ARuntimeProcs_Type): AError;
{$endif}

function ARuntime_ProcSet2(GetProcByName: ARuntime_GetProcByName_Proc): AError;

implementation

const
  ARuntimeName = 'ARuntime';

{$ifdef ADepr}
function ARuntime_Boot(const Runtime: ARuntimeProcs_Type): AError;
begin
  Result := ARuntime_ProcSet(Runtime);
end;
{$endif}

{$ifdef ADepr}
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
{$endif}

function ARuntime_ProcSet2(GetProcByName: ARuntime_GetProcByName_Proc): AError;
begin
  ARuntimeProcVars.ARuntime_AddModule := GetProcByName(ARuntimeName, 'ARuntime_AddModule');
  ARuntimeProcVars.ARuntime_DeleteModuleByName := GetProcByName(ARuntimeName, 'ARuntime_DeleteModuleByName');
  ARuntimeProcVars.ARuntime_DeleteModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_DeleteModuleByUid');
  ARuntimeProcVars.ARuntime_FindModuleByName := GetProcByName(ARuntimeName, 'ARuntime_FindModuleByName');
  ARuntimeProcVars.ARuntime_FindModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_FindModuleByUid');
  ARuntimeProcVars.ARuntime_GetIsShutdown := GetProcByName(ARuntimeName, 'ARuntime_GetIsShutdown');
  ARuntimeProcVars.ARuntime_GetModuleByName := GetProcByName(ARuntimeName, 'ARuntime_GetModuleByName');
  ARuntimeProcVars.ARuntime_GetModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_GetModuleByUid');
  ARuntimeProcVars.ARuntime_GetModuleNameByIndex := GetProcByName(ARuntimeName, 'ARuntime_GetModuleNameByIndex');
  ARuntimeProcVars.ARuntime_GetModuleUidByIndex := GetProcByName(ARuntimeName, 'ARuntime_GetModuleUidByIndex');
  ARuntimeProcVars.ARuntime_GetModuleProcsByUid := GetProcByName(ARuntimeName, 'ARuntime_GetModuleProcsByUid');
  ARuntimeProcVars.ARuntime_GetModulesCount := GetProcByName(ARuntimeName, 'ARuntime_GetModulesCount');
  ARuntimeProcVars.ARuntime_InitModuleByName := GetProcByName(ARuntimeName, 'ARuntime_InitModuleByName');
  ARuntimeProcVars.ARuntime_InitModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_InitModuleByUid');
  ARuntimeProcVars.ARuntime_RegisterModule := GetProcByName(ARuntimeName, 'ARuntime_RegisterModule');
  ARuntimeProcVars.ARuntime_Run := GetProcByName(ARuntimeName, 'ARuntime_Run');
  ARuntimeProcVars.ARuntime_SetOnAfterRun := GetProcByName(ARuntimeName, 'ARuntime_SetOnAfterRun');
  ARuntimeProcVars.ARuntime_SetOnBeforeRun := GetProcByName(ARuntimeName, 'ARuntime_SetOnBeforeRun');
  ARuntimeProcVars.ARuntime_SetOnRun := GetProcByName(ARuntimeName, 'ARuntime_SetOnRun');
  ARuntimeProcVars.ARuntime_SetOnShutdown := GetProcByName(ARuntimeName, 'ARuntime_SetOnShutdown');
  ARuntimeProcVars.ARuntime_Shutdown := GetProcByName(ARuntimeName, 'ARuntime_Shutdown');

  Result := 0;
end;

end.
 