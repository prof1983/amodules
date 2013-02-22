{**
@Abstract ASystem
@Author Prof1983 <prof1983@ya.ru>
@Created 30.07.2012
@LastMod 22.02.2013
}
unit ASystemProcVars;

interface

uses
  ASystemProcTypes;

var
  ASystem_Fin: ASystem_Fin_Proc;
  ASystem_GetComments: ASystem_GetComments_Proc;
  ASystem_GetCompanyName: ASystem_GetCompanyName_Proc;
  ASystem_GetConfig: ASystem_GetConfig_Proc;
  ASystem_GetConfigDirectoryPath: ASystem_GetConfigDirectoryPath_Proc;
  ASystem_GetCopyright: ASystem_GetCopyright_Proc;
  ASystem_GetDataDirectoryPath: ASystem_GetDataDirectoryPath_Proc;
  ASystem_GetDescription: ASystem_GetDescription_Proc;
  ASystem_GetDirectoryPath: ASystem_GetDirectoryPath_Proc;
  ASystem_GetExeName: ASystem_GetExeName_Proc;
  ASystem_GetExePath: ASystem_GetExePath_Proc;
  ASystem_GetParamStr: ASystem_GetParamStr_Proc;
  ASystem_GetProductName: ASystem_GetProductName_Proc;
  ASystem_GetProductVersionStr: ASystem_GetProductVersionStr_Proc;
  ASystem_GetProgramName: ASystem_GetProgramName_Proc;
  ASystem_GetProgramVersionStr: ASystem_GetProgramVersionStr_Proc;
  ASystem_GetResourceString: ASystem_GetResourceString_Proc;
  ASystem_GetTitle: ASystem_GetTitle_Proc;
  ASystem_GetUrl: ASystem_GetUrl_Proc;
  ASystem_Init: ASystem_Init_Proc;
  ASystem_OnAfterRun_Connect: ASystem_OnAfterRun_Connect_Proc;
  ASystem_OnAfterRun_Disconnect: ASystem_OnAfterRun_Disconnect_Proc;
  ASystem_OnBeforeRun_Connect: ASystem_OnBeforeRun_Connect_Proc;
  ASystem_OnBeforeRun_Disconnect: ASystem_OnBeforeRun_Disconnect_Proc;
  ASystem_Prepare: ASystem_Prepare_Proc;
  ASystem_PrepareA: ASystem_PrepareA_Proc;
  ASystem_ProcessMessages: ASystem_ProcessMessages_Proc;
  ASystem_SetConfig: ASystem_SetConfig_Proc;
  ASystem_SetDataDirectoryPath: ASystem_SetDataDirectoryPath_Proc;
  ASystem_SetOnProcessMessages: ASystem_SetOnProcessMessages_Proc;
  ASystem_SetOnShowErrorA: ASystem_SetOnShowErrorA_Proc;
  ASystem_SetOnShowMessageA: ASystem_SetOnShowMessageA_Proc;
  ASystem_ShellExecute: ASystem_ShellExecute_Proc;
  ASystem_ShowError: ASystem_ShowError_Proc;
  ASystem_ShowErrorA: ASystem_ShowErrorA_Proc;
  ASystem_ShowMessage: ASystem_ShowMessage_Proc;
  ASystem_ShowMessageA: ASystem_ShowMessageA_Proc;
  ASystem_ShowMessageEx: ASystem_ShowMessageEx_Proc;
  ASystem_ShowMessageExA: ASystem_ShowMessageExA_Proc;

implementation

end.
 