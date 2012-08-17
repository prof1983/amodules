{**
@Abstract ASettings proc vars
@Author Prof1983 <prof1983@ya.ru>
@Created 03.08.2012
@LastMod 16.08.2012
}
unit ASettingsProcVars;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ASettingsProcTypes;

var
  ASettings_DeleteKey: ASettings_DeleteKey_Proc;
  ASettings_DeleteSection: ASettings_DeleteSection_Proc;
  ASettings_Fin: ASettings_Fin_Proc;
  ASettings_Init: ASettings_Init_Proc;
  ASettings_NewIniConfig: ASettings_IniConfig_New_Proc;
  ASettings_NewRegConfig: ASettings_RegConfig_New_Proc;
  ASettings_NewRegConfig2: ASettings_RegConfig_New2_Proc;
  ASettings_ReadBoolDef: ASettings_ReadBoolDef_Proc;
  ASettings_ReadDateTimeDef: ASettings_ReadDateTimeDef_Proc;
  ASettings_ReadIntegerDef: ASettings_ReadIntegerDef_Proc;
  ASettings_ReadFloatDef: ASettings_ReadFloatDef_Proc;
  ASettings_ReadSection: ASettings_ReadSection_Proc;
  ASettings_ReadStringDef: ASettings_ReadStringDef_Proc;
  ASettings_WriteBool: ASettings_WriteBool_Proc;
  ASettings_WriteDateTime: ASettings_WriteDateTime_Proc;
  ASettings_WriteFloat: ASettings_WriteFloat_Proc;
  ASettings_WriteInteger: ASettings_WriteInteger_Proc;
  ASettings_WriteString: ASettings_WriteString_Proc;
  {$IFDEF ADepr}
  ASettings_Close02: ASettings_Close02_Proc;
  ASettings_DeleteKey02: ASettings_DeleteKey02_Proc;
  ASettings_DeleteSection02: ASettings_DeleteSection02_Proc;
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
 