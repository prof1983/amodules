{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit ASettingsModClient;

{$ifdef A04}{$define ADepr}{$endif}

interface

uses
  ABase, ARuntime, ARuntimeBase, ASettingsBase, ASettingsProcRec, ASettingsProcSet;

function ASettings_Boot(): AError; stdcall;

implementation

function ASettings_Boot(): AError;
var
  Module: AModule_Type;
begin
  if (ARuntime_GetModuleByName(ASettings_Name, Module) < 0) then
  begin
    Result := -2;
    Exit;
  end;
  {$IFDEF ADepr}
  if Assigned(Module.Procs) then
  begin
    Result := ASettings_SetProcs(ASettingsProcs_Type(Module.Procs^));
    Exit;
  end;
  {$ENDIF}

  if not(Assigned(Module.GetProc)) then
  begin
    Result := -3;
    Exit;
  end;

  {
  ASettingsProcVars.ASettings_Close := Module.GetProc('ASettings_CloseConfig');
  ASettingsProcVars.ASettings_DeleteKey := Module.GetProc('ASettings_DeleteKey');
  ASettingsProcVars.ASettings_DeleteSection := Module.GetProc('ASettings_DeleteSection');
  ASettingsProcVars.ASettings_IniConfig_New := Module.GetProc('ASettings_IniConfig_New');
  ASettingsProcVars.ASettings_ReadBool := Module.GetProc('ASettings_ReadBool');
  ASettingsProcVars.ASettings_ReadInteger := Module.GetProc('ASettings_ReadInteger');
  ASettingsProcVars.ASettings_ReadFloat := Module.GetProc('ASettings_ReadFloat');
  ASettingsProcVars.ASettings_ReadSection := Module.GetProc('ASettings_ReadSection');
  ASettingsProcVars.ASettings_ReadString := Module.GetProc('ASettings_ReadString');
  ASettingsProcVars.ASettings_ReadDateTime := Module.GetProc('ASettings_ReadDateTime');
  ASettingsProcVars.ASettings_WriteBool := Module.GetProc('ASettings_WriteBool');
  ASettingsProcVars.ASettings_WriteInteger := Module.GetProc('ASettings_WriteInteger');
  ASettingsProcVars.ASettings_WriteFloat := Module.GetProc('ASettings_WriteFloat');
  ASettingsProcVars.ASettings_WriteString := Module.GetProc('ASettings_WriteString');
  ASettingsProcVars.ASettings_WriteDateTime := Module.GetProc('ASettings_WriteDateTime');
  }
  Result := 0;
end;

end.
 