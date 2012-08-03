{**
@Abstract Модуль для работа с настройками
@Author Prof1983 <prof1983@ya.ru>
@Created 23.07.2010
@LastMod 30.07.2012
}
unit ASettingsProcTypes;

{DEFINE A02}

interface

// ACollectionsBase используется для для AStringList

uses
  ABase, ACollectionsBase;

// --- Procs type ---

type
  A_Settings_Close02_Proc = procedure(Config: AConfig); stdcall;
  // --- A02 ---
  A_Settings_DeleteKey02_Proc = function(Config: AConfig; const Section, Name: AWideString): ABoolean; stdcall;
  ASettings_DeleteSection02 = function(Config: AConfig; const Section: AWideString): ABoolean; stdcall;
  A_Settings_IniConfig_NewWS_Proc = function(const FileName: AWideString): AConfig; stdcall;
  ASettings_ReadBool = function(Config: AConfig; const Section, Name: AWideString; DefValue: ABoolean): ABoolean; stdcall;
  ASettings_ReadInteger = function(Config: AConfig; const Section, Name: AWideString; DefValue: AInteger): AInteger; stdcall;
  ASettings_ReadFloat = function(Config: AConfig; const Section, Name: AWideString; DefValue: AFloat): AFloat; stdcall;
  ASettings_ReadSection = function(Config: AConfig; const Section: AWideString; Strings: AStringList): ABoolean; stdcall;
  ASettings_ReadString = function(Config: AConfig; const Section, Name, DefValue: AWideString): AWideString; stdcall;
  ASettings_ReadDateTime = function(Config: AConfig; const Section, Name: AWideString; DefValue: TDateTime): TDateTime; stdcall;
  A_Settings_RegConfig_NewWS_Proc = function(const Prefix: AWideString): AConfig; stdcall;
  A_Settings_RegConfig_New2WS_Proc = function(const Prefix: AWideString; HKEY: Integer): AConfig; stdcall;
  ASettings_WriteBool = function(Config: AConfig; const Section, Name: AWideString; Value: Boolean): ABoolean; stdcall;
  ASettings_WriteFloat = function(Config: AConfig; const Section, Name: AWideString; Value: AFloat): ABoolean; stdcall;
  ASettings_WriteString = function(Config: AConfig; const Section, Name, Value: AWideString): ABoolean; stdcall;
  ASettings_WriteDateTime = function(Config: AConfig; const Section, Name: AWideString; Value: TDateTime): ABoolean; stdcall;
  // --- A03 ---
  A_Settings_DeleteKey_Proc = function(Config: AConfig; const Section, Name: AString_Type): AError; stdcall;
  A_Settings_DeleteSection_Proc = function(Config: AConfig; const Section: AString_Type): AError; stdcall;
  A_Settings_IniConfig_New_Proc = function(const FileName: AString_Type): AConfig; stdcall;
  A_Settings_ReadBoolDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: ABoolean): ABoolean; stdcall;
  A_Settings_ReadIntegerDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: AInteger): AInteger; stdcall;
  A_Settings_ReadFloatDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: AFloat): AFloat; stdcall;
  A_Settings_ReadSection_Proc = function(Config: AConfig; const Section: AString_Type; Strings: AStringList): AError; stdcall;
  A_Settings_ReadStringDef_Proc = function(Config: AConfig; const Section, Name, DefValue: AString_Type; out Value: AString_Type): AInteger; stdcall;
  A_Settings_ReadDateTimeDef_Proc = function(Config: AConfig; const Section, Name: AString_Type; DefValue: TDateTime): TDateTime; stdcall;
  A_Settings_RegConfig_New_Proc = function(const Prefix: AString_Type): AConfig; stdcall;
  A_Settings_RegConfig_New2_Proc = function(const Prefix: AString_Type; HKEY: AInteger): AConfig; stdcall;
  A_Settings_WriteBool_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: ABoolean): AError; stdcall;
  A_Settings_WriteInteger_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: AInteger): AError; stdcall;
  A_Settings_WriteIntegerWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: Integer): ABoolean; stdcall;
  A_Settings_WriteFloat_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: AFloat): AError; stdcall;
  A_Settings_WriteString_Proc = function(Config: AConfig; const Section, Name, Value: AString_Type): AError; stdcall;
  A_Settings_WriteDateTime_Proc = function(Config: AConfig; const Section, Name: AString_Type; Value: TDateTime): AError; stdcall;
  A_Settings_Init_Proc = function(): AError; stdcall;
  A_Settings_Done_Proc = function(): AError; stdcall;

type
  A_Settings_Config_ReadBoolDefWS_Proc = ASettings_ReadBool;
  A_Settings_Config_ReadIntegerDefWS_Proc = ASettings_ReadInteger;
  A_Settings_Config_ReadFloatDefWS_Proc = ASettings_ReadFloat;
  A_Settings_Config_ReadSectionWS_Proc = function(Config: AConfig; const Section: AWideString; Strings: AStringList): AError; stdcall;
  A_Settings_Config_ReadStringDefWS_Proc = ASettings_ReadString;
  A_Settings_Config_ReadDateTimeDefWS_Proc = ASettings_ReadDateTime;
  A_Settings_Config_WriteBoolWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: ABoolean): AError; stdcall;
  A_Settings_Config_WriteIntegerWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: AInteger): AError; stdcall;
  A_Settings_Config_WriteFloatWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: AFloat): AError; stdcall;
  A_Settings_Config_WriteStringWS_Proc = function(Config: AConfig; const Section, Name, Value: AWideString): AError; stdcall;
  A_Settings_Config_WriteDateTimeWS_Proc = function(Config: AConfig; const Section, Name: AWideString; Value: TDateTime): AError; stdcall;

