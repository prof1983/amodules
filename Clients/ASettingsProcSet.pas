{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 18.02.2013
}
unit ASettingsProcSet;

interface

uses
  ABase, 
  ARuntimeBase,
  ASettingsBase,
  ASettingsProcVars;

function ASettings_SetProcs(GetProcByName: ARuntime_GetProcByName_Proc): AError;

function ASettings_SetProcs2(GetProc: AModuleGetProc): AError;

implementation

const
  ASettingsName = ASettings_Name;

function ASettings_SetProcs(GetProcByName: ARuntime_GetProcByName_Proc): AError;
begin
  ASettingsProcVars.ASettings_Close := GetProcByName(ASettingsName, 'ASettings_Close');
  ASettingsProcVars.ASettings_DeleteKey := GetProcByName(ASettingsName, 'ASettings_DeleteKey');
  ASettingsProcVars.ASettings_DeleteKeyA := GetProcByName(ASettingsName, 'ASettings_DeleteKeyA');
  ASettingsProcVars.ASettings_DeleteSection := GetProcByName(ASettingsName, 'ASettings_DeleteSection');
  ASettingsProcVars.ASettings_DeleteSectionA := GetProcByName(ASettingsName, 'ASettings_DeleteSectionA');
  ASettingsProcVars.ASettings_Fin := GetProcByName(ASettingsName, 'ASettings_Fin');
  ASettingsProcVars.ASettings_Init := GetProcByName(ASettingsName, 'ASettings_Init');
  ASettingsProcVars.ASettings_NewIniConfig := GetProcByName(ASettingsName, 'ASettings_NewIniConfig');
  ASettingsProcVars.ASettings_NewIniConfigA := GetProcByName(ASettingsName, 'ASettings_NewIniConfigA');
  ASettingsProcVars.ASettings_NewRegConfig := GetProcByName(ASettingsName, 'ASettings_NewRegConfig');
  ASettingsProcVars.ASettings_NewRegConfigA := GetProcByName(ASettingsName, 'ASettings_NewRegConfigA');
  ASettingsProcVars.ASettings_ReadBoolDef := GetProcByName(ASettingsName, 'ASettings_ReadBoolDef');
  ASettingsProcVars.ASettings_ReadBoolDefA := GetProcByName(ASettingsName, 'ASettings_ReadBoolDefA');
  ASettingsProcVars.ASettings_ReadDateTimeDef := GetProcByName(ASettingsName, 'ASettings_ReadDateTimeDef');
  ASettingsProcVars.ASettings_ReadDateTimeDefA := GetProcByName(ASettingsName, 'ASettings_ReadDateTimeDefA');
  ASettingsProcVars.ASettings_ReadFloatDef := GetProcByName(ASettingsName, 'ASettings_ReadFloatDef');
  ASettingsProcVars.ASettings_ReadFloatDefA := GetProcByName(ASettingsName, 'ASettings_ReadFloatDefA');
  ASettingsProcVars.ASettings_ReadIntDef := GetProcByName(ASettingsName, 'ASettings_ReadIntDef');
  ASettingsProcVars.ASettings_ReadIntDefA := GetProcByName(ASettingsName, 'ASettings_ReadIntDefA');
  ASettingsProcVars.ASettings_ReadSection := GetProcByName(ASettingsName, 'ASettings_ReadSection');
  ASettingsProcVars.ASettings_ReadSectionA := GetProcByName(ASettingsName, 'ASettings_ReadSectionA');
  ASettingsProcVars.ASettings_ReadString := GetProcByName(ASettingsName, 'ASettings_ReadString');
  ASettingsProcVars.ASettings_ReadStringA := GetProcByName(ASettingsName, 'ASettings_ReadStringA');
  ASettingsProcVars.ASettings_ReadStringDef := GetProcByName(ASettingsName, 'ASettings_ReadStringDef');
  ASettingsProcVars.ASettings_ReadStringDefA := GetProcByName(ASettingsName, 'ASettings_ReadStringDefA');
  ASettingsProcVars.ASettings_WriteBool := GetProcByName(ASettingsName, 'ASettings_WriteBool');
  ASettingsProcVars.ASettings_WriteBoolA := GetProcByName(ASettingsName, 'ASettings_WriteBoolA');
  ASettingsProcVars.ASettings_WriteDateTime := GetProcByName(ASettingsName, 'ASettings_WriteDateTime');
  ASettingsProcVars.ASettings_WriteDateTimeA := GetProcByName(ASettingsName, 'ASettings_WriteDateTimeA');
  ASettingsProcVars.ASettings_WriteFloat := GetProcByName(ASettingsName, 'ASettings_WriteFloat');
  ASettingsProcVars.ASettings_WriteFloatA := GetProcByName(ASettingsName, 'ASettings_WriteFloatA');
  ASettingsProcVars.ASettings_WriteInt := GetProcByName(ASettingsName, 'ASettings_WriteInt');
  ASettingsProcVars.ASettings_WriteIntA := GetProcByName(ASettingsName, 'ASettings_WriteIntA');
  ASettingsProcVars.ASettings_WriteString := GetProcByName(ASettingsName, 'ASettings_WriteString');
  ASettingsProcVars.ASettings_WriteStringA := GetProcByName(ASettingsName, 'ASettings_WriteStringA');
  Result := 0;
end;

function ASettings_SetProcs2(GetProc: AModuleGetProc): AError;
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

end.
