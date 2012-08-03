{**
@Abstract Модуль для работа с настройками
@Author Prof1983 <prof1983@ya.ru>
@Created 23.07.2010
@LastMod 03.08.2012
}
unit ASettingsProcRec;

{DEFINE A02}

interface

uses
  ABase, ASettingsProcTypes;

type
  ASettingsProcs_Type = packed record { A02: 32x4; A03: 64x4 }
    Config_Close: ASettings_Close02_Proc;                       // 00
    DeleteKeyW: ASettings_DeleteKey02_Proc;                     // 01
    DeleteSectionW: ASettings_DeleteSection02_Proc;             // 02
    IniConfig_NewWS: ASettings_IniConfig_NewWS_Proc;            // 03
    ReadBoolW: ASettings_ReadBoolWS_Proc;                       // 04
    ReadIntegerW: ASettings_ReadIntegerWS_Proc;                 // 05
    ReadFloatW: ASettings_ReadFloatWS_Proc;                     // 06
    ReadSectionW: ASettings_ReadSectionWS_Proc;                 // 07
    ReadStringW: ASettings_ReadStringWS_Proc;                   // 08
    ReadDateTimeW: ASettings_ReadDateTimeWS_Proc;               // 09
    RegConfig_NewWS: ASettings_RegConfig_NewWS_Proc;            // 10
    RegConfig_New2WS: ASettings_RegConfig_New2WS_Proc;          // 11
    WriteBoolW: ASettings_WriteBoolWS_Proc;                     // 12
    WriteIntegerWS: ASettings_WriteIntegerWS_Proc;              // 13
    WriteFloatW: ASettings_WriteFloatWS_Proc;                   // 14
    WriteStringW: ASettings_WriteStringWS_Proc;                 // 15
    WriteDateTimeW: ASettings_WriteDateTimeWS_Proc;             // 16

    DeleteKey: ASettings_DeleteKey_Proc;                        // 17
    DeleteSection: ASettings_DeleteSection_Proc;                // 18
    IniConfig_New: ASettings_IniConfig_New_Proc;                // 19
    ReadBoolDef: ASettings_ReadBoolDef_Proc;                    // 20
    ReadIntegerDef: ASettings_ReadIntegerDef_Proc;              // 21
    ReadFloatDef: ASettings_ReadFloatDef_Proc;                  // 22
    ReadSection: ASettings_ReadSection_Proc;                    // 23
    ReadStringDef: ASettings_ReadStringDef_Proc;                // 24
    ReadDateTimeDef: ASettings_ReadDateTimeDef_Proc;            // 25
    RegConfig_New: ASettings_RegConfig_New_Proc;                // 26
    RegConfig_New2: ASettings_RegConfig_New2_Proc;              // 27
    Config_WriteBool: ASettings_WriteBool_Proc;                 // 28
    Config_WriteInteger: ASettings_WriteInteger_Proc;           // 29
    Config_WriteFloat: ASettings_WriteFloat_Proc;               // 30
    Config_WriteString: ASettings_WriteString_Proc;             // 31

    {$IFDEF A02}
    {$ELSE}
    // --- A03 ---
    Config_WriteDateTime: ASettings_WriteDateTime_Proc;         // 32
    Init: ASettings_Init_Proc;                                  // 33
    Fin: ASettings_Fin_Proc;                                    // 34
    Config_ReadBoolDefWS: ASettings_ReadBoolWS_Proc;            // 35
    Config_ReadIntegerDefWS: ASettings_ReadIntegerWS_Proc;      // 36
    Config_ReadFloatDefWS: ASettings_ReadFloatWS_Proc;          // 37
    Config_ReadSectionWS: ASettings_ReadSectionWS2_Proc;        // 38
    Config_ReadStringDefWS: ASettings_ReadStringWS_Proc;        // 39
    Config_ReadDateTimeDefWS: ASettings_ReadDateTimeWS_Proc;    // 40
    Config_WriteBoolWS: ASettings_WriteBoolWS2_Proc;            // 41
    Config_WriteIntegerWS: ASettings_WriteIntegerWS2_Proc;      // 42
    Config_WriteFloatWS: ASettings_WriteFloatWS2_Proc;          // 43
    Config_WriteStringWS: ASettings_WriteStringWS2_Proc;        // 44
    Config_WriteDateTimeWS: ASettings_WriteDateTimeWS2_Proc;    // 45
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
