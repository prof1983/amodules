{**
@Abstract ASettings proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 23.07.2010
@LastMod 11.12.2012
}
unit ASettingsProcTypes;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

// ACollectionsBase used for AStringList

uses
  ABase, ACollectionsBase;

type
  ASettings_Close_Proc = function(Config: AConfig): AError; stdcall;
  ASettings_DeleteKey_Proc = function(Config: AConfig; const Section, Name: AString_Type): AError; stdcall;
  ASettings_DeleteSection_Proc = function(Config: AConfig; const Section: AString_Type): AError; stdcall;
  ASettings_Fin_Proc = function(): AError; stdcall;
  ASettings_IniConfig_New_Proc = function(const FileName: AString_Type): AConfig; stdcall;
  ASettings_Init_Proc = function(): AError; stdcall;
  ASettings_ReadBoolDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: ABoolean): ABoolean; stdcall;
  ASettings_ReadDateTimeDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: TDateTime): TDateTime; stdcall;
  ASettings_ReadIntegerDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: AInteger): AInteger; stdcall;
  ASettings_ReadFloatDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: AFloat): AFloat; stdcall;
  ASettings_ReadSection_Proc = function(Config: AConfig; const Section: AString_Type; Strings: AStringList): AError; stdcall;
  ASettings_ReadStringDef_Proc = function(Config: AConfig; const Section, Name, DefValue: AString_Type; out Value: AString_Type): AInteger; stdcall;
  ASettings_RegConfig_New_Proc = function(const Prefix: AString_Type): AConfig; stdcall;
  ASettings_RegConfig_New2_Proc = function(const Prefix: AString_Type; HKEY: AInteger): AConfig; stdcall;
  ASettings_WriteBool_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: ABoolean): AError; stdcall;
  ASettings_WriteDateTime_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: TDateTime): AError; stdcall;
  ASettings_WriteFloat_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: AFloat): AError; stdcall;
  ASettings_WriteInteger_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: AInteger): AError; stdcall;
  ASettings_WriteString_Proc = function(Config: AConfig; const Section, Name, Value: AString_Type): AError; stdcall;
  {$IFDEF ADepr}
  ASettings_Close02_Proc = procedure(Config: AConfig); stdcall;
  ASettings_DeleteKey02_Proc = function(Config: AConfig; const Section, Name: AWideString): ABoolean; stdcall;
  ASettings_DeleteSection02_Proc = function(Config: AConfig; const Section: AWideString): ABoolean; stdcall;
  ASettings_IniConfig_NewWS_Proc = function(const FileName: AWideString): AConfig; stdcall;
  ASettings_ReadBoolWS_Proc = function(Config: AConfig; const Section, Name: AWideString; DefValue: ABoolean): ABoolean; stdcall;
  ASettings_ReadDateTimeWS_Proc = function(Config: AConfig; const Section, Name: AWideString; DefValue: TDateTime): TDateTime; stdcall;
  ASettings_ReadIntegerWS_Proc = function(Config: AConfig; const Section, Name: AWideString; DefValue: AInteger): AInteger; stdcall;
  ASettings_ReadFloatWS_Proc = function(Config: AConfig; const Section, Name: AWideString; DefValue: AFloat): AFloat; stdcall;
  ASettings_ReadSectionWS_Proc = function(Config: AConfig; const Section: AWideString; Strings: AStringList): ABoolean; stdcall;
  ASettings_ReadSectionWS2_Proc = function(Config: AConfig; const Section: AWideString; Strings: AStringList): AError; stdcall;
  ASettings_ReadStringWS_Proc = function(Config: AConfig; const Section, Name, DefValue: AWideString): AWideString; stdcall;
  ASettings_RegConfig_NewWS_Proc = function(const Prefix: AWideString): AConfig; stdcall;
  ASettings_RegConfig_New2WS_Proc = function(const Prefix: AWideString; HKEY: Integer): AConfig; stdcall;
  ASettings_WriteBoolWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: Boolean): ABoolean; stdcall;
  ASettings_WriteBoolWS2_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: ABoolean): AError; stdcall;
  ASettings_WriteDateTimeWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: TDateTime): ABoolean; stdcall;
  ASettings_WriteDateTimeWS2_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: TDateTime): AError; stdcall;
  ASettings_WriteFloatWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: AFloat): ABoolean; stdcall;
  ASettings_WriteFloatWS2_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: AFloat): AError; stdcall;
  ASettings_WriteIntegerWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: Integer): ABoolean; stdcall;
  ASettings_WriteIntegerWS2_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: AInteger): AError; stdcall;
  ASettings_WriteStringWS_Proc = function(Config: AConfig; const Section, Name, Value: AWideString): ABoolean; stdcall;
  ASettings_WriteStringWS2_Proc = function(Config: AConfig; const Section, Name, Value: AWideString): AError; stdcall;
  {$ENDIF}

implementation

end.
