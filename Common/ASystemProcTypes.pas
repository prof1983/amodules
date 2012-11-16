{**
@Abstract ASystemProcs
@Author Prof1983 <prof1983@ya.ru>
@Created 19.08.2009
@LastMod 16.11.2012
}
unit ASystemProcTypes;

{$IFDEF A04}{$DEFINE ADepr}{$ENDIF}

interface

uses
  ABase, ABaseTypes, ARuntimeBase, ARuntimeProcTypes, ASystemBase;

// --- Proc types ----------------------------------------------------------------------------------

type
  {$IFDEF ADepr}ASystem_AddModule_Proc = function(const Module: AModule03_Type): AInteger; stdcall;{$ENDIF}
  ASystem_DeleteModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  {$IFDEF ADepr}ASystem_DeleteModuleByNameWS_Proc = function(const Name: AWideString): AInteger; stdcall;{$ENDIF}
  ASystem_DeleteModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ASystem_FindModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  ASystem_FindModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  {$IFDEF ADepr}ASystem_FindModuleByNameWS_Proc = function(const Name: AWideString): AInteger; stdcall;{$ENDIF}
  ASystem_GetConfig_Proc = function(): AConfig; stdcall;
  ASystem_GetDataDirectoryPath_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetExeName_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetExePath_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetIsShutdown_Proc = function(): ABoolean; stdcall;
  ASystem_GetModuleByName_Proc = function(Name: AStr; out Module: AModule_Type): AInteger; stdcall;
  {$IFDEF ADepr}ASystem_GetModuleByName02_Proc = function(const Name: AWideString; out Module: AModule02_Type): ABoolean; stdcall;{$ENDIF}
  ASystem_GetModuleByUid_Proc = function(Uid: AModuleUid; out Module: AModule_Type): AInteger; stdcall;
  ASystem_GetModuleNameByIndex_Proc = function(Index: AInteger; Name: AStr; MaxLen: AInteger): AInteger; stdcall;
  ASystem_GetModuleNameByIndexWS_Proc = function(Index: AInteger): AWideString; stdcall;
  ASystem_GetModuleProcsByUid_Proc = function(Uid: AModuleUid): Pointer; stdcall;
  ASystem_GetModulesCount_Proc = function(): AInteger; stdcall;
  ASystem_GetModuleUidByIndex_Proc = function(Index: AInteger): AModuleUid; stdcall;
  ASystem_GetProgramName_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_GetResourceString_Proc = function(const Section, Name, Default: AString_Type; out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}ASystem_GetResourceStringWS_Proc = function(const Section, Name, Default: AWideString): AWideString; stdcall;{$ENDIF}
  ASystem_GetTitle_Proc = function(out S: AString_Type): AError; stdcall;
  ASystem_InitModuleByName_Proc = function(Name: AStr): AInteger; stdcall;
  {$IFDEF ADepr}ASystem_InitModuleByNameWS_Proc = function(const ModuleName: AWideString): AInteger; stdcall;{$ENDIF}
  ASystem_InitModuleByUid_Proc = function(Uid: AModuleUid): AInteger; stdcall;
  ASystem_OnAfterRun_Proc = function(): AEvent; stdcall;
  ASystem_OnBeforeRun_Proc = function(): AEvent; stdcall;
  ASystem_OnAfterRun_Connect_Proc = function(Callback: ACallbackProc03; Weight: AInt = High(AInt)): AInt; stdcall;
  ASystem_OnAfterRunConnect02_Proc = function(Callback: ACallbackProc02; Weight: AInteger = High(AInteger)): Integer; stdcall;
  ASystem_OnAfterRun_Disconnect_Proc = function(Callback: ACallbackProc03): AInt; stdcall;
  ASystem_OnAfterRunDisconnect02_Proc = function(Callback: ACallbackProc02): AInteger; stdcall;
  ASystem_OnBeforeRun_Connect_Proc = function(Callback: ACallbackProc03; Weight: AInt = High(AInt)): AInt; stdcall;
  ASystem_OnBeforeRunConnect02_Proc = function(Callback: ACallbackProc02; Weight: AInteger = High(AInteger)): AInteger; stdcall;
  ASystem_OnBeforeRun_Disconnect_Proc = function(Callback: ACallbackProc03): AInt; stdcall;
  ASystem_OnBeforeRunDisconnect02_Proc = function(Callback: ACallbackProc02): AInteger; stdcall;
  ASystem_ParamStr_Proc = function(Index: AInteger; out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}ASystem_ParamStrWS_Proc = function(Index: AInteger): AWideString; stdcall;{$ENDIF}
  ASystem_Prepare_Proc = function(): AError; stdcall;
  ASystem_Prepare2_Proc = function(const Title, ProgramName: AString_Type; ProgramVersion: AVersion;
    const ProductName: AString_Type; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath: AString_Type): AError; stdcall;
  ASystem_Prepare2A_Proc = function(Title, ProgramName: AStr; ProgramVersion: AVersion;
    ProductName: AStr; ProductVersion: AVersion;
    CompanyName, Copyright, Url, Description, DataPath: AStr): AError; stdcall;
  {$IFDEF ADepr}
  ASystem_Prepare2WS_Proc = procedure(const Title, ProgramName: AWideString; ProgramVersion: AVersion;
    const ProductName: AWideString; ProductVersion: AVersion;
    const CompanyName, Copyright, Url, Description, DataPath: AWideString); stdcall;
  {$ENDIF}
  ASystem_Prepare4A_Proc = function(Title, ProgramName: AStr; ProgramVersion: AVersion;
      ProductName: AStr; ProductVersion: AVersion;
      CompanyName, Copyright, Url, Description, Comments, DataPath, ConfigPath: AStr): AError; stdcall;
  ASystem_ProcessMessages_Proc = function(): AError; stdcall;
  ASystem_ProcessMessages02_Proc = procedure(); stdcall;
  {$IFDEF ADepr}ASystem_RegisterModule02_Proc = function(const Module: AModule02_Type): AInteger; stdcall;{$ENDIF}
  ASystem_SetConfig_Proc = procedure(Value: AConfig); stdcall;
  ASystem_SetOnAfterRun_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnBeforeRun_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnProcessMessages_Proc = procedure(Value: AProc03); stdcall;
  ASystem_SetOnProcessMessages02_Proc = procedure(Value: AProc02); stdcall;
  ASystem_SetOnRun_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnRun02_Proc = procedure(Value: AProc02); stdcall;
  {$IFDEF ADepr}ASystem_SetOnShowError_Proc = procedure(Value: TAShowErrorWSProc); stdcall;{$ENDIF}
  {$IFDEF ADepr}ASystem_SetOnShowMessage_Proc = procedure(Value: TAShowMessageWSProc); stdcall;{$ENDIF}
  ASystem_SetOnShutdown_Proc = function(Value: AProc): AError; stdcall;
  ASystem_SetOnShutdown02_Proc = procedure(Value: AProc02); stdcall;
  ASystem_ShowError_Proc = function(const UserMessage, ExceptMessage: AString_Type): AError; stdcall;
  ASystem_ShowError02_Proc = procedure(const UserMessage, ExceptMessage: AWideString); stdcall;
  {$IFDEF ADepr}ASystem_ShowErrorP_Proc = function(const UserMessage, ExceptMessage: APascalString): AError; stdcall;{$ENDIF}
  ASystem_ShowMessage_Proc = function(const Msg: AString_Type): ADialogBoxCommands; stdcall;
  ASystem_ShowMessageEx_Proc = function(const Text, Caption: AString_Type; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;
  {$IFDEF ADepr}ASystem_ShowMessageExP_Proc = function(const Text, Caption: APascalString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;{$ENDIF}
  {$IFDEF ADepr}ASystem_ShowMessageExWS_Proc = function(const Text, Caption: AWideString; Flags: AMessageBoxFlags): ADialogBoxCommands; stdcall;{$ENDIF}
  {$IFDEF ADepr}ASystem_ShowMessageWS_Proc = function(const Msg: AWideString): ADialogBoxCommands; stdcall;{$ENDIF}
  ASystem_Shutdown_Proc = function(): AError; stdcall;
  ASystem_Shutdown02_Proc = procedure(); stdcall;

type
  {$IFDEF ADepr}A_System_ShellExecuteWS_Proc = function(const Operation, FileName, Parameters, Directory: AWideString): AInteger; stdcall;{$ENDIF}
  A_System_FileTextEof_Proc = function(FileID: AInteger): ABoolean; stdcall;
  {$IFDEF ADepr}A_System_FileTextReadLnAnsi_Proc = function(FileID: AInteger; var Stroka: AnsiString): AError; stdcall;{$ENDIF}

  {$IFDEF ADepr}A_System_SetDataDirectoryPathWS_Proc = function(const DataDir: AWideString): AError; stdcall;{$ENDIF}

  A_System_ShellExecute_Proc = function(const Operation, FileName, Parameters, Directory: AString_Type): AInteger; stdcall;
  A_System_Init_Proc = function(): AError; stdcall;
  A_System_Done_Proc = function(): AError; stdcall;

type
  {$IFDEF ADepr}A_System_Info_GetCommentsWS_Proc = function(): WideString; stdcall;{$ENDIF}
  A_System_Info_GetCompanyName_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetCompanyNameP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetConfigDirectoryPath_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetConfigDirectoryPathP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetCopyright_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetCopyrightP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetDataDirectoryPath_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetDataDirectoryPathWS_Proc = function(): AWideString; stdcall;{$ENDIF}
  A_System_Info_GetDescription_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetDescriptionP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetDirectoryPath_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetDirectoryPathP_Proc = function(): APascalString; stdcall;{$ENDIF}
  {$IFDEF ADepr}A_System_Info_GetDirectoryPathWS_Proc = function(): AWideString; stdcall;{$ENDIF}
  A_System_Info_GetProductName_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetProductNameP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetProductVersion_Proc = function(): AVersion; stdcall;
  A_System_Info_GetProgramName_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetProgramNameP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetProgramVersion_Proc = function(): AVersion; stdcall;
  A_System_Info_GetTitle_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetTitleP_Proc = function(): APascalString; stdcall;{$ENDIF}
  A_System_Info_GetUrl_Proc = function(out Value: AString_Type): AInteger; stdcall;
  {$IFDEF ADepr}A_System_Info_GetUrlP_Proc = function(): APascalString; stdcall;{$ENDIF}
{$IFDEF ADepr}
type // --- Info functions ---
  A_System_Info_GetCompanyNameWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetCopyrightWS_Proc = function(): AWideString; stdcall;
  //A_System_Info_GetDataPathWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetDescriptionWS_Proc = function(): AWideString; stdcall;
  A_System_GetExeNameWS_Proc = function(): AWideString; stdcall;
  A_System_GetExePathWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetProductNameWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetProductVersionStrWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetProgramNameWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetProgramVersionStrWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetTitleWS_Proc = function(): AWideString; stdcall;
  A_System_Info_GetUrlWS_Proc = function(): AWideString; stdcall;
{$ENDIF ADepr}

{$IFDEF ADepr}
  //ARuntimeGetConfigProc = ASystem_GetConfig_Proc;
  //ARuntimeGetIsShutdownProc = ASystem_GetIsShutdown_Proc;
  //ARuntimeGetResourceStringProc = function(const Section, Name, Default: AWideString): AWideString; stdcall;
  //ARuntimeProcessMessagesProc = ASystem_ProcessMessages02_Proc;
  //ARuntimeSetConfigProc = ASystem_SetConfig_Proc;
  //ARuntimeShowErrorProc = ASystem_ShowError02_Proc;
  //ARuntimeShutdownProc = ASystem_Shutdown02_Proc;
  //ARuntimeSetOnProcessMessagesProc = ASystem_SetOnProcessMessages02_Proc;
  //ARuntimeSetOnRunProc = ASystem_SetOnRun02_Proc;
  //ARuntimeSetOnShutdownProc = ASystem_SetOnShutdown02_Proc;
  //ARuntimeSetOnShowErrorProc = ASystem_SetOnShowError_Proc;
  //ARuntimeSetOnShowMessageProc = ASystem_SetOnShowMessage_Proc;
  //ARuntimeOnAfterRunGetProc = A_System_OnAfterRun_Proc;
  //ARuntimeOnBeforeRunGetProc = A_System_OnBeforeRun_Proc;
  //ARuntimeOnAfterRunConnectProc = ASystem_OnAfterRunConnect02_Proc;
  //ARuntimeOnAfterRunDisconnectProc = ASystem_OnAfterRunDisconnect02_Proc;
  //ARuntimeOnBeforeRunConnectProc = ASystem_OnBeforeRunConnect02_Proc;
  //ARuntimeOnBeforeRunDisconnectProc = ASystem_OnBeforeRunDisconnect02_Proc;
{$ENDIF ADepr}

{$IFDEF ADepr}
type
  { Открывает модуль (библиотеку). Возвращяет идентификатор. }
  A_Library_OpenWS_Proc = function(const FileName: AWideString; Flags: ALibraryFlags): ALibrary; stdcall;
  { Закрывает модуль (библиотеку) }
  A_Library_Close_Proc = function(Lib: ALibrary): ABoolean; stdcall;
  A_Library_BuildPathWS_Proc = function(const Directory, LibraryName: AWideString): APascalString; stdcall;
  A_Library_GetNameWS_Proc = function(Lib: ALibrary): AWideString; stdcall;
  { Возвращает адрес функции }
  A_Library_GetProcAddressWS_Proc = function(Lib: ALibrary; const Name: AWideString): Pointer; stdcall;
  A_Library_GetSymbolWS_Proc = function(Lib: ALibrary; const SymbolName: AWideString; var Symbol: Pointer): ABoolean; stdcall;
{$ENDIF ADepr}

type
  A_Timer_New_Proc = function(): ATimer; stdcall;
  A_Timer_Free_Proc = procedure(Timer: ATimer); stdcall;
  A_Timer_SetEnabled_Proc = procedure(Timer: ATimer; Value: ABoolean); stdcall;
  A_Timer_SetInterval_Proc = procedure(Timer: ATimer; Value: AUInt32); stdcall;
  A_Timer_SetOnTimer_Proc = procedure(Timer: ATimer; Proc: AProc); stdcall;

implementation

end.
