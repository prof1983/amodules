{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 18.02.2013
}
unit ASystemProcVars;

interface

uses
  ASystemProcTypes;

var
  ASystem_GetConfig: ASystem_GetConfig_Proc;
  ASystem_GetDataDirectoryPath: ASystem_GetDataDirectoryPath_Proc;
  ASystem_GetExePath: ASystem_GetExePath_Proc;
  ASystem_GetProgramName: ASystem_GetProgramName_Proc;
  ASystem_GetResourceString: ASystem_GetResourceString_Proc;
  ASystem_GetTitle: ASystem_GetTitle_Proc;
  ASystem_Init: ASystem_Init_Proc;
  ASystem_OnAfterRun_Connect: ASystem_OnAfterRun_Connect_Proc;
  ASystem_OnAfterRun_Disconnect: ASystem_OnAfterRun_Disconnect_Proc;
  ASystem_OnBeforeRun_Connect: ASystem_OnBeforeRun_Connect_Proc;
  ASystem_OnBeforeRun_Disconnect: ASystem_OnBeforeRun_Disconnect_Proc;
  ASystem_ParamStr: ASystem_ParamStr_Proc;
  ASystem_Prepare: ASystem_Prepare_Proc;
  ASystem_PrepareA: ASystem_PrepareA_Proc;
  ASystem_ProcessMessages: ASystem_ProcessMessages_Proc;
  ASystem_SetConfig: ASystem_SetConfig_Proc;
  ASystem_ShowMessage: ASystem_ShowMessage_Proc;
  ASystem_ShowMessageEx: ASystem_ShowMessageEx_Proc;

implementation

end.
 