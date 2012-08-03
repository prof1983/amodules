{**
@Abstract Модуль для работы с настройками
@Author Prof1983 <prof1983@ya.ru>
@Created 06.03.2008
@LastMod 03.08.2012
}
unit ASettingsMod;

interface

uses
  ABase, ACollectionsBase, ARuntime, ARuntimeBase, ASettings, ASettingsBase, ASettingsProcTypes;

function Settings_Boot(): AInteger; stdcall;

function Settings_Fin(): AError; stdcall;

function Settings_GetProc(ProcName: AStr): Pointer; stdcall;

function Settings_Init(): AError; stdcall;

const
  SettingsProcs: ASettingsProcs_Type = (
    Config_Close: ASettings.Config_Close02;
    DeleteKeyW: Settings_DeleteKey02;
    DeleteSectionW: Settings_DeleteSection02;
    IniConfig_NewWS: ASettings.IniConfig_NewWS;
    ReadBoolW: Settings_ReadBool02;
    ReadIntegerW: Settings_ReadInteger02;
    ReadFloatW: Settings_ReadFloat02;
    ReadSectionW: Settings_ReadSection02;
    ReadStringW: ASettings.Config_ReadStringDefP;
    ReadDateTimeW: ASettings.Config_ReadDateTimeDefP;
    RegConfig_NewWS: ASettings.RegConfig_NewWS;
    RegConfig_New2WS: ASettings.RegConfig_New2WS;
    WriteBoolW: Settings_WriteBool02;
    WriteIntegerWS: Settings_WriteInteger02;
    WriteFloatW: Settings_WriteFloat02;
    WriteStringW: Settings_WriteString02;
    WriteDateTimeW: Settings_WriteDateTime02;

    DeleteKey: ASettings.Config_DeleteKey;
    DeleteSection: ASettings.Config_DeleteSection;
    IniConfig_New: ASettings.IniConfig_New;
    ReadBoolDef: ASettings.Config_ReadBoolDef;
    ReadIntegerDef: ASettings.Config_ReadIntegerDef;
    ReadFloatDef: ASettings.Config_ReadFloatDef;
    ReadSection: ASettings.Config_ReadSection;
    ReadStringDef: ASettings.Config_ReadStringDef;
    ReadDateTimeDef: ASettings.Config_ReadDateTimeDef;
    RegConfig_New: ASettings.RegConfig_New;
    RegConfig_New2: ASettings.RegConfig_New2;
    Config_WriteBool: ASettings.Config_WriteBool;
    Config_WriteInteger: ASettings.Config_WriteInteger;
    Config_WriteFloat: ASettings.Config_WriteFloat;
    Config_WriteString: ASettings.Config_WriteString;
    Config_WriteDateTime: ASettings.Config_WriteDateTime;
    Init: ASettings.Init;                                               // 33
    Done: ASettings.Done;                                               // 34
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

implementation

{uses
  ASettings0;}

const
  ASettings_Version = $00040000;

const
  Module: AModule_Type = (
    Version: ASettings_Version;
    Uid: ASettings_Uid;
    Name: ASettings_Name;
    Description: nil;
    Init: Settings_Init;
    Fin: Settings_Fin;
    GetProc: Settings_GetProc;
    Procs: Addr(SettingsProcs);
    );

var
  FInitialized: Boolean;

// --- Settings ---

function Settings_Boot(): AInteger;
begin
  Result := AModule_Register(Module);
end;

function Settings_Fin(): AError;
begin
  Result := 0;
end;

function Settings_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function Settings_Init(): AError;
begin
  if FInitialized then
  begin
    Result := 0;
    Exit;
  end;

  FInitialized := True;
  Result := 0;
end;

initialization
  //Settings_SetProcs(SettingsProcs);
end.
