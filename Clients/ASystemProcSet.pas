{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 23.04.2013
}
unit ASystemProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  ASystemBase,
  {$ifdef ADepr}
  ASystemProcRec,
  {$endif}
  ASystemProcVars;

// --- ASystem ---

function ASystem_SetProcs(GetProc: AModuleGetProc): AError;

{$ifdef ADepr}
function ASystem_SetProcsP(Procs: PSystemProcs): AInteger;
function ASystem_SetProcsR(const Procs: ASystemProcs_Type): AInteger;
{$endif}

implementation

// --- ASystem ---

function ASystem_SetProcs(GetProc: AModuleGetProc): AError;
begin
  ASystemProcVars.ASystem_Fin := GetProc('ASystem_Fin');
  ASystemProcVars.ASystem_GetComments := GetProc('ASystem_GetComments');
  ASystemProcVars.ASystem_GetCompanyName := GetProc('ASystem_GetCompanyName');
  ASystemProcVars.ASystem_GetConfig := GetProc('ASystem_GetConfig');
  ASystemProcVars.ASystem_GetDataDirectoryPath := GetProc('ASystem_GetDataDirectoryPath');
  ASystemProcVars.ASystem_GetCopyright := GetProc('ASystem_GetCopyright');
  ASystemProcVars.ASystem_GetDataDirectoryPath := GetProc('ASystem_GetDataDirectoryPath');
  ASystemProcVars.ASystem_GetDescription := GetProc('ASystem_GetDescription');
  ASystemProcVars.ASystem_GetDirectoryPath := GetProc('ASystem_GetDirectoryPath');
  ASystemProcVars.ASystem_GetExeName := GetProc('ASystem_GetExeName');
  ASystemProcVars.ASystem_GetExePath := GetProc('ASystem_GetExePath');
  ASystemProcVars.ASystem_GetParamStr := GetProc('ASystem_GetParamStr');
  ASystemProcVars.ASystem_GetProductName := GetProc('ASystem_GetProductName');
  ASystemProcVars.ASystem_GetProductVersionStr := GetProc('ASystem_GetProductVersionStr');
  ASystemProcVars.ASystem_GetProgramName := GetProc('ASystem_GetProgramName');
  ASystemProcVars.ASystem_GetProgramVersionStr := GetProc('ASystem_GetProgramVersionStr');
  ASystemProcVars.ASystem_GetResourceString := GetProc('ASystem_GetResourceString');
  ASystemProcVars.ASystem_GetTitle := GetProc('ASystem_GetTitle');
  ASystemProcVars.ASystem_GetUrl := GetProc('ASystem_GetUrl');
  ASystemProcVars.ASystem_Init := GetProc('ASystem_Init');
  ASystemProcVars.ASystem_OnAfterRun_Connect := GetProc('ASystem_OnAfterRun_Connect');
  ASystemProcVars.ASystem_OnAfterRun_Disconnect := GetProc('ASystem_OnAfterRun_Disconnect');
  ASystemProcVars.ASystem_OnBeforeRun_Connect := GetProc('ASystem_OnBeforeRun_Connect');
  ASystemProcVars.ASystem_OnBeforeRun_Disconnect := GetProc('ASystem_OnBeforeRun_Disconnect');
  ASystemProcVars.ASystem_Prepare := GetProc('ASystem_Prepare');
  ASystemProcVars.ASystem_PrepareA := GetProc('ASystem_PrepareA');
  ASystemProcVars.ASystem_ProcessMessages := GetProc('ASystem_ProcessMessages');
  ASystemProcVars.ASystem_SetConfig := GetProc('ASystem_SetConfig');
  ASystemProcVars.ASystem_SetDataDirectoryPath := GetProc('ASystem_SetDataDirectoryPath');
  ASystemProcVars.ASystem_SetOnProcessMessages := GetProc('ASystem_SetOnProcessMessages');
  ASystemProcVars.ASystem_SetOnShowErrorA := GetProc('ASystem_SetOnShowErrorA');
  ASystemProcVars.ASystem_SetOnShowMessageA := GetProc('ASystem_SetOnShowMessageA');
  ASystemProcVars.ASystem_ShellExecute := GetProc('ASystem_ShellExecute');
  ASystemProcVars.ASystem_ShowError := GetProc('ASystem_ShowError');
  ASystemProcVars.ASystem_ShowErrorA := GetProc('ASystem_ShowErrorA');
  ASystemProcVars.ASystem_ShowMessageA := GetProc('ASystem_ShowMessageA');
  ASystemProcVars.ASystem_ShowMessage := GetProc('ASystem_ShowMessage');
  ASystemProcVars.ASystem_ShowMessageEx := GetProc('ASystem_ShowMessageEx');
  ASystemProcVars.ASystem_ShowMessageExA := GetProc('ASystem_ShowMessageExA');

  Result := 0;
  {$ifdef Debug}
  if not(Assigned(ASystemProcVars.ASystem_Fin)) then
    Result := 1;
  if not(Assigned(ASystemProcVars.ASystem_GetComments)) then
    Result := 2;
  if not(Assigned(ASystemProcVars.ASystem_GetCompanyName)) then
    Result := 3;
  if not(Assigned(ASystemProcVars.ASystem_GetConfig)) then
    Result := 4;
  if not(Assigned(ASystemProcVars.ASystem_GetDataDirectoryPath)) then
    Result := 5;
  if not(Assigned(ASystemProcVars.ASystem_GetCopyright)) then
    Result := 6;
  if not(Assigned(ASystemProcVars.ASystem_GetDataDirectoryPath)) then
    Result := 7;
  if not(Assigned(ASystemProcVars.ASystem_GetDescription)) then
    Result := 8;
  if not(Assigned(ASystemProcVars.ASystem_GetDirectoryPath)) then
    Result := 9;
  if not(Assigned(ASystemProcVars.ASystem_GetExeName)) then
    Result := 10;
  if not(Assigned(ASystemProcVars.ASystem_GetExePath)) then
    Result := 11;
  if not(Assigned(ASystemProcVars.ASystem_GetParamStr)) then
    Result := 12;
  if not(Assigned(ASystemProcVars.ASystem_GetProductName)) then
    Result := 13;
  if not(Assigned(ASystemProcVars.ASystem_GetProductVersionStr)) then
    Result := 14;
  if not(Assigned(ASystemProcVars.ASystem_GetProgramName)) then
    Result := 15;
  if not(Assigned(ASystemProcVars.ASystem_GetProgramVersionStr)) then
    Result := 16;
  if not(Assigned(ASystemProcVars.ASystem_GetResourceString)) then
    Result := 17;
  if not(Assigned(ASystemProcVars.ASystem_GetTitle)) then
    Result := 18;
  if not(Assigned(ASystemProcVars.ASystem_GetUrl)) then
    Result := 19;
  if not(Assigned(ASystemProcVars.ASystem_Init)) then
    Result := 20;
  if not(Assigned(ASystemProcVars.ASystem_OnAfterRun_Connect)) then
    Result := 21;
  if not(Assigned(ASystemProcVars.ASystem_OnAfterRun_Disconnect)) then
    Result := 22;
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRun_Connect)) then
    Result := 23;
  if not(Assigned(ASystemProcVars.ASystem_OnBeforeRun_Disconnect)) then
    Result := 24;
  if not(Assigned(ASystemProcVars.ASystem_Prepare)) then
    Result := 25;
  if not(Assigned(ASystemProcVars.ASystem_PrepareA)) then
    Result := 26;
  if not(Assigned(ASystemProcVars.ASystem_ProcessMessages)) then
    Result := 27;
  if not(Assigned(ASystemProcVars.ASystem_SetConfig)) then
    Result := 28;
  if not(Assigned(ASystemProcVars.ASystem_SetDataDirectoryPath)) then
    Result := 29;
  if not(Assigned(ASystemProcVars.ASystem_SetOnProcessMessages)) then
    Result := 30;
  if not(Assigned(ASystemProcVars.ASystem_SetOnShowErrorA)) then
    Result := 31;
  if not(Assigned(ASystemProcVars.ASystem_SetOnShowMessageA)) then
    Result := 32;
  if not(Assigned(ASystemProcVars.ASystem_ShellExecute)) then
    Result := 33;
  if not(Assigned(ASystemProcVars.ASystem_ShowError)) then
    Result := 34;
  if not(Assigned(ASystemProcVars.ASystem_ShowErrorA)) then
    Result := 35;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageA)) then
    Result := 36;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessage)) then
    Result := 37;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageEx)) then
    Result := 38;
  if not(Assigned(ASystemProcVars.ASystem_ShowMessageExA)) then
    Result := 39;
  {$endif}
