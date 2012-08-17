{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 01.08.2012
@LastMod 16.08.2012
}
unit ASettings;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ARuntime, ARuntimeBase, ASettingsBase,
  {$IFDEF ADepr}ASettingsProcRec,{$ENDIF}
  ASettingsProcVars, AStrings;

function ASettings_Boot(): AError; stdcall;

// --- Public ---

function Config_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString; DefValue: ABoolean): ABoolean; stdcall;

implementation

{$IFDEF ADepr}
function ASettings_SetProcs(const Settings: ASettingsProcs_Type): AError;
begin
  ASettingsProcVars.ASettings_Close02 := Settings.Config_Close;
  ASettingsProcVars.ASettings_DeleteKey02 := Settings.DeleteKeyW;
  ASettingsProcVars.ASettings_DeleteSection02 := Settings.DeleteSectionW;
  ASettingsProcVars.ASettings_IniConfig_NewWS := Settings.IniConfig_NewWS;
  ASettingsProcVars.ASettings_ReadBoolWS := Settings.ReadBoolW;
  ASettingsProcVars.ASettings_ReadIntegerWS := Settings.ReadIntegerW;
  ASettingsProcVars.ASettings_ReadFloatWS := Settings.ReadFloatW;
  ASettingsProcVars.ASettings_ReadSectionWS := Settings.ReadSectionW;
  ASettingsProcVars.ASettings_ReadStringWS := Settings.ReadStringW;
  ASettingsProcVars.ASettings_ReadDateTimeWS := Settings.ReadDateTimeW;
  ASettingsProcVars.ASettings_WriteBoolWS := Settings.WriteBoolW;
  ASettingsProcVars.ASettings_WriteIntegerWS := Settings.WriteIntegerWS;
  ASettingsProcVars.ASettings_WriteFloatWS := Settings.WriteFloatW;
  ASettingsProcVars.ASettings_WriteStringWS := Settings.WriteStringW;
  ASettingsProcVars.ASettings_WriteDateTimeWS := Settings.WriteDateTimeW;
  Result := 0;
end;
{$ENDIF}

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

// --- Public ---

function Config_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString; DefValue: ABoolean): ABoolean;
var
  SSection: AString_Type;
  SName: AString_Type;
begin
  if Assigned(ASettingsProcVars.ASettings_ReadBoolDef) then
  begin
    if (AString_AssignP(SSection, Section) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    if (AString_AssignP(SName, Name) < 0) then
    begin
      Result := DefValue;
      Exit;
    end;
    Result := ASettingsProcVars.ASettings_ReadBoolDef(Config, SSection, SName, DefValue);
    Exit;
  end;

  {$IFDEF ADepr}
  if not(Assigned(ASettingsProcVars.ASettings_ReadBoolWS)) then
  begin
    Result := DefValue;
    Exit;
  end;
  Result := ASettingsProcVars.ASettings_ReadBoolWS(Config, Section, Name, DefValue);
  {$ENDIF}
end;

end.
 