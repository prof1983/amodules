{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 22.02.2013
}
unit ASystemProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  ASystemBase,
  ASystemProcVars;

// --- ASystem ---

function ASystem_SetProcs(GetProc: AModuleGetProc): AError;

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

end.