// --- Module ---

type
  ASettingsProcs_Type = packed record { A02: 32x4; A03: 64x4 }
    Config_Close: A_Settings_Close02_Proc;                              // 00
    DeleteKeyW: A_Settings_DeleteKey02_Proc;                            // 01
    DeleteSectionW: ASettings_DeleteSection02;                          // 02
    IniConfig_NewWS: A_Settings_IniConfig_NewWS_Proc;                   // 03
    ReadBoolW: ASettings_ReadBool;                                      // 04
    ReadIntegerW: ASettings_ReadInteger;                                // 05
    ReadFloatW: ASettings_ReadFloat;                                    // 06
    ReadSectionW: ASettings_ReadSection;                                // 07
    ReadStringW: ASettings_ReadString;                                  // 08
    ReadDateTimeW: ASettings_ReadDateTime;                              // 09
    RegConfig_NewWS: A_Settings_RegConfig_NewWS_Proc;                   // 10
    RegConfig_New2WS: A_Settings_RegConfig_New2WS_Proc;                 // 11
    WriteBoolW: ASettings_WriteBool;                                    // 12
    WriteIntegerWS: A_Settings_WriteIntegerWS_Proc;                     // 13
    WriteFloatW: ASettings_WriteFloat;                                  // 14
    WriteStringW: ASettings_WriteString;                                // 15
    WriteDateTimeW: ASettings_WriteDateTime;                            // 16

    DeleteKey: A_Settings_DeleteKey_Proc;                       // 17
    DeleteSection: A_Settings_DeleteSection_Proc;               // 18
    IniConfig_New: A_Settings_IniConfig_New_Proc;               // 19
    ReadBoolDef: A_Settings_ReadBoolDef_Proc;                   // 20
    ReadIntegerDef: A_Settings_ReadIntegerDef_Proc;             // 21
    ReadFloatDef: A_Settings_ReadFloatDef_Proc;                 // 22
    ReadSection: A_Settings_ReadSection_Proc;                   // 23
    ReadStringDef: A_Settings_ReadStringDef_Proc;               // 24
    ReadDateTimeDef: A_Settings_ReadDateTimeDef_Proc;           // 25
    RegConfig_New: A_Settings_RegConfig_New_Proc;               // 26
    RegConfig_New2: A_Settings_RegConfig_New2_Proc;             // 27
    Config_WriteBool: A_Settings_WriteBool_Proc;                // 28
    Config_WriteInteger: A_Settings_WriteInteger_Proc;          // 29
    Config_WriteFloat: A_Settings_WriteFloat_Proc;              // 30
    Config_WriteString: A_Settings_WriteString_Proc;            // 31

    {$IFDEF A02}
    {$ELSE}
    // --- A03 ---
    Config_WriteDateTime: A_Settings_WriteDateTime_Proc;                // 32
    Init: A_Settings_Init_Proc;                                         // 33
    Done: A_Settings_Done_Proc;                                         // 34
    Config_ReadBoolDefWS: A_Settings_Config_ReadBoolDefWS_Proc;         // 35
    Config_ReadIntegerDefWS: A_Settings_Config_ReadIntegerDefWS_Proc;   // 36
    Config_ReadFloatDefWS: A_Settings_Config_ReadFloatDefWS_Proc;       // 37
    Config_ReadSectionWS: A_Settings_Config_ReadSectionWS_Proc;         // 38
    Config_ReadStringDefWS: A_Settings_Config_ReadStringDefWS_Proc;     // 39
    Config_ReadDateTimeDefWS: A_Settings_Config_ReadDateTimeDefWS_Proc; // 40
    Config_WriteBoolWS: A_Settings_Config_WriteBoolWS_Proc;             // 41
    Config_WriteIntegerWS: A_Settings_Config_WriteIntegerWS_Proc;       // 42
    Config_WriteFloatWS: A_Settings_Config_WriteFloatWS_Proc;           // 43
    Config_WriteStringWS: A_Settings_Config_WriteStringWS_Proc;         // 44
    Config_WriteDateTimeWS: A_Settings_Config_WriteDateTimeWS_Proc;     // 45
    Reserved46: AInteger;
    Reserved47: AInteger;

    Reserved48: AInteger;
    Reserved49: AInteger;
    Reserved50: AInteger;
    Reserved51: AInteger;
    Reserved52: AInteger;
    Reserved53: AInteger;
    Reserved54: AInteger;
    Reserved55: AInteger;
    Reserved56: AInteger;
    Reserved57: AInteger;
    Reserved58: AInteger;
    Reserved59: AInteger;
    Reserved60: AInteger;
    Reserved61: AInteger;
    Reserved62: AInteger;
    Reserved63: AInteger;
    {$ENDIF A02}
  end;

implementation

end.
