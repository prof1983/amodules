{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 25.01.2013
}
unit ASettingsProcSet;

interface

uses
  ABase, 
  ARuntimeBase, 
  {$ifdef ADepr}ASettingsProcRec,{$endif}
  ASettingsProcVars;

function ASettings_SetProcs(GetProcByName: ARuntime_GetProcByName_Proc): AError;

{$ifdef ADepr}
function ASettings_SetProcs_Depr(const Settings: ASettingsProcs_Type): AError;
{$endif}

implementation

function ASettings_SetProcs(GetProcByName: ARuntime_GetProcByName_Proc): AError;
begin
  ASettingsProcVars.ASettings_Close := GetProcByName(ASettingsName, 'ASettings_Close');
  //ASettingsProcVars.ASettings_DeleteKey := GetProcByName(ASettingsName, 'ASettings_DeleteKey');
  //ASettingsProcVars.ASettings_DeleteSection := GetProcByName(ASettingsName, 'ASettings_DeleteSection');
  ASettingsProcVars.ASettings_NewIniConfig := GetProcByName(ASettingsName, 'ASettings_NewIniConfig');
  ASettingsProcVars.ASettings_ReadBoolDef := GetProcByName(ASettingsName, 'ASettings_ReadBoolDef');
  ASettingsProcVars.ASettings_ReadIntegerDef := GetProcByName(ASettingsName, 'ASettings_ReadIntegerDef');
  ASettingsProcVars.ASettings_ReadFloatDef := GetProcByName(ASettingsName, 'ASettings_ReadFloatDef');
  //ASettingsProcVars.ASettings_ReadSection := GetProcByName(ASettingsName, 'ASettings_ReadSection');
  ASettingsProcVars.ASettings_ReadStringDef := GetProcByName(ASettingsName, 'ASettings_ReadStringDef');
  ASettingsProcVars.ASettings_ReadDateTimeDef := GetProcByName(ASettingsName, 'ASettings_ReadDateTimeDef');
  ASettingsProcVars.ASettings_WriteBool := GetProcByName(ASettingsName, 'ASettings_WriteBool');
  ASettingsProcVars.ASettings_WriteInteger := GetProcByName(ASettingsName, 'ASettings_WriteInteger');
  ASettingsProcVars.ASettings_WriteFloat := GetProcByName(ASettingsName, 'ASettings_WriteFloat');
  ASettingsProcVars.ASettings_WriteString := GetProcByName(ASettingsName, 'ASettings_WriteString');
  ASettingsProcVars.ASettings_WriteDateTime := GetProcByName(ASettingsName, 'ASettings_WriteDateTime');
  Result := 0;
end; 

{$ifdef ADepr}
function ASettings_SetProcs_Depr(const Settings: ASettingsProcs_Type): AError;
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
 