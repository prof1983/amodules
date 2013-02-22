{**
@Abstract ASystemProcs
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 22.02.2013
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
  ASystem_Fin_Proc = function(): AError; stdcall;
  ASystem_GetComments_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetCompanyName_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetConfig_Proc = function(): AConfig; stdcall;
  ASystem_GetConfigDirectoryPath_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetCopyright_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetDataDirectoryPath_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetDescription_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetDirectoryPath_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetExeName_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetExePath_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetParamStr_Proc = function(Index: AInt; out Value: AString_Type): AError; stdcall;
  ASystem_GetProductName_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetProductVersionStr_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetProgramName_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetProgramVersionStr_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetResourceString_Proc = function(const Section, Name, Default: AString_Type; out Value: AString_Type): AError; stdcall;
  ASystem_GetTitle_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_GetUrl_Proc = function(out Value: AString_Type): AError; stdcall;
  ASystem_Init_Proc = function(): AError; stdcall;
  ASystem_OnAfterRun_Connect_Proc = function(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; stdcall;
  ASystem_OnAfterRun_Disconnect_Proc = function(Callback: ACallbackProc): AInt; stdcall;
  ASystem_OnBeforeRun_Connect_Proc = function(Callback: ACallbackProc; Weight: AInt = High(AInt)): AInt; stdcall;
  ASystem_OnBeforeRun_Disconnect_Proc = function(Callback: ACallbackProc): AInt; stdcall;
  ASystem_Prepare_Proc = function(const Title, ProgramName: AString_Type; ProgramVersion: AVersion;
      const ProductName: AString_Type; ProductVersion: AVersion;
      const CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AString_Type): AError; stdcall;
  ASystem_PrepareA_Proc = function(Title, ProgramName: AStr; ProgramVersion: AVersion;
      ProductName: AStr; ProductVersion: AVersion;
      CompanyName, Copyright, Url, Description, DataPath, ConfigPath: AStr): AError; stdcall;
  ASystem_ProcessMessages_Proc = function(): AError; stdcall;
  ASystem_SetConfig_Proc = function(Value: AConfig): AError; stdcall;
  ASystem_SetDataDirectoryPath_Proc = function(const DataDir: AString_Type): AError; stdcall;
  ASystem_SetOnProcessMessages_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnShowErrorA_Proc = function(Value: AShowErrorA_Proc): AError; stdcall;
  ASystem_SetOnShowMessageA_Proc = function(Value: AShowMessageA_Proc): AError; stdcall;
  ASystem_ShellExecute_Proc = function(const Operation, FileName, Parameters, Directory: AString_Type): AInt; stdcall;
  ASystem_ShowError_Proc = function(const UserMessage, ExceptMessage: AString_Type): AError; stdcall;
  ASystem_ShowErrorA_Proc = function(UserMessage, ExceptMessage: AStr): AError; stdcall;
  ASystem_ShowMessage_Proc = function(const Msg: AString_Type): ADialogBoxCommands; stdcall;
  ASystem_ShowMessageA_Proc = function(Msg: AStr): ADialogBoxCommands; stdcall;
  ASystem_ShowMessageEx_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  ASystem_ShowMessageExA_Proc = function(Text, Caption: AStr; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;

type
  ASystem_FileTextClose_Proc = function(FileId: AInt): AError; stdcall;
  ASystem_FileTextEof_Proc = function(FileId: AInt): ABool; stdcall;
  ASystem_FileTextGetIndex_Proc = function(FileId: AInt): AInt; stdcall;

type
  A_Timer_New_Proc = function(): ATimer; stdcall;
  A_Timer_Free_Proc = procedure(Timer: ATimer); stdcall;
  A_Timer_SetEnabled_Proc = procedure(Timer: ATimer; Value: ABool); stdcall;
  A_Timer_SetInterval_Proc = procedure(Timer: ATimer; Value: AUInt32); stdcall;
  A_Timer_SetOnTimer_Proc = procedure(Timer: ATimer; Proc: AProc); stdcall;

implementation

end.
