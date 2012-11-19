{**
@Abstract ASettings
@Author Prof1983 <prof1983@ya.ru>
@Created 19.11.2012
@LastMod 19.11.2012
}
unit ASettingsProcSet;

interface

uses
  ABase, ASettingsProcRec, ASettingsProcVars;

function ASettings_SetProcs(const Settings: ASettingsProcs_Type): AError;

implementation

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

end.
 