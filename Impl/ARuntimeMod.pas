{**
@Abstract ARuntime
@Author Prof1983 <prof1983@ya.ru>
@Created 20.08.2007
@LastMod 18.02.2013
}
unit ARuntimeMod;

interface

uses
  ABase,
  ARuntimeBase,
  ARuntimeMain,
  ARuntimeProcRec;

// --- ARuntimeMod ---

{** Preinitialize Runtime }
function ARuntimeMod_Boot(): AError; stdcall;

{** Finalize Runtime (Shutdown, Work end, Unloading of modules) }
function ARuntimeMod_Fin(): AError; stdcall;

{** Initialize Runtime }
function ARuntimeMod_Init(): AError; stdcall;

const // 64x4
  RuntimeProcs: ARuntimeProcs_Type = (
    SetOnAfterRun: ARuntime_SetOnAfterRun;                      // 00
    SetOnBeforeRun: ARuntime_SetOnBeforeRun;                    // 01
    SetOnRun: ARuntime_SetOnRun;                                // 02
    Reserved03: 0;                                              // 03
    AddModule: ARuntime_AddModule;                              // 04
    GetModulesCount: ARuntime_GetModulesCount;                  // 05
    FindModuleByName: ARuntime_FindModuleByName;                // 06
    FindModuleByUid: ARuntime_FindModuleByUid;                  // 07
    DeleteModuleByName: ARuntime_DeleteModuleByName;            // 08
    DeleteModuleByUid: ARuntime_DeleteModuleByUid;              // 09
    GetModuleByName: ARuntime_GetModuleByName;                  // 10
    GetModuleByUid: ARuntime_GetModuleByUid;                    // 11
    GetModuleNameByIndex: ARuntime_GetModuleNameByIndex;        // 12
    GetModuleUidByIndex: ARuntime_GetModuleUidByIndex;          // 13
    InitModuleByName: ARuntime_InitModuleByName;                // 14
    InitModuleByUid: ARuntime_InitModuleByUid;                  // 15

    GetIsShutdown: ARuntime_GetIsShutdown;                      // 16
    Shutdown: ARuntime_Shutdown;                                // 17
    RegisterModule: ARuntime_RegisterModule;                    // 18
    GetModuleProcsByUid: ARuntime_GetModuleProcsByUid;          // 19
    Run: ARuntime_Run;                                          // 20
    SetOnShutdown: ARuntime_SetOnShutdown;                      // 21
    DeleteModuleByIndex: ARuntime_DeleteModuleByIndex;          // 22
    Fin: ARuntime_Fin;                                          // 23
    GetModuleNameByUid: ARuntime_GetModuleNameByUid;            // 24
    GetOnAfterRun: ARuntime_GetOnAfterRun;                      // 25
    GetOnBeforeRun: ARuntime_GetOnBeforeRun;                    // 26
    GetProcByName: ARuntime_GetProcByName;                      // 27
    Init: ARuntime_Init;                                        // 28
    Reserved29: 0;
    Reserved30: 0;
    Reserved31: 0;

    Reserved32: 0;
    Reserved33: 0;
    Reserved34: 0;
    Reserved35: 0;
    Reserved36: 0;
    Reserved37: 0;
    Reserved38: 0;
    Reserved39: 0;
    Reserved40: 0;
    Reserved41: 0;
    Reserved42: 0;
    Reserved43: 0;
    Reserved44: 0;
    Reserved45: 0;
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

// --- ARuntimeMod ---

function ARuntimeMod_Boot(): AError;
begin
  Result := 0;
end;

function ARuntimeMod_Fin(): AError;
begin
  Result := ARuntime_Fin();
end;

function ARuntimeMod_Init(): AError;
begin
  Result := 0;
end;

end.
