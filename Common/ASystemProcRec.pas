{**
@Abstract ASystemProcs
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 01.08.2012
}
unit ASystemProcRec;

{$IFDEF A0}
  {$IFNDEF A02}
    {$DEFINE A03}
  {$ENDIF}
{$ENDIF A0}

{$IFDEF A02}{$DEFINE A0}{$ENDIF}
{$IFDEF A03}{$DEFINE A0}{$ENDIF}
{$IFDEF A04}{$DEFINE A0}{$ENDIF}

{$IFNDEF A0}
  {$ERROR 'DO NOT USE'}
{$ENDIF}

interface

uses
  ABase, ABaseTypes, ASystemBase, ASystemProcTypes;

// --- Proc types ----------------------------------------------------------------------------------

type
  PSystemProcs = ^ASystemProcs_Type;
  ASystemProcs_Type = packed record {64x4}
    GetCompanyNameWS: A_System_Info_GetCompanyNameWS_Proc;              // 00
    GetCopyrightWS: A_System_Info_GetCopyrightWS_Proc;                  // 01
    GetDescriptionWS: A_System_Info_GetDescriptionWS_Proc;              // 02
    GetExeNameWS: A_System_GetExeNameWS_Proc;                           // 03
    GetExePathWS: A_System_GetExePathWS_Proc;                           // 04
    GetProductNameWS: A_System_Info_GetProductNameWS_Proc;              // 05
    GetProductVersionWS: A_System_Info_GetProductVersionStrWS_Proc;     // 06
    GetProgramNameWS: A_System_Info_GetProgramNameWS_Proc;              // 07
    GetProgramVersionWS: A_System_Info_GetProgramVersionStrWS_Proc;     // 08
    GetTitleWS: A_System_Info_GetTitleWS_Proc;                          // 09
    GetUrlWS: A_System_Info_GetUrlWS_Proc;                              // 10

    GetConfig: ASystem_GetConfig_Proc;                                  // 11
    GetIsShutdown: ASystem_GetIsShutdown_Proc;                          // 12
    GetResourceStringWS: ASystem_GetResourceStringWS_Proc;              // 13
    ProcessMessages02: ASystem_ProcessMessages02_Proc;                  // 14
    SetConfig: ASystem_SetConfig_Proc;                                  // 15
    ShowError02: ASystem_ShowError02_Proc;                              // 16
    ShowMessageWS: ASystem_ShowMessageWS_Proc;                          // 17
    ShowMessageExWS: ASystem_ShowMessageExWS_Proc;                      // 18
    Shutdown02: ASystem_Shutdown02_Proc;                                // 19

    // --- Set event functions ---
    SetOnProcessMessages02: ASystem_SetOnProcessMessages02_Proc;        // 20
    SetOnRun: ASystem_SetOnRun02_Proc;                                  // 21
    SetOnShutdown: ASystem_SetOnShutdown02_Proc;                        // 22
    SetOnShowError: ASystem_SetOnShowError_Proc;                        // 23
    SetOnShowMessage: ASystem_SetOnShowMessage_Proc;                    // 24

    // --- Events and tools ---
    OnAfterRun: ASystem_OnAfterRun_Proc;                                // 25
    OnBeforeRun: ASystem_OnBeforeRun_Proc;                              // 26
    OnAfterRun_Connect02: ASystem_OnAfterRunConnect02_Proc;             // 27
    OnAfterRun_Disconnect02: ASystem_OnAfterRunDisconnect02_Proc;       // 28
    OnBeforeRun_Connect02: ASystem_OnBeforeRunConnect02_Proc;           // 29
    OnBeforeRun_Disconnect02: ASystem_OnBeforeRunDisconnect02_Proc;     // 30

    Modules_Count: ASystem_GetModulesCount_Proc;                        // 31
    Modules_FindByNameWS: ASystem_FindModuleByNameWS_Proc;              // 32
    {$IFDEF A02}Modules_GetByName02: ASystem_GetModuleByName02_Proc{$ELSE}Reserved33: AInt{$ENDIF}; // 33
    Modules_GetNameByIndexWS: ASystem_GetModuleNameByIndexWS_Proc;      // 34
    {$IFDEF A02}Module_Register02: A_Runtime_Module_Register02_Proc{$ELSE}Reserved35: AInt{$ENDIF}; // 35

    ParamStrWS: ASystem_ParamStrWS_Proc;                                // 36
    ShellExecuteWS: A_System_ShellExecuteWS_Proc;                       // 37
    Info_GetDataDirectoryPathWS: A_System_Info_GetDataDirectoryPathWS_Proc; // 38
    Modules_InitByNameWS: ASystem_InitModuleByNameWS_Proc;              // 39

    Modules_DeleteByNameWS: ASystem_DeleteModuleByNameWS_Proc;          // 40
    SetDataDirectoryPathWS: A_System_SetDataDirectoryPathWS_Proc;       // 41

    {$IFDEF A02}
      Reserved42: AInteger;
      Reserved43: AInteger;
      Reserved44: AInteger;
      Reserved45: AInteger;
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
    {$ELSE}
      // --- Set event functions ---
      OnAfterRun_Set: ASystem_SetOnAfterRun_Proc;                       // 42
      OnBeforeRun_Set: ASystem_SetOnBeforeRun_Proc;                     // 43
      OnRun_Set: ASystem_SetOnRun_Proc;                                 // 44
      OnShutdown_Set: ASystem_SetOnShutdown_Proc;                       // 45

      Modules_AddModule: ASystem_AddModule_Proc;                        // 46
      Reserved47: AInt;                                                 // 47
      Modules_FindByName: ASystem_FindModuleByName_Proc;                // 48
      Modules_FindByUid: ASystem_FindModuleByUid_Proc;                  // 49
      Modules_DeleteByName: ASystem_DeleteModuleByName_Proc;            // 50
      Modules_DeleteByUid: ASystem_DeleteModuleByUid_Proc;              // 51
      Modules_GetByName: ASystem_GetModuleByName_Proc;                  // 52
      Modules_GetByUid: ASystem_GetModuleByUid_Proc;                    // 53
      Modules_GetNameByIndex: ASystem_GetModuleNameByIndex_Proc;        // 54
      Modules_GetUidByIndex: ASystem_GetModuleUidByIndex_Proc;          // 55
      Modules_InitByName: ASystem_InitModuleByName_Proc;                // 56
      Modules_InitByUid: ASystem_InitModuleByUid_Proc;                  // 57

      IsShutdown: ASystem_GetIsShutdown_Proc;                           // 58
      Shutdown: ASystem_Shutdown_Proc;                                  // 59
      Reserved60: AInteger;                                             // 60

      // --- Info functions (Old) ---
      Info_GetCompanyName: A_System_Info_GetCompanyName_Proc;           // 61
      Info_GetCopyright: A_System_Info_GetCopyright_Proc;               // 62
      Info_GetDescription: A_System_Info_GetDescription_Proc;           // 63
    {$ENDIF A02}

    {$IFDEF A02}
    {$ELSE}
      Reserved64: AInteger;                                             // 64
      Info_GetDirectoryPath: A_System_Info_GetDirectoryPath_Proc;       // 65
      Info_GetProductName: A_System_Info_GetProductName_Proc;           // 66
      Info_GetProductVersion: A_System_Info_GetProductVersion_Proc;     // 67
      Info_GetProgramName: A_System_Info_GetProgramName_Proc;           // 68
      Info_GetProgramVersion: A_System_Info_GetProgramVersion_Proc;     // 69
      Info_GetTitle: A_System_Info_GetTitle_Proc;                       // 70
      Info_GetUrl: A_System_Info_GetUrl_Proc;                           // 71

      // --- (Old) ---
      Reserved72: AInteger;                                             // 72
      GetResourceString: ASystem_GetResourceString_Proc;                // 73
      ProcessMessages: ASystem_ProcessMessages_Proc;                    // 74
      Reserved75: AInteger;                                             // 75
      ShowError: ASystem_ShowError_Proc;                                // 76
      ShowMessage: ASystem_ShowMessage_Proc;                            // 77
      ShowMessage2: ASystem_ShowMessageEx_Proc;                         // 78
      Reserved79: AInteger;                                             // 79
      Reserved80: AInteger;                                             // 80

      // --- Set event functions ---
      SetOnProcessMessages: ASystem_SetOnProcessMessages_Proc;          // 81
      Reserved82: AInteger;                                             // 82
      Reserved83: AInteger;                                             // 83

      // --- Events and tools ---
      Reserved84: AInteger;                                             // 84
      Reserved85: AInteger;                                             // 85
      OnAfterRun_Connect: ASystem_OnAfterRunConnect_Proc;               // 86
      OnAfterRun_Disconnect: ASystem_OnAfterRunDisconnect_Proc;         // 87
      OnBeforeRun_Connect: ASystem_OnBeforeRunConnect_Proc;             // 88
      OnBeforeRun_Disconnect: ASystem_OnBeforeRunDisconnect_Proc;       // 89

      // --- (Old) ---
      ParamStr: ASystem_ParamStr_Proc;                                  // 90
      ShellExecute: A_System_ShellExecute_Proc;                         // 91
      Reserved92: AInteger; 

      // --- Application.Info (V03) ---
      Reserved93: AInteger;
      Info_GetDirectoryPathWS: A_System_Info_GetDirectoryPathWS_Proc;   // 94
      Reserved95: AInteger;                                             // 95
      Info_GetCompanyNameWS: A_System_Info_GetCompanyNameWS_Proc;       // 96
      Info_GetCopyrightWS: A_System_Info_GetCopyrightWS_Proc;           // 97
      Info_GetDescriptionWS: A_System_Info_GetDescriptionWS_Proc;       // 98
      Info_GetProductNameWS: A_System_Info_GetProductNameWS_Proc;       // 99
      Info_GetProductVersionStrWS: A_System_Info_GetProductVersionStrWS_Proc; // 100
      Info_GetProgramNameWS: A_System_Info_GetProgramNameWS_Proc;       // 101
      Info_GetProgramVersionStrWS: A_System_Info_GetProgramVersionStrWS_Proc; // 102
      Info_GetTitleWS: A_System_Info_GetTitleWS_Proc;                   // 103
      Info_GetUrlWS: A_System_Info_GetUrlWS_Proc;                       // 104

      Prepare2WS: ASystem_Prepare2WS_Proc;                              // 105

      Library_OpenWS: A_Library_OpenWS_Proc;                            // 106
      Library_Close: A_Library_Close_Proc;                              // 107
      Library_BuildPathWS: A_Library_BuildPathWS_Proc;                  // 108
      Library_GetNameWS: A_Library_GetNameWS_Proc;                      // 109
      Library_GetProcAddressWS: A_Library_GetProcAddressWS_Proc;        // 110
      Library_GetSymbolWS: A_Library_GetSymbolWS_Proc;                  // 111

      Prepare: ASystem_Prepare_Proc;                                    // 112
      Prepare2: ASystem_Prepare2_Proc;                                  // 113
      Prepare2A: ASystem_Prepare2A_Proc;                                // 114

      Init: A_System_Init_Proc;                                         // 115
      Done: A_System_Done_Proc;                                         // 116
      Info_GetCommentsWS: A_System_Info_GetCommentsWS_Proc;             // 117
      FileTextEof: A_System_FileTextEof_Proc;                           // 118
      FileTextReadLnAnsi: A_System_FileTextReadLnAnsi_Proc;             // 119
      Reserved120: AInteger; {A_Timer_New_Proc}
      Reserved121: AInteger; {A_Timer_Free_Proc}
      Reserved122: AInteger; {A_Timer_SetEnabled_Proc}
      Reserved123: AInteger; {A_Timer_SetInterval_Proc}
      Reserved124: AInteger; {A_Timer_SetOnTimer_Proc}
      Reserved125: AInteger;
      Reserved126: AInteger;
      Reserved127: AInteger;
    {$ENDIF}
  end;

implementation

end.
