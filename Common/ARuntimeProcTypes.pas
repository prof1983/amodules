{**
@Abstract ARuntime types
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 18.02.2013
}
unit ARuntimeProcTypes;

interface

uses
  ABase, ARuntimeBase;

// --- Runtime proc types ---

type
  // --- Runtime module list functions ---
  ARuntime_AddModule_Proc = function(const Module: AModule_Type): AInt; stdcall;
  ARuntime_DeleteModuleByIndex_Proc = function(Index: AInt): AInt; stdcall;
  ARuntime_DeleteModuleByName_Proc = function(Name: AStr): AInt; stdcall;
  ARuntime_DeleteModuleByUid_Proc = function(Uid: AModuleUid): AInt; stdcall;
  ARuntime_Fin_Proc = function(): AError; stdcall;
  ARuntime_FindModuleByName_Proc = function(Name: AStr): AInt; stdcall;
  ARuntime_FindModuleByUid_Proc = function(Uid: AModuleUid): AInt; stdcall;
  ARuntime_GetIsShutdown_Proc = function(): ABool; stdcall;
  ARuntime_GetModuleByName_Proc = function(Name: AStr; out Module: AModule_Type): AInt; stdcall;
  {** Returns the index of the module in the array or -1 if not found }
  ARuntime_GetModuleByUid_Proc = function(Uid: AModuleUid; out Module: AModule_Type): AInt; stdcall;
  ARuntime_GetModuleNameByIndex_Proc = function(Index: AInt; Name: AStr; MaxLen: AInt): AInt; stdcall;
  ARuntime_GetModuleNameByUid_Proc = function(Uid: AInt; Name: AStr; MaxLen: AInt): AInt; stdcall;
  ARuntime_GetModuleProcsByUid_Proc = function(Uid: AModuleUid): Pointer; stdcall;
  ARuntime_GetModuleUidByIndex_Proc = function(Index: AInt): AModuleUid; stdcall;
  ARuntime_GetModulesCount_Proc = function(): AInt; stdcall;
  ARuntime_GetOnAfterRun_Proc = function(): AProc; stdcall;
  ARuntime_GetOnBeforeRun_Proc = function(): AProc; stdcall;
  ARuntime_GetProcByName_Proc = function(ModuleName, ProcName: AStr): Pointer; stdcall;
  ARuntime_Init_Proc = function(): AError; stdcall;
  {** Initializes the module by the name of
      @return 0 - Ok, >0 - Warning, <0 - Error }
  ARuntime_InitModuleByName_Proc = function(Name: AStr): AInt; stdcall;
  {** Initializes the module identifier
      @return 0 - Ok, >0 - Warning, <0 - Error }
  ARuntime_InitModuleByUid_Proc = function(Uid: AModuleUid): AInt; stdcall;
  ARuntime_RegisterModule_Proc = function(const Module: AModule_Type): AInt; stdcall;
  ARuntime_Run_Proc = function(): AError; stdcall;
  ARuntime_SetOnAfterRun_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_SetOnBeforeRun_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_SetOnRun_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_SetOnShutdown_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_Shutdown_Proc = function(): AError; stdcall;

implementation

end.
