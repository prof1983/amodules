{**
@Abstract ASettings proc types
@Author Prof1983 <prof1983@ya.ru>
@Created 23.07.2010
@LastMod 18.02.2013
}
unit ASettingsProcTypes;

interface

// ACollectionsBase used for AStringList

uses
  ABase,
  ABaseTypes,
  ACollectionsBase;

type
  ASettings_Close_Proc = function(Config: AConfig): AError; stdcall;
  ASettings_DeleteKey_Proc = function(Config: AConfig; const Section, Name: AString_Type): AError; stdcall;
  ASettings_DeleteKeyA_Proc = function(Config: AConfig; Section, Name: AStr): AError; stdcall;
  ASettings_DeleteSection_Proc = function(Config: AConfig; const Section: AString_Type): AError; stdcall;
  ASettings_DeleteSectionA_Proc = function(Config: AConfig; Section: AStr): AError; stdcall;
  ASettings_Fin_Proc = function(): AError; stdcall;
  ASettings_Init_Proc = function(): AError; stdcall;
  ASettings_NewIniConfig_Proc = function(const FileName: AString_Type): AConfig; stdcall;
  ASettings_NewIniConfigA_Proc = function(FileName: AStr): AConfig; stdcall;
  ASettings_NewRegConfig_Proc = function(const Prefix: AString_Type; Key: AInt): AConfig; stdcall;
  ASettings_NewRegConfigA_Proc = function(Prefix: AStr; Key: AInt): AConfig; stdcall;
  ASettings_ReadBoolDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: ABool): ABool; stdcall;
  ASettings_ReadBoolDefA_Proc = function(Config: AConfig; Section, Name: AStr; DefValue: ABool): ABool; stdcall;
  ASettings_ReadDateTimeDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: TDateTime): TDateTime; stdcall;
  ASettings_ReadDateTimeDefA_Proc = function(Config: AConfig; Section, Name: AStr; DefValue: TDateTime): TDateTime; stdcall;
  ASettings_ReadFloatDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: AFloat): AFloat; stdcall;
  ASettings_ReadFloatDefA_Proc = function(Config: AConfig; Section, Name: AStr; DefValue: AFloat): AFloat; stdcall;
  ASettings_ReadIntDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: AInt): AInt; stdcall;
  ASettings_ReadIntDefA_Proc = function(Config: AConfig; Section, Name: AStr; DefValue: AInt): AInt; stdcall;
  ASettings_ReadSection_Proc = function(Config: AConfig; const Section: AString_Type; Strings: AStringList): AError; stdcall;
  ASettings_ReadSectionA_Proc = function(Config: AConfig; Section: AStr; Strings: AStringList): AError; stdcall;
  ASettings_ReadString_Proc = function(Config: AConfig; const Section, Name: AString_Type; out Value: AString_Type): AInt; stdcall;
  ASettings_ReadStringA_Proc = function(Config: AConfig; Section, Name: AStr; Value: AStr; MaxLen: AInt): AInt; stdcall;
  ASettings_ReadStringDef_Proc = function(Config: AConfig; const Section, Name, DefValue: AString_Type; out Value: AString_Type): AInt; stdcall;
  ASettings_ReadStringDefA_Proc = function(Config: AConfig; Section, Name, DefValue: AStr; Value: AStr; MaxLen: AInt): AInt; stdcall;
  ASettings_WriteBool_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: ABool): AError; stdcall;
  ASettings_WriteBoolA_Proc = function(Config: AConfig; Section, Name: AStr; Value: ABool): AError; stdcall;
  ASettings_WriteDateTime_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: TDateTime): AError; stdcall;
  ASettings_WriteDateTimeA_Proc = function(Config: AConfig; Section, Name: AStr; Value: TDateTime): AError; stdcall;
  ASettings_WriteFloat_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: AFloat): AError; stdcall;
  ASettings_WriteFloatA_Proc = function(Config: AConfig; Section, Name: AStr; Value: AFloat): AError; stdcall;
  ASettings_WriteInt_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: AInt): AError; stdcall;
  ASettings_WriteIntA_Proc = function(Config: AConfig; Section, Name: AStr; Value: AInt): AError; stdcall;
  ASettings_WriteString_Proc = function(Config: AConfig; const Section, Name, Value: AString_Type): AError; stdcall;
  ASettings_WriteStringA_Proc = function(Config: AConfig; Section, Name, Value: AStr): AError; stdcall;

implementation

end.
