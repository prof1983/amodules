{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 11.12.2012
@LastMod 11.12.2012
}
unit ASettingsProcSet05;

interface

uses
  ABase, ARuntimeBase, ASettingsProcVars;

function ASettings_SetProcs(GetProcByName: ARuntime_GetProcByName_Proc): AError;

implementation

const
  ASettingsName = 'ASettings';

{
function ASettings_Close(Config: AConfig): AError; stdcall;
function ASettings_ReadBoolDef(Config: AConfig; const Section, Name: AString_Type; DefValue: ABoolean): ABoolean; stdcall;
function ASettings_ReadBoolDefP(Config: AConfig; const Section, Name: APascalString; DefValue: ABoolean): ABoolean; stdcall;
function ASettings_ReadIntegerDefP(Config: AConfig; const Section, Name: APascalString; DefValue: AInteger): AInteger; stdcall;
function ASettings_ReadStringDefP(Config: AConfig; const Section, Name, DefValue: APascalString): APascalString; stdcall;
function ASettings_WriteIntegerP(Config: AConfig; const Section, Name: APascalString; Value: AInteger): AError; stdcall;
function ASettings_WriteStringP(Config: AConfig; const Section, Name, Value: APascalString): AError; stdcall;
function ASettings_IniConfig_NewP(const FileName: APascalString): AConfig; stdcall;
function ASettings_RegConfig_NewP(const Prefix: APascalString): AConfig; stdcall;
}

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

end.
 