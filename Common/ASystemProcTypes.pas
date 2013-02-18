{**
@Abstract ASystemProcs
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 18.02.2013
}
unit ASystemProcTypes;

interface

uses
  ABase,
  ABaseTypes,
  ARuntimeBase,
  ARuntimeProcTypes,
  ASystemBase;

// --- Proc types ----------------------------------------------------------------------------------

type
  ASystem_DeleteModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  ASystem_DeleteModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ASystem_FindModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  ASystem_FindModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ASystem_GetConfig_Proc = function(): AConfig; stdcall;
  ASystem_GetDataDirectoryPath_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetExeName_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetExePath_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetModuleByName_Proc = function(Name: AStr; out Module: AModule_Type): AInteger; stdcall;
  ASystem_GetModuleByUid_Proc = function(Uid: AModuleUid; out Module: AModule_Type): AInteger; stdcall;
  ASystem_GetModuleNameByIndex_Proc = function(Index: AInteger; Name: AStr; MaxLen: AInteger): AInteger; stdcall;
  ASystem_GetModuleProcsByUid_Proc = function(Uid: AModuleUid): Pointer; stdcall;
  ASystem_GetModulesCount_Proc = function(): AInteger; stdcall;
  ASystem_GetModuleUidByIndex_Proc = function(Index: AInteger): AModuleUid; stdcall;
  ASystem_GetProgramName_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetResourceString_Proc = function(const Section, Name, Default: AString_Type; out Value: AString_Type): AInteger; stdcall;
  ASystem_GetTitle_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_Init_Proc = function(): AError; stdcall;
  ASystem_InitModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  ASystem_InitModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ASystem_OnAfterRun_Connect_Proc = function(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; stdcall;
  ASystem_OnAfterRun_Disconnect_Proc = function(Callback: ACallbackProc): AInt; stdcall;
  ASystem_OnBeforeRun_Connect_Proc = function(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; stdcall;
  ASystem_OnBeforeRun_Disconnect_Proc = function(Callback: ACallbackProc): AInt; stdcall;
  ASystem_ParamStr_Proc = function(Index: AInteger; out Value: AString_Type): AInteger; stdcall;
  ASystem_Prepare_Proc = function(const Title, ProgramName: AString_Type; ProgramVersion: AVersion;
      const ProductName: AString_Type; ProductVersion: AVersion;
      const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AString_Type): AError; stdcall;
  ASystem_PrepareA_Proc = function(Title, ProgramName: AStr; ProgramVersion: AVersion;
      ProductName: AStr; ProductVersion: AVersion;
      CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AStr): AError; stdcall;
  ASystem_ProcessMessages_Proc = function(): AError; stdcall;
  ASystem_SetConfig_Proc = procedure(Value: AConfig); stdcall;
  ASystem_SetOnAfterRun_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnBeforeRun_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnProcessMessages_Proc = procedure(Value: AProc); stdcall;
  ASystem_SetOnRun_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnShutdown_Proc = function(Value: AProc): AError; stdcall;
  ASystem_ShowError_Proc = function(const UserMessage, ExceptMessage: AString_Type): AError; stdcall;
  ASystem_ShowMessage_Proc = function(const Msg: AString_Type): ADialogBoxCommands; stdcall;
  ASystem_ShowMessageEx_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  ASystem_Shutdown_Proc = function(): AError; stdcall;

type
  A_System_FileTextEof_Proc = function(FileID: AInteger): ABoolean; stdcall;
  A_System_ShellExecute_Proc = function(const Operation, FileName, Parameters, Directory: AString_Type): AInteger; stdcall;
  A_System_Init_Proc = function(): AError; stdcall;
  A_System_Done_Proc = function(): AError; stdcall;

type
  A_Timer_New_Proc = function(): ATimer; stdcall;
  A_Timer_Free_Proc = procedure(Timer: ATimer); stdcall;
  A_Timer_SetEnabled_Proc = procedure(Timer: ATimer; Value: ABoolean); stdcall;
  A_Timer_SetInterval_Proc = procedure(Timer: ATimer; Value: AUInt32); stdcall;
  A_Timer_SetOnTimer_Proc = procedure(Timer: ATimer; Proc: AProc); stdcall;

implementation

end.
