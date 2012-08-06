{**
@Abstract Модуль для работы с настройками
@Author Prof1983 <prof1983@ya.ru>
@Created 06.03.2008
@LastMod 06.08.2012
}
unit ASettingsMod;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ACollectionsBase, ARuntime, ARuntimeBase,
  ASettings, ASettingsBase{$IFDEF ADepr}, ASettingsProcRec{$ENDIF};

function ASettingsMod_Boot(): AError; stdcall;

function ASettingsMod_Fin(): AError; stdcall;

function ASettingsMod_GetProc(ProcName: AStr): Pointer; stdcall;

function ASettingsMod_Init(): AError; stdcall;

{$IFDEF ADepr}
const
  SettingsProcs: ASettingsProcs_Type = (
    Config_Close: ASettings.Config_Close02;                             // 00
    DeleteKeyW: Settings_DeleteKey02;                                   // 01
    DeleteSectionW: Settings_DeleteSection02;                           // 02
    IniConfig_NewWS: ASettings.IniConfig_NewWS;                         // 03
    ReadBoolW: Settings_ReadBool02;                                     // 04
    ReadIntegerW: Settings_ReadInteger02;                               // 05
    ReadFloatW: Settings_ReadFloat02;                                   // 06
    ReadSectionW: Settings_ReadSection02;                               // 07
    ReadStringW: ASettings.Config_ReadStringDefP;                       // 08
    ReadDateTimeW: ASettings.Config_ReadDateTimeDefP;                   // 09
    RegConfig_NewWS: ASettings.RegConfig_NewWS;                         // 10
    RegConfig_New2WS: ASettings.RegConfig_New2WS;                       // 11
    WriteBoolW: Settings_WriteBool02;                                   // 12
    WriteIntegerWS: Settings_WriteInteger02;                            // 13
    WriteFloatW: Settings_WriteFloat02;                                 // 14
    WriteStringW: Settings_WriteString02;                               // 15

    WriteDateTimeW: Settings_WriteDateTime02;                           // 16
    DeleteKey: ASettings.Config_DeleteKey;                              // 17
    DeleteSection: ASettings.Config_DeleteSection;                      // 18
    IniConfig_New: ASettings.IniConfig_New;                             // 19
    ReadBoolDef: ASettings.Config_ReadBoolDef;                          // 20
    ReadIntegerDef: ASettings.Config_ReadIntegerDef;                    // 21
    ReadFloatDef: ASettings.Config_ReadFloatDef;                        // 22
    ReadSection: ASettings.Config_ReadSection;                          // 23
    ReadStringDef: ASettings.Config_ReadStringDef;                      // 24
    ReadDateTimeDef: ASettings.Config_ReadDateTimeDef;                  // 25
    RegConfig_New: ASettings.RegConfig_New;                             // 26
    RegConfig_New2: ASettings.RegConfig_New2;                           // 27
    Config_WriteBool: ASettings.Config_WriteBool;                       // 28
    Config_WriteInteger: ASettings.Config_WriteInteger;                 // 29
    Config_WriteFloat: ASettings.Config_WriteFloat;                     // 30
    Config_WriteString: ASettings.Config_WriteString;                   // 31

    Config_WriteDateTime: ASettings.Config_WriteDateTime;               // 32
    Init: ASettings.Init;                                               // 33
    Fin: ASettings.Done;                                                // 34
    Config_ReadBoolDefWS: ASettings.Config_ReadBoolDefWS;               // 35
    Config_ReadIntegerDefWS: ASettings.Config_ReadIntegerDefWS;         // 36
    Config_ReadFloatDefWS: ASettings.Config_ReadFloatDefWS;             // 37
    Config_ReadSectionWS: ASettings.Config_ReadSectionWS;               // 38
    Config_ReadStringDefWS: ASettings.Config_ReadStringDefWS;           // 39
    Config_ReadDateTimeDefWS: ASettings.Config_ReadDateTimeDefWS;       // 40
    Config_WriteBoolWS: ASettings.Config_WriteBoolWS;                   // 41
    Config_WriteIntegerWS: ASettings.Config_WriteIntegerWS;             // 42
    Config_WriteFloatWS: ASettings.Config_WriteFloatWS;                 // 43
    Config_WriteStringWS: ASettings.Config_WriteStringWS;               // 44
    Config_WriteDateTimeWS: ASettings.Config_WriteDateTimeWS;           // 45
    Reserved46: 0;
    Reserved47: 0;
    Reserved48: 0;
    Reserved49: 0;
    Reserved50: 0;
    Reserved51: 0;
    Reserved52: 0;
    Reserved53: 0;
    Reserved54: 0;
    Reserved55: 0;
    Reserved56: 0;
    Reserved57: 0;
    Reserved58: 0;
    Reserved59: 0;
    Reserved60: 0;
    Reserved61: 0;
    Reserved62: 0;
    Reserved63: 0;
    );
{$ENDIF ADepr}

implementation

const
  ASettings_Version = $00040000;

const
  Module: AModule_Type = (
    Version: ASettings_Version;
    Uid: ASettings_Uid;
    Name: ASettings_Name;
    Description: nil;
    Init: ASettingsMod_Init;
    Fin: ASettingsMod_Fin;
    GetProc: ASettingsMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(SettingsProcs){$ELSE}nil{$ENDIF};
    );

var
  FInitialized: Boolean;

// --- Settings ---

function ASettingsMod_Boot(): AError;
begin
  Result := AModule_Register(Module);
end;

function ASettingsMod_Fin(): AError;
begin
  Result := 0;
end;

function ASettingsMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function ASettingsMod_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  FInitialized := True;
  Result := 0;
end;

end.
