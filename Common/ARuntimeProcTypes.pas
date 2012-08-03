{**
@Abstract ARuntime types
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 01.08.2012
}
unit ARuntimeProcTypes;

interface

uses
  ABase, ARuntimeBase;

// --- Runtime proc types ---

type
  ARuntime_GetIsShutdown_Proc = function(): ABoolean; stdcall;
  ARuntime_Shutdown_Proc = function(): AError; stdcall;
  ARuntime_Run_Proc = function(): AError; stdcall;

type
  // --- Set event functions ---
  ARuntime_SetOnAfterRun_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_SetOnBeforeRun_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_SetOnRun_Proc = function(Value: AProc): AError; stdcall;
  ARuntime_SetOnShutdown_Proc = function(Value: AProc): AError; stdcall;

  // --- Runtime module list functions ---
  ARuntime_AddModule_Proc = function(const Module: AModule_Type): AInteger; stdcall;
  ARuntime_GetModulesCount_Proc = function(): AInteger; stdcall;
  ARuntime_DeleteModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  ARuntime_DeleteModuleByNameWS_Proc = function(const Name: AWideString): AInteger; stdcall;
  ARuntime_DeleteModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ARuntime_FindModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  ARuntime_FindModuleByNameWS_Proc = function(const Name: AWideString): AInteger; stdcall;
  ARuntime_FindModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ARuntime_GetModuleByName_Proc = function(Name: AStr; out Module: AModule_Type): AInteger; stdcall;
  {** Returns the index of the module in the array or -1 if not found }
  ARuntime_GetModuleByUid_Proc = function(Uid: AModuleUid; out Module: AModule_Type): AInteger; stdcall;
  ARuntime_GetModuleNameByIndex_Proc = function(Index: AInteger; Name: AStr; MaxLen: AInteger): AInteger; stdcall;
  ARuntime_GetModuleNameByIndexWS_Proc = function(Index: AInteger): AWideString; stdcall;
  ARuntime_GetModuleProcsByUid_Proc = function(Uid: AModuleUid): Pointer; stdcall;
  ARuntime_GetModuleUidByIndex_Proc = function(Index: AInteger): AModuleUid; stdcall;
  {** Initializes the module by the name of
      @return 0 - Ok, >0 - Warning, <0 - Error }
  ARuntime_InitModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  {** Initializes the module identifier
      @return 0 - Ok, >0 - Warning, <0 - Error }
  ARuntime_InitModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ARuntime_RegisterModule_Proc = function(const Module: AModule_Type): AInteger; stdcall;

implementation

end.
