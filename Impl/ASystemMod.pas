{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2007
@LastMod 13.08.2012
}
unit ASystemMod;

{I Defines.inc}

{$IFNDEF NoRuntimeEvents}
  {$DEFINE USE_EVENTS}
{$ENDIF}

{$IFDEF USE_EVENTS}
  {$IFDEF A02}
    {$DEFINE USE_EVENTS_A02}
  {$ENDIF A02}
{$ENDIF USE_EVENTS}

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ALibraries, ARuntime, ARuntimeBase,
  ASystem, ASystemBase, ASystemMain{$IFDEF ADepr}, ASystemProcRec{$ENDIF};

// --- Module ---

{$IFDEF ADepr}function System_AddModule(const Module: AModule03_Type): AInteger; stdcall;{$ENDIF}

function ASystemMod_Boot(): AError; stdcall;

function ASystemMod_Fin(): AError; stdcall;

function ASystemMod_GetProc(ProcName: AStr): Pointer; stdcall;

function ASystemMod_Init(): AError; stdcall

{$IFDEF ADepr}
const
  SystemProcs: ASystemProcs_Type = (
    // --- Info functions ---
    GetCompanyNameWS: ASystem.Info_GetCompanyNameWS;                // 00
    GetCopyrightWS: ASystem.Info_GetCopyrightWS;                    // 01
    GetDescriptionWS: ASystem.Info_GetDescriptionWS;                // 02
    GetExeNameWS: ASystem.GetExeNameWS;                             // 03
    GetExePathWS: ASystem.Info_GetDirectoryPathWS;                  // 04
    GetProductNameWS: ASystem.Info_GetProductNameWS;                // 05
    GetProductVersionWS: ASystem.Info_GetProductVersionStrWS;       // 06
    GetProgramNameWS: ASystem.Info_GetProgramNameWS;                // 07
    GetProgramVersionWS: ASystem.Info_GetProgramVersionStrWS;       // 08
    GetTitleWS: ASystem.Info_GetTitleWS;                            // 09
    GetUrlWS: ASystem.Info_GetUrlWS;                                // 10

    GetConfig: ASystem.GetConfig;                                   // 11
    GetIsShutdown: ASystem.GetIsShutdown;                           // 12
    GetResourceStringWS: ASystem.GetResourceStringWS;               // 13
    ProcessMessages02: ASystem.ProcessMessages02;                   // 14
    SetConfig: ASystem.Runtime_SetConfig;                           // 15
    ShowError02: ASystem.ShowError02;                               // 16
    ShowMessageWS: ASystem.ShowMessageWS;                           // 17
    ShowMessageExWS: ASystem.ShowMessageExWS;                       // 18
    Shutdown02: ASystem.Shutdown;                                   // 19

    // --- Set event functions ---
    SetOnProcessMessages02: ASystem.SetOnProcessMessages02;         // 20
    SetOnRun: ARuntime.SetOnRun02;                                  // 21
    SetOnShutdown: ARuntime.SetOnShutdown02;                        // 22
    SetOnShowError: ASystem.SetOnShowError;                         // 23
    SetOnShowMessage: ASystem.SetOnShowMessage;                     // 24

    // --- Set event functions ---

    // --- Events and tools ---
    {$IFDEF USE_EVENTS}
    OnAfterRun: ASystem.OnAfterRun;                                 // 25
    OnBeforeRun: ASystem.OnBeforeRun;                               // 26
    {$ELSE}
    OnAfterRun: nil;
    OnBeforeRun: nil;
    {$ENDIF USE_EVENTS}
    {$IFDEF USE_EVENTS_A02}
    OnAfterRun_Connect02: ASystem.OnAfterRun_Connect;               // 27
    OnAfterRun_Disconnect02: ASystem.OnAfterRun_Disconnect;         // 28
    OnBeforeRun_Connect02: ASystem.OnBeforeRun_Connect;             // 29
    OnBeforeRun_Disconnect02: ASystem.OnBeforeRun_Disconnect;       // 30
    {$ELSE}
    OnAfterRun_Connect02: nil;
    OnAfterRun_Disconnect02: nil;
    OnBeforeRun_Connect02: nil;
    OnBeforeRun_Disconnect02: nil;
    {$ENDIF USE_EVENTS_A02}

    Modules_Count: ARuntime.Runtime_Modules_Count;                      // 31
    Modules_FindByNameWS: ARuntime.Runtime_Modules_FindByNameWS;        // 32
    Reserved33: 0; //Modules_GetByName02: ARuntime.Runtime_Modules_GetByName02; // 33
    Modules_GetNameByIndexWS: ARuntime.Runtime_Modules_GetNameByIndex02;// 34
    Reserved35: 0; //Module_Register02: ARuntime.Runtime_Module_Register02; // 35

    ParamStrWS: ASystem.ParamStrWS;                                     // 36
    ShellExecuteWS: ASystem.Runtime_ShellExecute;                       // 37
    Info_GetDataDirectoryPathWS: ASystem.Runtime_GetDataPath;           // 38
    Modules_InitByNameWS: ARuntime.Runtime_Modules_InitByNameWS;        // 39

    Modules_DeleteByNameWS: ARuntime.Runtime_Modules_DeleteByNameWS;    // 40
    SetDataDirectoryPathWS: ASystem.SetDataDirectoryPathWS;             // 41

    // --- Set event functions ---
    OnAfterRun_Set: ARuntime_SetOnAfterRun;                             // 42
    OnBeforeRun_Set: ARuntime_SetOnBeforeRun;                           // 43
    OnRun_Set: ARuntime_SetOnRun;                                       // 44
    OnShutdown_Set: ARuntime_SetOnShutdown;                             // 45

    Modules_AddModule: System_AddModule;                                // 46
    Reserved47: 0; //Modules_Count: ARuntime03.Runtime_Modules_Count;   // 47
    Modules_FindByName: ARuntime.Runtime_Modules_FindByName;            // 48
    Modules_FindByUid: ARuntime.Runtime_Modules_FindByUid;              // 49
    Modules_DeleteByName: ARuntime.Runtime_Modules_DeleteByName;        // 50
    Modules_DeleteByUid: ARuntime.Runtime_Modules_DeleteByUid;          // 51
    Modules_GetByName: ARuntime.Runtime_Modules_GetByName;              // 52
    Modules_GetByUid: ARuntime.Runtime_Modules_GetByUid;                // 53
    Modules_GetNameByIndex: ARuntime.Runtime_Modules_GetNameByIndex;    // 54
    Modules_GetUidByIndex: ARuntime.Runtime_Modules_GetUidByIndex;      // 55
    Modules_InitByName: ARuntime.Runtime_Modules_InitByName;            // 56
    Modules_InitByUid: ARuntime.Runtime_Modules_InitByUid;              // 57

    IsShutdown: ARuntime.IsShutdown;                                    // 58
    Shutdown: ARuntime.Shutdown;                                        // 59
    Reserved60: 0; //Module_Register: A_Runtime_Module_Register_Proc;   // 60

    // --- Info functions (Old) ---
    Info_GetCompanyName: ASystem.Info_GetCompanyName;                   // 61
    Info_GetCopyright: ASystem.Info_GetCopyright;                       // 62
    Info_GetDescription: ASystem.Info_GetDescription;                   // 63
    Reserved64: 0; //Info_ExeName: A_System_Info_ExeName_Proc;          // 64
    Info_GetDirectoryPath: ASystem.Info_GetDirectoryPath;               // 65

    Info_GetProductName: ASystem.Info_GetProductName;                   // 66
    Info_GetProductVersion: ASystem.Info_GetProductVersion;             // 67
    Info_GetProgramName: ASystem.Info_GetProgramName;                   // 68
    Info_GetProgramVersion: ASystem.Info_GetProgramVersion;             // 69
    Info_GetTitle: ASystem.Info_GetTitle;                               // 70
    Info_GetUrl: ASystem.Info_GetUrl;                                   // 71

    Reserved72: 0;                                                      // 72
    GetResourceString: ASystem.GetResourceString;                       // 73
    ProcessMessages: ASystem.ProcessMessages;                           // 74
    Reserved75: 0;                                                      // 75
    ShowError: ASystem.ShowError;                                       // 76
    ShowMessage: ASystem.ShowMessage;                                   // 77
    ShowMessage2: ASystem.ShowMessageEx;                                // 78
    Reserved79: 0;                                                      // 79
    Reserved80: 0;                                                      // 80

    // --- Set event functions ---
    SetOnProcessMessages: ASystem.SetOnProcessMessages;                 // 81
    Reserved82: 0; //SetOnShowError: A_System_SetOnShowError_Proc;      // 82
    Reserved83: 0; //SetOnShowMessage: A_System_SetOnShowMessage_Proc;  // 83

    // --- Events and tools ---
    Reserved84: 0;                                                      // 84
    Reserved85: 0;                                                      // 85
    OnAfterRun_Connect: ASystem.OnAfterRun_Connect;                     // 86
    OnAfterRun_Disconnect: ASystem.OnAfterRun_Disconnect;               // 87
    OnBeforeRun_Connect: ASystem.OnBeforeRun_Connect;                   // 88
    OnBeforeRun_Disconnect: ASystem.OnBeforeRun_Disconnect;             // 89

    // --- (Old) ---
    ParamStr: ASystem.ParamStr;                                         // 90
    ShellExecute: ASystem.ShellExecute;                                 // 91
    Reserved92: 0; //GetDataPath: A_System_GetDataPath_Proc;            // 92

    Reserved93: 0;                                                      // 93
    Info_GetDirectoryPathWS: ASystem.Info_GetDirectoryPathWS;           // 94
    Reserved95: 0;                                                      // 95
    Info_GetCompanyNameWS: ASystem.Info_GetCompanyNameWS;               // 96
    Info_GetCopyrightWS: ASystem.Info_GetCopyrightWS;                   // 97
    Info_GetDescriptionWS: ASystem.Info_GetDescriptionWS;               // 98
    Info_GetProductNameWS: ASystem.Info_GetProductNameWS;               // 99
    Info_GetProductVersionStrWS: ASystem.Info_GetProductVersionStrWS;   // 100
    Info_GetProgramNameWS: ASystem.Info_GetProgramNameWS;               // 101
    Info_GetProgramVersionStrWS: ASystem.Info_GetProgramVersionStrWS;   // 102
    Info_GetTitleWS: ASystem.Info_GetTitleWS;                           // 103
    Info_GetUrlWS: ASystem.Info_GetUrlWS;                               // 104

    Prepare2WS: ASystem.Prepare2WS;                                     // 105

    Library_OpenWS: ALibraries.Library_Open;                            // 106
    Library_Close: ALibraries.Library_Close;                            // 107
    Library_BuildPathWS: ALibraries.Library_BuildPath;                  // 108
    Library_GetNameWS: ALibraries.Library_GetName;                      // 109
    Library_GetProcAddressWS: ALibraries.Library_GetProcAddress;        // 110
    Library_GetSymbolWS: ALibraries.Library_GetSymbol;                  // 111

    Prepare: ASystem.Prepare;                                           // 112
    Prepare2: ASystem.Prepare2;                                         // 113
    Prepare2A: ASystem.Prepare2A;                                       // 114

    Init: ASystem.Init;                                                 // 115
    Done: ASystem.Done;                                                 // 116
    Info_GetCommentsWS: ASystem.Info_GetCommentsWS;                     // 117
    FileTextEof: ASystem.FileTextEof;                                   // 118
    FileTextReadLnAnsi: ASystem.FileTextReadLnAnsi;                     // 119
    Reserved120: 0;                                                     // 120
    Reserved121: 0;                                                     // 121
    Reserved122: 0;                                                     // 122
    Reserved123: 0;
    Reserved124: 0;
    Reserved125: 0;
    Reserved126: 0;
    Reserved127: 0;
    );
{$ENDIF ADepr}

implementation

const
  ASystem_Version = $00040000;

const
  SystemModule: AModule_Type = (
    Version: ASystem_Version;
    Uid: ASystem_Uid;
    Name: ASystem_Name;
    Description: nil;
    Init: ASystemMod_Init;
    Fin: ASystemMod_Fin;
    GetProc: ASystemMod_GetProc;
    Procs: {$IFDEF ADepr}Addr(SystemProcs){$ELSE}nil{$ENDIF};
    );

{ Module }

{$IFDEF ADepr}
function System_AddModule(const Module: AModule03_Type): AInteger;
begin
  Result := ARuntime_AddModule(AModule_Type(Module));
end;
{$ENDIF}

// --- ASystemMod ---

function ASystemMod_Boot(): AError;
begin
  Result := AModule_Register(SystemModule);
end;

function ASystemMod_Fin(): AError;
begin
  Result := ASystem_Fin();
end;

function ASystemMod_GetProc(ProcName: AStr): Pointer;
begin
  Result := nil;
end;

function ASystemMod_Init(): AError;
begin
  Result := ASystem_Init();
end;

end.
