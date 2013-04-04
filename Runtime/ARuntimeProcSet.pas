{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 20.11.2012
@LastMod 22.02.2013
}
unit ARuntimeProcSet;

interface

uses
  ABase,
  ARuntimeProcTypes,
  ARuntimeProcVars;

// --- ARuntime ---

function ARuntime_Boot(GetProcByName: ARuntime_GetProcByName_Proc): AError;

function ARuntime_ProcSet(GetProcByName: ARuntime_GetProcByName_Proc): AError;

implementation

const
  ARuntimeName = 'ARuntime';

// --- ARuntime ---

function ARuntime_Boot(GetProcByName: ARuntime_GetProcByName_Proc): AError;
begin
  Result := ARuntime_ProcSet(GetProcByName);
end;

function ARuntime_ProcSet(GetProcByName: ARuntime_GetProcByName_Proc): AError;
begin
  ARuntimeProcVars.ARuntime_AddModule := GetProcByName(ARuntimeName, 'ARuntime_AddModule');
  ARuntimeProcVars.ARuntime_DeleteModuleByIndex := GetProcByName(ARuntimeName, 'ARuntime_DeleteModuleByIndex');
  ARuntimeProcVars.ARuntime_DeleteModuleByName := GetProcByName(ARuntimeName, 'ARuntime_DeleteModuleByName');
  ARuntimeProcVars.ARuntime_DeleteModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_DeleteModuleByUid');
  ARuntimeProcVars.ARuntime_Fin := GetProcByName(ARuntimeName, 'ARuntime_Fin');
  ARuntimeProcVars.ARuntime_FindModuleByName := GetProcByName(ARuntimeName, 'ARuntime_FindModuleByName');
  ARuntimeProcVars.ARuntime_FindModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_FindModuleByUid');
  ARuntimeProcVars.ARuntime_GetIsShutdown := GetProcByName(ARuntimeName, 'ARuntime_GetIsShutdown');
  ARuntimeProcVars.ARuntime_GetModuleByName := GetProcByName(ARuntimeName, 'ARuntime_GetModuleByName');
  ARuntimeProcVars.ARuntime_GetModuleByUid := GetProcByName(ARuntimeName, 'ARuntime_GetModuleByUid');
  ARuntimeProcVars.ARuntime_GetModuleNameByIndex := GetProcByName(ARuntimeName, 'ARuntime_GetModuleNameByIndex');
  ARuntimeProcVars.ARuntime_GetModuleNameByUid := GetProcByName(ARuntimeName, 'ARuntime_GetModuleNameByUid');
  ARuntimeProcVars.ARuntime_GetModuleUidByIndex := GetProcByName(ARuntimeName, 'ARuntime_GetModuleUidByIndex');
  ARuntimeProcVars.ARuntime_GetModuleProcsByUid := GetProcByName(ARuntimeName, 'ARuntime_GetModuleProcsByUid');
  ARuntimeProcVars.ARuntime_GetModulesCount := GetProcByName(ARuntimeName, 'ARuntime_GetModulesCount');
  ARuntimeProcVars.ARuntime_GetOnAfterRun := GetProcByName(ARuntimeName, 'ARuntime_GetOnAfterRun');
  ARuntimeProcVars.ARuntime_GetOnBeforeRun := GetProcByName(ARuntimeName, 'ARuntime_GetOnBeforeRun');
  ARuntimeProcVars.ARuntime_GetProcByName := GetProcByName(ARuntimeName, 'ARuntime_GetProcByName');
  ARuntimeProcVars.ARuntime_Init := GetProcByName(ARuntimeName, 'ARuntime_Init');
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
 