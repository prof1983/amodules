{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 23.04.2013
}
unit ASettingsProcSet;

interface

uses
  ABase,
  ARuntimeBase,
  {$ifdef ADepr}
  ASettingsProcRec,
  {$endif}
  ASettingsProcVars;

function ASettings_SetProcs(GetProc: AModuleGetProc): AError;

{$ifdef ADepr}
function ASettings_SetProcsR(const Settings: ASettingsProcs_Type): AError;
{$endif}

implementation

function ASettings_SetProcs(GetProc: AModuleGetProc): AError;
begin
  ASettingsProcVars.ASettings_Close := GetProc('ASettings_Close');
  ASettingsProcVars.ASettings_DeleteKey := GetProc('ASettings_DeleteKey');
  ASettingsProcVars.ASettings_DeleteKeyA := GetProc('ASettings_DeleteKeyA');
  ASettingsProcVars.ASettings_DeleteSection := GetProc('ASettings_DeleteSection');
  ASettingsProcVars.ASettings_DeleteSectionA := GetProc('ASettings_DeleteSectionA');
  ASettingsProcVars.ASettings_Fin := GetProc('ASettings_Fin');
  ASettingsProcVars.ASettings_Init := GetProc('ASettings_Init');
  ASettingsProcVars.ASettings_NewIniConfig := GetProc('ASettings_NewIniConfig');
  ASettingsProcVars.ASettings_NewIniConfigA := GetProc('ASettings_NewIniConfigA');
  ASettingsProcVars.ASettings_NewRegConfig := GetProc('ASettings_NewRegConfig');
  ASettingsProcVars.ASettings_NewRegConfigA := GetProc('ASettings_NewRegConfigA');
  ASettingsProcVars.ASettings_ReadBoolDef := GetProc('ASettings_ReadBoolDef');
  ASettingsProcVars.ASettings_ReadBoolDefA := GetProc('ASettings_ReadBoolDefA');
  ASettingsProcVars.ASettings_ReadDateTimeDef := GetProc('ASettings_ReadDateTimeDef');
  ASettingsProcVars.ASettings_ReadDateTimeDefA := GetProc('ASettings_ReadDateTimeDefA');
  ASettingsProcVars.ASettings_ReadFloatDef := GetProc('ASettings_ReadFloatDef');
  ASettingsProcVars.ASettings_ReadFloatDefA := GetProc('ASettings_ReadFloatDefA');
  ASettingsProcVars.ASettings_ReadIntDef := GetProc('ASettings_ReadIntDef');
  ASettingsProcVars.ASettings_ReadIntDefA := GetProc('ASettings_ReadIntDefA');
  ASettingsProcVars.ASettings_ReadSection := GetProc('ASettings_ReadSection');
  ASettingsProcVars.ASettings_ReadSectionA := GetProc('ASettings_ReadSectionA');
  ASettingsProcVars.ASettings_ReadString := GetProc('ASettings_ReadString');
  ASettingsProcVars.ASettings_ReadStringA := GetProc('ASettings_ReadStringA');
  ASettingsProcVars.ASettings_ReadStringDef := GetProc('ASettings_ReadStringDef');
  ASettingsProcVars.ASettings_ReadStringDefA := GetProc('ASettings_ReadStringDefA');
  ASettingsProcVars.ASettings_WriteBool := GetProc('ASettings_WriteBool');
  ASettingsProcVars.ASettings_WriteBoolA := GetProc('ASettings_WriteBoolA');
  ASettingsProcVars.ASettings_WriteDateTime := GetProc('ASettings_WriteDateTime');
  ASettingsProcVars.ASettings_WriteDateTimeA := GetProc('ASettings_WriteDateTimeA');
  ASettingsProcVars.ASettings_WriteFloat := GetProc('ASettings_WriteFloat');
  ASettingsProcVars.ASettings_WriteFloatA := GetProc('ASettings_WriteFloatA');
  ASettingsProcVars.ASettings_WriteInt := GetProc('ASettings_WriteInt');
  ASettingsProcVars.ASettings_WriteIntA := GetProc('ASettings_WriteIntA');
  ASettingsProcVars.ASettings_WriteString := GetProc('ASettings_WriteString');
  ASettingsProcVars.ASettings_WriteStringA := GetProc('ASettings_WriteStringA');
  Result := 0;
end;

{$ifdef ADepr}
function ASettings_SetProcsR(const Settings: ASettingsProcs_Type): AError;
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
{$endif}

end.
 