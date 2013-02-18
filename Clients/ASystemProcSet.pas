{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 18.02.2013
}
unit ASystemProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  ASystemBase,
  ASystemProcVars;

function ASystem_SetProcs(GetProc: AModuleGetProc): AError;

implementation

function ASystem_SetProcs(GetProc: AModuleGetProc): AError;
begin
  ASystemProcVars.ASystem_GetConfig := GetProc('ASystem_GetConfig');
  ASystemProcVars.ASystem_GetDataDirectoryPath := GetProc('ASystem_GetDataDirectoryPath');
  ASystemProcVars.ASystem_GetExePath := GetProc('ASystem_GetExePath');
  ASystemProcVars.ASystem_GetProgramName := GetProc('ASystem_GetProgramName');
  ASystemProcVars.ASystem_GetResourceString := GetProc('ASystem_GetResourceString');
  ASystemProcVars.ASystem_GetTitle := GetProc('ASystem_GetTitle');
  ASystemProcVars.ASystem_Init := GetProc('ASystem_Init');
  ASystemProcVars.ASystem_OnAfterRun_Connect := GetProc('ASystem_OnAfterRun_Connect');
  ASystemProcVars.ASystem_OnAfterRun_Disconnect := GetProc('ASystem_OnAfterRun_Disconnect');
  ASystemProcVars.ASystem_OnBeforeRun_Connect := GetProc('ASystem_OnBeforeRun_Connect');
  ASystemProcVars.ASystem_OnBeforeRun_Disconnect := GetProc('ASystem_OnBeforeRun_Disconnect');
  ASystemProcVars.ASystem_ParamStr := GetProc('ASystem_ParamStr');
  ASystemProcVars.ASystem_Prepare := GetProc('ASystem_Prepare');
  ASystemProcVars.ASystem_PrepareA := GetProc('ASystem_PrepareA');
  ASystemProcVars.ASystem_ProcessMessages := GetProc('ASystem_ProcessMessages');
  ASystemProcVars.ASystem_SetConfig := GetProc('ASystem_SetConfig');
  ASystemProcVars.ASystem_ShowMessage := GetProc('ASystem_ShowMessage');
  ASystemProcVars.ASystem_ShowMessageEx := GetProc('ASystem_ShowMessageEx');
  Result := 0;
end;

end.
