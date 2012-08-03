{**
@Abstract ASettings proc vars
@Author Prof1983 <prof1983@ya.ru>
@Created 03.08.2012
@LastMod 03.08.2012
}
unit ASettingsProcVars;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ASettingsProcTypes;

var
  {$IFDEF ADepr}
  ASettings_Close: ASettings_Close02_Proc;
  ASettings_DeleteKey: ASettings_DeleteKey02_Proc;
  ASettings_DeleteSection: ASettings_DeleteSection02_Proc;
  ASettings_IniConfig_NewWS: ASettings_IniConfig_NewWS_Proc;
  ASettings_ReadBoolWS: ASettings_ReadBoolWS_Proc;
  ASettings_ReadIntegerWS: ASettings_ReadIntegerWS_Proc;
  ASettings_ReadFloatWS: ASettings_ReadFloatWS_Proc;
  ASettings_ReadSectionWS: ASettings_ReadSectionWS_Proc;
  ASettings_ReadStringWS: ASettings_ReadStringWS_Proc;
  ASettings_ReadDateTimeWS: ASettings_ReadDateTimeWS_Proc;
  ASettings_WriteBoolWS: ASettings_WriteBoolWS_Proc;
  ASettings_WriteIntegerWS: ASettings_WriteIntegerWS_Proc;
  ASettings_WriteFloatWS: ASettings_WriteFloatWS_Proc;
  ASettings_WriteStringWS: ASettings_WriteStringWS_Proc;
  ASettings_WriteDateTimeWS: ASettings_WriteDateTimeWS_Proc;
  {$ENDIF}

implementation

end.
 