end;

{$ifdef ADepr}
function ASystem_SetProcsP(Procs: PSystemProcs): AInteger;
begin
  Result := System_SetProcs(Procs^);
end;
{$endif}

{$ifdef ADepr}
function ASystem_SetProcsR(const Procs: ASystemProcs_Type): AInteger;
begin
  ASystemProcVars.ASystem_GetConfig := Procs.GetConfig;
  ASystemProcVars.ASystem_GetIsShutdown := Procs.GetIsShutdown;
  ASystemProcVars.ASystem_GetResourceStringWS := Procs.GetResourceStringWS;
  ASystemProcVars.ASystem_ProcessMessages02 := Procs.ProcessMessages02;
  ASystemProcVars.ASystem_SetConfig := Procs.SetConfig;
  ASystemProcVars.ASystem_ShowError02 := Procs.ShowError02;
  ASystemProcVars.ASystem_ShowMessageWS := Procs.ShowMessageWS;
  ASystemProcVars.ASystem_ShowMessageExWS := Procs.ShowMessageExWS;
  ASystemProcVars.ASystem_Shutdown02 := Procs.Shutdown02;

  ASystemProcVars.ASystem_SetOnProcessMessages02 := Procs.SetOnProcessMessages02;
  ASystemProcVars.ASystem_SetOnRun02 := Procs.SetOnRun;
  ASystemProcVars.ASystem_SetOnShutdown02 := Procs.SetOnShutdown;
  ASystemProcVars.ASystem_SetOnShowError := Procs.SetOnShowError;
  ASystemProcVars.ASystem_SetOnShowMessage := Procs.SetOnShowMessage;

  ASystemProcVars.ASystem_OnAfterRun := Procs.OnAfterRun;
  ASystemProcVars.ASystem_OnBeforeRun := Procs.OnBeforeRun;
  ASystemProcVars.ASystem_OnAfterRun_Connect02 := Procs.OnAfterRun_Connect02;
  ASystemProcVars.ASystem_OnAfterRun_Disconnect02 := Procs.OnAfterRun_Disconnect02;
  ASystemProcVars.ASystem_OnBeforeRun_Connect02 := Procs.OnBeforeRun_Connect02;
  ASystemProcVars.ASystem_OnBeforeRun_Disconnect02 := Procs.OnBeforeRun_Disconnect02;

  {$IFDEF ARUNTIMEOLD}
  Runtime_Module_Count := ASystem.Module_Count;
  Runtime_Module_FindByName := ASystem.Module_FindByName;
  Runtime_Module_GetByName := ASystem.Module_GetByName;
  Runtime_Module_GetNameByIndex := ASystem.Module_GetNameByIndex;
  Runtime_Module_Register := ASystem.Module_Register02;

  Runtime_Module_InitByName := ASystem.Module_InitByName;
  Runtime_Module_DeleteByName := ASystem.Module_DeleteByName;
  {$ENDIF ARUNTIMEOLD}

  Result := 0;
end;
{$endif}

end.
