{**
@Abstract ARuntime types
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 18.02.2013
}
unit ARuntimeProcRec;

interface

uses
  ABase, ARuntimeProcTypes;

type
  PARuntimeProcs = ^ARuntimeProcs_Type;
  ARuntimeProcs_Type = packed record {64x4}
    SetOnAfterRun: ARuntime_SetOnAfterRun_Proc;                 // 00
    SetOnBeforeRun: ARuntime_SetOnBeforeRun_Proc;               // 01
    SetOnRun: ARuntime_SetOnRun_Proc;                           // 02
    Reserved03: AInt;                                           // 03
    AddModule: ARuntime_AddModule_Proc;                         // 04
    GetModulesCount: ARuntime_GetModulesCount_Proc;             // 05
    FindModuleByName: ARuntime_FindModuleByName_Proc;           // 06
    FindModuleByUid: ARuntime_FindModuleByUid_Proc;             // 07
    DeleteModuleByName: ARuntime_DeleteModuleByName_Proc;       // 08
    DeleteModuleByUid: ARuntime_DeleteModuleByUid_Proc;         // 09
    GetModuleByName: ARuntime_GetModuleByName_Proc;             // 10
    GetModuleByUid: ARuntime_GetModuleByUid_Proc;               // 11
    GetModuleNameByIndex: ARuntime_GetModuleNameByIndex_Proc;   // 12
    GetModuleUidByIndex: ARuntime_GetModuleUidByIndex_Proc;     // 13
    InitModuleByName: ARuntime_InitModuleByName_Proc;           // 14
    InitModuleByUid: ARuntime_InitModuleByUid_Proc;             // 15

    GetIsShutdown: ARuntime_GetIsShutdown_Proc;                 // 16
    Shutdown: ARuntime_Shutdown_Proc;                           // 17
    RegisterModule: ARuntime_RegisterModule_Proc;               // 18
    GetModuleProcsByUid: ARuntime_GetModuleProcsByUid_Proc;     // 19
    Run: ARuntime_Run_Proc;                                     // 20
    SetOnShutdown: ARuntime_SetOnShutdown_Proc;                 // 21
    DeleteModuleByIndex: ARuntime_DeleteModuleByIndex_Proc;     // 22
    Fin: ARuntime_Fin_Proc;                                     // 23
    GetModuleNameByUid: ARuntime_GetModuleNameByUid_Proc;       // 24
    GetOnAfterRun: ARuntime_GetOnAfterRun_Proc;                 // 25
    GetOnBeforeRun: ARuntime_GetOnBeforeRun_Proc;               // 26
    GetProcByName: ARuntime_GetProcByName_Proc;                 // 27
    Init: ARuntime_Init_Proc;                                   // 28
    Reserved29: AInteger;
    Reserved30: AInteger;
    Reserved31: AInteger;

    Reserved32: AInteger;
    Reserved33: AInteger;
    Reserved34: AInteger;
    Reserved35: AInteger;
    Reserved36: AInteger;
    Reserved37: AInteger;
    Reserved38: AInteger;
    Reserved39: AInteger;
    Reserved40: AInteger;
    Reserved41: AInteger;
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
  end;

implementation

end.
